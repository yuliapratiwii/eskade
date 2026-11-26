import { redirect } from 'next/navigation';
import { createClient } from '@/lib/supabase/server';
import { UserManagementClient } from '@/components/admin/UserManagementClient';
import { Profile } from '@/lib/types';

export default async function AdminUserManagementPage() {
  const supabase = await createClient();

  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) {
    redirect('/login');
  }

  // Ambil semua daftar profiles
  const { data: profiles, error } = await supabase
    .from('profiles')
    .select('id, nama, role, target_ujian, created_at')
    .order('created_at', { ascending: false });

  if (error) {
    console.error('Error fetching profiles:', error);
  }

  return (
    <UserManagementClient
      currentAdminId={user.id}
      initialProfiles={(profiles as Profile[]) || []}
    />
  );
}
