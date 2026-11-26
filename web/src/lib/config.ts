/**
 * Konfigurasi sistem ujian Try Out SKD CPNS
 */

// Komposisi jumlah soal default
export const TRYOUT_CONFIG = {
  TWK_COUNT: 30,
  TIU_COUNT: 35,
  TOTAL_COUNT: 65, // 30 TWK + 35 TIU (TKP akan ditambahkan di tahap berikutnya)
} as const;

/**
 * Target waktu per soal dalam detik: 100 menit / 110 soal = ~54.55 detik (dibulatkan 55 detik)
 */
export const TARGET_SECONDS_PER_QUESTION = 55;

/**
 * Bobot urutan topik resmi SKD agar susunan subtes dan topik selalu rapi dan berurutan
 * TWK: 10 - 99
 * TIU: 100 - 199
 * TKP: 200 - 299
 */
export const TOPIC_ORDER_PRIORITY: Record<string, number> = {
  // TWK (1 - 30)
  'pancasila': 10,
  'uud 1945': 20,
  'uud': 21,
  'konstitusi': 22,
  'bhinneka tunggal ika': 30,
  'nkri': 40,
  'nkri & integrasi': 41,
  'pilar negara': 42,
  'twk umum': 43,
  'bela negara': 50,
  'nasionalisme': 60,
  'integritas': 70,
  'bahasa indonesia': 80,

  // TIU (31 - 65)
  // 1. Verbal
  'analogi': 110,
  'analogi kata': 111,
  'analogi kalimat': 112,
  'silogisme': 120,
  'analitis': 130,
  'logika & penalaran': 131,
  'kecukupan data': 132,
  // 2. Numerik
  'berhitung': 140,
  'berhitung cepat': 141,
  'aritmatika': 142,
  'aljabar': 143,
  'kemampuan numerik': 144,
  'deret angka': 150,
  'deret': 151,
  'perbandingan kuantitatif': 160,
  'perbandingan': 161,
  'soal cerita': 170,
  // 3. Figural
  'figural': 180,
  'figural serial': 181,
  'figural analogi': 182,
  'figural ketaksamaan': 183,
  'figural matriks 9 kotak': 184,
  'figural 9 kotak': 185,

  // TKP (66 - 110)
  'pelayanan publik': 210,
  'jejaring kerja': 220,
  'sosial budaya': 230,
  'teknologi informasi dan komunikasi': 240,
  'tik': 241,
  'profesionalisme': 250,
  'anti radikalisme': 260,
};

export function getTopicOrderPriority(topik: string | null | undefined): number {
  if (!topik) return 999;
  const lower = topik.toLowerCase().trim();
  let best = 999;
  for (const [key, prio] of Object.entries(TOPIC_ORDER_PRIORITY)) {
    if (lower.includes(key)) {
      best = Math.min(best, prio);
    }
  }
  return best;
}

/**
 * Mengurutkan array soal secara deterministik dan rapi:
 * 1. Subtes: TWK (1-30) -> TIU (31-65) -> TKP (66-110)
 * 2. Topik: Berdasarkan hierarki kisi-kisi resmi
 * 3. Nomor: Urutan nomor soal
 */
export function sortExamQuestions<T extends { subtes: string; topik?: string | null; nomor?: number }>(
  questions: T[]
): T[] {
  const subtesOrder: Record<string, number> = { TWK: 1, TIU: 2, TKP: 3 };

  return [...questions].sort((a, b) => {
    const sDiff = (subtesOrder[a.subtes] || 99) - (subtesOrder[b.subtes] || 99);
    if (sDiff !== 0) return sDiff;

    const pA = getTopicOrderPriority(a.topik);
    const pB = getTopicOrderPriority(b.topik);
    if (pA !== pB) return pA - pB;

    return (a.nomor || 0) - (b.nomor || 0);
  });
}

// Aturan penilaian (Skor)
export const SCORING_CONFIG = {
  TWK: {
    CORRECT: 5,
    WRONG: 0,
    EMPTY: 0,
  },
  TIU: {
    CORRECT: 5,
    WRONG: 0,
    EMPTY: 0,
  },
  TKP: {
    // TKP menggunakan skala 1-5, tidak dijawab 0 (akan digunakan saat modul TKP aktif)
    EMPTY: 0,
  },
} as const;

/**
 * Passing Grade (Nilai Ambang Batas) Sementara:
 * CATATAN PENTING: Nilai sementara ini didasarkan pada standar umum (TWK 65, TIU 80).
 * Harap periksa dan sesuaikan kembali dengan ketentuan KepmenPANRB resmi terbaru untuk tahun berjalan.
 */
export const PASSING_GRADE = {
  TWK: 65, // Perlu dicek ulang dengan ketentuan resmi terbaru
  TIU: 80, // Perlu dicek ulang dengan ketentuan resmi terbaru
  TKP: 166, // Nilai ambang batas TKP umum standar (untuk referensi mendatang)
} as const;

/**
 * Menghitung durasi ujian dalam detik.
 * Rumus standar: durasi = jumlah soal * (100 / 110) menit
 * @param questionCount Jumlah soal yang dikerjakan
 * @returns Durasi pengerjaan dalam detik (integer)
 */
export function calculateExamDurationSeconds(questionCount: number): number {
  if (questionCount <= 0) return 0;
  // Durasi dalam menit = questionCount * (100 / 110)
  const durationMinutes = (questionCount * 100) / 110;
  return Math.round(durationMinutes * 60);
}
