const fs = require('fs');
const path = require('path');

const ROOT_DIR = path.resolve(__dirname, '..');
const SOURCE_FILE = path.join(ROOT_DIR, 'neuro_soal.json');
const OUT_PUBLIC = path.join(ROOT_DIR, 'web', 'public', 'soal_neuro_web.json');
const OUT_DOC = path.join(ROOT_DIR, 'soal', 'soal_neuro_web.json');

function normalizeTopic(q) {
  const bab = q.topik || '';
  const kat = q.kategori || '';
  const subkat = q.subkategori || '';

  // Jika berupa topik berbasis tanggal seperti "TIU - 1 Agustus 2024", gunakan subkategori
  if (/TIU\s*-\s*\d+/.test(bab)) {
    if (subkat) return subkat;
  }

  // TWK
  if (bab.includes('Bahasa Negara') || subkat.includes('Bahasa Negara')) return 'Bahasa Indonesia';
  if (bab.includes('Bela Negara') || subkat.includes('Bela Negara')) return 'Bela Negara';
  if (bab.includes('Bhinneka Tunggal Ika') || subkat.includes('Bhinneka Tunggal Ika')) return 'Bhinneka Tunggal Ika';
  if (bab.includes('Integritas') || subkat.includes('Integritas')) return 'Integritas';
  if (bab.includes('NKRI') || subkat.includes('NKRI')) return 'NKRI & Integrasi';
  if (bab.includes('Nasionalisme') || subkat.includes('Nasionalisme')) return 'Nasionalisme';
  if (bab.includes('Pancasila') || subkat.includes('Pancasila')) return 'Pancasila';
  if (bab.includes('UUD') || subkat.includes('UUD')) return 'UUD 1945';

  // TIU Figural
  if (bab.includes('Figural Analogi') || (kat.includes('Figural') && subkat.includes('Analogi'))) return 'Figural Analogi';
  if (bab.includes('Ketidaksamaan') || subkat.includes('Ketidaksamaan')) return 'Figural Ketaksamaan';
  if (bab.includes('Serial') || subkat.includes('Serial')) return 'Figural Serial';

  // TIU Verbal & Numerik
  if (bab.includes('Analitis') || subkat.includes('Analitis')) return 'Analitis';
  if (bab.includes('Analogi') || subkat.includes('Analogi')) return 'Analogi';
  if (bab.includes('Berhitung') || subkat.includes('Berhitung')) return 'Berhitung';
  if (bab.includes('Deret Angka') || subkat.includes('Deret Angka')) return 'Deret Angka';
  if (bab.includes('Perbandingan Kuantitatif') || subkat.includes('Perbandingan Kuantitatif')) return 'Perbandingan Kuantitatif';
  if (bab.includes('Silogisme') || subkat.includes('Silogisme')) return 'Silogisme';
  if (bab.includes('Soal Cerita') || subkat.includes('Soal Cerita')) return 'Soal Cerita';

  // TKP
  if (bab.includes('Anti Radikalisme') || subkat.includes('Anti Radikalisme')) return 'Anti Radikalisme';
  if (bab.includes('Jejaring Kerja') || subkat.includes('Jejaring Kerja')) return 'Jejaring Kerja';
  if (bab.includes('Pelayanan Publik') || subkat.includes('Pelayanan Publik')) return 'Pelayanan Publik';
  if (bab.includes('Profesionalisme') || subkat.includes('Profesionalisme')) return 'Profesionalisme';
  if (bab.includes('Sosial Budaya') || subkat.includes('Sosial Budaya')) return 'Sosial Budaya';
  if (bab.includes('Teknologi') || subkat.includes('Teknologi')) return 'Teknologi Informasi dan Komunikasi';

  return bab.replace(/^(TWK|TIU|TKP)\s*-\s*/, '').trim();
}

function main() {
  console.log('1. Membaca berkas neuro_soal.json...');
  const rawData = JSON.parse(fs.readFileSync(SOURCE_FILE, 'utf8'));
  console.log('   Total butir dalam file:', rawData.length);

  // Penomoran lanjutan untuk sumber 'web': mulai dari 1097 s.d. 2178
  const START_NOMOR = 1097;

  const formattedList = rawData.map((item, idx) => {
    const nomor = START_NOMOR + idx;
    const subtes = String(item.subtes || '').toUpperCase().trim();
    const topik = normalizeTopic(item);

    let gambarUrl = null;
    const rawG = item.gambar || item.gambar_url;
    if (rawG) {
      gambarUrl = '/gambar/' + path.basename(rawG);
    }

    const opsi = Object.assign({}, item.opsi || {});
    for (const k of ['A', 'B', 'C', 'D', 'E']) {
      if (opsi[k] === undefined || opsi[k] === null) {
        opsi[k] = '-';
      }
    }

    let skorTkp = null;
    let kunci = item.kunci ? String(item.kunci).toUpperCase().trim() : null;

    if (subtes === 'TKP') {
      skorTkp = item.skor_tkp || null;
      if (skorTkp && typeof skorTkp === 'object') {
        const sorted = Object.entries(skorTkp).sort((a, b) => b[1] - a[1]);
        if (sorted.length > 0) {
          kunci = sorted[0][0];
        }
      }
    }

    return {
      sumber: 'web',
      nomor: nomor,
      subtes: subtes,
      topik: topik,
      level: 'sedang',
      soal: String(item.soal || '').trim(),
      gambar_url: gambarUrl,
      opsi: opsi,
      kunci: kunci,
      pembahasan: String(item.pembahasan || '').trim(),
      skor_tkp: skorTkp,
      status: 'published'
    };
  });

  // Simpan file ke web/public/ dan soal/
  fs.writeFileSync(OUT_PUBLIC, JSON.stringify(formattedList, null, 2), 'utf8');
  fs.writeFileSync(OUT_DOC, JSON.stringify(formattedList, null, 2), 'utf8');

  console.log('✓ File JSON berhasil dibuat:');
  console.log('   - ' + OUT_PUBLIC + ' (' + (fs.statSync(OUT_PUBLIC).size / 1024).toFixed(1) + ' KB)');
  console.log('   - ' + OUT_DOC + ' (' + (fs.statSync(OUT_DOC).size / 1024).toFixed(1) + ' KB)');
  console.log('   - Nomor Urut: ' + START_NOMOR + ' s.d. ' + (START_NOMOR + formattedList.length - 1));
  console.log('   - Subtes: TWK (' + formattedList.filter(q => q.subtes === 'TWK').length + '), TIU (' + formattedList.filter(q => q.subtes === 'TIU').length + '), TKP (' + formattedList.filter(q => q.subtes === 'TKP').length + ')');
  console.log('   - Soal Bergambar: ' + formattedList.filter(q => q.gambar_url).length + ' butir');
}

main();
