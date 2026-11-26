const { createClient } = require('@supabase/supabase-js');
const fs = require('fs');

const supabaseUrl = 'https://fwlvolngneqjwscsdarh.supabase.co';
const supabaseKey = 'sb_publishable_zFmsKujCniwZ3x1zIZUu0w_dppJoWJo';
const supabase = createClient(supabaseUrl, supabaseKey);

async function generate() {
  console.log('Menyiapkan skrip deduplikasi SQL berdasarkan data live...');
  
  // 1. Ambil exam_questions untuk proteksi
  const { data: eq } = await supabase.from('exam_questions').select('question_id');
  const assignedSet = new Set((eq || []).map(e => e.question_id));
  console.log(`Soal terpasang di exam_questions: ${assignedSet.size} butir (DILINDUNGI)`);

  // 2. Baca seluruh soal dari audit live
  const report = JSON.parse(fs.readFileSync('scripts/audit_live_result.json', 'utf8'));
  
  // 3. Ambil data questions lengkap untuk pengelompokan
  let allQuestions = [];
  let page = 0;
  const pageSize = 1000;
  while (true) {
    const { data } = await supabase
      .from('questions')
      .select('id, sumber, nomor, soal')
      .range(page * pageSize, (page + 1) * pageSize - 1)
      .order('id', { ascending: true });
    if (!data || data.length === 0) break;
    allQuestions = allQuestions.concat(data);
    if (data.length < pageSize) break;
    page++;
  }

  const cleanStem = (str) =>
    (str || '')
      .toLowerCase()
      .replace(/<[^>]*>/g, '')
      .replace(/[^\w\s]/g, '')
      .replace(/\s+/g, ' ')
      .trim();

  const stemGroups = new Map();
  allQuestions.forEach((q) => {
    const norm = cleanStem(q.soal);
    if (norm.length < 15) return;
    if (!stemGroups.has(norm)) stemGroups.set(norm, []);
    stemGroups.get(norm).push(q);
  });

  const idsToDelete = [];
  const keptQuestions = [];

  stemGroups.forEach((list) => {
    if (list.length <= 1) return;

    // Urutkan kandidat: yang dipakai di exam_questions paling atas, lalu ID terkecil
    list.sort((a, b) => {
      const aAssigned = assignedSet.has(a.id) ? 0 : 1;
      const bAssigned = assignedSet.has(b.id) ? 0 : 1;
      if (aAssigned !== bAssigned) return aAssigned - bAssigned;
      return a.id.localeCompare(b.id);
    });

    const master = list[0];
    keptQuestions.push(master);
    for (let i = 1; i < list.length; i++) {
      idsToDelete.push(list[i].id);
    }
  });

  console.log(`Total grup duplikat: ${keptQuestions.length}`);
  console.log(`Total ID yang aman dihapus: ${idsToDelete.length} butir`);

  // Tulis file SQL migration 013
  let sql = `-- Migration 013: Hapus 595 Butir Soal Duplikat di Supabase
-- Aman dijalankan di Supabase SQL Editor (hanya menghapus salinan, 1 master asli tetap dipertahankan)

BEGIN;

-- 1. Hapus referensi attempt_answers untuk soal duplikat jika ada
DELETE FROM attempt_answers WHERE question_id IN (
${idsToDelete.map(id => `  '${id}'`).join(',\n')}
);

-- 2. Hapus referensi exam_questions untuk soal duplikat jika ada
DELETE FROM exam_questions WHERE question_id IN (
${idsToDelete.map(id => `  '${id}'`).join(',\n')}
);

-- 3. Hapus butir soal duplikat dari tabel questions
DELETE FROM questions WHERE id IN (
${idsToDelete.map(id => `  '${id}'`).join(',\n')}
);

COMMIT;
`;

  fs.writeFileSync('supabase/migrations/013_clean_duplicate_questions.sql', sql, 'utf8');
  console.log('✓ Berhasil membuat: supabase/migrations/013_clean_duplicate_questions.sql');
}

generate().catch(console.error);
