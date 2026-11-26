const fs = require('fs');

const data = JSON.parse(fs.readFileSync('web/public/soal_clean.json', 'utf8'));
let sqlStatements = [];

data.forEach((q) => {
  if (q.subtes === 'TIU' && q.topik === 'Figural') {
    const isPart28 = q.sumber.includes('28');
    const folder = isPart28 ? '/gambar_part_28' : '/gambar_figural';
    const n = q.nomor;

    q.opsi = {
      A: `![Opsi A](${folder}/soal_${n}_A.png)`,
      B: `![Opsi B](${folder}/soal_${n}_B.png)`,
      C: `![Opsi C](${folder}/soal_${n}_C.png)`,
      D: `![Opsi D](${folder}/soal_${n}_D.png)`,
      E: `![Opsi E](${folder}/soal_${n}_E.png)`,
    };

    const opsiJson = JSON.stringify(q.opsi).replace(/'/g, "''");
    sqlStatements.push(
      `UPDATE questions SET opsi = '${opsiJson}'::jsonb WHERE sumber = '${q.sumber}' AND nomor = ${q.nomor};`
    );
  }
});

fs.writeFileSync('web/public/soal_clean.json', JSON.stringify(data, null, 2), 'utf8');

const sqlContent =
  '-- Migration 004: Update Figural Options to cropped image references\n' +
  sqlStatements.join('\n') +
  '\n';
fs.writeFileSync('supabase/migrations/004_update_figural_options.sql', sqlContent, 'utf8');

console.log('Updated soal_clean.json and generated 004_update_figural_options.sql with', sqlStatements.length, 'statements.');
