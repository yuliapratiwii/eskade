const fs = require('fs');
const path = require('path');

const rawData = JSON.parse(fs.readFileSync('scrapt/alfaiz_soal.json', 'utf8'));
const parsedTkpScores = JSON.parse(fs.readFileSync('scripts/parsed_new_tkp_scores.json', 'utf8'));

const targetParts = [
  { match: 'PART 29', sumber: 'part-29' },
  { match: 'PART 36', sumber: 'part-36' },
  { match: 'PART 37', sumber: 'part-37' },
  { match: 'PART 38', sumber: 'part-38' },
];

// Helper: Ensure directory exists
function ensureDir(p) {
  if (!fs.existsSync(p)) fs.mkdirSync(p, { recursive: true });
}
ensureDir('web/public/gambar');
ensureDir('gambar');
ensureDir('soal');

// 1. Gather all unique non-TKP images
const imagesToCopy = new Set();
targetParts.forEach(({ match }) => {
  const qList = rawData.filter(q => q.paket.includes(match) && q.subtes !== 'TKP');
  qList.forEach(q => {
    if (q.gambar) {
      q.gambar.forEach(g => {
        const fn = path.basename(g);
        imagesToCopy.add(fn);
      });
    }

    const checkHtml = (html) => {
      if (!html) return;
      const regex = /src=["']([^"']+)["']/g;
      let m;
      while ((m = regex.exec(html)) !== null) {
        if (!m[1].startsWith('data:')) {
          imagesToCopy.add(path.basename(m[1]));
        }
      }
    };

    checkHtml(q.soal_html);
    checkHtml(q.pembahasan_html);
    if (q.opsi_html) {
      Object.values(q.opsi_html).forEach(checkHtml);
    }
  });
});

console.log(`Menemukan ${imagesToCopy.size} file gambar non-TKP yang dibutuhkan.`);

// Copy images to web/public/gambar and gambar
let copyCount = 0;
imagesToCopy.forEach(fn => {
  const src = path.join('scrapt/gambar', fn);
  if (fs.existsSync(src)) {
    fs.copyFileSync(src, path.join('web/public/gambar', fn));
    fs.copyFileSync(src, path.join('gambar', fn));
    copyCount++;
  } else {
    console.warn(`File gambar tidak ditemukan: ${src}`);
  }
});
console.log(`Berhasil menyalin ${copyCount} / ${imagesToCopy.size} gambar ke web/public/gambar/ dan gambar/.`);

// 2. Topic classification helpers
function detectTWKTopic(soal, pemb) {
  const t = (soal + ' ' + pemb).toLowerCase();
  if (t.includes('bahasa') || t.includes('kalimat efektif') || t.includes('ejaan') || t.includes('paragraf') || t.includes('ide pokok') || t.includes('kata baku') || t.includes('konjungsi')) return 'Bahasa Indonesia';
  if (t.includes('integritas') || t.includes('korupsi') || t.includes('kpk') || t.includes('kejujuran') || t.includes('gratifikasi')) return 'Integritas';
  if (t.includes('bela negara') || t.includes('ancaman militer') || t.includes('pertahanan')) return 'Bela Negara';
  if (t.includes('nasionalisme') || t.includes('cinta tanah air') || t.includes('patriotisme') || t.includes('kebangsaan')) return 'Nasionalisme';
  if (t.includes('pancasila') || t.includes('sila ke') || t.includes('butir sila')) return 'Pancasila';
  if (t.includes('uud') || t.includes('pasal') || t.includes('konstitusi') || t.includes('mahkamah') || t.includes('dpr') || t.includes('mpr')) return 'UUD 1945';
  if (t.includes('bhinneka') || t.includes('keberagaman') || t.includes('suku') || t.includes('toleransi')) return 'Bhinneka Tunggal Ika';
  if (t.includes('nkri') || t.includes('kedaulatan') || t.includes('wilayah') || t.includes('otonomi')) return 'NKRI';
  return 'Nasionalisme';
}

function detectTIUTopic(no, soal, pemb) {
  const t = (soal + ' ' + pemb).toLowerCase();
  if (no >= 27 && no <= 35) {
    if (t.includes('serial') || t.includes('selanjutnya')) return 'Figural Serial';
    if (t.includes('analogi') || t.includes('hubungan')) return 'Figural Analogi';
    if (t.includes('ketaksamaan') || t.includes('berbeda')) return 'Figural Ketaksamaan';
    if (t.includes('9 kotak') || t.includes('matriks')) return 'Figural Matriks 9 Kotak';
    return 'Figural';
  }
  if (no >= 22 && no <= 24) return 'Deret Angka';
  if (t.includes('kuantitas a dan b') || t.includes('hubungan yang benar antara a dan b') || t.includes('kuantitas a') || t.includes('kuantitas b')) return 'Perbandingan Kuantitatif';
  if (t.includes('semua ') || t.includes('beberapa ') || t.includes('sebagian ') || t.includes('kesimpulan yang tepat')) return 'Silogisme';
  if (t.includes('posisi') || t.includes('urutan') || t.includes('duduk') || t.includes('jadwal') || t.includes('peringkat')) return 'Analitis';
  if (soal.includes(':') && (no >= 1 && no <= 3)) return 'Analogi Kata';
  if (no >= 10 && no <= 12) return 'Berhitung';
  if (no >= 13 && no <= 21) return 'Soal Cerita';
  return 'Kemampuan Numerik';
}

function detectTKPTopic(id, soal, pemb) {
  // Check known ID exceptions
  if (id === '13069-246377') return 'Sosial Budaya';
  if (id === '13070-248494') return 'Sosial Budaya';
  if (id === '13070-248510') return 'Teknologi Informasi dan Komunikasi';
  if (id === '13070-248511') return 'Teknologi Informasi dan Komunikasi';

  const m = soal.match(/\(([^)]+)\)\s*$/);
  if (m) {
    const raw = m[1].trim().toLowerCase();
    if (raw.includes('pelayanan')) return 'Pelayanan Publik';
    if (raw.includes('jejaring')) return 'Jejaring Kerja';
    if (raw.includes('sosial')) return 'Sosial Budaya';
    if (raw.includes('teknologi') || raw === 'tik') return 'Teknologi Informasi dan Komunikasi';
    if (raw.includes('profesional')) return 'Profesionalisme';
    if (raw.includes('radikal') || raw.includes('anti-radikal')) return 'Anti Radikalisme';
  }

  const t = (soal + ' ' + pemb).toLowerCase();
  if (t.includes('radikal')) return 'Anti Radikalisme';
  if (t.includes('pelayanan')) return 'Pelayanan Publik';
  if (t.includes('jejaring') || t.includes('kolaborasi')) return 'Jejaring Kerja';
  if (t.includes('teknologi') || t.includes('aplikasi') || t.includes('sistem')) return 'Teknologi Informasi dan Komunikasi';
  if (t.includes('profesional')) return 'Profesionalisme';
  if (t.includes('budaya') || t.includes('adat') || t.includes('masyarakat')) return 'Sosial Budaya';
  return 'Pelayanan Publik';
}

// Format clean markdown
function formatMarkdownImages(text) {
  if (!text) return '';
  return text.replace(/\[gambar:\s*gambar\/([a-zA-Z0-9_.-]+)\]/gi, (match, fn) => {
    return `![gambar](/gambar/${fn})`;
  });
}

function cleanTKPPembahasan(text) {
  let cleaned = text.replace(/SKOR JAWABAN:\s*/gi, '');
  cleaned = cleaned.replace(/\[gambar:\s*[^\]]+\]\s*/gi, '');
  return cleaned.trim();
}

function cleanTKPSoal(text) {
  return text.replace(/\s*\([^)]*(?:Pelayanan|Jejaring|Sosial|Teknologi|TIK|Profesional|Radikal)[^)]*\)\s*$/i, '').trim();
}

// 3. Process all questions
const processedQuestions = [];

targetParts.forEach(({ match, sumber }) => {
  const partQuestions = rawData.filter(q => q.paket.includes(match));
  console.log(`\nMemproses ${match} (${sumber}): total ${partQuestions.length} butir...`);

  const twkList = partQuestions.filter(q => q.subtes === 'TWK');
  const tiuList = partQuestions.filter(q => q.subtes === 'TIU');
  const tkpList = partQuestions.filter(q => q.subtes === 'TKP');

  // TWK: nomor 1 - 30
  twkList.forEach(q => {
    const nomor = q.no; // 1 to 30
    const topik = detectTWKTopic(q.soal, q.pembahasan);
    const soal = formatMarkdownImages(q.soal.trim());
    const pembahasan = formatMarkdownImages(q.pembahasan.trim());

    // Format opsi
    const opsi = {};
    for (const [k, v] of Object.entries(q.opsi || {})) {
      opsi[k] = formatMarkdownImages(v.trim());
    }

    processedQuestions.push({
      sumber,
      nomor,
      subtes: 'TWK',
      topik,
      level: 'sedang',
      soal,
      gambar_url: null,
      opsi,
      skor_tkp: null,
      kunci: q.kunci,
      pembahasan,
      pembahasan_gambar: null,
      status: 'published'
    });
  });

  // TIU: nomor 31 - 65
  tiuList.forEach(q => {
    const nomor = 30 + q.no; // 31 to 65
    const topik = detectTIUTopic(q.no, q.soal, q.pembahasan);
    const soal = formatMarkdownImages(q.soal.trim());
    const pembahasan = formatMarkdownImages(q.pembahasan.trim());

    // Check gambar_url in soal
    let gambar_url = null;
    const soalImgMatch = soal.match(/!\[gambar\]\(\/gambar\/([a-zA-Z0-9_.-]+)\)/);
    if (soalImgMatch) {
      gambar_url = `/gambar/${soalImgMatch[1]}`;
    }

    // Check pembahasan_gambar
    let pembahasan_gambar = null;
    const pembImgMatch = pembahasan.match(/!\[gambar\]\(\/gambar\/([a-zA-Z0-9_.-]+)\)/);
    if (pembImgMatch) {
      pembahasan_gambar = `/gambar/${pembImgMatch[1]}`;
    }

    // Format opsi
    const opsi = {};
    for (const [k, v] of Object.entries(q.opsi || {})) {
      opsi[k] = formatMarkdownImages(v.trim());
    }

    processedQuestions.push({
      sumber,
      nomor,
      subtes: 'TIU',
      topik,
      level: 'sedang',
      soal,
      gambar_url,
      opsi,
      skor_tkp: null,
      kunci: q.kunci,
      pembahasan,
      pembahasan_gambar,
      status: 'published'
    });
  });

  // TKP: nomor 66 - 110
  tkpList.forEach(q => {
    const nomor = 65 + q.no; // 66 to 110
    const topik = detectTKPTopic(q.id, q.soal, q.pembahasan);
    const soal = cleanTKPSoal(q.soal);
    const pembahasan = cleanTKPPembahasan(q.pembahasan);

    // Get score from parsedTkpScores
    const scoreItem = parsedTkpScores.find(p => p.id === q.id);
    if (!scoreItem || !scoreItem.scores) {
      throw new Error(`Skor TKP tidak ditemukan untuk ${q.id}`);
    }

    const skor_tkp = scoreItem.scores;
    // Kunci is option with score 5
    const kunci5 = Object.entries(skor_tkp).find(([k, sc]) => sc === 5)?.[0] || q.kunci;

    const opsi = {};
    for (const [k, v] of Object.entries(q.opsi || {})) {
      opsi[k] = v.trim();
    }

    processedQuestions.push({
      sumber,
      nomor,
      subtes: 'TKP',
      topik,
      level: 'sedang',
      soal,
      gambar_url: null,
      opsi,
      skor_tkp,
      kunci: kunci5,
      pembahasan,
      pembahasan_gambar: null,
      status: 'published'
    });
  });
});

console.log(`\nTotal butir soal selesai diproses: ${processedQuestions.length} butir`);

// 4. Save JSON file
const jsonOutputPath = 'soal/soal_part29_36_37_38.json';
fs.writeFileSync(jsonOutputPath, JSON.stringify(processedQuestions, null, 2), 'utf8');
console.log(`File JSON berhasil disimpan di: ${jsonOutputPath}`);

// 5. Generate SQL Migration file
function escapeSql(str) {
  if (str === null || str === undefined) return 'NULL';
  return "'" + str.replace(/'/g, "''") + "'";
}

const sqlLines = [
  '--',
  '-- Migration 016: Insert Questions for Part 29, 36, 37, 38',
  `-- Total: ${processedQuestions.length} butir soal (4 paket x 110 soal)`,
  '--',
  'BEGIN;',
  ''
];

processedQuestions.forEach(q => {
  const opsiJson = escapeSql(JSON.stringify(q.opsi));
  const skorJson = q.skor_tkp ? escapeSql(JSON.stringify(q.skor_tkp)) + '::jsonb' : 'NULL';
  const gUrl = q.gambar_url ? escapeSql(q.gambar_url) : 'NULL';
  const pGUrl = q.pembahasan_gambar ? escapeSql(q.pembahasan_gambar) : 'NULL';

  sqlLines.push(`INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  ${escapeSql(q.sumber)},
  ${q.nomor},
  ${escapeSql(q.subtes)},
  ${escapeSql(q.topik)},
  'sedang',
  ${escapeSql(q.soal)},
  ${gUrl},
  ${opsiJson}::jsonb,
  ${skorJson},
  ${escapeSql(q.kunci)},
  ${escapeSql(q.pembahasan)},
  ${pGUrl},
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';
`);
});

sqlLines.push('COMMIT;');

const sqlOutputPath = 'supabase/migrations/016_insert_part29_36_37_38.sql';
fs.writeFileSync(sqlOutputPath, sqlLines.join('\n'), 'utf8');
console.log(`File SQL Migration berhasil disimpan di: ${sqlOutputPath}`);
