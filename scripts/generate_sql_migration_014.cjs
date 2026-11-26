const fs = require('fs');
const path = require('path');

const parsedScores = JSON.parse(fs.readFileSync('scripts/parsed_tkp_scores.json', 'utf8'));
const partData = JSON.parse(fs.readFileSync('scrapt/part.json', 'utf8'));

// Topic normalizer
function normalizeTopic(rawSoal, pembahasan) {
  const m = rawSoal.match(/\(([^)]+)\)\s*$/);
  let raw = m ? m[1].trim() : '';
  
  if (raw.toLowerCase().includes('pelayanan')) return 'Pelayanan Publik';
  if (raw.toLowerCase().includes('jejaring')) return 'Jejaring Kerja';
  if (raw.toLowerCase().includes('sosial')) return 'Sosial Budaya';
  if (raw.toLowerCase().includes('teknologi') || raw.toLowerCase() === 'tik') return 'Teknologi Informasi dan Komunikasi';
  if (raw.toLowerCase().includes('profesional')) return 'Profesionalisme';
  if (raw.toLowerCase().includes('radikal') || raw.toLowerCase().includes('anti-radikal')) return 'Anti Radikalisme';
  
  if (pembahasan.toLowerCase().includes('radikal')) return 'Anti Radikalisme';
  if (pembahasan.toLowerCase().includes('pelayanan')) return 'Pelayanan Publik';
  if (pembahasan.toLowerCase().includes('jejaring') || pembahasan.toLowerCase().includes('kolaborasi')) return 'Jejaring Kerja';
  if (pembahasan.toLowerCase().includes('teknologi')) return 'Teknologi Informasi dan Komunikasi';
  if (pembahasan.toLowerCase().includes('profesional')) return 'Profesionalisme';
  
  return 'Pelayanan Publik';
}

function cleanQuestionText(text) {
  // Remove topic parenthesis at the end e.g. '... (Pelayanan Publik)'
  return text.replace(/\s*\([^)]*(?:Pelayanan|Jejaring|Sosial|Teknologi|TIK|Profesional|Radikal)[^)]*\)\s*$/i, '').trim();
}

function cleanPembahasanText(text) {
  // Strip 'SKOR JAWABAN:' and '[gambar: ...]'
  let cleaned = text.replace(/SKOR JAWABAN:\s*/gi, '');
  cleaned = cleaned.replace(/\[gambar:\s*[^\]]+\]\s*/gi, '');
  return cleaned.trim();
}

function escapeSql(str) {
  if (str === null || str === undefined) return 'NULL';
  return "'" + str.replace(/'/g, "''") + "'";
}

const p27TKP = partData.filter(d => d.paket.includes('PART 27') && d.subtes === 'TKP');
const p28TKP = partData.filter(d => d.paket.includes('PART 28') && d.subtes === 'TKP');

console.log(`Part 27 TKP: ${p27TKP.length} butir`);
console.log(`Part 28 TKP: ${p28TKP.length} butir`);

const rows = [];

function processList(list, sumberName) {
  list.forEach((q, idx) => {
    const nomor = 66 + idx; // 66 to 110
    const scoreItem = parsedScores.find(p => p.id === q.id);
    if (!scoreItem || !scoreItem.scores) {
      throw new Error(`Missing score for ${q.id}`);
    }
    
    const skorObj = scoreItem.scores;
    const kunci = q.kunci;
    const topik = normalizeTopic(q.soal, q.pembahasan);
    const soal = cleanQuestionText(q.soal);
    const pembahasan = cleanPembahasanText(q.pembahasan);
    
    rows.push({
      sumber: sumberName,
      nomor,
      subtes: 'TKP',
      topik,
      level: 'sedang',
      soal,
      opsi: q.opsi,
      skor_tkp: skorObj,
      kunci,
      pembahasan
    });
  });
}

processList(p27TKP, 'part-27');
processList(p28TKP, 'part-28');

console.log(`Total rows to insert: ${rows.length}`);

// Generate SQL
const sqlStatements = [
  '--',
  '-- Migration 014: Insert TKP Questions for Part 27 & Part 28 (Nomor 66 - 110)',
  '-- Total: 90 butir soal TKP dengan skor numerik 1-5 tanpa gambar poin',
  '--',
  'BEGIN;',
  ''
];

rows.forEach(r => {
  const opsiJson = escapeSql(JSON.stringify(r.opsi));
  const skorJson = escapeSql(JSON.stringify(r.skor_tkp));
  
  sqlStatements.push(`INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  ${escapeSql(r.sumber)},
  ${r.nomor},
  'TKP',
  ${escapeSql(r.topik)},
  'sedang',
  ${escapeSql(r.soal)},
  NULL,
  ${opsiJson}::jsonb,
  ${skorJson}::jsonb,
  ${escapeSql(r.kunci)},
  ${escapeSql(r.pembahasan)},
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';
`);
});

sqlStatements.push('COMMIT;');

fs.writeFileSync('supabase/migrations/014_insert_tkp_part27_28.sql', sqlStatements.join('\n'), 'utf8');
console.log('Saved to supabase/migrations/014_insert_tkp_part27_28.sql');
