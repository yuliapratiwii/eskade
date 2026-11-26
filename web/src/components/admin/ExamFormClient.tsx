'use client';

import React, { useState, useId, useCallback } from 'react';
import Link from 'next/link';
import { useRouter } from 'next/navigation';
import { createClient } from '@/lib/supabase/client';
import { SubtesType } from '@/lib/types';
import { MarkdownRenderer } from '@/components/MarkdownRenderer';
import {
  Save,
  ArrowLeft,
  Plus,
  ArrowUp,
  ArrowDown,
  Trash2,
  Search,
  CheckCircle2,
  X,
  Loader2,
  Layers,
  AlertCircle,
  Sparkles,
  Zap,
  Upload,
  BookOpen,
  Filter,
  Check,
  Package,
} from 'lucide-react';

export interface ExamQuestionEntry {
  id: string; // question_id
  subtes: SubtesType;
  topik: string | null;
  soal: string;
}

export interface QuestionExamAssignment {
  examId: string;
  judul: string;
  tipe: string;
  subtes: string | null;
}

export interface SubtestExamInfo {
  id: string;
  judul: string;
  tipe: 'subtes';
  subtes: SubtesType;
  durasi_menit: number;
}

export interface ExistingExamSummary {
  id: string;
  judul: string;
  tipe: 'tryout' | 'subtes' | 'latihan';
  subtes: string | null;
  durasi_menit: number;
}

// Bobot urutan topik resmi SKD agar susunan soal per topik rapi dan teratur
const TOPIC_ORDER_PRIORITY: Record<string, number> = {
  // TWK
  'pancasila': 10,
  'uud 1945': 20,
  'uud': 21,
  'konstitusi': 22,
  'bhinneka tunggal ika': 30,
  'nkri': 40,
  'bela negara': 41,
  'nasionalisme': 42,
  'integritas': 43,
  'bahasa indonesia': 50,

  // TIU
  'analogi': 110,
  'analogi kata': 111,
  'analogi kalimat': 112,
  'silogisme': 120,
  'analitis': 130,
  'logika & penalaran': 131,
  'berhitung': 140,
  'aritmatika': 141,
  'aljabar': 142,
  'deret angka': 150,
  'deret': 151,
  'perbandingan kuantitatif': 160,
  'perbandingan': 161,
  'soal cerita': 170,
  'figural': 180,
  'figural serial': 181,
  'figural analogi': 182,
  'figural ketaksamaan': 183,
  'figural 9 kotak': 184,

  // TKP
  'pelayanan publik': 210,
  'jejaring kerja': 220,
  'sosial budaya': 230,
  'teknologi informasi dan komunikasi': 240,
  'tik': 241,
  'profesionalisme': 250,
  'anti radikalisme': 260,
};

// Fungsi pengurutan butir soal berdasarkan hierarki subtes dan topik resmi
export function sortQuestionsByTopic(questions: ExamQuestionEntry[]): ExamQuestionEntry[] {
  const subtesOrder: Record<string, number> = { TWK: 1, TIU: 2, TKP: 3 };

  return [...questions].sort((a, b) => {
    // 1. Urutkan berdasarkan Subtes: TWK -> TIU -> TKP
    const sDiff = (subtesOrder[a.subtes] || 99) - (subtesOrder[b.subtes] || 99);
    if (sDiff !== 0) return sDiff;

    // 2. Urutkan berdasarkan prioritas Topik
    const topA = (a.topik || '').toLowerCase();
    const topB = (b.topik || '').toLowerCase();

    let prioA = 999;
    let prioB = 999;

    for (const [key, p] of Object.entries(TOPIC_ORDER_PRIORITY)) {
      if (topA.includes(key)) prioA = Math.min(prioA, p);
      if (topB.includes(key)) prioB = Math.min(prioB, p);
    }

    if (prioA !== prioB) return prioA - prioB;

    // 3. Jika topik sama atau belum terdaftar, urutkan alfabetik
    return topA.localeCompare(topB);
  });
}

// Helper kalkulasi penomoran berurutan & default durasi / jumlah soal
export function getNextPackageConfig(
  existingExams: ExistingExamSummary[],
  targetTipe: 'tryout' | 'subtes',
  targetSubtes: SubtesType
): { title: string; defaultDuration: number; defaultCount: number } {
  if (targetTipe === 'subtes') {
    // Default paket solo: TIU (35 soal, 50 mnt), TWK (30 soal, 25 mnt), TKP (45 soal, 35 mnt)
    let defaultDuration = 50;
    let defaultCount = 35;
    if (targetSubtes === 'TWK') {
      defaultDuration = 25;
      defaultCount = 30;
    } else if (targetSubtes === 'TKP') {
      defaultDuration = 35;
      defaultCount = 45;
    }

    let maxNum = 0;
    const regex1 = new RegExp(`${targetSubtes}\\s*Paket\\s*(\\d+)`, 'i');
    const regex2 = new RegExp(`Paket\\s*(\\d+)\\s*${targetSubtes}`, 'i');
    const regex3 = /Paket\s*(\d+)/i;

    existingExams.forEach((e) => {
      if (
        e.subtes === targetSubtes ||
        (e.tipe === 'subtes' && e.judul.toLowerCase().includes(targetSubtes.toLowerCase()))
      ) {
        const match = e.judul.match(regex1) || e.judul.match(regex2) || e.judul.match(regex3);
        if (match && match[1]) {
          const num = parseInt(match[1], 10);
          if (!isNaN(num) && num > maxNum) maxNum = num;
        }
      }
    });

    const nextNum = maxNum + 1;
    return {
      title: `${targetSubtes} Paket ${nextNum} (${defaultCount} Soal)`,
      defaultDuration,
      defaultCount,
    };
  } else {
    // Default Try Out Penuh SKD: 110 soal, 100 menit
    const defaultDuration = 100;
    const defaultCount = 110;

    let maxNum = 0;
    const regex1 = /Try\s*Out\s*Paket\s*(\d+)/i;
    const regex2 = /Paket\s*(\d+)/i;

    existingExams.forEach((e) => {
      if (e.tipe === 'tryout' || e.judul.toLowerCase().includes('try out')) {
        const match = e.judul.match(regex1) || e.judul.match(regex2);
        if (match && match[1]) {
          const num = parseInt(match[1], 10);
          if (!isNaN(num) && num > maxNum) maxNum = num;
        }
      }
    });

    const nextNum = maxNum + 1;
    return {
      title: `Try Out Paket ${nextNum} (110 Soal)`,
      defaultDuration,
      defaultCount,
    };
  }
}

// Memoized Question Card untuk performa tinggi (menghilangkan lag 2-3 detik saat ketik/klik)
const SelectedQuestionCard = React.memo<{
  q: ExamQuestionEntry;
  idx: number;
  total: number;
  usedInOther: QuestionExamAssignment | null;
  onMoveUp: (index: number) => void;
  onMoveDown: (index: number) => void;
  onRemove: (id: string) => void;
}>(({ q, idx, total, usedInOther, onMoveUp, onMoveDown, onRemove }) => {
  return (
    <div className="py-3.5 flex items-start justify-between gap-3 text-xs hover:bg-slate-50/70 rounded-xl px-2.5 transition">
      <div className="flex items-start gap-3 min-w-0 flex-1">
        <span className="w-7 h-7 rounded-lg bg-slate-100 text-slate-700 font-mono font-bold flex items-center justify-center shrink-0 mt-0.5">
          {idx + 1}
        </span>

        <div className="min-w-0 flex-1">
          <div className="flex flex-wrap items-center gap-1.5 mb-1.5">
            <span
              className={`font-bold text-[10px] px-2 py-0.5 rounded-md ${
                q.subtes === 'TIU'
                  ? 'bg-blue-100 text-blue-800'
                  : q.subtes === 'TWK'
                  ? 'bg-emerald-100 text-emerald-800'
                  : 'bg-purple-100 text-purple-800'
              }`}
            >
              {q.subtes}
            </span>
            {q.topik && (
              <span className="text-[11px] text-slate-500 font-medium">
                {q.topik}
              </span>
            )}
            {usedInOther && (
              <span className="text-[10px] px-2 py-0.5 rounded-md bg-amber-50 text-amber-700 border border-amber-200">
                ⚠️ Sudah di: {usedInOther.judul}
              </span>
            )}
          </div>

          <div className="text-slate-800 text-xs sm:text-[13px] leading-relaxed py-0.5 overflow-x-auto">
            <MarkdownRenderer
              content={q.soal}
              className="text-xs sm:text-[13px] !my-0 [&_p]:!my-1 [&_.katex-display]:!my-1.5 [&_table]:!my-1.5"
            />
          </div>
        </div>
      </div>

      <div className="flex items-center gap-1 shrink-0 pt-0.5">
        <button
          type="button"
          onClick={() => onMoveUp(idx)}
          disabled={idx === 0}
          className="p-1 rounded-lg text-slate-400 hover:text-slate-700 hover:bg-slate-100 disabled:opacity-30 transition"
          title="Geser ke Atas"
        >
          <ArrowUp className="w-4 h-4" />
        </button>
        <button
          type="button"
          onClick={() => onMoveDown(idx)}
          disabled={idx === total - 1}
          className="p-1 rounded-lg text-slate-400 hover:text-slate-700 hover:bg-slate-100 disabled:opacity-30 transition"
          title="Geser ke Bawah"
        >
          <ArrowDown className="w-4 h-4" />
        </button>
        <button
          type="button"
          onClick={() => onRemove(q.id)}
          className="p-1 rounded-lg text-rose-400 hover:text-rose-700 hover:bg-rose-50 transition ml-1"
          title="Hapus dari Paket"
        >
          <Trash2 className="w-4 h-4" />
        </button>
      </div>
    </div>
  );
});
SelectedQuestionCard.displayName = 'SelectedQuestionCard';

interface ExamFormClientProps {
  initialExam?: {
    id: string;
    judul: string;
    tipe: 'tryout' | 'subtes' | 'latihan';
    subtes: string | null;
    durasi_menit: number;
    aktif: boolean;
  } | null;
  initialQuestions?: ExamQuestionEntry[];
  publishedQuestionsPool: ExamQuestionEntry[];
  usedAssignmentsMap?: Record<string, QuestionExamAssignment[]>;
  subtestExams?: SubtestExamInfo[];
  allExistingExams?: ExistingExamSummary[];
  isEdit?: boolean;
}

export const ExamFormClient: React.FC<ExamFormClientProps> = ({
  initialExam,
  initialQuestions = [],
  publishedQuestionsPool: initialPool,
  usedAssignmentsMap = {},
  subtestExams = [],
  allExistingExams = [],
  isEdit = false,
}) => {
  const router = useRouter();
  const supabase = createClient();

  // Mode & Subtest State
  const [tipe, setTipe] = useState<'tryout' | 'subtes'>(
    initialExam?.tipe === 'subtes' ? 'subtes' : 'subtes'
  );
  const [subtes, setSubtes] = useState<SubtesType>(
    (initialExam?.subtes as SubtesType) || 'TIU'
  );

  // Pool of published questions
  const [publishedPool, setPublishedPool] = useState<ExamQuestionEntry[]>(initialPool);

  // Hitung konfigurasi default sesuai permintaan:
  // Solo TIU: 35 soal, 50 menit
  // Solo TWK: 30 soal, 25 menit
  // Solo TKP: 45 soal, 35 menit
  // Try Out: 110 soal, 100 menit
  // Dengan judul otomatis berurutan dari paket terakhir yang ada
  const initialDefaultConfig = React.useMemo(() => {
    return getNextPackageConfig(allExistingExams, tipe, subtes);
  }, [allExistingExams, tipe, subtes]);

  // Basic Info
  const [judul, setJudul] = useState(
    initialExam?.judul || initialDefaultConfig.title
  );
  const [durasiMenit, setDurasiMenit] = useState<number>(
    initialExam?.durasi_menit || initialDefaultConfig.defaultDuration
  );
  const [aktif, setAktif] = useState<boolean>(initialExam?.aktif ?? true);

  // Selected Questions for Exam
  const [selectedQuestions, setSelectedQuestions] = useState<ExamQuestionEntry[]>(initialQuestions);

  // Auto-Pick Generator State
  const [autoPickCount, setAutoPickCount] = useState<number>(
    initialDefaultConfig.defaultCount
  );
  const [autoPickMode, setAutoPickMode] = useState<'random' | 'sequential'>('sequential');
  const [autoPickMsg, setAutoPickMsg] = useState<string | null>(null);

  // Deteksi real-time apakah judul paket duplikat dengan paket yang sudah ada
  const isDuplicateTitle = React.useMemo(() => {
    const norm = judul.trim().toLowerCase();
    if (!norm) return false;
    return allExistingExams.some(
      (e) => e.id !== initialExam?.id && e.judul.trim().toLowerCase() === norm
    );
  }, [judul, allExistingExams, initialExam]);

  // Modal Picker State
  const [isPickerOpen, setIsPickerOpen] = useState(false);
  const [pickerSearch, setPickerSearch] = useState('');
  const [pickerSubtes, setPickerSubtes] = useState<string>(subtes);
  const [pickerTopik, setPickerTopik] = useState<string>('all');
  const [hideUsedInOtherSubtests, setHideUsedInOtherSubtests] = useState<boolean>(true);
  const [tempCheckedIds, setTempCheckedIds] = useState<string[]>([]);

  // Topic Filter State (Campur Semua Topik vs Khusus 1 Topik)
  const [topikFilterMode, setTopikFilterMode] = useState<'semua' | 'khusus'>('semua');
  const [selectedTopik, setSelectedTopik] = useState<string | null>(null);

  // Modal Impor Langsung State
  const [isImportModalOpen, setIsImportModalOpen] = useState(false);
  const [importJsonText, setImportJsonText] = useState('');
  const [importTargetSubtes, setImportTargetSubtes] = useState<SubtesType>(subtes);
  const [isImporting, setIsImporting] = useState(false);
  const [importError, setImportError] = useState<string | null>(null);

  const [saving, setSaving] = useState(false);
  const [deletingExam, setDeletingExam] = useState(false);
  const [errorMsg, setErrorMsg] = useState<string | null>(null);

  // Helper untuk mengecek apakah soal sudah dipakai di paket subtes lain
  const getUsedSubtestExam = (qId: string, currentSubtes: SubtesType): QuestionExamAssignment | null => {
    const assignments = usedAssignmentsMap[qId] || [];
    return (
      assignments.find(
        (a) =>
          a.tipe === 'subtes' &&
          a.subtes === currentSubtes &&
          a.examId !== initialExam?.id
      ) || null
    );
  };

  // Topik yang tersedia untuk subtes saat ini (dihitung dinamis dari bank soal)
  const availableTopicsForSubtest = React.useMemo(() => {
    const counts: Record<string, number> = {};
    publishedPool.forEach((q) => {
      if (tipe === 'subtes') {
        if (q.subtes === subtes && q.topik) {
          counts[q.topik] = (counts[q.topik] || 0) + 1;
        }
      } else {
        if (q.topik) {
          counts[q.topik] = (counts[q.topik] || 0) + 1;
        }
      }
    });
    return Object.entries(counts)
      .sort((a, b) => b[1] - a[1])
      .map(([topik, count]) => ({ topik, count }));
  }, [publishedPool, tipe, subtes]);

  // Topik untuk dropdown di modal pemilih soal
  const modalAvailableTopics = React.useMemo(() => {
    const topics = new Set<string>();
    publishedPool.forEach((q) => {
      if (pickerSubtes === 'all' || q.subtes === pickerSubtes) {
        if (q.topik) topics.add(q.topik);
      }
    });
    return Array.from(topics).sort();
  }, [publishedPool, pickerSubtes]);

  // Helper ganti kategori subtes / tryout
  const handleSelectCategory = (newTipe: 'tryout' | 'subtes', newSubtes?: SubtesType) => {
    const targetSubtes = newSubtes || 'TIU';

    if (newTipe === 'subtes') {
      // Cek apakah ada soal dengan subtes berbeda yang sudah dipilih
      const nonMatching = selectedQuestions.filter((q) => q.subtes !== targetSubtes);
      if (nonMatching.length > 0) {
        if (
          !confirm(
            `Mengubah ke paket ${targetSubtes} akan menghapus ${nonMatching.length} butir soal dari subtes lain yang saat ini ada di susunan paket. Lanjutkan?`
          )
        ) {
          return;
        }
        setSelectedQuestions((prev) => prev.filter((q) => q.subtes === targetSubtes));
      }
      setTipe('subtes');
      setSubtes(targetSubtes);
      setPickerSubtes(targetSubtes);
      setImportTargetSubtes(targetSubtes);
      setTopikFilterMode('semua');
      setSelectedTopik(null);
      if (!isEdit) {
        const nextConf = getNextPackageConfig(allExistingExams, 'subtes', targetSubtes);
        setJudul(nextConf.title);
        setDurasiMenit(nextConf.defaultDuration);
        setAutoPickCount(nextConf.defaultCount);
      }
    } else {
      setTipe('tryout');
      setPickerSubtes('all');
      setTopikFilterMode('semua');
      setSelectedTopik(null);
      if (!isEdit) {
        const nextConf = getNextPackageConfig(allExistingExams, 'tryout', 'TIU');
        setJudul(nextConf.title);
        setDurasiMenit(nextConf.defaultDuration);
        setAutoPickCount(nextConf.defaultCount);
      }
    }
  };

  // Helper ganti mode filter topik: 'semua' atau 'khusus'
  const handleSelectTopikMode = (mode: 'semua' | 'khusus') => {
    setTopikFilterMode(mode);
    if (mode === 'khusus') {
      const firstTopik = availableTopicsForSubtest[0]?.topik || null;
      setSelectedTopik(firstTopik);
      if (!isEdit && firstTopik) {
        setJudul(`${subtes} ${firstTopik} Paket 1 (${selectedQuestions.length || autoPickCount} Soal)`);
      }
    } else {
      setSelectedTopik(null);
      if (!isEdit) {
        const nextConf = getNextPackageConfig(allExistingExams, tipe, subtes);
        setJudul(nextConf.title);
      }
    }
  };

  // Helper pilih topik spesifik
  const handleSelectSpecificTopic = (topik: string) => {
    setSelectedTopik(topik);
    if (!isEdit) {
      setJudul(`${subtes} ${topik} Paket 1 (${selectedQuestions.length || autoPickCount} Soal)`);
    }
  };

  // Auto Pick Questions Handler (dengan DEDUPLIKASI KETAT ANTAR PAKET & PENGURUTAN TOPIK RAPI)
  const handleAutoPickQuestions = (countToPick: number) => {
    setAutoPickMsg(null);
    const existingIds = new Set(selectedQuestions.map((q) => q.id));

    // Filter candidate pool
    let candidates = publishedPool.filter((q) => {
      // 1. Jangan ambil soal yang sudah ada di susunan paket ini
      if (existingIds.has(q.id)) return false;

      // 2. DEDUPLIKASI KETAT ANTAR PAKET: Soal yang sudah ada di paket lain APAPUN tidak boleh diambil lagi!
      const isUsedInAnyExam = (usedAssignmentsMap[q.id] || []).some(
        (a) => a.examId !== initialExam?.id
      );
      if (isUsedInAnyExam) return false;

      // 3. Jika mode subtes, HANYA ambil soal subtes bersangkutan
      if (tipe === 'subtes') {
        if (q.subtes !== subtes) return false;

        // 4. Filter topik jika mode khusus 1 topik aktif
        if (topikFilterMode === 'khusus' && selectedTopik) {
          if (q.topik !== selectedTopik) return false;
        }
      }

      return true;
    });

    if (candidates.length === 0) {
      if (tipe === 'subtes') {
        const topikMsg =
          topikFilterMode === 'khusus' && selectedTopik ? ` dengan topik "${selectedTopik}"` : '';
        setAutoPickMsg(
          `Semua butir soal ${subtes}${topikMsg} yang belum terpakai di paket manapun sudah dimasukkan, atau bank soal unik habis.`
        );
      } else {
        setAutoPickMsg(`Tidak ada soal unik tambahan di bank soal.`);
      }
      return;
    }

    let picked: ExamQuestionEntry[] = [];

    // Jika mode Campur (Semua Topik), pastikan SEMUA topik yang tersedia masuk secara proporsional (round-robin)
    if (topikFilterMode === 'semua') {
      const topicBuckets: Record<string, ExamQuestionEntry[]> = {};
      candidates.forEach((q) => {
        const top = q.topik || 'Umum';
        if (!topicBuckets[top]) topicBuckets[top] = [];
        topicBuckets[top].push(q);
      });

      // Jika acak, acak susunan soal di setiap kelompok topik
      if (autoPickMode === 'random') {
        Object.keys(topicBuckets).forEach((top) => {
          topicBuckets[top].sort(() => Math.random() - 0.5);
        });
      }

      // Ambil secara bergiliran (round-robin) dari tiap topik agar semua topik terwakili
      const topics = Object.keys(topicBuckets);
      let tIdx = 0;
      while (picked.length < countToPick && topics.some((t) => topicBuckets[t].length > 0)) {
        const t = topics[tIdx % topics.length];
        if (topicBuckets[t].length > 0) {
          picked.push(topicBuckets[t].shift()!);
        }
        tIdx++;
      }
    } else {
      if (autoPickMode === 'random') {
        candidates = [...candidates].sort(() => Math.random() - 0.5);
      }
      picked = candidates.slice(0, countToPick);
    }

    // Urutkan susunan soal secara rapi berdasarkan kelompok topik resmi!
    const newSelected = sortQuestionsByTopic([...selectedQuestions, ...picked]);
    setSelectedQuestions(newSelected);

    // Hitung rekomendasi durasi: default atau disesuaikan
    const recommendedMinutes =
      tipe === 'tryout'
        ? 100
        : subtes === 'TIU'
        ? 50
        : subtes === 'TKP'
        ? 35
        : 25;
    setDurasiMenit(recommendedMinutes);

    const labelTopik =
      tipe === 'subtes'
        ? topikFilterMode === 'khusus' && selectedTopik
          ? `${subtes} (${selectedTopik})`
          : `${subtes} (Terurut Rapi per Topik)`
        : 'SKD';

    setAutoPickMsg(
      `Berhasil menambahkan ${picked.length} butir soal ${labelTopik}! Total: ${newSelected.length} soal (${recommendedMinutes} menit). Susunan diurutkan rapi per topik.`
    );
    setTimeout(() => setAutoPickMsg(null), 5000);
  };

  // Helper untuk mengambil soal dari kumpulan secara proporsional per-topik
  const pickDistributedByTopic = (pool: ExamQuestionEntry[], count: number) => {
    const buckets: Record<string, ExamQuestionEntry[]> = {};
    pool.forEach((q) => {
      const top = q.topik || 'Umum';
      if (!buckets[top]) buckets[top] = [];
      buckets[top].push(q);
    });

    Object.keys(buckets).forEach((t) => {
      buckets[t].sort(() => Math.random() - 0.5);
    });

    const topics = Object.keys(buckets);
    const result: ExamQuestionEntry[] = [];
    let idx = 0;
    while (result.length < count && topics.some((t) => buckets[t].length > 0)) {
      const t = topics[idx % topics.length];
      if (buckets[t].length > 0) {
        result.push(buckets[t].shift()!);
      }
      idx++;
    }
    return result;
  };

  // Generator Standar SKD Penuh (30 TWK + 35 TIU + 45 TKP) untuk Try Out Penuh dengan distribusi topik merata & urutan rapi
  const handleGenerateStandardFullSKD = () => {
    setAutoPickMsg(null);
    const existingIds = new Set(selectedQuestions.map((q) => q.id));

    // Filter kandidat yang BELUM pernah dipakai di paket manapun
    const isAvailable = (qId: string) =>
      !existingIds.has(qId) &&
      !(usedAssignmentsMap[qId] || []).some((a) => a.examId !== initialExam?.id);

    const twkPool = publishedPool.filter((q) => q.subtes === 'TWK' && isAvailable(q.id));
    const tiuPool = publishedPool.filter((q) => q.subtes === 'TIU' && isAvailable(q.id));
    const tkpPool = publishedPool.filter((q) => q.subtes === 'TKP' && isAvailable(q.id));

    const pickedTWK = pickDistributedByTopic(twkPool, 30);
    const pickedTIU = pickDistributedByTopic(tiuPool, 35);
    const pickedTKP = pickDistributedByTopic(tkpPool, 45);

    // Gabungkan dan urutkan rapi sesuai hierarki topik resmi SKD:
    // TWK (Pancasila, UUD, dll) -> TIU (Analogi, Silogisme, dll) -> TKP (Pelayanan, dll)
    const combined = sortQuestionsByTopic([...selectedQuestions, ...pickedTWK, ...pickedTIU, ...pickedTKP]);
    setSelectedQuestions(combined);
    setDurasiMenit(100);

    setAutoPickMsg(
      `Berhasil menyusun Standar SKD Resmi Terurut Rapi: +${pickedTWK.length} TWK, +${pickedTIU.length} TIU, +${pickedTKP.length} TKP. Total: ${combined.length} butir (100 menit)! Bebas duplikat antar paket.`
    );
    setTimeout(() => setAutoPickMsg(null), 6000);
  };

  // Helper merapikan urutan soal terpilih sesuai topik kapan saja
  const handleSortSelectedQuestions = () => {
    setSelectedQuestions((prev) => sortQuestionsByTopic(prev));
    setAutoPickMsg('Susunan soal berhasil dirapikan berurutan sesuai kelompok topik resmi SKD!');
    setTimeout(() => setAutoPickMsg(null), 4000);
  };

  // Impor Semua Soal dari Paket Subtes yang Sudah Ada ke Try Out Penuh
  const handleImportFromSubtestExam = async (sourceExamId: string) => {
    if (!sourceExamId) return;
    try {
      const { data, error } = await supabase
        .from('exam_questions')
        .select(`
          urutan,
          questions (
            id,
            subtes,
            topik,
            soal
          )
        `)
        .eq('exam_id', sourceExamId)
        .order('urutan', { ascending: true });

      if (error || !data) throw error;

      const existingIds = new Set(selectedQuestions.map((q) => q.id));
      const newItems: ExamQuestionEntry[] = [];

      data.forEach((row: any) => {
        if (row.questions && !existingIds.has(row.questions.id)) {
          newItems.push({
            id: row.questions.id,
            subtes: row.questions.subtes as SubtesType,
            topik: row.questions.topik,
            soal: row.questions.soal,
          });
        }
      });

      setSelectedQuestions((prev) => [...prev, ...newItems]);
      setAutoPickMsg(`Berhasil menambahkan ${newItems.length} soal dari paket subtes terpilih!`);
      setTimeout(() => setAutoPickMsg(null), 5000);
    } catch (err: unknown) {
      alert('Gagal mengambil soal dari paket subtes: ' + (err instanceof Error ? err.message : String(err)));
    }
  };

  // Reorder Up (useCallback agar memo child tidak re-render saat ketik input)
  const handleMoveUp = useCallback((index: number) => {
    setSelectedQuestions((prev) => {
      if (index <= 0) return prev;
      const updated = [...prev];
      [updated[index - 1], updated[index]] = [updated[index], updated[index - 1]];
      return updated;
    });
  }, []);

  // Reorder Down
  const handleMoveDown = useCallback((index: number) => {
    setSelectedQuestions((prev) => {
      if (index >= prev.length - 1) return prev;
      const updated = [...prev];
      [updated[index + 1], updated[index]] = [updated[index], updated[index + 1]];
      return updated;
    });
  }, []);

  // Remove Question
  const handleRemoveQuestion = useCallback((id: string) => {
    setSelectedQuestions((prev) => prev.filter((q) => q.id !== id));
  }, []);

  // Open Picker Modal
  const handleOpenPicker = () => {
    setTempCheckedIds([]);
    setPickerSearch('');
    setPickerSubtes(tipe === 'subtes' ? subtes : 'all');
    setPickerTopik(topikFilterMode === 'khusus' && selectedTopik ? selectedTopik : 'all');
    setIsPickerOpen(true);
  };

  // Add selected from picker
  const handleAddFromPicker = () => {
    const existingIds = new Set(selectedQuestions.map((q) => q.id));
    const toAdd = publishedPool.filter(
      (q) => tempCheckedIds.includes(q.id) && !existingIds.has(q.id)
    );
    setSelectedQuestions([...selectedQuestions, ...toAdd]);
    setIsPickerOpen(false);
  };

  // Handler Impor Langsung File JSON ke Paket
  const handleDirectImportToExam = async (e: React.FormEvent) => {
    e.preventDefault();
    setImportError(null);

    if (!importJsonText.trim()) {
      setImportError('Mohon isi atau pilih file JSON soal terlebih dahulu.');
      return;
    }

    setIsImporting(true);
    try {
      let parsed = JSON.parse(importJsonText);
      if (!Array.isArray(parsed)) {
        if (parsed.questions && Array.isArray(parsed.questions)) {
          parsed = parsed.questions;
        } else {
          throw new Error('Format JSON harus berupa array objek soal [{ ... }]');
        }
      }

      if (parsed.length === 0) {
        throw new Error('Array JSON tidak memuat butir soal.');
      }

      // Validasi dan normalisasi tiap butir soal
      const toInsertPayload: any[] = [];
      for (let i = 0; i < parsed.length; i++) {
        const item = parsed[i];
        const itemSubtes = (item.subtes || importTargetSubtes || 'TIU').toUpperCase();

        if (!item.soal || !item.opsi) {
          throw new Error(`Soal pada baris ke-${i + 1} tidak memiliki kolom 'soal' atau 'opsi'.`);
        }

        toInsertPayload.push({
          sumber: item.sumber || `Paket_${judul.replace(/[^a-zA-Z0-9]/g, '_')}`,
          nomor: item.nomor || i + 1,
          subtes: itemSubtes,
          topik: item.topik || (itemSubtes === 'TKP' ? 'Pelayanan Publik' : 'Umum'),
          level: item.level || 'sedang',
          soal: item.soal,
          gambar_url: item.gambar_url || null,
          opsi: item.opsi,
          kunci: itemSubtes === 'TKP' ? null : (item.kunci || 'A').toUpperCase(),
          skor_tkp: itemSubtes === 'TKP' ? item.skor_tkp || { A: 1, B: 2, C: 3, D: 4, E: 5 } : null,
          pembahasan: item.pembahasan || 'Pembahasan lengkap.',
          pembahasan_gambar: item.pembahasan_gambar || null,
          status: 'published',
        });
      }

      // Simpan ke tabel questions
      const { data: insertedQuestions, error: insertError } = await supabase
        .from('questions')
        .insert(toInsertPayload)
        .select('id, subtes, topik, soal');

      if (insertError || !insertedQuestions) {
        throw insertError || new Error('Gagal menyimpan soal ke database.');
      }

      // Tambahkan ke pool & selectedQuestions
      const newEntries: ExamQuestionEntry[] = insertedQuestions.map((q) => ({
        id: q.id,
        subtes: q.subtes as SubtesType,
        topik: q.topik,
        soal: q.soal,
      }));

      setPublishedPool((prev) => [...prev, ...newEntries]);
      const combined = [...selectedQuestions, ...newEntries];
      setSelectedQuestions(combined);

      // Sesuaikan durasi waktu
      const recommendedMinutes = Math.max(10, Math.ceil((combined.length * 55) / 60 / 5) * 5);
      setDurasiMenit(recommendedMinutes);

      setIsImportModalOpen(false);
      setImportJsonText('');
      alert(
        `Sukses! Berhasil mengimpor ${newEntries.length} butir soal dan langsung memasukkannya ke dalam susunan paket ini.`
      );
    } catch (err: unknown) {
      setImportError('Gagal impor: ' + (err instanceof Error ? err.message : String(err)));
    } finally {
      setIsImporting(false);
    }
  };

  // Submit Simpan Paket Handler
  const handleSave = async (e: React.FormEvent) => {
    e.preventDefault();
    setErrorMsg(null);

    if (!judul.trim()) {
      setErrorMsg('Judul paket ujian wajib diisi.');
      return;
    }

    if (isDuplicateTitle) {
      setErrorMsg(`Judul paket "${judul}" sudah digunakan oleh paket lain. Mohon gunakan judul yang berbeda agar tidak duplikat.`);
      return;
    }

    if (selectedQuestions.length === 0) {
      setErrorMsg('Pilih minimal 1 butir soal untuk dimasukkan ke paket ini.');
      return;
    }

    setSaving(true);

    try {
      let examId = initialExam?.id;

      // 1. Simpan tabel exams
      if (isEdit && examId) {
        const { error: examError } = await supabase
          .from('exams')
          .update({
            judul: judul.trim(),
            tipe,
            subtes: tipe === 'subtes' ? subtes : null,
            durasi_menit: durasiMenit,
            aktif,
          })
          .eq('id', examId);

        if (examError) throw examError;
      } else {
        const { data: newExam, error: examError } = await supabase
          .from('exams')
          .insert({
            judul: judul.trim(),
            tipe,
            subtes: tipe === 'subtes' ? subtes : null,
            durasi_menit: durasiMenit,
            aktif,
          })
          .select('id')
          .single();

        if (examError || !newExam) throw examError;
        examId = newExam.id;
      }

      // 2. Hapus exam_questions lama jika mode edit
      if (isEdit && examId) {
        await supabase.from('exam_questions').delete().eq('exam_id', examId);
      }

      // 3. Masukkan exam_questions dengan urutan tetap
      const eqPayload = selectedQuestions.map((q, idx) => ({
        exam_id: examId,
        question_id: q.id,
        urutan: idx + 1,
      }));

      const { error: eqError } = await supabase.from('exam_questions').insert(eqPayload);
      if (eqError) throw eqError;

      router.push('/admin/paket');
      router.refresh();
    } catch (err: unknown) {
      setErrorMsg('Gagal menyimpan paket: ' + (err instanceof Error ? err.message : String(err)));
      setSaving(false);
    }
  };

  // Submit Hapus Paket Ini (khusus mode edit)
  const handleDeleteThisExam = async () => {
    if (!initialExam?.id) return;
    if (
      !confirm(
        `Yakin ingin MENGHAPUS paket ujian "${judul}"? Seluruh susunan soal dalam paket ini akan dihapus. Butir soal di bank soal tetap aman.`
      )
    ) {
      return;
    }

    setDeletingExam(true);
    try {
      // 1. Lepaskan relasi foreign key di tabel attempts agar tidak terjadi constraint violation
      await supabase.from('attempts').update({ exam_id: null }).eq('exam_id', initialExam.id);
      // 2. Hapus relasi di exam_questions
      await supabase.from('exam_questions').delete().eq('exam_id', initialExam.id);
      // 3. Hapus paket ujian dari tabel exams
      const { error } = await supabase.from('exams').delete().eq('id', initialExam.id);
      if (error) throw error;

      alert(`Paket ujian "${judul}" berhasil dihapus.`);
      router.push('/admin/paket');
      router.refresh();
    } catch (err: unknown) {
      alert('Gagal menghapus paket: ' + (err instanceof Error ? err.message : String(err)));
      setDeletingExam(false);
    }
  };

  // Filter Pool untuk Modal Pemilih Soal
  const existingIdSet = new Set(selectedQuestions.map((q) => q.id));
  const poolFiltered = publishedPool.filter((q) => {
    if (existingIdSet.has(q.id)) return false;

    // Filter Subtes
    if (tipe === 'subtes') {
      if (q.subtes !== subtes) return false;
    } else if (pickerSubtes !== 'all' && q.subtes !== pickerSubtes) {
      return false;
    }

    // Filter Topik di Modal Picker
    if (pickerTopik !== 'all' && q.topik !== pickerTopik) {
      return false;
    }

    // Filter Sembunyikan Soal yang Sudah di Paket Subtes Lain
    if (tipe === 'subtes' && hideUsedInOtherSubtests) {
      const usedInOther = getUsedSubtestExam(q.id, subtes);
      if (usedInOther) return false;
    }

    // Filter Pencarian Teks
    if (pickerSearch.trim()) {
      const s = pickerSearch.toLowerCase();
      if (!q.soal.toLowerCase().includes(s) && !q.topik?.toLowerCase().includes(s)) {
        return false;
      }
    }
    return true;
  });

  return (
    <form onSubmit={handleSave} className="space-y-6 max-w-4xl pb-16">
      {/* Top Action Bar */}
      <div className="flex items-center justify-between gap-3">
        <Link
          href="/admin/paket"
          className="inline-flex items-center gap-1.5 text-xs font-semibold text-slate-600 hover:text-slate-900 transition"
        >
          <ArrowLeft className="w-4 h-4" />
          <span>Kembali ke Daftar Paket</span>
        </Link>

        <div className="flex items-center gap-2">
          {isEdit && initialExam?.id && (
            <button
              type="button"
              onClick={handleDeleteThisExam}
              disabled={deletingExam || saving}
              className="px-3.5 py-2.5 rounded-xl bg-rose-50 hover:bg-rose-100 text-rose-700 font-bold text-xs border border-rose-200 transition flex items-center gap-1.5 disabled:opacity-50"
              title="Hapus Paket Ujian Ini"
            >
              {deletingExam ? (
                <Loader2 className="w-3.5 h-3.5 animate-spin text-rose-600" />
              ) : (
                <Trash2 className="w-3.5 h-3.5 text-rose-600" />
              )}
              <span>Hapus Paket</span>
            </button>
          )}

          <button
            type="submit"
            disabled={saving || deletingExam || isDuplicateTitle}
            className="px-5 py-2.5 rounded-xl bg-indigo-600 hover:bg-indigo-700 text-white font-bold text-xs shadow-md shadow-indigo-100 flex items-center gap-2 transition disabled:opacity-50"
          >
            {saving ? (
              <>
                <Loader2 className="w-4 h-4 animate-spin" />
                <span>Menyimpan...</span>
              </>
            ) : (
              <>
                <Save className="w-4 h-4" />
                <span>{isEdit ? 'Simpan Perubahan Paket' : 'Terbitkan Paket'}</span>
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

      {/* 1. PEMILIH KATEGORI PAKET (KARTU VISUAL) */}
      <div className="bg-white rounded-2xl border border-slate-200 p-5 shadow-xs space-y-3">
        <div className="flex items-center justify-between">
          <div>
            <h2 className="text-xs font-bold text-slate-900 uppercase tracking-wider">
              1. Tentukan Jenis Paket Ujian
            </h2>
            <p className="text-[11px] text-slate-500">
              Pilih apakah paket ini untuk latihan spesifik 1 subtes atau Try Out simulasi penuh SKD.
            </p>
          </div>
        </div>

        <div className="grid grid-cols-2 sm:grid-cols-4 gap-2.5 pt-1">
          {/* Card TIU */}
          <button
            type="button"
            onClick={() => handleSelectCategory('subtes', 'TIU')}
            className={`p-3.5 rounded-2xl border text-left transition flex flex-col justify-between ${
              tipe === 'subtes' && subtes === 'TIU'
                ? 'border-blue-600 bg-blue-50/70 ring-2 ring-blue-500/20'
                : 'border-slate-200 hover:border-slate-300 bg-white'
            }`}
          >
            <div className="flex items-center justify-between mb-2">
              <span className="text-[10px] font-bold px-2 py-0.5 rounded-md bg-blue-100 text-blue-800">
                SUBTES
              </span>
              {tipe === 'subtes' && subtes === 'TIU' && (
                <Check className="w-4 h-4 text-blue-600" />
              )}
            </div>
            <div>
              <div className="font-bold text-slate-900 text-sm">Paket TIU</div>
              <div className="text-[11px] text-slate-500 mt-0.5">Intelegensia Umum (30-35 Soal)</div>
            </div>
          </button>

          {/* Card TWK */}
          <button
            type="button"
            onClick={() => handleSelectCategory('subtes', 'TWK')}
            className={`p-3.5 rounded-2xl border text-left transition flex flex-col justify-between ${
              tipe === 'subtes' && subtes === 'TWK'
                ? 'border-emerald-600 bg-emerald-50/70 ring-2 ring-emerald-500/20'
                : 'border-slate-200 hover:border-slate-300 bg-white'
            }`}
          >
            <div className="flex items-center justify-between mb-2">
              <span className="text-[10px] font-bold px-2 py-0.5 rounded-md bg-emerald-100 text-emerald-800">
                SUBTES
              </span>
              {tipe === 'subtes' && subtes === 'TWK' && (
                <Check className="w-4 h-4 text-emerald-600" />
              )}
            </div>
            <div>
              <div className="font-bold text-slate-900 text-sm">Paket TWK</div>
              <div className="text-[11px] text-slate-500 mt-0.5">Wawasan Kebangsaan (30 Soal)</div>
            </div>
          </button>

          {/* Card TKP */}
          <button
            type="button"
            onClick={() => handleSelectCategory('subtes', 'TKP')}
            className={`p-3.5 rounded-2xl border text-left transition flex flex-col justify-between ${
              tipe === 'subtes' && subtes === 'TKP'
                ? 'border-purple-600 bg-purple-50/70 ring-2 ring-purple-500/20'
                : 'border-slate-200 hover:border-slate-300 bg-white'
            }`}
          >
            <div className="flex items-center justify-between mb-2">
              <span className="text-[10px] font-bold px-2 py-0.5 rounded-md bg-purple-100 text-purple-800">
                SUBTES
              </span>
              {tipe === 'subtes' && subtes === 'TKP' && (
                <Check className="w-4 h-4 text-purple-600" />
              )}
            </div>
            <div>
              <div className="font-bold text-slate-900 text-sm">Paket TKP</div>
              <div className="text-[11px] text-slate-500 mt-0.5">Karakteristik Pribadi (45 Soal)</div>
            </div>
          </button>

          {/* Card Try Out Penuh */}
          <button
            type="button"
            onClick={() => handleSelectCategory('tryout')}
            className={`p-3.5 rounded-2xl border text-left transition flex flex-col justify-between ${
              tipe === 'tryout'
                ? 'border-amber-600 bg-amber-50/70 ring-2 ring-amber-500/20'
                : 'border-slate-200 hover:border-slate-300 bg-white'
            }`}
          >
            <div className="flex items-center justify-between mb-2">
              <span className="text-[10px] font-bold px-2 py-0.5 rounded-md bg-amber-100 text-amber-800">
                CAMPURAN
              </span>
              {tipe === 'tryout' && <Check className="w-4 h-4 text-amber-600" />}
            </div>
            <div>
              <div className="font-bold text-slate-900 text-sm">Try Out Penuh</div>
              <div className="text-[11px] text-slate-500 mt-0.5">110 Soal (TWK+TIU+TKP)</div>
            </div>
          </button>
        </div>

        {/* PILIHAN CAKUPAN TOPIK (Hanya untuk tipe 'subtes') */}
        {tipe === 'subtes' && (
          <div className="mt-4 pt-3.5 border-t border-slate-100 space-y-2.5">
            <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-2">
              <div>
                <span className="text-xs font-bold text-slate-800 flex items-center gap-1.5">
                  <Filter className="w-3.5 h-3.5 text-indigo-600" />
                  <span>Cakupan Topik Materi {subtes}</span>
                </span>
                <p className="text-[11px] text-slate-400 mt-0.5">
                  Pilih apakah paket berisi campuran materi atau fokus mendalami 1 topik tertentu.
                </p>
              </div>

              {/* Toggle Campur vs Khusus 1 Topik */}
              <div className="flex items-center gap-1 bg-slate-100 p-1 rounded-xl shrink-0">
                <button
                  type="button"
                  onClick={() => handleSelectTopikMode('semua')}
                  className={`px-3 py-1.5 rounded-lg text-xs font-bold transition flex items-center gap-1.5 ${
                    topikFilterMode === 'semua'
                      ? 'bg-white text-indigo-700 shadow-xs ring-1 ring-slate-200'
                      : 'text-slate-600 hover:text-slate-900'
                  }`}
                >
                  <span>🌐 Campur Semua Topik</span>
                </button>
                <button
                  type="button"
                  onClick={() => handleSelectTopikMode('khusus')}
                  className={`px-3 py-1.5 rounded-lg text-xs font-bold transition flex items-center gap-1.5 ${
                    topikFilterMode === 'khusus'
                      ? 'bg-indigo-600 text-white shadow-xs'
                      : 'text-slate-600 hover:text-slate-900'
                  }`}
                >
                  <span>🎯 Khusus 1 Topik</span>
                </button>
              </div>
            </div>

            {/* List Pilihan Topik jika 'khusus' dipilih */}
            {topikFilterMode === 'khusus' && (
              <div className="p-3 bg-indigo-50/50 rounded-xl border border-indigo-100 animate-in fade-in space-y-2">
                <div className="flex items-center justify-between text-[11px]">
                  <span className="font-semibold text-indigo-950">
                    Pilih Topik {subtes} yang Ingin Dikhususkan:
                  </span>
                  <span className="text-indigo-600 font-medium">
                    {availableTopicsForSubtest.length} topik tersedia
                  </span>
                </div>

                <div className="flex flex-wrap gap-1.5">
                  {availableTopicsForSubtest.map(({ topik, count }) => {
                    const isSelected = selectedTopik === topik;
                    return (
                      <button
                        key={topik}
                        type="button"
                        onClick={() => handleSelectSpecificTopic(topik)}
                        className={`px-3 py-1.5 rounded-xl text-xs font-semibold transition flex items-center gap-1.5 border ${
                          isSelected
                            ? 'bg-indigo-600 text-white border-indigo-600 shadow-xs'
                            : 'bg-white text-slate-700 border-slate-200 hover:border-indigo-300 hover:bg-slate-50'
                        }`}
                      >
                        <span>{topik}</span>
                        <span
                          className={`text-[10px] px-1.5 py-0.2 rounded-md font-mono ${
                            isSelected
                              ? 'bg-indigo-700/80 text-indigo-100'
                              : 'bg-slate-100 text-slate-500'
                          }`}
                        >
                          {count}
                        </span>
                      </button>
                    );
                  })}
                </div>
              </div>
            )}
          </div>
        )}
      </div>

      {/* 2. PENGATURAN JUDUL & DURASI */}
      <div className="bg-white rounded-2xl border border-slate-200 p-5 shadow-xs space-y-4">
        <h2 className="text-xs font-bold text-slate-900 uppercase tracking-wider">
          2. Pengaturan & Durasi Waktu
        </h2>

        <div>
          <label className="block text-xs font-semibold text-slate-700 mb-1">
            Judul Paket Ujian
          </label>
          <input
            type="text"
            required
            value={judul}
            onChange={(e) => setJudul(e.target.value)}
            placeholder={
              tipe === 'subtes'
                ? `Contoh: ${subtes} Paket 1 (30 Soal)`
                : 'Contoh: Paket Simulasi Resmi SKD Part 1'
            }
            className={`w-full p-2.5 rounded-xl border text-xs sm:text-sm text-slate-800 focus:outline-none transition ${
              isDuplicateTitle
                ? 'border-rose-400 focus:border-rose-600 bg-rose-50/20'
                : 'border-slate-200 focus:border-indigo-600'
            }`}
          />

          {isDuplicateTitle && (
            <div className="mt-1.5 flex items-center gap-1.5 text-xs text-rose-600 font-medium">
              <AlertCircle className="w-3.5 h-3.5 shrink-0" />
              <span>
                Judul paket &ldquo;{judul}&rdquo; sudah digunakan di paket lain. Mohon gunakan nomor atau judul lain agar tidak duplikat.
              </span>
            </div>
          )}

          {/* Preset Judul Cepat */}
          <div className="flex flex-wrap items-center gap-1.5 mt-2">
            <span className="text-[11px] text-slate-400 font-medium">Klik Preset Cepat:</span>
            {tipe === 'subtes' ? (
              [1, 2, 3, 4, 5].map((num) => {
                const topicLabel =
                  topikFilterMode === 'khusus' && selectedTopik
                    ? `${subtes} ${selectedTopik}`
                    : subtes;
                return (
                  <button
                    key={num}
                    type="button"
                    onClick={() => {
                      const presetTitle = `${topicLabel} Paket ${num} (${selectedQuestions.length || autoPickCount} Soal)`;
                      setJudul(presetTitle);
                    }}
                    className="px-2 py-0.5 rounded-lg bg-slate-100 hover:bg-indigo-50 hover:text-indigo-700 text-slate-600 text-[11px] font-semibold transition border border-slate-200/80"
                  >
                    {topicLabel} Paket {num}
                  </button>
                );
              })
            ) : (
              [1, 2, 3].map((num) => (
                <button
                  key={num}
                  type="button"
                  onClick={() => setJudul(`Try Out Penuh SKD Paket ${num}`)}
                  className="px-2 py-0.5 rounded-lg bg-slate-100 hover:bg-indigo-50 hover:text-indigo-700 text-slate-600 text-[11px] font-semibold transition border border-slate-200/80"
                >
                  Try Out SKD {num}
                </button>
              ))
            )}
          </div>
        </div>

        <div className="grid grid-cols-1 sm:grid-cols-2 gap-3 text-xs">
          <div>
            <label className="block font-semibold text-slate-700 mb-1">Durasi Pengerjaan</label>
            <div className="flex items-center gap-2">
              <input
                type="number"
                min={5}
                max={300}
                value={durasiMenit}
                onChange={(e) => setDurasiMenit(parseInt(e.target.value) || 25)}
                className="w-full p-2.5 rounded-xl border border-slate-200 font-semibold text-slate-800"
              />
              <span className="text-slate-500 font-medium shrink-0">Menit</span>
            </div>
            <p className="text-[11px] text-slate-400 mt-1">
              Rekomendasi resmi: ~55 detik per butir soal.
            </p>
          </div>

          <div>
            <label className="block font-semibold text-slate-700 mb-1">Status Ketersediaan</label>
            <select
              value={aktif ? 'true' : 'false'}
              onChange={(e) => setAktif(e.target.value === 'true')}
              className="w-full p-2.5 rounded-xl border border-slate-200 bg-white text-slate-800 font-semibold"
            >
              <option value="true">Aktif (Tampil di Dashboard Peserta)</option>
              <option value="false">Nonaktif (Disembunyikan)</option>
            </select>
          </div>
        </div>
      </div>

      {/* 3. SUSUNAN BUTIR SOAL */}
      <div className="bg-white rounded-2xl border border-slate-200 p-5 shadow-xs space-y-4">
        <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-3 border-b border-slate-100 pb-3">
          <div>
            <h2 className="text-xs font-bold text-slate-900 uppercase tracking-wider flex items-center gap-2">
              <span>3. Susunan Butir Soal</span>
              <span className="px-2 py-0.5 rounded-full bg-indigo-100 text-indigo-700 text-[10px] font-bold">
                {selectedQuestions.length} Butir Soal
              </span>
            </h2>
            <p className="text-[11px] text-slate-400">
              {tipe === 'subtes'
                ? `Khusus butir soal ${subtes}. Soal yang sudah ada di paket ${subtes} lain otomatis dihindari.`
                : 'Paket simulasi campuran 110 soal resmi SKD (TWK, TIU, TKP).'}
            </p>
          </div>

          {/* Action Buttons Toolbar */}
          <div className="flex flex-wrap items-center gap-2">
            <button
              type="button"
              onClick={() => setIsImportModalOpen(true)}
              className="inline-flex items-center gap-1.5 px-3 py-1.5 rounded-xl bg-slate-100 hover:bg-slate-200 text-slate-700 text-xs font-semibold transition"
              title="Unggah file JSON soal agar langsung masuk ke dalam paket ini"
            >
              <Upload className="w-3.5 h-3.5 text-indigo-600" />
              <span>Impor ke Paket</span>
            </button>

            <button
              type="button"
              onClick={handleOpenPicker}
              className="inline-flex items-center gap-1.5 px-3 py-1.5 rounded-xl bg-indigo-50 hover:bg-indigo-100 text-indigo-700 text-xs font-semibold transition"
            >
              <Plus className="w-3.5 h-3.5" />
              <span>Pilih Manual</span>
            </button>
          </div>
        </div>

        {/* Generator Otomatis Toolbar */}
        <div className="p-3.5 rounded-xl bg-slate-50 border border-slate-200/80 space-y-3">
          <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-2">
            <div className="flex items-center gap-2">
              <Sparkles className="w-4 h-4 text-amber-500" />
              <span className="text-xs font-bold text-slate-800">
                {tipe === 'subtes' ? `Auto-Generate Paket ${subtes}` : 'Auto-Generate Try Out Penuh'}
              </span>
            </div>

            {/* Jika Try Out Penuh: Opsi Ambil dari Paket Subtes */}
            {tipe === 'tryout' && subtestExams.length > 0 && (
              <div className="flex items-center gap-2">
                <span className="text-[11px] text-slate-500 font-medium">Salin dari Paket:</span>
                <select
                  onChange={(e) => {
                    if (e.target.value) {
                      handleImportFromSubtestExam(e.target.value);
                      e.target.value = '';
                    }
                  }}
                  defaultValue=""
                  className="text-xs p-1.5 rounded-lg border border-slate-200 bg-white text-slate-700 font-medium"
                >
                  <option value="" disabled>
                    Pilih Paket Subtes...
                  </option>
                  {subtestExams.map((se) => (
                    <option key={se.id} value={se.id}>
                      {se.judul} ({se.subtes})
                    </option>
                  ))}
                </select>
              </div>
            )}
          </div>

          <div className="flex flex-wrap items-center gap-2 text-xs">
            {tipe === 'subtes' ? (
              <>
                <div className="flex items-center gap-1 bg-white px-2 py-1 rounded-lg border border-slate-200">
                  <span className="text-slate-500 text-[11px]">Jumlah:</span>
                  <input
                    type="number"
                    min={1}
                    max={100}
                    value={autoPickCount}
                    onChange={(e) => setAutoPickCount(parseInt(e.target.value) || 30)}
                    className="w-12 text-center font-bold text-slate-800 focus:outline-none"
                  />
                  <span className="text-slate-400 text-[11px]">Soal</span>
                </div>

                <div className="flex items-center gap-1 bg-white px-2 py-1 rounded-lg border border-slate-200">
                  <span className="text-slate-500 text-[11px]">Urutan:</span>
                  <select
                    value={autoPickMode}
                    onChange={(e) => setAutoPickMode(e.target.value as any)}
                    className="bg-transparent font-medium text-slate-700 focus:outline-none text-[11px]"
                  >
                    <option value="sequential">Sesuai Nomor Soal</option>
                    <option value="random">Acak (Random)</option>
                  </select>
                </div>

                <button
                  type="button"
                  onClick={() => handleAutoPickQuestions(autoPickCount)}
                  className="px-3 py-1.5 rounded-lg bg-amber-500 hover:bg-amber-600 text-white font-bold transition flex items-center gap-1.5 shadow-xs"
                >
                  <Zap className="w-3.5 h-3.5" />
                  <span>
                    Ambil {autoPickCount} Soal {subtes}
                    {topikFilterMode === 'khusus' && selectedTopik ? ` (${selectedTopik})` : ''} Unik
                  </span>
                </button>
              </>
            ) : (
              <div className="flex flex-wrap items-center gap-2">
                <button
                  type="button"
                  onClick={handleGenerateStandardFullSKD}
                  className="px-3 py-1.5 rounded-lg bg-amber-500 hover:bg-amber-600 text-white font-bold transition flex items-center gap-1.5 shadow-xs"
                >
                  <Zap className="w-3.5 h-3.5" />
                  <span>⚡ Susun Standar SKD Resmi (30 TWK + 35 TIU + 45 TKP)</span>
                </button>
              </div>
            )}

            {selectedQuestions.length > 0 && (
              <div className="flex items-center gap-2 ml-auto">
                <button
                  type="button"
                  onClick={handleSortSelectedQuestions}
                  className="px-2.5 py-1.5 rounded-lg bg-indigo-50 hover:bg-indigo-100 text-indigo-700 text-[11px] font-bold transition flex items-center gap-1.5 border border-indigo-200"
                  title="Urutkan susunan soal agar rapi sesuai hierarki materi resmi SKD"
                >
                  <Sparkles className="w-3.5 h-3.5 text-indigo-600" />
                  <span>✨ Rapikan Urutan Topik</span>
                </button>
                <button
                  type="button"
                  onClick={() => {
                    if (confirm('Kosongkan semua butir soal yang sudah dipilih di paket ini?')) {
                      setSelectedQuestions([]);
                    }
                  }}
                  className="px-2.5 py-1.5 rounded-lg text-rose-600 hover:bg-rose-50 text-[11px] font-semibold transition"
                >
                  Kosongkan Susunan
                </button>
              </div>
            )}
          </div>

          {autoPickMsg && (
            <div className="p-2.5 rounded-lg bg-emerald-50 border border-emerald-200 text-emerald-800 text-xs flex items-center gap-2">
              <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0" />
              <span>{autoPickMsg}</span>
            </div>
          )}
        </div>

        {/* Daftar Soal Terpilih */}
        {selectedQuestions.length === 0 ? (
          <div className="p-10 text-center text-slate-400 bg-slate-50/50 rounded-2xl border border-dashed border-slate-200">
            <Layers className="w-10 h-10 mx-auto text-slate-300 mb-2" />
            <p className="text-xs font-semibold text-slate-700">Belum ada butir soal di paket ini</p>
            <p className="text-[11px] text-slate-400 mt-1 max-w-sm mx-auto">
              Gunakan tombol <strong>Auto-Generate</strong> di atas untuk mengisi paket dalam 1 klik,
              atau klik <strong>Impor ke Paket</strong> jika kamu punya file JSON.
            </p>
          </div>
        ) : (
          <div className="divide-y divide-slate-100">
            {selectedQuestions.map((q, idx) => {
              const usedInOther =
                tipe === 'subtes' ? getUsedSubtestExam(q.id, subtes) : null;

              return (
                <SelectedQuestionCard
                  key={q.id + '_' + idx}
                  q={q}
                  idx={idx}
                  total={selectedQuestions.length}
                  usedInOther={usedInOther}
                  onMoveUp={handleMoveUp}
                  onMoveDown={handleMoveDown}
                  onRemove={handleRemoveQuestion}
                />
              );
            })}
          </div>
        )}
      </div>

      {/* 4. BAR AKSI BAWAH & DANGER ZONE */}
      <div className="bg-white rounded-2xl border border-slate-200 p-5 shadow-xs flex flex-col sm:flex-row items-center justify-between gap-3">
        <div>
          <div className="font-bold text-slate-800 text-xs">
            Total {selectedQuestions.length} butir soal siap disimpan
          </div>
          <p className="text-[11px] text-slate-400 mt-0.5">
            Durasi: {durasiMenit} menit • Status: {aktif ? 'Aktif (Ditampilkan)' : 'Draft (Nonaktif)'}
          </p>
        </div>

        <div className="flex items-center gap-2 w-full sm:w-auto justify-end">
          {isEdit && initialExam?.id && (
            <button
              type="button"
              onClick={handleDeleteThisExam}
              disabled={deletingExam || saving}
              className="px-4 py-2.5 rounded-xl bg-rose-50 hover:bg-rose-100 text-rose-700 font-bold text-xs border border-rose-200 transition flex items-center gap-1.5 disabled:opacity-50"
            >
              {deletingExam ? (
                <Loader2 className="w-3.5 h-3.5 animate-spin text-rose-600" />
              ) : (
                <Trash2 className="w-3.5 h-3.5 text-rose-600" />
              )}
              <span>Hapus Paket Ini</span>
            </button>
          )}

          <button
            type="submit"
            disabled={saving || deletingExam}
            className="px-6 py-2.5 rounded-xl bg-indigo-600 hover:bg-indigo-700 text-white font-bold text-xs shadow-md shadow-indigo-100 flex items-center gap-2 transition disabled:opacity-70"
          >
            {saving ? (
              <>
                <Loader2 className="w-4 h-4 animate-spin" />
                <span>Menyimpan...</span>
              </>
            ) : (
              <>
                <Save className="w-4 h-4" />
                <span>{isEdit ? 'Simpan Perubahan Paket' : 'Terbitkan Paket'}</span>
              </>
            )}
          </button>
        </div>
      </div>

      {/* MODAL 1: PEMILIH MANUAL SOAL DARI BANK SOAL */}
      {isPickerOpen && (
        <div className="fixed inset-0 z-50 flex items-center justify-center p-3 sm:p-4 bg-slate-900/50 backdrop-blur-xs animate-in fade-in">
          <div className="bg-white rounded-3xl max-w-2xl w-full max-h-[85vh] flex flex-col shadow-2xl overflow-hidden">
            <div className="p-4 border-b border-slate-100 flex items-center justify-between">
              <div>
                <h3 className="font-bold text-slate-900 text-sm">
                  Pilih Soal Bank ({tipe === 'subtes' ? `Fokus ${subtes}` : 'Semua Subtes'})
                </h3>
                <p className="text-[11px] text-slate-400">
                  Tersedia {poolFiltered.length} butir soal yang dapat ditambahkan ke paket ini.
                </p>
              </div>
              <button
                type="button"
                onClick={() => setIsPickerOpen(false)}
                className="p-1.5 rounded-xl text-slate-400 hover:text-slate-600 hover:bg-slate-100 transition"
              >
                <X className="w-4 h-4" />
              </button>
            </div>

            {/* Filter di Modal */}
            <div className="p-3 bg-slate-50/80 border-b border-slate-100 space-y-2">
              <div className="flex gap-2">
                <div className="relative flex-1">
                  <Search className="w-3.5 h-3.5 absolute left-3 top-2.5 text-slate-400" />
                  <input
                    type="text"
                    value={pickerSearch}
                    onChange={(e) => setPickerSearch(e.target.value)}
                    placeholder="Cari teks soal / topik..."
                    className="w-full pl-9 pr-3 py-1.5 rounded-xl border border-slate-200 text-xs bg-white focus:outline-none focus:border-indigo-600"
                  />
                </div>

                {tipe === 'tryout' && (
                  <select
                    value={pickerSubtes}
                    onChange={(e) => setPickerSubtes(e.target.value)}
                    className="px-2.5 py-1.5 rounded-xl border border-slate-200 bg-white text-xs font-semibold"
                  >
                    <option value="all">Semua Subtes</option>
                    <option value="TWK">TWK</option>
                    <option value="TIU">TIU</option>
                    <option value="TKP">TKP</option>
                  </select>
                )}

                <select
                  value={pickerTopik}
                  onChange={(e) => setPickerTopik(e.target.value)}
                  className="px-2.5 py-1.5 rounded-xl border border-slate-200 bg-white text-xs font-semibold max-w-[140px] truncate"
                >
                  <option value="all">Semua Topik</option>
                  {modalAvailableTopics.map((topik) => (
                    <option key={topik} value={topik}>
                      {topik}
                    </option>
                  ))}
                </select>
              </div>

              {tipe === 'subtes' && (
                <label className="flex items-center gap-2 text-[11px] text-slate-600 cursor-pointer pt-0.5">
                  <input
                    type="checkbox"
                    checked={hideUsedInOtherSubtests}
                    onChange={(e) => setHideUsedInOtherSubtests(e.target.checked)}
                    className="rounded-sm text-indigo-600 focus:ring-indigo-500"
                  />
                  <span>
                    Sembunyikan soal yang sudah dipakai di paket {subtes} lain (Deduplikasi Aktif)
                  </span>
                </label>
              )}
            </div>

            {/* List Pilihan Soal */}
            <div className="flex-1 overflow-y-auto p-3 divide-y divide-slate-100 space-y-1">
              {poolFiltered.length === 0 ? (
                <div className="p-8 text-center text-slate-400">
                  Tidak ditemukan soal yang dapat ditambahkan dengan filter saat ini.
                </div>
              ) : (
                poolFiltered.map((q) => {
                  const isChecked = tempCheckedIds.includes(q.id);
                  const usedInOther =
                    tipe === 'subtes' ? getUsedSubtestExam(q.id, subtes) : null;

                  return (
                    <label
                      key={q.id}
                      className={`py-2.5 px-3 rounded-xl flex items-start gap-3 cursor-pointer transition select-none ${
                        isChecked
                          ? 'bg-indigo-50/70 border border-indigo-200'
                          : 'hover:bg-slate-50 border border-transparent'
                      }`}
                    >
                      <input
                        type="checkbox"
                        checked={isChecked}
                        onChange={() => {
                          setTempCheckedIds((prev) =>
                            prev.includes(q.id)
                              ? prev.filter((i) => i !== q.id)
                              : [...prev, q.id]
                          );
                        }}
                        className="mt-1 rounded-sm border-slate-300 text-indigo-600 focus:ring-indigo-500 cursor-pointer"
                      />

                      <div className="flex-1 min-w-0">
                        <div className="flex flex-wrap items-center gap-1.5 mb-1">
                          <span
                            className={`font-bold text-[10px] px-2 py-0.5 rounded-md ${
                              q.subtes === 'TIU'
                                ? 'bg-blue-100 text-blue-800'
                                : q.subtes === 'TWK'
                                ? 'bg-emerald-100 text-emerald-800'
                                : 'bg-purple-100 text-purple-800'
                            }`}
                          >
                            {q.subtes}
                          </span>
                          {q.topik && (
                            <span className="text-[11px] text-slate-500 font-medium">
                              {q.topik}
                            </span>
                          )}
                          {usedInOther && (
                            <span className="text-[10px] px-1.5 py-0.2 rounded-md bg-amber-100 text-amber-800 font-medium">
                              ⚠️ Dipakai di {usedInOther.judul}
                            </span>
                          )}
                        </div>

                        {/* RENDER FORMULA DENGAN KATEX */}
                        <div className="text-slate-800 text-xs sm:text-[13px] leading-relaxed py-0.5 overflow-x-auto">
                          <MarkdownRenderer
                            content={q.soal}
                            className="text-xs sm:text-[13px] !my-0 [&_p]:!my-1 [&_.katex-display]:!my-1.5 [&_table]:!my-1.5"
                          />
                        </div>
                      </div>
                    </label>
                  );
                })
              )}
            </div>

            {/* Modal Footer */}
            <div className="p-3 border-t border-slate-100 bg-slate-50 flex items-center justify-between">
              <span className="text-xs text-slate-500">
                <strong>{tempCheckedIds.length}</strong> butir soal dipilih
              </span>

              <div className="flex items-center gap-2">
                <button
                  type="button"
                  onClick={() => setIsPickerOpen(false)}
                  className="px-3 py-1.5 rounded-xl border border-slate-200 text-slate-600 text-xs font-semibold hover:bg-slate-100 transition"
                >
                  Batal
                </button>
                <button
                  type="button"
                  disabled={tempCheckedIds.length === 0}
                  onClick={handleAddFromPicker}
                  className="px-4 py-1.5 rounded-xl bg-indigo-600 hover:bg-indigo-700 text-white text-xs font-bold transition disabled:opacity-50"
                >
                  Tambahkan ke Paket
                </button>
              </div>
            </div>
          </div>
        </div>
      )}

      {/* MODAL 2: IMPOR LANGSUNG FILE JSON KE PAKET */}
      {isImportModalOpen && (
        <div className="fixed inset-0 z-50 flex items-center justify-center p-3 sm:p-4 bg-slate-900/50 backdrop-blur-xs animate-in fade-in">
          <div className="bg-white rounded-3xl max-w-xl w-full max-h-[90vh] flex flex-col shadow-2xl overflow-hidden">
            <div className="p-4 border-b border-slate-100 flex items-center justify-between">
              <div>
                <h3 className="font-bold text-slate-900 text-sm flex items-center gap-2">
                  <Upload className="w-4 h-4 text-indigo-600" />
                  <span>Impor File Soal Langsung ke Paket Ini</span>
                </h3>
                <p className="text-[11px] text-slate-400">
                  Unggah file JSON (misal 30 soal) untuk langsung disimpan dan dimasukkan ke paket ini.
                </p>
              </div>
              <button
                type="button"
                onClick={() => setIsImportModalOpen(false)}
                className="p-1.5 rounded-xl text-slate-400 hover:text-slate-600 hover:bg-slate-100 transition"
              >
                <X className="w-4 h-4" />
              </button>
            </div>

            <form onSubmit={handleDirectImportToExam} className="p-4 space-y-4 overflow-y-auto flex-1">
              {importError && (
                <div className="p-3 rounded-xl bg-rose-50 border border-rose-200 text-rose-700 text-xs">
                  {importError}
                </div>
              )}

              {/* Upload File Input */}
              <div>
                <label className="block text-xs font-semibold text-slate-700 mb-1">
                  Pilih File JSON
                </label>
                <input
                  type="file"
                  accept=".json,application/json"
                  onChange={(e) => {
                    const file = e.target.files?.[0];
                    if (file) {
                      const reader = new FileReader();
                      reader.onload = (ev) => {
                        setImportJsonText((ev.target?.result as string) || '');
                      };
                      reader.readAsText(file);
                    }
                  }}
                  className="w-full text-xs text-slate-500 file:mr-3 file:py-2 file:px-3 file:rounded-xl file:border-0 file:text-xs file:font-semibold file:bg-indigo-50 file:text-indigo-700 hover:file:bg-indigo-100 cursor-pointer"
                />
              </div>

              {/* Textarea Paste JSON */}
              <div>
                <label className="block text-xs font-semibold text-slate-700 mb-1">
                  Atau Tempel JSON di Sini
                </label>
                <textarea
                  rows={8}
                  value={importJsonText}
                  onChange={(e) => setImportJsonText(e.target.value)}
                  placeholder={`[\n  {\n    "subtes": "${subtes}",\n    "topik": "Silogisme",\n    "soal": "Semua A adalah B...",\n    "opsi": { "A": "...", "B": "..." },\n    "kunci": "A",\n    "pembahasan": "..."\n  }\n]`}
                  className="w-full p-2.5 rounded-xl border border-slate-200 font-mono text-[11px] text-slate-800 focus:outline-none focus:border-indigo-600"
                />
              </div>

              {/* Target Subtes Override */}
              <div className="p-3 rounded-xl bg-slate-50 border border-slate-200/80 text-xs space-y-1">
                <span className="font-semibold text-slate-700">Subtes Target:</span>
                <p className="text-[11px] text-slate-400">
                  Jika objek di JSON tidak memuat properti `subtes`, akan otomatis diset ke:{' '}
                  <strong className="text-indigo-600">{importTargetSubtes}</strong>.
                </p>
              </div>

              <div className="pt-2 flex items-center justify-end gap-2">
                <button
                  type="button"
                  onClick={() => setIsImportModalOpen(false)}
                  className="px-3 py-2 rounded-xl border border-slate-200 text-slate-600 text-xs font-semibold hover:bg-slate-100 transition"
                >
                  Batal
                </button>

                <button
                  type="submit"
                  disabled={isImporting || !importJsonText.trim()}
                  className="px-4 py-2 rounded-xl bg-indigo-600 hover:bg-indigo-700 text-white text-xs font-bold transition disabled:opacity-50 flex items-center gap-1.5"
                >
                  {isImporting ? (
                    <>
                      <Loader2 className="w-3.5 h-3.5 animate-spin" />
                      <span>Mengimpor ke Paket...</span>
                    </>
                  ) : (
                    <>
                      <Check className="w-3.5 h-3.5" />
                      <span>Proses & Masukkan ke Paket</span>
                    </>
                  )}
                </button>
              </div>
            </form>
          </div>
        </div>
      )}
    </form>
  );
};
