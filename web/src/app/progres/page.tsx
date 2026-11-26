import { redirect } from 'next/navigation';
import { createClient } from '@/lib/supabase/server';
import { getUserProgressData } from '@/lib/progress-service';
import { ProgressClient } from '@/components/progress/ProgressClient';

export const metadata = {
  title: 'Progres & Capaian Belajar | SKD CPNS',
  description: 'Analisis ketepatan, kecepatan, dan grafik perkembangan skor try out SKD CPNS.',
};

export default async function ProgresPage() {
  const supabase = await createClient();
  const { data: { user } } = await supabase.auth.getUser();

  if (!user) {
    redirect('/login');
  }

  const progressData = await getUserProgressData(supabase, user.id);

  return <ProgressClient initialData={progressData} />;
}
