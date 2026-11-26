'use client';

import React, { useState } from 'react';
import { MistakeQuestionItem } from '@/lib/progress-service';
import {
  RotateCcw,
  CheckCircle2,
  XCircle,
  Filter,
  ArrowRight,
  ShieldCheck,
  Calendar,
  Layers,
  Search,
} from 'lucide-react';

interface MistakeBankProps {
  perluDilatih: MistakeQuestionItem[];
  dikuasai: MistakeQuestionItem[];
  onStartRetryMode: () => void;
}

export const MistakeBank: React.FC<MistakeBankProps> = ({
  perluDilatih,
  dikuasai,
  onStartRetryMode,
}) => {
  const [activeTab, setActiveTab] = useState<'perlu_dilatih' | 'dikuasai'>('perlu_dilatih');
  const [subtesFilter, setSubtesFilter] = useState<string>('all');
  const [search, setSearch] = useState('');

  const currentList = activeTab === 'perlu_dilatih' ? perluDilatih : dikuasai;

  const filteredList = currentList.filter((item) => {
    if (subtesFilter !== 'all' && item.subtes !== subtesFilter) return false;
    if (search.trim()) {
      const q = search.toLowerCase();
      const matchSoal = item.soal.toLowerCase().includes(q);
      const matchTopik = item.topik?.toLowerCase().includes(q);
      if (!matchSoal && !matchTopik) return false;
    }
    return true;
  });

  return (
    <div className="bg-white rounded-3xl border border-slate-200/90 p-5 sm:p-6 shadow-xs space-y-4">
      {/* Header & Tabs */}
      <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-3">
        <div>
          <h2 className="text-sm font-bold text-slate-900 flex items-center gap-2">
            <RotateCcw className="w-4 h-4 text-rose-500 shrink-0" />
            <span>Bank Soal Salah & Remediasi</span>
          </h2>
          <p className="text-[11px] text-slate-500">
            Kumpulan soal yang pernah dijawab keliru. Soal berstatus <strong>Dikuasai</strong> jika dijawab benar 2 kali beruntun pada percobaan terbaru.
          </p>
        </div>

        {/* Tab Toggle */}
        <div className="flex items-center p-1 bg-slate-100 rounded-xl text-xs self-start sm:self-auto">
          <button
            onClick={() => setActiveTab('perlu_dilatih')}
            className={`px-3 py-1.5 rounded-lg font-semibold transition flex items-center gap-1.5 ${
              activeTab === 'perlu_dilatih'
                ? 'bg-rose-600 text-white shadow-xs'
                : 'text-slate-600 hover:text-slate-900'
            }`}
          >
            <XCircle className="w-3.5 h-3.5 shrink-0" />
            <span>Perlu Dilatih ({perluDilatih.length})</span>
          </button>

          <button
            onClick={() => setActiveTab('dikuasai')}
            className={`px-3 py-1.5 rounded-lg font-semibold transition flex items-center gap-1.5 ${
              activeTab === 'dikuasai'
                ? 'bg-emerald-600 text-white shadow-xs'
                : 'text-slate-600 hover:text-slate-900'
            }`}
          >
            <CheckCircle2 className="w-3.5 h-3.5 shrink-0" />
            <span>Dikuasai ({dikuasai.length})</span>
          </button>
        </div>
      </div>

      {/* Action CTA & Filter Bar */}
      <div className="p-4 rounded-2xl bg-slate-50 border border-slate-100 flex flex-col sm:flex-row sm:items-center justify-between gap-3">
        <div className="flex flex-wrap items-center gap-2 flex-1">
          {/* Subtes Filter */}
          <select
            value={subtesFilter}
            onChange={(e) => setSubtesFilter(e.target.value)}
            className="p-1.5 px-2.5 rounded-xl border border-slate-200 text-xs font-semibold bg-white text-slate-700"
          >
            <option value="all">Semua Subtes</option>
            <option value="TWK">TWK</option>
            <option value="TIU">TIU</option>
            <option value="TKP">TKP</option>
          </select>

          {/* Search */}
          <div className="relative flex-1 min-w-[150px]">
            <input
              type="text"
              value={search}
              onChange={(e) => setSearch(e.target.value)}
              placeholder="Cari teks soal atau topik..."
              className="w-full p-1.5 px-3 rounded-xl border border-slate-200 text-xs bg-white focus:outline-none focus:border-indigo-600"
            />
          </div>
        </div>

        {/* CTA Button */}
        {activeTab === 'perlu_dilatih' && perluDilatih.length > 0 && (
          <button
            onClick={onStartRetryMode}
            className="px-4 py-2 rounded-xl bg-rose-600 hover:bg-rose-700 text-white text-xs font-bold shadow-xs transition flex items-center justify-center gap-1.5 shrink-0"
          >
            <RotateCcw className="w-3.5 h-3.5 shrink-0" />
            <span>Latihkan Semua Soal Belum Dikuasai</span>
          </button>
        )}
      </div>

      {/* List Soal */}
      {filteredList.length === 0 ? (
        <div className="p-8 text-center text-slate-400 text-xs">
          {activeTab === 'perlu_dilatih'
            ? 'Tidak ada butir soal yang perlu dilatih ulang. Kerja bagus!'
            : 'Belum ada soal yang berstatus dikuasai (jawab benar 2 kali berurutan untuk memasukkannya ke sini).'}
        </div>
      ) : (
        <div className="divide-y divide-slate-100 max-h-96 overflow-y-auto">
          {filteredList.map((item) => (
            <div
              key={item.questionId}
              className="py-3 px-2 flex flex-col sm:flex-row sm:items-center justify-between gap-3 text-xs hover:bg-slate-50/60 rounded-xl transition"
            >
              <div className="min-w-0 flex-1">
                <div className="flex items-center gap-2 mb-1">
                  <span
                    className={`text-[10px] font-bold px-2 py-0.5 rounded-md ${
                      item.subtes === 'TWK'
                        ? 'bg-emerald-50 text-emerald-700'
                        : item.subtes === 'TIU'
                        ? 'bg-blue-50 text-blue-700'
                        : 'bg-amber-50 text-amber-700'
                    }`}
                  >
                    {item.subtes}
                  </span>
                  {item.topik && (
                    <span className="text-[11px] text-slate-600 font-semibold truncate">
                      {item.topik}
                    </span>
                  )}
                  {item.kunci && (
                    <span className="text-[10px] text-slate-400 font-mono">
                      (Kunci: {item.kunci})
                    </span>
                  )}
                </div>

                <p className="text-slate-800 line-clamp-2 leading-relaxed">{item.soal}</p>
              </div>

              {/* Status info */}
              <div className="flex items-center gap-3 shrink-0 self-start sm:self-center text-[11px]">
                <span className="font-semibold px-2 py-1 rounded-lg bg-rose-50 text-rose-700">
                  {item.timesWrong}x Keliru
                </span>
                <span className="text-slate-400">
                  Terakhir: {item.lastWrongDate}
                </span>
                {item.isMastered && (
                  <span className="px-2 py-1 rounded-lg bg-emerald-50 text-emerald-700 font-bold flex items-center gap-1">
                    <CheckCircle2 className="w-3 h-3 text-emerald-600 shrink-0" />
                    <span>Dikuasai</span>
                  </span>
                )}
              </div>
            </div>
          ))}
        </div>
      )}
    </div>
  );
};
