const fs = require('fs');

function cleanLatexAndMath(text) {
  if (!text) return text;
  return text
    // Replace \[ ... \] with $$ ... $$
    .replace(/\\\[([\s\S]*?)\\\]/g, (match, formula) => {
      const clean = formula.replace(/\\\s+/g, ' ').trim();
      return '$$' + clean + '$$';
    })
    // Replace \( ... \) with $ ... $
    .replace(/\\\(([\s\S]*?)\\\)/g, (match, formula) => {
      const clean = formula.replace(/\\\s+/g, ' ').trim();
      return '$' + clean + '$';
    })
    // Clean any remaining escaped operators \ >, \ <, \ =
    .replace(/\\\s*([><=])/g, ' $1 ');
}

function processQuestions() {
  const filePath = 'soal/soal_part29_36_37_38.json';
  const questions = JSON.parse(fs.readFileSync(filePath, 'utf8'));

  let updatedCount = 0;
  let doubleImageFixed = 0;
  let latexFixed = 0;

  const sqlStatements = [
    '--',
    '-- Migration 019: Fix LaTeX math formulas, double images, and escaped operators',
    '-- Part 29, 36, 37, 38 & general questions cleanup',
    '--',
    'BEGIN;',
    '',
    '-- 1. Bersihkan double image jika gambar sudah ada di dalam teks soal untuk seluruh bank soal',
    "UPDATE questions SET gambar_url = NULL WHERE gambar_url IS NOT NULL AND (soal LIKE '%![gambar%' OR soal LIKE '%<img%' OR soal LIKE '%' || gambar_url || '%');",
    ''
  ];

  for (const q of questions) {
    let changed = false;

    // Check double image
    const hasInlineImg = Boolean(
      q.soal && (
        q.soal.includes('![gambar') ||
        q.soal.includes('<img') ||
        (q.gambar_url && q.soal.includes(q.gambar_url))
      )
    );

    let newGambarUrl = q.gambar_url;
    if (q.gambar_url && hasInlineImg) {
      newGambarUrl = null;
      q.gambar_url = null;
      changed = true;
      doubleImageFixed++;
    }

    // Clean soal
    const newSoal = cleanLatexAndMath(q.soal);
    if (newSoal !== q.soal) {
      q.soal = newSoal;
      changed = true;
      latexFixed++;
    }

    // Clean opsi
    if (q.opsi) {
      for (const [k, v] of Object.entries(q.opsi)) {
        const newV = cleanLatexAndMath(v);
        if (newV !== v) {
          q.opsi[k] = newV;
          changed = true;
          latexFixed++;
        }
      }
    }

    // Clean pembahasan
    if (q.pembahasan) {
      const newPemb = cleanLatexAndMath(q.pembahasan);
      if (newPemb !== q.pembahasan) {
        q.pembahasan = newPemb;
        changed = true;
        latexFixed++;
      }
    }

    if (changed) {
      updatedCount++;
      const escapedSoal = q.soal.replace(/'/g, "''");
      const escapedPemb = q.pembahasan ? q.pembahasan.replace(/'/g, "''") : '';
      const escapedOpsi = JSON.stringify(q.opsi).replace(/'/g, "''");
      const gambarVal = newGambarUrl ? `'${newGambarUrl.replace(/'/g, "''")}'` : 'NULL';

      sqlStatements.push(
        `UPDATE questions SET soal = '${escapedSoal}', opsi = '${escapedOpsi}'::jsonb, pembahasan = '${escapedPemb}', gambar_url = ${gambarVal} WHERE sumber = '${q.sumber}' AND nomor = ${q.nomor};`
      );
    }
  }

  sqlStatements.push('\nCOMMIT;\n');

  console.log(`Updated questions in JSON: ${updatedCount} / ${questions.length}`);
  console.log(`Double image fixed: ${doubleImageFixed}`);
  console.log(`LaTeX / math cleaned: ${latexFixed}`);

  fs.writeFileSync(filePath, JSON.stringify(questions, null, 2), 'utf8');
  console.log(`Saved updated JSON to ${filePath}`);

  const sqlPath = 'supabase/migrations/019_fix_latex_and_double_images.sql';
  fs.writeFileSync(sqlPath, sqlStatements.join('\n'), 'utf8');
  console.log(`Generated SQL Migration at: ${sqlPath}`);
}

processQuestions();
