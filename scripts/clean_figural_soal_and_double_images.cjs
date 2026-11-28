const fs = require('fs');

const allPath = 'soal/bank_soal_lengkap_skd.json';
const allQuestions = JSON.parse(fs.readFileSync(allPath, 'utf8'));

const cleanPrompts = {
  // Part 27 Figural (57-65)
  'part-27-57': 'Perhatikan gambar berikut!',
  'part-27-58': 'Perhatikan gambar berikut!',
  'part-27-59': 'Perhatikan gambar berikut!',
  'part-27-60': 'Perhatikan gambar berikut!',
  'part-27-61': 'Manakah gambar yang berbeda dari kelompok gambar berikut?',
  'part-27-62': 'Manakah gambar yang berbeda dari kelompok gambar berikut?',
  'part-27-63': 'Perhatikan gambar berikut!',
  'part-27-64': 'Perhatikan gambar berikut!',
  'part-27-65': 'Perhatikan gambar berikut!',

  // Part 28 Figural (57-65)
  'part-28-57': 'Perhatikan gambar berikut!',
  'part-28-58': 'Perhatikan gambar berikut!',
  'part-28-59': 'Perhatikan gambar berikut!',
  'part-28-60': 'Perhatikan gambar berikut!',
  'part-28-61': 'Carilah gambar yang berbeda dari kelompok gambar berikut!',
  'part-28-62': 'Carilah gambar yang berbeda dari kelompok gambar berikut!',
  'part-28-63': 'Perhatikan gambar berikut!',
  'part-28-64': 'Perhatikan gambar berikut!',
  'part-28-65': 'Perhatikan gambar berikut!',
};

let updatedCount = 0;
const sqlStatements = [
  '--',
  '-- Migration 022: Clean Figural Questions (Remove Explanations & Duplicate Images from Soal)',
  '-- Soal figural cukup menampilkan prompt singkat + gambar + opsi A-E; penjelasan tetap di pembahasan.',
  '--',
  'BEGIN;',
  ''
];

allQuestions.forEach(q => {
  const key = `${q.sumber}-${q.nomor}`;
  if (cleanPrompts[key]) {
    q.soal = cleanPrompts[key];
    // Pastikan gambar_url terisi dengan path yang benar (/gambar/...)
    if (q.gambar_url && !q.gambar_url.startsWith('/')) {
      q.gambar_url = '/' + q.gambar_url;
    }
    updatedCount++;

    const escSoal = q.soal.replace(/'/g, "''");
    const gambarVal = q.gambar_url ? `'${q.gambar_url.replace(/'/g, "''")}'` : 'NULL';
    sqlStatements.push(
      `UPDATE questions SET soal = '${escSoal}', gambar_url = ${gambarVal} WHERE id = '${q.id}';`
    );
  }
});

// Juga bersihkan double image pada tabel questions jika masih ada yang memakai ![Gambar...](...) bersamaan dengan gambar_url
sqlStatements.push('');
sqlStatements.push('-- Pastikan tidak ada gambar ganda di seluruh tabel questions jika gambar sudah ada di teks soal');
sqlStatements.push(
  "UPDATE questions SET gambar_url = NULL WHERE gambar_url IS NOT NULL AND (soal ~* '!\\[[^\\]]*\\]' OR soal ~* '<img');"
);
sqlStatements.push('\nCOMMIT;\n');

fs.writeFileSync(allPath, JSON.stringify(allQuestions, null, 2), 'utf8');
const sqlPath = 'supabase/migrations/022_clean_figural_soal_only_image.sql';
fs.writeFileSync(sqlPath, sqlStatements.join('\n'), 'utf8');

console.log(`Updated ${updatedCount} figural questions in ${allPath}`);
console.log(`Generated ${sqlPath}`);
