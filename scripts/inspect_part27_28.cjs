const fs = require('fs');

const clean = JSON.parse(fs.readFileSync('web/public/soal_clean.json', 'utf8'));

const part27 = clean.filter(q => q.sumber && q.sumber.includes('27'));
const part28 = clean.filter(q => q.sumber && q.sumber.includes('28'));

console.log('=== PART 27 (Total ' + part27.length + ' soal) ===');
part27.forEach(q => {
  const s = q.soal || '';
  const p = q.pembahasan || '';
  const o = JSON.stringify(q.opsi || {});
  const isImageRelated = /gambar|diagram|grafik|tabel|pola/i.test(s + ' ' + p + ' ' + o);
  if (isImageRelated) {
    console.log('[No. ' + q.nomor + '] (' + q.subtes + ' - ' + q.topik + ')');
    console.log('  Soal: ' + s.replace(/\n/g, ' ').slice(0, 90));
    console.log('  Gambar: ' + (q.gambar_url || q.gambar));
    console.log('  Pembahasan Gambar: ' + (q.pembahasan_gambar || q.pembahasanGambar));
    console.log('---');
  }
});

console.log('\n=== PART 28 (Total ' + part28.length + ' soal) ===');
part28.forEach(q => {
  const s = q.soal || '';
  const p = q.pembahasan || '';
  const o = JSON.stringify(q.opsi || {});
  const isImageRelated = /gambar|diagram|grafik|tabel|pola/i.test(s + ' ' + p + ' ' + o);
  if (isImageRelated) {
    console.log('[No. ' + q.nomor + '] (' + q.subtes + ' - ' + q.topik + ')');
    console.log('  Soal: ' + s.replace(/\n/g, ' ').slice(0, 90));
    console.log('  Gambar: ' + (q.gambar_url || q.gambar));
    console.log('  Pembahasan Gambar: ' + (q.pembahasan_gambar || q.pembahasanGambar));
    console.log('---');
  }
});

console.log('\n=== ALL PART 27 NUMBERS ===');
console.log(part27.map(q => q.nomor).join(', '));

console.log('\n=== ALL PART 28 NUMBERS ===');
console.log(part28.map(q => q.nomor).join(', '));
