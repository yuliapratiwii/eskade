const fs = require('fs');
const path = require('path');
const { createClient } = require('../web/node_modules/@supabase/supabase-js');

// Baca .env.local
let envContent = '';
if (fs.existsSync('web/.env.local')) {
  envContent = fs.readFileSync('web/.env.local', 'utf8');
} else if (fs.existsSync('.env.local')) {
  envContent = fs.readFileSync('.env.local', 'utf8');
}

let supabaseUrl = '';
let supabaseKey = '';

for (const line of envContent.split('\n')) {
  if (line.startsWith('NEXT_PUBLIC_SUPABASE_URL=')) supabaseUrl = line.split('=')[1].trim();
  if (line.startsWith('NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY=')) supabaseKey = line.split('=')[1].trim();
}

if (!supabaseUrl || !supabaseKey) {
  console.error('URL atau Key Supabase tidak ditemukan di .env.local');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);

async function uploadFolder(folderName) {
  const localDir = path.join('web', 'public', folderName);
  if (!fs.existsSync(localDir)) {
    console.log(`Folder lokal ${localDir} tidak ditemukan.`);
    return;
  }

  const files = fs.readdirSync(localDir).filter((f) => f.endsWith('.png'));
  console.log(`Mengunggah ${files.length} file dari folder ${folderName}...`);

  let successCount = 0;
  let failCount = 0;

  for (const file of files) {
    const filePath = path.join(localDir, file);
    const fileBuffer = fs.readFileSync(filePath);
    const storagePath = `${folderName}/${file}`;

    const { error } = await supabase.storage
      .from('soal-img')
      .upload(storagePath, fileBuffer, {
        contentType: 'image/png',
        upsert: true,
      });

    if (error) {
      failCount++;
      // Jika RLS menolak, jangan spam pesan error
      if (failCount === 1) {
        console.error(`Gagal upload (${file}):`, error.message);
      }
    } else {
      successCount++;
    }
  }

  console.log(`Hasil upload ${folderName}: ${successCount} sukses, ${failCount} gagal.`);
}

async function main() {
  console.log('--- Upload Gambar ke Bucket Supabase Storage: soal-img ---');
  await uploadFolder('gambar_figural');
  await uploadFolder('gambar_figural_part_28');
  await uploadFolder('gambar_part_28');
  console.log('--- Selesai ---');
}

main();
