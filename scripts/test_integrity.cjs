const fs = require('fs');
const path = require('path');

console.log('=== TEST 1: INTEGRITAS BANK SOAL & ASET GAMBAR ===\n');

const soalCleanPath = path.join('web', 'public', 'soal_clean.json');
if (!fs.existsSync(soalCleanPath)) {
  console.error('FAIL: web/public/soal_clean.json tidak ditemukan!');
  process.exit(1);
}

const data = JSON.parse(fs.readFileSync(soalCleanPath, 'utf8'));
console.log(`Total butir soal di soal_clean.json: ${data.length}`);

// 1. Hitung distribusi per sumber & subtes
const counts = {};
data.forEach((q) => {
  const key = `${q.sumber} - ${q.subtes}`;
  counts[key] = (counts[key] || 0) + 1;
});
console.log('Distribusi Soal:');
Object.entries(counts).forEach(([k, v]) => console.log(`  - ${k}: ${v} butir`));

// 2. Verifikasi Math Delimiters
let latexErrors = 0;
data.forEach((q) => {
  const countDollar = (str) => (str ? (str.match(/(?<!\\)\$/g) || []).length : 0);
  const sCount = countDollar(q.soal);
  const pCount = countDollar(q.pembahasan);
  if (sCount % 2 !== 0) {
    console.error(`  [LaTeX Error] ${q.sumber} #${q.nomor} soal tidak seimbang (${sCount} $)`);
    latexErrors++;
  }
  if (pCount % 2 !== 0) {
    console.error(`  [LaTeX Error] ${q.sumber} #${q.nomor} pembahasan tidak seimbang (${pCount} $)`);
    latexErrors++;
  }
});
if (latexErrors === 0) {
  console.log('✓ Validasi LaTeX Delimiters: SEMUA SEIMBANG (0 error)');
}

// 3. Verifikasi File Gambar Fisik
let missingImages = 0;
let checkedImages = 0;

function checkFile(relPath, context) {
  if (!relPath) return;
  checkedImages++;
  const cleanPath = relPath.startsWith('/') ? relPath.slice(1) : relPath;
  const fullPath = path.join('web', 'public', cleanPath);
  if (!fs.existsSync(fullPath)) {
    console.error(`  [Missing File] ${context}: ${relPath} (Path: ${fullPath})`);
    missingImages++;
  }
}

data.forEach((q) => {
  const ctx = `${q.sumber} #${q.nomor}`;
  if (q.gambar_url) checkFile(q.gambar_url, `${ctx} (gambar_url)`);
  if (q.pembahasan_gambar) checkFile(q.pembahasan_gambar, `${ctx} (pembahasan_gambar)`);

  if (q.opsi && typeof q.opsi === 'object') {
    Object.entries(q.opsi).forEach(([optKey, optVal]) => {
      if (typeof optVal === 'string' && optVal.includes('![')) {
        const match = optVal.match(/\(([^)]+)\)/);
        if (match && match[1]) {
          checkFile(match[1], `${ctx} (opsi ${optKey})`);
        }
      }
    });
  }
});

console.log(`✓ Validasi Gambar Fisik: ${checkedImages} file diperiksa, ${missingImages} file hilang`);

// 4. Verifikasi Figural Ketaksamaan
const ketaksamaan = data.filter((q) => q.topik === 'Figural' && (q.nomor === 61 || q.nomor === 62));
const ketaksamaanHasImage = ketaksamaan.filter((q) => q.gambar_url !== null);
console.log(
  `✓ Verifikasi Ketaksamaan: ${ketaksamaan.length} soal diperiksa. Gambar duplikat soal: ${
    ketaksamaanHasImage.length === 0 ? 'BERSIH (null)' : 'ADA DUPLIKAT'
  }`
);

if (latexErrors === 0 && missingImages === 0 && ketaksamaanHasImage.length === 0) {
  console.log('\n>>> STATUS TEST 1: LULUS 100% <<<');
} else {
  console.log('\n>>> STATUS TEST 1: ADA KENDALA <<<');
  process.exit(1);
}
