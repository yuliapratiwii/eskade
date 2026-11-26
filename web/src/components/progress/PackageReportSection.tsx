'use client';

import React, { useState } from 'react';
import Link from 'next/link';
import { ExamPackageReportItem } from '@/lib/progress-service';
import {
  FileText,
  Clock,
  CheckCircle2,
  XCircle,
  ChevronDown,
  ChevronUp,
  BarChart2,
  ExternalLink,
  Zap,
  Award,
  Layers,
  Filter,
} from 'lucide-react';

interface PackageReportSectionProps {
  reports: ExamPackageReportItem[];
}

export const PackageReportSection: React.FC<PackageReportSectionProps> = ({ reports }) => {
  const [filterType, setFilterType] = useState<string>('all');
  const [expandedId, setExpandedId] = useState<string | null>(null);

  if (!reports || reports.length === 0) {
    return null;
  }

  const filteredReports = reports.filter((r) => {
    if (filterType === 'all') return true;
    if (filterType === 'tryout') return r.tipe === 'tryout';
    return r.subtes === filterType;
  });

  const formatDuration = (seconds: number) => {
    const m = Math.floor(seconds / 60);
    const s = seconds % 60;
    if (m === 0) return `${s} dtk`;
    return `${m}m ${s > 0 ? `${s}s` : ''}`;
  };

  const formatDate = (isoStr: string) => {
    try {
      const d = new Date(isoStr);
      return d.toLocaleDateString('id-ID', {
        day: 'numeric',
        month: 'short',
        year: 'numeric',
        hour: '2-digit',
        minute: '2-digit',
      });
    } catch {
      return isoStr;
    }
  };

  const toggleExpand = (id: string) => {
    setExpandedId((prev) => (prev === id ? null : id));
  };

  return (
    <div className="bg-white rounded-3xl border border-slate-200/90 p-5 sm:p-6 shadow-xs space-y-5">
      {/* Header & Filter */}
      <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-3">
        <div>
          <h2 className="text-sm font-bold text-slate-900 flex items-center gap-2">
            <FileText className="w-4 h-4 text-indigo-600 shrink-0" />
            <span>Laporan Evaluasi per Paket Ujian</span>
          </h2>
          <p className="text-[11px] text-slate-500 mt-0.5">
            Analisis waktu pengerjaan, tingkat kesulitan soal, dan penguasaan materi per paket yang telah dikerjakan
          </p>
        </div>

        {/* Filter Tab */}
        <div className="flex items-center p-1 bg-slate-100 rounded-xl text-xs self-start sm:self-auto shrink-0">
          {[
            { id: 'all', label: 'Semua' },
            { id: 'tryout', label: 'Try Out' },
            { id: 'TIU', label: 'TIU' },
            { id: 'TWK', label: 'TWK' },
            { id: 'TKP', label: 'TKP' },
          ].map((tab) => (
            <button
              key={tab.id}
              onClick={() => setFilterType(tab.id)}
              className={`px-3 py-1 rounded-lg font-semibold transition ${
                filterType === tab.id
                  ? 'bg-white text-indigo-700 shadow-xs'
                  : 'text-slate-500 hover:text-slate-900'
              }`}
            >
              {tab.label}
            </button>
          ))}
        </div>
      </div>

      {/* List Paket Card */}
      {filteredReports.length === 0 ? (
        <div className="p-8 text-center bg-slate-50 rounded-2xl border border-dashed border-slate-200 text-xs text-slate-400">
          Belum ada riwayat pengerjaan paket pada kategori ini.
        </div>
      ) : (
        <div className="space-y-3.5">
          {filteredReports.map((report) => {
            const isExpanded = expandedId === report.attemptId;
            const subtesColor =
              report.subtes === 'TIU'
                ? 'bg-blue-50 text-blue-700 border-blue-200'
                : report.subtes === 'TWK'
                ? 'bg-emerald-50 text-emerald-700 border-emerald-200'
                : report.subtes === 'TKP'
                ? 'bg-purple-50 text-purple-700 border-purple-200'
                : 'bg-amber-50 text-amber-800 border-amber-200';

            return (
              <div
                key={report.attemptId}
                className="rounded-2xl border border-slate-200 hover:border-slate-300 transition-all bg-white overflow-hidden shadow-xs"
              >
                {/* Header Card Summary */}
                <div
                  onClick={() => toggleExpand(report.attemptId)}
                  className="p-4 sm:p-5 flex flex-col md:flex-row md:items-center justify-between gap-3.5 cursor-pointer hover:bg-slate-50/50 transition"
                >
                  <div className="flex items-start gap-3 min-w-0">
                    <div className="w-10 h-10 rounded-xl bg-slate-100 text-slate-700 flex items-center justify-center font-bold text-xs shrink-0 mt-0.5">
                      <Layers className="w-5 h-5 text-indigo-600" />
                    </div>

                    <div className="min-w-0 flex-1">
                      <div className="flex flex-wrap items-center gap-1.5 mb-1">
                        <span className={`text-[10px] font-bold px-2 py-0.5 rounded-md border ${subtesColor}`}>
                          {report.tipe === 'tryout' ? 'TRY OUT' : report.subtes || 'LATIHAN'}
                        </span>
                        <span className="text-[11px] text-slate-400">
                          {formatDate(report.tanggalMulai)}
                        </span>
                      </div>

                      <h3 className="text-xs sm:text-sm font-bold text-slate-900 truncate">
                        {report.judulPaket}
                      </h3>

                      {/* Baris Ringkasan Cepat */}
                      <div className="flex flex-wrap items-center gap-3 mt-1.5 text-[11px] text-slate-600">
                        <span className="flex items-center gap-1">
                          <Clock className="w-3.5 h-3.5 text-slate-400" />
                          <span>
                            {formatDuration(report.durasiPengerjaanDetik)} / {report.alokasiWaktuMenit} mnt
                          </span>
                        </span>
                        <span className="text-slate-300">•</span>
                        <span className="flex items-center gap-1">
                          <Zap className="w-3.5 h-3.5 text-amber-500" />
                          <span>~{report.kecepatanDetikPerSoal} dtk/soal</span>
                        </span>
                        <span className="text-slate-300">•</span>
                        <span className="font-semibold text-slate-700">
                          Akurasi: {report.akurasi}% ({report.totalBenar}/{report.totalDijawab})
                        </span>
                      </div>
                    </div>
                  </div>

                  {/* Kanan: Skor & Status Passing Grade */}
                  <div className="flex items-center justify-between md:justify-end gap-3 shrink-0 pt-2 md:pt-0 border-t md:border-t-0 border-slate-100">
                    <div className="text-left md:text-right">
                      <div className="text-base sm:text-lg font-black text-slate-900 leading-none">
                        {report.skorTotal}
                        <span className="text-[11px] font-normal text-slate-400 ml-1">poin</span>
                      </div>
                      <div className="mt-1">
                        {report.lulusPassingGrade ? (
                          <span className="inline-flex items-center gap-1 text-[10px] font-bold px-2 py-0.5 rounded-full bg-emerald-100 text-emerald-800">
                            <CheckCircle2 className="w-3 h-3" />
                            <span>LULUS PG</span>
                          </span>
                        ) : (
                          <span className="inline-flex items-center gap-1 text-[10px] font-bold px-2 py-0.5 rounded-full bg-rose-100 text-rose-800">
                            <XCircle className="w-3 h-3" />
                            <span>BELUM PG</span>
                          </span>
                        )}
                      </div>
                    </div>

                    <div className="p-1.5 rounded-lg text-slate-400 hover:text-slate-700 hover:bg-slate-100 transition">
                      {isExpanded ? <ChevronUp className="w-4 h-4" /> : <ChevronDown className="w-4 h-4" />}
                    </div>
                  </div>
                </div>

                {/* Bagian Detail Expandable */}
                {isExpanded && (
                  <div className="px-4 sm:px-5 pb-5 pt-2 border-t border-slate-100 bg-slate-50/40 space-y-4">
                    {/* 1. Evaluasi Waktu & Tingkat Kesulitan */}
                    <div className="grid grid-cols-1 sm:grid-cols-2 gap-3 pt-2">
                      {/* Kartu Evaluasi Waktu */}
                      <div className="p-3.5 rounded-xl bg-white border border-slate-200/80 shadow-2xs space-y-2">
                        <div className="text-[11px] font-bold text-slate-700 uppercase tracking-wider flex items-center gap-1.5">
                          <Clock className="w-3.5 h-3.5 text-indigo-600" />
                          <span>Evaluasi Waktu Pengerjaan</span>
                        </div>
                        <div className="space-y-1.5 text-xs text-slate-600">
                          <div className="flex justify-between">
                            <span className="text-slate-500">Waktu Digunakan:</span>
                            <span className="font-bold text-slate-800">
                              {formatDuration(report.durasiPengerjaanDetik)} (Alokasi: {report.alokasiWaktuMenit} Menit)
                            </span>
                          </div>
                          <div className="flex justify-between">
                            <span className="text-slate-500">Rata-rata Waktu / Soal:</span>
                            <span
                              className={`font-bold ${
                                report.kecepatanDetikPerSoal <= 55 ? 'text-emerald-700' : 'text-amber-700'
                              }`}
                            >
                              {report.kecepatanDetikPerSoal} detik / butir soal
                              {report.kecepatanDetikPerSoal <= 55 ? ' (Ideal ⚡)' : ' (Perlu Dipercepat ⏳)'}
                            </span>
                          </div>
                        </div>
                      </div>

                      {/* Kartu Breakdown Tingkat Kesulitan */}
                      <div className="p-3.5 rounded-xl bg-white border border-slate-200/80 shadow-2xs space-y-2">
                        <div className="text-[11px] font-bold text-slate-700 uppercase tracking-wider flex items-center gap-1.5">
                          <BarChart2 className="w-3.5 h-3.5 text-indigo-600" />
                          <span>Performa Berdasarkan Tingkat Kesulitan</span>
                        </div>
                        <div className="grid grid-cols-3 gap-2 text-center text-xs">
                          {report.tingkatKesulitan.map((diff) => {
                            const isMudah = diff.level === 'mudah';
                            const isSedang = diff.level === 'sedang';
                            const badgeColor = isMudah
                              ? 'bg-emerald-50 text-emerald-800 border-emerald-200'
                              : isSedang
                              ? 'bg-amber-50 text-amber-800 border-amber-200'
                              : 'bg-rose-50 text-rose-800 border-rose-200';

                            return (
                              <div key={diff.level} className={`p-2 rounded-lg border ${badgeColor}`}>
                                <div className="text-[10px] font-bold uppercase">{diff.level}</div>
                                <div className="font-extrabold text-sm mt-0.5">{diff.akurasi}%</div>
                                <div className="text-[10px] text-slate-500 mt-0.5">
                                  {diff.benar}/{diff.total} Benar
                                </div>
                              </div>
                            );
                          })}
                        </div>
                      </div>
                    </div>

                    {/* 2. Breakdown Materi / Topik Soal dalam Paket */}
                    {report.breakdownTopik.length > 0 && (
                      <div className="p-3.5 rounded-xl bg-white border border-slate-200/80 shadow-2xs space-y-2">
                        <div className="text-[11px] font-bold text-slate-700 uppercase tracking-wider flex items-center justify-between">
                          <span>Distribusi Topik Materi di Paket Ini:</span>
                          <span className="text-[10px] text-slate-400 font-normal">
                            {report.breakdownTopik.length} Topik
                          </span>
                        </div>
                        <div className="flex flex-wrap gap-1.5 pt-1">
                          {report.breakdownTopik.map((t) => {
                            const isHigh = t.akurasi >= 80;
                            const isLow = t.akurasi < 60;
                            const tagColor = isHigh
                              ? 'bg-emerald-50 text-emerald-800 border-emerald-200'
                              : isLow
                              ? 'bg-rose-50 text-rose-800 border-rose-200'
                              : 'bg-slate-100 text-slate-700 border-slate-200';

                            return (
                              <span
                                key={t.topik}
                                className={`inline-flex items-center gap-1.5 text-[11px] px-2.5 py-1 rounded-lg border font-medium ${tagColor}`}
                              >
                                <span>{t.topik}:</span>
                                <span className="font-bold">
                                  {t.benar}/{t.total} ({t.akurasi}%)
                                </span>
                              </span>
                            );
                          })}
                        </div>
                      </div>
                    )}

                    {/* 3. Link Aksi Pembahasan */}
                    <div className="flex items-center justify-end gap-2 pt-1">
                      <Link
                        href={`/ujian/${report.attemptId}/pembahasan`}
                        className="px-3.5 py-1.5 bg-indigo-600 hover:bg-indigo-700 text-white rounded-xl text-xs font-bold transition flex items-center gap-1.5 shadow-xs shadow-indigo-100"
                      >
                        <ExternalLink className="w-3.5 h-3.5" />
                        <span>Buka Pembahasan Lengkap Paket Ini</span>
                      </Link>
                    </div>
                  </div>
                )}
              </div>
            );
          })}
        </div>
      )}
    </div>
  );
};
