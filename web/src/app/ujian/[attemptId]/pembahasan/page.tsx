import { redirect, notFound } from 'next/navigation';
import { createClient } from '@/lib/supabase/server';
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

  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) {
    redirect('/login');
  }

  // 1. Ambil data attempt (termasuk exam_id bila berasal dari paket)
  const { data: attempt, error: attemptError } = await supabase
    .from('attempts')
    .select('id, user_id, mode, subtes, mulai, selesai, exam_id')
    .eq('id', attemptId)
    .single();

  if (attemptError || !attempt || attempt.user_id !== user.id) {
    notFound();
  }

  // 2. Ambil semua jawaban user
  const { data: userAnswers, error: answersError } = await supabase
    .from('attempt_answers')
    .select('question_id, jawaban, ragu, waktu_detik')
    .eq('attempt_id', attemptId);

  if (answersError || !userAnswers || userAnswers.length === 0) {
    notFound();
  }

  const questionIds = userAnswers.map((a) => a.question_id);

  // 3. SELEPAS SUBMIT: Ambil data lengkap soal (termasuk kunci & pembahasan)
  const { data: questionsData, error: questionsError } = await supabase
    .from('questions')
    .select('id, sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, kunci, pembahasan, pembahasan_gambar, skor_tkp')
    .in('id', questionIds);

  if (questionsError || !questionsData) {
    notFound();
  }

  // 4. Susun urutan soal secara presisi dan teratur:
  // - Bila berasal dari paket ujian (exam_id), gunakan urutan pasti dari exam_questions (urutan 1..110)
  // - Bila mode latihan mandiri / acak, urutkan deterministik: TWK (1-30) -> TIU (31-65) -> TKP (66-110) & topik
  const questionMap = new Map(questionsData.map((q) => [q.id, q]));
  let orderedQuestionIds: string[] = [];

  if (attempt.exam_id) {
    const { data: eqList } = await supabase
      .from('exam_questions')
      .select('question_id, urutan')
      .eq('exam_id', attempt.exam_id)
      .order('urutan', { ascending: true });

    if (eqList && eqList.length > 0) {
      orderedQuestionIds = eqList.map((eq: any) => eq.question_id);
    }
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
