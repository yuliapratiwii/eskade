import { SupabaseClient } from '@supabase/supabase-js';
import { SubtesType, ExamMode } from './types';
import { TRYOUT_CONFIG } from './config';

/**
 * Shuffles an array randomly (Fisher-Yates)
 */
function shuffle<T>(array: T[]): T[] {
  const arr = [...array];
  for (let i = arr.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1));
    [arr[i], arr[j]] = [arr[j], arr[i]];
  }
  return arr;
}

/**
 * Mengambil daftar ID soal yang pernah dikerjakan oleh user
 */
export async function getAttemptedQuestionIds(supabase: SupabaseClient, userId: string): Promise<Set<string>> {
  const { data: userAttempts } = await supabase
    .from('attempts')
    .select('id')
    .eq('user_id', userId);

  if (!userAttempts || userAttempts.length === 0) {
    return new Set<string>();
  }

  const attemptIds = userAttempts.map((a) => a.id);
  const { data: answers } = await supabase
    .from('attempt_answers')
    .select('question_id')
    .in('attempt_id', attemptIds)
    .not('jawaban', 'is', null);

  const set = new Set<string>();
  answers?.forEach((ans) => {
    if (ans.question_id) set.add(ans.question_id);
  });
  return set;
}

/**
 * Mengambil daftar topik yang tersedia untuk subtes tertentu
 */
export async function getAvailableTopics(supabase: SupabaseClient, subtes: SubtesType): Promise<string[]> {
  const { data } = await supabase
    .from('questions')
    .select('topik')
    .eq('subtes', subtes)
    .eq('status', 'published')
    .not('topik', 'is', null);

  if (!data) return [];
  const uniqueTopics = Array.from(new Set(data.map((d) => d.topik).filter(Boolean))) as string[];
  return uniqueTopics.sort();
}

/**
 * Mengambil ID soal yang pernah dijawab salah oleh user
 */
export async function getIncorrectQuestionIds(supabase: SupabaseClient, userId: string): Promise<string[]> {
  const { data: userAttempts } = await supabase
    .from('attempts')
    .select('id')
    .eq('user_id', userId)
    .not('selesai', 'is', null);

  if (!userAttempts || userAttempts.length === 0) return [];

  const attemptIds = userAttempts.map((a) => a.id);
  const { data: answers } = await supabase
    .from('attempt_answers')
    .select('question_id, jawaban')
    .in('attempt_id', attemptIds)
    .not('jawaban', 'is', null);

  if (!answers || answers.length === 0) return [];

  const questionIds = Array.from(new Set(answers.map((a) => a.question_id)));
  const { data: questions } = await supabase
    .from('questions')
    .select('id, kunci')
    .in('id', questionIds)
    .eq('status', 'published');

  if (!questions) return [];
  const keyMap = new Map(questions.map((q) => [q.id, q.kunci]));

  const wrongIds = new Set<string>();
  for (const ans of answers) {
    const correctKey = keyMap.get(ans.question_id);
    if (correctKey && ans.jawaban !== correctKey) {
      wrongIds.add(ans.question_id);
    }
  }

  return Array.from(wrongIds);
}

interface CreateAttemptOptions {
  subtes?: SubtesType;
  topik?: string;
  jumlahSoal?: number;
}

/**
 * Membuat sesi ujian baru mode acak (Try Out, Subtes, Latihan Topik, Ulangi Salah)
 */
export async function createAttempt(
  supabase: SupabaseClient,
  userId: string,
  mode: ExamMode,
  options: CreateAttemptOptions = {}
): Promise<{ attemptId: string; questionCount: number }> {
  const attemptedSet = await getAttemptedQuestionIds(supabase, userId);
  let selectedQuestionIds: string[] = [];

  if (mode === 'tryout') {
    const [twkRes, tiuRes] = await Promise.all([
      supabase.from('questions').select('id').eq('subtes', 'TWK').eq('status', 'published'),
      supabase.from('questions').select('id').eq('subtes', 'TIU').eq('status', 'published'),
    ]);

    const selectWithPriority = (allIds: string[], targetCount: number) => {
      const unattempted = allIds.filter((id) => !attemptedSet.has(id));
      const attempted = allIds.filter((id) => attemptedSet.has(id));
      const shuffledUnattempted = shuffle(unattempted);
      const shuffledAttempted = shuffle(attempted);

      const combined = [...shuffledUnattempted, ...shuffledAttempted];
      return combined.slice(0, targetCount);
    };

    const twkIds = twkRes.data?.map((q) => q.id) || [];
    const tiuIds = tiuRes.data?.map((q) => q.id) || [];

    const selectedTWK = selectWithPriority(twkIds, TRYOUT_CONFIG.TWK_COUNT);
    const selectedTIU = selectWithPriority(tiuIds, TRYOUT_CONFIG.TIU_COUNT);

    selectedQuestionIds = [...selectedTWK, ...selectedTIU];
  } else if (mode === 'subtes_twk' || mode === 'subtes_tiu') {
    const subtesName: SubtesType = mode === 'subtes_twk' ? 'TWK' : 'TIU';
    const targetCount = mode === 'subtes_twk' ? TRYOUT_CONFIG.TWK_COUNT : TRYOUT_CONFIG.TIU_COUNT;

    const { data: questions } = await supabase
      .from('questions')
      .select('id')
      .eq('subtes', subtesName)
      .eq('status', 'published');

    const allIds = questions?.map((q) => q.id) || [];
    const unattempted = allIds.filter((id) => !attemptedSet.has(id));
    const attempted = allIds.filter((id) => attemptedSet.has(id));
    const combined = [...shuffle(unattempted), ...shuffle(attempted)];

    selectedQuestionIds = combined.slice(0, targetCount);
  } else if (mode === 'latihan_topik') {
    const subtesName = options.subtes || 'TWK';
    const targetCount = options.jumlahSoal || 10;

    let query = supabase
      .from('questions')
      .select('id')
      .eq('subtes', subtesName)
      .eq('status', 'published');

    if (options.topik && options.topik !== 'all') {
      query = query.eq('topik', options.topik);
    }

    const { data: questions } = await query;
    const allIds = questions?.map((q) => q.id) || [];
    selectedQuestionIds = shuffle(allIds).slice(0, targetCount);
  } else if (mode === 'ulangi_salah') {
    const wrongIds = await getIncorrectQuestionIds(supabase, userId);
    if (wrongIds.length === 0) {
      throw new Error('Belum ada riwayat soal salah yang tercatat. Selesaikan try out atau latihan terlebih dahulu!');
    }
    const targetCount = options.jumlahSoal || Math.min(wrongIds.length, 30);
    selectedQuestionIds = shuffle(wrongIds).slice(0, targetCount);
  }

  if (selectedQuestionIds.length === 0) {
    throw new Error('Tidak ditemukan soal yang sesuai untuk mode ini.');
  }

  // 1. Buat record di attempts
  const { data: attempt, error: attemptError } = await supabase
    .from('attempts')
    .insert({
      user_id: userId,
      mode: mode,
      subtes: options.subtes || (mode === 'subtes_twk' ? 'TWK' : mode === 'subtes_tiu' ? 'TIU' : null),
      mulai: new Date().toISOString(),
    })
    .select('id')
    .single();

  if (attemptError || !attempt) {
    throw new Error(attemptError?.message || 'Gagal memulai sesi ujian.');
  }

  // 2. Siapkan baris attempt_answers untuk tiap soal
  const answersPayload = selectedQuestionIds.map((qid) => ({
    attempt_id: attempt.id,
    question_id: qid,
    jawaban: null,
    ragu: false,
    waktu_detik: 0,
  }));

  const { error: answersError } = await supabase
    .from('attempt_answers')
    .insert(answersPayload);

  if (answersError) {
    throw new Error(answersError.message || 'Gagal menyiapkan lembar jawaban.');
  }

  return {
    attemptId: attempt.id,
    questionCount: selectedQuestionIds.length,
  };
}

/**
 * Membuat sesi ujian dari Paket Try Out tetap (tabel exams + exam_questions)
 */
export async function createExamAttemptFromPackage(
  supabase: SupabaseClient,
  userId: string,
  examId: string
): Promise<{ attemptId: string; questionCount: number }> {
  // 1. Ambil data exam
  const { data: exam, error: examErr } = await supabase
    .from('exams')
    .select('id, judul, tipe, subtes, durasi_menit')
    .eq('id', examId)
    .single();

  if (examErr || !exam) throw new Error('Paket ujian tidak ditemukan.');

  // 2. Ambil soal yang terdaftar di exam_questions sesuai urutan
  const { data: examQuestions, error: eqErr } = await supabase
    .from('exam_questions')
    .select('question_id, urutan')
    .eq('exam_id', examId)
    .order('urutan', { ascending: true });

  if (eqErr || !examQuestions || examQuestions.length === 0) {
    throw new Error('Paket ujian ini belum memiliki butir soal.');
  }

  // 3. Buat record attempts
  const { data: attempt, error: attemptError } = await supabase
    .from('attempts')
    .insert({
      user_id: userId,
      exam_id: exam.id,
      mode: exam.tipe,
      subtes: exam.subtes || null,
      mulai: new Date().toISOString(),
    })
    .select('id')
    .single();

  if (attemptError || !attempt) {
    throw new Error(attemptError?.message || 'Gagal memulai ujian paket.');
  }

  // 4. Siapkan baris attempt_answers
  const answersPayload = examQuestions.map((eq) => ({
    attempt_id: attempt.id,
    question_id: eq.question_id,
    jawaban: null,
    ragu: false,
    waktu_detik: 0,
  }));

  const { error: answersError } = await supabase
    .from('attempt_answers')
    .insert(answersPayload);

  if (answersError) {
    throw new Error(answersError.message || 'Gagal menyiapkan lembar jawaban.');
  }

  return {
    attemptId: attempt.id,
    questionCount: examQuestions.length,
  };
}
