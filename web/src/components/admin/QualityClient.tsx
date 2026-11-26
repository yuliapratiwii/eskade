'use client';

import React, { useState } from 'react';
import Link from 'next/link';
import { SubtesType } from '@/lib/types';
import {
  AlertTriangle,
  CheckCircle2,
  Clock,
  Edit3,
  Search,
  Filter,
  BarChart3,
  HelpCircle,
  TrendingDown,
  TrendingUp,
} from 'lucide-react';

export interface QuestionQualityItem {
  id: string;
  nomor: number;
  sumber: string;
  subtes: SubtesType;
  topik: string | null;
  soal: string;
  kunci: string | null;
  totalDijawab: number;
  jumlahBenar: number;
  persenBenar: number;
  needsReview: boolean;
  reviewReason?: string;
}

interface QualityClientProps {
  initialItems: QuestionQualityItem[];
}

export const QualityClient: React.FC<QualityClientProps> = ({ initialItems }) => {
  const [search, setSearch] = useState('');
  const [filterMode, setFilterMode] = useState<'all' | 'needs_review' | 'hard' | 'easy' | 'low_data'>('all');
  const [subtesFilter, setSubtesFilter] = useState<string>('all');

  const needsReviewCount = initialItems.filter((i) => i.needsReview).length;
  const hardCount = initialItems.filter((i) => i.totalDijawab >= 5 && i.persenBenar < 20).length;
  const easyCount = initialItems.filter((i) => i.totalDijawab >= 5 && i.persenBenar > 95).length;

  const filteredItems = initialItems.filter((item) => {
    if (subtesFilter !== 'all' && item.subtes !== subtesFilter) return false;

    if (filterMode === 'needs_review' && !item.needsReview) return false;
    if (filterMode === 'hard' && !(item.totalDijawab >= 5 && item.persenBenar < 20)) return false;
    if (filterMode === 'easy' && !(item.totalDijawab >= 5 && item.persenBenar > 95)) return false;
    if (filterMode === 'low_data' && item.totalDijawab >= 5) return false;

    if (search.trim()) {
      const q = search.toLowerCase();
      const matchSoal = item.soal.toLowerCase().includes(q);
      const matchTopik = item.topik?.toLowerCase().includes(q);
      if (!matchSoal && !matchTopik) return false;
    }

    return true;
  });

  return (
    <div className="space-y-6">
      {/* Header */}
      <div>
        <h1 className="text-xl sm:text-2xl font-bold text-slate-900 tracking-tight">
          Analisis Kualitas Bank Soal
        </h1>
        <p className="text-xs text-slate-500 mt-0.5">
          Menganalisis frekuensi pengerjaan dan akurasi jawaban peserta untuk mendeteksi soal ambigu atau kunci jawaban yang salah.
        </p>
      </div>

      {/* Overview Cards */}
      <div className="grid grid-cols-1 sm:grid-cols-3 gap-3">
        <div className="bg-white p-4 rounded-2xl border border-slate-200/80 shadow-xs flex items-center justify-between">
          <div>
            <p className="text-[11px] font-bold text-slate-400 uppercase tracking-wider">Perlu Dicek</p>
            <p className="text-2xl font-black text-rose-600 mt-0.5">{needsReviewCount}</p>
            <p className="text-[11px] text-slate-500 mt-0.5">&ge; 5 dijawab (&lt; 20% atau &gt; 95%)</p>
          </div>
          <div className="w-10 h-10 rounded-xl bg-rose-50 text-rose-600 flex items-center justify-center">
            <AlertTriangle className="w-5 h-5" />
          </div>
        </div>

        <div className="bg-white p-4 rounded-2xl border border-slate-200/80 shadow-xs flex items-center justify-between">
          <div>
            <p className="text-[11px] font-bold text-slate-400 uppercase tracking-wider">Terlalu Sulit (&lt; 20%)</p>
            <p className="text-2xl font-black text-amber-600 mt-0.5">{hardCount}</p>
            <p className="text-[11px] text-slate-500 mt-0.5">Kemungkinan kunci keliru / ambigu</p>
          </div>
          <div className="w-10 h-10 rounded-xl bg-amber-50 text-amber-600 flex items-center justify-center">
            <TrendingDown className="w-5 h-5" />
          </div>
        </div>

        <div className="bg-white p-4 rounded-2xl border border-slate-200/80 shadow-xs flex items-center justify-between">
          <div>
            <p className="text-[11px] font-bold text-slate-400 uppercase tracking-wider">Terlalu Mudah (&gt; 95%)</p>
            <p className="text-2xl font-black text-emerald-600 mt-0.5">{easyCount}</p>
            <p className="text-[11px] text-slate-500 mt-0.5">Hampir semua peserta menjawab benar</p>
          </div>
          <div className="w-10 h-10 rounded-xl bg-emerald-50 text-emerald-600 flex items-center justify-center">
            <TrendingUp className="w-5 h-5" />
          </div>
        </div>
      </div>

      {/* Filter Tabs & Search */}
      <div className="bg-white rounded-2xl border border-slate-200 p-4 shadow-xs space-y-3">
        <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-3">
          {/* Filter Tabs */}
          <div className="flex flex-wrap items-center gap-1.5 text-xs">
            <button
              onClick={() => setFilterMode('all')}
              className={`px-3 py-1.5 rounded-xl font-semibold transition ${
                filterMode === 'all'
                  ? 'bg-slate-900 text-white shadow-xs'
                  : 'text-slate-600 hover:bg-slate-100'
              }`}
            >
              Semua ({initialItems.length})
            </button>

            <button
              onClick={() => setFilterMode('needs_review')}
              className={`px-3 py-1.5 rounded-xl font-semibold transition flex items-center gap-1.5 ${
                filterMode === 'needs_review'
                  ? 'bg-rose-600 text-white shadow-xs'
                  : 'bg-rose-50 text-rose-700 hover:bg-rose-100'
              }`}
            >
              <AlertTriangle className="w-3.5 h-3.5" />
              <span>Perlu Dicek ({needsReviewCount})</span>
            </button>

            <button
              onClick={() => setFilterMode('hard')}
              className={`px-3 py-1.5 rounded-xl font-semibold transition ${
                filterMode === 'hard'
                  ? 'bg-amber-600 text-white shadow-xs'
                  : 'text-slate-600 hover:bg-slate-100'
              }`}
            >
              &lt; 20% Benar ({hardCount})
            </button>

            <button
              onClick={() => setFilterMode('easy')}
              className={`px-3 py-1.5 rounded-xl font-semibold transition ${
                filterMode === 'easy'
                  ? 'bg-emerald-600 text-white shadow-xs'
                  : 'text-slate-600 hover:bg-slate-100'
              }`}
            >
              &gt; 95% Benar ({easyCount})
            </button>

            <button
              onClick={() => setFilterMode('low_data')}
              className={`px-3 py-1.5 rounded-xl font-semibold transition ${
                filterMode === 'low_data'
                  ? 'bg-slate-700 text-white shadow-xs'
                  : 'text-slate-600 hover:bg-slate-100'
              }`}
            >
              Data &lt; 5 Sesi
            </button>
          </div>

          {/* Subtes Filter */}
          <select
            value={subtesFilter}
            onChange={(e) => setSubtesFilter(e.target.value)}
            className="p-1.5 px-3 rounded-xl border border-slate-200 text-xs font-semibold text-slate-700 bg-white"
          >
            <option value="all">Semua Subtes</option>
            <option value="TWK">TWK</option>
            <option value="TIU">TIU</option>
            <option value="TKP">TKP</option>
          </select>
        </div>

        {/* Search */}
        <div className="relative">
          <Search className="w-4 h-4 text-slate-400 absolute left-3.5 top-3" />
          <input
            type="text"
            value={search}
            onChange={(e) => setSearch(e.target.value)}
            placeholder="Cari berdasarkan topik atau teks soal..."
            className="w-full pl-10 pr-4 py-2 rounded-xl border border-slate-200 text-xs sm:text-sm focus:outline-none focus:border-indigo-600"
          />
        </div>
      </div>

      {/* Tabel Kualitas Soal */}
      <div className="bg-white rounded-2xl border border-slate-200 overflow-hidden shadow-xs">
        <div className="overflow-x-auto">
          <table className="min-w-full divide-y divide-slate-100 text-xs">
            <thead className="bg-slate-50 text-slate-500 font-bold uppercase tracking-wider text-[10px]">
              <tr>
                <th className="py-3 px-3 text-left w-16">No</th>
                <th className="py-3 px-2 text-left w-20">Subtes</th>
                <th className="py-3 px-2 text-left w-28">Topik</th>
                <th className="py-3 px-3 text-left">Potongan Soal</th>
                <th className="py-3 px-2 text-center w-16">Kunci</th>
                <th className="py-3 px-3 text-center w-28">Total Dijawab</th>
                <th className="py-3 px-3 text-left w-36">Persen Benar</th>
                <th className="py-3 px-3 text-left w-48">Status Evaluasi</th>
                <th className="py-3 px-3 text-right w-16">Aksi</th>
              </tr>
            </thead>
            <tbody className="divide-y divide-slate-100 text-slate-700">
              {filteredItems.length === 0 ? (
                <tr>
                  <td colSpan={9} className="py-12 text-center text-slate-400">
                    Tidak ditemukan data yang sesuai dengan filter.
                  </td>
                </tr>
              ) : (
                filteredItems.map((item) => {
                  const hasEnoughData = item.totalDijawab >= 5;

                  return (
                    <tr
                      key={item.id}
                      className={`hover:bg-slate-50/70 transition ${
                        item.needsReview ? 'bg-rose-50/30' : ''
                      }`}
                    >
                      <td className="py-3 px-3 font-mono font-bold text-slate-800">
                        #{item.nomor}
                      </td>

                      <td className="py-3 px-2">
                        <span className="font-bold text-[10px] px-2 py-0.5 rounded-md bg-slate-100 text-slate-800">
                          {item.subtes}
                        </span>
                      </td>

                      <td className="py-3 px-2 font-medium text-slate-600 truncate max-w-[120px]">
                        {item.topik || '-'}
                      </td>

                      <td className="py-3 px-3">
                        <div className="line-clamp-2 text-slate-900 leading-snug">
                          {item.soal}
                        </div>
                      </td>

                      <td className="py-3 px-2 text-center font-bold text-indigo-700">
                        {item.kunci || (item.subtes === 'TKP' ? '1-5' : '-')}
                      </td>

                      <td className="py-3 px-3 text-center font-mono">
                        <span className="font-bold text-slate-900">{item.totalDijawab}</span>
                        <span className="text-[10px] text-slate-400 block">
                          ({item.jumlahBenar} benar)
                        </span>
                      </td>

                      <td className="py-3 px-3">
                        {hasEnoughData ? (
                          <div>
                            <div className="flex items-center justify-between font-bold text-[11px] mb-1">
                              <span
                                className={
                                  item.persenBenar < 20
                                    ? 'text-rose-600'
                                    : item.persenBenar > 95
                                    ? 'text-emerald-600'
                                    : 'text-indigo-600'
                                }
                              >
                                {item.persenBenar}%
                              </span>
                            </div>
                            <div className="w-full bg-slate-100 h-2 rounded-full overflow-hidden">
                              <div
                                className={`h-full rounded-full ${
                                  item.persenBenar < 20
                                    ? 'bg-rose-500'
                                    : item.persenBenar > 95
                                    ? 'bg-emerald-500'
                                    : 'bg-indigo-600'
                                }`}
                                style={{ width: `${item.persenBenar}%` }}
                              />
                            </div>
                          </div>
                        ) : (
                          <span className="text-[11px] text-slate-400 italic">
                            Belum cukup data
                          </span>
                        )}
                      </td>

                      <td className="py-3 px-3">
                        {item.needsReview ? (
                          <div className="inline-flex items-center gap-1.5 px-2.5 py-1 rounded-xl bg-rose-100 text-rose-800 font-bold text-[10px] border border-rose-200">
                            <AlertTriangle className="w-3.5 h-3.5 text-rose-600 shrink-0" />
                            <span>{item.reviewReason}</span>
                          </div>
                        ) : hasEnoughData ? (
                          <span className="inline-flex items-center gap-1 text-emerald-700 font-semibold text-[11px]">
                            <CheckCircle2 className="w-3.5 h-3.5" />
                            <span>Ideal</span>
                          </span>
                        ) : (
                          <span className="inline-flex items-center gap-1 text-slate-400 text-[11px]">
                            <Clock className="w-3.5 h-3.5" />
                            <span>&lt; 5 pengerjaan</span>
                          </span>
                        )}
                      </td>

                      <td className="py-3 px-3 text-right">
                        <Link
                          href={`/admin/soal/${item.id}`}
                          className="p-1.5 rounded-lg text-slate-500 hover:text-indigo-600 hover:bg-indigo-50 transition inline-block"
                          title="Periksa / Edit Soal"
                        >
                          <Edit3 className="w-4 h-4" />
                        </Link>
                      </td>
                    </tr>
                  );
                })
              )}
            </tbody>
          </table>
        </div>
      </div>
    </div>
  );
};
