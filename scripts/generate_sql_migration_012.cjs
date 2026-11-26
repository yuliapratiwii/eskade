const fs = require('fs');

const figural18 = JSON.parse(fs.readFileSync('scripts/parsed_figural_18.json', 'utf8'));

let sql = `-- Migration 012: Insert 18 Soal Figural Part 27 & Part 28 (#57-65)
-- Dijalankan di Supabase SQL Editor

`;

figural18.forEach((q) => {
  const escapeSql = (str) => (str ? str.replace(/'/g, "''") : '');
  const opsiJson = JSON.stringify(q.opsi).replace(/'/g, "''");

  sql += `INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  '${q.sumber}',
  ${q.nomor},
  '${q.subtes}',
  '${escapeSql(q.topik)}',
  '${q.level}',
  '${escapeSql(q.soal)}',
  '${q.gambar_url}',
  '${opsiJson}'::jsonb,
  '${q.kunci}',
  '${escapeSql(q.pembahasan)}',
  '${q.pembahasan_gambar}',
  'published'
) ON CONFLICT DO NOTHING;\n\n`;
});

fs.writeFileSync('supabase/migrations/012_insert_part27_28_figural.sql', sql, 'utf8');
console.log('Generated supabase/migrations/012_insert_part27_28_figural.sql');
