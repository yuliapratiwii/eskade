'use client';

import React, { useState } from 'react';
import Link from 'next/link';
import { useRouter } from 'next/navigation';
import { createClient } from '@/lib/supabase/client';
import { createAttempt, createExamAttemptFromPackage } from '@/lib/exam-service';
import { SubtesType, ExamMode } from '@/lib/types';
import { TopicPracticeModal } from './TopicPracticeModal';
import { HistoryChart } from './HistoryChart';
import { AdminActivationModal } from './AdminActivationModal';
import {
  Trophy,
  Flame,
  Clock,
  RotateCcw,
  BookOpen,
  ChevronRight,
  Sparkles,
  AlertCircle,
  FileQuestion,
  Loader2,
  Calendar,
  Package,
  TrendingUp,
  BrainCircuit,
  Compass,
  Layers,
  Plus,
  ShieldAlert,
  ShieldCheck,
  CheckCircle2,
  Trash2,
} from 'lucide-react';

interface AttemptRecord {
  id: string;
  mode: string;
  subtes: string | null;
  mulai: string;
  selesai: string | null;
  skor: number | null;
  durasi_detik: number | null;
  exam_id?: string | null;
  exams?: { judul?: string | null } | { judul?: string | null }[] | null;
}

export interface ActiveExamInfo {
  id: string;
  judul: string;
  tipe: string;
  subtes: string | null;
  durasi_menit: number;
  aktif: boolean;
  questionCount?: number;
  topikList?: string[];
}

interface DashboardClientProps {
  userId: string;
  nama: string;
  history: AttemptRecord[];
  activeExams?: ActiveExamInfo[];
  userRole?: string | null;
  userEmail?: string | null;
}

export const DashboardClient: React.FC<DashboardClientProps> = ({
  userId,
  nama,
  history,
  activeExams = [],
  userRole,
  userEmail,
}) => {
  const router = useRouter();
  const supabase = createClient();

  const [attemptHistory, setAttemptHistory] = useState<AttemptRecord[]>(history);
  const [deletingId, setDeletingId] = useState<string | null>(null);
  const [isDeletingAll, setIsDeletingAll] = useState(false);
  const [loadingMode, setLoadingMode] = useState<string | null>(null);
  const [errorMsg, setErrorMsg] = useState<string | null>(null);
  const [isTopicModalOpen, setIsTopicModalOpen] = useState(false);
  const [examTab, setExamTab] = useState<'all' | 'TIU' | 'TWK' | 'TKP' | 'tryout'>('all');
  const [showAdminModal, setShowAdminModal] = useState(false);

  // Filter completed attempts for stats and chart
  const completedHistory = attemptHistory.filter((h) => h.selesai !== null && h.skor !== null);
  const totalCompleted = completedHistory.length;
  const highestScore = completedHistory.reduce((max, h) => Math.max(max, h.skor || 0), 0);
  const avgScore = totalCompleted
    ? Math.round(completedHistory.reduce((acc, h) => acc + (h.skor || 0), 0) / totalCompleted)
    : 0;

  // Chart data (chronological order)
  const chartData = [...completedHistory]
    .reverse()
    .map((h) => {
      const date = new Date(h.mulai);
      const dateStr = `${date.getDate()}/${date.getMonth() + 1}`;
      let label = 'Try Out';
      if (h.mode === 'subtes_twk') label = 'TWK';
      else if (h.mode === 'subtes_tiu') label = 'TIU';
      else if (h.mode === 'latihan_topik') label = 'Latihan';
      else if (h.mode === 'ulangi_salah') label = 'Ulangi';

      return {
        id: h.id,
        tanggal: dateStr,
        mode: label,
        skor: h.skor || 0,
      };
    });

  const handleDeleteAttempt = async (attemptId: string) => {
    if (!confirm('Hapus riwayat sesi ujian ini? Catatan nilai dan jawaban untuk sesi ini akan dihapus permanen.')) {
      return;
    }
    setDeletingId(attemptId);
    try {
      const { error } = await supabase.from('attempts').delete().eq('id', attemptId);
      if (error) throw error;
      setAttemptHistory((prev) => prev.filter((h) => h.id !== attemptId));
      router.refresh();
    } catch (err: unknown) {
      alert('Gagal menghapus riwayat: ' + (err instanceof Error ? err.message : String(err)));
    } finally {
      setDeletingId(null);
    }
  };

  const handleClearAllHistory = async () => {
    if (attemptHistory.length === 0) return;
    if (
      !confirm(
        `Yakin ingin menghapus seluruh (${attemptHistory.length}) riwayat ujian dan progres Anda? Tindakan ini tidak dapat dibatalkan.`
      )
    ) {
      return;
    }
    setIsDeletingAll(true);
    try {
      const { error } = await supabase.from('attempts').delete().eq('user_id', userId);
      if (error) throw error;
      setAttemptHistory([]);
      router.refresh();
    } catch (err: unknown) {
      alert('Gagal mereset riwayat: ' + (err instanceof Error ? err.message : String(err)));
    } finally {
      setIsDeletingAll(false);
    }
  };

  const handleStartExam = async (
    mode: ExamMode,
    options?: { subtes?: SubtesType; topik?: string; jumlahSoal?: number }
  ) => {
    setErrorMsg(null);
    setLoadingMode(mode);

    try {
      const { attemptId } = await createAttempt(supabase, userId, mode, options);
      router.push(`/ujian/${attemptId}`);
    } catch (err: unknown) {
      const msg = err instanceof Error ? err.message : 'Gagal memulai sesi ujian.';
      setErrorMsg(msg);
      setLoadingMode(null);
    }
  };

  const handleStartPackage = async (examId: string) => {
    setErrorMsg(null);
    setLoadingMode(examId);

    try {
      const { attemptId } = await createExamAttemptFromPackage(supabase, userId, examId);
      router.push(`/ujian/${attemptId}`);
    } catch (err: unknown) {
      const msg = err instanceof Error ? err.message : 'Gagal memulai paket ujian.';
      setErrorMsg(msg);
      setLoadingMode(null);
    }
  };

  const getAttemptTitle = (item: AttemptRecord) => {
    // Priority 1: gunakan judul exam dari join (paket bernama)
    const examTitle = Array.isArray(item.exams)
      ? item.exams[0]?.judul
      : item.exams?.judul;
    if (examTitle) return examTitle;

    // Priority 2: label berdasarkan mode
    switch (item.mode) {
      case 'tryout':
        return 'Try Out Penuh (110 Soal)';
      case 'subtes':
        // mode 'subtes' bisa dari paket lama, tampilkan subtes-nya jika ada
        if (item.subtes === 'TIU') return 'Subtes TIU (35 Soal)';
        if (item.subtes === 'TWK') return 'Subtes TWK (30 Soal)';
        if (item.subtes === 'TKP') return 'Subtes TKP (45 Soal)';
        return item.subtes ? `Subtes ${item.subtes}` : 'Latihan Subtes';
      case 'subtes_twk':
        return 'Subtes TWK (30 Soal)';
      case 'subtes_tiu':
        return 'Subtes TIU (35 Soal)';
      case 'subtes_tkp':
        return 'Subtes TKP (45 Soal)';
      case 'latihan_topik':
        return `Latihan Topik${item.subtes ? ': ' + item.subtes : ''}`;
      case 'ulangi_salah':
        return 'Ulangi Soal Salah';
      default:
        // fallback: tampilkan mode + subtes dengan format yang lebih rapi
        if (item.subtes) return `${item.subtes} — ${item.mode}`;
        return item.mode ? item.mode.replace(/_/g, ' ').replace(/\b\w/g, c => c.toUpperCase()) : 'Sesi Ujian';
    }
  };

  const formatDuration = (seconds: number | null) => {
    if (!seconds) return '-';
    const m = Math.floor(seconds / 60);
    const s = seconds % 60;
    return `${m}m ${s}d`;
  };

  return (
    <div className="max-w-4xl mx-auto px-4 py-6 space-y-6">
      {/* Banner Sapaan Hero */}
      <div className="bg-gradient-to-br from-indigo-700 via-indigo-600 to-indigo-900 text-white rounded-3xl p-5 sm:p-7 shadow-xl shadow-indigo-100 flex flex-col md:flex-row md:items-center justify-between gap-5">
        <div>
          <div className="inline-flex items-center gap-1.5 px-3 py-1 rounded-full bg-white/20 text-white text-[11px] font-semibold backdrop-blur-xs mb-3">
            <Sparkles className="w-3.5 h-3.5 text-amber-300 shrink-0" />
            <span>Simulasi Mandiri SKD CPNS</span>
          </div>
          <h1 className="text-xl sm:text-2xl lg:text-3xl font-black tracking-tight">
            Halo, {nama || 'Pejuang NIP'}!
          </h1>
          <p className="text-indigo-100 text-xs sm:text-sm mt-1.5 max-w-md leading-relaxed">
            Evaluasi berkala dan latihan bertarget adalah kunci kelulusan ambang batas passing grade CAT BKN.
          </p>

          <div className="mt-4 flex items-center gap-2">
            <Link
              href="/progres"
              className="inline-flex items-center gap-2 px-3.5 py-2 rounded-xl bg-white text-indigo-700 hover:bg-indigo-50 text-xs font-bold shadow-md shadow-indigo-950/20 transition"
            >
              <TrendingUp className="w-4 h-4 shrink-0 text-indigo-600" />
              <span>Lihat Progres & Capaian</span>
              <ChevronRight className="w-3.5 h-3.5 shrink-0" />
            </Link>
          </div>
        </div>

        {/* Quick stat badges */}
        <div className="grid grid-cols-3 gap-2 self-stretch md:self-center">
          <div className="bg-white/10 backdrop-blur-md rounded-2xl p-3 text-center border border-white/10">
            <div className="text-lg sm:text-xl font-black text-white">{totalCompleted}</div>
            <div className="text-[10px] text-indigo-200 uppercase tracking-wider font-semibold mt-0.5">
              Selesai
            </div>
          </div>
          <div className="bg-white/10 backdrop-blur-md rounded-2xl p-3 text-center border border-white/10">
            <div className="text-lg sm:text-xl font-black text-amber-300">{highestScore}</div>
            <div className="text-[10px] text-indigo-200 uppercase tracking-wider font-semibold mt-0.5">
              Tertinggi
            </div>
          </div>
          <div className="bg-white/10 backdrop-blur-md rounded-2xl p-3 text-center border border-white/10">
            <div className="text-lg sm:text-xl font-black text-emerald-300">{avgScore}</div>
            <div className="text-[10px] text-indigo-200 uppercase tracking-wider font-semibold mt-0.5">
              Rata-rata
            </div>
          </div>
        </div>
      </div>

      {errorMsg && (
        <div className="p-3.5 rounded-2xl bg-rose-50 border border-rose-200 text-rose-700 text-xs sm:text-sm flex items-start gap-2 animate-in fade-in">
          <AlertCircle className="w-4 h-4 shrink-0 mt-0.5 text-rose-600" />
          <span>{errorMsg}</span>
        </div>
      )}

      {/* Banner Panduan Admin jika akun belum Admin */}
      {userRole !== 'admin' && (
        <div className="bg-gradient-to-r from-amber-500/10 via-amber-500/5 to-transparent border border-amber-200/80 rounded-2xl p-4 flex flex-col sm:flex-row items-start sm:items-center justify-between gap-3 shadow-xs">
          <div className="flex items-center gap-3">
            <div className="w-9 h-9 rounded-xl bg-amber-100 text-amber-800 flex items-center justify-center shrink-0">
              <ShieldAlert className="w-5 h-5 text-amber-600" />
            </div>
            <div>
              <h3 className="font-bold text-slate-900 text-xs sm:text-sm">
                Ingin Mengelola & Menambah Paket Soal (TIU 1, TIU 2, dll)?
              </h3>
              <p className="text-[11px] text-slate-500 mt-0.5">
                Akun Anda saat ini memiliki peran <strong>User</strong>. Aktifkan hak akses Admin untuk membuka panel kelola bank soal.
              </p>
            </div>
          </div>

          <button
            onClick={() => setShowAdminModal(true)}
            className="px-3.5 py-2 rounded-xl bg-amber-600 hover:bg-amber-700 text-white font-bold text-xs shadow-xs transition flex items-center gap-1.5 shrink-0 self-start sm:self-auto"
          >
            <ShieldCheck className="w-3.5 h-3.5" />
            <span>Aktivasi Akses Admin</span>
          </button>
        </div>
      )}

      {/* Bagian: Paket Soal Terstruktur & Subtes */}
      <div className="space-y-3.5">
        <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-3">
          <div>
            <h2 className="text-xs font-bold text-slate-800 uppercase tracking-wider flex items-center gap-2">
              <Package className="w-4 h-4 text-purple-600 shrink-0" />
              <span>Paket Soal Per Subtes & Try Out</span>
            </h2>
            <p className="text-[11px] text-slate-500 mt-0.5">
              Pilih paket simulasi tetap dengan jumlah butir soal terstandar (misal TIU 1 30 soal, TIU 2 30 soal)
            </p>
          </div>

          {userRole === 'admin' && (
            <Link
              href="/admin/paket/baru"
              className="inline-flex items-center gap-1.5 px-3 py-1.5 rounded-xl bg-purple-600 hover:bg-purple-700 text-white text-xs font-bold shadow-xs transition self-start sm:self-auto"
            >
              <Plus className="w-3.5 h-3.5" />
              <span>+ Buat Paket Baru</span>
            </Link>
          )}
        </div>

        {/* Tab Filter Subtes */}
        <div className="flex items-center gap-1.5 overflow-x-auto pb-1 text-xs">
          {[
            { id: 'all', label: 'Semua Paket', count: activeExams.length },
            { id: 'TIU', label: 'Subtes TIU', count: activeExams.filter((e) => e.subtes === 'TIU').length },
            { id: 'TWK', label: 'Subtes TWK', count: activeExams.filter((e) => e.subtes === 'TWK').length },
            { id: 'TKP', label: 'Subtes TKP', count: activeExams.filter((e) => e.subtes === 'TKP').length },
            { id: 'tryout', label: 'Try Out Penuh', count: activeExams.filter((e) => e.tipe === 'tryout').length },
          ].map((tab) => (
            <button
              key={tab.id}
              onClick={() => setExamTab(tab.id as any)}
              className={`px-3 py-1.5 rounded-xl font-semibold transition shrink-0 flex items-center gap-1.5 ${
                examTab === tab.id
                  ? 'bg-purple-600 text-white shadow-xs shadow-purple-200'
                  : 'bg-white text-slate-600 border border-slate-200 hover:bg-slate-50'
              }`}
            >
              <span>{tab.label}</span>
              <span
                className={`text-[10px] px-1.5 py-0.2 rounded-full font-bold ${
                  examTab === tab.id
                    ? 'bg-purple-700 text-white'
                    : 'bg-slate-100 text-slate-600'
                }`}
              >
                {tab.count}
              </span>
            </button>
          ))}
        </div>

        {/* List Card Paket */}
        {(() => {
          const filtered = activeExams
            .filter((e) => {
              if (examTab === 'all') return true;
              if (examTab === 'tryout') return e.tipe === 'tryout';
              return e.subtes === examTab;
            })
            .sort((a, b) => {
              const groupOrder: Record<string, number> = { tryout: 1, TWK: 2, TIU: 3, TKP: 4 };
              const groupA = a.tipe === 'tryout' ? 'tryout' : (a.subtes || '');
              const groupB = b.tipe === 'tryout' ? 'tryout' : (b.subtes || '');
              const diff = (groupOrder[groupA] || 99) - (groupOrder[groupB] || 99);
              if (diff !== 0) return diff;
              return a.judul.localeCompare(b.judul, 'id', { numeric: true, sensitivity: 'base' });
            });

          if (filtered.length === 0) {
            return (
              <div className="bg-white rounded-2xl border border-dashed border-slate-200 p-8 text-center space-y-2">
                <Package className="w-8 h-8 mx-auto text-slate-300" />
                <h3 className="font-bold text-slate-800 text-xs sm:text-sm">
                  Belum Ada Paket untuk Kategori Ini
                </h3>
                <p className="text-[11px] text-slate-500 max-w-sm mx-auto">
                  {userRole === 'admin'
                    ? 'Anda dapat membuat paket latihan baru dengan jumlah soal fleksibel (misal 30 soal) langsung dari panel admin.'
                    : 'Admin belum menerbitkan paket pada kategori ini. Anda tetap bisa berlatih menggunakan mode acak di bawah.'}
                </p>
                {userRole === 'admin' && (
                  <div className="pt-2">
                    <Link
                      href="/admin/paket/baru"
                      className="inline-flex items-center gap-1.5 px-4 py-2 rounded-xl bg-purple-600 hover:bg-purple-700 text-white text-xs font-bold transition shadow-xs"
                    >
                      <Plus className="w-4 h-4" />
                      <span>Buat Paket {examTab !== 'all' ? examTab : ''} Sekarang</span>
                    </Link>
                  </div>
                )}
              </div>
            );
          }

          return (
            <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-3.5">
              {filtered.map((exam) => (
                <div
                  key={exam.id}
                  className="bg-white rounded-2xl border border-slate-200 hover:border-purple-300 p-4 sm:p-5 shadow-xs hover:shadow-md transition flex flex-col justify-between group"
                >
                  <div>
                    <div className="flex items-center justify-between mb-2">
                      <span
                        className={`text-[10px] font-bold px-2 py-0.5 rounded-md uppercase tracking-wider ${
                          exam.subtes === 'TIU'
                            ? 'bg-blue-50 text-blue-700 border border-blue-200'
                            : exam.subtes === 'TWK'
                            ? 'bg-rose-50 text-rose-700 border border-rose-200'
                            : exam.subtes === 'TKP'
                            ? 'bg-emerald-50 text-emerald-700 border border-emerald-200'
                            : 'bg-purple-50 text-purple-700 border border-purple-200'
                        }`}
                      >
                        {exam.tipe === 'tryout' ? 'Try Out Penuh' : `Subtes ${exam.subtes}`}
                      </span>

                      <div className="flex items-center gap-2 text-[11px] text-slate-500 font-medium">
                        {exam.questionCount !== undefined && exam.questionCount > 0 && (
                          <span className="font-bold text-slate-700">
                            {exam.questionCount} Soal
                          </span>
                        )}
                        <span>•</span>
                        <span className="flex items-center gap-1">
                          <Clock className="w-3.5 h-3.5 shrink-0 text-slate-400" />
                          {exam.durasi_menit} Menit
                        </span>
                      </div>
                    </div>

                    <h3 className="font-bold text-slate-900 text-sm group-hover:text-purple-700 transition">
                      {exam.judul}
                    </h3>

                    {/* Keterangan Karakteristik Soal (Campur Semua Topik / Khusus Topik / Lengkap) */}
                    <div className="mt-2.5 space-y-1.5">
                      {exam.tipe === 'tryout' ? (
                        <div className="space-y-1">
                          <span className="inline-flex items-center gap-1 px-2 py-0.5 rounded-md text-[10px] font-bold bg-amber-50 text-amber-800 border border-amber-200">
                            ⚡ Try Out Penuh (TWK • TIU • TKP)
                          </span>
                          <p className="text-[11px] text-slate-500">
                            Simulasi gabungan seluruh materi SKD standar CAT BKN
                          </p>
                        </div>
                      ) : exam.topikList && exam.topikList.length === 1 ? (
                        <div className="space-y-1">
                          <span className="inline-flex items-center gap-1 px-2 py-0.5 rounded-md text-[10px] font-bold bg-indigo-50 text-indigo-800 border border-indigo-200">
                            🎯 Khusus: {exam.topikList[0]}
                          </span>
                          <p className="text-[11px] text-slate-500">
                            Fokus latihan intensif materi {exam.topikList[0]}
                          </p>
                        </div>
                      ) : exam.topikList && exam.topikList.length > 1 ? (
                        <div className="space-y-1.5">
                          <div className="flex items-center gap-1.5">
                            <span className="inline-flex items-center gap-1 px-2 py-0.5 rounded-md text-[10px] font-bold bg-purple-50 text-purple-800 border border-purple-200">
                              🔀 Campur ({exam.topikList.length} Topik)
                            </span>
                          </div>
                          <div className="flex flex-wrap gap-1">
                            {exam.topikList.map((t) => (
                              <span
                                key={t}
                                className="text-[10px] px-1.5 py-0.2 rounded bg-slate-100 text-slate-600 border border-slate-200"
                              >
                                {t}
                              </span>
                            ))}
                          </div>
                        </div>
                      ) : (
                        <p className="text-[11px] text-slate-500">
                          Paket latihan subtes {exam.subtes}
                        </p>
                      )}
                    </div>
                  </div>

                  <button
                    onClick={() => handleStartPackage(exam.id)}
                    disabled={loadingMode !== null}
                    className="mt-4 w-full py-2.5 px-3 rounded-xl bg-purple-600 hover:bg-purple-700 text-white text-xs font-bold shadow-xs transition flex items-center justify-center gap-1.5 disabled:opacity-50"
                  >
                    {loadingMode === exam.id ? (
                      <>
                        <Loader2 className="w-3.5 h-3.5 animate-spin" />
                        <span>Menyiapkan Ujian...</span>
                      </>
                    ) : (
                      <>
                        <span>Mulai Kerjakan Paket</span>
                        <ChevronRight className="w-4 h-4 shrink-0" />
                      </>
                    )}
                  </button>
                </div>
              ))}
            </div>
          );
        })()}
      </div>

      {/* Mode Latihan Tambahan (Hanya Latihan Topik & Ulangi Soal Salah) */}
      <div className="space-y-3">
        <div className="flex items-center justify-between">
          <div>
            <h2 className="text-xs font-bold text-slate-800 uppercase tracking-wider flex items-center gap-1.5">
              <BookOpen className="w-4 h-4 text-amber-500 shrink-0" />
              <span>Latihan Tambahan & Remediasi</span>
            </h2>
            <p className="text-[11px] text-slate-500 mt-0.5">
              Perdalam topik spesifik tanpa batas waktu atau ulangi butir soal yang pernah keliru.
            </p>
          </div>
        </div>

        <div className="grid grid-cols-1 sm:grid-cols-2 gap-3.5">
          {/* 1. Latihan per Topik */}
          <button
            onClick={() => setIsTopicModalOpen(true)}
            disabled={loadingMode !== null}
            className="group text-left bg-white p-4 sm:p-5 rounded-2xl border border-slate-200 hover:border-amber-400 hover:shadow-md transition flex flex-col justify-between"
          >
            <div>
              <div className="flex items-center justify-between mb-2.5">
                <div className="w-9 h-9 rounded-xl bg-amber-50 text-amber-600 flex items-center justify-center shrink-0 group-hover:scale-105 transition">
                  <BookOpen className="w-5 h-5 shrink-0" />
                </div>
                <span className="inline-flex items-center px-2 py-0.5 rounded-md text-[10px] font-bold bg-amber-50 text-amber-700 border border-amber-200">
                  Tanpa Timer
                </span>
              </div>
              <h3 className="font-bold text-slate-900 text-sm group-hover:text-amber-600 transition">
                Latihan Per Topik
              </h3>
              <p className="text-xs text-slate-500 mt-1 leading-relaxed">
                Pilih topik materi & jumlah butir soal. Pembahasan langsung tampil seketika setelah memilih opsi.
              </p>
            </div>
            <div className="mt-4 pt-3 border-t border-slate-100 flex items-center justify-between text-xs font-bold text-amber-600">
              <span>Pilih Topik Belajar</span>
              <ChevronRight className="w-4 h-4 shrink-0 transition group-hover:translate-x-1" />
            </div>
          </button>

          {/* 2. Ulangi Soal Salah */}
          <button
            onClick={() => handleStartExam('ulangi_salah')}
            disabled={loadingMode !== null}
            className="group text-left bg-white p-4 sm:p-5 rounded-2xl border border-slate-200 hover:border-rose-400 hover:shadow-md transition flex flex-col justify-between"
          >
            <div>
              <div className="flex items-center justify-between mb-2.5">
                <div className="w-9 h-9 rounded-xl bg-rose-50 text-rose-600 flex items-center justify-center shrink-0 group-hover:scale-105 transition">
                  <RotateCcw className="w-5 h-5 shrink-0" />
                </div>
                <span className="inline-flex items-center px-2 py-0.5 rounded-md text-[10px] font-bold bg-rose-50 text-rose-700 border border-rose-200">
                  Remediasi
                </span>
              </div>
              <h3 className="font-bold text-slate-900 text-sm group-hover:text-rose-600 transition">
                Ulangi Soal Salah
              </h3>
              <p className="text-xs text-slate-500 mt-1 leading-relaxed">
                Latih kembali hanya butir-butir soal yang pernah Anda jawab keliru di sesi sebelumnya.
              </p>
            </div>
            <div className="mt-4 pt-3 border-t border-slate-100 flex items-center justify-between text-xs font-bold text-rose-600">
              <span>{loadingMode === 'ulangi_salah' ? 'Mencari Soal Salah...' : 'Mulai Remediasi'}</span>
              {loadingMode === 'ulangi_salah' ? (
                <Loader2 className="w-4 h-4 animate-spin text-rose-600" />
              ) : (
                <ChevronRight className="w-4 h-4 shrink-0 transition group-hover:translate-x-1" />
              )}
            </div>
          </button>
        </div>
      </div>

      {/* Grafik Perkembangan Nilai */}
      <div className="bg-white rounded-3xl border border-slate-200/90 p-5 sm:p-6 shadow-xs">
        <div className="flex items-center justify-between mb-3">
          <div>
            <h2 className="text-sm font-bold text-slate-800">Tren Skor Try Out</h2>
            <p className="text-[11px] text-slate-500">Perkembangan nilai dari setiap sesi ujian yang telah diselesaikan</p>
          </div>
          <div className="w-9 h-9 rounded-xl bg-indigo-50 text-indigo-600 flex items-center justify-center shrink-0">
            <Trophy className="w-4 h-4 shrink-0" />
          </div>
        </div>
        <HistoryChart data={chartData} />
      </div>

      {/* Riwayat Pengerjaan */}
      <div className="bg-white rounded-3xl border border-slate-200/90 overflow-hidden shadow-xs">
        <div className="p-4 sm:p-5 border-b border-slate-100 flex items-center justify-between gap-3">
          <div>
            <h2 className="text-sm font-bold text-slate-800">Riwayat Percobaan</h2>
            <p className="text-[11px] text-slate-500">Daftar sesi ujian yang pernah Anda ikuti</p>
          </div>
          <div className="flex items-center gap-2">
            <span className="text-xs font-semibold px-2.5 py-0.5 rounded-full bg-slate-100 text-slate-600">
              {attemptHistory.length} Sesi
            </span>
            {attemptHistory.length > 0 && (
              <button
                type="button"
                onClick={handleClearAllHistory}
                disabled={isDeletingAll}
                className="px-2.5 py-1 rounded-xl text-rose-600 hover:bg-rose-50 border border-rose-200/80 text-[11px] font-semibold transition flex items-center gap-1 disabled:opacity-50"
                title="Hapus Seluruh Riwayat"
              >
                {isDeletingAll ? (
                  <Loader2 className="w-3 h-3 animate-spin" />
                ) : (
                  <Trash2 className="w-3 h-3" />
                )}
                <span className="hidden sm:inline">Hapus Semua</span>
              </button>
            )}
          </div>
        </div>

        {attemptHistory.length === 0 ? (
          <div className="p-8 text-center text-slate-400">
            <FileQuestion className="w-10 h-10 mx-auto text-slate-300 mb-2 shrink-0" />
            <p className="text-sm font-semibold text-slate-700">Belum ada riwayat ujian</p>
            <p className="text-xs text-slate-400 mt-1">
              Pilih salah satu paket soal di atas untuk memulai simulasi pertama Anda.
            </p>
          </div>
        ) : (
          <div className="divide-y divide-slate-100">
            {attemptHistory.map((item) => {
              const isCompleted = item.selesai !== null;
              const isDeletingThis = deletingId === item.id;
              const date = new Date(item.mulai).toLocaleDateString('id-ID', {
                day: 'numeric',
                month: 'short',
                year: 'numeric',
                hour: '2-digit',
                minute: '2-digit',
              });

              return (
                <div
                  key={item.id}
                  className="p-4 hover:bg-slate-50/80 transition flex items-center justify-between gap-3 text-xs sm:text-sm"
                >
                  <div className="flex items-start gap-3 min-w-0">
                    <div
                      className={`w-9 h-9 rounded-xl flex items-center justify-center shrink-0 mt-0.5 ${
                        isCompleted
                          ? 'bg-emerald-50 text-emerald-600 border border-emerald-100'
                          : 'bg-amber-50 text-amber-600 border border-amber-100'
                      }`}
                    >
                      {isCompleted ? <Trophy className="w-4 h-4 shrink-0" /> : <Clock className="w-4 h-4 shrink-0" />}
                    </div>

                    <div className="min-w-0">
                      <div className="font-semibold text-slate-800 truncate">
                        {getAttemptTitle(item)}
                      </div>
                      <div className="flex items-center gap-2 text-[11px] text-slate-400 mt-0.5">
                        <span className="flex items-center gap-1">
                          <Calendar className="w-3 h-3 shrink-0" />
                          {date}
                        </span>
                        {isCompleted && (
                          <>
                            <span>•</span>
                            <span>Durasi: {formatDuration(item.durasi_detik)}</span>
                          </>
                        )}
                      </div>
                    </div>
                  </div>

                  <div className="flex items-center gap-2 sm:gap-3 shrink-0">
                    {isCompleted ? (
                      <div className="text-right">
                        <div className="text-sm sm:text-base font-bold text-indigo-600">{item.skor} Poin</div>
                        <span className="text-[10px] px-2 py-0.5 rounded-full bg-slate-100 text-slate-600 font-medium">
                          Selesai
                        </span>
                      </div>
                    ) : (
                      <div className="text-right">
                        <span className="text-[10px] px-2 py-0.5 rounded-full bg-amber-50 text-amber-700 font-medium border border-amber-200">
                          Berjalan
                        </span>
                      </div>
                    )}

                    <button
                      onClick={() => {
                        if (isCompleted) {
                          router.push(`/ujian/${item.id}/pembahasan`);
                        } else {
                          router.push(`/ujian/${item.id}`);
                        }
                      }}
                      className="px-2.5 py-1.5 rounded-xl text-indigo-600 hover:bg-indigo-50 border border-indigo-100 font-semibold text-xs transition"
                      title={isCompleted ? 'Lihat Pembahasan' : 'Lanjutkan Ujian'}
                    >
                      {isCompleted ? 'Pembahasan' : 'Lanjut'}
                    </button>

                    <button
                      type="button"
                      onClick={() => handleDeleteAttempt(item.id)}
                      disabled={isDeletingThis}
                      className="p-1.5 rounded-lg text-slate-400 hover:text-rose-600 hover:bg-rose-50 transition disabled:opacity-40"
                      title="Hapus Sesi Ini"
                    >
                      {isDeletingThis ? (
                        <Loader2 className="w-4 h-4 animate-spin text-rose-600" />
                      ) : (
                        <Trash2 className="w-4 h-4" />
                      )}
                    </button>
                  </div>
                </div>
              );
            })}
          </div>
        )}
      </div>

      {/* Modal Latihan Topik */}
      <TopicPracticeModal
        isOpen={isTopicModalOpen}
        onClose={() => setIsTopicModalOpen(false)}
        loading={loadingMode === 'latihan_topik'}
        onStart={(subtes, topik, jumlahSoal) => {
          handleStartExam('latihan_topik', { subtes, topik, jumlahSoal });
        }}
      />

      {/* Modal Panduan Aktivasi Admin */}
      <AdminActivationModal
        isOpen={showAdminModal}
        onClose={() => setShowAdminModal(false)}
        userEmail={userEmail}
        currentRole={userRole}
      />
    </div>
  );
};
