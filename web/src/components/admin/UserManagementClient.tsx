'use client';

import React, { useState } from 'react';
import { createClient } from '@/lib/supabase/client';
import { Profile } from '@/lib/types';
import {
  Users,
  ShieldCheck,
  User,
  Search,
  Calendar,
  AlertTriangle,
  CheckCircle2,
  Loader2,
  Copy,
  Check,
} from 'lucide-react';

interface UserManagementClientProps {
  currentAdminId: string;
  initialProfiles: Profile[];
}

export const UserManagementClient: React.FC<UserManagementClientProps> = ({
  currentAdminId,
  initialProfiles,
}) => {
  const supabase = createClient();

  const [profiles, setProfiles] = useState<Profile[]>(initialProfiles);
  const [search, setSearch] = useState('');
  const [loadingId, setLoadingId] = useState<string | null>(null);
  const [copiedId, setCopiedId] = useState<string | null>(null);
  const [confirmUser, setConfirmUser] = useState<Profile | null>(null);
  const [errorMsg, setErrorMsg] = useState<string | null>(null);
  const [successMsg, setSuccessMsg] = useState<string | null>(null);

  // Copy UUID to clipboard
  const handleCopyId = (id: string) => {
    navigator.clipboard.writeText(id);
    setCopiedId(id);
    setTimeout(() => setCopiedId(null), 2000);
  };

  const adminCount = profiles.filter((p) => p.role === 'admin').length;

  const handleToggleRole = async (targetUser: Profile) => {
    setErrorMsg(null);
    setSuccessMsg(null);

    const isTargetAdmin = targetUser.role === 'admin';
    const newRole = isTargetAdmin ? 'user' : 'admin';

    // Cegah admin menurunkan dirinya jika dia admin terakhir
    if (isTargetAdmin && adminCount <= 1) {
      setErrorMsg(
        'Tindakan ditolak: Akun ini adalah satu-satunya administrator yang tersisa. Sistem mewajibkan minimal satu akun admin aktif!'
      );
      setConfirmUser(null);
      return;
    }

    setLoadingId(targetUser.id);
    setConfirmUser(null);

    try {
      const { error } = await supabase
        .from('profiles')
        .update({ role: newRole })
        .eq('id', targetUser.id);

      if (error) throw error;

      setProfiles((prev) =>
        prev.map((p) => (p.id === targetUser.id ? { ...p, role: newRole } : p))
      );

      setSuccessMsg(
        `Peran untuk "${targetUser.nama || 'Pengguna'}" berhasil diubah menjadi ${newRole.toUpperCase()}.`
      );
    } catch (err: unknown) {
      setErrorMsg(
        'Gagal memperbarui role: ' + (err instanceof Error ? err.message : String(err))
      );
    } finally {
      setLoadingId(null);
    }
  };

  const filteredProfiles = profiles.filter((p) => {
    if (!search.trim()) return true;
    const q = search.toLowerCase();
    const matchName = p.nama?.toLowerCase().includes(q);
    const matchId = p.id.toLowerCase().includes(q);
    return matchName || matchId;
  });

  return (
    <div className="space-y-6">
      {/* Header */}
      <div>
        <h1 className="text-xl sm:text-2xl font-bold text-slate-900 tracking-tight">
          Kelola Hak Akses Pengguna
        </h1>
        <p className="text-xs text-slate-500 mt-0.5">
          Daftar profil akun terdaftar di sistem. Anda dapat mempromosikan atau mendemosikan peran pengguna (user &harr; admin).
        </p>
      </div>

      {errorMsg && (
        <div className="p-3.5 rounded-xl bg-rose-50 border border-rose-200 text-rose-700 text-xs flex items-start gap-2 animate-in fade-in">
          <AlertTriangle className="w-4 h-4 shrink-0 mt-0.5 text-rose-600" />
          <span>{errorMsg}</span>
        </div>
      )}

      {successMsg && (
        <div className="p-3.5 rounded-xl bg-emerald-50 border border-emerald-200 text-emerald-800 text-xs flex items-start gap-2 animate-in fade-in">
          <CheckCircle2 className="w-4 h-4 shrink-0 mt-0.5 text-emerald-600" />
          <span>{successMsg}</span>
        </div>
      )}

      {/* Search & Info Bar */}
      <div className="bg-white rounded-2xl border border-slate-200 p-4 shadow-xs flex flex-col sm:flex-row sm:items-center justify-between gap-3">
        <div className="relative flex-1 max-w-md">
          <Search className="w-4 h-4 text-slate-400 absolute left-3.5 top-3" />
          <input
            type="text"
            value={search}
            onChange={(e) => setSearch(e.target.value)}
            placeholder="Cari berdasarkan nama atau User ID..."
            className="w-full pl-10 pr-4 py-2 rounded-xl border border-slate-200 text-xs sm:text-sm focus:outline-none focus:border-indigo-600"
          />
        </div>

        <div className="flex items-center gap-2 text-xs font-semibold text-slate-500">
          <span className="px-2.5 py-1 rounded-lg bg-amber-50 text-amber-800 border border-amber-200">
            {adminCount} Admin Aktif
          </span>
          <span className="px-2.5 py-1 rounded-lg bg-slate-100 text-slate-700">
            Total {profiles.length} Akun
          </span>
        </div>
      </div>

      {/* Tabel Pengguna */}
      <div className="bg-white rounded-2xl border border-slate-200 overflow-hidden shadow-xs">
        <div className="overflow-x-auto">
          <table className="min-w-full divide-y divide-slate-100 text-xs">
            <thead className="bg-slate-50 text-slate-500 font-bold uppercase tracking-wider text-[10px]">
              <tr>
                <th className="py-3 px-3 text-left">Nama Pengguna</th>
                <th className="py-3 px-3 text-left w-48">User ID (UUID)</th>
                <th className="py-3 px-3 text-center w-28">Peran / Role</th>
                <th className="py-3 px-3 text-left w-36">Target Ujian</th>
                <th className="py-3 px-3 text-left w-36">Tanggal Daftar</th>
                <th className="py-3 px-3 text-right w-40">Ubah Peran</th>
              </tr>
            </thead>
            <tbody className="divide-y divide-slate-100 text-slate-700">
              {filteredProfiles.length === 0 ? (
                <tr>
                  <td colSpan={6} className="py-12 text-center text-slate-400">
                    Tidak ditemukan akun yang cocok.
                  </td>
                </tr>
              ) : (
                filteredProfiles.map((p) => {
                  const isCurrentAdmin = p.id === currentAdminId;
                  const isAdmin = p.role === 'admin';
                  const isSelfLastAdmin = isCurrentAdmin && isAdmin && adminCount <= 1;
                  const isLoading = loadingId === p.id;

                  const dateFormatted = new Date(p.created_at).toLocaleDateString('id-ID', {
                    day: 'numeric',
                    month: 'short',
                    year: 'numeric',
                  });

                  return (
                    <tr key={p.id} className="hover:bg-slate-50/70 transition">
                      <td className="py-3 px-3 font-semibold text-slate-900">
                        <div className="flex items-center gap-2">
                          <div className="w-7 h-7 rounded-full bg-slate-100 border border-slate-200 flex items-center justify-center text-slate-600 font-bold text-xs shrink-0">
                            {p.nama ? p.nama.charAt(0).toUpperCase() : 'U'}
                          </div>
                          <div>
                            <span>{p.nama || 'Peserta Mandiri'}</span>
                            {isCurrentAdmin && (
                              <span className="ml-1.5 text-[10px] text-indigo-600 font-bold">
                                (Anda)
                              </span>
                            )}
                          </div>
                        </div>
                      </td>

                      <td className="py-3 px-3 font-mono text-[11px] text-slate-500">
                        <div className="flex items-center gap-1.5">
                          <span className="truncate max-w-[130px]">{p.id}</span>
                          <button
                            onClick={() => handleCopyId(p.id)}
                            className="p-1 rounded-md text-slate-400 hover:text-slate-700 transition"
                            title="Salin ID Lengkap"
                          >
                            {copiedId === p.id ? (
                              <Check className="w-3.5 h-3.5 text-emerald-600" />
                            ) : (
                              <Copy className="w-3.5 h-3.5" />
                            )}
                          </button>
                        </div>
                      </td>

                      <td className="py-3 px-3 text-center">
                        <span
                          className={`inline-flex items-center gap-1 px-2.5 py-0.5 rounded-full font-bold text-[10px] ${
                            isAdmin
                              ? 'bg-amber-100 text-amber-800 border border-amber-300'
                              : 'bg-slate-100 text-slate-600'
                          }`}
                        >
                          {isAdmin ? (
                            <>
                              <ShieldCheck className="w-3 h-3 text-amber-600" />
                              <span>ADMIN</span>
                            </>
                          ) : (
                            <>
                              <User className="w-3 h-3 text-slate-400" />
                              <span>USER</span>
                            </>
                          )}
                        </span>
                      </td>

                      <td className="py-3 px-3 text-slate-500">
                        {p.target_ujian ? (
                          <span className="inline-flex items-center gap-1">
                            <Calendar className="w-3 h-3 text-slate-400" />
                            <span>{p.target_ujian}</span>
                          </span>
                        ) : (
                          '-'
                        )}
                      </td>

                      <td className="py-3 px-3 text-slate-500">{dateFormatted}</td>

                      <td className="py-3 px-3 text-right">
                        <button
                          onClick={() => setConfirmUser(p)}
                          disabled={isLoading || isSelfLastAdmin}
                          className={`px-3 py-1.5 rounded-xl font-bold text-xs transition disabled:opacity-40 disabled:cursor-not-allowed ${
                            isAdmin
                              ? 'bg-rose-50 text-rose-700 border border-rose-200 hover:bg-rose-100'
                              : 'bg-indigo-50 text-indigo-700 border border-indigo-200 hover:bg-indigo-100'
                          }`}
                          title={
                            isSelfLastAdmin
                              ? 'Tidak bisa menurunkan admin terakhir'
                              : undefined
                          }
                        >
                          {isLoading ? (
                            <Loader2 className="w-3.5 h-3.5 animate-spin mx-auto" />
                          ) : isAdmin ? (
                            'Jadikan User'
                          ) : (
                            'Jadikan Admin'
                          )}
                        </button>
                      </td>
                    </tr>
                  );
                })
              )}
            </tbody>
          </table>
        </div>
      </div>

      {/* Modal Konfirmasi Ubah Role */}
      {confirmUser && (
        <div className="fixed inset-0 z-50 flex items-center justify-center p-4 bg-slate-900/50 backdrop-blur-xs animate-in fade-in">
          <div className="bg-white w-full max-w-sm rounded-2xl p-6 shadow-2xl border border-slate-100 text-center">
            <div className="w-12 h-12 rounded-2xl bg-amber-50 text-amber-600 flex items-center justify-center mx-auto mb-4 border border-amber-200">
              <ShieldCheck className="w-6 h-6" />
            </div>

            <h3 className="text-base font-bold text-slate-900">Konfirmasi Ubah Hak Akses</h3>
            <p className="text-xs text-slate-500 mt-2 leading-relaxed">
              Ubah peran untuk <strong>{confirmUser.nama || 'Pengguna'}</strong> menjadi{' '}
              <strong className="text-slate-800">
                {confirmUser.role === 'admin' ? 'USER BIASA' : 'ADMINISTRATOR'}
              </strong>
              ?
            </p>

            <div className="grid grid-cols-2 gap-2.5 mt-6">
              <button
                type="button"
                onClick={() => setConfirmUser(null)}
                className="py-2.5 px-3 rounded-xl border border-slate-200 text-xs font-semibold text-slate-700 hover:bg-slate-50 transition"
              >
                Batal
              </button>
              <button
                type="button"
                onClick={() => handleToggleRole(confirmUser)}
                className="py-2.5 px-3 rounded-xl bg-indigo-600 hover:bg-indigo-700 text-white text-xs font-bold shadow-md shadow-indigo-100 transition"
              >
                Konfirmasi
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
};
