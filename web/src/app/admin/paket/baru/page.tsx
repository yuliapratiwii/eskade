import { createClient } from '@/lib/supabase/server';
import {
  ExamFormClient,
  ExamQuestionEntry,
  QuestionExamAssignment,
  SubtestExamInfo,
} from '@/components/admin/ExamFormClient';
import { SubtesType } from '@/lib/types';

export default async function AdminNewExamPage() {
  const supabase = await createClient();

  // 1. Ambil semua soal published sebagai pool pilihan
  const { data: questions } = await supabase
    .from('questions')
    .select('id, subtes, topik, soal')
    .eq('status', 'published')
    .order('subtes', { ascending: true })
    .order('nomor', { ascending: true });

  const pool: ExamQuestionEntry[] = (questions || []).map((q) => ({
    id: q.id,
    subtes: q.subtes as SubtesType,
    topik: q.topik,
    soal: q.soal,
  }));

  // 2. Ambil pemetaan soal yang sudah dipakai di paket lain untuk deduplikasi
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

  // 3. Ambil seluruh daftar paket ujian untuk autofill penomoran berurutan & anti-duplikasi judul
  const { data: allExams } = await supabase
    .from('exams')
    .select('id, judul, tipe, subtes, durasi_menit')
    .order('created_at', { ascending: false });

  const subtestExams: SubtestExamInfo[] = (allExams || [])
    .filter((e) => e.tipe === 'subtes')
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
          Buat Paket Latihan / Try Out Baru
        </h1>
        <p className="text-xs text-slate-500 mt-0.5">
          Pilih fokus subtes (TIU, TWK, TKP) atau Try Out Penuh. Sistem otomatis menjaga agar soal subtes tidak duplikat.
        </p>
      </div>

      <ExamFormClient
        publishedQuestionsPool={pool}
        usedAssignmentsMap={usedAssignmentsMap}
        subtestExams={subtestExams}
        allExistingExams={allExams || []}
        isEdit={false}
      />
    </div>
  );
}
