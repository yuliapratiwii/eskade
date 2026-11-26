const fs = require('fs');
const path = require('path');
const data = JSON.parse(fs.readFileSync('scrapt/alfaiz_soal.json', 'utf8'));

const targetParts = ['PART 29', 'PART 36', 'PART 37', 'PART 38'];
const targetQuestions = data.filter(q => targetParts.some(p => q.paket.includes(p)) && q.subtes !== 'TKP');

console.log('Non-TKP questions count:', targetQuestions.length);

const allImages = new Set();
targetQuestions.forEach(q => {
  if (q.gambar) q.gambar.forEach(g => allImages.add(g));

  const checkHtml = (html) => {
    if (!html) return;
    const regex = /src=["']([^"']+)["']/g;
    let m;
    while ((m = regex.exec(html)) !== null) {
      if (!m[1].startsWith('data:')) {
        allImages.add(m[1]);
      }
    }
  };

  checkHtml(q.soal_html);
  checkHtml(q.pembahasan_html);
  if (q.opsi_html) {
    Object.values(q.opsi_html).forEach(checkHtml);
  }
});

console.log('Total unique images referenced:', allImages.size);
const imgList = Array.from(allImages);

let existCount = 0;
let missing = [];
imgList.forEach(rel => {
  const cleanRel = rel.replace(/^gambar\//, '').replace(/^.*\/Images\/SoalFile\//, '');
  const p1 = path.join('scrapt/gambar', cleanRel);
  const p2 = path.join('scrapt', rel);
  if (fs.existsSync(p1) || fs.existsSync(p2)) {
    existCount++;
  } else {
    missing.push(rel);
  }
});

console.log('Images found on disk in scrapt:', existCount, '/', imgList.length);
if (missing.length > 0) {
  console.log('Missing images:', missing.slice(0, 10));
}
