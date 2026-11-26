import { SupabaseClient } from '@supabase/supabase-js';
import { SubtesType } from './types';
import { PASSING_GRADE, TARGET_SECONDS_PER_QUESTION, SCORING_CONFIG } from './config';

export interface ProgressSummary {
  totalSoalDikerjakan: number;
  totalBenar: number;
  akurasiKeseluruhan: number;
  rataRataSkorTerakhir5: number;
  soalHariIni: number;
  streakHarian: number;
  targetUjian: string | null;
  daysRemainingToExam: number | null;
}

export interface ScoreTrendItem {
  id: string;
  tanggal: string;
  mode: string;
  skorTwk: number;
  skorTiu: number;
  skorTotal: number;
}

export interface TopicStatItem {
  subtes: SubtesType;
  topik: string;
  totalDijawab: number;
  jumlahBenar: number;
  akurasi: number;
  isLowData: boolean; // < 3 soal
  rataRataWaktuDetik: number;
  isSlow: boolean; // > 55 detik
}

export interface LearningPriorityItem {
  subtes: SubtesType;
  topik: string;
  akurasi: number;
  rataRataWaktuDetik: number;
  totalDijawab: number;
  isLowAccuracy: boolean; // < 60%
  isSlow: boolean; // > 55 detik
  priorityScore: number;
}

export interface MistakeQuestionItem {
  questionId: string;
  soal: string;
  subtes: SubtesType;
  topik: string | null;
  kunci: string | null;
  timesWrong: number;
  lastWrongDate: string;
  isMastered: boolean; // benar 2x berturut-turut pada percobaan terbaru
}

export interface ActivityDay {
  dateStr: string; // YYYY-MM-DD
  count: number;
  level: number; // 0, 1, 2, 3
}

export interface BadgeItem {
  id: string;
  title: string;
  description: string;
  achieved: boolean;
  progressText: string;
}

export interface ExamPackageDifficultyStat {
  level: 'mudah' | 'sedang' | 'sulit';
  total: number;
  benar: number;
  akurasi: number;
}

export interface ExamPackageTopicStat {
  topik: string;
  subtes: SubtesType;
  total: number;
  benar: number;
  akurasi: number;
}

export interface ExamPackageReportItem {
  attemptId: string;
  examId: string | null;
  judulPaket: string;
  tipe: string; // 'tryout' | 'subtes' | 'latihan'
  subtes: SubtesType | null;
  tanggalMulai: string;
  durasiPengerjaanDetik: number;
  alokasiWaktuMenit: number;
  kecepatanDetikPerSoal: number;
  totalSoal: number;
  totalDijawab: number;
  totalBenar: number;
  akurasi: number;
  skorTotal: number;
  skorTwk: number;
  skorTiu: number;
  skorTkp: number;
  lulusPassingGrade: boolean;
  tingkatKesulitan: ExamPackageDifficultyStat[];
  breakdownTopik: ExamPackageTopicStat[];
}

export interface FullUserProgressData {
  hasData: boolean;
  summary: ProgressSummary;
  trenSkor: ScoreTrendItem[];
  topikStats: TopicStatItem[];
  prioritasBelajar: LearningPriorityItem[];
  laporanPerPaket: ExamPackageReportItem[];
  bankSoalSalah: {
    perluDilatih: MistakeQuestionItem[];
    dikuasai: MistakeQuestionItem[];
  };
  petaAktivitas: ActivityDay[];
  badges: BadgeItem[];
}

export async function getUserProgressData(
  supabase: SupabaseClient,
  userId: string
): Promise<FullUserProgressData> {
  // 1. Ambil Profil User
  const { data: profile } = await supabase
    .from('profiles')
    .select('target_ujian')
    .eq('id', userId)
    .single();

  // 2. Ambil Semua Attempts User
  const { data: attempts } = await supabase
    .from('attempts')
    .select('id, exam_id, mode, subtes, mulai, selesai, skor, durasi_detik')
    .eq('user_id', userId)
    .order('mulai', { ascending: true });

  if (!attempts || attempts.length === 0) {
    return createEmptyProgressData(profile?.target_ujian || null);
  }

  const attemptIds = attempts.map((a) => a.id);

  // 2b. Ambil Data Paket Ujian yang Terkait
  const examIds = Array.from(new Set(attempts.map((a: any) => a.exam_id).filter(Boolean)));
  const examMap = new Map<string, { id: string; judul: string; tipe: string; subtes: string | null; durasi_menit: number }>();
  if (examIds.length > 0) {
    const { data: examsData } = await supabase
      .from('exams')
      .select('id, judul, tipe, subtes, durasi_menit')
      .in('id', examIds);
    (examsData || []).forEach((e: any) => examMap.set(e.id, e));
  }

  // 3. Ambil Semua Jawaban User
  const { data: answers } = await supabase
    .from('attempt_answers')
    .select('attempt_id, question_id, jawaban, ragu, waktu_detik')
    .in('attempt_id', attemptIds);

  const answeredList = (answers || []).filter((a) => a.jawaban !== null);

  if (answeredList.length === 0) {
    return createEmptyProgressData(profile?.target_ujian || null);
  }

  // 4. Ambil Data Soal yang Terlibat
  const questionIds = Array.from(new Set(answeredList.map((a) => a.question_id)));
  const { data: questions } = await supabase
    .from('questions')
    .select('id, subtes, topik, level, soal, kunci, skor_tkp')
    .in('id', questionIds);

  const questionMap = new Map((questions || []).map((q) => [q.id, q]));
  const attemptMap = new Map(attempts.map((a) => [a.id, a]));

  // --- KALKULASI RINGKASAN & AKURASI GLOBAL ---
  let totalSoalDikerjakan = 0;
  let totalBenar = 0;
  const questionsByDate = new Map<string, number>(); // YYYY-MM-DD -> count

  // Map untuk melacak riwayat jawaban per questionId: [{ date, isCorrect }]
  const questionAnswerHistory = new Map<
    string,
    { date: Date; isCorrect: boolean; answer: string }[]
  >();

  // Map per topik: { total, correct, totalSeconds }
  const topicAggMap = new Map<
    string,
    { subtes: SubtesType; topik: string; total: number; correct: number; totalSeconds: number }
  >();

  // Track max consecutive correct answers in single attempt for badge
  const consecutiveCorrectByAttempt = new Map<string, number>();

  for (const ans of answeredList) {
    const q = questionMap.get(ans.question_id);
    const att = attemptMap.get(ans.attempt_id);
    if (!q || !att) continue;

    totalSoalDikerjakan++;
    const isCorrect = q.subtes === 'TKP' ? true : ans.jawaban === q.kunci;
    if (isCorrect) totalBenar++;

    // Track date of attempt
    const dateObj = new Date(att.mulai);
    const dateKey = dateObj.toISOString().slice(0, 10);
    questionsByDate.set(dateKey, (questionsByDate.get(dateKey) || 0) + 1);

    // Track answer history for this question
    const history = questionAnswerHistory.get(q.id) || [];
    history.push({
      date: dateObj,
      isCorrect,
      answer: ans.jawaban,
    });
    questionAnswerHistory.set(q.id, history);

    // Topic Aggregation
    const topicKey = `${q.subtes}__${q.topik || 'Umum'}`;
    const topicAgg = topicAggMap.get(topicKey) || {
      subtes: q.subtes as SubtesType,
      topik: q.topik || 'Umum',
      total: 0,
      correct: 0,
      totalSeconds: 0,
    };
    topicAgg.total++;
    if (isCorrect) topicAgg.correct++;
    topicAgg.totalSeconds += ans.waktu_detik || 0;
    topicAggMap.set(topicKey, topicAgg);
  }

  // --- STREAK HARIAN (minimal 10 soal per hari beruntun) ---
  const todayStr = new Date().toISOString().slice(0, 10);
  const soalHariIni = questionsByDate.get(todayStr) || 0;

  let streakHarian = 0;
  let checkDate = new Date();

  // If today hasn't reached 10, check if yesterday had streak
  if ((questionsByDate.get(todayStr) || 0) < 10) {
    checkDate.setDate(checkDate.getDate() - 1);
  }

  while (true) {
    const key = checkDate.toISOString().slice(0, 10);
    const count = questionsByDate.get(key) || 0;
    if (count >= 10) {
      streakHarian++;
      checkDate.setDate(checkDate.getDate() - 1);
    } else {
      break;
    }
  }

  // Hitung sisa hari menuju ujian
  let daysRemainingToExam: number | null = null;
  if (profile?.target_ujian) {
    const targetDate = new Date(profile.target_ujian);
    const diff = targetDate.getTime() - new Date().getTime();
    daysRemainingToExam = Math.ceil(diff / (1000 * 60 * 60 * 24));
  }

  // --- RATA-RATA SKOR 5 SESI TERAKHIR ---
  const completedAttempts = attempts.filter((a) => a.selesai !== null && a.skor !== null);
  const last5 = completedAttempts.slice(-5);
  const rataRataSkorTerakhir5 = last5.length > 0
    ? Math.round(last5.reduce((sum, a) => sum + (a.skor || 0), 0) / last5.length)
    : 0;

  // --- TREN SKOR (TWK, TIU, Total) ---
  const trenSkor: ScoreTrendItem[] = completedAttempts.map((att) => {
    const date = new Date(att.mulai);
    const dateStr = `${date.getDate()}/${date.getMonth() + 1}`;

    // Hitung per subtes untuk attempt ini
    let skorTwk = 0;
    let skorTiu = 0;

    const attAnswers = answeredList.filter((a) => a.attempt_id === att.id);
    for (const ans of attAnswers) {
      const q = questionMap.get(ans.question_id);
      if (!q) continue;
      const isCorrect = ans.jawaban === q.kunci;
      if (isCorrect) {
        if (q.subtes === 'TWK') skorTwk += SCORING_CONFIG.TWK.CORRECT;
        else if (q.subtes === 'TIU') skorTiu += SCORING_CONFIG.TIU.CORRECT;
      }
    }

    return {
      id: att.id,
      tanggal: dateStr,
      mode: att.mode,
      skorTwk,
      skorTiu,
      skorTotal: att.skor || skorTwk + skorTiu,
    };
  });

  // --- AKURASI & KECEPATAN PER TOPIK ---
  const topikStats: TopicStatItem[] = Array.from(topicAggMap.values())
    .map((item) => {
      const akurasi = Math.round((item.correct / item.total) * 100);
      const avgSeconds = Math.round(item.totalSeconds / item.total);
      return {
        subtes: item.subtes,
        topik: item.topik,
        totalDijawab: item.total,
        jumlahBenar: item.correct,
        akurasi,
        isLowData: item.total < 3,
        rataRataWaktuDetik: avgSeconds,
        isSlow: avgSeconds > TARGET_SECONDS_PER_QUESTION,
      };
    })
    // Urutkan dari akurasi terendah
    .sort((a, b) => a.akurasi - b.akurasi);

  // --- PRIORITAS BELAJAR (Top 5 topik < 60% ATAU lebih lambat dari target) ---
  const prioritasCandidates = topikStats.filter(
    (t) => t.akurasi < 60 || t.isSlow
  );

  const prioritasBelajar: LearningPriorityItem[] = prioritasCandidates
    .map((t) => {
      const isLowAccuracy = t.akurasi < 60;
      const isSlow = t.isSlow;
      // Skor prioritas: kena keduanya = 3, akurasi rendah = 2, lambat = 1
      let priorityScore = 1;
      if (isLowAccuracy && isSlow) priorityScore = 3;
      else if (isLowAccuracy) priorityScore = 2;

      return {
        subtes: t.subtes,
        topik: t.topik,
        akurasi: t.akurasi,
        rataRataWaktuDetik: t.rataRataWaktuDetik,
        totalDijawab: t.totalDijawab,
        isLowAccuracy,
        isSlow,
        priorityScore,
      };
    })
    .sort((a, b) => {
      if (b.priorityScore !== a.priorityScore) {
        return b.priorityScore - a.priorityScore;
      }
      return a.akurasi - b.akurasi;
    })
    .slice(0, 5);

  // --- BANK SOAL SALAH & STATUS DIKUASAI ---
  const mistakePerluDilatih: MistakeQuestionItem[] = [];
  const mistakeDikuasai: MistakeQuestionItem[] = [];

  for (const [qid, history] of questionAnswerHistory.entries()) {
    // Pernah dijawab salah?
    const wrongCount = history.filter((h) => !h.isCorrect).length;
    if (wrongCount === 0) continue;

    const q = questionMap.get(qid);
    if (!q) continue;

    // Urutkan riwayat pengerjaan soal ini dari yang terbaru ke terlama
    const sortedHistory = [...history].sort(
      (a, b) => b.date.getTime() - a.date.getTime()
    );

    // Kriteria DIKUASAI: 2 percobaan terbaru keduanya benar
    const isMastered =
      sortedHistory.length >= 2 &&
      sortedHistory[0].isCorrect &&
      sortedHistory[1].isCorrect;

    // Cari tanggal terakhir salah
    const lastWrongEntry = sortedHistory.find((h) => !h.isCorrect);
    const lastWrongDateStr = lastWrongEntry
      ? lastWrongEntry.date.toLocaleDateString('id-ID', {
          day: 'numeric',
          month: 'short',
        })
      : '-';

    const item: MistakeQuestionItem = {
      questionId: q.id,
      soal: q.soal,
      subtes: q.subtes as SubtesType,
      topik: q.topik,
      kunci: q.kunci,
      timesWrong: wrongCount,
      lastWrongDate: lastWrongDateStr,
      isMastered,
    };

    if (isMastered) {
      mistakeDikuasai.push(item);
    } else {
      mistakePerluDilatih.push(item);
    }
  }

  // --- PETA AKTIVITAS 12 MINGGU TERAKHIR (84 HARI) ---
  const petaAktivitas: ActivityDay[] = [];
  const now = new Date();
  for (let i = 83; i >= 0; i--) {
    const d = new Date(now);
    d.setDate(d.getDate() - i);
    const key = d.toISOString().slice(0, 10);
    const count = questionsByDate.get(key) || 0;
    let level = 0;
    if (count >= 30) level = 3;
    else if (count >= 15) level = 2;
    else if (count >= 1) level = 1;

    petaAktivitas.push({
      dateStr: key,
      count,
      level,
    });
  }

  // --- BADGES / LENCANA CAPAIAN ---
  // 1. 10 benar beruntun dalam 1 attempt
  let has10Consecutive = false;
  for (const att of attempts) {
    const answersOfAtt = answeredList.filter((a) => a.attempt_id === att.id);
    let streakCount = 0;
    for (const ans of answersOfAtt) {
      const q = questionMap.get(ans.question_id);
      if (q && ans.jawaban === q.kunci) {
        streakCount++;
        if (streakCount >= 10) {
          has10Consecutive = true;
          break;
        }
      } else {
        streakCount = 0;
      }
    }
    if (has10Consecutive) break;
  }

  // 2. Skor di atas passing grade (TWK 65 & TIU 80)
  const hasPassedPG = completedAttempts.some(
    (a) => (a.skor || 0) >= PASSING_GRADE.TWK + PASSING_GRADE.TIU
  );

  // 3. Try out penuh pertama
  const hasFullTryout = completedAttempts.some((a) => a.mode === 'tryout');

  const badges: BadgeItem[] = [
    {
      id: 'streak_7',
      title: 'Streak 7 Hari',
      description: 'Latihan konsisten minimal 10 soal per hari selama 7 hari berturut-turut.',
      achieved: streakHarian >= 7,
      progressText: `${streakHarian}/7 Hari`,
    },
    {
      id: 'consecutive_10',
      title: '10 Benar Beruntun',
      description: 'Menjawab 10 butir soal berturut-turut dengan tepat dalam satu sesi ujian.',
      achieved: has10Consecutive,
      progressText: has10Consecutive ? 'Tercapai' : 'Fokus saat pengerjaan',
    },
    {
      id: 'century_100',
      title: 'Koleksi 100 Soal',
      description: 'Telah mengerjakan akumulasi minimal 100 butir soal SKD.',
      achieved: totalSoalDikerjakan >= 100,
      progressText: `${Math.min(totalSoalDikerjakan, 100)}/100 Soal`,
    },
    {
      id: 'passing_grade',
      title: 'Lolos Ambang Batas',
      description: 'Mencapai skor total di atas passing grade resmi SKD.',
      achieved: hasPassedPG,
      progressText: hasPassedPG ? 'Lolos Passing Grade' : `Target: ${PASSING_GRADE.TWK + PASSING_GRADE.TIU}`,
    },
    {
      id: 'first_tryout',
      title: 'Simulasi Perdana',
      description: 'Menyelesaikan 1 sesi Try Out Penuh dengan batas waktu standar.',
      achieved: hasFullTryout,
      progressText: hasFullTryout ? 'Selesai' : 'Belum pernah Try Out Penuh',
    },
  ];

  // --- LAPORAN EVALUASI PER PAKET UJIAN (REVIEW WAKTU, KESULITAN, TOPIK) ---
  const laporanPerPaket: ExamPackageReportItem[] = [];
  const sortedAttempts = [...attempts].reverse(); // Dari pengerjaan terbaru

  for (const att of sortedAttempts) {
    const attAnswers = answeredList.filter((a) => a.attempt_id === att.id);
    if (attAnswers.length === 0) continue;

    const examInfo = (att as any).exam_id ? examMap.get((att as any).exam_id) : null;
    const judulPaket =
      examInfo?.judul ||
      (att.mode === 'tryout'
        ? 'Simulasi Try Out Penuh SKD'
        : `Latihan ${att.subtes || 'SKD'}`);
    const tipe = examInfo?.tipe || att.mode || 'subtes';
    const subtesVal = (examInfo?.subtes || att.subtes || null) as SubtesType | null;

    let alokasiWaktuMenit = examInfo?.durasi_menit || 0;
    if (!alokasiWaktuMenit) {
      if (tipe === 'tryout' || att.mode === 'tryout') alokasiWaktuMenit = 100;
      else if (subtesVal === 'TIU') alokasiWaktuMenit = 50;
      else if (subtesVal === 'TWK') alokasiWaktuMenit = 25;
      else if (subtesVal === 'TKP') alokasiWaktuMenit = 35;
      else alokasiWaktuMenit = 50;
    }

    let attTwkScore = 0;
    let attTiuScore = 0;
    let attTkpScore = 0;
    let attCorrectCount = 0;

    const diffMap: Record<string, { total: number; benar: number }> = {
      mudah: { total: 0, benar: 0 },
      sedang: { total: 0, benar: 0 },
      sulit: { total: 0, benar: 0 },
    };

    const topicMap: Record<
      string,
      { subtes: SubtesType; topik: string; total: number; benar: number }
    > = {};

    for (const ans of attAnswers) {
      const q = questionMap.get(ans.question_id);
      if (!q) continue;

      const isTKP = q.subtes === 'TKP';
      let isCorrect = false;

      if (isTKP) {
        const earned = q.skor_tkp?.[ans.jawaban] ?? (ans.jawaban === q.kunci ? 5 : 3);
        attTkpScore += earned;
        if (earned === 5) {
          isCorrect = true;
        }
      } else {
        isCorrect = ans.jawaban === q.kunci;
        if (isCorrect) {
          if (q.subtes === 'TWK') attTwkScore += SCORING_CONFIG.TWK.CORRECT;
          else if (q.subtes === 'TIU') attTiuScore += SCORING_CONFIG.TIU.CORRECT;
        }
      }

      if (isCorrect) attCorrectCount++;

      const rawLevel = ((q as any).level || 'sedang').toLowerCase();
      const lvlKey = rawLevel === 'mudah' || rawLevel === 'sulit' ? rawLevel : 'sedang';
      diffMap[lvlKey].total++;
      if (isCorrect) diffMap[lvlKey].benar++;

      const tName = q.topik || 'Umum';
      if (!topicMap[tName]) {
        topicMap[tName] = { subtes: q.subtes as SubtesType, topik: tName, total: 0, benar: 0 };
      }
      topicMap[tName].total++;
      if (isCorrect) topicMap[tName].benar++;
    }

    const skorTotal = att.skor ?? (attTwkScore + attTiuScore + attTkpScore);
    const akurasi = attAnswers.length > 0 ? Math.round((attCorrectCount / attAnswers.length) * 100) : 0;
    const kecepatanDetikPerSoal =
      attAnswers.length > 0 ? Math.round((att.durasi_detik || 0) / attAnswers.length) : 0;

    let lulusPassingGrade = false;
    if (tipe === 'tryout' || att.mode === 'tryout') {
      lulusPassingGrade =
        attTwkScore >= PASSING_GRADE.TWK &&
        attTiuScore >= PASSING_GRADE.TIU &&
        attTkpScore >= PASSING_GRADE.TKP;
    } else if (subtesVal === 'TWK') {
      lulusPassingGrade = attTwkScore >= PASSING_GRADE.TWK;
    } else if (subtesVal === 'TIU') {
      lulusPassingGrade = attTiuScore >= PASSING_GRADE.TIU;
    } else if (subtesVal === 'TKP') {
      lulusPassingGrade = attTkpScore >= PASSING_GRADE.TKP;
    } else {
      lulusPassingGrade = akurasi >= 65;
    }

    const tingkatKesulitan: ExamPackageDifficultyStat[] = (['mudah', 'sedang', 'sulit'] as const).map(
      (lvl) => ({
        level: lvl,
        total: diffMap[lvl].total,
        benar: diffMap[lvl].benar,
        akurasi:
          diffMap[lvl].total > 0
            ? Math.round((diffMap[lvl].benar / diffMap[lvl].total) * 100)
            : 0,
      })
    );

    const breakdownTopik: ExamPackageTopicStat[] = Object.values(topicMap)
      .map((t) => ({
        topik: t.topik,
        subtes: t.subtes,
        total: t.total,
        benar: t.benar,
        akurasi: Math.round((t.benar / t.total) * 100),
      }))
      .sort((a, b) => b.total - a.total);

    laporanPerPaket.push({
      attemptId: att.id,
      examId: (att as any).exam_id || null,
      judulPaket,
      tipe,
      subtes: subtesVal,
      tanggalMulai: att.mulai,
      durasiPengerjaanDetik: att.durasi_detik || 0,
      alokasiWaktuMenit,
      kecepatanDetikPerSoal,
      totalSoal: attAnswers.length,
      totalDijawab: attAnswers.length,
      totalBenar: attCorrectCount,
      akurasi,
      skorTotal,
      skorTwk: attTwkScore,
      skorTiu: attTiuScore,
      skorTkp: attTkpScore,
      lulusPassingGrade,
      tingkatKesulitan,
      breakdownTopik,
    });
  }

  return {
    hasData: true,
    summary: {
      totalSoalDikerjakan,
      totalBenar,
      akurasiKeseluruhan: totalSoalDikerjakan > 0 ? Math.round((totalBenar / totalSoalDikerjakan) * 100) : 0,
      rataRataSkorTerakhir5,
      soalHariIni,
      streakHarian,
      targetUjian: profile?.target_ujian || null,
      daysRemainingToExam,
    },
    trenSkor,
    topikStats,
    prioritasBelajar,
    laporanPerPaket,
    bankSoalSalah: {
      perluDilatih: mistakePerluDilatih,
      dikuasai: mistakeDikuasai,
    },
    petaAktivitas,
    badges,
  };
}

function createEmptyProgressData(targetUjian: string | null): FullUserProgressData {
  let daysRemainingToExam: number | null = null;
  if (targetUjian) {
    const targetDate = new Date(targetUjian);
    const diff = targetDate.getTime() - new Date().getTime();
    daysRemainingToExam = Math.ceil(diff / (1000 * 60 * 60 * 24));
  }

  return {
    hasData: false,
    summary: {
      totalSoalDikerjakan: 0,
      totalBenar: 0,
      akurasiKeseluruhan: 0,
      rataRataSkorTerakhir5: 0,
      soalHariIni: 0,
      streakHarian: 0,
      targetUjian,
      daysRemainingToExam,
    },
    trenSkor: [],
    topikStats: [],
    prioritasBelajar: [],
    laporanPerPaket: [],
    bankSoalSalah: {
      perluDilatih: [],
      dikuasai: [],
    },
    petaAktivitas: [],
    badges: [],
  };
}
