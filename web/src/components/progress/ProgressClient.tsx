'use client';

import { useState, useEffect } from 'react';
import Link from 'next/link';
import { useRouter } from 'next/navigation';
import { createClient } from '@/lib/supabase/client';
import { FullUserProgressData } from '@/lib/progress-service';
import { ProgressSummaryCards } from './ProgressSummaryCards';
import { ProgressScoreChart } from './ProgressScoreChart';
import { TopicAccuracySpeed } from './TopicAccuracySpeed';
import { LearningPriorities } from './LearningPriorities';
import { MistakeBank } from './MistakeBank';
import { PackageReportSection } from './PackageReportSection';
import { ActivityStreakBadges } from './ActivityStreakBadges';
import { TargetSettingsModal } from './TargetSettingsModal';
import {
  ArrowLeft,
  Settings,
  Sparkles,
  BarChart3,
  PlayCircle,
  Trash2,
  Loader2,
} from 'lucide-react';

interface ProgressClientProps {
  initialData: FullUserProgressData;
}

export function ProgressClient({ initialData }: ProgressClientProps) {
  const router = useRouter();
  const [data, setData] = useState<FullUserProgressData>(initialData);
  const [targetModalOpen, setTargetModalOpen] = useState(false);
  const [dailyGoal, setDailyGoal] = useState(30);
  const [isResetting, setIsResetting] = useState(false);

  const handleResetProgress = async () => {
    if (
      !confirm(
        'Yakin ingin MENGHAPUS SEMUA riwayat ujian dan progres belajar Anda? Seluruh catatan skor, grafik perkembangan, dan bank soal salah akan direset.'
      )
    ) {
      return;
    }

    setIsResetting(true);
    try {
      const supabase = createClient();
      const {
        data: { user },
      } = await supabase.auth.getUser();

      if (user) {
        const { error } = await supabase.from('attempts').delete().eq('user_id', user.id);
        if (error) throw error;
      }
      alert('Seluruh riwayat dan progres berhasil direset.');
      router.refresh();
    } catch (err: unknown) {
      alert('Gagal mereset: ' + (err instanceof Error ? err.message : String(err)));
    } finally {
      setIsResetting(false);
    }
  };

  // Sync dailyGoal with localStorage
  useEffect(() => {
    if (typeof window !== 'undefined') {
      const stored = localStorage.getItem('target_soal_harian');
      if (stored) {
        const val = parseInt(stored, 10);
        if (!isNaN(val) && val > 0) {
          setDailyGoal(val);
        }
      }
    }
  }, []);

  const handleTargetUpdated = (newDate: string | null, newDailyGoal: number) => {
    setDailyGoal(newDailyGoal);
    setData((prev: FullUserProgressData) => ({
      ...prev,
      summary: {
        ...prev.summary,
        targetUjian: newDate,
        daysRemainingToExam: newDate
          ? Math.max(0, Math.ceil((new Date(newDate).getTime() - Date.now()) / (1000 * 60 * 60 * 24)))
          : null,
      },
    }));
    router.refresh();
  };

  // Navigasi ke latihan topik terpilih
  const handlePracticeTopic = (subtes: string, topik: string) => {
    router.push(`/?modal=latihan&subtes=${encodeURIComponent(subtes)}&topik=${encodeURIComponent(topik)}`);
  };

  // Navigasi ke pengerjaan soal salah
  const handlePracticeMistakes = () => {
    router.push('/ujian/mulai?mode=salah');
  };

  return (
    <div className="min-h-screen bg-slate-50/50 pb-20">
      {/* Top Header / Navigation */}
      <div className="bg-white border-b border-slate-200/80 sticky top-0 z-30 shadow-xs">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 h-16 flex items-center justify-between">
          <div className="flex items-center gap-3">
            <Link
              href="/"
              className="p-2 -ml-2 text-slate-500 hover:text-slate-800 hover:bg-slate-100 rounded-xl transition-colors flex items-center gap-1.5 text-xs font-semibold"
            >
              <ArrowLeft className="w-4 h-4" />
              <span className="hidden sm:inline">Dashboard</span>
            </Link>
            <div className="h-4 w-px bg-slate-200" />
            <div className="flex items-center gap-2">
              <div className="w-8 h-8 rounded-lg bg-indigo-600/10 text-indigo-600 flex items-center justify-center font-bold text-sm">
                <BarChart3 className="w-4 h-4" />
              </div>
              <div>
                <h1 className="text-sm sm:text-base font-bold text-slate-900 leading-tight">
                  Progres & Capaian Belajar
                </h1>
                <p className="text-[11px] text-slate-500 hidden sm:block">
                  Analisis ketepatan, kecepatan, dan pemetaan kelemahan SKD Anda
                </p>
              </div>
            </div>
          </div>

          <div className="flex items-center gap-2">
            {data.hasData && (
              <button
                type="button"
                onClick={handleResetProgress}
                disabled={isResetting}
                className="flex items-center gap-1.5 px-3 py-1.5 text-xs font-semibold text-rose-600 bg-rose-50 hover:bg-rose-100 rounded-xl transition-colors border border-rose-200/80 disabled:opacity-50"
                title="Hapus Seluruh Progres & Riwayat Belajar"
              >
                {isResetting ? (
                  <Loader2 className="w-3.5 h-3.5 animate-spin" />
                ) : (
                  <Trash2 className="w-3.5 h-3.5" />
                )}
                <span className="hidden sm:inline">Reset Riwayat</span>
              </button>
            )}

            <button
              onClick={() => setTargetModalOpen(true)}
              className="flex items-center gap-2 px-3 py-1.5 text-xs font-semibold text-slate-700 bg-slate-100 hover:bg-slate-200/80 rounded-xl transition-colors border border-slate-200/60"
            >
              <Settings className="w-4 h-4 text-slate-500" />
              <span>Atur Target</span>
            </button>
          </div>
        </div>
      </div>

      <main className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 pt-6 space-y-8">
        {/* State Kosong Ramah Jika Belum Ada Data */}
        {!data.hasData ? (
          <div className="bg-white rounded-3xl p-8 sm:p-12 text-center border border-slate-200/80 shadow-xs max-w-2xl mx-auto my-8">
            <div className="w-16 h-16 rounded-2xl bg-indigo-50 text-indigo-600 flex items-center justify-center mx-auto mb-4">
              <Sparkles className="w-8 h-8" />
            </div>
            <h2 className="text-xl font-bold text-slate-900 mb-2">
              Belum Ada Data Aktivitas Belajar
            </h2>
            <p className="text-sm text-slate-600 mb-6 max-w-md mx-auto leading-relaxed">
              Mulai latihan atau ikuti Try Out SKD pertama Anda. Kami akan menganalisis akurasi per topik,
              kecepatan pengerjaan, dan mencatat topik yang perlu ditingkatkan secara otomatis!
            </p>
            <div className="flex flex-col sm:flex-row items-center justify-center gap-3">
              <Link
                href="/ujian/mulai?mode=tryout"
                className="w-full sm:w-auto px-6 py-2.5 bg-indigo-600 hover:bg-indigo-700 text-white text-xs font-bold rounded-xl shadow-xs shadow-indigo-200 transition-all flex items-center justify-center gap-2"
              >
                <PlayCircle className="w-4 h-4" />
                Mulai Try Out Penuh
              </Link>
              <Link
                href="/"
                className="w-full sm:w-auto px-6 py-2.5 bg-slate-100 hover:bg-slate-200 text-slate-700 text-xs font-semibold rounded-xl transition-colors"
              >
                Pilih Subtes di Dashboard
              </Link>
            </div>
          </div>
        ) : (
          <>
            {/* 1. Ringkasan Kartu & Target Harian */}
            <ProgressSummaryCards
              summary={data.summary}
              onOpenTargetModal={() => setTargetModalOpen(true)}
            />

            {/* 2. Prioritas Belajar (Rekomendasi Pintar) */}
            <LearningPriorities
              priorities={data.prioritasBelajar}
              onSelectPracticeTopic={handlePracticeTopic}
            />

            {/* 3. Grid 2 Kolom: Akurasi & Kecepatan vs Grafik Tren Skor */}
            <div className="grid grid-cols-1 lg:grid-cols-2 gap-6">
              {/* Kolom Kiri: Akurasi & Kecepatan per Topik */}
              <TopicAccuracySpeed
                topics={data.topikStats}
              />

              {/* Kolom Kanan: Tren Skor Try Out */}
              <ProgressScoreChart data={data.trenSkor} />
            </div>

            {/* 4. Laporan Evaluasi Riwayat Paket Ujian */}
            <PackageReportSection reports={data.laporanPerPaket} />

            {/* 5. Bank Soal Salah & Penguasaan */}
            <MistakeBank
              perluDilatih={data.bankSoalSalah.perluDilatih}
              dikuasai={data.bankSoalSalah.dikuasai}
              onStartRetryMode={handlePracticeMistakes}
            />

            {/* 6. Streak, Grid Aktivitas 12 Minggu & Dynamic Badges */}
            <ActivityStreakBadges
              streakHarian={data.summary.streakHarian}
              activityDays={data.petaAktivitas}
              badges={data.badges}
            />
          </>
        )}
      </main>

      {/* Target Settings Modal */}
      <TargetSettingsModal
        isOpen={targetModalOpen}
        onClose={() => setTargetModalOpen(false)}
        currentTargetDate={data.summary.targetUjian}
        currentDailyGoal={dailyGoal}
        onTargetUpdated={handleTargetUpdated}
      />
    </div>
  );
}
