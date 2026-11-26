import { notFound } from 'next/navigation';
import { createClient } from '@/lib/supabase/server';
import { QuestionFormClient } from '@/components/admin/QuestionFormClient';
import { FullQuestionItem } from '@/lib/types';

interface EditQuestionPageProps {
  params: Promise<{
    id: string;
  }>;
}

export default async function AdminEditQuestionPage({ params }: EditQuestionPageProps) {
  const { id } = await params;
  const supabase = await createClient();

  // 1. Ambil data soal
  const { data: question, error } = await supabase
    .from('questions')
    .select('*')
    .eq('id', id)
    .single();

  if (error || !question) {
    notFound();
  }

  // 2. Ambil daftar topik
  const { data: allQuestions } = await supabase
    .from('questions')
    .select('subtes, topik')
    .not('topik', 'is', null);

  const existingTopicsBySubtes: Record<string, string[]> = {
    TWK: [],
    TIU: [],
    TKP: [],
  };

  allQuestions?.forEach((q) => {
    if (q.topik && !existingTopicsBySubtes[q.subtes]?.includes(q.topik)) {
      existingTopicsBySubtes[q.subtes].push(q.topik);
    }
  });

  return (
    <div className="space-y-4">
      <div>
        <h1 className="text-xl sm:text-2xl font-bold text-slate-900 tracking-tight">
          Edit Soal #{question.nomor} ({question.subtes})
        </h1>
        <p className="text-xs text-slate-500 mt-0.5">
          Perbarui konten soal, opsi jawaban, atau gambar penjelas.
        </p>
      </div>

      <QuestionFormClient
        initialData={question as unknown as FullQuestionItem}
        existingTopicsBySubtes={existingTopicsBySubtes}
        isEdit={true}
      />
    </div>
  );
}
