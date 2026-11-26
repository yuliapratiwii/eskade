'use client';

import React, { useState } from 'react';
import Link from 'next/link';
import { useRouter } from 'next/navigation';
import { createClient } from '@/lib/supabase/client';
import { SubtesType } from '@/lib/types';
import {
  Upload,
  Download,
  FileCode,
  CheckCircle2,
  XCircle,
  AlertTriangle,
  FileCheck,
  Loader2,
  ArrowRight,
  RefreshCw,
  Zap,
} from 'lucide-react';

interface ParsedQuestionItem {
  index: number;
  subtes: string;
  topik?: string | null;
  level?: string;
  soal: string;
  gambar_url?: string | null;
  pembahasan_gambar?: string | null;
  opsi: Record<string, string>;
  kunci?: string | null;
  skor_tkp?: Record<string, number> | null;
  pembahasan?: string | null;
  sumber?: string | null;
  nomor?: number | null;
  status?: string | null;
  isValid: boolean;
  errors: string[];
  isDuplicate: boolean;
  duplicateReason?: string;
  hasOptionVariant?: boolean;
}

const SAMPLE_JSON_DATA = [
  {
    subtes: "TIU",
    topik: "Silogisme",
    level: "sedang",
    soal: "Semua peserta ujian yang lulus wajib mengikuti orientasi. Sebagian sarjana hukum lulus ujian SKD CPNS. Kesimpulan yang tepat adalah...",
    opsi: {
      A: "Semua sarjana hukum wajib mengikuti orientasi.",
      B: "Sebagian sarjana hukum wajib mengikuti orientasi.",
      C: "Semua yang mengikuti orientasi adalah sarjana hukum.",
      D: "Sebagian yang lulus bukan sarjana hukum.",
      E: "Tidak ada sarjana hukum yang mengikuti orientasi."
    },
    kunci: "B",
    pembahasan: "Berdasarkan premis: Semua yang lulus wajib orientasi. Sebagian sarjana hukum lulus. Maka sebagian sarjana hukum tersebut wajib mengikuti orientasi.",
    gambar_url: null
  },
  {
    subtes: "TWK",
    topik: "Pancasila",
    level: "sedang",
    soal: "Mengembangkan sikap saling mencintai sesama manusia dan tenggang rasa merupakan pengamalan sila ke...",
    opsi: {
      A: "Pertama",
      B: "Kedua",
      C: "Ketiga",
      D: "Keempat",
      E: "Kelima"
    },
    kunci: "B",
    pembahasan: "Sikap saling mencintai sesama manusia dan tenggang rasa tercantum pada butir pengamalan Sila Ke-2 (Kemanusiaan yang Adil dan Beradab).",
    gambar_url: null
  },
  {
    subtes: "TKP",
    topik: "Pelayanan Publik",
    level: "sedang",
    soal: "Ketika Anda sedang melayani antrean warga yang cukup panjang, ada seorang warga lansia yang tampak kelelahan dan meminta didahulukan. Sikap Anda adalah...",
    opsi: {
      A: "Memintanya tetap mengantre sesuai nomor antrean demi asas keadilan bagi semua orang.",
      B: "Mempersilakan duduk di kursi prioritas dan segera berkoordinasi dengan petugas loket khusus lansia.",
      C: "Meminta izin kepada antrean di depan untuk mendahulukan lansia tersebut secara sopan.",
      D: "Mengabaikannya karena aturan antrean berlaku ketat untuk seluruh warga tanpa kecuali.",
      E: "Menyuruhnya pulang dan meminta keluarganya yang lebih muda untuk datang mengurus."
    },
    skor_tkp: {
      A: 2,
      B: 5,
      C: 4,
      D: 1,
      E: 1
    },
    pembahasan: "Opsi B menunjukkan orientasi pelayanan publik prima dan tanggap terhadap kebutuhan kelompok rentan/prioritas tanpa melanggar kenyamanan antrean umum.",
    gambar_url: null
  }
];

export const ImportClient: React.FC = () => {
  const router = useRouter();
  const supabase = createClient();

  const [jsonText, setJsonText] = useState('');
  const [parsedItems, setParsedItems] = useState<ParsedQuestionItem[]>([]);
  const [analyzing, setAnalyzing] = useState(false);
  const [importing, setImporting] = useState(false);
  const [importProgress, setImportProgress] = useState<string | null>(null);
  const [filterView, setFilterView] = useState<'all' | 'valid' | 'error' | 'duplicate'>('all');
  const [importSuccessCount, setImportSuccessCount] = useState<number | null>(null);

  // Normalisasi string untuk teks (mengabaikan spasi, tanda baca, dan huruf besar/kecil)
  const normalizeText = (text: string) =>
    (text || '')
      .toLowerCase()
      .replace(/[^a-z0-9]/g, '');

  // Buat signature representasi opsi pilihan ganda
  // Menyortir teks opsi agar perbandingan tidak terpengaruh urutan huruf
  const getOptionsSignature = (opsi?: Record<string, string> | null) => {
    if (!opsi || typeof opsi !== 'object') return '';
    const values = Object.values(opsi)
      .map((v) => normalizeText(String(v || '')).slice(0, 60))
      .filter(Boolean)
      .sort();
    return values.join('||');
  };

  // Buat signature komposit: teks soal + seluruh opsi pilihan ganda (+ gambar jika ada)
  const getQuestionSignature = (soalText: string, opsiObj?: Record<string, string> | null, gambarUrl?: string | null) => {
    if (gambarUrl) {
      return `IMG:::${gambarUrl}`;
    }
    const normSoal = normalizeText(soalText).slice(0, 150);
    const normOpsi = getOptionsSignature(opsiObj);
    return `${normSoal}:::${normOpsi}`;
  };

  // Handle Download Sample JSON
  const handleDownloadSample = () => {
    const dataStr = 'data:text/json;charset=utf-8,' + encodeURIComponent(JSON.stringify(SAMPLE_JSON_DATA, null, 2));
    const downloadAnchor = document.createElement('a');
    downloadAnchor.setAttribute('href', dataStr);
    downloadAnchor.setAttribute('download', 'contoh_soal_skd.json');
    document.body.appendChild(downloadAnchor);
    downloadAnchor.click();
    downloadAnchor.remove();
  };

  // Handle File Upload
  const handleFileUpload = (e: React.ChangeEvent<HTMLInputElement>) => {
    const file = e.target.files?.[0];
    if (!file) return;

    const reader = new FileReader();
    reader.onload = (event) => {
      const text = event.target?.result as string;
      setJsonText(text);
      analyzeJson(text);
    };
    reader.readAsText(file);
  };

  // Analyze & Validate JSON Content
  const analyzeJson = async (textToParse: string) => {
    if (!textToParse.trim()) {
      setParsedItems([]);
      return;
    }

    setAnalyzing(true);
    setImportSuccessCount(null);

    try {
      let rawData: unknown;
      try {
        rawData = JSON.parse(textToParse);
      } catch (jsonErr: unknown) {
        alert('Format JSON tidak valid: ' + (jsonErr instanceof Error ? jsonErr.message : String(jsonErr)));
        setAnalyzing(false);
        return;
      }

      if (!Array.isArray(rawData)) {
        alert('Format data harus berupa Array objek: [ { ... }, { ... } ]');
        setAnalyzing(false);
        return;
      }

      // Ambil teks soal dan opsi yang sudah ada di database untuk deteksi duplikasi
      const { data: existingQuestions } = await supabase
        .from('questions')
        .select('soal, opsi')
        .limit(5000);

      let existingList: Array<{ soal: string; opsi?: Record<string, string> | null; gambar?: string | null; gambar_url?: string | null }> =
        (existingQuestions as Array<{ soal: string; opsi?: Record<string, string> | null; gambar?: string | null; gambar_url?: string | null }>) || [];

      // Fallback jika database belum terhubung atau masih kosong: gunakan data dari soal_clean.json
      if (existingList.length === 0) {
        try {
          const res = await fetch('/soal_clean.json');
          if (res.ok) {
            existingList = await res.json();
          }
        } catch {
          // Abaikan jika fallback tidak tersedia
        }
      }

      // 1. Set untuk signature persis: gabungan teks soal + seluruh pilihan ganda (+ gambar)
      const existingExactSignatureSet = new Set<string>();
      // 2. Set untuk teks soal saja: untuk mendeteksi soal serupa dengan opsi berbeda
      const existingSoalStemSet = new Set<string>();

      existingList.forEach((q) => {
        if (q.soal || q.gambar_url || q.gambar) {
          const normStem = normalizeText(q.soal || '').slice(0, 150);
          if (normStem) existingSoalStemSet.add(normStem);
          existingExactSignatureSet.add(getQuestionSignature(q.soal || '', q.opsi, q.gambar_url || q.gambar));
        }
      });

      const seenExactInBatchSet = new Set<string>();
      const seenSoalInBatchSet = new Set<string>();
      const processed: ParsedQuestionItem[] = [];

      rawData.forEach((item: Record<string, unknown>, idx: number) => {
        const errors: string[] = [];
        let isDuplicate = false;
        let duplicateReason = '';
        let hasOptionVariant = false;

        const subtes = String(item.subtes || '').toUpperCase().trim();
        const soal = String(item.soal || '').trim();
        const level = String(item.level || 'sedang').toLowerCase().trim();
        const topik = item.topik ? String(item.topik).trim() : null;
        const rawGambar = item.gambar_url || item.gambar;
        const gambar_url = rawGambar ? String(rawGambar).trim() : null;
        const rawPembahasanGambar = item.pembahasan_gambar || item.pembahasanGambar;
        const pembahasan_gambar = rawPembahasanGambar ? String(rawPembahasanGambar).trim() : null;
        const pembahasan = item.pembahasan ? String(item.pembahasan).trim() : null;
        const opsi = (item.opsi as Record<string, string>) || {};
        const kunci = item.kunci ? String(item.kunci).toUpperCase().trim() : null;
        const skor_tkp = (item.skor_tkp as Record<string, number>) || null;

        // Validasi Subtes
        if (!['TWK', 'TIU', 'TKP'].includes(subtes)) {
          errors.push(`Subtes tidak valid ("${subtes}"). Harus TWK, TIU, atau TKP.`);
        }

        // Validasi Soal
        if (!soal) {
          errors.push('Teks soal wajib diisi.');
        }

        // Validasi Opsi A-E
        const requiredKeys = ['A', 'B', 'C', 'D', 'E'];
        for (const k of requiredKeys) {
          if (!opsi[k] && opsi[k] !== '' && !gambar_url) {
            errors.push(`Opsi ${k} tidak ditemukan.`);
          }
        }

        // Validasi Kunci / Skor
        if (subtes === 'TKP') {
          if (!skor_tkp || typeof skor_tkp !== 'object') {
            errors.push('Khusus TKP wajib menyertakan objek "skor_tkp" (contoh: {"A":3,"B":5,"C":2,"D":1,"E":4}).');
          } else {
            for (const k of requiredKeys) {
              const val = Number(skor_tkp[k]);
              if (isNaN(val) || val < 1 || val > 5) {
                errors.push(`Skor TKP opsi ${k} harus berupa angka 1 sampai 5.`);
              }
            }
          }
        } else {
          // TWK / TIU
          if (!kunci || !requiredKeys.includes(kunci)) {
            errors.push(`Kunci jawaban "${kunci || ''}" tidak valid. Harus salah satu dari A, B, C, D, atau E.`);
          }
        }

        // Deteksi Duplikat Berbasis Soal & Pilihan Ganda & Gambar:
        // Soal hanya dianggap duplikat jika teks soal DAN seluruh opsi pilihan gandanya sama persis (atau gambar sama persis).
        // Jika teks soal mirip tetapi pilihan gandanya berbeda, dianggap sebagai varian soal baru.
        const normStem = normalizeText(soal).slice(0, 150);
        const exactSig = getQuestionSignature(soal, opsi, gambar_url);

        if (normStem || gambar_url) {
          if (existingExactSignatureSet.has(exactSig)) {
            isDuplicate = true;
            duplicateReason = 'Duplikat persis: Teks soal dan seluruh pilihan ganda (atau gambar) sama dengan soal di database.';
          } else if (seenExactInBatchSet.has(exactSig)) {
            isDuplicate = true;
            duplicateReason = 'Duplikat dalam file: Teks soal dan opsi pilihan ganda muncul lebih dari satu kali.';
          } else if (normStem && (existingSoalStemSet.has(normStem) || seenSoalInBatchSet.has(normStem))) {
            // Teks soal mirip, namun opsi pilihan gandanya berbeda -> BUKAN duplikat
            hasOptionVariant = true;
          }

          seenExactInBatchSet.add(exactSig);
          if (normStem) seenSoalInBatchSet.add(normStem);
        }

        const sumber = item.sumber ? String(item.sumber).trim() : null;
        const nomor = typeof item.nomor === 'number' ? item.nomor : null;
        const status = item.status ? String(item.status).trim() : null;

        let finalKunci = kunci;
        if (subtes === 'TKP') {
          if (item.kunci) {
            finalKunci = String(item.kunci).toUpperCase().trim();
          } else if (skor_tkp) {
            const best = Object.entries(skor_tkp).sort((a, b) => b[1] - a[1])[0];
            if (best) finalKunci = best[0];
          }
        }

        processed.push({
          index: idx + 1,
          subtes,
          topik,
          level,
          soal,
          gambar_url,
          pembahasan_gambar,
          opsi,
          kunci: finalKunci,
          skor_tkp: subtes === 'TKP' ? skor_tkp : null,
          pembahasan,
          sumber,
          nomor,
          status,
          isValid: errors.length === 0,
          errors,
          isDuplicate,
          duplicateReason,
          hasOptionVariant,
        });
      });

      setParsedItems(processed);
    } catch (e: unknown) {
      alert('Terjadi kesalahan saat memeriksa data: ' + (e instanceof Error ? e.message : String(e)));
    } finally {
      setAnalyzing(false);
    }
  };

  // Execute Import of Valid Items
  const handleExecuteImport = async () => {
    const validItems = parsedItems.filter((i) => i.isValid);
    if (validItems.length === 0) return;

    setImporting(true);

    try {
      const today = new Date().toISOString().slice(0, 10).replace(/-/g, '');
      const defaultSumberTag = `manual-${today}`;

      // Ambil nomor terbesar untuk setiap sumber yang ada di data impor
      const sumberSet = Array.from(new Set(validItems.map((i) => i.sumber || defaultSumberTag)));
      const maxNomorMap: Record<string, number> = {};

      await Promise.all(
        sumberSet.map(async (s) => {
          const { data: maxRow } = await supabase
            .from('questions')
            .select('nomor')
            .eq('sumber', s)
            .order('nomor', { ascending: false })
            .limit(1);
          maxNomorMap[s] = maxRow?.[0]?.nomor || 0;
        })
      );

      const payload = validItems.map((item) => {
        const itemSumber = item.sumber || defaultSumberTag;
        const currentMax = maxNomorMap[itemSumber] || 0;

        let itemNomor: number;
        // Jika nomor yang dibawa dari JSON lebih besar dari nomor tertinggi di database, gunakan nomor tersebut
        // Jika bertabrakan atau <= nomor tertinggi yang sudah ada di database, gunakan nomor urut berikutnya
        if (typeof item.nomor === 'number' && item.nomor > currentMax) {
          itemNomor = item.nomor;
          maxNomorMap[itemSumber] = item.nomor;
        } else {
          maxNomorMap[itemSumber] = currentMax + 1;
          itemNomor = maxNomorMap[itemSumber];
        }

        return {
          sumber: itemSumber,
          nomor: itemNomor,
          subtes: item.subtes as SubtesType,
          topik: item.topik || null,
          level: item.level || 'sedang',
          soal: item.soal,
          gambar_url: item.gambar_url || null,
          pembahasan_gambar: item.pembahasan_gambar || null,
          opsi: item.opsi,
          kunci: item.kunci || null,
          skor_tkp: item.skor_tkp || null,
          pembahasan: item.pembahasan || null,
          status: item.status || 'published',
          created_at: new Date().toISOString(),
          updated_at: new Date().toISOString(),
        };
      });

      // Insert dalam batch/chunk (50 butir per chunk) agar aman dari batas payload & timeout
      const BATCH_SIZE = 50;
      for (let i = 0; i < payload.length; i += BATCH_SIZE) {
        setImportProgress(`Menyimpan ${i + 1} - ${Math.min(i + BATCH_SIZE, payload.length)} dari ${payload.length}...`);
        const chunk = payload.slice(i, i + BATCH_SIZE);
        const { error } = await supabase.from('questions').insert(chunk);
        if (error) throw error;
      }

      setImportProgress(null);
      setImportSuccessCount(validItems.length);
      setParsedItems([]);
      setJsonText('');
    } catch (err: unknown) {
      console.error('Import error:', err);
      let errorMsg = 'Terjadi kesalahan tidak terduga.';
      if (err && typeof err === 'object') {
        const anyErr = err as Record<string, unknown>;
        if (anyErr.message) errorMsg = String(anyErr.message);
        else if (anyErr.details) errorMsg = String(anyErr.details);
        else if (anyErr.hint) errorMsg = String(anyErr.hint);
        else errorMsg = JSON.stringify(err);
      } else if (err instanceof Error) {
        errorMsg = err.message;
      }
      alert('Gagal mengimpor soal: ' + errorMsg);
    } finally {
      setImporting(false);
      setImportProgress(null);
    }
  };

  const validCount = parsedItems.filter((i) => i.isValid).length;
  const errorCount = parsedItems.filter((i) => !i.isValid).length;
  const duplicateCount = parsedItems.filter((i) => i.isDuplicate).length;

  const displayedItems = parsedItems.filter((item) => {
    if (filterView === 'valid') return item.isValid;
    if (filterView === 'error') return !item.isValid;
    if (filterView === 'duplicate') return item.isDuplicate;
    return true;
  });

  return (
    <div className="space-y-6">
      {/* Header */}
      <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-3">
        <div>
          <h1 className="text-xl sm:text-2xl font-bold text-slate-900 tracking-tight">
            Impor Massal Soal (JSON)
          </h1>
          <p className="text-xs text-slate-500 mt-0.5">
            Unggah atau tempel berkas JSON untuk menambah banyak soal sekaligus dengan validasi otomatis.
          </p>
        </div>

        <button
          onClick={handleDownloadSample}
          className="inline-flex items-center gap-2 px-4 py-2.5 rounded-xl border border-slate-200 bg-white hover:bg-slate-50 text-slate-700 text-xs font-semibold shadow-xs transition"
        >
          <Download className="w-4 h-4 text-slate-500" />
          <span>Unduh Contoh JSON</span>
        </button>
      </div>

      {/* Success Notification */}
      {importSuccessCount !== null && (
        <div className="p-4 rounded-2xl bg-emerald-50 border border-emerald-200 text-emerald-800 flex items-center justify-between gap-3 animate-in fade-in">
          <div className="flex items-center gap-2.5">
            <CheckCircle2 className="w-5 h-5 text-emerald-600 shrink-0" />
            <div>
              <p className="font-bold text-sm">
                Berhasil mengimpor {importSuccessCount} butir soal!
              </p>
              <p className="text-xs text-emerald-700">
                Semua soal tersimpan dengan status <strong>Draft</strong>. Silakan periksa di Bank Soal sebelum menerbitkannya.
              </p>
            </div>
          </div>

          <Link
            href="/admin/soal"
            className="px-4 py-2 rounded-xl bg-emerald-600 hover:bg-emerald-700 text-white text-xs font-bold transition flex items-center gap-1.5"
          >
            <span>Buka Bank Soal</span>
            <ArrowRight className="w-4 h-4" />
          </Link>
        </div>
      )}

      {/* Upload & Paste Area */}
      <div className="bg-white rounded-2xl border border-slate-200 p-5 shadow-xs space-y-4">
        <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-3 border-b border-slate-100 pb-3">
          <div>
            <h2 className="text-xs font-bold text-slate-800 uppercase tracking-wider">
              Masukan Data JSON Soal
            </h2>
            <p className="text-[11px] text-slate-400 mt-0.5">
              Unggah berkas .json atau tempel teks JSON. Soal yang sudah ada di bank soal otomatis dicegah agar tidak duplikat.
            </p>
          </div>

          <div className="flex flex-wrap items-center gap-2">
            <button
              type="button"
              onClick={handleDownloadSample}
              className="inline-flex items-center gap-1.5 px-3 py-1.5 rounded-xl bg-slate-50 hover:bg-slate-100 text-slate-700 text-xs font-semibold border border-slate-200 transition"
              title="Unduh contoh struktur berkas JSON"
            >
              <Download className="w-3.5 h-3.5 text-slate-600" />
              <span>Contoh Format JSON</span>
            </button>

            <label className="cursor-pointer inline-flex items-center gap-1.5 px-3.5 py-1.5 rounded-xl bg-indigo-600 hover:bg-indigo-700 text-white text-xs font-bold transition shadow-xs">
              <Upload className="w-3.5 h-3.5" />
              <span>Pilih Berkas .json</span>
              <input
                type="file"
                accept=".json,application/json"
                onChange={handleFileUpload}
                className="hidden"
              />
            </label>
          </div>
        </div>

        <textarea
          rows={6}
          value={jsonText}
          onChange={(e) => setJsonText(e.target.value)}
          placeholder='Tempel JSON di sini: [ { "subtes": "TIU", "soal": "...", ... } ]'
          className="w-full p-3.5 rounded-xl border border-slate-200 font-mono text-xs text-slate-800 focus:outline-none focus:border-indigo-600"
        />

        <div className="flex items-center justify-between pt-1">
          <span className="text-[11px] text-slate-400">
            Hasil impor otomatis berstatus <strong>Draft</strong> dengan penomoran berurutan.
          </span>

          <button
            type="button"
            onClick={() => analyzeJson(jsonText)}
            disabled={analyzing || !jsonText.trim()}
            className="px-5 py-2.5 rounded-xl bg-indigo-600 hover:bg-indigo-700 text-white text-xs font-bold shadow-md shadow-indigo-100 flex items-center gap-2 transition disabled:opacity-50"
          >
            {analyzing ? (
              <>
                <Loader2 className="w-3.5 h-3.5 animate-spin" />
                <span>Memvalidasi...</span>
              </>
            ) : (
              <>
                <RefreshCw className="w-3.5 h-3.5" />
                <span>Periksa & Pratinjau</span>
              </>
            )}
          </button>
        </div>
      </div>

      {/* Pratinjau Hasil Analisis */}
      {parsedItems.length > 0 && (
        <div className="space-y-4 animate-in fade-in">
          {/* Summary Stats & Action Bar */}
          <div className="bg-white rounded-2xl border border-slate-200 p-4 shadow-xs flex flex-col sm:flex-row sm:items-center justify-between gap-4">
            {/* Stat Badges */}
            <div className="flex flex-wrap items-center gap-2 text-xs">
              <button
                onClick={() => setFilterView('all')}
                className={`px-3 py-1.5 rounded-xl font-semibold transition ${
                  filterView === 'all'
                    ? 'bg-slate-900 text-white shadow-xs'
                    : 'bg-slate-100 text-slate-700 hover:bg-slate-200'
                }`}
              >
                Semua ({parsedItems.length})
              </button>

              <button
                onClick={() => setFilterView('valid')}
                className={`px-3 py-1.5 rounded-xl font-semibold transition flex items-center gap-1.5 ${
                  filterView === 'valid'
                    ? 'bg-emerald-600 text-white shadow-xs'
                    : 'bg-emerald-50 text-emerald-800 hover:bg-emerald-100'
                }`}
              >
                <CheckCircle2 className="w-3.5 h-3.5" />
                <span>Valid: {validCount}</span>
              </button>

              <button
                onClick={() => setFilterView('error')}
                className={`px-3 py-1.5 rounded-xl font-semibold transition flex items-center gap-1.5 ${
                  filterView === 'error'
                    ? 'bg-rose-600 text-white shadow-xs'
                    : 'bg-rose-50 text-rose-800 hover:bg-rose-100'
                }`}
              >
                <XCircle className="w-3.5 h-3.5" />
                <span>Error: {errorCount}</span>
              </button>

              {duplicateCount > 0 && (
                <button
                  onClick={() => setFilterView('duplicate')}
                  className={`px-3 py-1.5 rounded-xl font-semibold transition flex items-center gap-1.5 ${
                    filterView === 'duplicate'
                      ? 'bg-amber-500 text-white shadow-xs'
                      : 'bg-amber-50 text-amber-800 hover:bg-amber-100'
                  }`}
                >
                  <AlertTriangle className="w-3.5 h-3.5" />
                  <span>Duplikat?: {duplicateCount}</span>
                </button>
              )}
            </div>

            {/* Tombol Eksekusi Impor */}
            <button
              onClick={handleExecuteImport}
              disabled={importing || validCount === 0}
              className="px-6 py-2.5 rounded-xl bg-emerald-600 hover:bg-emerald-700 text-white text-xs font-bold shadow-md shadow-emerald-100 flex items-center justify-center gap-2 transition disabled:opacity-40"
            >
              {importing ? (
                <>
                  <Loader2 className="w-4 h-4 animate-spin" />
                  <span>{importProgress || 'Mengimpor ke database...'}</span>
                </>
              ) : (
                <>
                  <FileCheck className="w-4 h-4" />
                  <span>Impor {validCount} Soal Valid</span>
                </>
              )}
            </button>
          </div>

          {/* Tabel Pratinjau Baris */}
          <div className="bg-white rounded-2xl border border-slate-200 overflow-hidden shadow-xs">
            <div className="overflow-x-auto">
              <table className="min-w-full divide-y divide-slate-100 text-xs">
                <thead className="bg-slate-50 text-slate-500 font-bold uppercase tracking-wider text-[10px]">
                  <tr>
                    <th className="py-3 px-3 text-center w-12">#</th>
                    <th className="py-3 px-2 text-left w-16">Subtes</th>
                    <th className="py-3 px-2 text-left w-28">Topik</th>
                    <th className="py-3 px-3 text-left">Teks Soal</th>
                    <th className="py-3 px-2 text-center w-20">Kunci/Skor</th>
                    <th className="py-3 px-3 text-left w-64">Status & Catatan</th>
                  </tr>
                </thead>
                <tbody className="divide-y divide-slate-100 text-slate-700">
                  {displayedItems.map((item) => (
                    <tr
                      key={item.index}
                      className={
                        !item.isValid
                          ? 'bg-rose-50/50'
                          : item.isDuplicate
                          ? 'bg-amber-50/40'
                          : 'hover:bg-slate-50/60'
                      }
                    >
                      <td className="py-3 px-3 text-center font-mono font-bold text-slate-400">
                        {item.index}
                      </td>

                      <td className="py-3 px-2">
                        <span className="font-bold text-[10px] px-2 py-0.5 rounded-md bg-slate-100 text-slate-800">
                          {item.subtes || '-'}
                        </span>
                      </td>

                      <td className="py-3 px-2 text-slate-600 truncate max-w-[120px]">
                        {item.topik || '-'}
                      </td>

                      <td className="py-3 px-3">
                        <div className="line-clamp-2 text-slate-900 leading-snug">
                          {item.soal || '<Kosong>'}
                        </div>
                      </td>

                      <td className="py-3 px-2 text-center font-bold">
                        {item.subtes === 'TKP' ? (
                          <span className="text-[10px] text-indigo-600 font-mono">1-5 Poin</span>
                        ) : (
                          <span className="text-emerald-700">{item.kunci || '-'}</span>
                        )}
                      </td>

                      <td className="py-3 px-3">
                        {item.isValid ? (
                          <div>
                            <span className="inline-flex items-center gap-1 text-emerald-700 font-bold text-[11px]">
                              <CheckCircle2 className="w-3.5 h-3.5" />
                              <span>Valid (Siap Impor)</span>
                            </span>
                            {item.isDuplicate && (
                              <p className="text-[10px] text-amber-700 font-medium mt-0.5">
                                ⚠ {item.duplicateReason}
                              </p>
                            )}
                            {!item.isDuplicate && item.hasOptionVariant && (
                              <p className="text-[10px] text-sky-700 font-medium mt-0.5">
                                ℹ Teks soal mirip dengan soal lain, tetapi opsi pilihan ganda berbeda (varian baru).
                              </p>
                            )}
                          </div>
                        ) : (
                          <div className="space-y-0.5">
                            <span className="inline-flex items-center gap-1 text-rose-700 font-bold text-[11px]">
                              <XCircle className="w-3.5 h-3.5" />
                              <span>Error</span>
                            </span>
                            {item.errors.map((err, i) => (
                              <p key={i} className="text-[10px] text-rose-600 leading-tight">
                                • {err}
                              </p>
                            ))}
                          </div>
                        )}
                      </td>
                    </tr>
                  ))}
                </tbody>
              </table>
            </div>
          </div>
        </div>
      )}
    </div>
  );
};
