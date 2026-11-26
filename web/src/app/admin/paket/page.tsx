import { createClient } from '@/lib/supabase/server';
import { ExamListClient, ExamListItem } from '@/components/admin/ExamListClient';

export default async function AdminExamsPage() {
  const supabase = await createClient();

  // Ambil semua paket dari tabel exams beserta jumlah soal dan topik
  const { data: exams, error } = await supabase
    .from('exams')
    .select(`
      id,
      judul,
      tipe,
      subtes,
      durasi_menit,
      aktif,
      exam_questions (
        questions (
          subtes,
          topik
        )
      )
    `)
    .order('aktif', { ascending: false });

  if (error) {
    console.error('Error fetching exams:', error);
  }

  const formattedExams: ExamListItem[] = (exams || []).map((e: any) => {
    const rawList = (e.exam_questions || [])
      .map((eq: any) => eq.questions?.topik)
      .filter((t: any): t is string => typeof t === 'string' && t.trim().length > 0);
    const topikList = Array.from(new Set(rawList)) as string[];

    return {
      id: e.id,
      judul: e.judul,
      tipe: e.tipe,
      subtes: e.subtes,
      durasi_menit: e.durasi_menit,
      aktif: e.aktif,
      questionCount: e.exam_questions?.length || 0,
      topikList,
    };
  });

  // Natural sort urutan paket: Grouping (Try Out -> TWK -> TIU -> TKP) dan nomor paket berurutan
  formattedExams.sort((a, b) => {
    const groupOrder: Record<string, number> = { tryout: 1, TWK: 2, TIU: 3, TKP: 4 };
    const groupA = a.tipe === 'tryout' ? 'tryout' : (a.subtes || '');
    const groupB = b.tipe === 'tryout' ? 'tryout' : (b.subtes || '');
    const diff = (groupOrder[groupA] || 99) - (groupOrder[groupB] || 99);
    if (diff !== 0) return diff;
    return a.judul.localeCompare(b.judul, 'id', { numeric: true, sensitivity: 'base' });
  });

  return <ExamListClient initialExams={formattedExams} />;
}
