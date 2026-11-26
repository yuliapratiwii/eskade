const fs = require('fs');

function cleanMathAndFormatting(content) {
  if (!content) return content;
  return content
    // Convert \[ ... \] to $$ ... $$ (display math)
    .replace(/\\\[([\s\S]*?)\\\]/g, (_, math) => {
      const clean = math.replace(/\\\s+/g, ' ').trim();
      return `$$${clean}$$`;
    })
    // Convert \( ... \) to $ ... $ (inline math)
    .replace(/\\\(([\s\S]*?)\\\)/g, (_, math) => {
      const clean = math.replace(/\\\s+/g, ' ').trim();
      return `$${clean}$`;
    })
    // Also clean escaped comparison operators \ >, \ <, \ =
    .replace(/\\\s*([><=])/g, ' $1 ')
    // Fix number sequence backslash comma (e.g. 1\, 3\, -> 1, 3, )
    .replace(/(\d)\s*\\,\s*/g, (m, d) => `${d}, `)
    // Fix mixed fractions: integer directly followed by fraction (e.g. 3\frac{3}{4} -> 3\ \frac{3}{4})
    .replace(/(\d)(\\d?frac\{)/g, (m, d, f) => `${d}\\ ${f}`)
    // Fix nested fraction with negative denominator \frac{9}{-\frac{1}{3}} -> \frac{9}{\left(-\frac{1}{3}\right)}
    .replace(/\\frac\{([^}]+)\}\{-\\frac\{([^}]+)\}\{([^}]+)\}\}/g, (m, a, b, c) => `\\frac{${a}}{\\left(-\\frac{${b}}{${c}}\\right)}`);
}

function processAll() {
  const allPath = 'soal/bank_soal_lengkap_skd.json';
  const allQuestions = JSON.parse(fs.readFileSync(allPath, 'utf8'));

  let updatedCount = 0;
  let doubleImageCount = 0;
  const sqlStatements = [
    '--',
    '-- Migration 020: Update All Math Formatting & Questions Cleanliness',
    '-- Fixes: mixed fractions spacing, deret commas, nested fractions, and double images',
    '--',
    'BEGIN;',
    '',
    '-- 1. Bersihkan double image jika gambar sudah ada di dalam teks soal untuk seluruh bank soal',
    "UPDATE questions SET gambar_url = NULL WHERE gambar_url IS NOT NULL AND (soal LIKE '%![gambar%' OR soal LIKE '%<img%' OR soal LIKE '%' || gambar_url || '%');",
    ''
  ];

  for (const q of allQuestions) {
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
      doubleImageCount++;
    }

    // Clean soal
    const newSoal = cleanMathAndFormatting(q.soal);
    if (newSoal !== q.soal) {
      q.soal = newSoal;
      changed = true;
    }

    // Clean opsi
    if (q.opsi) {
      for (const [k, v] of Object.entries(q.opsi)) {
        if (typeof v === 'string') {
          const newV = cleanMathAndFormatting(v);
          if (newV !== v) {
            q.opsi[k] = newV;
            changed = true;
          }
        }
      }
    }

    // Clean pembahasan
    if (q.pembahasan) {
      const newPemb = cleanMathAndFormatting(q.pembahasan);
      if (newPemb !== q.pembahasan) {
        q.pembahasan = newPemb;
        changed = true;
      }
    }

    if (changed) {
      updatedCount++;
      const escapedSoal = q.soal.replace(/'/g, "''");
      const escapedPemb = q.pembahasan ? q.pembahasan.replace(/'/g, "''") : '';
      const escapedOpsi = JSON.stringify(q.opsi).replace(/'/g, "''");
      const gambarVal = newGambarUrl ? `'${newGambarUrl.replace(/'/g, "''")}'` : 'NULL';

      sqlStatements.push(
        `UPDATE questions SET soal = '${escapedSoal}', opsi = '${escapedOpsi}'::jsonb, pembahasan = '${escapedPemb}', gambar_url = ${gambarVal} WHERE id = '${q.id}';`
      );
    }
  }

  sqlStatements.push('\nCOMMIT;\n');

  console.log(`Total soal dalam bank soal: ${allQuestions.length}`);
  console.log(`Soal yang diperbarui: ${updatedCount}`);
  console.log(`Double image dibersihkan: ${doubleImageCount}`);

  // Simpan JSON yang sudah bersih
  fs.writeFileSync(allPath, JSON.stringify(allQuestions, null, 2), 'utf8');
  console.log(`Tersimpan ke: ${allPath}`);

  // Simpan juga ke file SQL Migration 020
  const sqlPath = 'supabase/migrations/020_update_all_math_and_clean_questions.sql';
  fs.writeFileSync(sqlPath, sqlStatements.join('\n'), 'utf8');
  console.log(`File SQL Migration 020 disimpan di: ${sqlPath}`);

  // Update juga soal_part29_36_37_38.json
  const partPath = 'soal/soal_part29_36_37_38.json';
  if (fs.existsSync(partPath)) {
    const partQuestions = JSON.parse(fs.readFileSync(partPath, 'utf8'));
    partQuestions.forEach(q => {
      q.soal = cleanMathAndFormatting(q.soal);
      if (q.opsi) {
        for (const [k, v] of Object.entries(q.opsi)) {
          if (typeof v === 'string') q.opsi[k] = cleanMathAndFormatting(v);
        }
      }
      if (q.pembahasan) q.pembahasan = cleanMathAndFormatting(q.pembahasan);
      const hasInlineImg = Boolean(
        q.soal && (
          q.soal.includes('![gambar') ||
          q.soal.includes('<img') ||
          (q.gambar_url && q.soal.includes(q.gambar_url))
        )
      );
      if (q.gambar_url && hasInlineImg) q.gambar_url = null;
    });
    fs.writeFileSync(partPath, JSON.stringify(partQuestions, null, 2), 'utf8');
    console.log(`Tersimpan ke: ${partPath}`);
  }
}

processAll();
