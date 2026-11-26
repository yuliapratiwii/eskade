import { notFound } from 'next/navigation';
import { createClient } from '@/lib/supabase/server';
import {
  ExamFormClient,
  ExamQuestionEntry,
  QuestionExamAssignment,
  SubtestExamInfo,
} from '@/components/admin/ExamFormClient';
import { SubtesType } from '@/lib/types';

interface EditExamPageProps {
  params: Promise<{
    id: string;
  }>;
}

export default async function AdminEditExamPage({ params }: EditExamPageProps) {
  const { id } = await params;
  const supabase = await createClient();

  // 1. Ambil data exam
  const { data: exam, error: examError } = await supabase
    .from('exams')
    .select('id, judul, tipe, subtes, durasi_menit, aktif')
    .eq('id', id)
    .single();

  if (examError || !exam) {
    notFound();
  }

  // 2. Ambil soal yang terdaftar di paket ini
  const { data: currentExamQuestions } = await supabase
    .from('exam_questions')
    .select(`
      question_id,
      urutan,
      questions (
        id,
        subtes,
        topik,
        soal
      )
    `)
    .eq('exam_id', id)
    .order('urutan', { ascending: true });

  const initialQuestions: ExamQuestionEntry[] = [];
  (currentExamQuestions || []).forEach((eq: any) => {
    if (eq.questions) {
      initialQuestions.push({
        id: eq.questions.id,
        subtes: eq.questions.subtes as SubtesType,
        topik: eq.questions.topik,
        soal: eq.questions.soal,
      });
    }
  });

  // 3. Ambil seluruh pool soal published
  const { data: allQuestions } = await supabase
    .from('questions')
    .select('id, subtes, topik, soal')
    .eq('status', 'published')
    .order('subtes', { ascending: true })
    .order('nomor', { ascending: true });

  const pool: ExamQuestionEntry[] = (allQuestions || []).map((q) => ({
    id: q.id,
    subtes: q.subtes as SubtesType,
    topik: q.topik,
    soal: q.soal,
  }));

  // 4. Ambil pemetaan soal yang sudah dipakai di paket lain untuk deduplikasi
  const { data: assignments } = await supabase
    .from('exam_questions')
    .select(`
      question_id,
      exams (
        id,
        judul,
        tipe,
        subtes
      )
    `);

  const usedAssignmentsMap: Record<string, QuestionExamAssignment[]> = {};
  (assignments || []).forEach((row: any) => {
    if (row.question_id && row.exams) {
      if (!usedAssignmentsMap[row.question_id]) {
        usedAssignmentsMap[row.question_id] = [];
      }
      usedAssignmentsMap[row.question_id].push({
        examId: row.exams.id,
        judul: row.exams.judul,
        tipe: row.exams.tipe,
        subtes: row.exams.subtes,
      });
    }
  });

  // 5. Ambil semua paket yang sudah ada (untuk anti-duplikasi judul & impor paket subtes)
  const { data: allExams } = await supabase
    .from('exams')
    .select('id, judul, tipe, subtes, durasi_menit')
    .order('created_at', { ascending: false });

  const subtestExams: SubtestExamInfo[] = (allExams || [])
    .filter((e) => e.tipe === 'subtes' && e.id !== id)
    .map((e) => ({
      id: e.id,
      judul: e.judul,
      tipe: e.tipe as 'subtes',
      subtes: e.subtes as SubtesType,
      durasi_menit: e.durasi_menit,
    }));

  return (
    <div className="space-y-4">
      <div>
        <h1 className="text-xl sm:text-2xl font-bold text-slate-900 tracking-tight">
          Edit Paket & Susun Soal: {exam.judul}
        </h1>
        <p className="text-xs text-slate-500 mt-0.5">
          Atur ulang urutan butir soal, tambah soal baru, atau sesuaikan durasi waktu.
        </p>
      </div>

      <ExamFormClient
        initialExam={exam as any}
        initialQuestions={initialQuestions}
        publishedQuestionsPool={pool}
        usedAssignmentsMap={usedAssignmentsMap}
        subtestExams={subtestExams}
        allExistingExams={allExams || []}
        isEdit={true}
      />
    </div>
  );
}
