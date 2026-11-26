const fs = require('fs');

function parseMarkdownQuestions(filePath, sumberName) {
  const content = fs.readFileSync(filePath, 'utf8');
  const sections = content.split(/### Soal Nomor /);
  const questions = [];

  for (let i = 1; i < sections.length; i++) {
    const sec = sections[i];
    const matchNomor = sec.match(/^(\d+)/);
    if (!matchNomor) continue;
    const nomor = parseInt(matchNomor[1], 10);
    if (nomor < 57) continue;

    // Subtes & Topik
    const subtes = 'TIU';
    let topik = 'Kemampuan Figural';
    if (sec.includes('Serial')) topik = 'Figural Serial';
    else if (sec.includes('Analogi')) topik = 'Figural Analogi';
    else if (sec.includes('Ketaksamaan')) topik = 'Figural Ketaksamaan';
    else if (sec.includes('Matriks') || sec.includes('9 Kotak')) topik = 'Figural Matriks 9 Kotak';

    // Gambar URL
    const imgMatch = sec.match(/!\[.*?\]\((gambar\/part\d+_soal_\d+\.png)\)/);
    const gambar_url = imgMatch ? '/' + imgMatch[1] : null;

    // Pembahasan Gambar
    const pembImgMatch = sec.match(/!\[.*?\]\((gambar\/part\d+_pembahasan_\d+\.png)\)/);
    const pembahasan_gambar = pembImgMatch ? '/' + pembImgMatch[1] : null;

    // Opsi
    const opsi = {
      A: 'Opsi A',
      B: 'Opsi B',
      C: 'Opsi C',
      D: 'Opsi D',
      E: 'Opsi E'
    };

    // Kunci
    const kunciMatch = sec.match(/\* \*\*Jawaban:\*\* \*\*([A-E])\*\*/i);
    const kunci = kunciMatch ? kunciMatch[1].toUpperCase() : null;

    // Soal teks
    const lines = sec.split('\n');
    const soalLines = [];
    let readingSoal = false;
    for (const l of lines) {
      if (l.startsWith('#### Pembahasan')) break;
      if (l.startsWith('* **Pilihan Jawaban') || l.startsWith('* **A.')) break;
      if (readingSoal) {
        soalLines.push(l);
      } else if (l.includes('(PG)')) {
        readingSoal = true;
      }
    }
    const soal = soalLines.join('\n').trim();

    // Pembahasan teks
    let pembahasan = '';
    const pembSplit = sec.split(/#### Pembahasan Nomor \d+/);
    if (pembSplit.length > 1) {
      pembahasan = pembSplit[1].trim();
    } else {
      const altSplit = sec.split(/#### Pembahasan/);
      if (altSplit.length > 1) pembahasan = altSplit[1].trim();
    }

    questions.push({
      sumber: sumberName,
      nomor,
      subtes,
      topik,
      level: nomor >= 63 ? 'sulit' : 'sedang',
      soal,
      gambar_url,
      opsi,
      kunci,
      pembahasan,
      pembahasan_gambar,
      status: 'published'
    });
  }
  return questions;
}

const q27 = parseMarkdownQuestions('soal/kumpulan_soal_dan_pembahasan_tiu_part_27.md', 'part-27');
const q28 = parseMarkdownQuestions('soal/kumpulan_soal_dan_pembahasan_skd_part_28.md', 'part-28');

console.log('Parsed Part 27 figural (' + q27.length + ' questions):');
q27.forEach(q => console.log(`  #${q.nomor} [${q.topik}] Kunci: ${q.kunci} | img: ${q.gambar_url} | pemb_img: ${q.pembahasan_gambar}`));

console.log('\nParsed Part 28 figural (' + q28.length + ' questions):');
q28.forEach(q => console.log(`  #${q.nomor} [${q.topik}] Kunci: ${q.kunci} | img: ${q.gambar_url} | pemb_img: ${q.pembahasan_gambar}`));

fs.writeFileSync('scripts/parsed_figural_18.json', JSON.stringify([...q27, ...q28], null, 2));
