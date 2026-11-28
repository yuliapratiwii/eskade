import { redirect, notFound } from 'next/navigation';
import Link from 'next/link';
import { createClient, getAuthUser } from '@/lib/supabase/server';
import { PASSING_GRADE, SCORING_CONFIG } from '@/lib/config';
import { Navbar } from '@/components/Navbar';
import {
  Trophy,
  CheckCircle2,
  XCircle,
  HelpCircle,
  Clock,
  ArrowRight,
  RotateCcw,
  BookOpen,
  Award,
  AlertTriangle,
  TrendingUp,
  TrendingDown,
  Minus,
  Sparkles,
} from 'lucide-react';

interface ResultPageProps {
  params: Promise<{
    attemptId: string;
  }>;
}

export default async function ExamResultPage({ params }: ResultPageProps) {
  const { attemptId } = await params;
  const supabase = await createClient();

  const user = await getAuthUser(supabase);

  if (!user) {
    redirect('/login');
  }

  // 1 & 2. Ambil data attempt dan jawaban user secara paralel
  const [
    { data: attempt, error: attemptError },
    { data: userAnswers, error: answersError },
  ] = await Promise.all([
    supabase
      .from('attempts')
      .select('id, user_id, mode, subtes, mulai, selesai, durasi_detik, skor')
      .eq('id', attemptId)
      .single(),
    supabase
      .from('attempt_answers')
      .select('question_id, jawaban, ragu, waktu_detik')
      .eq('attempt_id', attemptId),
  ]);

  if (attemptError || !attempt || attempt.user_id !== user.id) {
    notFound();
  }

  if (answersError || !userAnswers) {
    notFound();
  }

  const questionIds = userAnswers.map((a) => a.question_id);

  // 3 & 5. Ambil kunci jawaban resmi dan percobaan sebelumnya secara paralel
  const [{ data: questions, error: questionsError }, { data: prevAttempt }] = await Promise.all([
    supabase
      .from('questions')
      .select('id, subtes, topik, kunci, skor_tkp')
      .in('id', questionIds),
    supabase
      .from('attempts')
      .select('id, skor, selesai')
      .eq('user_id', user.id)
      .eq('mode', attempt.mode)
      .not('selesai', 'is', null)
      .neq('id', attemptId)
      .order('selesai', { ascending: false })
      .limit(1)
      .maybeSingle(),
  ]);

  if (questionsError || !questions) {
    notFound();
  }

  const questionMap = new Map(questions.map((q) => [q.id, q]));

  // 4. Kalkulasi Skor, Statistik, dan Analisis Topik Lemah
  let twkScore = 0;
  let twkCorrect = 0;
  let twkWrong = 0;
  let twkEmpty = 0;

  let tiuScore = 0;
  let tiuCorrect = 0;
  let tiuWrong = 0;
  let tiuEmpty = 0;

  let tkpScore = 0;
  let tkpCount = 0;
  let tkpBest = 0;
  let tkpOther = 0;
  let tkpEmpty = 0;

  let totalCorrect = 0;
  let totalWrong = 0;
  let totalEmpty = 0;

  const wrongPerTopic: Record<string, { topik: string; subtes: string; count: number }> = {};

  for (const ans of userAnswers) {
    const q = questionMap.get(ans.question_id);
    if (!q) continue;

    const isTWK = q.subtes === 'TWK';
    const isTIU = q.subtes === 'TIU';
    const isTKP = q.subtes === 'TKP';
    const hasAnswer = ans.jawaban !== null && ans.jawaban !== undefined;
    const isCorrect = hasAnswer && ans.jawaban === q.kunci;

    if (isTKP) {
      tkpCount++;
      if (hasAnswer && ans.jawaban) {
        const earned = q.skor_tkp?.[ans.jawaban] ?? (ans.jawaban === q.kunci ? 5 : 3);
        tkpScore += earned;
        if (earned === 5) {
          totalCorrect++;
          tkpBest++;
        } else {
          totalWrong++;
          tkpOther++;
        }
      } else {
        totalEmpty++;
        tkpEmpty++;
      }
    } else if (isCorrect) {
      totalCorrect++;
      if (isTWK) {
        twkScore += SCORING_CONFIG.TWK.CORRECT;
        twkCorrect++;
      } else if (isTIU) {
        tiuScore += SCORING_CONFIG.TIU.CORRECT;
        tiuCorrect++;
      }
    } else {
      if (hasAnswer) {
        totalWrong++;
        if (isTWK) twkWrong++;
        else if (isTIU) tiuWrong++;
      } else {
        totalEmpty++;
        if (isTWK) twkEmpty++;
        else if (isTIU) tiuEmpty++;
      }

      // Catat topik salah / kosong
      const key = `${q.subtes}:${q.topik}`;
      if (!wrongPerTopic[key]) {
        wrongPerTopic[key] = { topik: q.topik, subtes: q.subtes, count: 0 };
      }
      wrongPerTopic[key].count++;
    }
  }

  // Cari topik dengan kesalahan terbanyak
  const sortedWeakTopics = Object.values(wrongPerTopic).sort((a, b) => b.count - a.count);
  const mostMissedTopic = sortedWeakTopics.length > 0 && sortedWeakTopics[0].count > 0 ? sortedWeakTopics[0] : null;

  const totalScore = twkScore + tiuScore + tkpScore;

  const scoreDiff = prevAttempt && prevAttempt.skor !== null ? totalScore - prevAttempt.skor : null;

  // 5. Update skor dan status selesai di database jika belum
  if (attempt.skor !== totalScore || !attempt.selesai) {
    await supabase
      .from('attempts')
      .update({
        skor: totalScore,
        selesai: attempt.selesai || new Date().toISOString(),
      })
      .eq('id', attemptId);
  }

  // 6. Evaluasi Passing Grade
  const isTwkPassed = twkScore >= PASSING_GRADE.TWK;
  const isTiuPassed = tiuScore >= PASSING_GRADE.TIU;
  const isTkpPassed = tkpScore >= PASSING_GRADE.TKP;

  let isOverallPassed = false;
  if (attempt.mode === 'tryout') {
    isOverallPassed = isTwkPassed && isTiuPassed && (tkpCount > 0 ? isTkpPassed : true);
  } else if (attempt.mode === 'subtes_twk') {
    isOverallPassed = isTwkPassed;
  } else if (attempt.mode === 'subtes_tiu') {
    isOverallPassed = isTiuPassed;
  } else if (attempt.mode === 'subtes_tkp') {
    isOverallPassed = isTkpPassed;
  } else {
    // latihan_topik / ulangi_salah
    isOverallPassed = totalScore > 0;
  }

  const formatDuration = (seconds: number | null) => {
    if (!seconds) return '-';
    const m = Math.floor(seconds / 60);
    const s = seconds % 60;
    return `${m} menit ${s} detik`;
  };

  const getModeTitle = (mode: string) => {
    switch (mode) {
      case 'tryout':
        return 'Try Out Penuh SKD';
      case 'subtes_twk':
        return 'Subtes Wawasan Kebangsaan (TWK)';
      case 'subtes_tiu':
        return 'Subtes Intelegensia Umum (TIU)';
      case 'latihan_topik':
        return 'Latihan Per Topik';
      case 'ulangi_salah':
        return 'Ulangi Soal Salah';
      default:
        return mode;
    }
  };

  return (
    <div className="min-h-screen flex flex-col bg-slate-50">
      <Navbar />

      <main className="max-w-3xl mx-auto w-full px-4 py-8 space-y-6 flex-1">
        {/* Banner Utama Hasil */}
        <div className="bg-white rounded-3xl border border-slate-200 p-6 sm:p-8 shadow-xs text-center space-y-4">
          <div className="inline-flex items-center gap-1.5 px-3 py-1 rounded-full text-xs font-semibold bg-indigo-50 text-indigo-700">
            <Trophy className="w-3.5 h-3.5 text-indigo-600" />
            <span>{getModeTitle(attempt.mode)}</span>
          </div>

          <div>
            <div className="text-4xl sm:text-5xl font-black text-slate-900 tracking-tight">
              {totalScore}
            </div>
            <div className="text-xs uppercase tracking-widest font-semibold text-slate-400 mt-1">
              Total Skor SKD
            </div>
          </div>

          {/* Status Kelulusan Passing Grade */}
          <div className="pt-2">
            {isOverallPassed ? (
              <div className="inline-flex items-center gap-2 px-4 py-2 rounded-2xl bg-emerald-50 text-emerald-800 border border-emerald-200 text-sm font-bold shadow-xs">
                <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0" />
                <span>MEMENUHI PASSING GRADE</span>
              </div>
            ) : (
              <div className="inline-flex items-center gap-2 px-4 py-2 rounded-2xl bg-rose-50 text-rose-800 border border-rose-200 text-sm font-bold shadow-xs">
                <AlertTriangle className="w-4 h-4 text-rose-600 shrink-0" />
                <span>BELUM MEMENUHI PASSING GRADE</span>
              </div>
            )}
            <p className="text-[11px] text-slate-400 mt-2 max-w-md mx-auto">
              Standar passing grade sementara: TWK ≥ {PASSING_GRADE.TWK}, TIU ≥ {PASSING_GRADE.TIU}
              {tkpCount > 0 ? `, TKP ≥ ${PASSING_GRADE.TKP}` : ''}.
              (Harap cek ulang ketentuan resmi KemenPANRB tahun berjalan).
            </p>
          </div>

          {/* Quick Summary Grid */}
          <div className="grid grid-cols-3 gap-3 pt-4 border-t border-slate-100 max-w-md mx-auto">
            <div className="p-3 rounded-2xl bg-emerald-50/60 border border-emerald-100">
              <div className="text-lg font-bold text-emerald-700">{totalCorrect}</div>
              <div className="text-[11px] text-emerald-600 font-medium">Benar (+5)</div>
            </div>
            <div className="p-3 rounded-2xl bg-rose-50/60 border border-rose-100">
              <div className="text-lg font-bold text-rose-700">{totalWrong}</div>
              <div className="text-[11px] text-rose-600 font-medium">Salah (0)</div>
            </div>
            <div className="p-3 rounded-2xl bg-slate-50 border border-slate-200">
              <div className="text-lg font-bold text-slate-700">{totalEmpty}</div>
              <div className="text-[11px] text-slate-500 font-medium">Kosong (0)</div>
            </div>
          </div>

          {attempt.durasi_detik && (
            <div className="flex items-center justify-center gap-1.5 text-xs text-slate-500 pt-1">
              <Clock className="w-3.5 h-3.5" />
              <span>Waktu Pengerjaan: {formatDuration(attempt.durasi_detik)}</span>
            </div>
          )}
        </div>

        {/* Rincian Skor per Subtes */}
        <div className="bg-white rounded-3xl border border-slate-200 p-6 shadow-xs space-y-4">
          <h2 className="text-sm font-bold text-slate-800 uppercase tracking-wider flex items-center gap-2">
            <Award className="w-4 h-4 text-indigo-600" />
            <span>Rincian Nilai Per Subtes</span>
          </h2>

          <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4">
            {/* Card TWK */}
            {(twkCorrect + twkWrong + twkEmpty > 0 || attempt.mode === 'tryout' || attempt.mode === 'subtes_twk') && (
              <div className="p-5 rounded-2xl border border-slate-200 bg-slate-50/50 space-y-3">
                <div className="flex items-center justify-between">
                  <div>
                    <h3 className="font-bold text-slate-900 text-sm">Tes Wawasan Kebangsaan (TWK)</h3>
                    <p className="text-[11px] text-slate-500">Ambang Batas: {PASSING_GRADE.TWK}</p>
                  </div>
                  <span
                    className={`px-2.5 py-1 rounded-full text-[10px] font-bold ${
                      isTwkPassed
                        ? 'bg-emerald-100 text-emerald-800'
                        : 'bg-rose-100 text-rose-800'
                    }`}
                  >
                    {isTwkPassed ? 'LULUS PG' : 'TIDAK LULUS'}
                  </span>
                </div>

                <div className="flex items-baseline gap-2">
                  <span className="text-2xl font-bold text-slate-900">{twkScore}</span>
                  <span className="text-xs text-slate-400">Poin</span>
                </div>

                <div className="grid grid-cols-3 gap-2 text-center text-xs pt-2 border-t border-slate-200/60">
                  <div>
                    <span className="font-bold text-emerald-600">{twkCorrect}</span>
                    <span className="block text-[10px] text-slate-400">Benar</span>
                  </div>
                  <div>
                    <span className="font-bold text-rose-600">{twkWrong}</span>
                    <span className="block text-[10px] text-slate-400">Salah</span>
                  </div>
                  <div>
                    <span className="font-bold text-slate-600">{twkEmpty}</span>
                    <span className="block text-[10px] text-slate-400">Kosong</span>
                  </div>
                </div>
              </div>
            )}

            {/* Card TIU */}
            {(tiuCorrect + tiuWrong + tiuEmpty > 0 || attempt.mode === 'tryout' || attempt.mode === 'subtes_tiu') && (
              <div className="p-5 rounded-2xl border border-slate-200 bg-slate-50/50 space-y-3">
                <div className="flex items-center justify-between">
                  <div>
                    <h3 className="font-bold text-slate-900 text-sm">Tes Intelegensia Umum (TIU)</h3>
                    <p className="text-[11px] text-slate-500">Ambang Batas: {PASSING_GRADE.TIU}</p>
                  </div>
                  <span
                    className={`px-2.5 py-1 rounded-full text-[10px] font-bold ${
                      isTiuPassed
                        ? 'bg-emerald-100 text-emerald-800'
                        : 'bg-rose-100 text-rose-800'
                    }`}
                  >
                    {isTiuPassed ? 'LULUS PG' : 'TIDAK LULUS'}
                  </span>
                </div>

                <div className="flex items-baseline gap-2">
                  <span className="text-2xl font-bold text-slate-900">{tiuScore}</span>
                  <span className="text-xs text-slate-400">Poin</span>
                </div>

                <div className="grid grid-cols-3 gap-2 text-center text-xs pt-2 border-t border-slate-200/60">
                  <div>
                    <span className="font-bold text-emerald-600">{tiuCorrect}</span>
                    <span className="block text-[10px] text-slate-400">Benar</span>
                  </div>
                  <div>
                    <span className="font-bold text-rose-600">{tiuWrong}</span>
                    <span className="block text-[10px] text-slate-400">Salah</span>
                  </div>
                  <div>
                    <span className="font-bold text-slate-600">{tiuEmpty}</span>
                    <span className="block text-[10px] text-slate-400">Kosong</span>
                  </div>
                </div>
              </div>
            )}

            {/* Card TKP */}
            {(tkpCount > 0 || attempt.mode === 'subtes_tkp') && (
              <div className="p-5 rounded-2xl border border-slate-200 bg-slate-50/50 space-y-3">
                <div className="flex items-center justify-between">
                  <div>
                    <h3 className="font-bold text-slate-900 text-sm">Tes Karakteristik Pribadi (TKP)</h3>
                    <p className="text-[11px] text-slate-500">Ambang Batas: {PASSING_GRADE.TKP}</p>
                  </div>
                  <span
                    className={`px-2.5 py-1 rounded-full text-[10px] font-bold ${
                      isTkpPassed
                        ? 'bg-emerald-100 text-emerald-800'
                        : 'bg-rose-100 text-rose-800'
                    }`}
                  >
                    {isTkpPassed ? 'LULUS PG' : 'TIDAK LULUS'}
                  </span>
                </div>

                <div className="flex items-baseline gap-2">
                  <span className="text-2xl font-bold text-slate-900">{tkpScore}</span>
                  <span className="text-xs text-slate-400">Poin</span>
                </div>

                <div className="grid grid-cols-3 gap-2 text-center text-xs pt-2 border-t border-slate-200/60">
                  <div>
                    <span className="font-bold text-emerald-600">{tkpBest}</span>
                    <span className="block text-[10px] text-slate-400">Skor 5</span>
                  </div>
                  <div>
                    <span className="font-bold text-amber-600">{tkpOther}</span>
                    <span className="block text-[10px] text-slate-400">Skor 1-4</span>
                  </div>
                  <div>
                    <span className="font-bold text-slate-600">{tkpEmpty}</span>
                    <span className="block text-[10px] text-slate-400">Kosong</span>
                  </div>
                </div>
              </div>
            )}
          </div>
        </div>

        {/* Ringkasan Evaluasi & Perbandingan Percobaan */}
        <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
          {/* Kartu Perbandingan Skor dengan Percobaan Sebelumnya */}
          <div className="bg-white rounded-3xl border border-slate-200 p-5 shadow-xs space-y-3 flex flex-col justify-between">
            <div>
              <div className="flex items-center justify-between mb-2">
                <span className="text-[11px] font-bold uppercase tracking-wider text-slate-400">
                  Perbandingan Skor
                </span>
                {scoreDiff !== null ? (
                  scoreDiff > 0 ? (
                    <span className="inline-flex items-center gap-1 px-2 py-0.5 rounded-full bg-emerald-50 text-emerald-700 text-[10px] font-bold border border-emerald-200">
                      <TrendingUp className="w-3 h-3 text-emerald-600" />
                      +{scoreDiff} Poin
                    </span>
                  ) : scoreDiff < 0 ? (
                    <span className="inline-flex items-center gap-1 px-2 py-0.5 rounded-full bg-rose-50 text-rose-700 text-[10px] font-bold border border-rose-200">
                      <TrendingDown className="w-3 h-3 text-rose-600" />
                      {scoreDiff} Poin
                    </span>
                  ) : (
                    <span className="inline-flex items-center gap-1 px-2 py-0.5 rounded-full bg-slate-100 text-slate-700 text-[10px] font-bold border border-slate-200">
                      <Minus className="w-3 h-3 text-slate-500" />
                      Sama
                    </span>
                  )
                ) : (
                  <span className="inline-flex items-center gap-1 px-2 py-0.5 rounded-full bg-indigo-50 text-indigo-700 text-[10px] font-bold">
                    <Sparkles className="w-3 h-3 text-indigo-600" />
                    Pertama
                  </span>
                )}
              </div>

              <h3 className="text-sm font-bold text-slate-900">
                {scoreDiff !== null
                  ? scoreDiff > 0
                    ? `Meningkat +${scoreDiff} poin!`
                    : scoreDiff < 0
                    ? `Turun ${Math.abs(scoreDiff)} poin dibanding sebelumnya`
                    : 'Skor konsisten sama dengan sebelumnya'
                  : 'Percobaan Perdana pada Mode Ini'}
              </h3>
              <p className="text-xs text-slate-500 mt-1 leading-relaxed">
                {scoreDiff !== null && prevAttempt?.skor !== undefined
                  ? `Skor Anda sebelumnya adalah ${prevAttempt.skor}. Pantau terus grafik perkembangan kemampuan Anda di halaman Progres.`
                  : 'Bagus! Anda telah menyelesaikan percobaan awal. Terus latih konsistensi untuk melihat grafik kemajuan.'}
              </p>
            </div>

            <div className="pt-2">
              <Link
                href="/progres"
                className="text-xs font-semibold text-indigo-600 hover:text-indigo-700 inline-flex items-center gap-1 group"
              >
                <span>Lihat Tren Skor di Progres</span>
                <ArrowRight className="w-3.5 h-3.5 group-hover:translate-x-0.5 transition-transform" />
              </Link>
            </div>
          </div>

          {/* Kartu Topik Paling Banyak Salah */}
          <div className="bg-white rounded-3xl border border-slate-200 p-5 shadow-xs space-y-3 flex flex-col justify-between">
            <div>
              <div className="flex items-center justify-between mb-2">
                <span className="text-[11px] font-bold uppercase tracking-wider text-slate-400">
                  Evaluasi Kelemahan
                </span>
                {mostMissedTopic ? (
                  <span className="inline-flex items-center gap-1 px-2 py-0.5 rounded-full bg-amber-50 text-amber-700 text-[10px] font-bold border border-amber-200">
                    <AlertTriangle className="w-3 h-3 text-amber-600" />
                    {mostMissedTopic.count} Soal Salah
                  </span>
                ) : (
                  <span className="inline-flex items-center gap-1 px-2 py-0.5 rounded-full bg-emerald-50 text-emerald-700 text-[10px] font-bold border border-emerald-200">
                    <CheckCircle2 className="w-3 h-3 text-emerald-600" />
                    Sempurna
                  </span>
                )}
              </div>

              <h3 className="text-sm font-bold text-slate-900">
                {mostMissedTopic ? (
                  <>
                    Perlu Latihan:{' '}
                    <span className="text-indigo-600">
                      {mostMissedTopic.topik} ({mostMissedTopic.subtes})
                    </span>
                  </>
                ) : (
                  'Luar Biasa! Tidak Ada Kesalahan'
                )}
              </h3>
              <p className="text-xs text-slate-500 mt-1 leading-relaxed">
                {mostMissedTopic
                  ? `Topik ini menyumbang ${mostMissedTopic.count} jawaban salah/kosong pada sesi ini. Sebaiknya ulangi latihan khusus topik ini.`
                  : 'Semua soal berhasil Anda jawab dengan benar! Pertahankan performa ini.'}
              </p>
            </div>

            {mostMissedTopic && (
              <div className="pt-2">
                <Link
                  href={`/?modal=latihan&subtes=${encodeURIComponent(mostMissedTopic.subtes)}&topik=${encodeURIComponent(mostMissedTopic.topik)}`}
                  className="text-xs font-semibold text-indigo-600 hover:text-indigo-700 inline-flex items-center gap-1 group"
                >
                  <span>Latih Khusus Topik Ini</span>
                  <ArrowRight className="w-3.5 h-3.5 group-hover:translate-x-0.5 transition-transform" />
                </Link>
              </div>
            )}
          </div>
        </div>

        {/* Tombol Aksi Navigasi */}
        <div className="flex flex-col sm:flex-row items-center justify-between gap-3">
          <Link
            href="/"
            prefetch={true}
            className="w-full sm:w-auto px-5 py-3 rounded-2xl border border-slate-200 bg-white hover:bg-slate-50 text-slate-700 font-semibold text-xs sm:text-sm flex items-center justify-center gap-2 transition"
          >
            <RotateCcw className="w-4 h-4" />
            <span>Kembali ke Dashboard</span>
          </Link>

          <Link
            href={`/ujian/${attemptId}/pembahasan`}
            prefetch={true}
            className="w-full sm:w-auto px-6 py-3 rounded-2xl bg-indigo-600 hover:bg-indigo-700 text-white font-bold text-xs sm:text-sm shadow-md shadow-indigo-100 flex items-center justify-center gap-2 transition"
          >
            <BookOpen className="w-4 h-4" />
            <span>Buka Pembahasan Soal</span>
            <ArrowRight className="w-4 h-4" />
          </Link>
        </div>
      </main>
    </div>
  );
}
