'use client';

import React, { useState } from 'react';
import {
  ShieldAlert,
  ShieldCheck,
  Copy,
  Check,
  ExternalLink,
  RotateCcw,
  X,
  Terminal,
} from 'lucide-react';

interface AdminActivationModalProps {
  isOpen: boolean;
  onClose: () => void;
  userEmail?: string | null;
  currentRole?: string | null;
}

export const AdminActivationModal: React.FC<AdminActivationModalProps> = ({
  isOpen,
  onClose,
  userEmail,
  currentRole,
}) => {
  const [copied, setCopied] = useState(false);

  if (!isOpen) return null;

  const emailToUse = userEmail || 'email_anda@gmail.com';
  const sqlQuery = `UPDATE profiles\nSET role = 'admin'\nWHERE id = (SELECT id FROM auth.users WHERE email = '${emailToUse}');`;

  const handleCopy = () => {
    navigator.clipboard.writeText(sqlQuery);
    setCopied(true);
    setTimeout(() => setCopied(false), 2000);
  };

  const isAlreadyAdmin = currentRole === 'admin';

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center p-4 bg-black/60 backdrop-blur-xs animate-in fade-in">
      <div className="bg-white rounded-3xl max-w-lg w-full shadow-2xl overflow-hidden border border-slate-100 flex flex-col">
        {/* Header */}
        <div className="px-6 py-5 border-b border-slate-100 flex items-center justify-between bg-slate-50/80">
          <div className="flex items-center gap-2.5">
            <div className="w-8 h-8 rounded-xl bg-amber-100 text-amber-700 flex items-center justify-center">
              {isAlreadyAdmin ? (
                <ShieldCheck className="w-5 h-5 text-emerald-600" />
              ) : (
                <ShieldAlert className="w-5 h-5 text-amber-600" />
              )}
            </div>
            <div>
              <h3 className="font-bold text-slate-900 text-sm sm:text-base leading-tight">
                {isAlreadyAdmin ? 'Akses Admin Aktif' : 'Aktivasi Akses Dashboard Admin'}
              </h3>
              <p className="text-[11px] text-slate-500">
                {isAlreadyAdmin
                  ? 'Akun Anda sudah memiliki hak akses administrator penuh'
                  : 'Aktifkan hak akses untuk menambah bank soal dan paket ujian'}
              </p>
            </div>
          </div>
          <button
            onClick={onClose}
            className="text-slate-400 hover:text-slate-600 p-1.5 rounded-xl hover:bg-slate-200/60 transition-colors"
          >
            <X className="w-5 h-5" />
          </button>
        </div>

        {/* Content */}
        <div className="p-6 space-y-5 text-xs sm:text-sm text-slate-600">
          {isAlreadyAdmin ? (
            <div className="p-4 rounded-2xl bg-emerald-50 border border-emerald-200 text-emerald-800 space-y-3">
              <div className="flex items-center gap-2 font-bold text-sm">
                <ShieldCheck className="w-5 h-5 text-emerald-600 shrink-0" />
                <span>Akun Anda ({userEmail}) Adalah Admin!</span>
              </div>
              <p className="text-xs leading-relaxed">
                Anda sudah dapat mengakses seluruh menu manajemen di Dashboard Admin: Bank Soal, Tambah
                Soal, Impor Massal JSON, Evaluasi Kualitas, dan Pembuatan Paket Subtes (misal TIU 1, TIU
                2, TWK 1).
              </p>
              <div className="pt-1">
                <a
                  href="/admin"
                  className="inline-flex items-center gap-1.5 px-4 py-2 bg-indigo-600 text-white rounded-xl font-bold text-xs shadow-xs hover:bg-indigo-700 transition"
                >
                  <span>Buka Dashboard Admin Sekarang</span>
                  <ExternalLink className="w-3.5 h-3.5" />
                </a>
              </div>
            </div>
          ) : (
            <>
              <div className="p-3.5 rounded-2xl bg-amber-50 border border-amber-200 text-amber-800 flex items-start gap-2.5">
                <ShieldAlert className="w-4 h-4 text-amber-600 shrink-0 mt-0.5" />
                <div className="space-y-1 text-xs">
                  <p className="font-semibold">Kenapa Menu Admin Belum Muncul?</p>
                  <p className="text-amber-700 leading-relaxed">
                    Sesuai aturan keamanan <strong>Row Level Security (RLS)</strong> Supabase, akun baru
                    didaftarkan sebagai <code>user</code> biasa. Hanya akun dengan <code>role = 'admin'</code>{' '}
                    yang diizinkan oleh database untuk menulis soal dan membuka <code>/admin</code>.
                  </p>
                </div>
              </div>

              {/* Langkah Aktivasi */}
              <div className="space-y-3">
                <h4 className="font-bold text-slate-800 text-xs uppercase tracking-wider flex items-center gap-1.5">
                  <Terminal className="w-3.5 h-3.5 text-indigo-600" />
                  <span>3 Langkah Mengaktifkan (Hanya 1 Kali):</span>
                </h4>

                <ol className="list-decimal list-inside space-y-2 text-xs text-slate-600 pl-1">
                  <li>
                    Salin perintah SQL di bawah ini (sudah terisi otomatis dengan email akun Anda).
                  </li>
                  <li>
                    Buka proyek Supabase Anda: masuk ke menu <strong>SQL Editor</strong> &gt; klik{' '}
                    <strong>New Query</strong>.
                  </li>
                  <li>
                    Tempelkan (Paste) perintah SQL tersebut, lalu klik tombol <strong>Run</strong>.
                  </li>
                </ol>
              </div>

              {/* Code Box */}
              <div className="space-y-2">
                <div className="flex items-center justify-between text-[11px] font-semibold text-slate-500">
                  <span>Perintah SQL untuk Akun: {emailToUse}</span>
                  <button
                    onClick={handleCopy}
                    className="flex items-center gap-1 text-indigo-600 hover:text-indigo-700 font-bold"
                  >
                    {copied ? (
                      <>
                        <Check className="w-3.5 h-3.5 text-emerald-600" />
                        <span className="text-emerald-600">Tersalin!</span>
                      </>
                    ) : (
                      <>
                        <Copy className="w-3.5 h-3.5" />
                        <span>Salin Perintah</span>
                      </>
                    )}
                  </button>
                </div>
                <div className="relative bg-slate-900 text-emerald-400 p-3.5 rounded-2xl font-mono text-xs overflow-x-auto shadow-inner border border-slate-800">
                  <pre>{sqlQuery}</pre>
                </div>
              </div>
            </>
          )}

          {/* Footer Actions */}
          <div className="pt-2 flex items-center justify-end gap-2 border-t border-slate-100">
            <button
              type="button"
              onClick={onClose}
              className="px-4 py-2 text-xs font-semibold text-slate-600 hover:bg-slate-100 rounded-xl transition"
            >
              Tutup
            </button>
            {!isAlreadyAdmin && (
              <button
                type="button"
                onClick={() => {
                  window.location.href = '/admin';
                }}
                className="px-4 py-2 text-xs font-bold text-white bg-indigo-600 hover:bg-indigo-700 rounded-xl shadow-xs shadow-indigo-200 transition flex items-center gap-1.5"
              >
                <RotateCcw className="w-3.5 h-3.5" />
                <span>Saya Sudah Run SQL &gt; Masuk Admin</span>
              </button>
            )}
          </div>
        </div>
      </div>
    </div>
  );
};
