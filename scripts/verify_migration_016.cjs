const { createClient } = require('@supabase/supabase-js');
const supabase = createClient(
  'https://fwlvolngneqjwscsdarh.supabase.co',
  'sb_publishable_zFmsKujCniwZ3x1zIZUu0w_dppJoWJo'
);

async function verify() {
  const { count, error } = await supabase
    .from('questions')
    .select('*', { count: 'exact', head: true });

  if (error) {
    console.error('Error count:', error);
    return;
  }
  console.log('Total butir soal di database saat ini:', count);

  const parts = ['part-29', 'part-36', 'part-37', 'part-38'];
  for (const p of parts) {
    const { data } = await supabase
      .from('questions')
      .select('nomor, subtes, topik, skor_tkp, kunci, gambar_url')
      .eq('sumber', p)
      .order('nomor', { ascending: true });

    const breakdown = {};
    data?.forEach(q => (breakdown[q.subtes] = (breakdown[q.subtes] || 0) + 1));
    console.log(`\n--- ${p} ---`);
    console.log(`Total: ${data?.length} butir`);
    console.log(`Breakdown:`, breakdown);
    console.log(`Rentang nomor: ${data?.[0]?.nomor} s.d. ${data?.[data.length - 1]?.nomor}`);

    const tkpSample = data?.find(q => q.subtes === 'TKP');
    console.log(`Sample TKP (#${tkpSample?.nomor}): skor_tkp =`, tkpSample?.skor_tkp, `kunci = ${tkpSample?.kunci}`);

    const imgSample = data?.find(q => q.gambar_url !== null);
    console.log(`Sample Soal Bergambar (#${imgSample?.nomor}): gambar_url = ${imgSample?.gambar_url}`);
  }
}

verify();
