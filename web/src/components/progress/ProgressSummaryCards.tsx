'use client';

import React, { useState, useEffect } from 'react';
import { ProgressSummary } from '@/lib/progress-service';
import {
  Layers,
  Percent,
  Trophy,
  Flame,
  Calendar,
  CheckCircle2,
  Target,
  Clock,
  Sparkles,
} from 'lucide-react';

interface ProgressSummaryCardsProps {
  summary: ProgressSummary;
  onOpenTargetModal: () => void;
}

export const ProgressSummaryCards: React.FC<ProgressSummaryCardsProps> = ({
  summary,
  onOpenTargetModal,
}) => {
  const [dailyTarget, setDailyTarget] = useState(30);

  useEffect(() => {
    if (typeof window !== 'undefined') {
      const saved = localStorage.getItem('target_soal_harian');
      if (saved) {
        setDailyTarget(parseInt(saved) || 30);
      }
    }
  }, []);

  const dailyProgressPercent = Math.min(
    100,
    Math.round((summary.soalHariIni / dailyTarget) * 100)
  );

  return (
    <div className="space-y-3">
      {/* Target Progress Bar Banner */}
      <div className="bg-white rounded-2xl border border-slate-200/90 p-4 sm:p-5 shadow-xs flex flex-col sm:flex-row sm:items-center justify-between gap-4">
        <div className="flex items-center gap-3">
          <div className="w-10 h-10 rounded-2xl bg-indigo-50 text-indigo-600 flex items-center justify-center shrink-0">
            <Target className="w-5 h-5 shrink-0" />
          </div>
          <div>
            <div className="flex items-center gap-2">
              <span className="font-bold text-slate-900 text-sm">Target Belajar Hari Ini</span>
              <span className="text-[10px] font-bold px-2 py-0.5 rounded-md bg-indigo-50 text-indigo-700">
                {summary.soalHariIni} / {dailyTarget} Soal
              </span>
            </div>
            <div className="w-48 sm:w-64 bg-slate-100 h-2 rounded-full mt-2 overflow-hidden">
              <div
                className="h-full rounded-full bg-gradient-to-r from-indigo-500 to-indigo-600 transition-all duration-500"
                style={{ width: `${dailyProgressPercent}%` }}
              />
            </div>
          </div>
        </div>

        <button
          onClick={onOpenTargetModal}
          className="self-start sm:self-auto px-3.5 py-1.5 rounded-xl border border-slate-200 hover:bg-slate-50 text-slate-700 font-semibold text-xs transition"
        >
          Atur Target
        </button>
      </div>

      {/* Grid 6 Kartu Ringkasan */}
      <div className="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-6 gap-3">
        {/* 1. Total Soal */}
        <div className="bg-white p-4 rounded-2xl border border-slate-200/80 shadow-xs flex flex-col justify-between">
          <div className="flex items-center justify-between text-slate-400 mb-1">
            <span className="text-[10px] font-bold uppercase tracking-wider">Total Soal</span>
            <Layers className="w-4 h-4 text-indigo-500 shrink-0" />
          </div>
          <div className="text-xl sm:text-2xl font-black text-slate-900">
            {summary.totalSoalDikerjakan}
          </div>
          <p className="text-[10px] text-slate-400 mt-0.5">Semua sesi ujian</p>
        </div>

        {/* 2. Akurasi Global */}
        <div className="bg-white p-4 rounded-2xl border border-slate-200/80 shadow-xs flex flex-col justify-between">
          <div className="flex items-center justify-between text-slate-400 mb-1">
            <span className="text-[10px] font-bold uppercase tracking-wider">Akurasi</span>
            <Percent className="w-4 h-4 text-emerald-500 shrink-0" />
          </div>
          <div className="text-xl sm:text-2xl font-black text-emerald-600">
            {summary.akurasiKeseluruhan}%
          </div>
          <p className="text-[10px] text-slate-400 mt-0.5">
            {summary.totalBenar} benar
          </p>
        </div>

        {/* 3. Rata-rata 5 Try Out Terakhir */}
        <div className="bg-white p-4 rounded-2xl border border-slate-200/80 shadow-xs flex flex-col justify-between">
          <div className="flex items-center justify-between text-slate-400 mb-1">
            <span className="text-[10px] font-bold uppercase tracking-wider">Rata-rata Skor</span>
            <Trophy className="w-4 h-4 text-amber-500 shrink-0" />
          </div>
          <div className="text-xl sm:text-2xl font-black text-slate-900">
            {summary.rataRataSkorTerakhir5}
          </div>
          <p className="text-[10px] text-slate-400 mt-0.5">5 sesi terakhir</p>
        </div>

        {/* 4. Soal Hari Ini */}
        <div className="bg-white p-4 rounded-2xl border border-slate-200/80 shadow-xs flex flex-col justify-between">
          <div className="flex items-center justify-between text-slate-400 mb-1">
            <span className="text-[10px] font-bold uppercase tracking-wider">Hari Ini</span>
            <CheckCircle2 className="w-4 h-4 text-blue-500 shrink-0" />
          </div>
          <div className="text-xl sm:text-2xl font-black text-blue-600">
            {summary.soalHariIni}
          </div>
          <p className="text-[10px] text-slate-400 mt-0.5">Soal dikerjakan</p>
        </div>

        {/* 5. Streak Harian */}
        <div className="bg-white p-4 rounded-2xl border border-slate-200/80 shadow-xs flex flex-col justify-between">
          <div className="flex items-center justify-between text-slate-400 mb-1">
            <span className="text-[10px] font-bold uppercase tracking-wider">Streak</span>
            <Flame className="w-4 h-4 text-orange-500 shrink-0" />
          </div>
          <div className="text-xl sm:text-2xl font-black text-orange-600">
            {summary.streakHarian} <span className="text-xs font-semibold">Hari</span>
          </div>
          <p className="text-[10px] text-slate-400 mt-0.5">&ge; 10 soal / hari</p>
        </div>

        {/* 6. Hitung Mundur Ujian */}
        <div className="bg-white p-4 rounded-2xl border border-slate-200/80 shadow-xs flex flex-col justify-between">
          <div className="flex items-center justify-between text-slate-400 mb-1">
            <span className="text-[10px] font-bold uppercase tracking-wider">Target Ujian</span>
            <Calendar className="w-4 h-4 text-purple-500 shrink-0" />
          </div>
          <div className="text-xl sm:text-2xl font-black text-purple-600">
            {summary.daysRemainingToExam !== null ? (
              summary.daysRemainingToExam > 0 ? (
                `H-${summary.daysRemainingToExam}`
              ) : (
                'Hari H'
              )
            ) : (
              <span className="text-xs font-semibold text-slate-400">Belum diset</span>
            )}
          </div>
          <button
            onClick={onOpenTargetModal}
            className="text-[10px] text-indigo-600 hover:underline font-semibold text-left mt-0.5"
          >
            {summary.targetUjian ? summary.targetUjian : 'Atur Tanggal'}
          </button>
        </div>
      </div>
    </div>
  );
};
