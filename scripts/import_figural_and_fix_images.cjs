const { createClient } = require('@supabase/supabase-js');
const fs = require('fs');

const supabaseUrl = 'https://fwlvolngneqjwscsdarh.supabase.co';
const supabaseKey = 'sb_publishable_zFmsKujCniwZ3x1zIZUu0w_dppJoWJo';
const supabase = createClient(supabaseUrl, supabaseKey);

async function run() {
  console.log('=== 1. PERBAIKI 17 PATH GAMBAR LAMA DI SUPABASE ===');
  const { data: legacyImages, error: legErr } = await supabase
    .from('questions')
    .select('id, pembahasan_gambar')
    .like('pembahasan_gambar', '%gambar_part_28%');

  if (legErr) {
    console.error('Error fetch legacy images:', legErr);
  } else {
    console.log(`Ditemukan ${legacyImages.length} baris dengan path gambar lama.`);
    for (const row of legacyImages) {
      const filename = row.pembahasan_gambar.split('/').pop();
      const newPath = `/gambar/part28_${filename}`;
      const { error: upErr } = await supabase
        .from('questions')
        .update({ pembahasan_gambar: newPath })
        .eq('id', row.id);
      if (upErr) console.error(`Gagal update ID ${row.id}:`, upErr);
      else console.log(`✓ ID ${row.id}: ${row.pembahasan_gambar} -> ${newPath}`);
    }
  }

  console.log('\n=== 2. IMPOR 18 SOAL FIGURAL (PART 27 & 28 #57-65) KE SUPABASE ===');
  const figural18 = JSON.parse(fs.readFileSync('scripts/parsed_figural_18.json', 'utf8'));
  console.log(`Menyiapkan ${figural18.length} butir soal figural...`);

  // Periksa apakah sudah pernah dimasukkan agar tidak duplikat
  let insertedCount = 0;
  for (const q of figural18) {
    const { data: existing } = await supabase
      .from('questions')
      .select('id')
      .eq('sumber', q.sumber)
      .eq('nomor', q.nomor)
      .maybeSingle();

    if (existing) {
      console.log(`- Soal ${q.sumber} #${q.nomor} sudah ada (ID: ${existing.id}), update data...`);
      const { error: upErr } = await supabase
        .from('questions')
        .update(q)
        .eq('id', existing.id);
      if (upErr) console.error(`Error update:`, upErr);
      else insertedCount++;
    } else {
      console.log(`+ Menyisipkan ${q.sumber} #${q.nomor} (${q.topik})...`);
      const { error: inErr } = await supabase
        .from('questions')
        .insert(q);
      if (inErr) console.error(`Error insert:`, inErr);
      else insertedCount++;
    }
  }

  console.log(`\nSelesai! Berhasil memproses ${insertedCount} / ${figural18.length} butir soal figural.`);

  // Verifikasi total sekarang
  const { count: finalCount } = await supabase
    .from('questions')
    .select('*', { count: 'exact', head: true });
  console.log(`Total soal di database Supabase sekarang: ${finalCount} butir.`);
}

run().catch(console.error);
