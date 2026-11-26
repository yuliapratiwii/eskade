'use client';

import React from 'react';
import { LearningPriorityItem } from '@/lib/progress-service';
import {
  Flame,
  AlertTriangle,
  Clock,
  ArrowRight,
  Sparkles,
  CheckCircle2,
  BookOpen,
} from 'lucide-react';

interface LearningPrioritiesProps {
  priorities: LearningPriorityItem[];
  onSelectPracticeTopic: (subtes: string, topik: string) => void;
}

export const LearningPriorities: React.FC<LearningPrioritiesProps> = ({
  priorities,
  onSelectPracticeTopic,
}) => {
  if (priorities.length === 0) {
    return (
      <div className="bg-white rounded-3xl border border-slate-200/90 p-6 shadow-xs text-center space-y-2">
        <div className="w-10 h-10 rounded-2xl bg-emerald-50 text-emerald-600 flex items-center justify-center mx-auto">
          <CheckCircle2 className="w-5 h-5 shrink-0" />
        </div>
        <h3 className="font-bold text-slate-800 text-sm">Tidak Ada Topik Kritis</h3>
        <p className="text-xs text-slate-500 max-w-md mx-auto">
          Luar biasa! Seluruh topik yang Anda kerjakan memiliki akurasi di atas 60% dan kecepatan pengerjaan memenuhi standar.
        </p>
      </div>
    );
  }

  return (
    <div className="bg-white rounded-3xl border border-slate-200/90 p-5 sm:p-6 shadow-xs space-y-4">
      <div>
        <div className="flex items-center gap-2">
          <span className="w-2 h-2 rounded-full bg-rose-500 animate-ping" />
          <h2 className="text-sm font-bold text-slate-900 flex items-center gap-2">
            <Flame className="w-4 h-4 text-rose-500 shrink-0" />
            <span>5 Prioritas Belajar Utama</span>
          </h2>
        </div>
        <p className="text-[11px] text-slate-500 mt-0.5">
          Topik yang paling mendesak untuk dilatih ulang karena akurasi rendah (&lt; 60%) atau waktu pengerjaan terlalu lama (&gt; 55 detik).
        </p>
      </div>

      <div className="grid grid-cols-1 md:grid-cols-2 gap-3">
        {priorities.map((item, idx) => {
          const bothFailed = item.isLowAccuracy && item.isSlow;

          return (
            <div
              key={`${item.subtes}-${item.topik}`}
              className="p-4 rounded-2xl border border-slate-200 bg-slate-50/50 hover:bg-white hover:border-indigo-400 hover:shadow-xs transition flex flex-col justify-between"
            >
              <div>
                <div className="flex items-center justify-between gap-2 mb-2">
                  <span className="text-[10px] font-mono font-bold px-2 py-0.5 rounded-md bg-slate-200 text-slate-700">
                    Prioritas #{idx + 1}
                  </span>
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
                </div>

                <h3 className="font-bold text-slate-900 text-sm">{item.topik}</h3>

                {/* Masalah terdeteksi */}
                <div className="flex flex-wrap items-center gap-2 mt-2">
                  {item.isLowAccuracy && (
                    <span className="inline-flex items-center gap-1 text-[10px] font-bold px-2 py-0.5 rounded-md bg-rose-50 text-rose-700 border border-rose-200">
                      <AlertTriangle className="w-3 h-3 shrink-0" />
                      <span>Akurasi {item.akurasi}%</span>
                    </span>
                  )}

                  {item.isSlow && (
                    <span className="inline-flex items-center gap-1 text-[10px] font-bold px-2 py-0.5 rounded-md bg-amber-50 text-amber-800 border border-amber-200">
                      <Clock className="w-3 h-3 shrink-0" />
                      <span>{item.rataRataWaktuDetik}d / soal</span>
                    </span>
                  )}

                  {bothFailed && (
                    <span className="text-[10px] font-bold text-rose-600 bg-rose-100 px-2 py-0.5 rounded-md">
                      Kritis
                    </span>
                  )}
                </div>
              </div>

              <button
                onClick={() => onSelectPracticeTopic(item.subtes, item.topik)}
                className="mt-4 w-full py-2 px-3 rounded-xl bg-indigo-600 hover:bg-indigo-700 text-white text-xs font-bold transition flex items-center justify-center gap-1.5 shadow-xs"
              >
                <BookOpen className="w-3.5 h-3.5 shrink-0" />
                <span>Latihan Topik Ini</span>
                <ArrowRight className="w-3.5 h-3.5 shrink-0" />
              </button>
            </div>
          );
        })}
      </div>
    </div>
  );
};
