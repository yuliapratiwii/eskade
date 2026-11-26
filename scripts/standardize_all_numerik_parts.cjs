const fs = require('fs');

const allPath = 'soal/bank_soal_lengkap_skd.json';
const allQuestions = JSON.parse(fs.readFileSync(allPath, 'utf8'));

// Helper dictionary for exact standardized replacements in Part 29, 36, 37, 38 numerik
const standardizedMap = {
  // --- PART 29 ---
  'part-29-38': {
    soal: 'Hasil dari operasi hitung berikut adalah:\n\n$$\n\\frac{5}{8} + 3 - 3\\ \\frac{1}{4} = \\dots\n$$',
    pembahasan: '* **Langkah Penyelesaian:**\n\n  $$\\frac{5}{8} + 3 - 3\\ \\frac{1}{4} = 0{,}625 + 3 - 3{,}25$$\n\n  $$= 0{,}375$$\n\nJawaban: A',
    opsi: { A: '0,375', B: '0,750', C: '2,000', D: '4,000', E: '4,250' }
  },
  'part-29-39': {
    soal: 'Hasil dari operasi hitung berikut adalah:\n\n$$\n125\\% + 1\\ \\frac{3}{4} - 0{,}5 = \\dots\n$$',
    pembahasan: '* **Langkah Penyelesaian:**\n\n  $$125\\% + 1\\ \\frac{3}{4} - 0{,}5 = \\frac{125}{100} + \\frac{7}{4} - \\frac{5}{10}$$\n\n  $$= \\frac{5}{4} + \\frac{7}{4} - \\frac{1}{2}$$\n\n  $$= \\frac{12}{4} - \\frac{1}{2}$$\n\n  $$= 3 - \\frac{1}{2} = \\frac{5}{2}$$\n\nJawaban: B',
    opsi: { A: '$\\frac{9}{4}$', B: '$\\frac{5}{2}$', C: '$\\frac{11}{4}$', D: '$\\frac{7}{2}$', E: '$\\frac{13}{4}$' }
  },
  'part-29-40': {
    soal: 'Hasil dari operasi hitung berikut adalah:\n\n$$\n\\frac{2}{5} - 3\\ \\frac{1}{2} \\div \\frac{5}{2} = \\dots\n$$',
    pembahasan: '* **Langkah Penyelesaian:**\n\n  $$\\frac{2}{5} - 3\\ \\frac{1}{2} \\div \\frac{5}{2} = \\frac{2}{5} - \\frac{7}{2} \\times \\frac{2}{5}$$\n\n  $$= \\frac{2}{5} - \\frac{7}{5}$$\n\n  $$= -\\frac{5}{5} = -1$$\n\nJawaban: B',
    opsi: { A: '$-1{,}24$', B: '$-1{,}00$', C: '$-0{,}85$', D: '$1{,}00$', E: '$1{,}24$' }
  },
  'part-29-41': {
    soal: 'Diketahui nilai $x = \\frac{5}{4}$ dan $y = -4$.\n\n![gambar](/gambar/cf0575032775.png)\n\nManakah hubungan yang benar antara kuantitas $A$ dan $B$ berikut berdasarkan informasi yang diberikan…',
    pembahasan: '* **Langkah Penyelesaian:**\n\n  * **Hitung nilai $A$:**\n    $$A = -2y - x = -2(-4) - \\left(\\frac{5}{4}\\right)$$\n    $$= 8 - \\frac{5}{4} = \\frac{32}{4} - \\frac{5}{4} = \\frac{27}{4} = 6{,}75$$\n\n  * **Hitung nilai $B$:**\n    $$B = 4x + 3y = 4\\left(\\frac{5}{4}\\right) + 3(-4)$$\n    $$= 5 - 12 = -7$$\n\n  * **Uji Setiap Opsi Jawaban:**\n    ![gambar](/gambar/8aa99b136208.png)\n\nJawaban: C',
    opsi: { A: '$5A < 2B$', B: '$3A = 2B$', C: '$3A > 4B$', D: '$2A = B^2$', E: '$A < B$' }
  },
  'part-29-50': {
    soal: 'Tentukan bilangan selanjutnya pada deret berikut:\n\n$$\n24, \\quad 25, \\quad 28, \\quad 33, \\quad 40, \\quad \\dots\n$$',
    pembahasan: '* **Langkah Penyelesaian:**\n\n  ![gambar](/gambar/8bd6cd1ef008.png)\n\nJawaban: D'
  },
  'part-29-51': {
    soal: 'Tentukan bilangan yang mengisi titik-titik pada deret berikut:\n\n$$\n\\dots, \\quad -9, \\quad -3, \\quad 9, \\quad 21, \\quad -63, \\quad -45\n$$',
    pembahasan: '* **Langkah Penyelesaian:**\n\n  ![gambar](/gambar/cb54f74d3cec.png)\n\nJawaban: B'
  },
  'part-29-52': {
    soal: 'Tentukan bilangan selanjutnya pada deret berikut:\n\n$$\n9, \\quad 36, \\quad 26, \\quad 104, \\quad 84, \\quad 336, \\quad \\dots\n$$',
    pembahasan: '* **Langkah Penyelesaian:**\n\n  ![gambar](/gambar/4d7b1672e76a.png)\n\nJawaban: E'
  },

  // --- PART 36 ---
  'part-36-37': {
    soal: 'Hasil dari operasi hitung berikut adalah:\n\n$$\n2\\ \\frac{\\frac{1}{3}}{\\frac{1}{6}} + \\left(\\frac{1}{2} - \\left(-\\frac{1}{4}\\right)\\right) \\div \\frac{3}{5} \\times 2 = \\dots\n$$',
    pembahasan: '* **Langkah Penyelesaian:**\n\n  $$2\\ \\frac{\\frac{1}{3}}{\\frac{1}{6}} + \\left(\\frac{1}{2} - \\left(-\\frac{1}{4}\\right)\\right) \\div \\frac{3}{5} \\times 2 = 2 + \\left(\\frac{1}{3} \\times \\frac{6}{1}\\right) + \\left(\\frac{1}{2} + \\frac{1}{4}\\right) \\div \\frac{3}{5} \\times 2$$\n\n  $$= 2 + 2 + \\left(\\frac{3}{4}\\right) \\div \\frac{3}{5} \\times 2$$\n\n  $$= 4 + \\left(\\frac{3}{4} \\times \\frac{5}{3}\\right) \\times 2$$\n\n  $$= 4 + \\frac{5}{4} \\times 2$$\n\n  $$= 4 + 2{,}5$$\n\n  $$= 6{,}5$$\n\nJawaban: C',
    opsi: { A: '5,5', B: '6', C: '6,5', D: '7,5', E: '7' }
  },

  // --- PART 37 ---
  'part-37-38': {
    soal: 'Hasil dari operasi hitung berikut adalah:\n\n$$\n\\frac{5}{6} \\times 1{,}2 - \\frac{3}{5} \\div \\frac{9}{10} + 2 = \\dots\n$$',
    pembahasan: '* **Langkah Penyelesaian:**\n\n  $$\\frac{5}{6} \\times 1{,}2 - \\frac{3}{5} \\div \\frac{9}{10} + 2 = \\frac{5}{6} \\times \\frac{12}{10} - \\frac{3}{5} \\times \\frac{10}{9} + 2$$\n\n  $$= 1 - \\frac{2}{3} + 2$$\n\n  $$= \\frac{1}{3} + 2$$\n\n  $$= \\frac{7}{3}$$\n\n  $$= 2\\ \\frac{1}{3}$$\n\nJawaban: A',
    opsi: { A: '$2\\ \\frac{1}{3}$', B: '$2\\ \\frac{1}{2}$', C: '$3\\ \\frac{1}{3}$', D: '$3\\ \\frac{1}{2}$', E: '$4$' }
  },
  'part-37-39': {
    soal: 'Hasil dari operasi hitung berikut adalah:\n\n$$\n\\frac{3}{4} \\times 1{,}2 + \\frac{1}{5} \\div \\frac{2}{10} = \\dots\n$$',
    pembahasan: '* **Langkah Penyelesaian:**\n\n  $$\\frac{3}{4} \\times 1{,}2 + \\frac{1}{5} \\div \\frac{2}{10} = \\frac{3}{4} \\times \\frac{12}{10} + \\frac{1}{5} \\div \\frac{2}{10}$$\n\n  $$= \\frac{3}{4} \\times \\frac{12}{10} + \\frac{1}{5} \\times \\frac{10}{2}$$\n\n  $$= \\frac{9}{10} + 1$$\n\n  $$= \\frac{9 + 10}{10} = \\frac{19}{10} = 1{,}9$$\n\nJawaban: C',
    opsi: { A: '1,3', B: '1,5', C: '1,9', D: '2,0', E: '2,3' }
  },
  'part-37-40': {
    soal: 'Hasil dari operasi hitung berikut adalah:\n\n$$\n2 + \\frac{3}{4} - \\frac{1}{2} = \\dots\n$$',
    pembahasan: '* **Langkah Penyelesaian:**\n\n  $$2 + \\frac{3}{4} - \\frac{1}{2} = 2 + 0{,}75 - 0{,}5$$\n\n  $$= 2 + 0{,}25$$\n\n  $$= 2{,}25$$\n\nJawaban: C',
    opsi: { A: '1,75', B: '2', C: '2,25', D: '2,5', E: '3,25' }
  },
  'part-37-41': {
    opsi: { A: '$A > B$', B: '$A < B$', C: '$A = B$', D: '$2A = 3B$', E: '$3A = 2B$' }
  },
  'part-37-42': {
    opsi: { A: '$A > B$', B: '$A < B$', C: '$A = B$', D: '$2A = B$', E: '$B = 2A$' }
  },
  'part-37-43': {
    opsi: { A: '$A > B$', B: '$A < B$', C: '$A = B$', D: '$A = 2B$', E: '$2A = B$' }
  },
  'part-37-44': {
    opsi: { A: '$A = B$', B: '$A > B$', C: '$A < B$', D: '$2A = B$', E: '$B = 2A$' }
  },
  'part-37-51': {
    soal: 'Tentukan bilangan yang mengisi titik-titik pada deret berikut:\n\n$$\n\\dots, \\quad 8, \\quad 16, \\quad 19, \\quad 38, \\quad 41, \\quad 82\n$$',
    pembahasan: '* **Langkah Penyelesaian:**\n\n  ![gambar](/gambar/6071a3dd89a6.png)\n\nJawaban: E'
  },
  'part-37-52': {
    soal: 'Tentukan bilangan yang mengisi titik-titik pada deret berikut:\n\n$$\n-1, \\quad -4, \\quad \\dots, \\quad -8, \\quad -9, \\quad -12, \\quad -27\n$$',
    pembahasan: '* **Langkah Penyelesaian:**\n\n  ![gambar](/gambar/29d3aefd3de8.png)\n\nJawaban: C'
  },
  'part-37-53': {
    soal: 'Tentukan bilangan yang mengisi titik-titik pada deret berikut:\n\n$$\n3, \\quad 15, \\quad 5, \\quad 25, \\quad 15, \\quad 75, \\quad \\dots, \\quad 325\n$$',
    pembahasan: '* **Langkah Penyelesaian:**\n\n  ![gambar](/gambar/e9fe08430e96.png)\n\nJawaban: C'
  },

  // --- PART 38 ---
  'part-38-38': {
    soal: 'Hasil dari operasi hitung berikut adalah:\n\n$$\n3\\ \\frac{3}{4} + 11\\left(2\\ \\frac{2}{11}\\right) - \\frac{3}{4} - \\frac{9}{\\left(-\\frac{1}{3}\\right)} = \\dots\n$$',
    pembahasan: '* **Langkah Penyelesaian:**\n\n  $$3\\ \\frac{3}{4} + 11\\left(2\\ \\frac{2}{11}\\right) - \\frac{3}{4} - \\frac{9}{\\left(-\\frac{1}{3}\\right)} = 3 + \\cancel{\\frac{3}{4}} + \\cancel{11}\\left(\\frac{24}{\\cancel{11}}\\right) - \\cancel{\\frac{3}{4}} + 27$$\n\n  $$= 3 + 24 + 27$$\n\n  $$= 54$$\n\nJawaban: C',
    opsi: { A: '0', B: '27', C: '54', D: '-54', E: '24' }
  },
  'part-38-39': {
    soal: 'Hasil dari operasi hitung berikut adalah:\n\n$$\n180 \\times \\frac{7 \\times 4}{36} \\div \\frac{5}{11} = \\dots\n$$',
    pembahasan: '* **Langkah Penyelesaian:**\n\n  $$180 \\times \\frac{7 \\times 4}{36} \\div \\frac{5}{11} = \\cancel{180} \\times \\frac{7 \\times 4}{\\cancel{36}} \\times \\frac{11}{5}$$\n\n  $$= \\cancel{5} \\times 7 \\times 4 \\times \\frac{11}{\\cancel{5}}$$\n\n  $$= 7 \\times 4 \\times 11 = 308$$\n\nJawaban: A',
    opsi: { A: '308', B: '230', C: '210', D: '140', E: '110' }
  },
  'part-38-40': {
    soal: 'Hasil dari operasi hitung berikut adalah:\n\n$$\n7\\ \\frac{1}{2} - 2 + \\frac{1}{2} = \\dots\n$$',
    pembahasan: '* **Langkah Penyelesaian:**\n\n  $$7\\ \\frac{1}{2} - 2 + \\frac{1}{2} = \\frac{15}{2} - 2 + \\frac{1}{2}$$\n\n  $$= \\frac{16}{2} - 2$$\n\n  $$= 8 - 2 = 6$$\n\nJawaban: E',
    opsi: { A: '10', B: '9', C: '8', D: '7', E: '6' }
  },
  'part-38-41': {
    opsi: { A: '$A < B$', B: '$2A < 3B$', C: '$A > 2B$', D: '$4A > 5B$', E: '$3A = 5B$' }
  },
  'part-38-43': {
    opsi: {
      A: '$2P > 3Q$',
      B: '$2P < 2Q$',
      C: '$4P = 2Q$',
      D: '$3P > 3Q$',
      E: 'Hubungan P dan Q tidak dapat ditentukan'
    }
  },
  'part-38-51': {
    soal: 'Tentukan bilangan selanjutnya pada deret berikut:\n\n$$\n-2, \\quad -4, \\quad -8, \\quad -16, \\quad -32, \\quad \\dots\n$$',
    pembahasan: '* **Langkah Penyelesaian:**\n\n  ![gambar](/gambar/0a4ede9fa56a.png)\n\nJawaban: E'
  },
  'part-38-52': {
    soal: 'Tentukan bilangan yang mengisi titik-titik pada deret berikut:\n\n$$\n3, \\quad 5, \\quad 9, \\quad 17, \\quad \\dots, \\quad 65\n$$',
    pembahasan: '* **Langkah Penyelesaian:**\n\n  ![gambar](/gambar/5a6bd839e8ca.png)\n\nJawaban: A'
  },
  'part-38-53': {
    soal: 'Tentukan bilangan selanjutnya pada deret berikut:\n\n$$\n1, \\quad 3, \\quad \\frac{11}{5}, \\quad \\frac{16}{14}, \\quad \\dots\n$$',
    pembahasan: '* **Langkah Penyelesaian:**\n\n  ![gambar](/gambar/68c643ffd89e.png)\n\nJawaban: A',
    opsi: {
      A: '$\\frac{21}{41}$',
      B: '$\\frac{21}{32}$',
      C: '$\\frac{21}{28}$',
      D: '$\\frac{32}{21}$',
      E: '$\\frac{41}{21}$'
    }
  }
};

let updatedCount = 0;
const sqlStatements = [
  '--',
  '-- Migration 021: Standardize All Numerik & Deret Questions Like Part 27 and 28',
  '--',
  'BEGIN;',
  ''
];

allQuestions.forEach(q => {
  const key = `${q.sumber}-${q.nomor}`;
  const spec = standardizedMap[key];
  if (spec) {
    if (spec.soal) q.soal = spec.soal;
    if (spec.pembahasan) q.pembahasan = spec.pembahasan;
    if (spec.opsi) q.opsi = { ...q.opsi, ...spec.opsi };
    q.gambar_url = null; // Clean top image since inline is perfect

    updatedCount++;
    const escSoal = q.soal.replace(/'/g, "''");
    const escPemb = q.pembahasan.replace(/'/g, "''");
    const escOpsi = JSON.stringify(q.opsi).replace(/'/g, "''");

    sqlStatements.push(
      `UPDATE questions SET soal = '${escSoal}', opsi = '${escOpsi}'::jsonb, pembahasan = '${escPemb}', gambar_url = NULL WHERE id = '${q.id}';`
    );
  }
});

sqlStatements.push('\nCOMMIT;\n');

console.log(`Soal terstandarisasi: ${updatedCount} butir.`);

// Save to bank_soal_lengkap_skd.json
fs.writeFileSync(allPath, JSON.stringify(allQuestions, null, 2), 'utf8');
console.log(`Saved to ${allPath}`);

// Save to soal_part29_36_37_38.json
const partPath = 'soal/soal_part29_36_37_38.json';
const partList = JSON.parse(fs.readFileSync(partPath, 'utf8'));
partList.forEach(q => {
  const key = `${q.sumber}-${q.nomor}`;
  const spec = standardizedMap[key];
  if (spec) {
    if (spec.soal) q.soal = spec.soal;
    if (spec.pembahasan) q.pembahasan = spec.pembahasan;
    if (spec.opsi) q.opsi = { ...q.opsi, ...spec.opsi };
    q.gambar_url = null;
  }
});
fs.writeFileSync(partPath, JSON.stringify(partList, null, 2), 'utf8');
console.log(`Saved to ${partPath}`);

// Save SQL
const sqlPath = 'supabase/migrations/021_standardize_all_math_like_part27_28.sql';
fs.writeFileSync(sqlPath, sqlStatements.join('\n'), 'utf8');
console.log(`Saved SQL migration to ${sqlPath}`);
