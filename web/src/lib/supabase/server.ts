import { createServerClient } from '@supabase/ssr';
import { cookies, headers } from 'next/headers';
import type { SupabaseClient } from '@supabase/supabase-js';

export async function createClient() {
  const cookieStore = await cookies();

  return createServerClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY!,
    {
      cookies: {
        getAll() {
          return cookieStore.getAll();
        },
        setAll(cookiesToSet) {
          try {
            cookiesToSet.forEach(({ name, value, options }) =>
              cookieStore.set(name, value, options)
            );
          } catch {
            // The `setAll` method was called from a Server Component.
            // This can be ignored if you have middleware refreshing user sessions.
          }
        },
      },
    }
  );
}

/**
 * Returns the authenticated user, reusing the verified identity forwarded by
 * middleware when available to avoid a redundant Supabase Auth network call.
 */
export async function getAuthUser(supabase: SupabaseClient): Promise<{ id: string; email?: string } | null> {
  const headerStore = await headers();
  const userId = headerStore.get('x-auth-user-id');
  if (userId) {
    return {
      id: userId,
      email: headerStore.get('x-auth-user-email') || undefined,
    };
  }
  const {
    data: { user },
  } = await supabase.auth.getUser();
  return user ? { id: user.id, email: user.email } : null;
}
