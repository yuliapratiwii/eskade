import { createClient } from '@/lib/supabase/server';
import { QuestionFormClient } from '@/components/admin/QuestionFormClient';

export default async function AdminNewQuestionPage() {
  const supabase = await createClient();

  // Ambil daftar topik yang sudah ada berdasarkan subtes
  const { data: questions } = await supabase
    .from('questions')
    .select('subtes, topik')
    .not('topik', 'is', null);

  const existingTopicsBySubtes: Record<string, string[]> = {
    TWK: [],
    TIU: [],
    TKP: [],
  };

  questions?.forEach((q) => {
    if (q.topik && !existingTopicsBySubtes[q.subtes]?.includes(q.topik)) {
      existingTopicsBySubtes[q.subtes].push(q.topik);
    }
  });

  return (
    <div className="space-y-4">
      <div>
        <h1 className="text-xl sm:text-2xl font-bold text-slate-900 tracking-tight">
          Tambah Soal Baru
        </h1>
        <p className="text-xs text-slate-500 mt-0.5">
          Tulis soal dengan dukungan Markdown dan formula matematika KaTeX.
        </p>
      </div>

      <QuestionFormClient
        existingTopicsBySubtes={existingTopicsBySubtes}
        isEdit={false}
      />
    </div>
  );
}
