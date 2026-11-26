const { createClient } = require('@supabase/supabase-js');
const supabase = createClient(
  'https://fwlvolngneqjwscsdarh.supabase.co',
  'sb_publishable_zFmsKujCniwZ3x1zIZUu0w_dppJoWJo'
);

async function checkTryOut1() {
  const { data: toExams } = await supabase
    .from('exams')
    .select('id, judul')
    .eq('tipe', 'tryout')
    .order('judul', { ascending: true })
    .limit(3);

  console.log('Sample Try Out exams count:', toExams?.length);

  for (const ex of toExams || []) {
    const { data: eq } = await supabase
      .from('exam_questions')
      .select('urutan, questions(subtes, topik)')
      .eq('exam_id', ex.id)
      .order('urutan', { ascending: true });

    console.log(`\n=== ${ex.judul} ===`);
    console.log(`Total soal: ${eq?.length}`);
    if (eq && eq.length >= 110) {
      console.log('Urutan 1:', eq[0].urutan, eq[0].questions?.subtes, eq[0].questions?.topik);
      console.log('Urutan 30:', eq[29].urutan, eq[29].questions?.subtes, eq[29].questions?.topik);
      console.log('Urutan 31:', eq[30].urutan, eq[30].questions?.subtes, eq[30].questions?.topik);
      console.log('Urutan 65:', eq[64].urutan, eq[64].questions?.subtes, eq[64].questions?.topik);
      console.log('Urutan 66:', eq[65].urutan, eq[65].questions?.subtes, eq[65].questions?.topik);
      console.log('Urutan 110:', eq[109].urutan, eq[109].questions?.subtes, eq[109].questions?.topik);

      // Check subtest distribution across all 110:
      const subtesSequence = eq.map(item => item.questions?.subtes);
      const isClean = subtesSequence.slice(0, 30).every(s => s === 'TWK') &&
                      subtesSequence.slice(30, 65).every(s => s === 'TIU') &&
                      subtesSequence.slice(65, 110).every(s => s === 'TKP');
      console.log(`Subtest Sequence (1-30 TWK, 31-65 TIU, 66-110 TKP) is 100% CLEAN:`, isClean);

      // Check topics sequence inside TIU:
      const tiuTopics = eq.slice(30, 65).map(item => item.questions?.topik);
      console.log('TIU topics sequence sample:', tiuTopics.slice(0, 10));
    }
  }
}

checkTryOut1();
