const { createClient } = require('@supabase/supabase-js');
const fs = require('fs');

const supabaseUrl = 'https://fwlvolngneqjwscsdarh.supabase.co';
const supabaseKey = 'sb_publishable_zFmsKujCniwZ3x1zIZUu0w_dppJoWJo';
const supabase = createClient(supabaseUrl, supabaseKey);

async function verify() {
  console.log('=== VERIFIKASI HASIL EKSEKUSI MIGRATION 012 & 013 DI SUPABASE ===\n');

  // 1. Total jumlah soal
  const { count, error: countErr } = await supabase
    .from('questions')
    .select('*', { count: 'exact', head: true });

  if (countErr) {
    console.error('Error saat fetch count:', countErr);
    return;
  }
  console.log(`✓ Total butir soal saat ini: ${count} butir`);

  // 2. Cek keberadaan soal figural Part 27 (#57-65) dan Part 28 (#57-65)
  const { data: p27Figural } = await supabase
    .from('questions')
    .select('nomor, subtes, topik, gambar_url, kunci, pembahasan_gambar')
    .eq('sumber', 'part-27')
    .gte('nomor', 57)
    .lte('nomor', 65)
    .order('nomor', { ascending: true });

  const { data: p28Figural } = await supabase
    .from('questions')
    .select('nomor, subtes, topik, gambar_url, kunci, pembahasan_gambar')
    .eq('sumber', 'part-28')
    .gte('nomor', 57)
    .lte('nomor', 65)
    .order('nomor', { ascending: true });

  console.log(`\n✓ Soal Figural Part 27 (#57-65): ${p27Figural ? p27Figural.length : 0} / 9 butir`);
  if (p27Figural && p27Figural.length > 0) {
    p27Figural.forEach(q => console.log(`   #${q.nomor} [${q.topik}] Kunci: ${q.kunci} | ${q.gambar_url}`));
  }

  console.log(`\n✓ Soal Figural Part 28 (#57-65): ${p28Figural ? p28Figural.length : 0} / 9 butir`);
  if (p28Figural && p28Figural.length > 0) {
    p28Figural.forEach(q => console.log(`   #${q.nomor} [${q.topik}] Kunci: ${q.kunci} | ${q.gambar_url}`));
  }

  // 3. Cek sisa duplikasi di database
  let allQuestions = [];
  let page = 0;
  const pageSize = 1000;
  while (true) {
    const { data } = await supabase
      .from('questions')
      .select('id, sumber, nomor, soal')
      .range(page * pageSize, (page + 1) * pageSize - 1)
      .order('id', { ascending: true });
    if (!data || data.length === 0) break;
    allQuestions = allQuestions.concat(data);
    if (data.length < pageSize) break;
    page++;
  }

  const cleanStem = (str) =>
    (str || '')
      .toLowerCase()
      .replace(/<[^>]*>/g, '')
      .replace(/[^\w\s]/g, '')
      .replace(/\s+/g, ' ')
      .trim();

  const stemGroups = new Map();
  allQuestions.forEach((q) => {
    const norm = cleanStem(q.soal);
    if (norm.length < 15) return;
    if (!stemGroups.has(norm)) stemGroups.set(norm, []);
    stemGroups.get(norm).push(q);
  });

  const duplicateGroups = Array.from(stemGroups.entries()).filter(([_, list]) => list.length > 1);
  const remainingDuplicates = duplicateGroups.reduce((acc, [_, list]) => acc + list.length - 1, 0);

  console.log(`\n=== STATUS DUPLIKASI PASCA PEMBERSIHAN ===`);
  console.log(`- Kelompok soal duplikat tersisa: ${duplicateGroups.length}`);
  console.log(`- Butir soal salinan duplikat tersisa: ${remainingDuplicates}`);
  if (remainingDuplicates === 0) {
    console.log(`🎉 LUAR BIASA! Seluruh 595 soal duplikat telah BERSIH TOTAL (0 duplikat).`);
  }

  // 4. Periksa distribusi per sumber
  const sumberCount = {};
  allQuestions.forEach(q => {
    const s = q.sumber || 'tanpa-sumber';
    sumberCount[s] = (sumberCount[s] || 0) + 1;
  });
  console.log(`\n=== DISTRIBUSI SUMBER SOAL TERBARU ===`);
  Object.entries(sumberCount).sort((a,b) => b[1] - a[1]).forEach(([k, v]) => console.log(`  - ${k}: ${v} butir`));
}

verify().catch(console.error);
