const fs = require('fs');

['soal.json', 'web/public/soal_clean.json'].forEach(file => {
  if (!fs.existsSync(file)) return;
  const data = JSON.parse(fs.readFileSync(file, 'utf8'));
  data.forEach(q => {
    if (q.topik === 'Figural' && (q.nomor === 61 || q.nomor === 62)) {
      q.gambar = null;
      q.gambar_url = null;
    }
  });
  fs.writeFileSync(file, JSON.stringify(data, null, 2), 'utf8');
});

const sql = `-- Migration 006: Clean Figural Ketaksamaan image url (options already have the images)
UPDATE questions 
SET gambar_url = NULL 
WHERE topik = 'Figural' AND nomor IN (61, 62);
`;
fs.writeFileSync('supabase/migrations/006_clean_figural_and_ketaksamaan.sql', sql, 'utf8');
console.log('Updated json files and generated 006_clean_figural_and_ketaksamaan.sql');
