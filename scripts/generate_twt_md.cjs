const fs = require('fs');
const path = require('path');

const { twkQuestions } = require('./twt_twk.cjs');
const { tiuQuestions } = require('./twt_tiu.cjs');
const { tkpQuestions } = require('./twt_tkp.cjs');

let md = `# Kumpulan Soal dan Pembahasan Bank Soal I SKD CPNS 2026 (Twitter / twt)
**Penyusun:** Muh. Aidil Fitrah (@aihiforal)  
**Total Soal:** 100 Butir (TWK: 30, TIU: 40, TKP: 30)

---

## Bagian I: Tes Wawasan Kebangsaan (TWK)

---
`;

twkQuestions.forEach((q) => {
  md += `\n### Soal Nomor ${q.nomor} (TWK - ${q.topik})\n\n`;
  md += `${q.soal}\n\n`;
  for (const opt of ['A', 'B', 'C', 'D', 'E']) {
    md += `* **${opt}.** ${q.opsi[opt]}\n`;
  }
  md += `\n#### Pembahasan Nomor ${q.nomor}\n\n`;
  md += `* **Jawaban:** **${q.kunci}**\n`;
  md += `* **Penjelasan:**\n  ${q.pembahasan}\n\n---\n`;
});

md += `\n## Bagian II: Tes Intelegensia Umum (TIU)\n\n---\n`;

tiuQuestions.forEach((q) => {
  md += `\n### Soal Nomor ${q.nomor} (TIU - ${q.topik})\n\n`;
  md += `${q.soal}\n\n`;
  for (const opt of ['A', 'B', 'C', 'D', 'E']) {
    md += `* **${opt}.** ${q.opsi[opt]}\n`;
  }
  md += `\n#### Pembahasan Nomor ${q.nomor}\n\n`;
  md += `* **Jawaban:** **${q.kunci}**\n`;
  md += `* **Penjelasan:**\n  ${q.pembahasan}\n\n---\n`;
});

md += `\n## Bagian III: Tes Karakteristik Pribadi (TKP)\n\n---\n`;

tkpQuestions.forEach((q) => {
  md += `\n### Soal Nomor ${q.nomor} (TKP - ${q.topik})\n\n`;
  md += `${q.soal}\n\n`;
  for (const opt of ['A', 'B', 'C', 'D', 'E']) {
    const skor = q.skor_tkp ? q.skor_tkp[opt] : '-';
    md += `* **${opt}.** ${q.opsi[opt]} *(Skor: ${skor})*\n`;
  }
  md += `\n#### Pembahasan Nomor ${q.nomor}\n\n`;
  md += `* **Opsi Terbaik (Skor 5):** **${q.kunci}**\n`;
  if (q.skor_tkp) {
    md += `* **Bobot Skor:** A=${q.skor_tkp.A}, B=${q.skor_tkp.B}, C=${q.skor_tkp.C}, D=${q.skor_tkp.D}, E=${q.skor_tkp.E}\n`;
  }
  md += `* **Penjelasan:**\n  ${q.pembahasan}\n\n---\n`;
});

const targetPath = path.resolve('soal/kumpulan_soal_dan_pembahasan_skd_twt.md');
fs.writeFileSync(targetPath, md, 'utf8');
console.log('Successfully written to:', targetPath, 'Size:', (md.length / 1024).toFixed(1), 'KB');
