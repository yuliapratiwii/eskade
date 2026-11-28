'use client';

import React, { useState, useEffect, useRef, useCallback } from 'react';
import { useRouter } from 'next/navigation';
import { createClient } from '@/lib/supabase/client';
import { SubtesType } from '@/lib/types';
import { MarkdownRenderer } from './MarkdownRenderer';
import {
  Clock,
  Flag,
  ChevronLeft,
  ChevronRight,
  Grid,
  X,
  CheckCircle2,
  AlertTriangle,
  Loader2,
  Info,
  ShieldAlert,
  Send,
} from 'lucide-react';

export interface ExamQuestionItem {
  id: string;
  sumber: string;
  nomor: number;
  subtes: SubtesType;
  topik: string | null;
  level: string | null;
  soal: string;
  gambar_url: string | null;
  opsi: Record<string, string>;
  kunci?: string;
  pembahasan?: string;
  pembahasan_gambar?: string | null;
}

export type ExamQuestionClient = ExamQuestionItem;

export interface UserAnswerState {
  jawaban: string | null;
  ragu: boolean;
  waktu_detik: number;
}

export interface ExamClientProps {
  attemptId: string;
  mode: string;
  title?: string;
  subtes?: string | null;
  initialQuestions: ExamQuestionItem[];
  initialAnswers: Record<string, UserAnswerState>;
  durationMinutes?: number;
  totalDurationSeconds?: number;
  initialRemainingSeconds?: number;
  startedAt?: string;
}

export const ExamClient: React.FC<ExamClientProps> = ({
  attemptId,
  mode,
  title,
  subtes,
  initialQuestions,
  initialAnswers,
  durationMinutes,
  totalDurationSeconds,
  initialRemainingSeconds,
  startedAt,
}) => {
  const router = useRouter();
  const supabase = createClient();

  const displayTitle =
    title ||
    (subtes
      ? `Simulasi Ujian Subtes ${subtes}`
      : mode === 'tryout'
      ? 'Try Out Penuh Simulasi Resmi SKD'
      : 'Simulasi Latihan Soal SKD');

  const [currentIndex, setCurrentIndex] = useState(0);
  const [answers, setAnswers] = useState<Record<string, UserAnswerState>>(initialAnswers);
  const [isDrawerOpen, setIsDrawerOpen] = useState(false);
  const [isConfirmModalOpen, setIsConfirmModalOpen] = useState(false);
  const [isSubmitting, setIsSubmitting] = useState(false);

  // Helper url gambar agar tidak 404 pada nested route
  const formatImageUrl = (url: string) => {
    if (!url) return '';
    if (url.startsWith('http://') || url.startsWith('https://') || url.startsWith('/')) {
      return url;
    }
    return `/${url}`;
  };

  // Timer Configuration
  const effectiveTotalSeconds =
    totalDurationSeconds !== undefined
      ? totalDurationSeconds
      : durationMinutes !== undefined
      ? durationMinutes * 60
      : 0;

  const hasTimer = mode !== 'latihan_topik' && effectiveTotalSeconds > 0;

  const calculateInitialRemaining = () => {
    if (!hasTimer) return 0;
    if (initialRemainingSeconds !== undefined) return initialRemainingSeconds;
    if (startedAt && durationMinutes) {
      const startMs = new Date(startedAt).getTime();
      const elapsedSec = Math.floor((Date.now() - startMs) / 1000);
      return Math.max(0, durationMinutes * 60 - elapsedSec);
    }
    return effectiveTotalSeconds;
  };

  const [remainingSeconds, setRemainingSeconds] = useState<number>(calculateInitialRemaining);

  // Per-question timer tracker
  const questionStartTimeRef = useRef<number>(Date.now());
  const currentQuestion = initialQuestions[currentIndex];

  // Auto Submit function
  const handleSubmitExam = useCallback(async () => {
    if (isSubmitting) return;
    setIsSubmitting(true);

    try {
      // 1. Catat waktu soal aktif terakhir
      if (currentQuestion) {
        const spent = Math.floor((Date.now() - questionStartTimeRef.current) / 1000);
        const currAns = answers[currentQuestion.id] || { jawaban: null, ragu: false, waktu_detik: 0 };
        const updatedDetik = currAns.waktu_detik + spent;

        await supabase.from('attempt_answers').upsert({
          attempt_id: attemptId,
          question_id: currentQuestion.id,
          jawaban: currAns.jawaban,
          ragu: currAns.ragu,
          waktu_detik: updatedDetik,
        });
      }

      // 2. Tandai attempt selesai
      const finishTime = new Date().toISOString();
      let durasiDetik = 0;
      if (effectiveTotalSeconds > 0 && remainingSeconds !== undefined) {
        durasiDetik = Math.max(0, effectiveTotalSeconds - remainingSeconds);
      } else if (startedAt) {
        durasiDetik = Math.floor((Date.now() - new Date(startedAt).getTime()) / 1000);
      }

      await supabase
        .from('attempts')
        .update({
          selesai: finishTime,
          durasi_detik: durasiDetik,
        })
        .eq('id', attemptId);

      // 3. Clear fallback localStorage
      localStorage.removeItem(`skd_attempt_${attemptId}`);

      // 4. Redirect ke halaman hasil
      router.push(`/ujian/${attemptId}/hasil`);
      router.refresh();
    } catch (err) {
      console.error('Error saat submit ujian:', err);
      alert('Terjadi kendala saat mengirim jawaban. Silakan coba lagi.');
      setIsSubmitting(false);
    }
  }, [attemptId, answers, currentQuestion, effectiveTotalSeconds, isSubmitting, remainingSeconds, router, startedAt, supabase]);

  // Timer Tick
  useEffect(() => {
    if (!hasTimer) return;

    const timer = setInterval(() => {
      setRemainingSeconds((prev) => {
        if (prev <= 1) {
          clearInterval(timer);
          handleSubmitExam();
          return 0;
        }
        return prev - 1;
      });
    }, 1000);

    return () => clearInterval(timer);
  }, [hasTimer, handleSubmitExam]);

  // Update question time on question change
  const recordQuestionTime = useCallback(() => {
    if (!currentQuestion) return;
    const qId = currentQuestion.id;
    const now = Date.now();
    const elapsedSeconds = Math.floor((now - questionStartTimeRef.current) / 1000);
    questionStartTimeRef.current = now;

    if (elapsedSeconds > 0) {
      setAnswers((prev) => {
        const current = prev[qId] || { jawaban: null, ragu: false, waktu_detik: 0 };
        const updated = {
          ...prev,
          [qId]: {
            ...current,
            waktu_detik: current.waktu_detik + elapsedSeconds,
          },
        };
        // Fallback localStorage
        localStorage.setItem(`skd_attempt_${attemptId}`, JSON.stringify(updated));
        return updated;
      });

      // Sync non-blocking ke server
      const current = answers[qId] || { jawaban: null, ragu: false, waktu_detik: 0 };
      supabase
        .from('attempt_answers')
        .upsert({
          attempt_id: attemptId,
          question_id: qId,
          jawaban: current.jawaban,
          ragu: current.ragu,
          waktu_detik: current.waktu_detik + elapsedSeconds,
        })
        .then();
    }
  }, [attemptId, answers, currentQuestion, supabase]);

  // Navigate Questions
  const handleNavigate = (newIndex: number) => {
    if (newIndex < 0 || newIndex >= initialQuestions.length) return;
    recordQuestionTime();
    setCurrentIndex(newIndex);
    window.scrollTo({ top: 0, behavior: 'smooth' });
  };

  // Select Option
  const handleSelectOption = async (optionKey: string) => {
    if (!currentQuestion) return;
    const qId = currentQuestion.id;
    const current = answers[qId] || { jawaban: null, ragu: false, waktu_detik: 0 };

    const newJawaban = current.jawaban === optionKey ? null : optionKey;
    const updatedState = {
      ...current,
      jawaban: newJawaban,
    };

    setAnswers((prev) => {
      const updated = {
        ...prev,
        [qId]: updatedState,
      };
      localStorage.setItem(`skd_attempt_${attemptId}`, JSON.stringify(updated));
      return updated;
    });

    try {
      await supabase.from('attempt_answers').upsert({
        attempt_id: attemptId,
        question_id: qId,
        jawaban: newJawaban,
        ragu: current.ragu,
        waktu_detik: current.waktu_detik,
      });
    } catch (e) {
      console.error('Failed to sync answer to server:', e);
    }
  };

  // Toggle Ragu-ragu
  const handleToggleRagu = async () => {
    if (!currentQuestion) return;
    const qId = currentQuestion.id;
    const current = answers[qId] || { jawaban: null, ragu: false, waktu_detik: 0 };
    const newRagu = !current.ragu;

    const updatedState = {
      ...current,
      ragu: newRagu,
    };

    setAnswers((prev) => {
      const updated = {
        ...prev,
        [qId]: updatedState,
      };
      localStorage.setItem(`skd_attempt_${attemptId}`, JSON.stringify(updated));
      return updated;
    });

    try {
      await supabase.from('attempt_answers').upsert({
        attempt_id: attemptId,
        question_id: qId,
        jawaban: current.jawaban,
        ragu: newRagu,
        waktu_detik: current.waktu_detik,
      });
    } catch (e) {
      console.error('Failed to sync ragu to server:', e);
    }
  };

  // Format Timer HH:MM:SS atau MM:SS
  const formatTimer = (totalSec: number) => {
    const hours = Math.floor(totalSec / 3600);
    const minutes = Math.floor((totalSec % 3600) / 60);
    const seconds = totalSec % 60;

    const pad = (n: number) => n.toString().padStart(2, '0');
    if (hours > 0) {
      return `${pad(hours)}:${pad(minutes)}:${pad(seconds)}`;
    }
    return `${pad(minutes)}:${pad(seconds)}`;
  };

  // Summary Counts
  const totalQuestions = initialQuestions.length;
  const answeredCount = Object.values(answers).filter((a) => a.jawaban !== null).length;
  const raguCount = Object.values(answers).filter((a) => a.ragu).length;
  const unansweredCount = totalQuestions - answeredCount;

  const currentAnswer = answers[currentQuestion?.id];
  const isCurrentRagu = currentAnswer?.ragu || false;
  const selectedOption = currentAnswer?.jawaban || null;

  // Warna subtes badge
  const getSubtesBadgeColor = (sub: SubtesType) => {
    switch (sub) {
      case 'TIU':
        return 'bg-blue-100 text-blue-800 border-blue-200';
      case 'TWK':
        return 'bg-emerald-100 text-emerald-800 border-emerald-200';
      case 'TKP':
        return 'bg-purple-100 text-purple-800 border-purple-200';
      default:
        return 'bg-indigo-100 text-indigo-800 border-indigo-200';
    }
  };

  return (
    <div className="min-h-screen flex flex-col bg-slate-100 text-slate-800 pb-4">
      {/* Top Fixed Header */}
      <header className="bg-white border-b border-slate-200 sticky top-0 z-30 shadow-xs">
        <div className="max-w-7xl mx-auto px-4 h-12 flex items-center justify-between gap-3">
          {/* Mode Title & Number */}
          <div className="flex items-center gap-2 min-w-0">
            <span className="font-bold text-slate-900 text-xs sm:text-sm truncate max-w-[200px] sm:max-w-xs">
              {displayTitle}
            </span>
            <span className="hidden sm:inline-flex items-center px-2 py-0.5 rounded-full text-[10px] font-bold bg-slate-100 text-slate-700">
              Soal {currentIndex + 1} dari {totalQuestions}
            </span>
          </div>

          {/* Timer & Mobile Drawer Trigger */}
          <div className="flex items-center gap-2 shrink-0">
            {hasTimer ? (
              <div
                className={`flex items-center gap-1.5 px-2.5 py-1 rounded-lg text-xs font-mono font-bold border transition ${
                  remainingSeconds < 300
                    ? 'bg-rose-50 text-rose-600 border-rose-200 animate-pulse'
                    : 'bg-slate-50 text-slate-800 border-slate-200'
                }`}
              >
                <Clock className="w-3.5 h-3.5" />
                <span>{formatTimer(remainingSeconds)}</span>
              </div>
            ) : (
              <div className="flex items-center gap-1 px-2 py-0.5 rounded-full text-[10px] font-medium bg-emerald-50 text-emerald-700 border border-emerald-200">
                <Info className="w-3 h-3" />
                <span>Latihan Mandiri</span>
              </div>
            )}

            {/* Mobile Sheet Trigger (hanya tampil di layar HP) */}
            <button
              type="button"
              onClick={() => setIsDrawerOpen(true)}
              className="lg:hidden flex items-center gap-1 px-2.5 py-1 rounded-lg bg-blue-600 hover:bg-blue-700 text-white text-xs font-semibold shadow-xs transition"
            >
              <Grid className="w-3.5 h-3.5" />
              <span>{answeredCount}/{totalQuestions}</span>
            </button>
          </div>
        </div>
      </header>

      {/* Main Layout CAT BKN: Dua Kolom (Kiri: Soal, Kanan: Lembar Nomor CAT) */}
      <main className="max-w-7xl w-full mx-auto p-2.5 sm:p-3.5 flex-1 grid grid-cols-1 lg:grid-cols-12 gap-3.5 items-start">
        {/* KOLOM KIRI (LEBAR): KARTU SOAL & OPSI JAWABAN */}
        <div className="lg:col-span-8 space-y-3">
          {currentQuestion ? (
            <div className="bg-white rounded-2xl border border-slate-200 p-4 sm:p-5 shadow-xs space-y-3.5">
              {/* Header Info Soal & Kategori */}
              <div className="flex flex-wrap items-center justify-between gap-2 border-b border-slate-100 pb-2.5">
                <div className="flex flex-wrap items-center gap-1.5">
                  <span
                    className={`px-2 py-0.5 rounded-md text-[11px] font-bold border ${getSubtesBadgeColor(
                      currentQuestion.subtes
                    )}`}
                  >
                    {currentQuestion.subtes}
                  </span>
                  {currentQuestion.topik && (
                    <span className="px-2 py-0.5 rounded-md text-[11px] font-medium bg-slate-100 text-slate-700 border border-slate-200">
                      {currentQuestion.subtes} • {currentQuestion.topik}
                    </span>
                  )}
                  {currentQuestion.level && (
                    <span className="text-[10px] text-slate-400 capitalize px-1">
                      Tingkat: {currentQuestion.level}
                    </span>
                  )}
                  {currentQuestion.sumber && (
                    <span className="px-1.5 py-0.5 rounded text-[10px] text-slate-400 bg-slate-50 border border-slate-200 font-medium">
                      {currentQuestion.sumber}
                    </span>
                  )}
                </div>

                {/* Tombol Ragu-ragu */}
                <button
                  type="button"
                  onClick={handleToggleRagu}
                  className={`px-2.5 py-1 rounded-lg text-xs font-semibold flex items-center gap-1.5 border transition ${
                    isCurrentRagu
                      ? 'bg-amber-400 text-amber-950 border-amber-500 shadow-xs'
                      : 'bg-white text-slate-500 border-slate-200 hover:bg-slate-50'
                  }`}
                >
                  <Flag className={`w-3.5 h-3.5 ${isCurrentRagu ? 'fill-amber-950 text-amber-950' : ''}`} />
                  <span>{isCurrentRagu ? 'Ragu-ragu' : 'Tandai Ragu'}</span>
                </button>
              </div>

              {/* Nomor Urut Soal */}
              <div className="font-bold text-slate-900 text-xs sm:text-sm">
                Soal Nomor {currentIndex + 1}
              </div>

              {/* Gambar Soal (Figural / Diagram Bersih - Tanpa Pilihan Ganda) */}
              {currentQuestion.gambar_url && !(
                currentQuestion.soal && (
                  /!\[[^\]]*\]|<img/i.test(currentQuestion.soal) ||
                  currentQuestion.soal.includes(currentQuestion.gambar_url.split('/').pop() || currentQuestion.gambar_url)
                )
              ) && (
                <div className="p-3 bg-slate-50 border border-slate-200 rounded-xl flex flex-col items-center justify-center">
                  {/* eslint-disable-next-line @next/next/no-img-element */}
                  <img
                    src={formatImageUrl(currentQuestion.gambar_url)}
                    alt="Gambar Soal"
                    className="max-h-56 sm:max-h-64 w-auto object-contain rounded-lg"
                  />
                </div>
              )}

              {/* Teks Soal (Markdown + LaTeX) */}
              <div className="text-slate-900 text-xs sm:text-sm leading-relaxed">
                <MarkdownRenderer content={currentQuestion.soal} />
              </div>

              {/* Opsi Pilihan Jawaban (A, B, C, D, E) */}
              <div className="space-y-2 pt-1">
                {['A', 'B', 'C', 'D', 'E'].map((letter) => {
                  const optionText = currentQuestion.opsi?.[letter];
                  if (!optionText && optionText !== '') return null;

                  const isSelected = selectedOption === letter;

                  return (
                    <button
                      key={letter}
                      type="button"
                      onClick={() => handleSelectOption(letter)}
                      className={`w-full text-left p-2.5 sm:p-3 rounded-xl border text-xs sm:text-sm flex items-start gap-2.5 transition ${
                        isSelected
                          ? 'border-blue-600 bg-blue-50/70 text-blue-950 font-medium shadow-xs ring-2 ring-blue-500/20'
                          : 'border-slate-200 bg-white hover:border-slate-300 hover:bg-slate-50/80 text-slate-800'
                      }`}
                    >
                      <div
                        className={`w-6.5 h-6.5 rounded-lg flex items-center justify-center text-xs font-bold shrink-0 transition ${
                          isSelected
                            ? 'bg-blue-600 text-white shadow-xs'
                            : 'bg-slate-100 text-slate-600 border border-slate-200'
                        }`}
                      >
                        {letter}
                      </div>

                      {/* Render Teks Opsi atau Gambar Opsi (Figural) */}
                      <div className="flex-1 pt-0.5 overflow-x-auto text-xs sm:text-sm leading-normal">
                        <MarkdownRenderer content={optionText} />
                      </div>
                    </button>
                  );
                })}
              </div>

              {/* Pembahasan Langsung (Hanya jika Mode 'latihan_topik') */}
              {mode === 'latihan_topik' && selectedOption && (
                <div className="mt-4 pt-3.5 border-t border-slate-200 space-y-2.5 animate-in fade-in duration-200">
                  <div
                    className={`p-3 rounded-xl border text-xs sm:text-sm flex items-start gap-2.5 ${
                      selectedOption === currentQuestion.kunci
                        ? 'bg-emerald-50 border-emerald-200 text-emerald-800'
                        : 'bg-rose-50 border-rose-200 text-rose-800'
                    }`}
                  >
                    {selectedOption === currentQuestion.kunci ? (
                      <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0 mt-0.5" />
                    ) : (
                      <AlertTriangle className="w-4 h-4 text-rose-600 shrink-0 mt-0.5" />
                    )}
                    <div>
                      <span className="font-bold">
                        {selectedOption === currentQuestion.kunci
                          ? 'Jawaban Benar!'
                          : 'Jawaban Kurang Tepat.'}
                      </span>
                      <span className="ml-1">
                        Kunci Jawaban adalah <strong>{currentQuestion.kunci}</strong>.
                      </span>
                    </div>
                  </div>

                  {currentQuestion.pembahasan && (
                    <div className="p-3.5 rounded-xl bg-slate-50 border border-slate-200 text-xs">
                      <h4 className="text-[11px] font-bold uppercase tracking-wider text-slate-700 mb-1.5">
                        Pembahasan Lengkap:
                      </h4>
                      <MarkdownRenderer content={currentQuestion.pembahasan} />
                      {currentQuestion.pembahasan_gambar && !(
                        currentQuestion.pembahasan && (
                          /!\[[^\]]*\]|<img/i.test(currentQuestion.pembahasan) ||
                          currentQuestion.pembahasan.includes(currentQuestion.pembahasan_gambar.split('/').pop() || currentQuestion.pembahasan_gambar)
                        )
                      ) && (
                        <div className="mt-2.5">
                          {/* eslint-disable-next-line @next/next/no-img-element */}
                          <img
                            src={formatImageUrl(currentQuestion.pembahasan_gambar)}
                            alt="Gambar Pembahasan"
                            className="max-h-56 rounded-md border border-slate-200"
                          />
                        </div>
                      )}
                    </div>
                  )}
                </div>
              )}
            </div>
          ) : (
            <div className="p-6 text-center text-slate-500 bg-white rounded-2xl border border-slate-200">
              Soal tidak ditemukan.
            </div>
          )}

          {/* Action Bar Navigasi Bawah */}
          <div className="flex items-center justify-between gap-2.5 pt-0.5">
            <button
              type="button"
              onClick={() => handleNavigate(currentIndex - 1)}
              disabled={currentIndex === 0}
              className="px-3.5 py-2 rounded-xl border border-slate-200 bg-white text-slate-700 text-xs font-semibold hover:bg-slate-50 transition flex items-center gap-1.5 disabled:opacity-40 disabled:cursor-not-allowed shadow-2xs"
            >
              <ChevronLeft className="w-3.5 h-3.5" />
              <span>Sebelumnya</span>
            </button>

            <button
              type="button"
              onClick={handleToggleRagu}
              className={`px-3.5 py-2 rounded-xl text-xs font-semibold flex items-center gap-1.5 border transition shadow-2xs ${
                isCurrentRagu
                  ? 'bg-amber-400 text-amber-950 border-amber-500 font-bold'
                  : 'bg-white text-slate-700 border-slate-200 hover:bg-slate-50'
              }`}
            >
              <Flag className={`w-3.5 h-3.5 ${isCurrentRagu ? 'fill-amber-950 text-amber-950' : ''}`} />
              <span>{isCurrentRagu ? 'Batal Ragu' : 'Ragu-ragu'}</span>
            </button>

            {currentIndex === totalQuestions - 1 ? (
              <button
                type="button"
                onClick={() => setIsConfirmModalOpen(true)}
                disabled={isSubmitting}
                className="px-4 py-2 rounded-xl bg-emerald-600 hover:bg-emerald-700 text-white text-xs font-bold shadow-md shadow-emerald-100 transition flex items-center gap-1.5"
              >
                {isSubmitting ? (
                  <>
                    <Loader2 className="w-3.5 h-3.5 animate-spin" />
                    <span>Mengumpulkan...</span>
                  </>
                ) : (
                  <>
                    <Send className="w-3.5 h-3.5" />
                    <span>Selesai Ujian</span>
                  </>
                )}
              </button>
            ) : (
              <button
                type="button"
                onClick={() => handleNavigate(currentIndex + 1)}
                className="px-4 py-2 rounded-xl bg-blue-600 hover:bg-blue-700 text-white text-xs font-bold shadow-md shadow-blue-100 transition flex items-center gap-1.5"
              >
                <span>Selanjutnya</span>
                <ChevronRight className="w-3.5 h-3.5" />
              </button>
            )}
          </div>
        </div>

        {/* KOLOM KANAN (DESKTOP STICKY): LEMBAR NOMOR SOAL RESMI CAT BKN */}
        <div className="hidden lg:block lg:col-span-4 sticky top-14">
          <div className="bg-white rounded-2xl border border-slate-200 p-3.5 shadow-xs space-y-2.5">
            <div className="border-b border-slate-100 pb-2">
              <h3 className="font-bold text-slate-900 text-xs sm:text-sm tracking-tight">
                Lembar Nomor Soal (CAT)
              </h3>
              <p className="text-[10px] text-slate-400 mt-0.5">
                Klik nomor untuk langsung berpindah ke soal tersebut.
              </p>
            </div>

            {/* Status Legend */}
            <div className="grid grid-cols-3 gap-1.5 text-[10px] py-0.5 border-b border-slate-100">
              <div className="flex items-center gap-1">
                <span className="w-2.5 h-2.5 rounded-full bg-blue-600 shrink-0" />
                <span className="text-slate-600 font-medium">Dijawab ({answeredCount})</span>
              </div>
              <div className="flex items-center gap-1">
                <span className="w-2.5 h-2.5 rounded-full bg-amber-400 shrink-0" />
                <span className="text-slate-600 font-medium">Ragu ({raguCount})</span>
              </div>
              <div className="flex items-center gap-1">
                <span className="w-2.5 h-2.5 rounded-full bg-slate-200 shrink-0" />
                <span className="text-slate-600 font-medium">Belum ({unansweredCount})</span>
              </div>
            </div>

            {/* Grid 30/35 Nomor Soal Kompak */}
            <div className="grid grid-cols-5 gap-1.5 pt-0.5">
              {initialQuestions.map((q, idx) => {
                const ans = answers[q.id];
                const isAnswered = ans?.jawaban !== null && ans?.jawaban !== undefined;
                const isRagu = ans?.ragu || false;
                const isCurrent = idx === currentIndex;

                // WARNA SESUAI CAT BKN: Dijawab = BIRU, Ragu = KUNING, Belum = ABU-ABU
                let colorClasses = 'bg-slate-100 text-slate-700 border-slate-200 hover:bg-slate-200';
                if (isRagu) {
                  colorClasses = 'bg-amber-400 text-amber-950 border-amber-500 font-bold';
                } else if (isAnswered) {
                  colorClasses = 'bg-blue-600 text-white border-blue-700 font-bold shadow-xs';
                }

                return (
                  <button
                    key={q.id}
                    type="button"
                    onClick={() => handleNavigate(idx)}
                    className={`h-8 rounded-lg text-xs flex flex-col items-center justify-center border transition relative ${colorClasses} ${
                      isCurrent ? 'ring-2 ring-blue-500 ring-offset-1 scale-105 z-10' : ''
                    }`}
                  >
                    <span className="leading-none">{idx + 1}</span>
                    {isAnswered && (
                      <span className="text-[8px] leading-tight opacity-90">({ans.jawaban})</span>
                    )}
                  </button>
                );
              })}
            </div>

            {/* Tombol Selesai Ujian di Bawah Grid */}
            <div className="pt-2 border-t border-slate-100">
              <button
                type="button"
                onClick={() => setIsConfirmModalOpen(true)}
                disabled={isSubmitting}
                className="w-full py-2 rounded-xl bg-emerald-600 hover:bg-emerald-700 text-white font-bold text-xs flex items-center justify-center gap-1.5 shadow-xs transition"
              >
                <CheckCircle2 className="w-3.5 h-3.5" />
                <span>Kumpulkan & Selesaikan Ujian</span>
              </button>
            </div>
          </div>
        </div>
      </main>

      {/* DRAWER LEMBAR NOMOR KHUSUS MOBILE (Layar HP) */}
      {isDrawerOpen && (
        <div className="fixed inset-0 z-50 flex items-end justify-center p-0 bg-slate-900/50 backdrop-blur-xs animate-in fade-in duration-200 lg:hidden">
          <div className="bg-white w-full rounded-t-3xl max-h-[85vh] flex flex-col shadow-2xl border border-slate-100 overflow-hidden">
            <div className="p-4 border-b border-slate-100 flex items-center justify-between">
              <div>
                <h3 className="font-bold text-slate-900 text-sm">Lembar Nomor Soal</h3>
                <div className="flex items-center gap-3 text-[11px] mt-1 text-slate-500">
                  <span className="flex items-center gap-1">
                    <span className="w-2.5 h-2.5 rounded-full bg-blue-600" />
                    <span>Dijawab: {answeredCount}</span>
                  </span>
                  <span className="flex items-center gap-1">
                    <span className="w-2.5 h-2.5 rounded-full bg-amber-400" />
                    <span>Ragu: {raguCount}</span>
                  </span>
                  <span className="flex items-center gap-1">
                    <span className="w-2.5 h-2.5 rounded-full bg-slate-300" />
                    <span>Belum: {unansweredCount}</span>
                  </span>
                </div>
              </div>

              <button
                type="button"
                onClick={() => setIsDrawerOpen(false)}
                className="p-1.5 rounded-lg text-slate-400 hover:text-slate-600 hover:bg-slate-100 transition"
              >
                <X className="w-5 h-5" />
              </button>
            </div>

            <div className="p-4 overflow-y-auto flex-1 grid grid-cols-5 gap-2">
              {initialQuestions.map((q, idx) => {
                const ans = answers[q.id];
                const isAnswered = ans?.jawaban !== null && ans?.jawaban !== undefined;
                const isRagu = ans?.ragu || false;
                const isCurrent = idx === currentIndex;

                let colorClasses = 'bg-slate-100 text-slate-700 border-slate-200';
                if (isRagu) {
                  colorClasses = 'bg-amber-400 text-amber-950 border-amber-500 font-bold';
                } else if (isAnswered) {
                  colorClasses = 'bg-blue-600 text-white border-blue-700 font-bold';
                }

                return (
                  <button
                    key={q.id}
                    type="button"
                    onClick={() => {
                      handleNavigate(idx);
                      setIsDrawerOpen(false);
                    }}
                    className={`h-11 rounded-xl text-xs flex flex-col items-center justify-center border transition ${colorClasses} ${
                      isCurrent ? 'ring-2 ring-blue-500 ring-offset-2' : ''
                    }`}
                  >
                    <span>{idx + 1}</span>
                    {isAnswered && (
                      <span className="text-[9px] leading-none opacity-90">({ans.jawaban})</span>
                    )}
                  </button>
                );
              })}
            </div>

            <div className="p-4 border-t border-slate-100 bg-slate-50">
              <button
                type="button"
                onClick={() => {
                  setIsDrawerOpen(false);
                  setIsConfirmModalOpen(true);
                }}
                className="w-full py-2.5 rounded-xl bg-emerald-600 text-white font-bold text-xs"
              >
                Kumpulkan Ujian
              </button>
            </div>
          </div>
        </div>
      )}

      {/* Modal Konfirmasi Selesai Ujian */}
      {isConfirmModalOpen && (
        <div className="fixed inset-0 z-50 flex items-center justify-center p-4 bg-slate-900/50 backdrop-blur-xs animate-in fade-in duration-150">
          <div className="bg-white rounded-3xl max-w-sm w-full p-6 shadow-2xl border border-slate-100 space-y-4">
            <div className="w-12 h-12 rounded-2xl bg-amber-50 border border-amber-200 text-amber-600 flex items-center justify-center mx-auto">
              <ShieldAlert className="w-6 h-6" />
            </div>

            <div className="text-center">
              <h3 className="text-base font-bold text-slate-900">Selesaikan Ujian?</h3>
              <p className="text-xs text-slate-500 mt-1.5 leading-relaxed">
                Anda telah menjawab <strong>{answeredCount}</strong> dari{' '}
                <strong>{totalQuestions}</strong> butir soal.
                {unansweredCount > 0 && (
                  <span className="block text-rose-600 font-semibold mt-1">
                    Masih ada {unansweredCount} soal yang belum dijawab!
                  </span>
                )}
              </p>
            </div>

            <div className="grid grid-cols-2 gap-2.5 pt-2">
              <button
                type="button"
                onClick={() => setIsConfirmModalOpen(false)}
                className="w-full py-2.5 rounded-xl border border-slate-200 text-slate-600 text-xs font-semibold hover:bg-slate-50 transition"
              >
                Lanjutkan Ujian
              </button>
              <button
                type="button"
                onClick={handleSubmitExam}
                disabled={isSubmitting}
                className="w-full py-2.5 rounded-xl bg-emerald-600 hover:bg-emerald-700 text-white text-xs font-bold shadow-md shadow-emerald-100 transition flex items-center justify-center gap-1.5"
              >
                {isSubmitting ? (
                  <Loader2 className="w-4 h-4 animate-spin" />
                ) : (
                  <span>Ya, Kumpulkan</span>
                )}
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
};
