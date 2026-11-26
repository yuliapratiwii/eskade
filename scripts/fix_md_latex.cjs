const fs = require('fs');

const path = 'soal/kumpulan_soal_dan_pembahasan_skd_part_28.md';
let content = fs.readFileSync(path, 'utf8');

// Replace any occurrence of $90$90^\circ$ or $90^\circ$ issues
content = content.replaceAll('$90$90^\\circ$', '$90^\\circ$');
content = content.replaceAll('$90$90', '$90');

fs.writeFileSync(path, content, 'utf8');
console.log('Fixed markdown file successfully!');
