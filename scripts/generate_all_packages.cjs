const fs = require('fs');
const { createClient } = require('@supabase/supabase-js');
const crypto = require('crypto');

const supabase = createClient(
  'https://fwlvolngneqjwscsdarh.supabase.co',
  'sb_publishable_zFmsKujCniwZ3x1zIZUu0w_dppJoWJo'
);

const TOPIC_ORDER_PRIORITY = {
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

function sortQuestions(questions) {
  const subtesOrder = { TWK: 1, TIU: 2, TKP: 3 };
  return [...questions].sort((a, b) => {
    const sDiff = (subtesOrder[a.subtes] || 99) - (subtesOrder[b.subtes] || 99);
    if (sDiff !== 0) return sDiff;

    const topA = (a.topik || '').toLowerCase();
    const topB = (b.topik || '').toLowerCase();
    let prioA = 999;
    let prioB = 999;

    for (const [key, p] of Object.entries(TOPIC_ORDER_PRIORITY)) {
      if (topA.includes(key)) prioA = Math.min(prioA, p);
      if (topB.includes(key)) prioB = Math.min(prioB, p);
    }

    if (prioA !== prioB) return prioA - prioB;
    return topA.localeCompare(topB);
  });
}

async function run() {
  console.log('Mengambil semua soal dari Supabase...');
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

  // Pisahkan per subtes
  const twkAll = allQuestions.filter(q => q.subtes === 'TWK');
  const tiuAll = allQuestions.filter(q => q.subtes === 'TIU');
  const tkpAll = allQuestions.filter(q => q.subtes === 'TKP');

  console.log(`TWK: ${twkAll.length}, TIU: ${tiuAll.length}, TKP: ${tkpAll.length}`);

  // Part 27 & Part 28
  const p27TWK = twkAll.filter(q => q.sumber === 'part-27');
  const p27TIU = tiuAll.filter(q => q.sumber === 'part-27');
  const p27TKP = tkpAll.filter(q => q.sumber === 'part-27');

  const p28TWK = twkAll.filter(q => q.sumber === 'part-28');
  const p28TIU = tiuAll.filter(q => q.sumber === 'part-28');
  const p28TKP = tkpAll.filter(q => q.sumber === 'part-28');

  // Sisa untuk Tryout 3 - 22
  const remTWK = twkAll.filter(q => q.sumber !== 'part-27' && q.sumber !== 'part-28');
  const remTIU = tiuAll.filter(q => q.sumber !== 'part-27' && q.sumber !== 'part-28');
  const remTKP = tkpAll.filter(q => q.sumber !== 'part-27' && q.sumber !== 'part-28');

  console.log(`Sisa untuk Tryout lain -> TWK: ${remTWK.length}, TIU: ${remTIU.length}, TKP: ${remTKP.length}`);

  const exams = [];
  const examQuestions = [];

  // 1. BUAT 22 PAKET TRY OUT SKD PENUH (110 Soal, 100 Menit)
  console.log('\n--- Merancang 22 Paket Try Out SKD Lengkap ---');
  for (let i = 1; i <= 22; i++) {
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

    let selectedTWK = [];
    let selectedTIU = [];
    let selectedTKP = [];

    if (i === 1) {
      selectedTWK = p27TWK;
      selectedTIU = p27TIU;
      selectedTKP = p27TKP;
    } else if (i === 2) {
      selectedTWK = p28TWK;
      selectedTIU = p28TIU;
      selectedTKP = p28TKP;
    } else {
      const idx = i - 3;
      selectedTWK = remTWK.slice(idx * 30, (idx + 1) * 30);
      selectedTIU = remTIU.slice(idx * 35, (idx + 1) * 35);
      selectedTKP = remTKP.slice(idx * 45, (idx + 1) * 45);
    }

    // Urutkan topik dalam masing-masing subtes
    const sortedTWK = sortQuestions(selectedTWK);
    const sortedTIU = sortQuestions(selectedTIU);
    const sortedTKP = sortQuestions(selectedTKP);

    const fullPackage = [...sortedTWK, ...sortedTIU, ...sortedTKP];
    if (fullPackage.length !== 110) {
      console.warn(`Peringatan: Try Out Paket ${i} memiliki ${fullPackage.length} soal!`);
    }

    fullPackage.forEach((q, idx) => {
      examQuestions.push({
        exam_id: examId,
        question_id: q.id,
        urutan: idx + 1
      });
    });
  }

  // 2. BUAT PAKET SOLO SUBTES TWK (30 Soal / 25 Menit)
  console.log('\n--- Merancang Paket Solo TWK ---');
  // 793 soal -> 26 paket
  const totalTWKPackages = 26;
  for (let i = 1; i <= totalTWKPackages; i++) {
    const examId = crypto.randomUUID();
    const isLast = (i === totalTWKPackages);
    const sliceStart = (i - 1) * 30;
    const sliceEnd = isLast ? twkAll.length : i * 30;
    const qList = sortQuestions(twkAll.slice(sliceStart, sliceEnd));
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

  // 3. BUAT PAKET SOLO SUBTES TIU (35 Soal / 50 Menit)
  console.log('\n--- Merancang Paket Solo TIU ---');
  // 1026 soal -> 29 paket (28 x 35 = 980, ke-29 = 46 soal)
  const totalTIUPackages = 29;
  for (let i = 1; i <= totalTIUPackages; i++) {
    const examId = crypto.randomUUID();
    const isLast = (i === totalTIUPackages);
    const sliceStart = (i - 1) * 35;
    const sliceEnd = isLast ? tiuAll.length : i * 35;
    const qList = sortQuestions(tiuAll.slice(sliceStart, sliceEnd));
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

  // 4. BUAT PAKET SOLO SUBTES TKP (45 Soal / 35 Menit)
  console.log('\n--- Merancang Paket Solo TKP ---');
  // 1024 soal -> 22 paket (21 x 45 = 945, ke-22 = 79 soal)
  const totalTKPPackages = 22;
  for (let i = 1; i <= totalTKPPackages; i++) {
    const examId = crypto.randomUUID();
    const isLast = (i === totalTKPPackages);
    const sliceStart = (i - 1) * 45;
    const sliceEnd = isLast ? tkpAll.length : i * 45;
    const qList = sortQuestions(tkpAll.slice(sliceStart, sliceEnd));
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

  console.log(`\nTotal paket yang dibuat: ${exams.length} paket`);
  console.log(`Total exam_questions: ${examQuestions.length} baris`);

  // Generate SQL file
  console.log('\nMenulis file SQL migration 015...');
  const sqlLines = [
    '--',
    '-- Migration 015: Create All Exam Packages & Link Exam Questions',
    `-- Total: ${exams.length} Paket (${exams.filter(e => e.tipe === 'tryout').length} Try Out Lengkap, ${exams.filter(e => e.subtes === 'TWK').length} TWK Solo, ${exams.filter(e => e.subtes === 'TIU').length} TIU Solo, ${exams.filter(e => e.subtes === 'TKP').length} TKP Solo)`,
    '--',
    'BEGIN;',
    '',
    '-- 1. Bersihkan paket exam_questions dan exams lama bila ada',
    'DELETE FROM exam_questions;',
    'DELETE FROM exams;',
    ''
  ];

  // Insert exams
  sqlLines.push('-- 2. Insert tabel exams');
  exams.forEach(e => {
    const subtesVal = e.subtes ? `'${e.subtes}'` : 'NULL';
    sqlLines.push(`INSERT INTO exams (id, judul, tipe, subtes, durasi_menit, aktif) VALUES ('${e.id}', '${e.judul.replace(/'/g, "''")}', '${e.tipe}', ${subtesVal}, ${e.durasi_menit}, true);`);
  });

  sqlLines.push('\n-- 3. Insert tabel exam_questions');
  // Batch inserts per 500 rows
  const batchSize = 500;
  for (let i = 0; i < examQuestions.length; i += batchSize) {
    const batch = examQuestions.slice(i, i + batchSize);
    const values = batch.map(eq => `('${eq.exam_id}', '${eq.question_id}', ${eq.urutan})`).join(',\n  ');
    sqlLines.push(`INSERT INTO exam_questions (exam_id, question_id, urutan) VALUES\n  ${values};`);
  }

  sqlLines.push('\nCOMMIT;');

  const outputPath = 'supabase/migrations/015_create_all_packages.sql';
  fs.writeFileSync(outputPath, sqlLines.join('\n'), 'utf8');
  console.log(`Selesai! SQL disimpan di: ${outputPath}`);
}

run().catch(console.error);
