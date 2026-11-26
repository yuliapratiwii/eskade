const fs = require('fs');
const path = require('path');

const soalCleanPath = path.join('web', 'public', 'soal_clean.json');
const rawData = JSON.parse(fs.readFileSync(soalCleanPath, 'utf8'));

console.log('Total sebelum filter:', rawData.length);

// 1. Filter out Figural
const filtered = rawData.filter((q) => q.topik !== 'Figural');
console.log('Total setelah hapus Figural:', filtered.length);

// 2. Update sumber to 'Try Out - Part 27' dan 'Try Out - Part 28'
filtered.forEach((q) => {
  if (q.sumber === 'part-27') {
    q.sumber = 'Try Out - Part 27';
  } else if (q.sumber === 'part-28') {
    q.sumber = 'Try Out - Part 28';
  }
});

fs.writeFileSync(soalCleanPath, JSON.stringify(filtered, null, 2), 'utf8');
console.log('Tersimpan di web/public/soal_clean.json');

// 3. Buat migration 007
const sql = `-- Migration 007: Hapus Soal Figural Sementara & Tandai Sumber Try Out
-- Hapus referensi soal Figural di paket dan jawaban attempt
DELETE FROM exam_questions WHERE question_id IN (SELECT id FROM questions WHERE topik = 'Figural');
DELETE FROM attempt_answers WHERE question_id IN (SELECT id FROM questions WHERE topik = 'Figural');
DELETE FROM questions WHERE topik = 'Figural';

-- Perbarui label sumber menjadi 'Try Out - Part 27' dan 'Try Out - Part 28'
UPDATE questions SET sumber = 'Try Out - Part 27' WHERE sumber = 'part-27';
UPDATE questions SET sumber = 'Try Out - Part 28' WHERE sumber = 'part-28';
`;

fs.writeFileSync('supabase/migrations/007_remove_figural_and_update_sources.sql', sql, 'utf8');
console.log('Tersimpan di supabase/migrations/007_remove_figural_and_update_sources.sql');
