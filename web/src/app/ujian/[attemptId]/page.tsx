import { redirect, notFound } from 'next/navigation';
import { createClient } from '@/lib/supabase/server';
import { calculateExamDurationSeconds, sortExamQuestions } from '@/lib/config';
import { ExamClient, ExamQuestionClient, UserAnswerState } from '@/components/ExamClient';
import { ExamMode } from '@/lib/types';

interface ExamPageProps {
  params: Promise<{
    attemptId: string;
  }>;
}

export default async function ExamPage({ params }: ExamPageProps) {
  const { attemptId } = await params;
  const supabase = await createClient();

  // 1. Verifikasi user
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) {
    redirect('/login');
  }

  // 2. Ambil data attempt (termasuk exam_id bila berasal dari paket tetap)
  const { data: attempt, error: attemptError } = await supabase
    .from('attempts')
    .select('id, user_id, mode, subtes, mulai, selesai, durasi_detik, exam_id')
    .eq('id', attemptId)
    .single();

  if (attemptError || !attempt) {
    notFound();
  }

  // Pastikan attempt milik user yang sedang login
  if (attempt.user_id !== user.id) {
    redirect('/');
  }

  // Jika ujian sudah diselesaikan, arahkan langsung ke halaman hasil
  if (attempt.selesai) {
    redirect(`/ujian/${attemptId}/hasil`);
  }

  // 3. Ambil daftar attempt_answers untuk attempt ini
  const { data: answersData, error: answersError } = await supabase
    .from('attempt_answers')
    .select('question_id, jawaban, ragu, waktu_detik')
    .eq('attempt_id', attemptId);

  if (answersError || !answersData || answersData.length === 0) {
    notFound();
  }

  const questionIds = answersData.map((a) => a.question_id);

  // 4. Query soal dari database dengan ATURAN ANTI-CHEAT KETAT:
  // Selama pengerjaan, JANGAN mengambil kolom kunci & pembahasan (kecuali mode latihan_topik)
  const isLatihanTopik = attempt.mode === 'latihan_topik';
  let questionsData: ExamQuestionClient[] = [];

  if (isLatihanTopik) {
    const res = await supabase
      .from('questions')
      .select('id, sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, kunci, pembahasan, pembahasan_gambar')
      .in('id', questionIds);

    if (res.error || !res.data) notFound();
    questionsData = res.data as unknown as ExamQuestionClient[];
  } else {
    const res = await supabase
      .from('questions')
      .select('id, sumber, nomor, subtes, topik, level, soal, gambar_url, opsi')
      .in('id', questionIds);

    if (res.error || !res.data) notFound();
    questionsData = res.data as unknown as ExamQuestionClient[];
  }

  // 5. Susun urutan soal secara presisi dan teratur:
  // - Bila berasal dari paket ujian (exam_id), gunakan urutan pasti dari exam_questions (urutan 1..110)
  // - Bila mode latihan mandiri / acak, urutkan deterministik: TWK (1-30) -> TIU (31-65) -> TKP (66-110) & topik
  const questionMap = new Map(questionsData.map((q) => [q.id, q]));
  let orderedQuestions: ExamQuestionClient[] = [];

  if (attempt.exam_id) {
    const { data: eqList } = await supabase
      .from('exam_questions')
      .select('question_id, urutan')
      .eq('exam_id', attempt.exam_id)
      .order('urutan', { ascending: true });

    if (eqList && eqList.length > 0) {
      for (const eq of eqList) {
        const q = questionMap.get(eq.question_id);
        if (q) orderedQuestions.push(q);
      }
    }
  }

  // Fallback jika bukan dari paket atau exam_questions tidak ditemukan
  if (orderedQuestions.length === 0) {
    orderedQuestions = sortExamQuestions(questionsData);
  }

  // 5. Hitung durasi dan sisa waktu pengerjaan
  const totalQuestions = orderedQuestions.length;
  const totalDurationSeconds = isLatihanTopik
    ? 0
    : calculateExamDurationSeconds(totalQuestions);

  let initialRemainingSeconds = totalDurationSeconds;
  if (totalDurationSeconds > 0) {
    const startTimeMs = new Date(attempt.mulai).getTime();
    const nowMs = Date.now();
    const elapsedSeconds = Math.max(0, Math.floor((nowMs - startTimeMs) / 1000));
    initialRemainingSeconds = Math.max(0, totalDurationSeconds - elapsedSeconds);
  }

  // 6. Format initial answers state
  const initialAnswers: Record<string, UserAnswerState> = {};
  for (const ans of answersData) {
    initialAnswers[ans.question_id] = {
      jawaban: ans.jawaban,
      ragu: ans.ragu || false,
      waktu_detik: ans.waktu_detik || 0,
    };
  }

  return (
    <ExamClient
      attemptId={attempt.id}
      mode={attempt.mode as ExamMode}
      subtes={attempt.subtes}
      initialQuestions={orderedQuestions}
      initialAnswers={initialAnswers}
      totalDurationSeconds={totalDurationSeconds}
      initialRemainingSeconds={initialRemainingSeconds}
    />
  );
}
