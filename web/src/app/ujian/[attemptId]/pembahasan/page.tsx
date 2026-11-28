import { redirect, notFound } from 'next/navigation';
import { createClient, getAuthUser } from '@/lib/supabase/server';
import { ReviewClient, ReviewItem } from '@/components/ReviewClient';
import { FullQuestionItem } from '@/lib/types';
import { sortExamQuestions } from '@/lib/config';

interface ReviewPageProps {
  params: Promise<{
    attemptId: string;
  }>;
}

export default async function ExamReviewPage({ params }: ReviewPageProps) {
  const { attemptId } = await params;
  const supabase = await createClient();

  const user = await getAuthUser(supabase);

  if (!user) {
    redirect('/login');
  }

  // 1 & 2. Ambil data attempt dan semua jawaban user secara paralel
  const [
    { data: attempt, error: attemptError },
    { data: userAnswers, error: answersError },
  ] = await Promise.all([
    supabase
      .from('attempts')
      .select('id, user_id, mode, subtes, mulai, selesai, exam_id')
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

  if (answersError || !userAnswers || userAnswers.length === 0) {
    notFound();
  }

  const questionIds = userAnswers.map((a) => a.question_id);

  // 3 & 4. Ambil data lengkap soal dan urutan exam_questions (jika ada) secara paralel
  const questionsPromise = supabase
    .from('questions')
    .select('id, sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, kunci, pembahasan, pembahasan_gambar, skor_tkp')
    .in('id', questionIds);

  const eqPromise = attempt.exam_id
    ? supabase
        .from('exam_questions')
        .select('question_id, urutan')
        .eq('exam_id', attempt.exam_id)
        .order('urutan', { ascending: true })
    : Promise.resolve({ data: null });

  const [{ data: questionsData, error: questionsError }, eqRes] = await Promise.all([
    questionsPromise,
    eqPromise,
  ]);

  if (questionsError || !questionsData) {
    notFound();
  }

  // Susun urutan soal secara presisi dan teratur:
  // - Bila berasal dari paket ujian (exam_id), gunakan urutan pasti dari exam_questions (urutan 1..110)
  // - Bila mode latihan mandiri / acak, urutkan deterministik: TWK (1-30) -> TIU (31-65) -> TKP (66-110) & topik
  const questionMap = new Map(questionsData.map((q) => [q.id, q]));
  let orderedQuestionIds: string[] = [];

  if (eqRes.data && eqRes.data.length > 0) {
    orderedQuestionIds = eqRes.data.map((eq: any) => eq.question_id);
  }

  if (orderedQuestionIds.length === 0) {
    const sorted = sortExamQuestions(questionsData);
    orderedQuestionIds = sorted.map((q) => q.id);
  }

  // Petakan jawaban user berdasarkan question_id
  const answerMap = new Map(userAnswers.map((a) => [a.question_id, a]));

  // 5. Susun reviewItems secara berurutan rapi
  const reviewItems: ReviewItem[] = [];

  for (const qid of orderedQuestionIds) {
    const q = questionMap.get(qid);
    if (!q) continue;

    const ans = answerMap.get(qid);
    const fullQuestion = q as unknown as FullQuestionItem;
    const hasAnswer = ans?.jawaban !== null && ans?.jawaban !== undefined;
    const isCorrect = hasAnswer && ans?.jawaban === fullQuestion.kunci;

    let status: 'correct' | 'wrong' | 'empty' = 'empty';
    if (isCorrect) status = 'correct';
    else if (hasAnswer) status = 'wrong';

    reviewItems.push({
      question: fullQuestion,
      userAnswer: ans?.jawaban || null,
      ragu: ans?.ragu || false,
      waktuDetik: ans?.waktu_detik || 0,
      isCorrect,
      status,
    });
  }

  return (
    <ReviewClient
      attemptId={attempt.id}
      mode={attempt.mode}
      items={reviewItems}
    />
  );
}
