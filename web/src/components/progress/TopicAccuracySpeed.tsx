'use client';

import React, { useState } from 'react';
import { TopicStatItem } from '@/lib/progress-service';
import { TARGET_SECONDS_PER_QUESTION } from '@/lib/config';
import {
  Layers,
  Clock,
  AlertTriangle,
  CheckCircle2,
  Filter,
  BarChart2,
} from 'lucide-react';

interface TopicAccuracySpeedProps {
  topics: TopicStatItem[];
}

export const TopicAccuracySpeed: React.FC<TopicAccuracySpeedProps> = ({ topics }) => {
  const [subtesFilter, setSubtesFilter] = useState<string>('all');

  const filteredTopics = topics.filter((t) => {
    if (subtesFilter !== 'all' && t.subtes !== subtesFilter) return false;
    return true;
  });

  return (
    <div className="bg-white rounded-3xl border border-slate-200/90 p-5 sm:p-6 shadow-xs space-y-4">
      {/* Header & Subtes Filter */}
      <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-3">
        <div>
          <h2 className="text-sm font-bold text-slate-900 flex items-center gap-2">
            <BarChart2 className="w-4 h-4 text-indigo-600 shrink-0" />
            <span>Akurasi & Kecepatan per Topik</span>
          </h2>
          <p className="text-[11px] text-slate-500">
            Diurutkan dari topik dengan akurasi terendah untuk memetakan kelemahan belajar
          </p>
        </div>

        {/* Subtes Tabs */}
        <div className="flex items-center p-1 bg-slate-100 rounded-xl text-xs self-start sm:self-auto">
          {['all', 'TWK', 'TIU', 'TKP'].map((sub) => (
            <button
              key={sub}
              onClick={() => setSubtesFilter(sub)}
              className={`px-3 py-1 rounded-lg font-semibold transition ${
                subtesFilter === sub
                  ? 'bg-white text-indigo-700 shadow-xs'
                  : 'text-slate-500 hover:text-slate-900'
              }`}
            >
              {sub === 'all' ? 'Semua' : sub}
            </button>
          ))}
        </div>
      </div>

      {/* Target Kecepatan Info */}
      <div className="p-3 rounded-2xl bg-slate-50 border border-slate-100 flex items-center justify-between text-xs text-slate-600">
        <span className="flex items-center gap-1.5">
          <Clock className="w-4 h-4 text-slate-400 shrink-0" />
          <span>Target Waktu Standar CAT: <strong>{TARGET_SECONDS_PER_QUESTION} detik/soal</strong></span>
        </span>
        <span className="text-[11px] text-slate-400 hidden sm:inline">
          (Dihitung dari 100 menit / 110 butir soal)
        </span>
      </div>

      {/* List Bar Horizontal */}
      {filteredTopics.length === 0 ? (
        <div className="p-8 text-center text-slate-400 text-xs">
          Belum ada riwayat pengerjaan untuk subtes ini.
        </div>
      ) : (
        <div className="space-y-4 pt-1">
          {filteredTopics.map((item) => {
            const isCritical = item.akurasi < 60 && !item.isLowData;

            return (
              <div
                key={`${item.subtes}-${item.topik}`}
                className="space-y-1.5 p-3 rounded-2xl border border-slate-100 hover:border-slate-200 transition bg-slate-50/30"
              >
                <div className="flex flex-wrap items-center justify-between gap-2 text-xs">
                  <div className="flex items-center gap-2">
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
                    <span className="font-bold text-slate-900">{item.topik}</span>
                    {item.isLowData && (
                      <span className="text-[10px] px-2 py-0.5 rounded-full bg-slate-100 text-slate-500 font-medium">
                        data masih sedikit (&lt; 3 soal)
                      </span>
                    )}
                  </div>

                  {/* Kecepatan badge */}
                  <div className="flex items-center gap-2">
                    <span
                      className={`inline-flex items-center gap-1 text-[11px] font-semibold px-2.5 py-0.5 rounded-full ${
                        item.isSlow
                          ? 'bg-rose-50 text-rose-700 border border-rose-200'
                          : 'bg-slate-100 text-slate-600'
                      }`}
                      title={item.isSlow ? 'Lebih lambat dari target 55s' : 'Kecepatan ideal'}
                    >
                      <Clock className="w-3 h-3 shrink-0" />
                      <span>{item.rataRataWaktuDetik}d / soal</span>
                      {item.isSlow && <span className="font-bold text-rose-600">(Lambat)</span>}
                    </span>

                    <span className="font-black text-slate-900 min-w-[3rem] text-right">
                      {item.akurasi}%
                    </span>
                  </div>
                </div>

                {/* Progress bar visual */}
                <div className="w-full bg-slate-100 h-2.5 rounded-full overflow-hidden flex">
                  <div
                    className={`h-full rounded-full transition-all duration-500 ${
                      item.akurasi < 60
                        ? 'bg-rose-500'
                        : item.akurasi < 80
                        ? 'bg-amber-500'
                        : 'bg-emerald-500'
                    }`}
                    style={{ width: `${Math.max(item.akurasi, 4)}%` }}
                  />
                </div>

                <div className="flex items-center justify-between text-[11px] text-slate-400">
                  <span>
                    {item.jumlahBenar} benar dari {item.totalDijawab} soal
                  </span>
                  {isCritical && (
                    <span className="text-rose-600 font-bold flex items-center gap-1">
                      <AlertTriangle className="w-3 h-3 shrink-0" />
                      <span>Perlu peningkatan materi</span>
                    </span>
                  )}
                </div>
              </div>
            );
          })}
        </div>
      )}
    </div>
  );
};
