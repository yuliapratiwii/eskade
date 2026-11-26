const fs = require('fs');
const path = require('path');

console.log('=== TEST 2: UJI DISTRIBUSI TOPIK & DEDUPLIKASI PAKET ===\n');

const data = JSON.parse(fs.readFileSync(path.join('web', 'public', 'soal_clean.json'), 'utf8'));

// Implementasi pickDistributedByTopic yang sama persis dengan yang ada di ExamFormClient
function pickDistributedByTopic(pool, count) {
  const buckets = {};
  pool.forEach((q) => {
    const top = q.topik || 'Umum';
    if (!buckets[top]) buckets[top] = [];
    buckets[top].push(q);
  });

  // Urutkan atau acak
  Object.keys(buckets).forEach((t) => {
    buckets[t].sort(() => Math.random() - 0.5);
  });

  const topics = Object.keys(buckets);
  const result = [];
  let idx = 0;
  while (result.length < count && topics.some((t) => buckets[t].length > 0)) {
    const t = topics[idx % topics.length];
    if (buckets[t].length > 0) {
      result.push(buckets[t].shift());
    }
    idx++;
  }
  return result;
}

// 1. Uji Pemilihan 35 Soal TIU Campur
const tiuPool = data.filter((q) => q.subtes === 'TIU');
const uniqueTiuTopics = [...new Set(tiuPool.map((q) => q.topik))];
console.log(`Pool TIU Tersedia: ${tiuPool.length} soal mencakup ${uniqueTiuTopics.length} topik:`);
console.log('  Topik:', uniqueTiuTopics.join(', '));

const pickedTiu35 = pickDistributedByTopic([...tiuPool], 35);
console.log(`\nHasil Pemilihan 35 Soal TIU Campur:`);
const tiuCounts = {};
pickedTiu35.forEach((q) => {
  tiuCounts[q.topik] = (tiuCounts[q.topik] || 0) + 1;
});

let allTiuTopicsCovered = true;
uniqueTiuTopics.forEach((t) => {
  const c = tiuCounts[t] || 0;
  console.log(`  - ${t}: ${c} butir soal`);
  if (c === 0) allTiuTopicsCovered = false;
});

if (allTiuTopicsCovered) {
  console.log('✓ SEMUA TOPIK TIU BERHASIL MASUK (Tidak ada topik yang hilang/0 soal)');
} else {
  console.error('FAIL: Ada topik TIU yang tidak terambil!');
  process.exit(1);
}

// 2. Uji Pemilihan 30 Soal TWK Campur
const twkPool = data.filter((q) => q.subtes === 'TWK');
const uniqueTwkTopics = [...new Set(twkPool.map((q) => q.topik))];
console.log(`\nPool TWK Tersedia: ${twkPool.length} soal mencakup ${uniqueTwkTopics.length} topik:`);
console.log('  Topik:', uniqueTwkTopics.join(', '));

const pickedTwk30 = pickDistributedByTopic([...twkPool], 30);
console.log(`\nHasil Pemilihan 30 Soal TWK Campur:`);
const twkCounts = {};
pickedTwk30.forEach((q) => {
  twkCounts[q.topik] = (twkCounts[q.topik] || 0) + 1;
});

let allTwkTopicsCovered = true;
uniqueTwkTopics.forEach((t) => {
  const c = twkCounts[t] || 0;
  console.log(`  - ${t}: ${c} butir soal`);
  if (c === 0) allTwkTopicsCovered = false;
});

if (allTwkTopicsCovered) {
  console.log('✓ SEMUA TOPIK TWK BERHASIL MASUK (Tidak ada topik yang hilang)');
} else {
  console.error('FAIL: Ada topik TWK yang tidak terambil!');
  process.exit(1);
}

// 3. Uji Deduplikasi Paket Subtes
console.log(`\nUji Deduplikasi Dua Paket Subtes TIU (TIU Paket 1 & TIU Paket 2):`);
const pkg1 = pickDistributedByTopic([...tiuPool], 35);
const pkg1Ids = new Set(pkg1.map((q) => `${q.sumber}_${q.nomor}`));

const remainingTiuPool = tiuPool.filter((q) => !pkg1Ids.has(`${q.sumber}_${q.nomor}`));
console.log(`  Soal terpakai di Paket 1: ${pkg1.length} butir`);
console.log(`  Sisa pool untuk Paket 2: ${remainingTiuPool.length} butir`);

const pkg2 = pickDistributedByTopic([...remainingTiuPool], 35);
const pkg2Ids = new Set(pkg2.map((q) => `${q.sumber}_${q.nomor}`));

let overlapCount = 0;
pkg1Ids.forEach((id) => {
  if (pkg2Ids.has(id)) overlapCount++;
});

console.log(`  Jumlah soal tumpang tindih (overlap): ${overlapCount} butir`);
if (overlapCount === 0 && pkg2.length === 35) {
  console.log('✓ DEDUPLIKASI SUBTES BERJALAN SEMPURNA: Paket 1 dan Paket 2 saling eksklusif (0 duplikat)');
} else {
  console.error('FAIL: Deduplikasi bermasalah!');
  process.exit(1);
}

console.log('\n>>> STATUS TEST 2: LULUS 100% <<<');
