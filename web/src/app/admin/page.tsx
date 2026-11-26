import Link from 'next/link';
import { createClient } from '@/lib/supabase/server';
import {
  Layers,
  PlusCircle,
  FileUp,
  BarChart3,
  Package,
  Users,
  CheckCircle2,
  FileEdit,
  ArrowRight,
  ShieldCheck,
  TrendingUp,
} from 'lucide-react';

export default async function AdminDashboardPage() {
  const supabase = await createClient();

  // Fetch basic stats
  const [
    publishedRes,
    draftRes,
    twkRes,
    tiuRes,
    tkpRes,
    usersRes,
    examsRes,
  ] = await Promise.all([
    supabase.from('questions').select('*', { count: 'exact', head: true }).eq('status', 'published'),
    supabase.from('questions').select('*', { count: 'exact', head: true }).eq('status', 'draft'),
    supabase.from('questions').select('*', { count: 'exact', head: true }).eq('subtes', 'TWK'),
    supabase.from('questions').select('*', { count: 'exact', head: true }).eq('subtes', 'TIU'),
    supabase.from('questions').select('*', { count: 'exact', head: true }).eq('subtes', 'TKP'),
    supabase.from('profiles').select('*', { count: 'exact', head: true }),
    supabase.from('exams').select('*', { count: 'exact', head: true }).eq('aktif', true),
  ]);

  const totalPublished = publishedRes.count || 0;
  const totalDraft = draftRes.count || 0;
  const totalQuestions = totalPublished + totalDraft;
  const totalTWK = twkRes.count || 0;
  const totalTIU = tiuRes.count || 0;
  const totalTKP = tkpRes.count || 0;
  const totalUsers = usersRes.count || 0;
  const totalExams = examsRes.count || 0;

  return (
    <div className="space-y-6">
      {/* Top Banner */}
      <div className="bg-gradient-to-r from-slate-900 via-indigo-950 to-slate-900 text-white rounded-3xl p-6 sm:p-8 shadow-xl shadow-slate-300/40 border border-slate-800">
        <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-4">
          <div>
            <div className="inline-flex items-center gap-1.5 px-3 py-1 rounded-full bg-amber-500/20 text-amber-300 text-xs font-semibold border border-amber-500/30 mb-3">
              <ShieldCheck className="w-3.5 h-3.5" />
              <span>Pusat Kendali Bank Soal</span>
            </div>
            <h1 className="text-xl sm:text-2xl font-bold tracking-tight">
              Dashboard Administrator
            </h1>
            <p className="text-slate-400 text-xs sm:text-sm mt-1 max-w-xl leading-relaxed">
              Kelola dan perbarui bank soal SKD CPNS, tinjau kualitas jawaban peserta, buat paket try out, dan kelola hak akses pengguna.
            </p>
          </div>

          <div className="flex items-center gap-2 self-start sm:self-center">
            <Link
              href="/admin/soal/baru"
              className="px-4 py-2.5 rounded-2xl bg-indigo-600 hover:bg-indigo-500 text-white text-xs font-bold shadow-md shadow-indigo-900/40 flex items-center gap-2 transition"
            >
              <PlusCircle className="w-4 h-4" />
              <span>Tambah Soal</span>
            </Link>
          </div>
        </div>
      </div>

      {/* Grid Statistik Utama */}
      <div className="grid grid-cols-2 lg:grid-cols-4 gap-3 sm:gap-4">
        {/* Total Soal */}
        <div className="bg-white p-5 rounded-2xl border border-slate-200/80 shadow-xs">
          <div className="flex items-center justify-between text-slate-500 mb-2">
            <span className="text-xs font-semibold uppercase tracking-wider">Total Soal</span>
            <Layers className="w-4 h-4 text-indigo-600" />
          </div>
          <div className="text-2xl sm:text-3xl font-black text-slate-900">{totalQuestions}</div>
          <div className="flex items-center gap-2 text-[11px] text-slate-500 mt-1">
            <span className="text-emerald-600 font-semibold">{totalPublished} Terbit</span>
            <span>•</span>
            <span className="text-amber-600 font-semibold">{totalDraft} Draft</span>
          </div>
        </div>

        {/* Distribusi Subtes */}
        <div className="bg-white p-5 rounded-2xl border border-slate-200/80 shadow-xs">
          <div className="flex items-center justify-between text-slate-500 mb-2">
            <span className="text-xs font-semibold uppercase tracking-wider">Subtes</span>
            <TrendingUp className="w-4 h-4 text-emerald-600" />
          </div>
          <div className="text-sm font-bold text-slate-800 space-y-1">
            <div className="flex justify-between">
              <span className="text-slate-500 text-xs">TWK:</span>
              <span>{totalTWK}</span>
            </div>
            <div className="flex justify-between">
              <span className="text-slate-500 text-xs">TIU:</span>
              <span>{totalTIU}</span>
            </div>
            <div className="flex justify-between">
              <span className="text-slate-500 text-xs">TKP:</span>
              <span className={totalTKP === 0 ? 'text-slate-400' : ''}>{totalTKP}</span>
            </div>
          </div>
        </div>

        {/* Paket Ujian */}
        <div className="bg-white p-5 rounded-2xl border border-slate-200/80 shadow-xs">
          <div className="flex items-center justify-between text-slate-500 mb-2">
            <span className="text-xs font-semibold uppercase tracking-wider">Paket Ujian</span>
            <Package className="w-4 h-4 text-amber-600" />
          </div>
          <div className="text-2xl sm:text-3xl font-black text-slate-900">{totalExams}</div>
          <p className="text-[11px] text-slate-500 mt-1">Paket aktif di dashboard</p>
        </div>

        {/* Total Pengguna */}
        <div className="bg-white p-5 rounded-2xl border border-slate-200/80 shadow-xs">
          <div className="flex items-center justify-between text-slate-500 mb-2">
            <span className="text-xs font-semibold uppercase tracking-wider">Pengguna</span>
            <Users className="w-4 h-4 text-blue-600" />
          </div>
          <div className="text-2xl sm:text-3xl font-black text-slate-900">{totalUsers}</div>
          <p className="text-[11px] text-slate-500 mt-1">Akun terdaftar di sistem</p>
        </div>
      </div>

      {/* Menu Aksi Cepat */}
      <div>
        <h2 className="text-xs font-bold text-slate-600 uppercase tracking-wider mb-3">
          Aksi & Navigasi Cepat
        </h2>

        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-3">
          <Link
            href="/admin/soal"
            className="group bg-white p-5 rounded-2xl border border-slate-200/80 hover:border-indigo-500 hover:shadow-md transition flex items-start gap-4"
          >
            <div className="w-10 h-10 rounded-xl bg-indigo-50 text-indigo-600 flex items-center justify-center shrink-0">
              <Layers className="w-5 h-5" />
            </div>
            <div className="flex-1 min-w-0">
              <h3 className="font-bold text-slate-900 text-sm group-hover:text-indigo-600 transition flex items-center justify-between">
                <span>Daftar Bank Soal</span>
                <ArrowRight className="w-4 h-4 opacity-0 group-hover:opacity-100 transition" />
              </h3>
              <p className="text-xs text-slate-500 mt-1">
                Filter subtes, status, topik, dan aksi massal terbitkan/hapus.
              </p>
            </div>
          </Link>

          <Link
            href="/admin/impor"
            className="group bg-white p-5 rounded-2xl border border-slate-200/80 hover:border-indigo-500 hover:shadow-md transition flex items-start gap-4"
          >
            <div className="w-10 h-10 rounded-xl bg-emerald-50 text-emerald-600 flex items-center justify-center shrink-0">
              <FileUp className="w-5 h-5" />
            </div>
            <div className="flex-1 min-w-0">
              <h3 className="font-bold text-slate-900 text-sm group-hover:text-indigo-600 transition flex items-center justify-between">
                <span>Impor Massal JSON</span>
                <ArrowRight className="w-4 h-4 opacity-0 group-hover:opacity-100 transition" />
              </h3>
              <p className="text-xs text-slate-500 mt-1">
                Unggah berkas JSON, pratinjau validasi, dan deteksi duplikasi.
              </p>
            </div>
          </Link>

          <Link
            href="/admin/kualitas"
            className="group bg-white p-5 rounded-2xl border border-slate-200/80 hover:border-indigo-500 hover:shadow-md transition flex items-start gap-4"
          >
            <div className="w-10 h-10 rounded-xl bg-amber-50 text-amber-600 flex items-center justify-center shrink-0">
              <BarChart3 className="w-5 h-5" />
            </div>
            <div className="flex-1 min-w-0">
              <h3 className="font-bold text-slate-900 text-sm group-hover:text-indigo-600 transition flex items-center justify-between">
                <span>Kualitas & Evaluasi</span>
                <ArrowRight className="w-4 h-4 opacity-0 group-hover:opacity-100 transition" />
              </h3>
              <p className="text-xs text-slate-500 mt-1">
                Tinjau tingkat kesulitan dan tandai soal anomali untuk diperbaiki.
              </p>
            </div>
          </Link>

          <Link
            href="/admin/paket"
            className="group bg-white p-5 rounded-2xl border border-slate-200/80 hover:border-indigo-500 hover:shadow-md transition flex items-start gap-4"
          >
            <div className="w-10 h-10 rounded-xl bg-purple-50 text-purple-600 flex items-center justify-center shrink-0">
              <Package className="w-5 h-5" />
            </div>
            <div className="flex-1 min-w-0">
              <h3 className="font-bold text-slate-900 text-sm group-hover:text-indigo-600 transition flex items-center justify-between">
                <span>Paket Try Out</span>
                <ArrowRight className="w-4 h-4 opacity-0 group-hover:opacity-100 transition" />
              </h3>
              <p className="text-xs text-slate-500 mt-1">
                Rangkai soal menjadi paket simulasi tetap dengan urutan khusus.
              </p>
            </div>
          </Link>

          <Link
            href="/admin/user"
            className="group bg-white p-5 rounded-2xl border border-slate-200/80 hover:border-indigo-500 hover:shadow-md transition flex items-start gap-4"
          >
            <div className="w-10 h-10 rounded-xl bg-blue-50 text-blue-600 flex items-center justify-center shrink-0">
              <Users className="w-5 h-5" />
            </div>
            <div className="flex-1 min-w-0">
              <h3 className="font-bold text-slate-900 text-sm group-hover:text-indigo-600 transition flex items-center justify-between">
                <span>Kelola User</span>
                <ArrowRight className="w-4 h-4 opacity-0 group-hover:opacity-100 transition" />
              </h3>
              <p className="text-xs text-slate-500 mt-1">
                Atur peran hak akses pengguna (user / admin).
              </p>
            </div>
          </Link>
        </div>
      </div>
    </div>
  );
}
