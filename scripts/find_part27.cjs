const fs = require('fs');
const content = fs.readFileSync('supabase/migrations/003_seed_soal.sql', 'utf8');
const lines = content.split('\n');

let count = 0;
lines.forEach((l, idx) => {
  if (l.includes("'part-27'")) {
    count++;
    if (count <= 10 || count >= 55) {
      console.log((idx+1) + ': ' + l.trim() + ' | nomor: ' + lines[idx+1]?.trim() + ' | subtes: ' + lines[idx+2]?.trim() + ' | topik: ' + lines[idx+3]?.trim());
    }
  }
});
console.log('Total part-27 in 003_seed_soal:', count);
