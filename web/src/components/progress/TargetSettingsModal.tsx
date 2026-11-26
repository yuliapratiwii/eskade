'use client';

import { useState } from 'react';
import { createClient } from '@/lib/supabase/client';
import { X, Calendar, Target, CheckCircle2, AlertCircle } from 'lucide-react';

interface TargetSettingsModalProps {
  isOpen: boolean;
  onClose: () => void;
  currentTargetDate: string | null;
  currentDailyGoal: number;
  onTargetUpdated: (newDate: string | null, newDailyGoal: number) => void;
}

export function TargetSettingsModal({
  isOpen,
  onClose,
  currentTargetDate,
  currentDailyGoal,
  onTargetUpdated,
}: TargetSettingsModalProps) {
  const [targetDate, setTargetDate] = useState<string>(
    currentTargetDate ? currentTargetDate.split('T')[0] : ''
  );
  const [dailyGoal, setDailyGoal] = useState<number>(currentDailyGoal || 30);
  const [saving, setSaving] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [success, setSuccess] = useState(false);

  if (!isOpen) return null;

  const handleSave = async (e: React.FormEvent) => {
    e.preventDefault();
    setError(null);
    setSaving(true);
    setSuccess(false);

    try {
      const supabase = createClient();
      const { data: { user } } = await supabase.auth.getUser();

      if (!user) {
        throw new Error('Sesi login telah berakhir. Silakan login kembali.');
      }

      // 1. Simpan target_ujian ke profiles di Supabase
      const formattedDate = targetDate ? new Date(targetDate).toISOString() : null;
      const { error: profileError } = await supabase
        .from('profiles')
        .update({ target_ujian: formattedDate })
        .eq('id', user.id);

      if (profileError) {
        throw profileError;
      }

      // 2. Simpan target soal harian di localStorage
      if (typeof window !== 'undefined') {
        localStorage.setItem('target_soal_harian', String(dailyGoal));
      }

      setSuccess(true);
      onTargetUpdated(formattedDate, dailyGoal);
      setTimeout(() => {
        onClose();
        setSuccess(false);
      }, 1000);
    } catch (err: unknown) {
      const msg = err instanceof Error ? err.message : 'Gagal menyimpan target';
      setError(msg);
    } finally {
      setSaving(false);
    }
  };

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center p-4 bg-black/60 backdrop-blur-xs animate-in fade-in">
      <div className="bg-white rounded-2xl max-w-md w-full shadow-2xl overflow-hidden border border-slate-100">
        <div className="px-6 py-4 border-b border-slate-100 flex items-center justify-between bg-slate-50">
          <div className="flex items-center gap-2">
            <Target className="w-5 h-5 text-indigo-600" />
            <h3 className="font-semibold text-slate-800">Atur Target Belajar</h3>
          </div>
          <button
            onClick={onClose}
            className="text-slate-400 hover:text-slate-600 p-1 rounded-lg hover:bg-slate-200/50 transition-colors"
          >
            <X className="w-5 h-5" />
          </button>
        </div>

        <form onSubmit={handleSave} className="p-6 space-y-5">
          {error && (
            <div className="p-3 bg-red-50 border border-red-200 rounded-xl flex items-center gap-2 text-xs text-red-700">
              <AlertCircle className="w-4 h-4 shrink-0 text-red-500" />
              <span>{error}</span>
            </div>
          )}

          {success && (
            <div className="p-3 bg-emerald-50 border border-emerald-200 rounded-xl flex items-center gap-2 text-xs text-emerald-700">
              <CheckCircle2 className="w-4 h-4 shrink-0 text-emerald-500" />
              <span>Target berhasil disimpan!</span>
            </div>
          )}

          {/* Target Tanggal Ujian */}
          <div>
            <label className="block text-xs font-semibold text-slate-700 mb-1 flex items-center gap-1.5">
              <Calendar className="w-4 h-4 text-slate-400" />
              Perkiraan Tanggal Ujian SKD
            </label>
            <input
              type="date"
              value={targetDate}
              onChange={(e) => setTargetDate(e.target.value)}
              className="w-full px-3.5 py-2.5 text-sm bg-slate-50 border border-slate-200 rounded-xl focus:outline-none focus:ring-2 focus:ring-indigo-500/20 focus:border-indigo-600 transition-all text-slate-800"
            />
            <p className="text-[11px] text-slate-500 mt-1">
              Disimpan ke akun profil Anda untuk menghitung sisa hari menuju ujian SKD.
            </p>
          </div>

          {/* Target Soal Harian */}
          <div>
            <label className="block text-xs font-semibold text-slate-700 mb-1 flex items-center gap-1.5">
              <Target className="w-4 h-4 text-slate-400" />
              Target Soal per Hari
            </label>
            <div className="flex items-center gap-3">
              <input
                type="number"
                min="5"
                max="200"
                step="5"
                value={dailyGoal}
                onChange={(e) => setDailyGoal(Math.max(5, parseInt(e.target.value) || 5))}
                className="w-32 px-3.5 py-2.5 text-sm bg-slate-50 border border-slate-200 rounded-xl focus:outline-none focus:ring-2 focus:ring-indigo-500/20 focus:border-indigo-600 transition-all font-semibold text-slate-800"
              />
              <span className="text-sm text-slate-600 font-medium">soal / hari</span>
            </div>
            <p className="text-[11px] text-slate-500 mt-1">
              Disimpan secara lokal. Nilai standar yang disarankan adalah 30 soal per hari.
            </p>
          </div>

          <div className="pt-2 flex items-center justify-end gap-2 border-t border-slate-100">
            <button
              type="button"
              onClick={onClose}
              disabled={saving}
              className="px-4 py-2 text-xs font-medium text-slate-600 hover:text-slate-800 hover:bg-slate-100 rounded-xl transition-colors"
            >
              Batal
            </button>
            <button
              type="submit"
              disabled={saving}
              className="px-5 py-2 text-xs font-semibold text-white bg-indigo-600 hover:bg-indigo-700 rounded-xl shadow-xs shadow-indigo-200 transition-all disabled:opacity-50"
            >
              {saving ? 'Menyimpan...' : 'Simpan Target'}
            </button>
          </div>
        </form>
      </div>
    </div>
  );
}
