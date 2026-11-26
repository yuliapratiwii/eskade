const fs = require('fs');
const path = require('path');

const rawData = JSON.parse(fs.readFileSync('soal.json', 'utf8'));

// 1. Perbaiki typo LaTeX di Part 28 Nomor 61 dan Nomor 63
let fixedCount = 0;
rawData.forEach((q) => {
  if (q.sumber === 'part-28' && q.nomor === 61) {
    if (q.pembahasan.includes('pola  \\text{ cabang (tengah)}')) {
      q.pembahasan = q.pembahasan.replace(
        'pola  \\text{ cabang (tengah)}',
        'pola $4 \\text{ cabang (tengah)}'
      );
      fixedCount++;
    }
  }

  if (q.sumber === 'part-28' && q.nomor === 63) {
    // Ganti semua kemunculan ^\circ$ menjadi $90^\circ$
    const before = q.pembahasan;
    q.pembahasan = q.pembahasan.replaceAll('^\\circ$', '$90^\\circ$');
    if (q.pembahasan !== before) {
      fixedCount++;
    }
  }

  // 2. Normalisasi status publikasi agar langsung bisa dikerjakan di try out
  q.status = 'published';

  // 3. Normalisasi path gambar lokal agar memiliki leading slash & nama field sesuai skema
  let g = q.gambar || q.gambar_url || null;
  if (g) {
    g = g.trim();
    if (!g.startsWith('/') && !g.startsWith('http')) {
      g = '/' + g;
    }
  }
  q.gambar = g;
  q.gambar_url = g;

  let pg = q.pembahasanGambar || q.pembahasan_gambar || null;
  if (pg) {
    pg = pg.trim();
    if (!pg.startsWith('/') && !pg.startsWith('http')) {
      pg = '/' + pg;
    }
  }
  q.pembahasanGambar = pg;
  q.pembahasan_gambar = pg;
});

console.log(`Berhasil memperbaiki typo dan menormalisasi ${rawData.length} soal.`);

// 4. Verifikasi Math Delimiters & Gambar Fisik
let mathIssueCount = 0;
let missingImageCount = 0;

rawData.forEach((q) => {
  const countDollar = (str) => (str.match(/(?<!\\)\$/g) || []).length;
  const sCount = countDollar(q.soal || '');
  const pCount = countDollar(q.pembahasan || '');

  if (sCount % 2 !== 0) {
    console.warn(`[Math Warning] Soal ${q.sumber} #${q.nomor} memiliki simbol $ tidak seimbang (${sCount})`);
    mathIssueCount++;
  }
  if (pCount % 2 !== 0) {
    console.warn(`[Math Warning] Pembahasan ${q.sumber} #${q.nomor} memiliki simbol $ tidak seimbang (${pCount})`);
    mathIssueCount++;
  }

  // Cek apakah file gambar ada di web/public/
  if (q.gambar && q.gambar.startsWith('/')) {
    const localFile = path.join('web', 'public', q.gambar);
    if (!fs.existsSync(localFile)) {
      console.warn(`[Image Warning] File gambar soal tidak ditemukan di web/public: ${q.gambar}`);
      missingImageCount++;
    }
  }
  if (q.pembahasanGambar && q.pembahasanGambar.startsWith('/')) {
    const localFile = path.join('web', 'public', q.pembahasanGambar);
    if (!fs.existsSync(localFile)) {
      console.warn(`[Image Warning] File gambar pembahasan tidak ditemukan di web/public: ${q.pembahasanGambar}`);
      missingImageCount++;
    }
  }
});

console.log(`Verifikasi Math Issues: ${mathIssueCount}, Missing Images: ${missingImageCount}`);

// 5. Tulis file JSON bersih untuk impor di /admin/impor
fs.writeFileSync('web/public/soal_clean.json', JSON.stringify(rawData, null, 2), 'utf8');
console.log('Tersimpan di web/public/soal_clean.json');

// 6. Buat file SQL migration lengkap untuk di-run di Supabase SQL Editor
if (!fs.existsSync('supabase')) {
  fs.mkdirSync('supabase');
}
if (!fs.existsSync('supabase/migrations')) {
  fs.mkdirSync('supabase/migrations');
}

const escapeSql = (str) => {
  if (str === null || str === undefined) return 'NULL';
  return `'${String(str).replace(/'/g, "''")}'`;
};

let sqlContent = `-- SQL Migration: Buat bucket soal-img dan Seed 129 Soal SKD CPNS Lengkap
-- Jalankan di Supabase Dashboard: SQL Editor > New query > Paste > Run

-- 1. Buat bucket storage 'soal-img' jika belum ada
insert into storage.buckets (id, name, public)
values ('soal-img', 'soal-img', true)
on conflict (id) do nothing;

-- 2. Kebijakan akses storage bucket soal-img
do $$
begin
  if not exists (
    select 1 from pg_policies
    where schemaname = 'storage' and tablename = 'objects' and policyname = 'gambar publik'
  ) then
    create policy "gambar publik" on storage.objects for select using (bucket_id = 'soal-img');
  end if;
end $$;

-- 3. Masukkan 129 Soal SKD CPNS (TWK, TIU Math, TIU Figural)
insert into questions (
  sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, kunci, pembahasan, pembahasan_gambar, status
)
values
`;

const valuesList = rawData.map((q) => {
  const opsiJson = JSON.stringify(q.opsi || {});
  return `(
  ${escapeSql(q.sumber)},
  ${parseInt(q.nomor)},
  ${escapeSql(q.subtes)},
  ${escapeSql(q.topik)},
  ${escapeSql(q.level || 'sedang')},
  ${escapeSql(q.soal)},
  ${escapeSql(q.gambar)},
  ${escapeSql(opsiJson)}::jsonb,
  ${escapeSql(q.kunci)},
  ${escapeSql(q.pembahasan)},
  ${escapeSql(q.pembahasanGambar)},
  'published'
)`;
});

sqlContent += valuesList.join(',\n');
sqlContent += `
on conflict (sumber, nomor) do update set
  subtes = excluded.subtes,
  topik = excluded.topik,
  level = excluded.level,
  soal = excluded.soal,
  gambar_url = excluded.gambar_url,
  opsi = excluded.opsi,
  kunci = excluded.kunci,
  pembahasan = excluded.pembahasan,
  pembahasan_gambar = excluded.pembahasan_gambar,
  status = 'published';
`;

fs.writeFileSync('supabase/migrations/003_seed_soal.sql', sqlContent, 'utf8');
console.log('Tersimpan di supabase/migrations/003_seed_soal.sql');
