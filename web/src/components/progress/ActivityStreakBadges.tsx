'use client';

import React from 'react';
import { ActivityDay, BadgeItem } from '@/lib/progress-service';
import {
  Flame,
  Award,
  CheckCircle2,
  Lock,
  Calendar,
  Sparkles,
} from 'lucide-react';

interface ActivityStreakBadgesProps {
  streakHarian: number;
  activityDays: ActivityDay[];
  badges: BadgeItem[];
}

export const ActivityStreakBadges: React.FC<ActivityStreakBadgesProps> = ({
  streakHarian,
  activityDays,
  badges,
}) => {
  return (
    <div className="grid grid-cols-1 lg:grid-cols-2 gap-5">
      {/* 1. Peta Aktivitas 12 Minggu Terakhir (CSS Grid murni) */}
      <div className="bg-white rounded-3xl border border-slate-200/90 p-5 sm:p-6 shadow-xs space-y-4">
        <div className="flex items-center justify-between">
          <div>
            <h2 className="text-sm font-bold text-slate-900 flex items-center gap-2">
              <Calendar className="w-4 h-4 text-indigo-600 shrink-0" />
              <span>Peta Aktivitas 12 Minggu</span>
            </h2>
            <p className="text-[11px] text-slate-500">
              Konsistensi pengerjaan soal selama 84 hari terakhir
            </p>
          </div>

          <div className="inline-flex items-center gap-1.5 px-3 py-1 rounded-xl bg-orange-50 text-orange-700 border border-orange-200 text-xs font-bold">
            <Flame className="w-3.5 h-3.5 text-orange-500 shrink-0" />
            <span>Streak {streakHarian} Hari</span>
          </div>
        </div>

        {/* Grid 12 Kolom x 7 Baris (84 kotak) */}
        <div className="overflow-x-auto pb-2">
          <div className="inline-grid grid-rows-7 grid-flow-col gap-1.5 p-2 bg-slate-50/70 rounded-2xl border border-slate-100 min-w-max">
            {activityDays.map((day) => {
              let bg = 'bg-slate-200';
              if (day.level === 1) bg = 'bg-emerald-300';
              else if (day.level === 2) bg = 'bg-emerald-500';
              else if (day.level === 3) bg = 'bg-emerald-700';

              return (
                <div
                  key={day.dateStr}
                  title={`${day.dateStr}: ${day.count} soal dikerjakan`}
                  className={`w-3.5 h-3.5 rounded-sm transition-transform hover:scale-125 cursor-pointer ${bg}`}
                />
              );
            })}
          </div>
        </div>

        {/* Legend */}
        <div className="flex items-center justify-between text-[11px] text-slate-400 pt-1">
          <span>&ge; 10 soal/hari untuk menjaga streak</span>
          <div className="flex items-center gap-1.5">
            <span>Kurang</span>
            <div className="w-2.5 h-2.5 rounded-xs bg-slate-200" />
            <div className="w-2.5 h-2.5 rounded-xs bg-emerald-300" />
            <div className="w-2.5 h-2.5 rounded-xs bg-emerald-500" />
            <div className="w-2.5 h-2.5 rounded-xs bg-emerald-700" />
            <span>Banyak</span>
          </div>
        </div>
      </div>

      {/* 2. Koleksi Lencana Capaian (Badges) */}
      <div className="bg-white rounded-3xl border border-slate-200/90 p-5 sm:p-6 shadow-xs space-y-4">
        <div>
          <h2 className="text-sm font-bold text-slate-900 flex items-center gap-2">
            <Award className="w-4 h-4 text-amber-500 shrink-0" />
            <span>Lencana Capaian Belajar</span>
          </h2>
          <p className="text-[11px] text-slate-500">
            Dihitung otomatis dari akumulasi pencapaian dan konsistensi Anda
          </p>
        </div>

        <div className="space-y-2.5">
          {badges.map((b) => (
            <div
              key={b.id}
              className={`p-3 rounded-2xl border flex items-center justify-between gap-3 transition ${
                b.achieved
                  ? 'border-amber-200 bg-amber-50/40 text-slate-900'
                  : 'border-slate-100 bg-slate-50/50 text-slate-400 opacity-70'
              }`}
            >
              <div className="flex items-center gap-3 min-w-0">
                <div
                  className={`w-9 h-9 rounded-xl flex items-center justify-center shrink-0 ${
                    b.achieved
                      ? 'bg-amber-100 text-amber-700 border border-amber-300 shadow-xs'
                      : 'bg-slate-200 text-slate-400'
                  }`}
                >
                  {b.achieved ? (
                    <Award className="w-5 h-5 shrink-0" />
                  ) : (
                    <Lock className="w-4 h-4 shrink-0" />
                  )}
                </div>

                <div className="min-w-0">
                  <div className="flex items-center gap-2">
                    <h3 className="font-bold text-xs truncate">{b.title}</h3>
                    {b.achieved && (
                      <CheckCircle2 className="w-3.5 h-3.5 text-emerald-600 shrink-0" />
                    )}
                  </div>
                  <p className="text-[11px] text-slate-500 line-clamp-1">
                    {b.description}
                  </p>
                </div>
              </div>

              <div className="text-right shrink-0">
                <span
                  className={`inline-block text-[10px] font-bold px-2 py-0.5 rounded-full ${
                    b.achieved
                      ? 'bg-emerald-100 text-emerald-800'
                      : 'bg-slate-200 text-slate-600'
                  }`}
                >
                  {b.progressText}
                </span>
              </div>
            </div>
          ))}
        </div>
      </div>
    </div>
  );
};
