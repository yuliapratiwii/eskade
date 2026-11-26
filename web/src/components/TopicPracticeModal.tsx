'use client';

import React, { useState, useEffect } from 'react';
import { SubtesType } from '@/lib/types';
import { getAvailableTopics } from '@/lib/exam-service';
import { createClient } from '@/lib/supabase/client';
import { X, BookOpen, Layers, CheckCircle, Loader2 } from 'lucide-react';

interface TopicPracticeModalProps {
  isOpen: boolean;
  onClose: () => void;
  onStart: (subtes: SubtesType, topik: string, jumlahSoal: number) => void;
  loading: boolean;
}

export const TopicPracticeModal: React.FC<TopicPracticeModalProps> = ({
  isOpen,
  onClose,
  onStart,
  loading,
}) => {
  const supabase = createClient();
  const [subtes, setSubtes] = useState<SubtesType>('TWK');
  const [topics, setTopics] = useState<string[]>([]);
  const [selectedTopic, setSelectedTopic] = useState<string>('all');
  const [questionCount, setQuestionCount] = useState<number>(10);
  const [fetchingTopics, setFetchingTopics] = useState(false);

  useEffect(() => {
    if (!isOpen) return;

    let isMounted = true;
    async function loadTopics() {
      setFetchingTopics(true);
      try {
        const list = await getAvailableTopics(supabase, subtes);
        if (isMounted) {
          setTopics(list);
          setSelectedTopic('all');
        }
      } catch (e) {
        console.error('Error fetching topics:', e);
      } finally {
        if (isMounted) setFetchingTopics(false);
      }
    }

    loadTopics();
    return () => {
      isMounted = false;
    };
  }, [subtes, isOpen, supabase]);

  if (!isOpen) return null;

  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    onStart(subtes, selectedTopic, questionCount);
  };

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center p-4 bg-slate-900/50 backdrop-blur-xs animate-in fade-in duration-200">
      <div className="bg-white w-full max-w-md rounded-2xl shadow-2xl border border-slate-100 overflow-hidden">
        {/* Header */}
        <div className="flex items-center justify-between px-5 py-4 border-b border-slate-100">
          <div className="flex items-center gap-2">
            <div className="w-8 h-8 rounded-lg bg-indigo-50 text-indigo-600 flex items-center justify-center">
              <Layers className="w-4 h-4" />
            </div>
            <div>
              <h3 className="font-bold text-slate-800 text-sm">Latihan Per Topik</h3>
              <p className="text-[11px] text-slate-500">Tanpa timer, pembahasan langsung tampil</p>
            </div>
          </div>
          <button
            onClick={onClose}
            className="p-1.5 rounded-lg text-slate-400 hover:text-slate-600 hover:bg-slate-100 transition"
          >
            <X className="w-5 h-5" />
          </button>
        </div>

        {/* Form Body */}
        <form onSubmit={handleSubmit} className="p-5 space-y-4">
          {/* Pilih Subtes */}
          <div>
            <label className="block text-xs font-semibold text-slate-700 uppercase tracking-wider mb-2">
              Pilih Subtes
            </label>
            <div className="grid grid-cols-2 gap-2">
              <button
                type="button"
                onClick={() => setSubtes('TWK')}
                className={`py-2.5 px-3 rounded-xl border text-xs font-semibold flex items-center justify-center gap-2 transition ${
                  subtes === 'TWK'
                    ? 'border-indigo-600 bg-indigo-50/70 text-indigo-700'
                    : 'border-slate-200 text-slate-600 hover:bg-slate-50'
                }`}
              >
                <BookOpen className="w-3.5 h-3.5" />
                <span>TWK (Wawasan Kebangsaan)</span>
              </button>
              <button
                type="button"
                onClick={() => setSubtes('TIU')}
                className={`py-2.5 px-3 rounded-xl border text-xs font-semibold flex items-center justify-center gap-2 transition ${
                  subtes === 'TIU'
                    ? 'border-indigo-600 bg-indigo-50/70 text-indigo-700'
                    : 'border-slate-200 text-slate-600 hover:bg-slate-50'
                }`}
              >
                <BookOpen className="w-3.5 h-3.5" />
                <span>TIU (Intelegensia Umum)</span>
              </button>
            </div>
          </div>

          {/* Pilih Topik */}
          <div>
            <label className="block text-xs font-semibold text-slate-700 uppercase tracking-wider mb-1.5">
              Pilih Topik Materi
            </label>
            {fetchingTopics ? (
              <div className="py-2.5 text-xs text-slate-400 flex items-center gap-2">
                <Loader2 className="w-3.5 h-3.5 animate-spin" />
                <span>Memuat topik...</span>
              </div>
            ) : (
              <select
                value={selectedTopic}
                onChange={(e) => setSelectedTopic(e.target.value)}
                className="w-full px-3 py-2.5 rounded-xl border border-slate-200 text-xs sm:text-sm focus:outline-none focus:ring-2 focus:ring-indigo-500/20 focus:border-indigo-600 bg-white"
              >
                <option value="all">Semua Topik ({subtes})</option>
                {topics.map((t) => (
                  <option key={t} value={t}>
                    {t}
                  </option>
                ))}
              </select>
            )}
          </div>

          {/* Jumlah Soal */}
          <div>
            <label className="block text-xs font-semibold text-slate-700 uppercase tracking-wider mb-1.5">
              Jumlah Soal
            </label>
            <div className="grid grid-cols-4 gap-2">
              {[5, 10, 15, 20].map((count) => (
                <button
                  key={count}
                  type="button"
                  onClick={() => setQuestionCount(count)}
                  className={`py-2 rounded-xl text-xs font-medium border transition ${
                    questionCount === count
                      ? 'border-indigo-600 bg-indigo-600 text-white shadow-xs'
                      : 'border-slate-200 text-slate-700 hover:bg-slate-50'
                  }`}
                >
                  {count} Soal
                </button>
              ))}
            </div>
          </div>

          {/* Action Buttons */}
          <div className="pt-3 border-t border-slate-100 flex items-center justify-end gap-2">
            <button
              type="button"
              onClick={onClose}
              disabled={loading}
              className="px-4 py-2.5 rounded-xl text-xs font-medium text-slate-600 hover:bg-slate-100 transition"
            >
              Batal
            </button>
            <button
              type="submit"
              disabled={loading}
              className="px-5 py-2.5 rounded-xl bg-indigo-600 hover:bg-indigo-700 text-white text-xs font-semibold shadow-md shadow-indigo-100 flex items-center gap-2 transition disabled:opacity-70"
            >
              {loading ? (
                <>
                  <Loader2 className="w-3.5 h-3.5 animate-spin" />
                  <span>Memproses...</span>
                </>
              ) : (
                <>
                  <CheckCircle className="w-3.5 h-3.5" />
                  <span>Mulai Latihan</span>
                </>
              )}
            </button>
          </div>
        </form>
      </div>
    </div>
  );
};
