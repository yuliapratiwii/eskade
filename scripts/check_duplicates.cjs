const fs = require('fs');

const soalSemua = JSON.parse(fs.readFileSync('soal_semua.json', 'utf8'));
const soalClean = JSON.parse(fs.readFileSync('web/public/soal_clean.json', 'utf8'));

function normalize(text) {
  if (!text) return '';
  return text.toLowerCase().replace(/\s+/g, ' ').trim();
}

function makeKey(q) {
  if (q.gambar) {
    return 'GAMBAR:' + q.gambar;
  }
  const s = normalize(q.soal || q.pertanyaan);
  const opsi = q.opsi || q.pilihan_jawaban || {};
  const oA = normalize(opsi.A || opsi.a || '');
  const oB = normalize(opsi.B || opsi.b || '');
  const oC = normalize(opsi.C || opsi.c || '');
  const oD = normalize(opsi.D || opsi.d || '');
  const oE = normalize(opsi.E || opsi.e || '');
  return s + ' || A:' + oA + ' | B:' + oB + ' | C:' + oC + ' | D:' + oD + ' | E:' + oE;
}

// 1. Internal check within soal_semua
const map = new Map();
const dups = [];

soalSemua.forEach((q, idx) => {
  const k = makeKey(q);
  if (map.has(k)) {
    dups.push({ original: map.get(k), duplicate: { idx, id: q.id, bab: q.bab, soal: q.soal, kunci: q.kunci } });
  } else {
    map.set(k, { idx, id: q.id, bab: q.bab, soal: q.soal, kunci: q.kunci });
  }
});

console.log('=== REAL EXACT DUPLICATES IN soal_semua.json (taking gambar into account) ===');
console.log('Total exact duplicates:', dups.length);
dups.forEach((d, i) => {
  console.log((i + 1) + '. [' + d.original.id + '] vs [' + d.duplicate.id + '] (' + d.duplicate.bab + '): ' + d.duplicate.soal.substring(0, 60));
});

// 2. Cross check vs existing bank (sumber != 'web')
const originalBank = soalClean.filter(q => q.sumber !== 'web');
const origMap = new Map();
originalBank.forEach(q => {
  origMap.set(makeKey(q), q);
});

const crossDups = [];
soalSemua.forEach((q, idx) => {
  const k = makeKey(q);
  if (origMap.has(k)) {
    const orig = origMap.get(k);
    crossDups.push({
      soalSemuaId: q.id,
      existingNomor: orig.nomor,
      existingSumber: orig.sumber,
      soal: q.soal
    });
  }
});

console.log('\n=== CROSS DUPLICATES VS ORIGINAL BANK (sumber != web, total ' + originalBank.length + ') ===');
console.log('Total cross duplicates:', crossDups.length);
crossDups.forEach((d, i) => {
  console.log((i + 1) + '. [' + d.soalSemuaId + '] matches existing [' + d.existingSumber + ' #' + d.existingNomor + ']: ' + d.soal.substring(0, 60));
});
