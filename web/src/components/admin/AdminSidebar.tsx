'use client';

import React, { useState } from 'react';
import Link from 'next/link';
import { usePathname, useRouter } from 'next/navigation';
import { createClient } from '@/lib/supabase/client';
import {
  BookOpen,
  LayoutDashboard,
  Layers,
  PlusCircle,
  FileUp,
  BarChart3,
  Package,
  Users,
  LogOut,
  ArrowLeft,
  Menu,
  X,
  ShieldCheck,
} from 'lucide-react';

interface AdminSidebarProps {
  adminName: string;
}

export const AdminSidebar: React.FC<AdminSidebarProps> = ({ adminName }) => {
  const pathname = usePathname();
  const router = useRouter();
  const supabase = createClient();
  const [mobileMenuOpen, setMobileMenuOpen] = useState(false);

  const handleLogout = async () => {
    await supabase.auth.signOut();
    router.push('/login');
    router.refresh();
  };

  const navItems = [
    {
      label: 'Ikhtisar Admin',
      href: '/admin',
      icon: LayoutDashboard,
      exact: true,
    },
    {
      label: 'Bank Soal',
      href: '/admin/soal',
      icon: Layers,
      exact: false,
    },
    {
      label: 'Tambah Soal',
      href: '/admin/soal/baru',
      icon: PlusCircle,
      exact: true,
    },
    {
      label: 'Impor Massal',
      href: '/admin/impor',
      icon: FileUp,
      exact: true,
    },
    {
      label: 'Kualitas Soal',
      href: '/admin/kualitas',
      icon: BarChart3,
      exact: true,
    },
    {
      label: 'Paket Try Out',
      href: '/admin/paket',
      icon: Package,
      exact: false,
    },
    {
      label: 'Kelola User',
      href: '/admin/user',
      icon: Users,
      exact: true,
    },
  ];

  const isActive = (href: string, exact: boolean) => {
    if (exact) return pathname === href;
    return pathname.startsWith(href);
  };

  return (
    <>
      {/* Mobile Top Header */}
      <header className="lg:hidden bg-slate-900 text-white border-b border-slate-800 sticky top-0 z-40 px-4 h-14 flex items-center justify-between">
        <div className="flex items-center gap-2.5">
          <button
            onClick={() => setMobileMenuOpen(!mobileMenuOpen)}
            className="p-1.5 rounded-lg bg-slate-800 text-slate-300 hover:text-white"
          >
            {mobileMenuOpen ? <X className="w-5 h-5" /> : <Menu className="w-5 h-5" />}
          </button>
          <div className="flex items-center gap-2 font-bold text-sm">
            <ShieldCheck className="w-4 h-4 text-amber-400" />
            <span>Admin SKD</span>
          </div>
        </div>

        <Link
          href="/"
          className="text-xs font-semibold px-2.5 py-1 rounded-lg bg-slate-800 text-slate-300 hover:text-white flex items-center gap-1"
        >
          <ArrowLeft className="w-3.5 h-3.5" />
          <span>Peserta</span>
        </Link>
      </header>

      {/* Backdrop for mobile */}
      {mobileMenuOpen && (
        <div
          onClick={() => setMobileMenuOpen(false)}
          className="lg:hidden fixed inset-0 z-40 bg-slate-900/60 backdrop-blur-xs"
        />
      )}

      {/* Sidebar (Desktop static & Mobile drawer) */}
      <aside
        className={`fixed top-0 bottom-0 left-0 z-50 w-64 bg-slate-900 text-slate-200 border-r border-slate-800 flex flex-col justify-between transition-transform duration-200 ease-in-out lg:translate-x-0 ${
          mobileMenuOpen ? 'translate-x-0' : '-translate-x-full'
        }`}
      >
        <div>
          {/* Logo & Brand */}
          <div className="p-5 border-b border-slate-800 flex items-center justify-between">
            <div className="flex items-center gap-2.5">
              <div className="w-9 h-9 rounded-xl bg-gradient-to-tr from-amber-500 to-indigo-600 text-white flex items-center justify-center font-bold shadow-md shadow-amber-900/30">
                <ShieldCheck className="w-5 h-5" />
              </div>
              <div>
                <div className="font-bold text-white text-sm tracking-wide">PANEL ADMIN</div>
                <div className="text-[10px] text-slate-400 uppercase tracking-widest font-medium">
                  SKD CPNS
                </div>
              </div>
            </div>

            <button
              onClick={() => setMobileMenuOpen(false)}
              className="lg:hidden p-1 rounded-lg text-slate-400 hover:text-white"
            >
              <X className="w-5 h-5" />
            </button>
          </div>

          {/* Navigation Links */}
          <nav className="p-3 space-y-1">
            {navItems.map((item) => {
              const active = isActive(item.href, item.exact);
              const Icon = item.icon;

              return (
                <Link
                  key={item.href}
                  href={item.href}
                  onClick={() => setMobileMenuOpen(false)}
                  className={`flex items-center gap-3 px-3.5 py-2.5 rounded-xl text-xs font-semibold transition ${
                    active
                      ? 'bg-indigo-600 text-white shadow-md shadow-indigo-900/40'
                      : 'text-slate-400 hover:text-slate-200 hover:bg-slate-800/70'
                  }`}
                >
                  <Icon className={`w-4 h-4 ${active ? 'text-white' : 'text-slate-400'}`} />
                  <span>{item.label}</span>
                </Link>
              );
            })}
          </nav>
        </div>

        {/* User Info & Switch Mode Footer */}
        <div className="p-4 border-t border-slate-800 space-y-3 bg-slate-950/40">
          <Link
            href="/"
            className="w-full py-2 px-3 rounded-xl bg-slate-800 hover:bg-slate-700 text-slate-300 hover:text-white text-xs font-semibold flex items-center justify-center gap-2 transition"
          >
            <ArrowLeft className="w-3.5 h-3.5" />
            <span>Kembali ke Mode Peserta</span>
          </Link>

          <div className="flex items-center justify-between pt-1">
            <div className="flex items-center gap-2 min-w-0">
              <div className="w-7 h-7 rounded-lg bg-amber-500/20 text-amber-300 border border-amber-500/30 flex items-center justify-center text-xs font-bold shrink-0">
                A
              </div>
              <div className="min-w-0">
                <p className="text-xs font-semibold text-slate-200 truncate">{adminName}</p>
                <p className="text-[10px] text-amber-400 font-medium">Administrator</p>
              </div>
            </div>

            <button
              onClick={handleLogout}
              title="Keluar"
              className="p-1.5 rounded-lg text-slate-400 hover:text-rose-400 hover:bg-slate-800 transition"
            >
              <LogOut className="w-4 h-4" />
            </button>
          </div>
        </div>
      </aside>
    </>
  );
};
