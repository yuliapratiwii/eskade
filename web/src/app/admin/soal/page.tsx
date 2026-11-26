import { createClient } from '@/lib/supabase/server';
import { QuestionListClient } from '@/components/admin/QuestionListClient';

export default async function AdminQuestionsPage() {
  const supabase = await createClient();

  // Ambil daftar unik topik & sumber untuk dropdown filter
  const [topicsRes, sourcesRes] = await Promise.all([
    supabase.from('questions').select('topik').not('topik', 'is', null),
    supabase.from('questions').select('sumber').not('sumber', 'is', null),
  ]);

  const uniqueTopics = Array.from(
    new Set((topicsRes.data || []).map((d) => d.topik).filter(Boolean))
  ).sort() as string[];

  const uniqueSources = Array.from(
    new Set((sourcesRes.data || []).map((d) => d.sumber).filter(Boolean))
  ).sort() as string[];

  return (
    <QuestionListClient
      initialTopics={uniqueTopics}
      initialSources={uniqueSources}
    />
  );
}
