const fs = require('fs');

const seed = fs.readFileSync('supabase/migrations/003_seed_soal.sql', 'utf8');
const lines = seed.split('\n');

const p27 = [];
const p28 = [];

lines.forEach((l, idx) => {
  if (l.includes("'part-27'")) {
    const m = l.match(/'part-27',\s*(\d+)/);
    if (m) p27.push({ line: idx + 1, nomor: parseInt(m[1]), text: l.slice(0, 100) });
  }
  if (l.includes("'part-28'")) {
    const m = l.match(/'part-28',\s*(\d+)/);
    if (m) p28.push({ line: idx + 1, nomor: parseInt(m[1]), text: l.slice(0, 100) });
  }
});

console.log('Part 27 in 003_seed_soal:', p27.length, 'Max nomor:', Math.max(...p27.map(x => x.nomor)));
console.log('Part 28 in 003_seed_soal:', p28.length, 'Max nomor:', Math.max(...p28.map(x => x.nomor)));

const p27Fig = p27.filter(x => x.nomor >= 57 && x.nomor <= 65);
const p28Fig = p28.filter(x => x.nomor >= 57 && x.nomor <= 65);

console.log('Part 27 questions 57-65 count:', p27Fig.length);
console.log('Part 28 questions 57-65 count:', p28Fig.length);

if (p27Fig.length > 0) {
  console.log('Sample p27 fig:', p27Fig[0]);
}
if (p28Fig.length > 0) {
  console.log('Sample p28 fig:', p28Fig[0]);
}
