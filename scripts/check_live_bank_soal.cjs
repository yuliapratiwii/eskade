const { createClient } = require('@supabase/supabase-js');
const fs = require('fs');
const path = require('path');

const supabaseUrl = 'https://fwlvolngneqjwscsdarh.supabase.co';
const supabaseKey = 'sb_publishable_zFmsKujCniwZ3x1zIZUu0w_dppJoWJo';

const supabase = createClient(supabaseUrl, supabaseKey);

async function main() {
  console.log('=== MEMERIKSA DATABASE LIVE SUPABASE (BANK SOAL 3.330 BUTIR) ===\n');

  // 1. Ambil jumlah total soal
  const { count, error: countErr } = await supabase
    .from('questions')
    .select('*', { count: 'exact', head: true });

  if (countErr) {
    console.error('Error saat mengambil jumlah soal:', countErr);
    return;
  }

  console.log(`Total soal di tabel 'questions' saat ini: ${count} butir`);

  // 2. Ambil seluruh data soal
  let allQuestions = [];
  let page = 0;
  const pageSize = 1000;

  while (true) {
    const { data, error } = await supabase
      .from('questions')
      .select('id, sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status')
      .range(page * pageSize, (page + 1) * pageSize - 1)
      .order('id', { ascending: true });

    if (error) {
      console.error(`Error pada range ${page * pageSize}:`, error);
      break;
    }

    if (!data || data.length === 0) break;
    allQuestions = allQuestions.concat(data);
    console.log(`Dimuat: ${allQuestions.length} / ${count} butir...`);
    if (data.length < pageSize) break;
    page++;
  }

  console.log(`\nBerhasil memuat ${allQuestions.length} butir soal dari Supabase.\n`);

  // 3. Distribusi per Sumber & Subtes
  const sumberMap = {};
  const subtesMap = {};
  allQuestions.forEach((q) => {
    const s = q.sumber || 'tanpa-sumber';
    sumberMap[s] = (sumberMap[s] || 0) + 1;
    subtesMap[q.subtes || 'UNKNOWN'] = (subtesMap[q.subtes || 'UNKNOWN'] || 0) + 1;
  });

  console.log('--- Distribusi per Sumber ---');
  Object.entries(sumberMap).sort((a,b) => b[1] - a[1]).forEach(([k, v]) => console.log(`  - ${k}: ${v} butir`));

  console.log('\n--- Distribusi per Subtes ---');
  Object.entries(subtesMap).forEach(([k, v]) => console.log(`  - ${k}: ${v} butir`));

  // 4. Analisis Kelengkapan & Cacat Soal
  const noKey = [];
  const noPembahasan = [];
  const noTopik = [];
  const noOpsi = [];
  const lessThan5Opsi = [];
  const brokenImages = [];

  const existingLocalImages = new Set(
    fs.readdirSync(path.join('web', 'public', 'gambar')).map((f) => f.toLowerCase())
  );

  allQuestions.forEach((q) => {
    // Kunci
    if (q.subtes !== 'TKP' && (!q.kunci || q.kunci.trim() === '')) {
      noKey.push(q);
    }

    // Pembahasan
    if (!q.pembahasan || q.pembahasan.trim() === '') {
      noPembahasan.push(q);
    }

    // Topik
    if (!q.topik || q.topik.trim() === '') {
      noTopik.push(q);
    }

    // Opsi
    const opsiKeys = q.opsi ? Object.keys(q.opsi) : [];
    if (opsiKeys.length === 0) {
      noOpsi.push(q);
    } else if (opsiKeys.length < 5) {
      lessThan5Opsi.push({ q, count: opsiKeys.length });
    }

    // Cek Gambar fisik
    const checkImageRef = (ref) => {
      if (!ref) return;
      let filename = ref;
      if (filename.includes('/')) filename = filename.split('/').pop();
      if (!filename) return;
      filename = filename.toLowerCase().trim();
      if (!existingLocalImages.has(filename)) {
        brokenImages.push({ q, ref, filename });
      }
    };

    if (q.gambar_url) checkImageRef(q.gambar_url);
    if (q.pembahasan_gambar) checkImageRef(q.pembahasan_gambar);

    // Markdown inline images
    const mdMatches = (q.soal + ' ' + (q.pembahasan || '')).match(/!\[.*?\]\((.*?)\)/g) || [];
    mdMatches.forEach((m) => {
      const src = m.match(/\((.*?)\)/)?.[1];
      if (src && !src.startsWith('http')) {
        checkImageRef(src);
      }
    });
  });

  console.log('\n=== HASIL AUDIT KELENGKAPAN BUTIR SOAL ===');
  console.log(`- Soal Tanpa Kunci (Non-TKP): ${noKey.length} butir`);
  console.log(`- Soal Tanpa Pembahasan: ${noPembahasan.length} butir`);
  console.log(`- Soal Tanpa Topik: ${noTopik.length} butir`);
  console.log(`- Soal Tanpa Opsi (0 opsi): ${noOpsi.length} butir`);
  console.log(`- Soal Opsi Kurang dari 5: ${lessThan5Opsi.length} butir`);
  console.log(`- Gambar Tidak Ditemukan di folder gambar: ${brokenImages.length} kasus`);

  // 5. Analisis Duplikasi Soal
  const cleanStem = (str) =>
    (str || '')
      .toLowerCase()
      .replace(/<[^>]*>/g, '')
      .replace(/[^\w\s]/g, '')
      .replace(/\s+/g, ' ')
      .trim();

  // Group by exact clean stem
  const stemGroups = new Map();
  allQuestions.forEach((q) => {
    const norm = cleanStem(q.soal);
    if (norm.length < 15) return;
    if (!stemGroups.has(norm)) stemGroups.set(norm, []);
    stemGroups.get(norm).push(q);
  });

  const duplicateGroups = Array.from(stemGroups.entries()).filter(([_, list]) => list.length > 1);
  const totalDuplicateQuestions = duplicateGroups.reduce((acc, [_, list]) => acc + list.length - 1, 0);

  console.log(`\n=== HASIL AUDIT DUPLIKASI SOAL ===`);
  console.log(`Total kelompok soal duplikat: ${duplicateGroups.length} grup`);
  console.log(`Total butir soal berlebih (duplikat): ${totalDuplicateQuestions} butir`);

  console.log('\nContoh 10 grup duplikat teratas:');
  duplicateGroups.slice(0, 10).forEach(([stem, list], idx) => {
    console.log(`\n${idx + 1}. Teks: "${list[0].soal.slice(0, 75)}..." (${list.length} copy)`);
    list.forEach((item) => {
      console.log(`   - [ID: ${item.id}] Sumber: ${item.sumber || '-'}, No: ${item.nomor || '-'}, Subtes: ${item.subtes}`);
    });
  });

  // 6. Cek Spesifik Part 27 dan Part 28
  const p27 = allQuestions.filter(
    (q) =>
      (q.sumber && q.sumber.toLowerCase().includes('part-27')) ||
      (q.sumber && q.sumber.toLowerCase().includes('part 27')) ||
      (q.id && q.id.toLowerCase().includes('part27')) ||
      (q.soal && q.soal.includes('part27'))
  );

  const p28 = allQuestions.filter(
    (q) =>
      (q.sumber && q.sumber.toLowerCase().includes('part-28')) ||
      (q.sumber && q.sumber.toLowerCase().includes('part 28')) ||
      (q.id && q.id.toLowerCase().includes('part28')) ||
      (q.soal && q.soal.includes('part28'))
  );

  console.log(`\n=== STATUS SOAL PART 27 & PART 28 DI LIVE DATABASE ===`);
  console.log(`- Soal Part 27 di Database: ${p27.length} butir`);
  if (p27.length > 0) {
    const nos = p27.map((q) => q.nomor).filter(Boolean).sort((a,b) => a-b);
    console.log(`  Nomor soal Part 27: min ${nos[0]} - max ${nos[nos.length - 1]}`);
    const figural27 = p27.filter((q) => q.nomor >= 57 && q.nomor <= 65);
    console.log(`  Soal Figural Part 27 (#57-65): ${figural27.length} butir ditemukan`);
    figural27.forEach((q) => console.log(`    #${q.nomor} - gambar_url: ${q.gambar_url || 'null'}, soal has img: ${q.soal.includes('![')}`));
  }

  console.log(`- Soal Part 28 di Database: ${p28.length} butir`);
  if (p28.length > 0) {
    const nos = p28.map((q) => q.nomor).filter(Boolean).sort((a,b) => a-b);
    console.log(`  Nomor soal Part 28: min ${nos[0]} - max ${nos[nos.length - 1]}`);
    const figural28 = p28.filter((q) => q.nomor >= 57 && q.nomor <= 65);
    console.log(`  Soal Figural Part 28 (#57-65): ${figural28.length} butir ditemukan`);
    figural28.forEach((q) => console.log(`    #${q.nomor} - gambar_url: ${q.gambar_url || 'null'}, soal has img: ${q.soal.includes('![')}`));
  }

  // Simpan hasil audit lengkap ke file JSON
  const auditReport = {
    totalQuestions: allQuestions.length,
    sumberDistribution: sumberMap,
    subtesDistribution: subtesMap,
    issues: {
      noKeyCount: noKey.length,
      noPembahasanCount: noPembahasan.length,
      noTopikCount: noTopik.length,
      noOpsiCount: noOpsi.length,
      lessThan5OpsiCount: lessThan5Opsi.length,
      brokenImagesCount: brokenImages.length,
      duplicateGroupsCount: duplicateGroups.length,
      totalDuplicateQuestions,
    },
    part27: {
      count: p27.length,
      figuralCount: p27.filter((q) => q.nomor >= 57 && q.nomor <= 65).length,
    },
    part28: {
      count: p28.length,
      figuralCount: p28.filter((q) => q.nomor >= 57 && q.nomor <= 65).length,
    },
    duplicateGroupsSample: duplicateGroups.slice(0, 30).map(([stem, list]) => ({
      stemSnippet: list[0].soal.slice(0, 100),
      count: list.length,
      items: list.map((item) => ({ id: item.id, sumber: item.sumber, nomor: item.nomor, subtes: item.subtes })),
    })),
  };

  fs.writeFileSync('scripts/audit_live_result.json', JSON.stringify(auditReport, null, 2));
  console.log('\nLaporan audit lengkap tersimpan di: scripts/audit_live_result.json');
}

main().catch(console.error);
