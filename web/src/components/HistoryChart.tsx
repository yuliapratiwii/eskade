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
} from 'recharts';

interface HistoryItem {
  id: string;
  tanggal: string;
  mode: string;
  skor: number;
}

interface HistoryChartProps {
  data: HistoryItem[];
}

export const HistoryChart: React.FC<HistoryChartProps> = ({ data }) => {
  const [mounted, setMounted] = useState(false);

  useEffect(() => {
    setMounted(true);
  }, []);

  if (!mounted) {
    return <div className="w-full h-52 sm:h-60 bg-slate-50/50 rounded-xl animate-pulse" />;
  }

  if (!data || data.length === 0) {
    return (
      <div className="h-44 flex flex-col items-center justify-center text-slate-400 text-xs sm:text-sm">
        <p>Belum ada data grafik riwayat.</p>
        <p className="text-slate-400 text-[11px] mt-0.5">Selesaikan sesi try out untuk melihat tren nilai.</p>
      </div>
    );
  }

  // Format data for chart
  const formattedData = data.map((item, idx) => ({
    name: `#${idx + 1}`,
    tanggal: item.tanggal,
    skor: item.skor,
    mode: item.mode,
  }));

  return (
    <div className="w-full h-52 sm:h-60 pt-2">
      <ResponsiveContainer width="100%" height="100%">
        <LineChart data={formattedData} margin={{ top: 10, right: 10, left: -20, bottom: 5 }}>
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
                  <div className="bg-slate-900 text-white text-xs rounded-lg p-2.5 shadow-lg border border-slate-800">
                    <p className="font-semibold">{item.mode}</p>
                    <p className="text-slate-300 text-[11px]">{item.tanggal}</p>
                    <p className="text-amber-400 font-bold mt-1">Skor: {item.skor}</p>
                  </div>
                );
              }
              return null;
            }}
          />
          <ReferenceLine y={80} stroke="#94a3b8" strokeDasharray="4 4" label={{ value: 'PG TIU 80', fill: '#94a3b8', fontSize: 10, position: 'insideTopLeft' }} />
          <Line
            type="monotone"
            dataKey="skor"
            stroke="#4f46e5"
            strokeWidth={2.5}
            dot={{ r: 4, fill: '#4f46e5', strokeWidth: 1, stroke: '#ffffff' }}
            activeDot={{ r: 6, fill: '#4338ca' }}
          />
        </LineChart>
      </ResponsiveContainer>
    </div>
  );
};
