const fs = require('fs');
const path = require('path');

const data = JSON.parse(fs.readFileSync('scrapt/part.json', 'utf8'));
const tkp = data.filter(d => d.subtes === 'TKP');

function parseExplanation(text) {
  const scores = {};

  // Clean non-breaking spaces
  const clean = text.replace(/\u00a0/g, ' ');

  // Split into sentences or clauses
  const parts = clean.split(/(?<=[.!?])\s+|\n+/);

  for (const p of parts) {
    // Check for each option letter A, B, C, D, E
    for (const opt of ['A', 'B', 'C', 'D', 'E']) {
      // Matches "Pilihan A ... skor 5", "Pilihan terbaik adalah C ... skor 5", "A bernilai 3", "C menjadi yang terendah"
      const optPattern = new RegExp(`(?:Pilihan|Opsi|Jawaban)?\\s*\\b${opt}\\b`, 'i');
      if (optPattern.test(p)) {
        // Look for score in this sentence
        const scoreMatch = p.match(/(?:skor|bernilai|nilai|poin)\s*(?:adalah\s*)?(\d)/i) ||
                           p.match(/(\d)\s*(?:poin|skor)/i);
        if (scoreMatch) {
          const val = parseInt(scoreMatch[1]);
          if (val >= 1 && val <= 5 && !scores[opt]) {
            scores[opt] = val;
          }
        } else if (/paling rendah|terendah|paling tidak tepat/i.test(p)) {
          if (!scores[opt]) scores[opt] = 1;
        } else if (/paling tepat|terbaik|paling sesuai/i.test(p) && /sehingga\s*(?:layak|mendapat)?/i.test(p)) {
          // Sometimes "sehingga mendapat skor 5" is at end of sentence
          const endScore = p.match(/skor\s*(\d)/i);
          if (endScore && !scores[opt]) {
            scores[opt] = parseInt(endScore[1]);
          }
        }
      }
    }
  }

  // Deduce if 4 options found
  const foundVals = Object.values(scores);
  if (Object.keys(scores).length === 4) {
    const allVals = [1, 2, 3, 4, 5];
    const missingVal = allVals.find(v => !foundVals.includes(v));
    const missingOpt = ['A', 'B', 'C', 'D', 'E'].find(o => !scores[o]);
    if (missingVal && missingOpt) {
      scores[missingOpt] = missingVal;
    }
  }

  return scores;
}

let complete = 0;
const incomplete = [];

tkp.forEach((q, idx) => {
  const sc = parseExplanation(q.pembahasan);
  const vals = Object.values(sc).sort().join('');
  if (vals === '12345') {
    complete++;
  } else {
    incomplete.push({ idx: idx + 1, no: q.no, paket: q.paket, sc, pembahasan: q.pembahasan });
  }
});

console.log(`Berhasil mengekstrak lengkap (1-5): ${complete} / ${tkp.length}`);
console.log(`Belum lengkap: ${incomplete.length}`);

if (incomplete.length > 0) {
  console.log('\nContoh yang belum lengkap:');
  incomplete.slice(0, 5).forEach(inc => {
    console.log(`--- No ${inc.no} (${inc.paket}) ---`);
    console.log('Skor terdeteksi:', inc.sc);
    console.log('Pembahasan:', inc.pembahasan.slice(0, 300));
  });
}
