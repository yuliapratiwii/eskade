'use client';

import React, { useState } from 'react';
import Link from 'next/link';
import { MarkdownRenderer } from './MarkdownRenderer';
import { FullQuestionItem, SubtesType } from '@/lib/types';
import {
  CheckCircle2,
  XCircle,
  HelpCircle,
  Clock,
  ChevronLeft,
  ChevronRight,
  RotateCcw,
  Flag,
  ArrowLeft,
  BookOpen,
  Grid,
  X,
  Trophy,
  Filter,
} from 'lucide-react';

export interface ReviewItem {
  question: FullQuestionItem;
  userAnswer: string | null;
  ragu: boolean;
  waktuDetik: number;
  isCorrect: boolean;
  status: 'correct' | 'wrong' | 'empty';
}

interface ReviewClientProps {
  attemptId: string;
  mode: string;
  items: ReviewItem[];
}

export const ReviewClient: React.FC<ReviewClientProps> = ({
  attemptId,
  mode,
  items,
}) => {
  const [filter, setFilter] = useState<'all' | 'wrong' | 'correct' | 'ragu'>('all');
  const [currentIndex, setCurrentIndex] = useState(0);
  const [isDrawerOpen, setIsDrawerOpen] = useState(false);

  // Filter items
  const filteredItems = items.filter((item) => {
    if (filter === 'wrong') return item.status === 'wrong' || item.status === 'empty';
    if (filter === 'correct') return item.status === 'correct';
    if (filter === 'ragu') return item.ragu;
    return true;
  });

  const activeItem = filteredItems[currentIndex] || items[0];

  const handleSelectQuestion = (originalIndex: number) => {
    const inFiltered = filteredItems.findIndex(
      (item) => item.question.id === items[originalIndex].question.id
    );
    if (inFiltered !== -1) {
      setCurrentIndex(inFiltered);
    } else {
      setFilter('all');
      setCurrentIndex(originalIndex);
    }
    setIsDrawerOpen(false);
    window.scrollTo({ top: 0, behavior: 'smooth' });
  };

  const handleNext = () => {
    if (currentIndex < filteredItems.length - 1) {
      setCurrentIndex((prev) => prev + 1);
      window.scrollTo({ top: 0, behavior: 'smooth' });
    }
  };

  const handlePrev = () => {
    if (currentIndex > 0) {
      setCurrentIndex((prev) => prev - 1);
      window.scrollTo({ top: 0, behavior: 'smooth' });
    }
  };

  const correctCount = items.filter((i) => i.status === 'correct').length;
  const wrongCount = items.filter((i) => i.status === 'wrong').length;
  const emptyCount = items.filter((i) => i.status === 'empty').length;
  const raguCount = items.filter((i) => i.ragu).length;

  const formatImageUrl = (url?: string | null) => {
    if (!url) return '';
    if (url.startsWith('http://') || url.startsWith('https://') || url.startsWith('/')) {
      return url;
    }
    return `/${url}`;
  };

  const getSubtesBadgeColor = (subtes?: string) => {
    switch (subtes) {
      case 'TWK':
        return 'bg-emerald-50 text-emerald-800 border-emerald-200';
      case 'TIU':
        return 'bg-blue-50 text-blue-800 border-blue-200';
      case 'TKP':
        return 'bg-purple-50 text-purple-800 border-purple-200';
      default:
        return 'bg-slate-100 text-slate-800 border-slate-200';
    }
  };

  // Find original index in full items list for numbering
  const currentOriginalIndex = items.findIndex(
    (it) => it.question.id === activeItem?.question.id
  );

  return (
    <div className="min-h-screen flex flex-col bg-slate-100 text-slate-800 pb-4">
      {/* Top Navbar */}
      <header className="bg-white border-b border-slate-200 sticky top-0 z-30 shadow-xs">
        <div className="max-w-7xl mx-auto px-4 h-12 flex items-center justify-between gap-3">
          <div className="flex items-center gap-2.5 min-w-0">
            <Link
              href={`/ujian/${attemptId}/hasil`}
              prefetch={true}
              className="inline-flex items-center gap-1.5 px-2.5 py-1.5 rounded-xl text-xs font-semibold text-slate-600 hover:text-indigo-600 hover:bg-slate-50 transition border border-slate-200"
            >
              <ArrowLeft className="w-3.5 h-3.5" />
              <span className="hidden sm:inline">Hasil Ujian</span>
            </Link>

            <div className="flex items-center gap-2 min-w-0">
              <span className="font-bold text-slate-900 text-sm truncate">
                Pembahasan Soal
              </span>
              <span className="hidden sm:inline-flex items-center px-2 py-0.5 rounded-full text-[10px] font-bold bg-slate-100 text-slate-700">
                Soal {currentOriginalIndex + 1} dari {items.length}
              </span>
            </div>
          </div>

          <div className="flex items-center gap-2 shrink-0">
            {/* Quick Score Pill */}
            <div className="hidden sm:flex items-center gap-2 px-3 py-1 rounded-xl bg-slate-50 border border-slate-200 text-xs font-semibold">
              <span className="text-emerald-700">✓ {correctCount} Benar</span>
              <span className="text-slate-300">|</span>
              <span className="text-rose-600">✗ {wrongCount} Salah</span>
            </div>

            {/* Mobile Sheet Trigger (buka nomor di HP) */}
            <button
              type="button"
              onClick={() => setIsDrawerOpen(true)}
              className="lg:hidden flex items-center gap-1.5 px-3 py-1.5 rounded-xl bg-indigo-600 hover:bg-indigo-700 text-white text-xs font-semibold shadow-xs transition"
            >
              <Grid className="w-3.5 h-3.5" />
              <span>{correctCount}/{items.length}</span>
            </button>

            <Link
              href="/"
              prefetch={true}
              className="p-2 rounded-xl text-slate-400 hover:text-slate-700 hover:bg-slate-100 transition"
              title="Dashboard Utama"
            >
              <RotateCcw className="w-4 h-4" />
            </Link>
          </div>
        </div>
      </header>

      {/* Main Layout: 12 Kolom (Kiri: Soal & Pembahasan, Kanan: Lembar Nomor CAT) */}
      <main className="max-w-7xl w-full mx-auto p-2.5 sm:p-3.5 flex-1 grid grid-cols-1 lg:grid-cols-12 gap-3.5 items-start">
        {/* KOLOM KIRI (LEBAR): KARTU SOAL & PEMBAHASAN */}
        <div className="lg:col-span-8 space-y-3">
          {activeItem ? (
            <div className="bg-white rounded-2xl border border-slate-200 p-4 sm:p-5 shadow-xs space-y-3.5">
              {/* Header Info Soal & Kategori */}
              <div className="flex flex-wrap items-center justify-between gap-2 border-b border-slate-100 pb-2.5">
                <div className="flex flex-wrap items-center gap-1.5">
                  <span
                    className={`px-2 py-0.5 rounded-md text-[11px] font-bold border ${getSubtesBadgeColor(
                      activeItem.question.subtes
                    )}`}
                  >
                    {activeItem.question.subtes}
                  </span>
                  {activeItem.question.topik && (
                    <span className="px-2 py-0.5 rounded-md text-[11px] font-medium bg-slate-100 text-slate-700 border border-slate-200">
                      {activeItem.question.subtes} • {activeItem.question.topik}
                    </span>
                  )}
                  {activeItem.question.sumber && (
                    <span className="px-1.5 py-0.5 rounded text-[10px] text-slate-400 bg-slate-50 border border-slate-200 font-medium">
                      {activeItem.question.sumber}
                    </span>
                  )}
                  {activeItem.waktuDetik > 0 && (
                    <span className="inline-flex items-center gap-1 text-[11px] text-slate-400 px-1.5">
                      <Clock className="w-3 h-3" />
                      {activeItem.waktuDetik}d
                    </span>
                  )}
                </div>

                {/* Status Jawaban Tag */}
                <div className="flex items-center gap-2">
                  {activeItem.ragu && (
                    <span className="inline-flex items-center gap-1 px-2.5 py-1 rounded-full text-[10px] font-bold bg-amber-100 text-amber-900 border border-amber-200">
                      <Flag className="w-3 h-3 fill-amber-700 text-amber-700" />
                      Ragu-ragu
                    </span>
                  )}
                  {activeItem.status === 'correct' ? (
                    <span className="inline-flex items-center gap-1.5 px-3 py-1 rounded-full text-xs font-bold bg-emerald-100 text-emerald-800 border border-emerald-200">
                      <CheckCircle2 className="w-3.5 h-3.5 text-emerald-600" />
                      <span>Benar (+5 Poin)</span>
                    </span>
                  ) : activeItem.status === 'wrong' ? (
                    <span className="inline-flex items-center gap-1.5 px-3 py-1 rounded-full text-xs font-bold bg-rose-100 text-rose-800 border border-rose-200">
                      <XCircle className="w-3.5 h-3.5 text-rose-600" />
                      <span>Salah (0 Poin)</span>
                    </span>
                  ) : (
                    <span className="inline-flex items-center gap-1.5 px-3 py-1 rounded-full text-xs font-bold bg-slate-100 text-slate-700 border border-slate-200">
                      <HelpCircle className="w-3.5 h-3.5 text-slate-500" />
                      <span>Tidak Dijawab (0 Poin)</span>
                    </span>
                  )}
                </div>
              </div>

              {/* Nomor Urut Soal */}
              <div className="font-bold text-slate-900 text-xs sm:text-sm">
                Soal Nomor {currentOriginalIndex + 1}
              </div>

              {/* Gambar Soal (Figural / Diagram) */}
              {activeItem.question.gambar_url && !(
                activeItem.question.soal && (
                  /!\[[^\]]*\]|<img/i.test(activeItem.question.soal) ||
                  activeItem.question.soal.includes(activeItem.question.gambar_url.split('/').pop() || activeItem.question.gambar_url)
                )
              ) && (
                <div className="p-3 bg-slate-50 border border-slate-200 rounded-xl flex flex-col items-center justify-center">
                  {/* eslint-disable-next-line @next/next/no-img-element */}
                  <img
                    src={formatImageUrl(activeItem.question.gambar_url)}
                    alt="Gambar Soal"
                    className="max-h-56 sm:max-h-64 w-auto object-contain rounded-lg"
                  />
                </div>
              )}

              {/* Teks Soal (Markdown + LaTeX) */}
              <div className="text-slate-900 text-xs sm:text-sm leading-relaxed">
                <MarkdownRenderer content={activeItem.question.soal} />
              </div>

              {/* Opsi Pilihan Jawaban (A, B, C, D, E) */}
              <div className="space-y-2 pt-1">
                {['A', 'B', 'C', 'D', 'E'].map((letter) => {
                  const optionText = activeItem.question.opsi?.[letter];
                  if (!optionText && optionText !== '') return null;

                  const isUserAnswer = activeItem.userAnswer === letter;
                  const isKey = activeItem.question.kunci === letter;

                  let cardClasses = 'border-slate-200 bg-white text-slate-800';
                  let badgeClasses = 'bg-slate-100 text-slate-600 border border-slate-200';

                  if (isKey) {
                    // Kunci Jawaban Resmi (Selalu Hijau)
                    cardClasses =
                      'border-emerald-500 bg-emerald-50/70 text-emerald-950 font-medium ring-2 ring-emerald-500/20';
                    badgeClasses = 'bg-emerald-600 text-white shadow-xs';
                  } else if (isUserAnswer && !isKey) {
                    // Jawaban Salah yang Dipilih User (Merah)
                    cardClasses =
                      'border-rose-400 bg-rose-50/70 text-rose-950 ring-2 ring-rose-400/20 font-medium';
                    badgeClasses = 'bg-rose-600 text-white shadow-xs';
                  }

                  return (
                    <div
                      key={letter}
                      className={`w-full text-left p-2.5 sm:p-3 rounded-xl border text-xs sm:text-sm flex items-start gap-2.5 transition ${cardClasses}`}
                    >
                      <div
                        className={`w-6.5 h-6.5 rounded-lg flex items-center justify-center text-xs font-bold shrink-0 transition ${badgeClasses}`}
                      >
                        {letter}
                      </div>

                      {/* Render Teks Opsi atau Gambar Opsi (Figural) */}
                      <div className="flex-1 pt-0.5 overflow-x-auto text-xs sm:text-sm">
                        <MarkdownRenderer content={optionText} />
                      </div>

                      {/* Status Opsi Label */}
                      <div className="shrink-0 pt-0.5 text-right flex flex-col items-end gap-1">
                        {activeItem.question.subtes === 'TKP' && activeItem.question.skor_tkp?.[letter] !== undefined && (
                          <span
                            className={`inline-block text-[10px] font-bold px-2 py-0.5 rounded-md border ${
                              activeItem.question.skor_tkp[letter] === 5
                                ? 'bg-emerald-100 text-emerald-800 border-emerald-300'
                                : 'bg-slate-100 text-slate-700 border-slate-300'
                            }`}
                          >
                            Skor: {activeItem.question.skor_tkp[letter]}
                          </span>
                        )}
                        {isKey && (
                          <span className="inline-block text-[10px] font-bold uppercase tracking-wider text-emerald-800 bg-emerald-100/90 px-2 py-0.5 rounded-md border border-emerald-200">
                            {activeItem.question.subtes === 'TKP' ? '✓ Skor Tertinggi' : '✓ Kunci Jawaban'}
                          </span>
                        )}
                        {isUserAnswer && !isKey && (
                          <span className="inline-block text-[10px] font-bold uppercase tracking-wider text-rose-800 bg-rose-100/90 px-2 py-0.5 rounded-md border border-rose-200">
                            ✗ Jawaban Anda
                          </span>
                        )}
                      </div>
                    </div>
                  );
                })}
              </div>

              {/* Kotak Pembahasan Lengkap & Beranotasi */}
              <div className="mt-4 p-3.5 sm:p-4 rounded-xl bg-indigo-50/50 border border-indigo-100 space-y-2.5">
                <div className="flex items-center gap-2 text-indigo-900 font-bold text-xs uppercase tracking-wider">
                  <BookOpen className="w-3.5 h-3.5 text-indigo-600" />
                  <span>Pembahasan & Analisis Soal</span>
                </div>

                {activeItem.question.pembahasan ? (
                  <div className="text-slate-800 text-xs sm:text-sm leading-relaxed overflow-x-auto">
                    <MarkdownRenderer content={activeItem.question.pembahasan} />
                  </div>
                ) : (
                  <p className="text-xs text-slate-500 italic">
                    Belum ada pembahasan tertulis untuk butir soal ini.
                  </p>
                )}

                {/* Gambar Pembahasan Tambahan jika ada */}
                {activeItem.question.pembahasan_gambar && !(
                  activeItem.question.pembahasan && (
                    /!\[[^\]]*\]|<img/i.test(activeItem.question.pembahasan) ||
                    activeItem.question.pembahasan.includes(activeItem.question.pembahasan_gambar.split('/').pop() || activeItem.question.pembahasan_gambar)
                  )
                ) && (
                  <div className="mt-3 pt-2.5 border-t border-indigo-100 flex flex-col items-center">
                    <span className="self-start text-[10px] font-semibold text-slate-500 mb-1.5">
                      Diagram / Visual Penjelas:
                    </span>
                    {/* eslint-disable-next-line @next/next/no-img-element */}
                    <img
                      src={formatImageUrl(activeItem.question.pembahasan_gambar)}
                      alt="Diagram Pembahasan"
                      className="max-h-56 w-auto object-contain rounded-lg border border-indigo-200 bg-white p-2"
                    />
                  </div>
                )}
              </div>

              {/* Navigasi Soal Bawah */}
              <div className="flex items-center justify-between pt-3 border-t border-slate-100 gap-3">
                <button
                  type="button"
                  onClick={handlePrev}
                  disabled={currentIndex === 0}
                  className="px-3.5 py-2 rounded-lg border border-slate-200 text-slate-700 text-xs font-semibold hover:bg-slate-50 transition flex items-center gap-1.5 disabled:opacity-30 disabled:cursor-not-allowed"
                >
                  <ChevronLeft className="w-3.5 h-3.5" />
                  <span>Sebelumnya</span>
                </button>

                <div className="text-xs font-semibold text-slate-500">
                  {currentOriginalIndex + 1} dari {items.length} Soal
                </div>

                <button
                  type="button"
                  onClick={handleNext}
                  disabled={currentIndex === filteredItems.length - 1}
                  className="px-3.5 py-2 rounded-lg bg-indigo-600 hover:bg-indigo-700 text-white text-xs font-bold shadow-xs transition flex items-center gap-1.5 disabled:opacity-30 disabled:cursor-not-allowed"
                >
                  <span>Selanjutnya</span>
                  <ChevronRight className="w-3.5 h-3.5" />
                </button>
              </div>
            </div>
          ) : (
            <div className="p-8 text-center bg-white rounded-2xl border border-slate-200 text-slate-400">
              Tidak ada butir soal yang sesuai dengan filter yang dipilih.
            </div>
          )}
        </div>

        {/* KOLOM KANAN: LEMBAR NOMOR PEMBAHASAN CAT BKN (STICKY) */}
        <aside className="hidden lg:block lg:col-span-4 sticky top-16 space-y-3">
          <div className="bg-white rounded-2xl border border-slate-200 p-3.5 shadow-xs space-y-2.5">
            <div className="flex items-center justify-between border-b border-slate-100 pb-2.5">
              <div>
                <h3 className="font-bold text-slate-900 text-xs uppercase tracking-wider">
                  Lembar Nomor Soal
                </h3>
                <p className="text-[10px] text-slate-400 mt-0.5">
                  Klik nomor untuk langsung meninjau pembahasan
                </p>
              </div>
            </div>

            {/* Filter Cepat Nomor */}
            <div className="flex flex-wrap gap-1 text-[10px]">
              <button
                type="button"
                onClick={() => {
                  setFilter('all');
                  setCurrentIndex(0);
                }}
                className={`px-2 py-0.5 rounded-md font-semibold transition ${
                  filter === 'all'
                    ? 'bg-slate-800 text-white'
                    : 'bg-slate-100 text-slate-600 hover:bg-slate-200'
                }`}
              >
                Semua ({items.length})
              </button>
              <button
                type="button"
                onClick={() => {
                  setFilter('wrong');
                  setCurrentIndex(0);
                }}
                className={`px-2 py-0.5 rounded-md font-semibold transition ${
                  filter === 'wrong'
                    ? 'bg-rose-600 text-white'
                    : 'bg-rose-50 text-rose-700 hover:bg-rose-100'
                }`}
              >
                Salah ({wrongCount + emptyCount})
              </button>
              <button
                type="button"
                onClick={() => {
                  setFilter('correct');
                  setCurrentIndex(0);
                }}
                className={`px-2 py-0.5 rounded-md font-semibold transition ${
                  filter === 'correct'
                    ? 'bg-emerald-600 text-white'
                    : 'bg-emerald-50 text-emerald-700 hover:bg-emerald-100'
                }`}
              >
                Benar ({correctCount})
              </button>
            </div>

            {/* Grid Tombol Nomor Soal (5 Kolom Mirip Ujian Sebenarnya) */}
            <div className="grid grid-cols-5 gap-1.5 max-h-[340px] overflow-y-auto pr-1">
              {items.map((it, idx) => {
                const isActive = activeItem?.question.id === it.question.id;
                let bgClasses = 'bg-slate-100 text-slate-700 hover:bg-slate-200 border-slate-200';

                if (it.status === 'correct') {
                  bgClasses =
                    'bg-emerald-600 text-white hover:bg-emerald-700 border-emerald-600 font-bold';
                } else if (it.status === 'wrong') {
                  bgClasses =
                    'bg-rose-600 text-white hover:bg-rose-700 border-rose-600 font-bold';
                }

                return (
                  <button
                    key={it.question.id}
                    type="button"
                    onClick={() => handleSelectQuestion(idx)}
                    className={`h-8 rounded-lg text-xs flex items-center justify-center font-bold border transition relative ${bgClasses} ${
                      isActive
                        ? 'ring-2 ring-indigo-600 ring-offset-2 scale-105 z-10 shadow-sm'
                        : ''
                    }`}
                  >
                    <span>{idx + 1}</span>
                    {it.ragu && (
                      <span className="w-2.5 h-2.5 rounded-full bg-amber-400 border border-white absolute -top-1 -right-1" />
                    )}
                  </button>
                );
              })}
            </div>

            {/* Legenda Warna */}
            <div className="pt-2.5 border-t border-slate-100 grid grid-cols-2 gap-1.5 text-[10px] text-slate-600 font-medium">
              <div className="flex items-center gap-1.5">
                <span className="w-3 h-3 rounded-md bg-emerald-600 shrink-0" />
                <span>Benar ({correctCount})</span>
              </div>
              <div className="flex items-center gap-1.5">
                <span className="w-3 h-3 rounded-md bg-rose-600 shrink-0" />
                <span>Salah ({wrongCount})</span>
              </div>
              <div className="flex items-center gap-1.5">
                <span className="w-3 h-3 rounded-md bg-slate-100 border border-slate-300 shrink-0" />
                <span>Kosong ({emptyCount})</span>
              </div>
              <div className="flex items-center gap-1.5">
                <span className="w-3 h-3 rounded-md bg-amber-400 shrink-0" />
                <span>Ragu ({raguCount})</span>
              </div>
            </div>

            {/* Quick Links */}
            <div className="pt-1.5 flex flex-col gap-1.5">
              <Link
                href={`/ujian/${attemptId}/hasil`}
                className="w-full py-2 px-3 rounded-lg bg-slate-100 hover:bg-slate-200 text-slate-800 text-xs font-semibold transition text-center"
              >
                Lihat Ringkasan Skor
              </Link>
              <Link
                href="/"
                className="w-full py-2 px-3 rounded-lg bg-indigo-50 hover:bg-indigo-100 text-indigo-700 text-xs font-bold transition text-center"
              >
                Kembali ke Dashboard
              </Link>
            </div>
          </div>
        </aside>
      </main>

      {/* MOBILE SHEET DRAWER (UNTUK HP) */}
      {isDrawerOpen && (
        <div className="fixed inset-0 z-50 flex items-end sm:items-center justify-center p-0 sm:p-4 bg-slate-900/60 backdrop-blur-xs animate-in fade-in">
          <div className="bg-white rounded-t-3xl sm:rounded-3xl max-w-md w-full max-h-[85vh] flex flex-col shadow-2xl overflow-hidden animate-in slide-in-from-bottom">
            <div className="p-4 border-b border-slate-100 flex items-center justify-between">
              <div>
                <h3 className="font-bold text-slate-900 text-sm">Lembar Nomor Pembahasan</h3>
                <p className="text-[11px] text-slate-400">Pilih butir soal untuk ditinjau</p>
              </div>
              <button
                type="button"
                onClick={() => setIsDrawerOpen(false)}
                className="p-1.5 rounded-xl text-slate-400 hover:text-slate-600 hover:bg-slate-100"
              >
                <X className="w-4 h-4" />
              </button>
            </div>

            {/* Filter Cepat di Drawer */}
            <div className="p-3 border-b border-slate-100 flex gap-1.5 overflow-x-auto text-xs">
              <button
                type="button"
                onClick={() => {
                  setFilter('all');
                  setCurrentIndex(0);
                }}
                className={`px-3 py-1.5 rounded-xl font-semibold transition shrink-0 ${
                  filter === 'all'
                    ? 'bg-slate-800 text-white'
                    : 'bg-slate-100 text-slate-600'
                }`}
              >
                Semua ({items.length})
              </button>
              <button
                type="button"
                onClick={() => {
                  setFilter('wrong');
                  setCurrentIndex(0);
                }}
                className={`px-3 py-1.5 rounded-xl font-semibold transition shrink-0 ${
                  filter === 'wrong'
                    ? 'bg-rose-600 text-white'
                    : 'bg-rose-50 text-rose-700'
                }`}
              >
                Salah ({wrongCount + emptyCount})
              </button>
              <button
                type="button"
                onClick={() => {
                  setFilter('correct');
                  setCurrentIndex(0);
                }}
                className={`px-3 py-1.5 rounded-xl font-semibold transition shrink-0 ${
                  filter === 'correct'
                    ? 'bg-emerald-600 text-white'
                    : 'bg-emerald-50 text-emerald-700'
                }`}
              >
                Benar ({correctCount})
              </button>
            </div>

            <div className="p-4 overflow-y-auto grid grid-cols-5 gap-2.5 flex-1">
              {items.map((it, idx) => {
                const isActive = activeItem?.question.id === it.question.id;
                let bgClasses = 'bg-slate-100 text-slate-700 border-slate-200';

                if (it.status === 'correct') {
                  bgClasses = 'bg-emerald-600 text-white border-emerald-600 font-bold';
                } else if (it.status === 'wrong') {
                  bgClasses = 'bg-rose-600 text-white border-rose-600 font-bold';
                }

                return (
                  <button
                    key={it.question.id}
                    type="button"
                    onClick={() => handleSelectQuestion(idx)}
                    className={`h-11 rounded-xl text-xs flex items-center justify-center font-bold border transition relative ${bgClasses} ${
                      isActive ? 'ring-2 ring-indigo-600 ring-offset-2 scale-105' : ''
                    }`}
                  >
                    <span>{idx + 1}</span>
                    {it.ragu && (
                      <span className="w-2.5 h-2.5 rounded-full bg-amber-400 border border-white absolute -top-1 -right-1" />
                    )}
                  </button>
                );
              })}
            </div>

            <div className="p-3 border-t border-slate-100 bg-slate-50 flex items-center justify-between text-xs font-semibold">
              <span className="text-emerald-700">✓ {correctCount} Benar</span>
              <span className="text-rose-600">✗ {wrongCount} Salah</span>
              <button
                type="button"
                onClick={() => setIsDrawerOpen(false)}
                className="px-3 py-1.5 rounded-xl bg-slate-200 text-slate-700 hover:bg-slate-300"
              >
                Tutup
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
};
