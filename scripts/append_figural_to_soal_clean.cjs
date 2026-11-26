const fs = require('fs');

const cleanJsonPath = 'web/public/soal_clean.json';
const data = JSON.parse(fs.readFileSync(cleanJsonPath, 'utf8'));
const figural18 = JSON.parse(fs.readFileSync('scripts/parsed_figural_18.json', 'utf8'));

console.log('Total awal di soal_clean.json:', data.length);

let addedCount = 0;
for (const q of figural18) {
  const sumberClean = q.sumber === 'part-27' ? 'Try Out - Part 27' : 'Try Out - Part 28';
  const exists = data.some(item => item.sumber === sumberClean && item.nomor === q.nomor);
  if (!exists) {
    data.push({
      sumber: sumberClean,
      nomor: q.nomor,
      subtes: q.subtes,
      topik: q.topik,
      level: q.level,
      soal: q.soal,
      gambar: q.gambar_url,
      gambar_url: q.gambar_url,
      opsi: q.opsi,
      kunci: q.kunci,
      pembahasan: q.pembahasan,
      pembahasanGambar: q.pembahasan_gambar,
      pembahasan_gambar: q.pembahasan_gambar,
      status: 'published'
    });
    addedCount++;
  }
}

console.log(`Menambahkan ${addedCount} soal figural ke soal_clean.json`);
console.log('Total akhir di soal_clean.json:', data.length);

fs.writeFileSync(cleanJsonPath, JSON.stringify(data, null, 2));
