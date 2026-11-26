'use client';

import React, { useState } from 'react';
import Link from 'next/link';
import { useRouter } from 'next/navigation';
import { createClient } from '@/lib/supabase/client';
import { SubtesType, FullQuestionItem } from '@/lib/types';
import { MarkdownRenderer } from '../MarkdownRenderer';
import {
  Save,
  ArrowLeft,
  Upload,
  Image as ImageIcon,
  Trash2,
  Eye,
  Edit,
  AlertCircle,
  CheckCircle2,
  Loader2,
  Sparkles,
} from 'lucide-react';

const TKP_ASPEK_LIST = [
  'Pelayanan Publik',
  'Jejaring Kerja',
  'Sosial Budaya',
  'TIK',
  'Profesionalisme',
  'Anti Radikalisme',
];

interface QuestionFormClientProps {
  initialData?: FullQuestionItem | null;
  existingTopicsBySubtes: Record<string, string[]>;
  isEdit?: boolean;
}

export const QuestionFormClient: React.FC<QuestionFormClientProps> = ({
  initialData,
  existingTopicsBySubtes,
  isEdit = false,
}) => {
  const router = useRouter();
  const supabase = createClient();

  const [subtes, setSubtes] = useState<SubtesType>(initialData?.subtes || 'TWK');
  const [topik, setTopik] = useState<string>(initialData?.topik || '');
  const [customTopik, setCustomTopik] = useState<string>('');
  const [isTypingCustomTopik, setIsTypingCustomTopik] = useState(false);
  const [level, setLevel] = useState<string>(initialData?.level || 'sedang');
  const [status, setStatus] = useState<'draft' | 'published'>(initialData?.status as 'draft' | 'published' || 'published');
  const [sumber, setSumber] = useState<string>(initialData?.sumber || '');
  const [nomor, setNomor] = useState<number>(initialData?.nomor || 1);

  // Soal & Gambar
  const [soal, setSoal] = useState<string>(initialData?.soal || '');
  const [gambarUrl, setGambarUrl] = useState<string | null>(initialData?.gambar_url || null);

  // Opsi Jawaban
  const [opsi, setOpsi] = useState<Record<string, string>>({
    A: initialData?.opsi?.A || '',
    B: initialData?.opsi?.B || '',
    C: initialData?.opsi?.C || '',
    D: initialData?.opsi?.D || '',
    E: initialData?.opsi?.E || '',
  });

  // Kunci TWK/TIU vs Skor TKP
  const [kunci, setKunci] = useState<string>(initialData?.kunci || 'A');
  const [skorTkp, setSkorTkp] = useState<Record<string, number>>({
    A: initialData?.skor_tkp?.A || 1,
    B: initialData?.skor_tkp?.B || 2,
    C: initialData?.skor_tkp?.C || 3,
    D: initialData?.skor_tkp?.D || 4,
    E: initialData?.skor_tkp?.E || 5,
  });

  // Pembahasan & Gambar Pembahasan
  const [pembahasan, setPembahasan] = useState<string>(initialData?.pembahasan || '');
  const [pembahasanGambar, setPembahasanGambar] = useState<string | null>(
    initialData?.pembahasan_gambar || null
  );

  // Preview Tabs
  const [soalTab, setSoalTab] = useState<'editor' | 'preview' | 'split'>('editor');
  const [pembahasanTab, setPembahasanTab] = useState<'editor' | 'preview' | 'split'>('editor');

  // Loading & Error
  const [saving, setSaving] = useState(false);
  const [uploadingGambar, setUploadingGambar] = useState(false);
  const [uploadingPembahasan, setUploadingPembahasan] = useState(false);
  const [errorMsg, setErrorMsg] = useState<string | null>(null);

  // Handle Subtes Change
  const handleSubtesChange = (newSubtes: SubtesType) => {
    setSubtes(newSubtes);
    if (newSubtes === 'TKP') {
      setTopik(TKP_ASPEK_LIST[0]);
    } else {
      const available = existingTopicsBySubtes[newSubtes] || [];
      setTopik(available[0] || '');
    }
  };

  // Upload Gambar to bucket 'soal-img' folder 'manual/'
  const handleUploadImage = async (
    e: React.ChangeEvent<HTMLInputElement>,
    type: 'soal' | 'pembahasan'
  ) => {
    const file = e.target.files?.[0];
    if (!file) return;

    // Validasi Tipe & Ukuran (Max 2 MB)
    const allowedTypes = ['image/png', 'image/jpeg', 'image/jpg', 'image/webp'];
    if (!allowedTypes.includes(file.type)) {
      alert('Format gambar harus PNG, JPG, JPEG, atau WEBP.');
      return;
    }

    if (file.size > 2 * 1024 * 1024) {
      alert('Ukuran gambar maksimal adalah 2 MB.');
      return;
    }

    const setUploading = type === 'soal' ? setUploadingGambar : setUploadingPembahasan;
    setUploading(true);

    try {
      const ext = file.name.split('.').pop() || 'png';
      const cleanName = file.name.replace(/[^a-zA-Z0-9]/g, '_');
      const filePath = `manual/${Date.now()}_${cleanName}.${ext}`;

      const { data, error } = await supabase.storage
        .from('soal-img')
        .upload(filePath, file, { upsert: true });

      if (error) throw error;

      const { data: publicUrlData } = supabase.storage
        .from('soal-img')
        .getPublicUrl(filePath);

      if (type === 'soal') {
        setGambarUrl(publicUrlData.publicUrl);
      } else {
        setPembahasanGambar(publicUrlData.publicUrl);
      }
    } catch (err: unknown) {
      alert('Gagal mengunggah gambar: ' + (err instanceof Error ? err.message : String(err)));
    } finally {
      setUploading(false);
    }
  };

  // Form Validation & Save
  const handleSave = async (e: React.FormEvent) => {
    e.preventDefault();
    setErrorMsg(null);

    if (!soal.trim()) {
      setErrorMsg('Teks pertanyaan / soal wajib diisi.');
      return;
    }

    // Validasi opsi (untuk soal non-figural, wajib diisi)
    for (const key of ['A', 'B', 'C', 'D', 'E']) {
      const val = opsi[key];
      if (!gambarUrl && (!val || !val.trim())) {
        setErrorMsg(`Opsi ${key} wajib diisi teks (atau unggah gambar jika soal figural).`);
        return;
      }
    }

    // Validasi Kunci
    if (subtes !== 'TKP' && !kunci) {
      setErrorMsg('Kunci jawaban wajib dipilih untuk subtes TWK dan TIU.');
      return;
    }

    setSaving(true);

    try {
      const activeTopic = isTypingCustomTopik ? customTopik.trim() : topik;
      const today = new Date().toISOString().slice(0, 10).replace(/-/g, '');
      const activeSumber = sumber.trim() || `manual-${today}`;

      // Hitung nomor otomatis jika baru dan belum diisi
      let activeNomor = nomor;
      if (!isEdit && !nomor) {
        const { data: maxQ } = await supabase
          .from('questions')
          .select('nomor')
          .eq('sumber', activeSumber)
          .order('nomor', { ascending: false })
          .limit(1);

        activeNomor = (maxQ?.[0]?.nomor || 0) + 1;
      }

      const payload = {
        sumber: activeSumber,
        nomor: activeNomor,
        subtes,
        topik: activeTopic || null,
        level,
        soal: soal.trim(),
        gambar_url: gambarUrl || null,
        opsi,
        status,
        pembahasan: pembahasan.trim() || null,
        pembahasan_gambar: pembahasanGambar || null,
        kunci: subtes === 'TKP' ? null : kunci,
        skor_tkp: subtes === 'TKP' ? skorTkp : null,
        updated_at: new Date().toISOString(),
      };

      if (isEdit && initialData?.id) {
        const { error } = await supabase
          .from('questions')
          .update(payload)
          .eq('id', initialData.id);

        if (error) throw error;
      } else {
        const { error } = await supabase
          .from('questions')
          .insert(payload);

        if (error) throw error;
      }

      if (typeof window !== 'undefined' && window.history.length > 1) {
        router.back();
      } else {
        router.push('/admin/soal');
      }
      router.refresh();
    } catch (err: unknown) {
      setErrorMsg('Gagal menyimpan soal: ' + (err instanceof Error ? err.message : String(err)));
      setSaving(false);
    }
  };

  const topicsForCurrentSubtes =
    subtes === 'TKP' ? TKP_ASPEK_LIST : existingTopicsBySubtes[subtes] || [];

  return (
    <form onSubmit={handleSave} className="space-y-6 max-w-4xl pb-16">
      {/* Top Action Bar */}
      <div className="flex items-center justify-between">
        <button
          type="button"
          onClick={() => {
            if (typeof window !== 'undefined' && window.history.length > 1) {
              router.back();
            } else {
              router.push('/admin/soal');
            }
          }}
          className="inline-flex items-center gap-1.5 text-xs font-semibold text-slate-600 hover:text-slate-900 transition"
        >
          <ArrowLeft className="w-4 h-4" />
          <span>Kembali ke Daftar Soal</span>
        </button>

        <div className="flex items-center gap-2">
          <button
            type="submit"
            disabled={saving}
            className="px-5 py-2.5 rounded-xl bg-indigo-600 hover:bg-indigo-700 text-white font-bold text-xs shadow-md shadow-indigo-100 flex items-center gap-2 transition disabled:opacity-70"
          >
            {saving ? (
              <>
                <Loader2 className="w-4 h-4 animate-spin" />
                <span>Menyimpan...</span>
              </>
            ) : (
              <>
                <Save className="w-4 h-4" />
                <span>{isEdit ? 'Simpan Perubahan' : 'Terbitkan Soal'}</span>
              </>
            )}
          </button>
        </div>
      </div>

      {errorMsg && (
        <div className="p-3.5 rounded-xl bg-rose-50 border border-rose-200 text-rose-700 text-xs flex items-start gap-2">
          <AlertCircle className="w-4 h-4 shrink-0 mt-0.5 text-rose-600" />
          <span>{errorMsg}</span>
        </div>
      )}

      {/* Grid Meta Soal */}
      <div className="bg-white rounded-2xl border border-slate-200 p-5 shadow-xs space-y-4">
        <h2 className="text-xs font-bold text-slate-800 uppercase tracking-wider">
          Informasi & Klasifikasi Soal
        </h2>

        <div className="grid grid-cols-1 sm:grid-cols-3 gap-3 text-xs">
          {/* Subtes */}
          <div>
            <label className="block font-semibold text-slate-700 mb-1">Subtes</label>
            <select
              value={subtes}
              onChange={(e) => handleSubtesChange(e.target.value as SubtesType)}
              className="w-full p-2.5 rounded-xl border border-slate-200 bg-white font-semibold text-slate-800"
            >
              <option value="TWK">TWK (Wawasan Kebangsaan)</option>
              <option value="TIU">TIU (Intelegensia Umum)</option>
              <option value="TKP">TKP (Karakteristik Pribadi)</option>
            </select>
          </div>

          {/* Tingkat Kesulitan */}
          <div>
            <label className="block font-semibold text-slate-700 mb-1">Tingkat Level</label>
            <select
              value={level}
              onChange={(e) => setLevel(e.target.value)}
              className="w-full p-2.5 rounded-xl border border-slate-200 bg-white text-slate-800"
            >
              <option value="mudah">Mudah</option>
              <option value="sedang">Sedang</option>
              <option value="sulit">Sulit</option>
            </select>
          </div>

          {/* Status Terbit */}
          <div>
            <label className="block font-semibold text-slate-700 mb-1">Status Publikasi</label>
            <select
              value={status}
              onChange={(e) => setStatus(e.target.value as 'draft' | 'published')}
              className="w-full p-2.5 rounded-xl border border-slate-200 bg-white text-slate-800"
            >
              <option value="published">Published (Dapat diakses user)</option>
              <option value="draft">Draft (Disembunyikan)</option>
            </select>
          </div>
        </div>

        {/* Topik / Aspek */}
        <div>
          <div className="flex items-center justify-between mb-1 text-xs">
            <label className="font-semibold text-slate-700">
              {subtes === 'TKP' ? 'Aspek TKP (Topik)' : 'Topik Materi'}
            </label>
            {subtes !== 'TKP' && (
              <button
                type="button"
                onClick={() => setIsTypingCustomTopik(!isTypingCustomTopik)}
                className="text-indigo-600 hover:underline font-semibold"
              >
                {isTypingCustomTopik ? 'Pilih dari daftar' : '+ Ketik topik baru'}
              </button>
            )}
          </div>

          {isTypingCustomTopik && subtes !== 'TKP' ? (
            <input
              type="text"
              value={customTopik}
              onChange={(e) => setCustomTopik(e.target.value)}
              placeholder="Ketik nama topik baru..."
              className="w-full p-2.5 rounded-xl border border-slate-200 text-xs text-slate-800"
            />
          ) : (
            <select
              value={topik}
              onChange={(e) => setTopik(e.target.value)}
              className="w-full p-2.5 rounded-xl border border-slate-200 bg-white text-xs text-slate-800"
            >
              {topicsForCurrentSubtes.map((t) => (
                <option key={t} value={t}>
                  {t}
                </option>
              ))}
            </select>
          )}
        </div>

        {/* Sumber & Nomor */}
        <div className="grid grid-cols-2 gap-3 text-xs pt-1 border-t border-slate-100">
          <div>
            <label className="block font-semibold text-slate-600 mb-1">Sumber Paket</label>
            <input
              type="text"
              value={sumber}
              onChange={(e) => setSumber(e.target.value)}
              placeholder="manual-20261123"
              className="w-full p-2 rounded-xl border border-slate-200 text-slate-700 font-mono text-xs"
            />
          </div>

          <div>
            <label className="block font-semibold text-slate-600 mb-1">Nomor Soal</label>
            <input
              type="number"
              value={nomor}
              onChange={(e) => setNomor(parseInt(e.target.value) || 1)}
              className="w-full p-2 rounded-xl border border-slate-200 text-slate-700 font-mono text-xs"
            />
          </div>
        </div>
      </div>

      {/* Editor Soal (Markdown + LaTeX + Live Preview) */}
      <div className="bg-white rounded-2xl border border-slate-200 p-5 shadow-xs space-y-4">
        <div className="flex items-center justify-between border-b border-slate-100 pb-3">
          <div>
            <h2 className="text-xs font-bold text-slate-800 uppercase tracking-wider">
              Pertanyaan / Soal
            </h2>
            <p className="text-[11px] text-slate-400">
              Mendukung format Markdown, tabel, dan rumus KaTeX $\LaTeX$ (contoh: $\frac{1}{2}$).
            </p>
          </div>

          <div className="flex items-center p-1 bg-slate-100 rounded-xl text-xs">
            <button
              type="button"
              onClick={() => setSoalTab('editor')}
              className={`px-3 py-1 rounded-lg font-semibold transition ${
                soalTab === 'editor' ? 'bg-white text-slate-800 shadow-xs' : 'text-slate-500'
              }`}
            >
              Editor
            </button>
            <button
              type="button"
              onClick={() => setSoalTab('preview')}
              className={`px-3 py-1 rounded-lg font-semibold transition flex items-center gap-1 ${
                soalTab === 'preview' ? 'bg-white text-indigo-600 shadow-xs' : 'text-slate-500'
              }`}
            >
              <Eye className="w-3.5 h-3.5" />
              <span>Pratinjau</span>
            </button>
            <button
              type="button"
              onClick={() => setSoalTab('split')}
              className={`px-3 py-1 rounded-lg font-semibold transition flex items-center gap-1 ${
                soalTab === 'split' ? 'bg-white text-emerald-600 shadow-xs' : 'text-slate-500'
              }`}
            >
              <span>Split</span>
            </button>
          </div>
        </div>

        {soalTab === 'editor' && (
          <textarea
            rows={5}
            value={soal}
            onChange={(e) => setSoal(e.target.value)}
            placeholder="Tulis soal di sini dengan Markdown dan LaTeX ($...$)..."
            className="w-full p-3.5 rounded-xl border border-slate-200 font-mono text-xs sm:text-sm text-slate-800 focus:outline-none focus:border-indigo-600 focus:ring-2 focus:ring-indigo-500/10 leading-relaxed"
          />
        )}

        {soalTab === 'preview' && (
          <div className="p-4 rounded-xl bg-slate-50 border border-slate-200 min-h-[120px]">
            {soal.trim() ? (
              <MarkdownRenderer content={soal} />
            ) : (
              <p className="text-xs text-slate-400 italic">Belum ada teks pertanyaan.</p>
            )}
          </div>
        )}

        {soalTab === 'split' && (
          <div className="grid grid-cols-1 md:grid-cols-2 gap-3">
            <div>
              <div className="text-[11px] font-bold text-slate-400 mb-1">Editor Kode / Rumus:</div>
              <textarea
                rows={7}
                value={soal}
                onChange={(e) => setSoal(e.target.value)}
                placeholder="Tulis soal di sini dengan Markdown dan LaTeX..."
                className="w-full p-3 rounded-xl border border-slate-200 font-mono text-xs text-slate-800 focus:outline-none focus:border-indigo-600 leading-relaxed"
              />
            </div>
            <div>
              <div className="text-[11px] font-bold text-slate-400 mb-1">Hasil Render KaTeX Langsung:</div>
              <div className="p-3.5 rounded-xl bg-slate-50 border border-slate-200 min-h-[160px] max-h-[220px] overflow-y-auto">
                {soal.trim() ? (
                  <MarkdownRenderer content={soal} className="text-xs" />
                ) : (
                  <p className="text-xs text-slate-400 italic">Ketik di editor untuk melihat hasil render rumus.</p>
                )}
              </div>
            </div>
          </div>
        )}

        {/* Upload Gambar Soal (Figural / Diagram) */}
        <div className="pt-2 border-t border-slate-100">
          <label className="block text-xs font-semibold text-slate-700 mb-1.5">
            Gambar Soal (Figural / Bagan) - Maks 2 MB
          </label>

          {gambarUrl ? (
            <div className="relative inline-block border border-slate-200 rounded-xl p-2 bg-slate-50">
              {/* eslint-disable-next-line @next/next/no-img-element */}
              <img
                src={gambarUrl}
                alt="Gambar Soal"
                className="max-h-48 rounded-lg object-contain"
              />
              <button
                type="button"
                onClick={() => setGambarUrl(null)}
                className="absolute top-3 right-3 p-1.5 rounded-lg bg-rose-600 text-white hover:bg-rose-700 shadow-xs transition"
                title="Hapus Gambar"
              >
                <Trash2 className="w-4 h-4" />
              </button>
            </div>
          ) : (
            <div className="flex items-center gap-2">
              <label className="cursor-pointer inline-flex items-center gap-1.5 px-3.5 py-2 rounded-xl border border-slate-200 hover:bg-slate-50 text-xs font-semibold text-slate-700 transition">
                <Upload className="w-3.5 h-3.5 text-slate-500" />
                <span>Unggah Gambar Soal</span>
                <input
                  type="file"
                  accept="image/png,image/jpeg,image/jpg,image/webp"
                  onChange={(e) => handleUploadImage(e, 'soal')}
                  className="hidden"
                />
              </label>
              {uploadingGambar && (
                <div className="flex items-center gap-1.5 text-xs text-slate-500">
                  <Loader2 className="w-3.5 h-3.5 animate-spin text-indigo-600" />
                  <span>Mengunggah ke storage...</span>
                </div>
              )}
            </div>
          )}
        </div>
      </div>

      {/* Editor Opsi Jawaban (A-E) */}
      <div className="bg-white rounded-2xl border border-slate-200 p-5 shadow-xs space-y-4">
        <div className="flex items-center justify-between border-b border-slate-100 pb-3">
          <div>
            <h2 className="text-xs font-bold text-slate-800 uppercase tracking-wider">
              Pilihan Jawaban & Kunci
            </h2>
            <p className="text-[11px] text-slate-400">
              {subtes === 'TKP'
                ? 'Isi skor bobot (1 sampai 5) untuk tiap pilihan jawaban TKP.'
                : 'Pilih salah satu huruf sebagai kunci jawaban resmi yang benar.'}
            </p>
          </div>
        </div>

        <div className="space-y-3">
          {['A', 'B', 'C', 'D', 'E'].map((letter) => {
            const isKey = kunci === letter && subtes !== 'TKP';

            return (
              <div
                key={letter}
                className={`p-3 rounded-xl border flex flex-col sm:flex-row items-start sm:items-center gap-2.5 transition ${
                  isKey ? 'border-emerald-500 bg-emerald-50/50' : 'border-slate-200'
                }`}
              >
                {/* Radio Kunci (TWK/TIU) */}
                {subtes !== 'TKP' && (
                  <button
                    type="button"
                    onClick={() => setKunci(letter)}
                    className={`w-7 h-7 rounded-lg text-xs font-bold flex items-center justify-center shrink-0 border transition ${
                      isKey
                        ? 'bg-emerald-600 text-white border-emerald-700 shadow-xs'
                        : 'bg-slate-100 text-slate-600 hover:bg-slate-200'
                    }`}
                    title={`Pilih ${letter} sebagai Kunci`}
                  >
                    {letter}
                  </button>
                )}

                {/* Badge Huruf (TKP) */}
                {subtes === 'TKP' && (
                  <div className="w-7 h-7 rounded-lg bg-indigo-50 text-indigo-700 border border-indigo-200 text-xs font-bold flex items-center justify-center shrink-0">
                    {letter}
                  </div>
                )}

                {/* Input Teks Opsi + Live Math Preview */}
                <div className="flex-1 w-full space-y-1">
                  <input
                    type="text"
                    value={opsi[letter]}
                    onChange={(e) => setOpsi({ ...opsi, [letter]: e.target.value })}
                    placeholder={`Isi pilihan ${letter}...`}
                    className="w-full p-2 rounded-xl border border-slate-200 text-xs sm:text-sm text-slate-800 focus:outline-none focus:border-indigo-600 font-mono"
                  />
                  {opsi[letter] && (opsi[letter].includes('$') || opsi[letter].includes('\\')) && (
                    <div className="px-2.5 py-1 rounded-lg bg-indigo-50/60 border border-indigo-100 flex items-center gap-2">
                      <span className="text-[10px] font-bold text-indigo-700 uppercase tracking-wider shrink-0">
                        Pratinjau:
                      </span>
                      <div className="text-slate-800 text-xs">
                        <MarkdownRenderer
                          content={opsi[letter]}
                          className="text-xs !my-0 [&_p]:!my-0 [&_.katex]:text-xs"
                        />
                      </div>
                    </div>
                  )}
                </div>

                {/* Bobot Skor TKP (1-5) */}
                {subtes === 'TKP' && (
                  <div className="flex items-center gap-1.5 self-end sm:self-auto shrink-0">
                    <span className="text-[11px] font-semibold text-slate-500">Skor:</span>
                    <select
                      value={skorTkp[letter]}
                      onChange={(e) =>
                        setSkorTkp({ ...skorTkp, [letter]: parseInt(e.target.value) || 1 })
                      }
                      className="p-1.5 rounded-lg border border-slate-200 font-bold text-xs text-indigo-700 bg-white"
                    >
                      {[1, 2, 3, 4, 5].map((s) => (
                        <option key={s} value={s}>
                          {s} Poin
                        </option>
                      ))}
                    </select>
                  </div>
                )}
              </div>
            );
          })}
        </div>
      </div>

      {/* Editor Pembahasan */}
      <div className="bg-white rounded-2xl border border-slate-200 p-5 shadow-xs space-y-4">
        <div className="flex items-center justify-between border-b border-slate-100 pb-3">
          <div>
            <h2 className="text-xs font-bold text-slate-800 uppercase tracking-wider">
              Pembahasan Soal
            </h2>
            <p className="text-[11px] text-slate-400">
              Tampil kepada peserta setelah ujian diselesaikan.
            </p>
          </div>

          <div className="flex items-center p-1 bg-slate-100 rounded-xl text-xs">
            <button
              type="button"
              onClick={() => setPembahasanTab('editor')}
              className={`px-3 py-1 rounded-lg font-semibold transition ${
                pembahasanTab === 'editor' ? 'bg-white text-slate-800 shadow-xs' : 'text-slate-500'
              }`}
            >
              Editor
            </button>
            <button
              type="button"
              onClick={() => setPembahasanTab('preview')}
              className={`px-3 py-1 rounded-lg font-semibold transition flex items-center gap-1 ${
                pembahasanTab === 'preview' ? 'bg-white text-indigo-600 shadow-xs' : 'text-slate-500'
              }`}
            >
              <Eye className="w-3.5 h-3.5" />
              <span>Pratinjau</span>
            </button>
            <button
              type="button"
              onClick={() => setPembahasanTab('split')}
              className={`px-3 py-1 rounded-lg font-semibold transition flex items-center gap-1 ${
                pembahasanTab === 'split' ? 'bg-white text-emerald-600 shadow-xs' : 'text-slate-500'
              }`}
            >
              <span>Split</span>
            </button>
          </div>
        </div>

        {pembahasanTab === 'editor' && (
          <textarea
            rows={5}
            value={pembahasan}
            onChange={(e) => setPembahasan(e.target.value)}
            placeholder="Tulis uraian pembahasan soal di sini..."
            className="w-full p-3.5 rounded-xl border border-slate-200 font-mono text-xs sm:text-sm text-slate-800 focus:outline-none focus:border-indigo-600 focus:ring-2 focus:ring-indigo-500/10 leading-relaxed"
          />
        )}

        {pembahasanTab === 'preview' && (
          <div className="p-4 rounded-xl bg-slate-50 border border-slate-200 min-h-[120px]">
            {pembahasan.trim() ? (
              <MarkdownRenderer content={pembahasan} />
            ) : (
              <p className="text-xs text-slate-400 italic">Belum ada teks pembahasan.</p>
            )}
          </div>
        )}

        {pembahasanTab === 'split' && (
          <div className="grid grid-cols-1 md:grid-cols-2 gap-3">
            <div>
              <div className="text-[11px] font-bold text-slate-400 mb-1">Editor Kode / Rumus:</div>
              <textarea
                rows={7}
                value={pembahasan}
                onChange={(e) => setPembahasan(e.target.value)}
                placeholder="Tulis uraian pembahasan soal di sini..."
                className="w-full p-3 rounded-xl border border-slate-200 font-mono text-xs text-slate-800 focus:outline-none focus:border-indigo-600 leading-relaxed"
              />
            </div>
            <div>
              <div className="text-[11px] font-bold text-slate-400 mb-1">Hasil Render KaTeX Langsung:</div>
              <div className="p-3.5 rounded-xl bg-slate-50 border border-slate-200 min-h-[160px] max-h-[220px] overflow-y-auto">
                {pembahasan.trim() ? (
                  <MarkdownRenderer content={pembahasan} className="text-xs" />
                ) : (
                  <p className="text-xs text-slate-400 italic">Ketik di editor untuk melihat hasil render pembahasan.</p>
                )}
              </div>
            </div>
          </div>
        )}

        {/* Upload Gambar Pembahasan */}
        <div className="pt-2 border-t border-slate-100">
          <label className="block text-xs font-semibold text-slate-700 mb-1.5">
            Gambar Penjelas Pembahasan (Opsional) - Maks 2 MB
          </label>

          {pembahasanGambar ? (
            <div className="relative inline-block border border-slate-200 rounded-xl p-2 bg-slate-50">
              {/* eslint-disable-next-line @next/next/no-img-element */}
              <img
                src={pembahasanGambar}
                alt="Gambar Pembahasan"
                className="max-h-48 rounded-lg object-contain"
              />
              <button
                type="button"
                onClick={() => setPembahasanGambar(null)}
                className="absolute top-3 right-3 p-1.5 rounded-lg bg-rose-600 text-white hover:bg-rose-700 shadow-xs transition"
                title="Hapus Gambar"
              >
                <Trash2 className="w-4 h-4" />
              </button>
            </div>
          ) : (
            <div className="flex items-center gap-2">
              <label className="cursor-pointer inline-flex items-center gap-1.5 px-3.5 py-2 rounded-xl border border-slate-200 hover:bg-slate-50 text-xs font-semibold text-slate-700 transition">
                <Upload className="w-3.5 h-3.5 text-slate-500" />
                <span>Unggah Gambar Pembahasan</span>
                <input
                  type="file"
                  accept="image/png,image/jpeg,image/jpg,image/webp"
                  onChange={(e) => handleUploadImage(e, 'pembahasan')}
                  className="hidden"
                />
              </label>
              {uploadingPembahasan && (
                <div className="flex items-center gap-1.5 text-xs text-slate-500">
                  <Loader2 className="w-3.5 h-3.5 animate-spin text-indigo-600" />
                  <span>Mengunggah ke storage...</span>
                </div>
              )}
            </div>
          )}
        </div>
      </div>
    </form>
  );
};
