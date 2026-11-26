'use client';

import React, { useState, useEffect, useCallback } from 'react';
import Link from 'next/link';
import { useRouter } from 'next/navigation';
import { createClient } from '@/lib/supabase/client';
import { SubtesType } from '@/lib/types';
import { MarkdownRenderer } from '../MarkdownRenderer';
import { MultiSelectDropdown } from './MultiSelectDropdown';
import {
  Search,
  Filter,
  Plus,
  Edit3,
  Trash2,
  CheckCircle,
  FileEdit,
  AlertTriangle,
  ChevronLeft,
  ChevronRight,
  Loader2,
  Tag,
  Eye,
  X,
  RotateCcw,
} from 'lucide-react';

interface QuestionSummary {
  id: string;
  nomor: number;
  sumber: string;
  subtes: SubtesType;
  topik: string | null;
  soal: string;
  status: 'draft' | 'published';
  gambar_url: string | null;
  kunci: string | null;
}

interface QuestionListClientProps {
  initialTopics: string[];
  initialSources: string[];
}

export const QuestionListClient: React.FC<QuestionListClientProps> = ({
  initialTopics,
  initialSources,
}) => {
  const router = useRouter();
  const supabase = createClient();

  const STORAGE_KEY = 'admin_bank_soal_filter_state';

  // Filters & Search (Multi-select)
  const [search, setSearch] = useState('');
  const [subtesFilter, setSubtesFilter] = useState<string[]>([]);
  const [topicFilter, setTopicFilter] = useState<string[]>([]);
  const [statusFilter, setStatusFilter] = useState<string[]>([]);
  const [sourceFilter, setSourceFilter] = useState<string[]>([]);

  // Pagination & Initialization State
  const [page, setPage] = useState(1);
  const pageSize = 15;
  const [totalCount, setTotalCount] = useState(0);
  const [isInitialized, setIsInitialized] = useState(false);

  // Data & Loading
  const [questions, setQuestions] = useState<QuestionSummary[]>([]);
  const [loading, setLoading] = useState(true);

  // Bulk Actions
  const [selectedIds, setSelectedIds] = useState<string[]>([]);
  const [bulkLoading, setBulkLoading] = useState(false);
  const [isDeleteModalOpen, setIsDeleteModalOpen] = useState(false);
  const [isTopicModalOpen, setIsTopicModalOpen] = useState(false);
  const [newTopicInput, setNewTopicInput] = useState('');

  // 1. Inisialisasi state filter dari URL Query atau sessionStorage
  useEffect(() => {
    if (typeof window === 'undefined') return;

    const urlParams = new URLSearchParams(window.location.search);
    const hasUrlParams =
      urlParams.has('q') ||
      urlParams.has('subtes') ||
      urlParams.has('topik') ||
      urlParams.has('status') ||
      urlParams.has('sumber') ||
      urlParams.has('page');

    if (hasUrlParams) {
      if (urlParams.get('q')) setSearch(urlParams.get('q') || '');
      if (urlParams.get('subtes')) setSubtesFilter(urlParams.get('subtes')!.split(',').filter(Boolean));
      if (urlParams.get('topik')) setTopicFilter(urlParams.get('topik')!.split(',').filter(Boolean));
      if (urlParams.get('status')) setStatusFilter(urlParams.get('status')!.split(',').filter(Boolean));
      if (urlParams.get('sumber')) setSourceFilter(urlParams.get('sumber')!.split(',').filter(Boolean));
      if (urlParams.get('page')) {
        const p = parseInt(urlParams.get('page')!, 10);
        if (!isNaN(p) && p > 0) setPage(p);
      }
    } else {
      // Pulihkan dari sessionStorage jika ada
      try {
        const stored = sessionStorage.getItem(STORAGE_KEY);
        if (stored) {
          const parsed = JSON.parse(stored);
          if (parsed.search) setSearch(parsed.search);
          if (Array.isArray(parsed.subtesFilter)) setSubtesFilter(parsed.subtesFilter);
          if (Array.isArray(parsed.topicFilter)) setTopicFilter(parsed.topicFilter);
          if (Array.isArray(parsed.statusFilter)) setStatusFilter(parsed.statusFilter);
          if (Array.isArray(parsed.sourceFilter)) setSourceFilter(parsed.sourceFilter);
          if (typeof parsed.page === 'number' && parsed.page > 0) setPage(parsed.page);
        }
      } catch (err) {
        console.error('Gagal membaca filter dari sessionStorage:', err);
      }
    }
    setIsInitialized(true);
  }, []);

  // 2. Sinkronisasi filter ke sessionStorage dan URL tanpa reload
  useEffect(() => {
    if (!isInitialized || typeof window === 'undefined') return;

    const filterState = {
      search,
      subtesFilter,
      topicFilter,
      statusFilter,
      sourceFilter,
      page,
    };
    sessionStorage.setItem(STORAGE_KEY, JSON.stringify(filterState));

    const params = new URLSearchParams();
    if (search.trim()) params.set('q', search.trim());
    if (subtesFilter.length > 0) params.set('subtes', subtesFilter.join(','));
    if (topicFilter.length > 0) params.set('topik', topicFilter.join(','));
    if (statusFilter.length > 0) params.set('status', statusFilter.join(','));
    if (sourceFilter.length > 0) params.set('sumber', sourceFilter.join(','));
    if (page > 1) params.set('page', String(page));

    const newUrl = params.toString()
      ? `${window.location.pathname}?${params.toString()}`
      : window.location.pathname;
    window.history.replaceState(null, '', newUrl);
  }, [isInitialized, search, subtesFilter, topicFilter, statusFilter, sourceFilter, page]);

  // Fetch Questions
  const fetchQuestions = useCallback(async () => {
    if (!isInitialized) return;
    setLoading(true);
    try {
      let query = supabase
        .from('questions')
        .select('id, nomor, sumber, subtes, topik, soal, status, gambar_url, kunci', {
          count: 'exact',
        });

      if (subtesFilter.length > 0) {
        query = query.in('subtes', subtesFilter);
      }
      if (topicFilter.length > 0) {
        query = query.in('topik', topicFilter);
      }
      if (statusFilter.length > 0) {
        query = query.in('status', statusFilter);
      }
      if (sourceFilter.length > 0) {
        query = query.in('sumber', sourceFilter);
      }
      if (search.trim()) {
        query = query.ilike('soal', `%${search.trim()}%`);
      }

      // Order & Pagination
      const from = (page - 1) * pageSize;
      const to = from + pageSize - 1;

      const { data, count, error } = await query
        .order('subtes', { ascending: true })
        .order('nomor', { ascending: true })
        .range(from, to);

      if (error) {
        console.error('Error fetching questions:', error);
      } else {
        setQuestions((data as QuestionSummary[]) || []);
        setTotalCount(count || 0);
      }
    } catch (e) {
      console.error(e);
    } finally {
      setLoading(false);
    }
  }, [supabase, isInitialized, subtesFilter, topicFilter, statusFilter, sourceFilter, search, page]);

  useEffect(() => {
    fetchQuestions();
  }, [fetchQuestions]);

  // Handler Perubahan Filter dengan Reset Halaman
  const handleSearchChange = (newVal: string) => {
    setSearch(newVal);
    setPage(1);
    setSelectedIds([]);
  };

  const handleSubtesChange = (vals: string[]) => {
    setSubtesFilter(vals);
    setPage(1);
    setSelectedIds([]);
  };

  const handleTopicChange = (vals: string[]) => {
    setTopicFilter(vals);
    setPage(1);
    setSelectedIds([]);
  };

  const handleStatusChange = (vals: string[]) => {
    setStatusFilter(vals);
    setPage(1);
    setSelectedIds([]);
  };

  const handleSourceChange = (vals: string[]) => {
    setSourceFilter(vals);
    setPage(1);
    setSelectedIds([]);
  };

  // Cek apakah ada filter yang sedang aktif
  const hasActiveFilters = Boolean(
    search.trim() ||
    subtesFilter.length > 0 ||
    topicFilter.length > 0 ||
    statusFilter.length > 0 ||
    sourceFilter.length > 0
  );

  // Bersihkan semua filter
  const handleClearAllFilters = () => {
    setSearch('');
    setSubtesFilter([]);
    setTopicFilter([]);
    setStatusFilter([]);
    setSourceFilter([]);
    setPage(1);
    setSelectedIds([]);
    if (typeof window !== 'undefined') {
      sessionStorage.removeItem(STORAGE_KEY);
      window.history.replaceState(null, '', window.location.pathname);
    }
  };

  // Checkbox Selection
  const handleToggleSelectAll = () => {
    if (selectedIds.length === questions.length) {
      setSelectedIds([]);
    } else {
      setSelectedIds(questions.map((q) => q.id));
    }
  };

  const handleToggleSelect = (id: string) => {
    setSelectedIds((prev) =>
      prev.includes(id) ? prev.filter((i) => i !== id) : [...prev, id]
    );
  };

  // Bulk: Terbitkan / Draft
  const handleBulkStatusChange = async (targetStatus: 'published' | 'draft') => {
    if (selectedIds.length === 0) return;
    setBulkLoading(true);
    try {
      const { error } = await supabase
        .from('questions')
        .update({ status: targetStatus, updated_at: new Date().toISOString() })
        .in('id', selectedIds);

      if (error) throw error;
      setSelectedIds([]);
      fetchQuestions();
    } catch (err: unknown) {
      alert('Gagal mengubah status: ' + (err instanceof Error ? err.message : String(err)));
    } finally {
      setBulkLoading(false);
    }
  };

  // Bulk: Ubah Topik
  const handleBulkTopicChange = async () => {
    if (!newTopicInput.trim() || selectedIds.length === 0) return;
    setBulkLoading(true);
    try {
      const { error } = await supabase
        .from('questions')
        .update({ topik: newTopicInput.trim(), updated_at: new Date().toISOString() })
        .in('id', selectedIds);

      if (error) throw error;
      setIsTopicModalOpen(false);
      setNewTopicInput('');
      setSelectedIds([]);
      fetchQuestions();
    } catch (err: unknown) {
      alert('Gagal mengubah topik: ' + (err instanceof Error ? err.message : String(err)));
    } finally {
      setBulkLoading(false);
    }
  };

  // Bulk / Single: Hapus
  const handleBulkDelete = async () => {
    if (selectedIds.length === 0) return;
    setBulkLoading(true);
    try {
      const { error } = await supabase
        .from('questions')
        .delete()
        .in('id', selectedIds);

      if (error) throw error;
      setIsDeleteModalOpen(false);
      setSelectedIds([]);
      fetchQuestions();
    } catch (err: unknown) {
      alert('Gagal menghapus soal: ' + (err instanceof Error ? err.message : String(err)));
    } finally {
      setBulkLoading(false);
    }
  };

  const totalPages = Math.ceil(totalCount / pageSize) || 1;

  // Strips markdown characters for table preview
  const stripMarkdown = (text: string) => {
    return text
      .replace(/!\[.*?\]\(.*?\)/g, '[Gambar]')
      .replace(/\[.*?\]\(.*?\)/g, '$1')
      .replace(/(\*\*|__)(.*?)\1/g, '$2')
      .replace(/(\*|_)(.*?)\1/g, '$2')
      .replace(/`{1,3}.*?`{1,3}/g, '')
      .replace(/#+\s/g, '')
      .replace(/\$\$?[^$]+\$\$?/g, '[Rumus]')
      .replace(/\s+/g, ' ')
      .trim();
  };

  return (
    <div className="space-y-4">
      {/* Header Halaman */}
      <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-3">
        <div>
          <h1 className="text-xl sm:text-2xl font-bold text-slate-900 tracking-tight">
            Bank Soal SKD
          </h1>
          <p className="text-xs text-slate-500 mt-0.5">
            Total {totalCount} butir soal terdaftar di database
          </p>
        </div>

        <Link
          href="/admin/soal/baru"
          className="inline-flex items-center justify-center gap-2 px-4 py-2.5 rounded-xl bg-indigo-600 hover:bg-indigo-700 text-white font-semibold text-xs shadow-md shadow-indigo-100 transition"
        >
          <Plus className="w-4 h-4" />
          <span>Tambah Soal Baru</span>
        </Link>
      </div>

      {/* Filter & Search Bar Card */}
      <div className="bg-white rounded-2xl border border-slate-200 p-4 shadow-xs space-y-3">
        {/* Search Input */}
        <div className="relative">
          <Search className="w-4 h-4 text-slate-400 absolute left-3.5 top-3" />
          <input
            type="text"
            value={search}
            onChange={(e) => handleSearchChange(e.target.value)}
            placeholder="Cari kata kunci pada teks soal..."
            className="w-full pl-10 pr-4 py-2.5 rounded-xl border border-slate-200 text-xs sm:text-sm focus:outline-none focus:ring-2 focus:ring-indigo-500/20 focus:border-indigo-600 transition"
          />
          {search && (
            <button
              type="button"
              onClick={() => handleSearchChange('')}
              className="absolute right-3 top-3 text-slate-400 hover:text-slate-600 p-0.5"
              title="Hapus pencarian"
            >
              <X className="w-3.5 h-3.5" />
            </button>
          )}
        </div>

        {/* Filters Grid (Multi-Select) */}
        <div className="grid grid-cols-2 sm:grid-cols-4 gap-2.5 text-xs">
          {/* Subtes */}
          <MultiSelectDropdown
            label="Subtes"
            placeholder="Semua Subtes"
            options={['TWK', 'TIU', 'TKP']}
            selected={subtesFilter}
            onChange={handleSubtesChange}
            searchable={false}
          />

          {/* Status */}
          <MultiSelectDropdown
            label="Status"
            placeholder="Semua Status"
            options={[
              { value: 'published', label: 'Published' },
              { value: 'draft', label: 'Draft' },
            ]}
            selected={statusFilter}
            onChange={handleStatusChange}
            searchable={false}
          />

          {/* Topik */}
          <MultiSelectDropdown
            label="Topik Materi"
            placeholder="Semua Topik"
            options={initialTopics}
            selected={topicFilter}
            onChange={handleTopicChange}
            searchable={true}
          />

          {/* Sumber */}
          <MultiSelectDropdown
            label="Sumber Soal"
            placeholder="Semua Sumber"
            options={initialSources}
            selected={sourceFilter}
            onChange={handleSourceChange}
            searchable={true}
          />
        </div>

        {/* Active Filter Chips & Clear Action */}
        {hasActiveFilters && (
          <div className="flex flex-wrap items-center gap-1.5 pt-2 border-t border-slate-100 animate-in fade-in duration-150">
            <span className="text-[11px] font-semibold text-slate-400 mr-0.5">Filter Aktif:</span>

            {search.trim() && (
              <span className="inline-flex items-center gap-1 px-2.5 py-1 rounded-lg bg-indigo-50 text-indigo-800 text-[11px] font-medium border border-indigo-200">
                <span>Cari: &ldquo;{search.trim()}&rdquo;</span>
                <button
                  type="button"
                  onClick={() => handleSearchChange('')}
                  className="hover:text-indigo-950 p-0.5"
                  title="Hapus filter pencarian"
                >
                  <X className="w-3 h-3" />
                </button>
              </span>
            )}

            {subtesFilter.map((s) => (
              <span
                key={s}
                className="inline-flex items-center gap-1 px-2.5 py-1 rounded-lg bg-blue-50 text-blue-800 text-[11px] font-medium border border-blue-200"
              >
                <span>Subtes: {s}</span>
                <button
                  type="button"
                  onClick={() => handleSubtesChange(subtesFilter.filter((item) => item !== s))}
                  className="hover:text-blue-950 p-0.5"
                  title={`Hapus filter subtes ${s}`}
                >
                  <X className="w-3 h-3" />
                </button>
              </span>
            ))}

            {topicFilter.map((t) => (
              <span
                key={t}
                className="inline-flex items-center gap-1 px-2.5 py-1 rounded-lg bg-emerald-50 text-emerald-800 text-[11px] font-medium border border-emerald-200"
              >
                <span>Topik: {t}</span>
                <button
                  type="button"
                  onClick={() => handleTopicChange(topicFilter.filter((item) => item !== t))}
                  className="hover:text-emerald-950 p-0.5"
                  title={`Hapus filter topik ${t}`}
                >
                  <X className="w-3 h-3" />
                </button>
              </span>
            ))}

            {statusFilter.map((st) => (
              <span
                key={st}
                className="inline-flex items-center gap-1 px-2.5 py-1 rounded-lg bg-amber-50 text-amber-800 text-[11px] font-medium border border-amber-200"
              >
                <span>Status: {st}</span>
                <button
                  type="button"
                  onClick={() => handleStatusChange(statusFilter.filter((item) => item !== st))}
                  className="hover:text-amber-950 p-0.5"
                  title={`Hapus filter status ${st}`}
                >
                  <X className="w-3 h-3" />
                </button>
              </span>
            ))}

            {sourceFilter.map((src) => (
              <span
                key={src}
                className="inline-flex items-center gap-1 px-2.5 py-1 rounded-lg bg-purple-50 text-purple-800 text-[11px] font-medium border border-purple-200"
              >
                <span>Sumber: {src}</span>
                <button
                  type="button"
                  onClick={() => handleSourceChange(sourceFilter.filter((item) => item !== src))}
                  className="hover:text-purple-950 p-0.5"
                  title={`Hapus filter sumber ${src}`}
                >
                  <X className="w-3 h-3" />
                </button>
              </span>
            ))}

            {/* Tombol Clear Filter */}
            <button
              type="button"
              onClick={handleClearAllFilters}
              className="inline-flex items-center gap-1 px-2.5 py-1 rounded-lg bg-rose-50 hover:bg-rose-100 text-rose-700 text-[11px] font-bold transition border border-rose-200 ml-auto shadow-2xs"
              title="Reset semua filter ke kondisi awal"
            >
              <RotateCcw className="w-3 h-3" />
              <span>Bersihkan Semua Filter</span>
            </button>
          </div>
        )}
      </div>

      {/* Floating Bulk Action Bar */}
      {selectedIds.length > 0 && (
        <div className="bg-slate-900 text-white rounded-2xl p-3 shadow-lg flex flex-wrap items-center justify-between gap-3 animate-in fade-in duration-200">
          <div className="flex items-center gap-2 text-xs font-semibold">
            <span className="w-6 h-6 rounded-lg bg-indigo-600 flex items-center justify-center text-xs">
              {selectedIds.length}
            </span>
            <span>Soal Terpilih</span>
          </div>

          <div className="flex items-center gap-1.5 text-xs">
            <button
              onClick={() => handleBulkStatusChange('published')}
              disabled={bulkLoading}
              className="px-3 py-1.5 rounded-xl bg-emerald-600 hover:bg-emerald-500 font-semibold transition"
            >
              Terbitkan
            </button>
            <button
              onClick={() => handleBulkStatusChange('draft')}
              disabled={bulkLoading}
              className="px-3 py-1.5 rounded-xl bg-amber-600 hover:bg-amber-500 font-semibold transition"
            >
              Draft
            </button>
            <button
              onClick={() => setIsTopicModalOpen(true)}
              disabled={bulkLoading}
              className="px-3 py-1.5 rounded-xl bg-slate-800 hover:bg-slate-700 font-semibold transition flex items-center gap-1"
            >
              <Tag className="w-3.5 h-3.5" />
              <span>Ubah Topik</span>
            </button>
            <button
              onClick={() => setIsDeleteModalOpen(true)}
              disabled={bulkLoading}
              className="px-3 py-1.5 rounded-xl bg-rose-600 hover:bg-rose-500 font-semibold transition flex items-center gap-1"
            >
              <Trash2 className="w-3.5 h-3.5" />
              <span>Hapus</span>
            </button>
          </div>
        </div>
      )}

      {/* Tabel Soal */}
      <div className="bg-white rounded-2xl border border-slate-200 overflow-hidden shadow-xs">
        <div className="overflow-x-auto">
          <table className="min-w-full divide-y divide-slate-100 text-xs">
            <thead className="bg-slate-50 text-slate-500 font-bold uppercase tracking-wider text-[10px]">
              <tr>
                <th className="p-3 w-10 text-center">
                  <input
                    type="checkbox"
                    checked={questions.length > 0 && selectedIds.length === questions.length}
                    onChange={handleToggleSelectAll}
                    className="rounded-sm border-slate-300 text-indigo-600 focus:ring-indigo-500 cursor-pointer"
                  />
                </th>
                <th className="py-3 px-2 text-left w-16">No</th>
                <th className="py-3 px-2 text-left w-20">Subtes</th>
                <th className="py-3 px-2 text-left w-32">Topik</th>
                <th className="py-3 px-3 text-left">Potongan Soal</th>
                <th className="py-3 px-2 text-left w-24">Sumber</th>
                <th className="py-3 px-2 text-center w-20">Status</th>
                <th className="py-3 px-3 text-right w-20">Aksi</th>
              </tr>
            </thead>
            <tbody className="divide-y divide-slate-100 text-slate-700">
              {loading ? (
                <tr>
                  <td colSpan={8} className="py-12 text-center text-slate-400">
                    <Loader2 className="w-6 h-6 animate-spin mx-auto mb-2 text-indigo-600" />
                    <span>Memuat bank soal...</span>
                  </td>
                </tr>
              ) : questions.length === 0 ? (
                <tr>
                  <td colSpan={8} className="py-12 text-center text-slate-400">
                    Tidak ditemukan soal yang cocok dengan filter.
                  </td>
                </tr>
              ) : (
                questions.map((q) => {
                  const isChecked = selectedIds.includes(q.id);
                  const isPublished = q.status === 'published';

                  return (
                    <tr
                      key={q.id}
                      className={`hover:bg-slate-50/80 transition ${
                        isChecked ? 'bg-indigo-50/40' : ''
                      }`}
                    >
                      <td className="p-3 text-center">
                        <input
                          type="checkbox"
                          checked={isChecked}
                          onChange={() => handleToggleSelect(q.id)}
                          className="rounded-sm border-slate-300 text-indigo-600 focus:ring-indigo-500 cursor-pointer"
                        />
                      </td>

                      <td className="py-3 px-2 font-mono font-bold text-slate-800">
                        #{q.nomor}
                      </td>

                      <td className="py-3 px-2">
                        <span
                          className={`inline-block px-2 py-0.5 rounded-md font-bold text-[10px] ${
                            q.subtes === 'TWK'
                              ? 'bg-emerald-50 text-emerald-700 border border-emerald-200'
                              : q.subtes === 'TIU'
                              ? 'bg-blue-50 text-blue-700 border border-blue-200'
                              : 'bg-amber-50 text-amber-700 border border-amber-200'
                          }`}
                        >
                          {q.subtes}
                        </span>
                      </td>

                      <td className="py-3 px-2 font-medium text-slate-600 max-w-[130px] truncate">
                        {q.topik || '-'}
                      </td>

                      <td className="py-3 px-3">
                        <div className="line-clamp-2 text-slate-800 leading-snug max-h-14 overflow-hidden">
                          <MarkdownRenderer
                            content={q.soal}
                            className="text-xs !my-0 [&_p]:!my-0 [&_.katex]:text-xs [&_.katex-display]:!my-0.5"
                          />
                        </div>
                        {q.gambar_url && (
                          <span className="inline-block text-[10px] text-indigo-600 font-semibold mt-0.5">
                            [Ada Gambar Figural]
                          </span>
                        )}
                      </td>

                      <td className="py-3 px-2 text-[11px] text-slate-500 font-mono truncate max-w-[100px]">
                        {q.sumber}
                      </td>

                      <td className="py-3 px-2 text-center">
                        <span
                          className={`inline-block px-2 py-0.5 rounded-full text-[10px] font-bold ${
                            isPublished
                              ? 'bg-emerald-50 text-emerald-700 border border-emerald-200'
                              : 'bg-slate-100 text-slate-600'
                          }`}
                        >
                          {isPublished ? 'Terbit' : 'Draft'}
                        </span>
                      </td>

                      <td className="py-3 px-3 text-right">
                        <div className="flex items-center justify-end gap-1">
                          <Link
                            href={`/admin/soal/${q.id}`}
                            className="p-1.5 rounded-lg text-slate-500 hover:text-indigo-600 hover:bg-indigo-50 transition"
                            title="Edit Soal"
                          >
                            <Edit3 className="w-4 h-4" />
                          </Link>
                          <button
                            onClick={() => {
                              setSelectedIds([q.id]);
                              setIsDeleteModalOpen(true);
                            }}
                            className="p-1.5 rounded-lg text-slate-400 hover:text-rose-600 hover:bg-rose-50 transition"
                            title="Hapus Soal"
                          >
                            <Trash2 className="w-4 h-4" />
                          </button>
                        </div>
                      </td>
                    </tr>
                  );
                })
              )}
            </tbody>
          </table>
        </div>

        {/* Pagination Footer */}
        <div className="p-4 border-t border-slate-100 flex items-center justify-between text-xs text-slate-500">
          <div>
            Menampilkan{' '}
            <strong className="text-slate-800">
              {totalCount === 0 ? 0 : (page - 1) * pageSize + 1}-
              {Math.min(page * pageSize, totalCount)}
            </strong>{' '}
            dari <strong className="text-slate-800">{totalCount}</strong> butir soal
          </div>

          <div className="flex items-center gap-1.5">
            <button
              onClick={() => setPage((p) => Math.max(1, p - 1))}
              disabled={page === 1}
              className="p-1.5 rounded-lg border border-slate-200 hover:bg-slate-50 disabled:opacity-40 disabled:cursor-not-allowed transition"
            >
              <ChevronLeft className="w-4 h-4" />
            </button>
            <span className="font-semibold text-slate-700 px-2">
              {page} / {totalPages}
            </span>
            <button
              onClick={() => setPage((p) => Math.min(totalPages, p + 1))}
              disabled={page === totalPages}
              className="p-1.5 rounded-lg border border-slate-200 hover:bg-slate-50 disabled:opacity-40 disabled:cursor-not-allowed transition"
            >
              <ChevronRight className="w-4 h-4" />
            </button>
          </div>
        </div>
      </div>

      {/* Modal Konfirmasi Hapus Massal */}
      {isDeleteModalOpen && (
        <div className="fixed inset-0 z-50 flex items-center justify-center p-4 bg-slate-900/50 backdrop-blur-xs animate-in fade-in">
          <div className="bg-white w-full max-w-sm rounded-2xl p-6 shadow-2xl border border-slate-100 text-center">
            <div className="w-12 h-12 rounded-2xl bg-rose-50 text-rose-600 flex items-center justify-center mx-auto mb-4 border border-rose-200">
              <AlertTriangle className="w-6 h-6" />
            </div>

            <h3 className="text-base font-bold text-slate-900">Konfirmasi Hapus Soal</h3>
            <p className="text-xs text-slate-500 mt-2 leading-relaxed">
              Apakah Anda yakin ingin menghapus <strong>{selectedIds.length}</strong> butir soal ini? Tindakan ini permanen dan tidak dapat dibatalkan.
            </p>

            <div className="grid grid-cols-2 gap-2.5 mt-6">
              <button
                type="button"
                onClick={() => setIsDeleteModalOpen(false)}
                disabled={bulkLoading}
                className="py-2.5 px-3 rounded-xl border border-slate-200 text-xs font-semibold text-slate-700 hover:bg-slate-50 transition"
              >
                Batal
              </button>
              <button
                type="button"
                onClick={handleBulkDelete}
                disabled={bulkLoading}
                className="py-2.5 px-3 rounded-xl bg-rose-600 hover:bg-rose-700 text-white text-xs font-bold shadow-md shadow-rose-200 flex items-center justify-center gap-1.5 transition"
              >
                {bulkLoading ? (
                  <Loader2 className="w-3.5 h-3.5 animate-spin" />
                ) : (
                  <span>Ya, Hapus</span>
                )}
              </button>
            </div>
          </div>
        </div>
      )}

      {/* Modal Ubah Topik Massal */}
      {isTopicModalOpen && (
        <div className="fixed inset-0 z-50 flex items-center justify-center p-4 bg-slate-900/50 backdrop-blur-xs animate-in fade-in">
          <div className="bg-white w-full max-w-md rounded-2xl p-6 shadow-2xl border border-slate-100">
            <div className="flex items-center justify-between pb-3 border-b border-slate-100">
              <h3 className="text-sm font-bold text-slate-900">Ubah Topik Massal</h3>
              <button
                onClick={() => setIsTopicModalOpen(false)}
                className="p-1 rounded-lg text-slate-400 hover:text-slate-600"
              >
                <X className="w-4 h-4" />
              </button>
            </div>

            <p className="text-xs text-slate-500 mt-3">
              Mengubah topik untuk <strong>{selectedIds.length}</strong> butir soal yang dipilih.
            </p>

            <div className="mt-4 space-y-3">
              <div>
                <label className="block text-[11px] font-bold text-slate-600 uppercase mb-1">
                  Pilih dari Topik yang Ada
                </label>
                <select
                  onChange={(e) => setNewTopicInput(e.target.value)}
                  className="w-full p-2.5 rounded-xl border border-slate-200 text-xs text-slate-700 bg-white"
                >
                  <option value="">-- Pilih Topik --</option>
                  {initialTopics.map((t) => (
                    <option key={t} value={t}>
                      {t}
                    </option>
                  ))}
                </select>
              </div>

              <div>
                <label className="block text-[11px] font-bold text-slate-600 uppercase mb-1">
                  Atau Ketik Topik Baru
                </label>
                <input
                  type="text"
                  value={newTopicInput}
                  onChange={(e) => setNewTopicInput(e.target.value)}
                  placeholder="Contoh: Silogisme Kategori Baru"
                  className="w-full p-2.5 rounded-xl border border-slate-200 text-xs text-slate-800"
                />
              </div>
            </div>

            <div className="grid grid-cols-2 gap-2.5 mt-6">
              <button
                type="button"
                onClick={() => setIsTopicModalOpen(false)}
                disabled={bulkLoading}
                className="py-2.5 px-3 rounded-xl border border-slate-200 text-xs font-semibold text-slate-700 hover:bg-slate-50 transition"
              >
                Batal
              </button>
              <button
                type="button"
                onClick={handleBulkTopicChange}
                disabled={bulkLoading || !newTopicInput.trim()}
                className="py-2.5 px-3 rounded-xl bg-indigo-600 hover:bg-indigo-700 text-white text-xs font-bold shadow-md shadow-indigo-100 flex items-center justify-center gap-1.5 transition disabled:opacity-50"
              >
                {bulkLoading ? (
                  <Loader2 className="w-3.5 h-3.5 animate-spin" />
                ) : (
                  <span>Simpan Perubahan</span>
                )}
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
};
