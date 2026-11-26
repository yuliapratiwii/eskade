'use client';

import React, { useState, useEffect } from 'react';
import Link from 'next/link';
import { usePathname, useRouter, useSearchParams } from 'next/navigation';
import { createClient } from '@/lib/supabase/client';
import { AdminActivationModal } from './AdminActivationModal';
import {
  BookOpen,
  LogOut,
  User,
  ShieldCheck,
  ShieldAlert,
  TrendingUp,
} from 'lucide-react';

interface NavbarProps {
  nama?: string | null;
  targetUjian?: string | null;
  role?: string | null;
  userEmail?: string | null;
}

export const Navbar: React.FC<NavbarProps> = ({ nama, targetUjian, role, userEmail }) => {
  const router = useRouter();
  const pathname = usePathname();
  const searchParams = useSearchParams();
  const supabase = createClient();
  const [showAdminModal, setShowAdminModal] = useState(false);

  useEffect(() => {
    if (searchParams.get('admin_guide') === '1') {
      setShowAdminModal(true);
    }
  }, [searchParams]);

  const handleLogout = async () => {
    await supabase.auth.signOut();
    router.push('/login');
    router.refresh();
  };

  // Calculate days remaining until target_ujian if set
  let daysRemaining: number | null = null;
  if (targetUjian) {
    const targetDate = new Date(targetUjian);
    const today = new Date();
    const diffTime = targetDate.getTime() - today.getTime();
    daysRemaining = Math.ceil(diffTime / (1000 * 60 * 60 * 24));
  }

  const isProgresActive = pathname === '/progres';

  return (
    <header className="bg-white/95 backdrop-blur-md border-b border-slate-200/80 sticky top-0 z-40 shadow-xs">
      <div className="max-w-5xl mx-auto px-4 h-16 flex items-center justify-between">
        {/* Brand & Left Navigation */}
        <div className="flex items-center gap-6">
          <Link href="/" className="flex items-center gap-2.5 group">
            <div className="w-9 h-9 rounded-xl bg-indigo-600 text-white flex items-center justify-center shadow-md shadow-indigo-100 transition group-hover:scale-105">
              <BookOpen className="w-5 h-5 shrink-0" />
            </div>
            <div>
              <div className="font-bold text-slate-900 text-sm sm:text-base leading-tight tracking-tight">
                SKD CPNS
              </div>
              <div className="text-[10px] text-slate-500 font-medium">Try Out Mandiri</div>
            </div>
          </Link>

          {/* Nav Items */}
          <nav className="hidden sm:flex items-center gap-1 pl-4 border-l border-slate-200">
            <Link
              href="/"
              className={`px-3 py-1.5 rounded-xl text-xs font-semibold transition ${
                pathname === '/'
                  ? 'bg-indigo-50 text-indigo-700'
                  : 'text-slate-600 hover:text-slate-900 hover:bg-slate-100'
              }`}
            >
              Beranda
            </Link>
            <Link
              href="/progres"
              className={`px-3 py-1.5 rounded-xl text-xs font-semibold flex items-center gap-1.5 transition ${
                isProgresActive
                  ? 'bg-indigo-50 text-indigo-700'
                  : 'text-slate-600 hover:text-slate-900 hover:bg-slate-100'
              }`}
            >
              <TrendingUp className="w-3.5 h-3.5" />
              <span>Progres & Capaian</span>
            </Link>
          </nav>
        </div>

        {/* User Info & Actions */}
        <div className="flex items-center gap-2 sm:gap-3">
          {/* Mobile Progres Shortcut */}
          <Link
            href="/progres"
            className={`sm:hidden p-2 rounded-xl text-xs font-semibold flex items-center gap-1 transition ${
              isProgresActive ? 'bg-indigo-50 text-indigo-700' : 'text-slate-600 hover:bg-slate-100'
            }`}
            title="Progres & Capaian"
          >
            <TrendingUp className="w-4 h-4 shrink-0" />
          </Link>

          {role === 'admin' ? (
            <Link
              href="/admin"
              className="inline-flex items-center gap-1.5 px-2.5 sm:px-3 py-1.5 rounded-xl bg-amber-50 hover:bg-amber-100 text-amber-800 border border-amber-200 text-xs font-bold transition shadow-xs"
            >
              <ShieldCheck className="w-4 h-4 text-amber-600 shrink-0" />
              <span className="hidden sm:inline">Panel Admin</span>
              <span className="sm:hidden">Admin</span>
            </Link>
          ) : (
            <button
              onClick={() => setShowAdminModal(true)}
              className="inline-flex items-center gap-1.5 px-2.5 sm:px-3 py-1.5 rounded-xl bg-slate-100 hover:bg-amber-50 hover:text-amber-800 hover:border-amber-200 text-slate-600 border border-slate-200 text-xs font-semibold transition"
              title="Aktivasi Akun Admin"
            >
              <ShieldAlert className="w-3.5 h-3.5 text-slate-400 group-hover:text-amber-600 shrink-0" />
              <span className="hidden sm:inline">Akses Admin</span>
              <span className="sm:hidden">Admin</span>
            </button>
          )}

          {daysRemaining !== null && daysRemaining > 0 && (
            <div className="hidden md:inline-flex items-center px-2.5 py-1 rounded-full text-xs font-medium bg-indigo-50 text-indigo-800 border border-indigo-200">
              H-{daysRemaining} Ujian
            </div>
          )}

          <div className="flex items-center gap-2 pl-2 border-l border-slate-200">
            <div className="w-8 h-8 rounded-full bg-slate-100 border border-slate-200 flex items-center justify-center text-slate-700 text-xs font-bold shrink-0">
              {nama ? nama.charAt(0).toUpperCase() : <User className="w-4 h-4" />}
            </div>
            <span className="hidden lg:inline-block text-xs font-medium text-slate-700 max-w-[120px] truncate">
              {nama || 'Peserta'}
            </span>
          </div>

          <button
            onClick={handleLogout}
            title="Keluar dari akun"
            className="p-2 rounded-xl text-slate-500 hover:text-rose-600 hover:bg-rose-50 transition"
          >
            <LogOut className="w-4 h-4 shrink-0" />
          </button>
        </div>
      </div>

      <AdminActivationModal
        isOpen={showAdminModal}
        onClose={() => setShowAdminModal(false)}
        userEmail={userEmail}
        currentRole={role}
      />
    </header>
  );
};
