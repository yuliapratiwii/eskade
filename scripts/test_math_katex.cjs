const fs = require('fs');
const katex = require('../web/node_modules/katex');

function cleanLatex(text) {
  if (!text) return text;
  return text
    .replace(/\\\[([\s\S]*?)\\\]/g, (match, formula) => {
      const clean = formula.replace(/\\\s+/g, ' ').trim();
      return '$$' + clean + '$$';
    })
    .replace(/\\\(([\s\S]*?)\\\)/g, (match, formula) => {
      const clean = formula.replace(/\\\s+/g, ' ').trim();
      return '$' + clean + '$';
    })
    .replace(/\\\s*([><=])/g, '$1');
}

const list = JSON.parse(fs.readFileSync('soal/soal_part29_36_37_38.json', 'utf8'));
let totalMath = 0;
let errors = [];

list.forEach(q => {
  ['soal', 'pembahasan'].forEach(f => {
    if (q[f]) {
      const cleaned = cleanLatex(q[f]);
      const regex = /\$\$([\s\S]*?)\$\$|\$([^$]+)\$/g;
      let m;
      while ((m = regex.exec(cleaned)) !== null) {
        totalMath++;
        const math = m[1] || m[2];
        try {
          katex.renderToString(math, { throwOnError: false });
        } catch (e) {
          errors.push({ sumber: q.sumber, nomor: q.nomor, f, math, err: e.message });
        }
      }
    }
  });
  if (q.opsi) {
    Object.entries(q.opsi).forEach(([k, v]) => {
      const cleaned = cleanLatex(v);
      const regex = /\$\$([\s\S]*?)\$\$|\$([^$]+)\$/g;
      let m;
      while ((m = regex.exec(cleaned)) !== null) {
        totalMath++;
        const math = m[1] || m[2];
        try {
          katex.renderToString(math, { throwOnError: false });
        } catch (e) {
          errors.push({ sumber: q.sumber, nomor: q.nomor, opsi: k, math, err: e.message });
        }
      }
    });
  }
});

console.log('Total math expressions tested:', totalMath);
console.log('Errors found:', errors.length);
if (errors.length > 0) console.log(errors);
