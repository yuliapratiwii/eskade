const fs = require('fs');
const { createClient } = require('../web/node_modules/@supabase/supabase-js');

const supabase = createClient(
  'https://fwlvolngneqjwscsdarh.supabase.co',
  'sb_publishable_zFmsKujCniwZ3x1zIZUu0w_dppJoWJo'
);

async function exportAll() {
  console.log('Mengunduh seluruh data bank soal dari Supabase...');
  let allQuestions = [];
  let from = 0;

  while (true) {
    console.log(`Mengambil data range ${from} - ${from + 999}...`);
    const { data, error } = await supabase
      .from('questions')
      .select('*')
      .order('sumber', { ascending: true })
      .order('nomor', { ascending: true })
      .range(from, from + 999);

    if (error) {
      console.error('Error saat select dari Supabase:', error);
      throw error;
    }

    allQuestions = allQuestions.concat(data);
    if (data.length < 1000) break;
    from += 1000;
  }

  console.log(`\nBerhasil mengambil TOTAL ${allQuestions.length} butir soal dari Supabase!`);

  // Simpan ke file JSON
  const outputPath = 'soal/bank_soal_lengkap_skd.json';
  fs.writeFileSync(outputPath, JSON.stringify(allQuestions, null, 2), 'utf8');
  console.log(`File JSON berhasil disimpan di: ${outputPath}`);

  // Tampilkan statistik per subtes dan per sumber
  const bySubtes = {};
  const bySumber = {};
  allQuestions.forEach(q => {
    bySubtes[q.subtes] = (bySubtes[q.subtes] || 0) + 1;
    bySumber[q.sumber] = (bySumber[q.sumber] || 0) + 1;
  });

  console.log('\nStatistik per Subtes:');
  console.table(bySubtes);

  console.log('\nStatistik per Sumber:');
  console.table(bySumber);
}

exportAll().catch(console.error);
