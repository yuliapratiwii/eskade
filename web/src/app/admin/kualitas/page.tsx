import { createClient } from '@/lib/supabase/server';
import { QualityClient, QuestionQualityItem } from '@/components/admin/QualityClient';
import { SubtesType } from '@/lib/types';

export default async function AdminQualityPage() {
  const supabase = await createClient();

  // 1. Ambil seluruh soal berstatus published
  const { data: questions, error: qError } = await supabase
    .from('questions')
    .select('id, nomor, sumber, subtes, topik, soal, kunci')
    .eq('status', 'published')
    .order('subtes', { ascending: true })
    .order('nomor', { ascending: true });

  if (qError || !questions) {
    return <div className="p-8 text-center text-slate-500">Gagal memuat data bank soal.</div>;
  }

  // 2. Ambil seluruh jawaban attempt_answers yang sudah dijawab
  const { data: answers, error: aError } = await supabase
    .from('attempt_answers')
    .select('question_id, jawaban')
    .not('jawaban', 'is', null);

  // 3. Agregasi per question_id
  const answerStatsMap = new Map<string, { total: number; correct: number }>();

  if (answers) {
    for (const ans of answers) {
      if (!ans.question_id) continue;
      const stat = answerStatsMap.get(ans.question_id) || { total: 0, correct: 0 };
      stat.total++;
      answerStatsMap.set(ans.question_id, stat);
    }
  }

  // 4. Hitung persentase benar dan tandai anomali
  const qualityItems: QuestionQualityItem[] = questions.map((q) => {
    const stat = answerStatsMap.get(q.id) || { total: 0, correct: 0 };
    // Hitung jawaban benar
    let correctCount = 0;
    if (answers && q.kunci) {
      for (const ans of answers) {
        if (ans.question_id === q.id && ans.jawaban === q.kunci) {
          correctCount++;
        }
      }
    }

    const totalDijawab = stat.total;
    const jumlahBenar = correctCount;
    const persenBenar = totalDijawab > 0 ? Math.round((jumlahBenar / totalDijawab) * 100) : 0;

    let needsReview = false;
    let reviewReason = '';

    if (totalDijawab >= 5) {
      if (persenBenar < 20) {
        needsReview = true;
        reviewReason = 'Akurasi < 20% (Kunci salah atau soal ambigu?)';
      } else if (persenBenar > 95) {
        needsReview = true;
        reviewReason = 'Akurasi > 95% (Terlalu mudah / opsi jelas)';
      }
    }

    return {
      id: q.id,
      nomor: q.nomor,
      sumber: q.sumber,
      subtes: q.subtes as SubtesType,
      topik: q.topik,
      soal: q.soal,
      kunci: q.kunci,
      totalDijawab,
      jumlahBenar,
      persenBenar,
      needsReview,
      reviewReason,
    };
  });

  return <QualityClient initialItems={qualityItems} />;
}
