import React from 'react';
import { Loader2 } from 'lucide-react';

export default function RootLoading() {
  return (
    <div className="min-h-[50vh] flex flex-col items-center justify-center space-y-3 p-8 animate-in fade-in">
      <Loader2 className="w-8 h-8 text-indigo-600 animate-spin" />
      <span className="text-xs font-semibold text-slate-500">Memuat halaman...</span>
    </div>
  );
}
