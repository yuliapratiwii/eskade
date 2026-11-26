'use client';

import React, { useState } from 'react';
import Link from 'next/link';
import { useRouter } from 'next/navigation';
import { createClient } from '@/lib/supabase/client';
import {
  Package,
  Plus,
  Clock,
  Edit3,
  Trash2,
  CheckCircle2,
  XCircle,
  AlertTriangle,
  Loader2,
  Layers,
  Sparkles,
} from 'lucide-react';

export interface ExamListItem {
  id: string;
  judul: string;
  tipe: 'tryout' | 'subtes' | 'latihan';
  subtes: string | null;
  durasi_menit: number;
  aktif: boolean;
  questionCount: number;
  topikList?: string[];
}

interface ExamListClientProps {
  initialExams: ExamListItem[];
}

export const ExamListClient: React.FC<ExamListClientProps> = ({ initialExams }) => {
  const router = useRouter();
  const supabase = createClient();

  const [exams, setExams] = useState<ExamListItem[]>(initialExams);
  const [filterSubtes, setFilterSubtes] = useState<'all' | 'TIU' | 'TWK' | 'TKP' | 'tryout'>('all');
  const [loadingId, setLoadingId] = useState<string | null>(null);
  const [deleteId, setDeleteId] = useState<string | null>(null);
  const [isDeleting, setIsDeleting] = useState(false);
  const [isGenerating, setIsGenerating] = useState(false);

  // Auto Generate Paket Subtes (TIU 1 30 soal, TIU 2 30 soal, TWK 1 30 soal, dll)
  const handleAutoGenerateSubtestPackages = async () => {
    if (
      !confirm(
        'Sistem akan otomatis mengambil butir soal dari bank soal dan menyusun paket latihan per subtes (TIU 1 30 soal, TIU 2 30 soal, TWK 1 30 soal, dst.) yang langsung muncul di dashboard. Lanjutkan?'
      )
    ) {
      return;
    }

    setIsGenerating(true);
    try {
      // 1. Ambil semua soal berstatus published
      const { data: questions, error: qErr } = await supabase
        .from('questions')
        .select('id, subtes, nomor, topik')
        .eq('status', 'published')
        .order('nomor', { ascending: true });

      if (qErr || !questions || questions.length === 0) {
        alert(
          'Belum ada soal berstatus "published" di database. Pastikan soal sudah diimpor/diterbitkan di menu Bank Soal terlebih dahulu.'
        );
        return;
      }

      const tiuQuestions = questions.filter((q) => q.subtes === 'TIU');
      const twkQuestions = questions.filter((q) => q.subtes === 'TWK');

      let createdCount = 0;
      const chunkSize = 30;

      // Generate Paket TIU per 30 soal
      for (let i = 0; i < tiuQuestions.length; i += chunkSize) {
        const slice = tiuQuestions.slice(i, i + chunkSize);
        if (slice.length < 5) continue;
        const pkgNum = Math.floor(i / chunkSize) + 1;
        const judul = `TIU Paket ${pkgNum} (${slice.length} Soal)`;

        const { data: newExam, error: exErr } = await supabase
          .from('exams')
          .insert({
            judul,
            tipe: 'subtes',
            subtes: 'TIU',
            durasi_menit: Math.max(15, Math.ceil((slice.length * 55) / 60 / 5) * 5),
            aktif: true,
          })
          .select('id')
          .single();

        if (exErr || !newExam) continue;

        const eqPayload = slice.map((q, idx) => ({
          exam_id: newExam.id,
          question_id: q.id,
          urutan: idx + 1,
        }));
        await supabase.from('exam_questions').insert(eqPayload);
        createdCount++;
      }

      // Generate Paket TWK per 30 soal
      for (let i = 0; i < twkQuestions.length; i += chunkSize) {
        const slice = twkQuestions.slice(i, i + chunkSize);
        if (slice.length < 5) continue;
        const pkgNum = Math.floor(i / chunkSize) + 1;
        const judul = `TWK Paket ${pkgNum} (${slice.length} Soal)`;

        const { data: newExam, error: exErr } = await supabase
          .from('exams')
          .insert({
            judul,
            tipe: 'subtes',
            subtes: 'TWK',
            durasi_menit: Math.max(15, Math.ceil((slice.length * 55) / 60 / 5) * 5),
            aktif: true,
          })
          .select('id')
          .single();

        if (exErr || !newExam) continue;

        const eqPayload = slice.map((q, idx) => ({
          exam_id: newExam.id,
          question_id: q.id,
          urutan: idx + 1,
        }));
        await supabase.from('exam_questions').insert(eqPayload);
        createdCount++;
      }

      alert(`Berhasil membuat ${createdCount} paket subtes otomatis (TIU & TWK)! Halaman akan dimuat ulang.`);
      router.refresh();
      window.location.reload();
    } catch (err: unknown) {
      alert('Gagal membuat paket: ' + (err instanceof Error ? err.message : String(err)));
    } finally {
      setIsGenerating(false);
    }
  };

  // Toggle Aktif
  const handleToggleAktif = async (exam: ExamListItem) => {
    setLoadingId(exam.id);
    try {
      const nextAktif = !exam.aktif;
      const { error } = await supabase
        .from('exams')
        .update({ aktif: nextAktif })
        .eq('id', exam.id);

      if (error) throw error;

      setExams((prev) =>
        prev.map((e) => (e.id === exam.id ? { ...e, aktif: nextAktif } : e))
      );
    } catch (err: unknown) {
      alert('Gagal mengubah status paket: ' + (err instanceof Error ? err.message : String(err)));
    } finally {
      setLoadingId(null);
    }
  };

  // Hapus Paket
  const handleDelete = async () => {
    if (!deleteId) return;
    setIsDeleting(true);
    try {
      // 1. Lepaskan relasi foreign key di tabel attempts agar tidak terjadi constraint violation
      await supabase.from('attempts').update({ exam_id: null }).eq('exam_id', deleteId);
      // 2. Hapus relasi di exam_questions
      await supabase.from('exam_questions').delete().eq('exam_id', deleteId);
      // 3. Hapus paket ujian dari tabel exams
      const { error } = await supabase.from('exams').delete().eq('id', deleteId);
      if (error) throw error;

      setExams((prev) => prev.filter((e) => e.id !== deleteId));
      setDeleteId(null);
    } catch (err: unknown) {
      alert('Gagal menghapus paket: ' + (err instanceof Error ? err.message : String(err)));
    } finally {
      setIsDeleting(false);
    }
  };

  const displayed = exams
    .filter((e) => {
      if (filterSubtes === 'all') return true;
      if (filterSubtes === 'tryout') return e.tipe === 'tryout';
      return e.subtes === filterSubtes;
    })
    .sort((a, b) => {
      const groupOrder: Record<string, number> = { tryout: 1, TWK: 2, TIU: 3, TKP: 4 };
      const groupA = a.tipe === 'tryout' ? 'tryout' : (a.subtes || '');
      const groupB = b.tipe === 'tryout' ? 'tryout' : (b.subtes || '');
      const diff = (groupOrder[groupA] || 99) - (groupOrder[groupB] || 99);
      if (diff !== 0) return diff;
      return a.judul.localeCompare(b.judul, 'id', { numeric: true, sensitivity: 'base' });
    });

  return (
    <div className="space-y-6">
      {/* Header */}
      <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-3">
        <div>
          <h1 className="text-xl sm:text-2xl font-bold text-slate-900 tracking-tight">
            Paket Soal Subtes & Try Out
          </h1>
          <p className="text-xs text-slate-500 mt-0.5">
            Susun paket latihan per subtes (misal TIU 1 30 soal, TIU 2 30 soal) atau paket try out penuh dengan durasi dan urutan tetap.
          </p>
        </div>

        <div className="flex flex-wrap items-center gap-2">
          <button
            type="button"
            onClick={handleAutoGenerateSubtestPackages}
            disabled={isGenerating}
            className="inline-flex items-center gap-1.5 px-3.5 py-2.5 rounded-xl bg-amber-500 hover:bg-amber-600 text-white font-semibold text-xs shadow-md shadow-amber-100 transition disabled:opacity-50"
            title="Otomatis mengelompokkan bank soal published per 30 butir (TIU Paket 1, TIU Paket 2, TWK Paket 1, dst)"
          >
            {isGenerating ? <Loader2 className="w-4 h-4 animate-spin" /> : <Sparkles className="w-4 h-4" />}
            <span>{isGenerating ? 'Menyusun Paket...' : '⚡ Generate Paket Otomatis (30 Soal)'}</span>
          </button>

          <Link
            href="/admin/paket/baru"
            className="inline-flex items-center gap-2 px-4 py-2.5 rounded-xl bg-indigo-600 hover:bg-indigo-700 text-white font-semibold text-xs shadow-md shadow-indigo-100 transition"
          >
            <Plus className="w-4 h-4" />
            <span>Buat Paket Manual</span>
          </Link>
        </div>
      </div>

      {/* Tab Filter Subtes */}
      <div className="flex items-center gap-1.5 overflow-x-auto pb-1 text-xs">
        {[
          { id: 'all', label: 'Semua Paket', count: exams.length },
          { id: 'TIU', label: 'Paket TIU', count: exams.filter((e) => e.subtes === 'TIU').length },
          { id: 'TWK', label: 'Paket TWK', count: exams.filter((e) => e.subtes === 'TWK').length },
          { id: 'TKP', label: 'Paket TKP', count: exams.filter((e) => e.subtes === 'TKP').length },
          { id: 'tryout', label: 'Try Out Penuh', count: exams.filter((e) => e.tipe === 'tryout').length },
        ].map((tab) => (
          <button
            key={tab.id}
            onClick={() => setFilterSubtes(tab.id as any)}
            className={`px-3 py-1.5 rounded-xl font-semibold transition shrink-0 flex items-center gap-1.5 ${
              filterSubtes === tab.id
                ? 'bg-indigo-600 text-white shadow-xs shadow-indigo-200'
                : 'bg-white text-slate-600 border border-slate-200 hover:bg-slate-50'
            }`}
          >
            <span>{tab.label}</span>
            <span
              className={`text-[10px] px-1.5 py-0.2 rounded-full font-bold ${
                filterSubtes === tab.id ? 'bg-indigo-700 text-white' : 'bg-slate-100 text-slate-600'
              }`}
            >
              {tab.count}
            </span>
          </button>
        ))}
      </div>

      {/* Grid Paket Cards */}
      {displayed.length === 0 ? (
        <div className="bg-white rounded-3xl border border-slate-200 p-12 text-center text-slate-400 space-y-3">
          <Package className="w-12 h-12 mx-auto text-slate-300" />
          <h3 className="font-bold text-slate-700 text-base">
            Belum Ada Paket {filterSubtes !== 'all' ? filterSubtes : ''}
          </h3>
          <p className="text-xs text-slate-400 max-w-sm mx-auto">
            Buat paket baru untuk kategori ini (misal: TIU Paket 1 dengan 30 butir soal).
          </p>
          <Link
            href="/admin/paket/baru"
            className="inline-block mt-2 px-4 py-2 rounded-xl bg-indigo-600 text-white font-bold text-xs"
          >
            Buat Paket {filterSubtes !== 'all' ? filterSubtes : ''} Baru
          </Link>
        </div>
      ) : (
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
          {displayed.map((exam) => {
            const isLoading = loadingId === exam.id;

            return (
              <div
                key={exam.id}
                className="bg-white rounded-2xl border border-slate-200 p-5 shadow-xs flex flex-col justify-between hover:border-indigo-400 transition"
              >
                <div>
                  <div className="flex items-center justify-between gap-2 mb-3">
                    <span
                      className={`inline-block px-2.5 py-0.5 rounded-full text-[10px] font-bold uppercase tracking-wider ${
                        exam.tipe === 'tryout'
                          ? 'bg-indigo-50 text-indigo-700 border border-indigo-200'
                          : exam.subtes === 'TIU'
                          ? 'bg-blue-50 text-blue-700 border border-blue-200'
                          : exam.subtes === 'TWK'
                          ? 'bg-rose-50 text-rose-700 border border-rose-200'
                          : 'bg-emerald-50 text-emerald-700 border border-emerald-200'
                      }`}
                    >
                      {exam.tipe === 'tryout' ? 'Try Out Penuh' : `Subtes ${exam.subtes || ''}`}
                    </span>

                    <button
                      onClick={() => handleToggleAktif(exam)}
                      disabled={isLoading}
                      className={`inline-flex items-center gap-1.5 px-2.5 py-1 rounded-full text-[11px] font-bold border transition ${
                        exam.aktif
                          ? 'bg-emerald-50 text-emerald-700 border-emerald-300 hover:bg-emerald-100'
                          : 'bg-slate-100 text-slate-500 border-slate-200 hover:bg-slate-200'
                      }`}
                      title="Klik untuk mengubah status aktif"
                    >
                      {isLoading ? (
                        <Loader2 className="w-3 h-3 animate-spin" />
                      ) : exam.aktif ? (
                        <>
                          <CheckCircle2 className="w-3 h-3 text-emerald-600" />
                          <span>Aktif</span>
                        </>
                      ) : (
                        <>
                          <XCircle className="w-3 h-3 text-slate-400" />
                          <span>Nonaktif</span>
                        </>
                      )}
                    </button>
                  </div>

                  <h3 className="font-bold text-slate-900 text-sm mb-1">{exam.judul}</h3>

                  {/* Keterangan Topik Soal di Panel Admin */}
                  <div className="mb-3 space-y-1">
                    {exam.tipe === 'tryout' ? (
                      <span className="inline-flex items-center gap-1 px-2 py-0.5 rounded text-[10px] font-bold bg-amber-50 text-amber-800 border border-amber-200">
                        ⚡ Lengkap (TWK • TIU • TKP)
                      </span>
                    ) : exam.topikList && exam.topikList.length === 1 ? (
                      <span className="inline-flex items-center gap-1 px-2 py-0.5 rounded text-[10px] font-bold bg-indigo-50 text-indigo-800 border border-indigo-200">
                        🎯 Khusus: {exam.topikList[0]}
                      </span>
                    ) : exam.topikList && exam.topikList.length > 1 ? (
                      <div className="space-y-1">
                        <span className="inline-flex items-center gap-1 px-2 py-0.5 rounded text-[10px] font-bold bg-purple-50 text-purple-800 border border-purple-200">
                          🔀 Campur ({exam.topikList.length} Topik)
                        </span>
                        <div className="flex flex-wrap gap-1">
                          {exam.topikList.slice(0, 3).map((t) => (
                            <span key={t} className="text-[9px] px-1.5 py-0.2 rounded bg-slate-100 text-slate-600">
                              {t}
                            </span>
                          ))}
                          {exam.topikList.length > 3 && (
                            <span className="text-[9px] px-1.5 py-0.2 rounded bg-slate-100 text-slate-500">
                              +{exam.topikList.length - 3}
                            </span>
                          )}
                        </div>
                      </div>
                    ) : null}
                  </div>

                  <div className="flex items-center gap-3 text-xs text-slate-500 mb-4">
                    <span className="flex items-center gap-1">
                      <Clock className="w-3.5 h-3.5 text-slate-400" />
                      <span>{exam.durasi_menit} Menit</span>
                    </span>
                    <span>•</span>
                    <span className="flex items-center gap-1">
                      <Layers className="w-3.5 h-3.5 text-slate-400" />
                      <span className="font-semibold text-slate-700">{exam.questionCount} Butir Soal</span>
                    </span>
                  </div>
                </div>

                <div className="pt-3 border-t border-slate-100 flex items-center justify-between gap-2">
                  <Link
                    href={`/admin/paket/${exam.id}`}
                    className="inline-flex items-center gap-1.5 px-3 py-1.5 rounded-xl bg-slate-50 hover:bg-slate-100 text-slate-700 text-xs font-semibold border border-slate-200 transition"
                  >
                    <Edit3 className="w-3.5 h-3.5" />
                    <span>Edit Paket</span>
                  </Link>

                  <button
                    onClick={() => setDeleteId(exam.id)}
                    className="p-1.5 rounded-xl text-slate-400 hover:text-rose-600 hover:bg-rose-50 transition"
                    title="Hapus Paket"
                  >
                    <Trash2 className="w-4 h-4" />
                  </button>
                </div>
              </div>
            );
          })}
        </div>
      )}

      {/* Modal Konfirmasi Hapus */}
      {deleteId && (
        <div className="fixed inset-0 z-50 flex items-center justify-center p-4 bg-black/50 backdrop-blur-xs animate-in fade-in">
          <div className="bg-white w-full max-w-sm rounded-2xl p-6 shadow-2xl border border-slate-100 text-center">
            <div className="w-12 h-12 rounded-2xl bg-rose-50 text-rose-600 flex items-center justify-center mx-auto mb-4 border border-rose-200">
              <AlertTriangle className="w-6 h-6" />
            </div>

            <h3 className="text-base font-bold text-slate-900">Hapus Paket Ujian?</h3>
            <p className="text-xs text-slate-500 mt-2 leading-relaxed">
              Paket ujian ini beserta susunan soalnya akan dihapus permanen. Riwayat pengerjaan user tidak terhapus.
            </p>

            <div className="grid grid-cols-2 gap-2.5 mt-6">
              <button
                type="button"
                onClick={() => setDeleteId(null)}
                disabled={isDeleting}
                className="py-2.5 px-3 rounded-xl border border-slate-200 text-xs font-semibold text-slate-700 hover:bg-slate-50 transition"
              >
                Batal
              </button>
              <button
                type="button"
                onClick={handleDelete}
                disabled={isDeleting}
                className="py-2.5 px-3 rounded-xl bg-rose-600 hover:bg-rose-700 text-white text-xs font-bold shadow-md shadow-rose-200 flex items-center justify-center gap-1.5 transition"
              >
                {isDeleting ? (
                  <Loader2 className="w-3.5 h-3.5 animate-spin" />
                ) : (
                  <span>Ya, Hapus</span>
                )}
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
};
