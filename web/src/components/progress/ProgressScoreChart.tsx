'use client';

import React, { useState, useEffect } from 'react';
import {
  ResponsiveContainer,
  LineChart,
  Line,
  XAxis,
  YAxis,
  Tooltip,
  CartesianGrid,
  ReferenceLine,
  Legend,
} from 'recharts';
import { ScoreTrendItem } from '@/lib/progress-service';
import { PASSING_GRADE } from '@/lib/config';
import { TrendingUp, Filter } from 'lucide-react';

interface ProgressScoreChartProps {
  data: ScoreTrendItem[];
}

export const ProgressScoreChart: React.FC<ProgressScoreChartProps> = ({ data }) => {
  const [mounted, setMounted] = useState(false);
  const [filterMode, setFilterMode] = useState<'last10' | 'all'>('last10');

  useEffect(() => {
    setMounted(true);
  }, []);

  if (!mounted) {
    return <div className="w-full h-64 bg-slate-50/50 rounded-2xl animate-pulse" />;
  }

  if (!data || data.length === 0) {
    return (
      <div className="bg-white rounded-3xl border border-slate-200 p-8 text-center text-slate-400">
        <p className="text-xs">Belum ada riwayat skor try out yang tercatat.</p>
      </div>
    );
  }

  const displayedData = filterMode === 'last10' ? data.slice(-10) : data;

  const chartFormatted = displayedData.map((item, idx) => ({
    name: `#${idx + 1}`,
    tanggal: item.tanggal,
    Total: item.skorTotal,
    TWK: item.skorTwk,
    TIU: item.skorTiu,
  }));

  return (
    <div className="bg-white rounded-3xl border border-slate-200/90 p-5 sm:p-6 shadow-xs space-y-4">
      {/* Header & Filter */}
      <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-3">
        <div>
          <h2 className="text-sm font-bold text-slate-900 flex items-center gap-2">
            <TrendingUp className="w-4 h-4 text-indigo-600 shrink-0" />
            <span>Tren Perkembangan Skor Try Out</span>
          </h2>
          <p className="text-[11px] text-slate-500">
            Perbandingan skor TWK, TIU, dan total dengan nilai ambang batas passing grade
          </p>
        </div>

        {/* Filter Toggle */}
        <div className="flex items-center p-1 bg-slate-100 rounded-xl text-xs self-start sm:self-auto">
          <button
            onClick={() => setFilterMode('last10')}
            className={`px-3 py-1 rounded-lg font-semibold transition ${
              filterMode === 'last10' ? 'bg-white text-indigo-700 shadow-xs' : 'text-slate-500'
            }`}
          >
            10 Terakhir
          </button>
          <button
            onClick={() => setFilterMode('all')}
            className={`px-3 py-1 rounded-lg font-semibold transition ${
              filterMode === 'all' ? 'bg-white text-indigo-700 shadow-xs' : 'text-slate-500'
            }`}
          >
            Semua ({data.length})
          </button>
        </div>
      </div>

      {/* Chart */}
      <div className="w-full h-64 sm:h-72 pt-2">
        <ResponsiveContainer width="100%" height="100%">
          <LineChart data={chartFormatted} margin={{ top: 10, right: 10, left: -20, bottom: 5 }}>
            <CartesianGrid strokeDasharray="3 3" stroke="#f1f5f9" />
            <XAxis
              dataKey="name"
              tick={{ fontSize: 11, fill: '#64748b' }}
              tickLine={false}
              axisLine={{ stroke: '#e2e8f0' }}
            />
            <YAxis
              domain={[0, 'auto']}
              tick={{ fontSize: 11, fill: '#64748b' }}
              tickLine={false}
              axisLine={{ stroke: '#e2e8f0' }}
            />
            <Tooltip
              content={({ active, payload }) => {
                if (active && payload && payload.length) {
                  const item = payload[0].payload;
                  return (
                    <div className="bg-slate-900 text-white text-xs rounded-xl p-3 shadow-xl border border-slate-800 space-y-1">
                      <p className="text-[11px] text-slate-400">{item.tanggal}</p>
                      <p className="font-black text-amber-300 text-sm">Total: {item.Total} Poin</p>
                      <div className="flex items-center gap-3 pt-1 border-t border-slate-800 text-[11px]">
                        <span className="text-emerald-400">TWK: {item.TWK}</span>
                        <span className="text-blue-400">TIU: {item.TIU}</span>
                      </div>
                    </div>
                  );
                }
                return null;
              }}
            />
            <Legend wrapperStyle={{ fontSize: 11, paddingTop: 8 }} />

            {/* Reference Lines untuk Passing Grade */}
            <ReferenceLine
              y={PASSING_GRADE.TIU}
              stroke="#94a3b8"
              strokeDasharray="4 4"
              label={{
                value: `PG TIU ${PASSING_GRADE.TIU}`,
                fill: '#64748b',
                fontSize: 10,
                position: 'insideTopLeft',
              }}
            />
            <ReferenceLine
              y={PASSING_GRADE.TWK}
              stroke="#cbd5e1"
              strokeDasharray="4 4"
              label={{
                value: `PG TWK ${PASSING_GRADE.TWK}`,
                fill: '#94a3b8',
                fontSize: 10,
                position: 'insideBottomLeft',
              }}
            />

            {/* Lines */}
            <Line
              type="monotone"
              dataKey="Total"
              stroke="#4f46e5"
              strokeWidth={3}
              dot={{ r: 4, fill: '#4f46e5', strokeWidth: 1, stroke: '#ffffff' }}
              activeDot={{ r: 6 }}
            />
            <Line
              type="monotone"
              dataKey="TIU"
              stroke="#0284c7"
              strokeWidth={2}
              dot={{ r: 3, fill: '#0284c7' }}
            />
            <Line
              type="monotone"
              dataKey="TWK"
              stroke="#10b981"
              strokeWidth={2}
              dot={{ r: 3, fill: '#10b981' }}
            />
          </LineChart>
        </ResponsiveContainer>
      </div>
    </div>
  );
};
