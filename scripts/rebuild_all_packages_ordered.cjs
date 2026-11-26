const fs = require('fs');
const { createClient } = require('@supabase/supabase-js');
const crypto = require('crypto');

const supabase = createClient(
  'https://fwlvolngneqjwscsdarh.supabase.co',
  'sb_publishable_zFmsKujCniwZ3x1zIZUu0w_dppJoWJo'
);

const TOPIC_ORDER_PRIORITY = {
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

function getTopicPriority(topik) {
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

function sortQuestions(questions) {
  const subtesOrder = { TWK: 1, TIU: 2, TKP: 3 };
  return [...questions].sort((a, b) => {
    // 1. Subtes: TWK -> TIU -> TKP
    const sDiff = (subtesOrder[a.subtes] || 99) - (subtesOrder[b.subtes] || 99);
    if (sDiff !== 0) return sDiff;

    // 2. Topik
    const pA = getTopicPriority(a.topik);
    const pB = getTopicPriority(b.topik);
    if (pA !== pB) return pA - pB;

    // 3. Nomor asli
    return (a.nomor || 0) - (b.nomor || 0);
  });
}

async function run() {
  console.log('Mengambil SEMUA 3283 butir soal dari Supabase dengan paginasi...');
  let allQuestions = [];
  let from = 0;
  while (true) {
    const { data, error } = await supabase
      .from('questions')
      .select('id, subtes, sumber, nomor, topik')
      .range(from, from + 999);
    if (error) throw error;
    allQuestions = allQuestions.concat(data);
    if (data.length < 1000) break;
    from += 1000;
  }
  console.log(`Total soal terambil: ${allQuestions.length} butir`);

  const twkAll = allQuestions.filter(q => q.subtes === 'TWK');
  const tiuAll = allQuestions.filter(q => q.subtes === 'TIU');
  const tkpAll = allQuestions.filter(q => q.subtes === 'TKP');

  console.log(`TWK: ${twkAll.length}, TIU: ${tiuAll.length}, TKP: ${tkpAll.length}`);

  // Part Asli Bimbel: 27, 28, 29, 36, 37, 38
  const specialParts = ['part-27', 'part-28', 'part-29', 'part-36', 'part-37', 'part-38'];

  // Pisahkan sisa bank soal (twt dan web)
  const remTWK = sortQuestions(twkAll.filter(q => !specialParts.includes(q.sumber)));
  const remTIU = sortQuestions(tiuAll.filter(q => !specialParts.includes(q.sumber)));
  const remTKP = sortQuestions(tkpAll.filter(q => !specialParts.includes(q.sumber)));

  console.log(`Sisa soal untuk Try Out 7-26 -> TWK: ${remTWK.length}, TIU: ${remTIU.length}, TKP: ${remTKP.length}`);

  const exams = [];
  const examQuestions = [];

  // ==========================================
  // 1. BUAT 26 PAKET TRY OUT SKD LENGKAP
  // ==========================================
  console.log('\n--- Menyusun 26 Paket Try Out SKD Lengkap (110 Soal) ---');
  const totalTryOuts = 26;

  for (let i = 1; i <= totalTryOuts; i++) {
    const examId = crypto.randomUUID();
    const judul = `Try Out Paket ${i} (110 Soal)`;
    exams.push({
      id: examId,
      judul,
      tipe: 'tryout',
      subtes: null,
      durasi_menit: 100,
      aktif: true
    });

    let twkSlice = [];
    let tiuSlice = [];
    let tkpSlice = [];

    if (i <= specialParts.length) {
      const src = specialParts[i - 1];
      twkSlice = sortQuestions(twkAll.filter(q => q.sumber === src));
      tiuSlice = sortQuestions(tiuAll.filter(q => q.sumber === src));
      tkpSlice = sortQuestions(tkpAll.filter(q => q.sumber === src));
    } else {
      const remIdx = i - (specialParts.length + 1); // 0 to 19
      twkSlice = remTWK.slice(remIdx * 30, (remIdx + 1) * 30);
      tiuSlice = remTIU.slice(remIdx * 35, (remIdx + 1) * 35);
      tkpSlice = remTKP.slice(remIdx * 45, (remIdx + 1) * 45);
    }

    // Pastikan urutan subtes: TWK (1-30), TIU (31-65), TKP (66-110)
    // dan urutan topik rapi di masing-masing subtes!
    const sortedTWK = sortQuestions(twkSlice);
    const sortedTIU = sortQuestions(tiuSlice);
    const sortedTKP = sortQuestions(tkpSlice);

    const fullPackage = [...sortedTWK, ...sortedTIU, ...sortedTKP];

    fullPackage.forEach((q, idx) => {
      examQuestions.push({
        exam_id: examId,
        question_id: q.id,
        urutan: idx + 1 // 1 s.d. 110 pasti!
      });
    });
  }

  // ==========================================
  // 2. BUAT 30 PAKET SOLO TWK (30 Soal / 25 Menit)
  // ==========================================
  console.log('\n--- Menyusun 30 Paket Solo TWK ---');
  const sortedTWKAll = sortQuestions(twkAll);
  const totalTWKPackages = 30; // 913 / 30 = 30
  for (let i = 1; i <= totalTWKPackages; i++) {
    const examId = crypto.randomUUID();
    const isLast = (i === totalTWKPackages);
    const sliceStart = (i - 1) * 30;
    const sliceEnd = isLast ? sortedTWKAll.length : i * 30;
    const qList = sortQuestions(sortedTWKAll.slice(sliceStart, sliceEnd));
    const judul = `TWK Paket ${i} (${qList.length} Soal)`;

    exams.push({
      id: examId,
      judul,
      tipe: 'subtes',
      subtes: 'TWK',
      durasi_menit: 25,
      aktif: true
    });

    qList.forEach((q, idx) => {
      examQuestions.push({
        exam_id: examId,
        question_id: q.id,
        urutan: idx + 1
      });
    });
  }

  // ==========================================
  // 3. BUAT 33 PAKET SOLO TIU (35 Soal / 50 Menit)
  // ==========================================
  console.log('\n--- Menyusun 33 Paket Solo TIU ---');
  const sortedTIUAll = sortQuestions(tiuAll);
  const totalTIUPackages = 33; // 1166 / 35 = 33
  for (let i = 1; i <= totalTIUPackages; i++) {
    const examId = crypto.randomUUID();
    const isLast = (i === totalTIUPackages);
    const sliceStart = (i - 1) * 35;
    const sliceEnd = isLast ? sortedTIUAll.length : i * 35;
    const qList = sortQuestions(sortedTIUAll.slice(sliceStart, sliceEnd));
    const judul = `TIU Paket ${i} (${qList.length} Soal)`;

    exams.push({
      id: examId,
      judul,
      tipe: 'subtes',
      subtes: 'TIU',
      durasi_menit: 50,
      aktif: true
    });

    qList.forEach((q, idx) => {
      examQuestions.push({
        exam_id: examId,
        question_id: q.id,
        urutan: idx + 1
      });
    });
  }

  // ==========================================
  // 4. BUAT 26 PAKET SOLO TKP (45 Soal / 35 Menit)
  // ==========================================
  console.log('\n--- Menyusun 26 Paket Solo TKP ---');
  const sortedTKPAll = sortQuestions(tkpAll);
  const totalTKPPackages = 26; // 1204 / 45 = 26
  for (let i = 1; i <= totalTKPPackages; i++) {
    const examId = crypto.randomUUID();
    const isLast = (i === totalTKPPackages);
    const sliceStart = (i - 1) * 45;
    const sliceEnd = isLast ? sortedTKPAll.length : i * 45;
    const qList = sortQuestions(sortedTKPAll.slice(sliceStart, sliceEnd));
    const judul = `TKP Paket ${i} (${qList.length} Soal)`;

    exams.push({
      id: examId,
      judul,
      tipe: 'subtes',
      subtes: 'TKP',
      durasi_menit: 35,
      aktif: true
    });

    qList.forEach((q, idx) => {
      examQuestions.push({
        exam_id: examId,
        question_id: q.id,
        urutan: idx + 1
      });
    });
  }

  console.log(`\nTotal paket yang dibentuk: ${exams.length} paket`);
  console.log(`Total exam_questions: ${examQuestions.length} baris`);

  // ==========================================
  // 5. TULIS FILE SQL MIGRATION 018
  // ==========================================
  const sqlLines = [
    '--',
    '-- Migration 018: Reorder All Exam Packages & Questions Strictly',
    '-- 1. Try Out 1-110: 1-30 TWK -> 31-65 TIU -> 66-110 TKP',
    '-- 2. Urutan Topik Terstruktur Rapi di Setiap Subtes',
    `-- Total: ${exams.length} Paket (${exams.filter(e => e.tipe === 'tryout').length} Try Out, ${exams.filter(e => e.subtes === 'TWK').length} TWK, ${exams.filter(e => e.subtes === 'TIU').length} TIU, ${exams.filter(e => e.subtes === 'TKP').length} TKP)`,
    '--',
    'BEGIN;',
    '',
    '-- Lepaskan referensi exam_id dari attempts agar riwayat ujian tidak terbentur foreign key',
    'UPDATE attempts SET exam_id = NULL WHERE exam_id IS NOT NULL;',
    '',
    '-- Bersihkan exam_questions dan exams lama',
    'DELETE FROM exam_questions;',
    'DELETE FROM exams;',
    '',
    '-- Insert tabel exams'
  ];

  exams.forEach(e => {
    const subtesVal = e.subtes ? `'${e.subtes}'` : 'NULL';
    sqlLines.push(`INSERT INTO exams (id, judul, tipe, subtes, durasi_menit, aktif) VALUES ('${e.id}', '${e.judul.replace(/'/g, "''")}', '${e.tipe}', ${subtesVal}, ${e.durasi_menit}, true);`);
  });

  sqlLines.push('\n-- Insert tabel exam_questions');
  const batchSize = 500;
  for (let i = 0; i < examQuestions.length; i += batchSize) {
    const batch = examQuestions.slice(i, i + batchSize);
    const values = batch.map(eq => `('${eq.exam_id}', '${eq.question_id}', ${eq.urutan})`).join(',\n  ');
    sqlLines.push(`INSERT INTO exam_questions (exam_id, question_id, urutan) VALUES\n  ${values};`);
  }

  sqlLines.push('\nCOMMIT;');

  const outputPath = 'supabase/migrations/018_reorder_all_packages_and_questions.sql';
  fs.writeFileSync(outputPath, sqlLines.join('\n'), 'utf8');
  console.log(`Selesai! SQL Migration disimpan di: ${outputPath}`);
}

run().catch(console.error);
