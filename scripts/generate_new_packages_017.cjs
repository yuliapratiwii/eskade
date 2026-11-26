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
  console.log('Mengambil data soal Part 29, 36, 37, 38 dari Supabase...');
  const { data: questions, error } = await supabase
    .from('questions')
    .select('id, sumber, nomor, subtes, topik')
    .in('sumber', ['part-29', 'part-36', 'part-37', 'part-38'])
    .order('nomor', { ascending: true });

  if (error) throw error;
  console.log(`Berhasil mengambil ${questions.length} butir soal.`);

  const parts = ['part-29', 'part-36', 'part-37', 'part-38'];
  const exams = [];
  const examQuestions = [];

  // 1. Tambah 4 Paket Try Out Penuh (Try Out Paket 23 s.d. 26)
  parts.forEach((sumber, idx) => {
    const paketNum = 23 + idx;
    const examId = crypto.randomUUID();
    const judul = `Try Out Paket ${paketNum} (110 Soal)`;

    exams.push({
      id: examId,
      judul,
      tipe: 'tryout',
      subtes: null,
      durasi_menit: 100,
      aktif: true
    });

    const pQuestions = questions.filter(q => q.sumber === sumber);
    const twk = sortQuestions(pQuestions.filter(q => q.subtes === 'TWK'));
    const tiu = sortQuestions(pQuestions.filter(q => q.subtes === 'TIU'));
    const tkp = sortQuestions(pQuestions.filter(q => q.subtes === 'TKP'));

    const full110 = [...twk, ...tiu, ...tkp];
    full110.forEach((q, qIdx) => {
      examQuestions.push({
        exam_id: examId,
        question_id: q.id,
        urutan: qIdx + 1
      });
    });
  });

  // 2. Tambah 4 Paket Solo TWK (TWK Paket 27 s.d. 30)
  parts.forEach((sumber, idx) => {
    const paketNum = 27 + idx;
    const examId = crypto.randomUUID();
    const judul = `TWK Paket ${paketNum} (30 Soal)`;

    exams.push({
      id: examId,
      judul,
      tipe: 'subtes',
      subtes: 'TWK',
      durasi_menit: 25,
      aktif: true
    });

    const twk = sortQuestions(questions.filter(q => q.sumber === sumber && q.subtes === 'TWK'));
    twk.forEach((q, qIdx) => {
      examQuestions.push({
        exam_id: examId,
        question_id: q.id,
        urutan: qIdx + 1
      });
    });
  });

  // 3. Tambah 4 Paket Solo TIU (TIU Paket 30 s.d. 33)
  parts.forEach((sumber, idx) => {
    const paketNum = 30 + idx;
    const examId = crypto.randomUUID();
    const judul = `TIU Paket ${paketNum} (35 Soal)`;

    exams.push({
      id: examId,
      judul,
      tipe: 'subtes',
      subtes: 'TIU',
      durasi_menit: 50,
      aktif: true
    });

    const tiu = sortQuestions(questions.filter(q => q.sumber === sumber && q.subtes === 'TIU'));
    tiu.forEach((q, qIdx) => {
      examQuestions.push({
        exam_id: examId,
        question_id: q.id,
        urutan: qIdx + 1
      });
    });
  });

  // 4. Tambah 4 Paket Solo TKP (TKP Paket 23 s.d. 26)
  parts.forEach((sumber, idx) => {
    const paketNum = 23 + idx;
    const examId = crypto.randomUUID();
    const judul = `TKP Paket ${paketNum} (45 Soal)`;

    exams.push({
      id: examId,
      judul,
      tipe: 'subtes',
      subtes: 'TKP',
      durasi_menit: 35,
      aktif: true
    });

    const tkp = sortQuestions(questions.filter(q => q.sumber === sumber && q.subtes === 'TKP'));
    tkp.forEach((q, qIdx) => {
      examQuestions.push({
        exam_id: examId,
        question_id: q.id,
        urutan: qIdx + 1
      });
    });
  });

  console.log(`Total paket baru yang dibuat: ${exams.length} paket`);
  console.log(`Total exam_questions baru: ${examQuestions.length} baris`);

  // Buat file SQL Migration 017
  const sqlLines = [
    '--',
    '-- Migration 017: Add Exam Packages for Part 29, 36, 37, 38',
    '-- Total: 16 Paket Baru (4 Try Out Penuh, 4 TWK Solo, 4 TIU Solo, 4 TKP Solo)',
    '--',
    'BEGIN;',
    '',
    '-- 1. Insert ke tabel exams'
  ];

  exams.forEach(e => {
    const subtesVal = e.subtes ? `'${e.subtes}'` : 'NULL';
    sqlLines.push(`INSERT INTO exams (id, judul, tipe, subtes, durasi_menit, aktif) VALUES ('${e.id}', '${e.judul.replace(/'/g, "''")}', '${e.tipe}', ${subtesVal}, ${e.durasi_menit}, true);`);
  });

  sqlLines.push('\n-- 2. Insert ke tabel exam_questions');
  const batchSize = 500;
  for (let i = 0; i < examQuestions.length; i += batchSize) {
    const batch = examQuestions.slice(i, i + batchSize);
    const values = batch.map(eq => `('${eq.exam_id}', '${eq.question_id}', ${eq.urutan})`).join(',\n  ');
    sqlLines.push(`INSERT INTO exam_questions (exam_id, question_id, urutan) VALUES\n  ${values};`);
  }

  sqlLines.push('\nCOMMIT;');

  const outputPath = 'supabase/migrations/017_add_packages_part29_36_37_38.sql';
  fs.writeFileSync(outputPath, sqlLines.join('\n'), 'utf8');
  console.log(`File SQL Migration berhasil dibuat di: ${outputPath}`);
}

run().catch(console.error);
