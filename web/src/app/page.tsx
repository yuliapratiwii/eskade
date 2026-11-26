import { redirect } from 'next/navigation';
import { createClient } from '@/lib/supabase/server';
import { Navbar } from '@/components/Navbar';
import { DashboardClient, ActiveExamInfo } from '@/components/DashboardClient';

export default async function HomePage() {
  const supabase = await createClient();

  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) {
    redirect('/login');
  }

  // Fetch user profile
  const { data: profile } = await supabase
    .from('profiles')
    .select('nama, target_ujian, role')
    .eq('id', user.id)
    .single();

  // Fetch user attempts history
  const { data: attempts } = await supabase
    .from('attempts')
    .select('id, mode, subtes, mulai, selesai, skor, durasi_detik')
    .eq('user_id', user.id)
    .order('mulai', { ascending: false });

  // Fetch active exams (Paket Try Out & Subtes) for dashboard
  const { data: activeExams } = await supabase
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
    .eq('aktif', true)
    .order('judul', { ascending: true });

  const formattedActiveExams: ActiveExamInfo[] = (activeExams || []).map((e: any) => {
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

  // Natural sort urutan paket: Kelompokkan tipe/subtes (Try Out -> TWK -> TIU -> TKP) dan urutkan nomor secara natural
  formattedActiveExams.sort((a, b) => {
    const groupOrder: Record<string, number> = { tryout: 1, TWK: 2, TIU: 3, TKP: 4 };
    const groupA = a.tipe === 'tryout' ? 'tryout' : (a.subtes || '');
    const groupB = b.tipe === 'tryout' ? 'tryout' : (b.subtes || '');
    const diff = (groupOrder[groupA] || 99) - (groupOrder[groupB] || 99);
    if (diff !== 0) return diff;
    return a.judul.localeCompare(b.judul, 'id', { numeric: true, sensitivity: 'base' });
  });

  const displayName = profile?.nama || user.email?.split('@')[0] || 'Peserta';

  return (
    <div className="min-h-screen flex flex-col bg-slate-50">
      <Navbar
        nama={displayName}
        targetUjian={profile?.target_ujian}
        role={profile?.role}
        userEmail={user.email}
      />
      <main className="flex-1 pb-12">
        <DashboardClient
          userId={user.id}
          nama={displayName}
          history={attempts || []}
          activeExams={formattedActiveExams}
          userRole={profile?.role}
          userEmail={user.email}
        />
      </main>
    </div>
  );
}
