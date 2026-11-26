// Script to merge 100 twt questions into web/public/soal_clean.json and generate migration 008
const fs = require('fs');
const path = require('path');

const { twkQuestions } = require('./twt_twk.cjs');
const { tiuQuestions } = require('./twt_tiu.cjs');
const { tkpQuestions } = require('./twt_tkp.cjs');

console.log(`Loaded: ${twkQuestions.length} TWK, ${tiuQuestions.length} TIU, ${tkpQuestions.length} TKP`);

const allNew = [...twkQuestions, ...tiuQuestions, ...tkpQuestions];

if (allNew.length !== 100) {
  throw new Error(`Expected 100 questions, got ${allNew.length}`);
}

// Validation & formatting
const formattedNew = allNew.map((q) => {
  if (!q.nomor || !q.subtes || !q.topik || !q.soal || !q.opsi || !q.kunci || !q.pembahasan) {
    throw new Error(`Incomplete question #${q.nomor}`);
  }

  const keys = ['A', 'B', 'C', 'D', 'E'];
  for (const k of keys) {
    if (typeof q.opsi[k] !== 'string') {
      throw new Error(`Missing or non-string option ${k} in #${q.nomor}`);
    }
  }

  if (!keys.includes(q.kunci)) {
    throw new Error(`Invalid kunci ${q.kunci} in #${q.nomor}`);
  }

  if (q.subtes === 'TKP') {
    if (!q.skor_tkp) throw new Error(`Missing skor_tkp in #${q.nomor}`);
    for (const k of keys) {
      if (typeof q.skor_tkp[k] !== 'number') {
        throw new Error(`Missing skor_tkp for ${k} in #${q.nomor}`);
      }
    }
    // Check highest score option matches kunci
    const bestOption = Object.entries(q.skor_tkp).sort((a, b) => b[1] - a[1])[0][0];
    if (bestOption !== q.kunci) {
      console.warn(`Warning: Best TKP option (${bestOption}) differs from kunci (${q.kunci}) in #${q.nomor}`);
    }
  }

  return {
    sumber: 'twt',
    nomor: q.nomor,
    subtes: q.subtes,
    topik: q.topik,
    level: q.level || 'sedang',
    soal: q.soal,
    gambar: null,
    gambar_url: null,
    opsi: q.opsi,
    kunci: q.kunci,
    pembahasan: q.pembahasan,
    pembahasanGambar: null,
    pembahasan_gambar: null,
    skor_tkp: q.skor_tkp || null,
    status: 'published'
  };
});

console.log('All 100 new questions validated successfully!');

// 1. Read existing soal_clean.json
const cleanJsonPath = path.resolve('web/public/soal_clean.json');
const existing = JSON.parse(fs.readFileSync(cleanJsonPath, 'utf8'));

// Filter out any existing 'twt' questions if re-running
const filteredExisting = existing.filter((q) => q.sumber !== 'twt');
const combined = [...filteredExisting, ...formattedNew];

fs.writeFileSync(cleanJsonPath, JSON.stringify(combined, null, 2), 'utf8');
console.log(`Updated ${cleanJsonPath}: previous ${existing.length}, now ${combined.length} questions.`);

// 2. Generate Supabase Migration 008
function escapeSqlString(str) {
  if (str === null || str === undefined) return 'NULL';
  return `'` + str.replace(/'/g, `''`) + `'`;
}

function escapeSqlJson(obj) {
  if (obj === null || obj === undefined) return 'NULL';
  return `'` + JSON.stringify(obj).replace(/'/g, `''`) + `'::jsonb`;
}

let sql = `-- Migration 008: Seed 100 Soal SKD CPNS 2026 dari Sumber Twt (@aihiforal)
-- TWK: 30 soal, TIU: 40 soal, TKP: 30 soal (Total: 100 soal)

-- Hapus soal twt lama jika ada (idempotent)
DELETE FROM exam_questions WHERE question_id IN (SELECT id FROM questions WHERE sumber = 'twt');
DELETE FROM attempt_answers WHERE question_id IN (SELECT id FROM questions WHERE sumber = 'twt');
DELETE FROM questions WHERE sumber = 'twt';

INSERT INTO questions (
  sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, kunci, pembahasan, pembahasan_gambar, skor_tkp, status
)
VALUES
`;

const valueRows = formattedNew.map((q) => {
  return `(
  ${escapeSqlString(q.sumber)},
  ${q.nomor},
  ${escapeSqlString(q.subtes)},
  ${escapeSqlString(q.topik)},
  ${escapeSqlString(q.level)},
  ${escapeSqlString(q.soal)},
  NULL,
  ${escapeSqlJson(q.opsi)},
  ${escapeSqlString(q.kunci)},
  ${escapeSqlString(q.pembahasan)},
  NULL,
  ${escapeSqlJson(q.skor_tkp)},
  'published'
)`;
});

sql += valueRows.join(',\n') + ';\n';

const migrationPath = path.resolve('supabase/migrations/008_seed_twt_soal.sql');
fs.writeFileSync(migrationPath, sql, 'utf8');
console.log(`Generated migration: ${migrationPath} (${(sql.length / 1024).toFixed(1)} KB)`);
