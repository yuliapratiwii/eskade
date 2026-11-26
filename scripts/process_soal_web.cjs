const fs = require('fs');
const path = require('path');

const ROOT_DIR = path.resolve(__dirname, '..');
const SOURCE_JSON = path.join(ROOT_DIR, 'soal_semua.json');
const CLEAN_JSON_PATH = path.join(ROOT_DIR, 'web', 'public', 'soal_clean.json');

const OUT_WEB_JSON_PUBLIC = path.join(ROOT_DIR, 'web', 'public', 'soal_web.json');
const OUT_WEB_JSON_DOC = path.join(ROOT_DIR, 'soal', 'soal_web.json');
const OUT_WEB_MD = path.join(ROOT_DIR, 'soal', 'kumpulan_soal_dan_pembahasan_web.md');
const OUT_MIGRATION_SQL = path.join(ROOT_DIR, 'supabase', 'migrations', '011_seed_web_soal.sql');

const TOPIC_MAP = {
  'Analitis': 'Analitis',
  'Analogi': 'Analogi',
  'Anti Radikalisme': 'Anti Radikalisme',
  'Bahasa Negara': 'Bahasa Indonesia',
  'Bela Negara': 'Bela Negara',
  'Berhitung': 'Berhitung',
  'Bhinneka Tunggal Ika': 'Bhinneka Tunggal Ika',
  'Deret Angka': 'Deret Angka',
  'Integritas': 'Integritas',
  'Jejaring Kerja': 'Jejaring Kerja',
  'Kecukupan Data': 'Kecukupan Data',
  'NKRI': 'NKRI & Integrasi',
  'Nasionalisme': 'Nasionalisme',
  'Pancasila': 'Pancasila',
  'Pelayanan Publik': 'Pelayanan Publik',
  'Penguatan dan Pelemahan Argumen': 'Logika & Penalaran',
  'Perbandingan Kuantitatif': 'Perbandingan Kuantitatif',
  'Pola Bilangan dalam Tabel': 'Soal Tabel',
  'Profesionalisme': 'Profesionalisme',
  'Silogisme': 'Silogisme',
  'Soal Cerita': 'Soal Cerita',
  'Soal Cerita Tabel': 'Soal Cerita',
  'Sosial Budaya': 'Sosial Budaya',
  'Teknologi Informasi dan Komunikasi': 'Teknologi Informasi dan Komunikasi',
  'UUD 1945': 'UUD 1945',
  'Ketidaksamaan': 'Figural Ketaksamaan',
  'Serial': 'Figural Serial'
};

const EXCLUDE_IDS = new Set(['TIU-deret-007', 'TIU-deret-020']);

function main() {
  console.log('1. Membaca soal_semua.json...');
  const rawData = JSON.parse(fs.readFileSync(SOURCE_JSON, 'utf8'));
  console.log('   Total butir dalam file:', rawData.length);

  const processedList = [];
  let skippedDuplicates = 0;
  let figuralWithImageCount = 0;
  let figuralTextCount = 0;

  for (const item of rawData) {
    const qId = String(item.id || '').trim();

    // Deduplikasi
    if (EXCLUDE_IDS.has(qId)) {
      skippedDuplicates++;
      continue;
    }

    const bab = item.bab || '';
    const subtes = String(item.subtes || '').toUpperCase().trim();

    let topik = TOPIC_MAP[bab] || bab;
    if (qId.toLowerCase().includes('figanalogi')) {
      topik = 'Figural Analogi';
    }

    const soal = String(item.soal || '').trim();
    const opsi = Object.assign({}, item.opsi || {});
    let kunci = item.kunci || null;
    const pembahasan = String(item.pembahasan || '').trim();
    const rawGambar = item.gambar;

    let gambarUrl = null;
    if (rawGambar) {
      const gFile = path.basename(rawGambar);
      gambarUrl = '/gambar/' + gFile;
      figuralWithImageCount++;
      for (const k of ['A', 'B', 'C', 'D', 'E']) {
        if (opsi[k] === '[gambar]') {
          opsi[k] = 'Pilihan ' + k;
        }
      }
    } else if (qId.toLowerCase().includes('fig') || ['Ketidaksamaan', 'Serial'].includes(bab)) {
      figuralTextCount++;
    }

    // Fix TIU-banding-001 s.d. 008 missing option E
    if (Object.keys(opsi).length === 4 && !opsi['E']) {
      opsi['E'] = 'Informasi pada soal tidak cukup untuk menentukan hubungan P dan Q';
    }

    // Ensure 5 options A-E
    for (const k of ['A', 'B', 'C', 'D', 'E']) {
      if (!opsi[k]) opsi[k] = '-';
    }

    // Format skor_tkp for TKP
    let skorTkp = null;
    if (subtes === 'TKP') {
      const rawSkor = item.skor_tkp;
      if (Array.isArray(rawSkor) && rawSkor.length === 5) {
        skorTkp = {
          A: rawSkor[0],
          B: rawSkor[1],
          C: rawSkor[2],
          D: rawSkor[3],
          E: rawSkor[4]
        };
      } else if (rawSkor && typeof rawSkor === 'object') {
        skorTkp = rawSkor;
      } else {
        const bestKey = ['A', 'B', 'C', 'D', 'E'].includes(kunci) ? kunci : 'A';
        skorTkp = {};
        const pool = [4, 3, 2, 1];
        let pIdx = 0;
        for (const k of ['A', 'B', 'C', 'D', 'E']) {
          if (k === bestKey) skorTkp[k] = 5;
          else skorTkp[k] = pool[pIdx++];
        }
      }

      // Best option in TKP gets 5
      let maxScore = -1;
      let bestKey = 'A';
      for (const [k, v] of Object.entries(skorTkp)) {
        if (v > maxScore) {
          maxScore = v;
          bestKey = k;
        }
      }
      kunci = bestKey;
    }

    processedList.push({
      original_id: qId,
      subtes,
      topik,
      level: 'sedang',
      soal,
      gambar_url: gambarUrl,
      opsi,
      kunci,
      skor_tkp: skorTkp,
      pembahasan
    });
  }

  console.log('   Duplikat internal dilewati: ' + skippedDuplicates + ' butir (TIU-deret-007, TIU-deret-020)');
  console.log('   Soal figural bergambar: ' + figuralWithImageCount + ' butir');
  console.log('   Soal figural teks: ' + figuralTextCount + ' butir');
  console.log('   Total soal bersih siap pakai: ' + processedList.length + ' butir');

  // 2. Buat file JSON mandiri
  console.log('\n2. Membuat file soal_web.json untuk impor mandiri...');
  const webJsonData = processedList.map((q, idx) => ({
    sumber: 'web',
    nomor: idx + 1,
    subtes: q.subtes,
    topik: q.topik,
    level: 'sedang',
    soal: q.soal,
    gambar_url: q.gambar_url,
    opsi: q.opsi,
    kunci: q.kunci,
    pembahasan: q.pembahasan,
    skor_tkp: q.skor_tkp,
    status: 'published'
  }));

  fs.writeFileSync(OUT_WEB_JSON_PUBLIC, JSON.stringify(webJsonData, null, 2), 'utf8');
  fs.writeFileSync(OUT_WEB_JSON_DOC, JSON.stringify(webJsonData, null, 2), 'utf8');
  console.log('   ✓ Disimpan di ' + OUT_WEB_JSON_PUBLIC + ' & ' + OUT_WEB_JSON_DOC + ' (' + (fs.statSync(OUT_WEB_JSON_PUBLIC).size / 1024).toFixed(1) + ' KB)');

  // 3. Buat dokumen Markdown
  console.log('\n3. Membuat dokumen Markdown kumpulan_soal_dan_pembahasan_web.md...');
  const twkCount = processedList.filter(q => q.subtes === 'TWK').length;
  const tiuCount = processedList.filter(q => q.subtes === 'TIU').length;
  const tkpCount = processedList.filter(q => q.subtes === 'TKP').length;

  const mdLines = [
    '# Kumpulan Soal dan Pembahasan SKD CPNS (Sumber: Web)',
    '**Sumber:** Web  ',
    '**Total Soal:** ' + processedList.length + ' Butir  ',
    '*(TWK: ' + twkCount + ', TIU: ' + tiuCount + ', TKP: ' + tkpCount + ')*  ',
    '*(Figural Bergambar: ' + figuralWithImageCount + ' butir, Figural Teks: ' + figuralTextCount + ' butir)*\n',
    '---\n'
  ];

  let currentSubtes = null;
  processedList.forEach((q, idx) => {
    if (q.subtes !== currentSubtes) {
      currentSubtes = q.subtes;
      const subCount = processedList.filter(x => x.subtes === currentSubtes).length;
      mdLines.push('\n## Bagian: ' + currentSubtes + ' (' + subCount + ' Soal)\n\n---\n');
    }

    const nomor = idx + 1;
    mdLines.push('### Soal Nomor ' + nomor + ' (' + q.subtes + ' - ' + q.topik + ')\n');
    if (q.gambar_url) {
      mdLines.push('![Gambar Soal Nomor ' + nomor + '](' + q.gambar_url + ')\n');
    }
    mdLines.push(q.soal + '\n');

    for (const opt of ['A', 'B', 'C', 'D', 'E']) {
      const optText = q.opsi[opt] || '-';
      if (q.subtes === 'TKP' && q.skor_tkp) {
        mdLines.push('* **' + opt + '.** ' + optText + ' *(Skor: ' + q.skor_tkp[opt] + ')*');
      } else {
        mdLines.push('* **' + opt + '.** ' + optText);
      }
    }

    mdLines.push('\n#### Pembahasan Nomor ' + nomor + '\n');
    if (q.subtes === 'TKP' && q.skor_tkp) {
      const scoresStr = Object.entries(q.skor_tkp).map(([k, v]) => k + '=' + v).join(', ');
      mdLines.push('* **Opsi Terbaik (Skor 5):** **' + q.kunci + '**');
      mdLines.push('* **Bobot Skor:** ' + scoresStr);
    } else {
      mdLines.push('* **Jawaban:** **' + q.kunci + '**');
    }
    mdLines.push('* **Penjelasan:**\n  ' + q.pembahasan + '\n');
    mdLines.push('---\n');
  });

  fs.writeFileSync(OUT_WEB_MD, mdLines.join('\n'), 'utf8');
  console.log('   ✓ Disimpan di ' + OUT_WEB_MD + ' (' + (fs.statSync(OUT_WEB_MD).size / 1024).toFixed(1) + ' KB)');

  // 4. Gabungkan ke soal_clean.json
  console.log('\n4. Menggabungkan ke web/public/soal_clean.json...');
  const cleanExisting = JSON.parse(fs.readFileSync(CLEAN_JSON_PATH, 'utf8'));
  const filteredClean = cleanExisting.filter(q => q.sumber !== 'web');

  const cleanNewList = processedList.map((q, idx) => ({
    sumber: 'web',
    nomor: idx + 1,
    subtes: q.subtes,
    topik: q.topik,
    level: 'sedang',
    soal: q.soal,
    gambar: q.gambar_url,
    gambar_url: q.gambar_url,
    opsi: q.opsi,
    kunci: q.kunci,
    pembahasan: q.pembahasan,
    pembahasanGambar: null,
    pembahasan_gambar: null,
    skor_tkp: q.skor_tkp,
    status: 'published'
  }));

  const combinedClean = filteredClean.concat(cleanNewList);
  fs.writeFileSync(CLEAN_JSON_PATH, JSON.stringify(combinedClean, null, 2), 'utf8');
  console.log('   ✓ soal_clean.json kini memiliki total ' + combinedClean.length + ' butir soal (sebelumnya ' + cleanExisting.length + ').');

  // 5. Buat migrasi SQL: 011_seed_web_soal.sql
  console.log('\n5. Membuat migrasi SQL: 011_seed_web_soal.sql...');
  function escapeSqlStr(s) {
    if (s === null || s === undefined) return 'NULL';
    return "'" + String(s).replace(/'/g, "''") + "'";
  }

  function escapeSqlJson(obj) {
    if (obj === null || obj === undefined) return 'NULL';
    return "'" + JSON.stringify(obj).replace(/'/g, "''") + "'::jsonb";
  }

  const sqlParts = [
    '-- Migration 011: Seed ' + cleanNewList.length + ' Soal SKD CPNS dari Sumber Web',
    '-- TWK: ' + twkCount + ' soal, TIU: ' + tiuCount + ' soal, TKP: ' + tkpCount + ' soal',
    '-- Termasuk ' + figuralWithImageCount + ' soal figural bergambar + ' + figuralTextCount + ' soal figural teks.',
    '',
    '-- Hapus soal web lama jika ada (idempotent)',
    "DELETE FROM exam_questions WHERE question_id IN (SELECT id FROM questions WHERE sumber = 'web');",
    "DELETE FROM attempt_answers WHERE question_id IN (SELECT id FROM questions WHERE sumber = 'web');",
    "DELETE FROM questions WHERE sumber = 'web';",
    '',
    'INSERT INTO questions (',
    '  sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, kunci, pembahasan, pembahasan_gambar, skor_tkp, status',
    ')',
    'VALUES'
  ];

  const valueRows = cleanNewList.map(item => {
    return '(\n  ' +
      escapeSqlStr(item.sumber) + ',\n  ' +
      item.nomor + ',\n  ' +
      escapeSqlStr(item.subtes) + ',\n  ' +
      escapeSqlStr(item.topik) + ',\n  ' +
      escapeSqlStr(item.level) + ',\n  ' +
      escapeSqlStr(item.soal) + ',\n  ' +
      escapeSqlStr(item.gambar_url) + ',\n  ' +
      escapeSqlJson(item.opsi) + ',\n  ' +
      escapeSqlStr(item.kunci) + ',\n  ' +
      escapeSqlStr(item.pembahasan) + ',\n  ' +
      'NULL,\n  ' +
      escapeSqlJson(item.skor_tkp) + ',\n  ' +
      "'published'\n)";
  });

  sqlParts.push(valueRows.join(',\n') + ';\n');
  fs.writeFileSync(OUT_MIGRATION_SQL, sqlParts.join('\n'), 'utf8');
  console.log('   ✓ Generated ' + OUT_MIGRATION_SQL + ' (' + (fs.statSync(OUT_MIGRATION_SQL).size / 1024).toFixed(1) + ' KB)');
  console.log('\nSeluruh proses pemrosesan soal sumber web selesai dengan sukses!');
}

main();
