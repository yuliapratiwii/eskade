--
-- Migration 016: Insert Questions for Part 29, 36, 37, 38
-- Total: 440 butir soal (4 paket x 110 soal)
--
BEGIN;

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  1,
  'TWK',
  'Pancasila',
  'sedang',
  'Nilai instrumental Pancasila berfungsi menjabarkan nilai dasar ke dalam penyelenggaraan negara. Implementasi nilai instrumental tersebut paling tepat tercermin dalam kebijakan yang …',
  NULL,
  '{"A":"Menjaga stabilitas nasional melalui kebijakan yang berorientasi pada kepentingan bersama.","B":"Menyesuaikan pelaksanaan program negara dengan kondisi sosial dan budaya yang berkembang.","C":"Mengutamakan efektivitas kebijakan publik agar tujuan pembangunan dapat tercapai.","D":"Ditetapkan dalam bentuk peraturan perundang-undangan sebagai pedoman resmi penyelenggaraan negara.","E":"Mengarahkan pelaksanaan pemerintahan agar selaras dengan aspirasi dan dinamika masyarakat."}'::jsonb,
  NULL,
  'D',
  'Nilai instrumental Pancasila merupakan penjabaran nilai dasar Pancasila ke dalam bentuk yang lebih operasional, terutama berupa norma hukum, kebijakan, dan peraturan perundang-undangan yang menjadi pedoman resmi penyelenggaraan negara. Oleh karena itu, opsi D paling tepat karena secara langsung mencerminkan fungsi nilai instrumental sebagai penghubung antara nilai dasar Pancasila yang bersifat abstrak dengan praktik ketatanegaraan yang konkret dan mengikat secara hukum. Opsi A berfokus pada stabilitas nasional, yang merupakan tujuan atau dampak kebijakan, bukan wujud penjabaran nilai dasar. Opsi B mencerminkan fleksibilitas pelaksanaan kebijakan dan lebih dekat dengan nilai praksis. Opsi C menekankan efektivitas pemerintahan, yang bersifat teknis-administratif dan tidak secara langsung menunjukkan karakter nilai instrumental Pancasila. Opsi E terlihat ideal karena menekankan kesesuaian dengan aspirasi masyarakat, namun lebih menggambarkan orientasi kebijakan, bukan bentuk nilai instrumental itu sendiri.

Jawaban: D.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  2,
  'TWK',
  'Pancasila',
  'sedang',
  'Perhatikan pernyataan-pernyataan berikut!

1)  Lambang Negara Indonesia adalah Garuda Pancasila yang merepresentasikan identitas dan kedaulatan negara.

2) Penggunaan Lambang Negara dapat disesuaikan dengan kepentingan budaya dan kreativitas masyarakat.

3) Semboyan Bhinneka Tunggal Ika mencerminkan persatuan secara eksklusif dalam keragaman bangsa Indonesia.

4) Lambang Negara berfungsi sebagai simbol pemersatu bangsa di tengah perbedaan suku, agama, dan budaya.

5) Makna Lambang Negara dapat ditafsirkan secara kontekstual selama tetap menjaga keharmonisan sosial.

6) Penggunaan Lambang Negara harus menghormati nilai persatuan dan ketentuan peraturan perundang-undangan.

Berdasarkan Pasal 36A UUD 1945, pernyataan yang paling tepat mencerminkan kedudukan Lambang Negara adalah …',
  NULL,
  '{"A":"1, 2, dan 5","B":"1, 3, dan 4","C":"2, 4, dan 5","D":"3, 5, dan 6","E":"1, 4, dan 6"}'::jsonb,
  NULL,
  'E',
  'Pasal 36A UUD 1945 menegaskan bahwa Lambang Negara Indonesia adalah Garuda Pancasila dengan semboyan Bhinneka Tunggal Ika yang berkedudukan sebagai simbol resmi negara dan mencerminkan identitas, kedaulatan, serta persatuan bangsa. Kedudukan Lambang Negara bersifat konstitusional sehingga makna dan penggunaannya tidak boleh ditentukan secara bebas, melainkan harus dijaga sesuai ketentuan hukum dan nilai persatuan nasional. Pernyataan (1) tepat karena menegaskan Garuda Pancasila sebagai representasi identitas dan kedaulatan negara. Pernyataan (4) sesuai karena menempatkan Lambang Negara sebagai simbol pemersatu bangsa dalam keberagaman suku, agama, dan budaya, sejalan dengan makna Bhinneka Tunggal Ika. Pernyataan (6) juga tepat karena menegaskan bahwa penggunaan Lambang Negara harus menghormati nilai persatuan dan peraturan perundang-undangan yang berlaku. Sebaliknya, pernyataan (2) membuka ruang penyesuaian penggunaan Lambang Negara berdasarkan kepentingan budaya dan kreativitas, yang tidak sejalan dengan kedudukannya sebagai simbol resmi negara. Pernyataan (5) tampak moderat karena menekankan keharmonisan sosial, namun tetap keliru karena memberi ruang penafsiran kontekstual terhadap Lambang Negara yang seharusnya dimaknai secara tetap dan konstitusional. Pernyataan (3) juga tidak tepat karena menggunakan konsep persatuan yang bersifat eksklusif, bertentangan dengan semangat persatuan yang inklusif dalam Bhinneka Tunggal Ika. Oleh karena itu, kombinasi pernyataan yang paling tepat adalah 1, 4, dan 6.

Jawaban: E',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  3,
  'TWK',
  'UUD 1945',
  'sedang',
  'Setiap warga negara memiliki hak untuk memperoleh pendidikan sebagai bagian dari hak dasar yang dijamin oleh konstitusi. Berdasarkan Pasal 31 ayat (1) UUD NRI Tahun 1945, pernyataan tersebut paling tepat mencerminkan …',
  NULL,
  '{"A":"Komitmen negara dalam meningkatkan kualitas sumber daya manusia secara berkelanjutan.","B":"Tanggung jawab penyelenggara negara dalam menyediakan layanan pendidikan yang merata.","C":"Upaya penyesuaian sistem pendidikan dengan kebutuhan pembangunan nasional.","D":"Hak konstitusional warga negara untuk mendapatkan pendidikan yang adil dan setara.","E":"Peran negara dalam mengatur penyelenggaraan pendidikan agar berjalan efektif dan efisien."}'::jsonb,
  NULL,
  'D',
  'Pasal 31 ayat (1) UUD NRI Tahun 1945 menegaskan bahwa setiap warga negara berhak mendapat pendidikan, sehingga pendidikan diposisikan sebagai hak konstitusional yang melekat pada setiap warga negara tanpa pembedaan. Inti norma pasal ini terletak pada pengakuan hak, bukan pada kewajiban negara, mekanisme penyelenggaraan, maupun tujuan pembangunan pendidikan. Oleh karena itu, opsi D paling tepat karena secara langsung mencerminkan pendidikan sebagai hak konstitusional warga negara yang harus diperoleh secara adil dan setara sesuai amanat konstitusi. Opsi A bernilai positif karena menekankan peningkatan kualitas sumber daya manusia, namun lebih menggambarkan tujuan pembangunan. Opsi B berfokus pada tanggung jawab penyelenggara negara, yang merupakan konsekuensi dari adanya hak, bukan substansi Pasal 31 ayat (1). Opsi C menekankan penyesuaian sistem pendidikan dengan kebutuhan pembangunan nasional, sehingga bersifat kebijakan strategis. Opsi E menyoroti peran negara dalam pengaturan penyelenggaraan pendidikan yang bersifat teknis-administratif dan tidak secara langsung merepresentasikan pengakuan hak warga negara sebagaimana dimaksud Pasal 31 ayat (1).

Jawaban: D.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  4,
  'TWK',
  'Pancasila',
  'sedang',
  'Pengamalan butir Pancasila sila ke-3 “mengembangkan persatuan Indonesia atas dasar Bhinneka Tunggal Ika” paling tepat tercermin melalui sikap …',
  NULL,
  '{"A":"Menyesuaikan diri dengan kebiasaan lingkungan sekitar agar hubungan sosial tetap berjalan harmonis.","B":"Menghargai perbedaan latar belakang sebagai bentuk sikap toleran dalam kehidupan bermasyarakat.","C":"Memberikan ruang bagi setiap kelompok untuk menampilkan identitas budayanya dalam kehidupan sosial.","D":"Mengelola perbedaan pandangan secara bijak agar kebersamaan masyarakat tetap terjaga.","E":"Menghargai perbedaan latar belakang sambil menempatkan persatuan bangsa sebagai kepentingan bersama."}'::jsonb,
  NULL,
  'E',
  'Butir Pancasila sila ke-3 menegaskan bahwa persatuan Indonesia dibangun di atas keberagaman suku, agama, dan budaya sebagaimana semangat Bhinneka Tunggal Ika. Inti nilai ini bukan sekadar toleransi, adaptasi sosial, atau pengelolaan konflik, melainkan pengakuan terhadap perbedaan yang secara sadar diarahkan untuk memperkuat persatuan bangsa sebagai kepentingan bersama. Opsi E paling tepat karena secara utuh memadukan dua unsur utama sila ke-3, yaitu penghormatan terhadap keberagaman dan peneguhan persatuan nasional di atas kepentingan kelompok atau individu. Opsi A bernilai positif karena menekankan penyesuaian diri, namun lebih bersifat adaptasi individu terhadap lingkungan. Opsi B mencerminkan toleransi, tetapi belum menegaskan orientasi pada persatuan bangsa. Opsi C terlihat inklusif, namun berpotensi menonjolkan identitas kelompok tanpa kerangka persatuan nasional. Opsi D menekankan pengelolaan perbedaan agar tetap rukun, tetapi fokusnya lebih pada stabilitas sosial daripada penguatan persatuan Indonesia.

Jawaban: E.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  5,
  'TWK',
  'Pancasila',
  'sedang',
  'Perhatikan pernyataan-pernyataan berikut ini!

1) Mengurangi kesenjangan sosial melalui pembagian kesempatan yang lebih merata bagi masyarakat.

2) Menumbuhkan sikap saling menghargai dan kepedulian antarindividu dalam kehidupan sosial.

3) Menjamin terpenuhinya hak dasar warga negara dalam bidang ekonomi dan kesejahteraan.

4) Menumbuhkan kepercayaan masyarakat terhadap negara melalui kebijakan yang dirasakan adil dan merata

5) Meningkatkan produktivitas nasional dengan memberikan perhatian lebih kepada kelompok strategis.

6) Mendorong keterlibatan warga dalam proses pengambilan keputusan bersama secara tertib dan bertanggung jawab.

Manakah pernyataan yang paling tepat menunjukkan manfaat penerapan nilai Pancasila sila ke-5 “Keadilan Sosial bagi Seluruh Rakyat Indonesia”?',
  NULL,
  '{"A":"1, 2, dan 5","B":"1, 3, dan 4","C":"2, 4, dan 6","D":"3, 5, dan 6","E":"2, 3, dan 6"}'::jsonb,
  NULL,
  'B',
  'Pancasila sila ke-5 menekankan terwujudnya keadilan sosial yang dirasakan oleh seluruh rakyat Indonesia melalui pemerataan kesempatan, pemenuhan hak dasar, dan kebijakan yang adil serta merata. Manfaat utama penerapan nilai ini berkaitan langsung dengan pengurangan kesenjangan sosial dan peningkatan kesejahteraan secara inklusif. Pernyataan (1) tepat karena pemerataan kesempatan merupakan dampak langsung keadilan sosial. Pernyataan (3) sesuai karena pemenuhan hak dasar ekonomi dan kesejahteraan merupakan inti tujuan sila ke-5. Pernyataan (4) juga tepat karena kebijakan yang dirasakan adil dan merata akan menumbuhkan kepercayaan masyarakat terhadap negara. Sebaliknya, pernyataan (2) lebih mencerminkan nilai kemanusiaan dan kepedulian sosial yang menjadi ciri sila ke-2. Pernyataan (6) lebih tepat dikaitkan dengan sila ke-4 karena menekankan partisipasi dan proses pengambilan keputusan bersama. Pernyataan (5) tampak bernilai pembangunan, tetapi berpotensi menimbulkan ketimpangan karena memberi perhatian lebih pada kelompok tertentu, sehingga tidak sejalan dengan prinsip keadilan sosial bagi seluruh rakyat. Oleh karena itu, kombinasi pernyataan yang paling tepat adalah 1, 3, dan 4.

Jawaban: B.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  6,
  'TWK',
  'Pancasila',
  'sedang',
  'Ketimpangan akses layanan publik masih dirasakan oleh sebagian masyarakat di daerah tertinggal. Dalam kerangka nilai Pancasila yang menekankan keadilan sosial, langkah paling tepat untuk menjawab persoalan tersebut adalah …',
  NULL,
  '{"A":"Memprioritaskan pembangunan wilayah strategis agar pertumbuhan ekonomi meningkat.","B":"Menyesuaikan layanan publik dengan kemampuan fiskal masing-masing daerah.","C":"Memastikan distribusi layanan publik dilakukan secara merata sesuai kebutuhan masyarakat.","D":"Mendorong keterlibatan masyarakat lokal dalam mendukung pembangunan daerah.","E":"Mengoptimalkan peran sektor swasta untuk mempercepat penyediaan layanan dasa"}'::jsonb,
  NULL,
  'C',
  'Soal ini menguji pemahaman nilai Pancasila sila ke-5, Keadilan Sosial bagi Seluruh Rakyat Indonesia, yang menekankan pemerataan, distribusi yang berimbang, dan pemenuhan kebutuhan masyarakat secara proporsional. Masalah utama dalam soal adalah ketimpangan akses layanan publik di daerah tertinggal, sehingga solusi yang paling tepat harus berorientasi pada pemerataan layanan berdasarkan kebutuhan, bukan semata-mata pertumbuhan ekonomi atau efisiensi pengelolaan. Opsi C paling tepat karena secara langsung menegaskan pentingnya distribusi layanan publik yang merata sesuai kebutuhan masyarakat, yang merupakan inti keadilan sosial. Opsi A berfokus pada pertumbuhan ekonomi wilayah strategis yang berpotensi memperlebar kesenjangan. Opsi B tampak realistis secara fiskal, tetapi dapat melegitimasi ketidakmerataan layanan. Opsi D menekankan partisipasi masyarakat yang bersifat pendukung, bukan solusi utama atas ketimpangan struktural. Opsi E mengedepankan peran sektor swasta, namun tidak menjamin keadilan akses bagi seluruh rakyat.

Jawaban: C',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  7,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Munculnya paham separatisme di beberapa wilayah berpotensi mengganggu keutuhan bangsa. Sikap nasionalisme yang paling tepat untuk menghadapi kondisi tersebut adalah …',
  NULL,
  '{"A":"Mendorong pendekatan persuasif melalui dialog sosial untuk menjaga stabilitas dan ketertiban masyarakat.","B":"Menghargai perbedaan aspirasi daerah sebagai bagian dari dinamika demokrasi dalam negara.","C":"Mendukung upaya penegakan hukum secara konsisten agar keamanan wilayah tetap terjaga.","D":"Mengembangkan kebijakan pembangunan yang responsif terhadap kebutuhan masyarakat setempat.","E":"Menguatkan rasa kebangsaan dan komitmen terhadap NKRI melalui kesadaran bersama akan persatuan."}'::jsonb,
  NULL,
  'E',
  'Nasionalisme dalam konteks menghadapi separatisme menuntut sikap yang secara langsung menegaskan komitmen terhadap persatuan dan keutuhan Negara Kesatuan Republik Indonesia. Separatisme tidak hanya merupakan persoalan keamanan atau kesejahteraan, tetapi juga persoalan lemahnya rasa kebangsaan dan kesadaran kolektif sebagai satu bangsa. Oleh karena itu, opsi E paling tepat karena menekankan penguatan rasa kebangsaan dan komitmen terhadap NKRI sebagai fondasi utama menjaga persatuan, yang merupakan inti nilai nasionalisme. Opsi A bernilai positif karena dialog sosial dapat meredam ketegangan, namun lebih berfungsi sebagai pendekatan pendukung, bukan inti sikap nasionalisme. Opsi B mencerminkan penghormatan terhadap demokrasi dan aspirasi daerah, tetapi tanpa penguatan komitmen kebangsaan dapat berisiko dimanfaatkan oleh paham separatis. Opsi C menekankan aspek penegakan hukum dan keamanan, yang penting namun tidak cukup jika tidak disertai penguatan kesadaran nasional. Opsi D berfokus pada pembangunan dan kesejahteraan, yang dapat mengurangi potensi konflik, tetapi tidak secara langsung menjawab akar persoalan separatisme yang berkaitan dengan identitas dan loyalitas kebangsaan. Dengan demikian, sikap nasionalisme yang paling tepat adalah opsi E.

Jawaban: E.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  8,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Sikap chauvinisme yang mengunggulkan kelompok tertentu berpotensi melemahkan persatuan bangsa. Perilaku yang mencerminkan nasionalisme yang kurang menjaga persatuan dalam kondisi tersebut adalah …',
  NULL,
  '{"A":"Mengarahkan rasa cinta tanah air untuk memperkuat persatuan tanpa merendahkan kelompok lain.","B":"Menumbuhkan kebanggaan nasional dengan menghargai keberagaman dalam masyarakat.","C":"Menempatkan kepentingan bangsa di atas kepentingan kelompok atau golongan.","D":"Menegaskan superioritas suatu komunitas kebangsaan sebagai simbol kekuatan bangsa.","E":"Mengembangkan sikap nasionalisme yang inklusif dan saling menghormati antarkelompok."}'::jsonb,
  NULL,
  'D',
  'Nasionalisme yang menjaga persatuan bangsa menekankan sikap inklusif, penghormatan terhadap perbedaan, serta penempatan kepentingan bangsa di atas kepentingan kelompok. Dalam konteks chauvinisme, persoalan utamanya adalah penonjolan satu kelompok sebagai pihak yang paling unggul sehingga berpotensi menimbulkan diskriminasi dan konflik sosial. Opsi D mencerminkan nasionalisme yang kurang menjaga persatuan karena menegaskan superioritas suatu komunitas kebangsaan sebagai simbol kekuatan bangsa, yang merupakan ciri utama chauvinisme dan bertentangan dengan semangat persatuan. Opsi A menunjukkan nasionalisme sehat karena mengarahkan cinta tanah air untuk memperkuat persatuan tanpa merendahkan pihak lain. Opsi B menumbuhkan kebanggaan nasional yang inklusif dengan menghargai keberagaman. Opsi C sejalan dengan persatuan karena memprioritaskan kepentingan bangsa di atas kepentingan kelompok atau golongan. Opsi E juga tepat karena menekankan nasionalisme yang saling menghormati sebagai fondasi kebersamaan. Oleh karena itu, jawaban yang paling tepat adalah opsi D.

Jawaban: D.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  9,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Pada masa awal pergerakan, perjuangan bangsa masih bersifat kedaerahan, sedangkan saat ini nasionalisme berkembang dalam bingkai kebangsaan. Pesan moral yang paling tepat dari perubahan tersebut adalah …',
  NULL,
  '{"A":"Menempatkan persatuan bangsa sebagai kepentingan utama di atas kepentingan kedaerahan dalam setiap bentuk perjuangan.","B":"Menyatukan beragam kepentingan daerah agar dapat berjalan selaras dengan tujuan nasional bersama.","C":"Menguatkan identitas dan peran daerah sebagai bagian penting dari perjalanan sejarah bangsa.","D":"Menyesuaikan semangat perjuangan daerah agar tetap relevan dengan dinamika nasional saat ini.","E":"Mengakui kontribusi daerah dalam perjuangan sebagai fondasi pembentukan identitas nasional."}'::jsonb,
  NULL,
  'A',
  'Perkembangan nasionalisme dari yang semula bersifat kedaerahan menuju nasionalisme kebangsaan mengandung pesan moral utama tentang perubahan orientasi perjuangan. Perjuangan tidak lagi bertumpu pada kepentingan daerah atau kelompok tertentu, melainkan pada kesadaran kolektif sebagai satu bangsa dengan tujuan bersama. Opsi A paling tepat karena secara tegas menekankan bahwa persatuan bangsa harus ditempatkan di atas kepentingan kedaerahan, yang merupakan inti nasionalisme kebangsaan. Opsi B terlihat sangat menjebak karena berbicara tentang penyelarasan kepentingan daerah, namun fokusnya masih pada kompromi antardaerah, bukan pada supremasi kepentingan bangsa. Opsi C dan Opsi E bernilai positif karena mengakui peran daerah dalam sejarah perjuangan, tetapi lebih menekankan aspek pengakuan historis daripada pesan moral perubahan orientasi perjuangan. Opsi D menyoroti adaptasi perjuangan daerah terhadap konteks nasional, namun belum menyentuh perubahan nilai mendasar dari kedaerahan menuju persatuan bangsa sebagai prioritas utama. Oleh karena itu, pesan moral yang paling tepat adalah opsi A.

Jawaban: A',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  10,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Di tengah arus globalisasi yang membawa nilai dan budaya lintas negara, keberagaman di Indonesia memiliki makna strategis bagi penguatan nasionalisme. Makna perbedaan yang paling tepat dalam konteks tersebut adalah …',
  NULL,
  '{"A":"Menjadi ciri sosial masyarakat yang membedakan Indonesia dari bangsa lain di era global.","B":"Menjadi kekayaan sosial yang perlu disesuaikan agar tidak menghambat integrasi global.","C":"Menjadi modal nasional untuk memperkuat persatuan dan daya saing bangsa di tengah globalisasi.","D":"Menjadi ciri budaya yang perlu dijaga selama sejalan dengan perkembangan nilai global.","E":"Menjadi unsur kultural yang dapat berkembang mengikuti perubahan zaman secara terbuka."}'::jsonb,
  NULL,
  'C',
  'Globalisasi mendorong interaksi lintas budaya yang berpotensi menyeragamkan nilai dan cara hidup masyarakat. Dalam konteks ini, perbedaan tidak cukup dimaknai sebagai ciri atau kekhasan semata, tetapi harus diposisikan sebagai kekuatan strategis bagi bangsa. Opsi C paling tepat karena memaknai perbedaan sebagai modal nasional yang berfungsi ganda, yaitu memperkuat persatuan internal sekaligus meningkatkan daya saing bangsa di tengah persaingan global. Opsi A terlihat benar karena menekankan perbedaan sebagai ciri pembeda, namun berhenti pada aspek deskriptif tanpa mengaitkannya dengan penguatan persatuan dan daya saing nasional. Opsi B dan D cenderung menempatkan perbedaan sebagai sesuatu yang harus disesuaikan dengan nilai global, sehingga berpotensi mengaburkan peran strategisnya bagi nasionalisme. Opsi E menekankan keterbukaan budaya, tetapi belum secara jelas mengaitkan perbedaan dengan penguatan nasionalisme. Oleh karena itu, makna perbedaan yang paling tepat dalam konteks globalisasi adalah opsi C.

Jawaban: C.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  11,
  'TWK',
  'Bela Negara',
  'sedang',
  'Dalam kehidupan berbangsa, kesediaan warga negara mematuhi aturan dan berkontribusi sesuai perannya sering dikaitkan dengan sikap bela negara karena …',
  NULL,
  '{"A":"Mencerminkan kepatuhan individu terhadap norma sosial dalam kehidupan bermasyarakat.","B":"Menunjukkan partisipasi warga negara dalam menjaga ketertiban lingkungan sosial.","C":"Mendukung kelancaran penyelenggaraan pemerintahan dan pelayanan publik.","D":"Menegaskan komitmen warga negara untuk menjaga keberlangsungan dan kepentingan negara.","E":"Membantu menciptakan stabilitas sosial di tengah dinamika kehidupan modern."}'::jsonb,
  NULL,
  'D',
  'Bela negara merupakan sikap dan perilaku warga negara yang dilandasi kesadaran berbangsa dan bernegara serta diwujudkan dalam tindakan nyata untuk menjaga keberlangsungan dan kepentingan negara, baik melalui upaya militer maupun nonmiliter. Dalam kehidupan sehari-hari, bentuk bela negara tercermin dari kesediaan warga negara mematuhi aturan, melaksanakan kewajiban, serta berkontribusi sesuai peran masing-masing demi kepentingan nasional. Opsi D paling tepat karena secara langsung menegaskan komitmen warga negara dalam menjaga keberlangsungan dan kepentingan negara, yang merupakan inti dari konsep bela negara. Opsi A dan Opsi B bernilai positif karena menunjukkan kepatuhan dan partisipasi sosial, namun lebih menggambarkan ketertiban masyarakat sebagai dampak, bukan esensi bela negara itu sendiri. Opsi C menekankan kelancaran penyelenggaraan pemerintahan dan pelayanan publik, yang merupakan hasil dari kepatuhan warga, tetapi tidak secara langsung merepresentasikan sikap pembelaan terhadap negara. Opsi E berfokus pada stabilitas sosial sebagai kondisi yang diharapkan, namun belum menegaskan kesadaran dan komitmen warga negara terhadap kepentingan negara. Dengan demikian, jawaban yang paling tepat adalah opsi D.

Jawaban: D.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  12,
  'TWK',
  'Bela Negara',
  'sedang',
  'Di tengah arus globalisasi, maraknya disinformasi digital, dan menguatnya kepentingan individu, urgensi sikap bela negara bagi warga negara saat ini adalah …',
  NULL,
  '{"A":"Menyatukan kesadaran individu agar kepentingan pribadi tidak bertentangan dengan kepentingan nasional.","B":"Membentuk warga negara yang adaptif dan kompetitif dalam menghadapi persaingan global.","C":"Menumbuhkan kepatuhan kolektif terhadap kebijakan negara demi menjaga ketertiban sosial.","D":"Mendorong kesiapan masyarakat menghadapi perubahan global secara mandiri dan inovatif.","E":"Memperkuat keharmonisan sosial agar perbedaan tidak berkembang menjadi konflik terbuka."}'::jsonb,
  NULL,
  'A',
  'Bela negara dalam konteks kekinian tidak lagi terbatas pada pembelaan fisik atau militer, tetapi mencakup kesadaran dan sikap warga negara dalam menghadapi tantangan nonmiliter seperti globalisasi, disinformasi, dan kecenderungan mengutamakan kepentingan pribadi. Inti dari bela negara adalah kesediaan warga negara menempatkan kepentingan nasional sebagai prioritas utama dalam berpikir dan bertindak. Opsi A paling tepat karena secara langsung menekankan penyatuan kesadaran individu agar kepentingan pribadi tidak bertentangan dengan kepentingan nasional, yang merupakan esensi bela negara dalam kehidupan sehari-hari. Opsi B dan Opsi D bernilai positif karena menekankan adaptasi dan daya saing, namun lebih mencerminkan pengembangan kapasitas individu, bukan inti bela negara. Opsi C berfokus pada kepatuhan terhadap kebijakan negara, yang merupakan salah satu bentuk perilaku warga negara, tetapi belum menggambarkan kesadaran ideologis bela negara secara utuh. Opsi E menekankan keharmonisan sosial sebagai dampak positif, namun tidak secara langsung menunjukkan komitmen warga negara terhadap kepentingan nasional. Oleh karena itu, urgensi utama sikap bela negara dalam kondisi saat ini paling tepat ditunjukkan oleh opsi A.

Jawaban: A.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  13,
  'TWK',
  'Bela Negara',
  'sedang',
  'Perhatikan pernyataan-pernyataan berikut ini!

1) Warga bersikap apatis terhadap kebijakan negara yang berdampak jangka panjang.

2) Masyarakat mudah terprovokasi isu yang merugikan kepentingan nasional.

3) Individu lebih mengutamakan kepentingan pribadi daripada kepentingan bersama.

4) Aparatur negara menjalankan tugas tanpa mempertimbangkan kepentingan nasional

5) Generasi muda kurang memiliki kesadaran terhadap tanggung jawab sebagai warga negara.

6) Masyarakat hanya menjaga ketertiban selama menguntungkan kepentingan pribadi.

Dampak negatif yang paling tepat akibat lemahnya sikap bela negara ditunjukkan oleh pernyataan …',
  NULL,
  '{"A":"1, 2, dan 3","B":"3, 4, dan 6","C":"1, 4, dan 6","D":"2, 3, dan 5","E":"2, 5, dan 6"}'::jsonb,
  NULL,
  'D',
  'Lemahnya sikap bela negara berdampak pada menurunnya kesadaran warga dalam menjaga kepentingan nasional. Dampak tersebut tampak pada mudahnya masyarakat terprovokasi isu yang merugikan negara (2), menguatnya orientasi kepentingan pribadi di atas kepentingan bersama (3), serta rendahnya kesadaran generasi muda terhadap tanggung jawab sebagai warga negara (5). Pernyataan (6) tampak positif karena menyinggung ketertiban, namun bersifat kondisional dan berorientasi pada kepentingan pribadi, sehingga bukan bentuk dampak utama lemahnya bela negara. Pernyataan (1) dan (4) menggambarkan sikap negatif, tetapi lebih berkaitan dengan perilaku pasif dan birokratis, bukan dampak sosial utama yang paling relevan. Oleh karena itu, kombinasi pernyataan yang paling tepat adalah 2, 3, dan 5.

Jawaban: D.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  14,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Mengenang jasa para pahlawan tidak hanya dimaknai sebagai penghormatan simbolik, tetapi juga sebagai upaya menumbuhkan patriotisme. Sikap yang paling tepat mencerminkan makna tersebut adalah …',
  NULL,
  '{"A":"Mengikuti upacara peringatan hari pahlawan sebagai bentuk penghormatan terhadap sejarah bangsa.","B":"Meneladani nilai pengorbanan pahlawan dengan berkontribusi nyata bagi kepentingan bangsa.","C":"Mengapresiasi perjuangan pahlawan melalui kegiatan edukatif dan diskusi sejarah nasional.","D":"Menjaga nama baik pahlawan dengan menghindari kritik terhadap peristiwa sejarah bangsa.","E":"Mengingat jasa pahlawan sebagai bagian dari identitas nasional yang patut dibanggakan."}'::jsonb,
  NULL,
  'B',
  'Patriotisme merupakan sikap cinta tanah air yang diwujudkan melalui kesediaan berkorban, bertanggung jawab, dan berkontribusi bagi kepentingan bangsa dan negara. Mengenang jasa para pahlawan tidak seharusnya berhenti pada penghormatan simbolik atau kebanggaan historis semata, melainkan menjadi sumber inspirasi untuk meneladani nilai perjuangan mereka dalam kehidupan berbangsa saat ini. Opsi B paling tepat karena secara langsung mengaitkan penghormatan terhadap jasa pahlawan dengan tindakan nyata berupa kontribusi bagi kepentingan bangsa, yang mencerminkan esensi patriotisme sebagai sikap aktif dan berorientasi masa depan. Opsi A mencerminkan bentuk penghormatan yang positif, namun lebih bersifat seremonial dan tidak selalu berlanjut pada pengamalan nilai perjuangan. Opsi C berperan penting dalam membangun kesadaran sejarah dan wawasan kebangsaan, tetapi masih berada pada ranah reflektif dan edukatif. Opsi E menekankan kebanggaan terhadap identitas nasional, namun belum menunjukkan penerapan nilai patriotisme dalam tindakan nyata. Opsi D tampak menjaga kehormatan pahlawan, tetapi menghindari kritik sejarah justru bertentangan dengan sikap patriotik yang dewasa, kritis, dan bertanggung jawab. Oleh karena itu, sikap yang paling tepat dalam memaknai mengenang jasa pahlawan sebagai wujud patriotisme adalah opsi B.

Jawaban: B.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  15,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Sumpah Pemuda menanamkan jiwa persatuan sebagai landasan peran generasi muda. Karakter yang paling tepat untuk mengimplementasikan semangat tersebut dalam menghadapi tantangan global adalah …',
  NULL,
  '{"A":"Semangat kompetitif generasi muda untuk meraih prestasi akademik dan non akademik","B":"Sikap adaptif terhadap perkembangan global tanpa kehilangan jati diri bangsa.","C":"Rasa bangga nasional yang diwujudkan melalui pencapaian di tingkat internasional.","D":"Kemampuan berinovasi agar mampu mengikuti dinamika global yang terus berkembang.","E":"Jiwa kolaboratif yang menyatukan potensi generasi muda lintas daerah."}'::jsonb,
  NULL,
  'E',
  'Sumpah Pemuda menegaskan bahwa kekuatan utama generasi muda terletak pada persatuan, yaitu kemampuan meleburkan perbedaan kedaerahan, latar belakang, dan kepentingan sempit demi tujuan bersama sebagai satu bangsa. Dalam menghadapi tantangan global yang kompleks dan kompetitif, semangat tersebut paling tepat diwujudkan melalui karakter yang mendorong kerja bersama dan sinergi kolektif. Opsi E menjadi jawaban paling tepat karena menekankan jiwa kolaboratif lintas daerah, yang secara langsung mencerminkan inti Sumpah Pemuda dan relevan untuk menghadapi persaingan global secara bersama-sama, bukan terfragmentasi. Opsi A menonjolkan kompetisi dan prestasi individu yang bernilai positif, tetapi berpotensi menggeser fokus dari persatuan ke pencapaian personal. Opsi B dan Opsi D menekankan adaptasi dan inovasi yang penting di era global, namun lebih berorientasi pada kapasitas individu, bukan nilai persatuan sebagai fondasi utama. Opsi C menunjukkan kebanggaan nasional melalui prestasi internasional, tetapi lebih menyoroti hasil akhir daripada proses persatuan yang menjadi ruh Sumpah Pemuda. Oleh karena itu, karakter yang paling tepat untuk mengimplementasikan semangat Sumpah Pemuda dalam konteks global adalah opsi E.

Jawaban: E',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  16,
  'TWK',
  'Pancasila',
  'sedang',
  'Pada masa BPUPKI, para pendiri bangsa berjuang merumuskan dasar negara melalui musyawarah demi kepentingan nasional. Dalam konteks saat ini, sikap generasi muda yang paling tepat untuk melanjutkan semangat perjuangan tersebut adalah …',
  NULL,
  '{"A":"Mengkritisi kebijakan negara secara terbuka sebagai bentuk partisipasi demokratis.","B":"Mengikuti perkembangan global agar bangsa Indonesia tidak tertinggal dari negara lain.","C":"Mengembangkan cara penerapan nilai Pancasila agar tetap relevan dengan tantangan zaman.","D":"Menjaga dan mengamalkan nilai-nilai Pancasila secara konsisten dalam kehidupan berbangsa","E":"Mengedepankan kebebasan berpendapat sebagai ciri masyarakat demokratis modern."}'::jsonb,
  NULL,
  'D',
  'Perjuangan BPUPKI berorientasi pada perumusan dasar negara yang menjadi fondasi utama kehidupan berbangsa dan bernegara. Proses tersebut menekankan musyawarah, kepentingan nasional, serta kesepakatan bersama dalam menetapkan nilai dasar bangsa. Dalam konteks kekinian, generasi muda tidak dituntut untuk merumuskan ulang dasar negara, melainkan melanjutkan perjuangan tersebut dengan menjaga keberlanjutan nilai-nilai yang telah disepakati. Opsi D paling tepat karena menekankan sikap menjaga dan mengamalkan nilai-nilai Pancasila secara konsisten sebagai bentuk konkret melanjutkan semangat perjuangan para pendiri bangsa dalam kehidupan sehari-hari. Opsi C tampak menjebak karena berbicara tentang relevansi zaman, namun berada pada ranah pengembangan implementasi yang bersifat teknis, bukan sikap paling mendasar yang dituntut dari generasi muda. Opsi A dan Opsi E mencerminkan praktik demokrasi yang positif, tetapi tidak secara langsung berkaitan dengan esensi perjuangan BPUPKI dalam merumuskan dasar negara. Opsi B menekankan adaptasi global yang penting, namun tidak menyentuh substansi pelestarian nilai dasar negara. Oleh karena itu, sikap generasi muda yang paling tepat untuk melanjutkan semangat perjuangan BPUPKI adalah opsi D.

Jawaban: D.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  17,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Budi Utomo menandai kebangkitan nasional melalui perjuangan di bidang pendidikan dan pembentukan kesadaran kolektif. Penerapan semangat tersebut dalam kehidupan berbangsa saat ini yang kurang tepat adalah …',
  NULL,
  '{"A":"Menguatkan peran pendidikan sebagai sarana peningkatan kualitas intelektual bangsa.","B":"Mengembangkan kontribusi kaum terdidik dalam mendorong kemajuan sosial masyarakat.","C":"Memfokuskan pembangunan sumber daya manusia pada kelompok strategis agar lebih efektif.","D":"Menjadikan pendidikan sebagai instrumen untuk meningkatkan martabat dan daya saing bangsa.","E":"Menumbuhkan kesadaran kebangsaan melalui penguatan nilai intelektual dan moral generasi muda."}'::jsonb,
  NULL,
  'C',
  'Budi Utomo menandai awal kebangkitan nasional Indonesia dengan menekankan perjuangan melalui pendidikan dan pembentukan kesadaran kolektif sebagai bangsa. Semangat utama organisasi ini bukan hanya peningkatan kualitas intelektual kaum terdidik, tetapi juga penumbuhan kesadaran kebangsaan yang inklusif dan berorientasi pada kemajuan bersama. Dalam konteks kekinian, penerapan semangat Budi Utomo seharusnya tetap menempatkan pendidikan sebagai sarana membangun martabat bangsa secara menyeluruh, bukan terbatas pada kelompok tertentu saja. Opsi C menjadi pilihan yang kurang tepat karena memfokuskan pembangunan sumber daya manusia pada kelompok strategis dengan alasan efektivitas, yang berpotensi mengarah pada pendekatan elitis dan mengurangi semangat kebangkitan nasional yang bersifat kolektif. Opsi A, B, D, dan E selaras dengan semangat Budi Utomo karena menekankan pendidikan, kontribusi kaum terdidik, peningkatan martabat bangsa, serta penguatan nilai intelektual dan moral generasi muda secara menyeluruh. Oleh karena itu, penerapan semangat Budi Utomo yang kurang tepat adalah opsi C.

Jawaban: C.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  18,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Jiwa kepemimpinan Soekarno menekankan kemampuan menyatukan perbedaan demi tujuan bersama bangsa. Dalam kehidupan sehari-hari, sikap yang paling mencerminkan teladan kepemimpinan tersebut adalah …',
  NULL,
  '{"A":"Aktif menyampaikan pendapat pribadi agar gagasan yang diyakini dapat diperjuangkan secara konsisten","B":"Menjalankan peran kepemimpinan dengan tegas agar keputusan dapat diambil secara jelas.","C":"Mengajak berbagai pihak berdiskusi dan merangkul perbedaan untuk mencapai kesepakatan bersama.","D":"Menjaga kekompakan kelompok dengan mengutamakan kesepakatan yang paling cepat tercapai.","E":"Mengarahkan kerja bersama agar hasil dapat dicapai secara efektif dan terukur."}'::jsonb,
  NULL,
  'C',
  'Jiwa kepemimpinan Soekarno dikenal dengan kemampuannya menyatukan perbedaan pandangan, latar belakang, dan kepentingan demi tujuan bersama bangsa. Kepemimpinan tersebut tidak hanya bertumpu pada keberanian berbicara atau ketegasan mengambil keputusan, melainkan pada kesanggupan merangkul berbagai pihak melalui dialog dan musyawarah agar tercapai kesepakatan yang bersifat inklusif. Dalam kehidupan sehari-hari, teladan ini tercermin ketika seseorang memimpin dengan membuka ruang diskusi, mendengarkan pandangan berbeda, dan mengupayakan persatuan sebagai prioritas utama. Opsi C paling tepat karena secara jelas menunjukkan upaya mengajak berbagai pihak berdiskusi dan merangkul perbedaan untuk mencapai kesepakatan bersama, yang merupakan inti kepemimpinan Soekarno. Opsi A menekankan konsistensi dalam menyampaikan pendapat pribadi yang bernilai positif, tetapi berpotensi mengabaikan pandangan orang lain. Opsi B menonjolkan ketegasan, namun ketegasan semata tidak selalu menghasilkan persatuan. Opsi D terlihat menjaga kekompakan, tetapi lebih menekankan kecepatan kesepakatan dibandingkan proses perangkulan perbedaan. Opsi E berorientasi pada efektivitas hasil kerja, namun belum menempatkan persatuan sebagai fondasi utama kepemimpinan. Dengan demikian, sikap yang paling mencerminkan jiwa kepemimpinan Soekarno dalam kehidupan sehari-hari adalah opsi C.

Jawaban: C.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  19,
  'TWK',
  'Bela Negara',
  'sedang',
  'Sebagai negara kepulauan, Indonesia menghadapi berbagai ancaman terhadap keutuhan wilayah dan persatuan nasional. Penerapan Wawasan Nusantara yang paling tepat untuk menghadapi kondisi tersebut adalah …',
  NULL,
  '{"A":"Menempatkan kepentingan nasional dengan memandang seluruh wilayah Indonesia sebagai satu kesatuan utuh.","B":"Menguatkan koordinasi antarwilayah agar setiap daerah mampu menjaga stabilitasnya secara optimal.","C":"Menyusun kebijakan pertahanan dengan mempertimbangkan karakteristik geografis masing-masing wilayah.","D":"Mendorong peran aktif pemerintah daerah dalam menjaga wilayahnya sesuai prinsip otonomi.","E":"Mengembangkan kerja sama antardaerah untuk memperkuat ketahanan nasional secara kolektif."}'::jsonb,
  NULL,
  'A',
  'Wawasan Nusantara merupakan cara pandang bangsa Indonesia terhadap diri dan lingkungannya yang menekankan kesatuan wilayah, bangsa, dan kepentingan nasional. Dalam menghadapi berbagai ancaman terhadap keutuhan negara, pendekatan yang paling tepat bukanlah melihat wilayah secara terpisah-pisah atau semata-mata melalui pembagian kewenangan administratif, melainkan memandang seluruh wilayah Indonesia sebagai satu kesatuan yang utuh. Opsi A paling tepat karena secara langsung mencerminkan inti Wawasan Nusantara, yaitu menempatkan kepentingan nasional dan memandang seluruh wilayah Indonesia sebagai satu kesatuan dalam menghadapi ancaman. Opsi B, D, dan E bernilai positif karena menekankan koordinasi, peran daerah, dan kerja sama antardaerah, namun masih berada pada tataran teknis dan administratif. Opsi C tampak strategis karena mempertimbangkan aspek geografis, tetapi berfokus pada pendekatan pertahanan teknis, bukan pada cara pandang kesatuan wilayah sebagai fondasi utama Wawasan Nusantara. Oleh karena itu, penerapan Wawasan Nusantara yang paling tepat adalah opsi A.

Jawaban: A.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  20,
  'TWK',
  'Pancasila',
  'sedang',
  'Pasal 36A UUD 1945 menetapkan Garuda Pancasila dengan semboyan Bhinneka Tunggal Ika sebagai Lambang Negara Indonesia. Dalam kehidupan berbangsa, makna ketentuan tersebut paling tepat tercermin melalui sikap …',
  NULL,
  '{"A":"Memberi ruang berkembangnya identitas budaya daerah sebagai wujud kekayaan nasional.","B":"Menjaga keharmonisan sosial dengan menghindari isu perbedaan yang sensitif di masyarakat.","C":"Menguatkan identitas nasional dengan menyesuaikan ekspresi kebangsaan terhadap perkembangan zaman.","D":"Menghargai keberagaman suku, agama, dan budaya dengan menempatkannya sebagai bagian dari persatuan bangsa.","E":"Menumbuhkan rasa kebangsaan melalui sikap saling menghormati dalam kehidupan sehari-hari."}'::jsonb,
  NULL,
  'D',
  'Pasal 36A UUD 1945 menegaskan Garuda Pancasila beserta semboyan Bhinneka Tunggal Ika sebagai Lambang Negara Indonesia yang berfungsi sebagai simbol pemersatu bangsa. Makna utama semboyan tersebut bukan sekadar pengakuan atas keberagaman, melainkan penegasan bahwa perbedaan suku, agama, dan budaya disatukan dalam satu persatuan nasional. Opsi D paling tepat karena secara jelas menempatkan keberagaman sebagai bagian integral dari persatuan bangsa, sesuai esensi Bhinneka Tunggal Ika dan fungsi lambang negara. Opsi A menekankan pengembangan identitas budaya daerah yang bernilai positif, tetapi belum menegaskan aspek persatuan. Opsi B terlihat menjaga keharmonisan, namun cenderung menghindari perbedaan, bukan merangkulnya. Opsi C relevan dengan dinamika zaman, tetapi tidak secara langsung mencerminkan fungsi simbol negara sebagai pemersatu. Opsi E menekankan sikap saling menghormati yang penting, namun masih bersifat umum dan belum secara eksplisit menunjukkan persatuan dalam keberagaman. Oleh karena itu, jawaban yang paling tepat adalah opsi D.

Jawaban: D',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  21,
  'TWK',
  'Bhinneka Tunggal Ika',
  'sedang',
  'Lingkungan sekolah terdiri dari peserta didik dengan latar belakang budaya, agama, dan kebiasaan yang beragam. Penerapan Bhinneka Tunggal Ika yang paling efektif dalam kondisi tersebut adalah …',
  NULL,
  '{"A":"Menyusun kegiatan sekolah yang ekslusif agar siswa merasa dilibatkan tanpa membedakan latar belakang.","B":"Memberikan ruang kepada setiap siswa mengekspresikan identitasnya dengan tetap menaati aturan sekolah.","C":"Mendorong kerja sama antarsiswa yang berbeda latar belakang dalam proses belajar dan kegiatan organisasi.","D":"Menanamkan sikap saling tolong menolong agar suasana sekolah tetap harmonis dan tertib.","E":"Mengembangkan kebijakan sekolah yang adil agar seluruh siswa memperoleh kesempatan yang sama."}'::jsonb,
  NULL,
  'C',
  'Lingkungan sekolah yang beragam menuntut penerapan Bhinneka Tunggal Ika yang tidak hanya bersifat normatif, tetapi mampu mengelola perbedaan sebagai kekuatan pemersatu. Penerapan yang paling efektif adalah ketika keberagaman latar belakang siswa diarahkan pada interaksi aktif dan kerja sama dalam mencapai tujuan bersama. Opsi C paling tepat karena mendorong kerja sama antarsiswa yang berbeda latar belakang dalam proses belajar dan kegiatan organisasi, sehingga perbedaan tidak berjalan sendiri-sendiri, melainkan menyatu dalam aktivitas kolektif yang memperkuat persatuan. Opsi B bernilai positif karena memberi ruang ekspresi identitas, namun masih bersifat individual dan belum tentu membangun kebersamaan lintas perbedaan. Opsi D menekankan sikap tolong-menolong yang penting untuk keharmonisan, tetapi belum secara langsung mengelola keberagaman sebagai modal persatuan. Opsi E berfokus pada kebijakan yang adil, namun berada pada tataran struktural dan belum menyentuh praktik persatuan dalam interaksi sehari-hari siswa. Opsi A kurang tepat karena penggunaan kata eksklusif justru bertentangan dengan semangat Bhinneka Tunggal Ika yang menekankan inklusivitas dan persatuan dalam keberagaman. Oleh karena itu, jawaban yang paling tepat adalah opsi C.

Jawaban: C.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  22,
  'TWK',
  'Integritas',
  'sedang',
  'Para tokoh perumus dasar negara tetap menyampaikan gagasan kebangsaan sesuai keyakinannya meskipun menghadapi perbedaan pandangan dalam sidang BPUPKI. Sikap para tokoh tersebut paling tepat mencerminkan nilai integritas berupa …',
  NULL,
  '{"A":"Jujur, karena menyampaikan pandangan sesuai keyakinan pribadi tanpa manipulasi fakta.","B":"Tanggung jawab, karena berperan aktif menyumbangkan pemikiran bagi kepentingan bangsa.","C":"Kerja keras, karena terus mengembangkan ide-ide kebangsaan melalui kajian dan diskusi.","D":"Adil, karena menghargai berbagai pandangan dalam proses perumusan dasar negara.","E":"Berani, karena tetap mempertahankan gagasan prinsip meskipun menghadapi tekanan dan perbedaan."}'::jsonb,
  NULL,
  'E',
  'Integritas tampak ketika seseorang mampu menjaga keselarasan antara prinsip dan tindakan, terutama saat berada dalam situasi penuh tekanan atau perbedaan pandangan. Dalam konteks sidang BPUPKI, para tokoh menunjukkan sikap tetap menyampaikan dan mempertahankan gagasan kebangsaan yang diyakininya meskipun tidak selalu sejalan dengan pandangan peserta lain. Sikap ini mencerminkan keberanian moral untuk menyuarakan dan mempertahankan prinsip demi kepentingan bangsa. Oleh karena itu, opsi E paling tepat karena secara langsung menggambarkan nilai integritas berani, yaitu mempertahankan gagasan prinsip meskipun menghadapi tekanan dan perbedaan. Opsi A menekankan kejujuran, namun belum menggambarkan keberanian menghadapi konflik pandangan. Opsi B dan C menunjukkan kontribusi positif berupa tanggung jawab dan kerja keras, tetapi bersifat umum dan tidak spesifik pada situasi tekanan nilai. Opsi D mencerminkan sikap adil, namun bukan aspek utama yang ditonjolkan dalam peristiwa tersebut.

Jawaban: E.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  23,
  'TWK',
  'Integritas',
  'sedang',
  'Ki Hajar Dewantara tetap memperjuangkan hak pendidikan bagi seluruh rakyat meskipun menghadapi tekanan dari pemerintah kolonial. Dalam konteks tantangan kebangsaan saat ini, nilai integritas tersebut paling relevan diterapkan oleh generasi muda melalui sikap …',
  NULL,
  '{"A":"Menjalankan peran di bidang pendidikan secara konsisten dengan menyesuaikan kondisi lingkungan yang ada.","B":"Mengembangkan kompetensi dan tetap berkontribusi di bidang pendidikan meskipun menghadapi keterbatasan dan tekanan.","C":"Menyesuaikan peran dalam dunia pendidikan agar sejalan dengan kebijakan yang berlaku.","D":"Mengambil peran yang aman dan realistis agar keterlibatan di bidang pendidikan dapat berkelanjutan.","E":"Mengatur bentuk partisipasi di bidang pendidikan sesuai peluang dan kapasitas yang dimiliki."}'::jsonb,
  NULL,
  'B',
  'Integritas tercermin dari keselarasan antara prinsip dan tindakan, khususnya ketika seseorang tetap berkontribusi pada nilai yang diyakini meskipun berada dalam situasi sulit. Ki Hajar Dewantara menunjukkan integritas melalui keteguhan memperjuangkan pendidikan bagi rakyat tanpa mengabaikan prinsip, walau berada di bawah tekanan kekuasaan kolonial. Dalam konteks kekinian, nilai tersebut paling relevan diterapkan oleh generasi muda dengan tetap mengembangkan kompetensi sekaligus berkontribusi nyata di bidang pendidikan meskipun menghadapi keterbatasan dan tekanan, sebagaimana tercermin pada opsi B. Opsi A menekankan konsistensi, namun masih berorientasi pada penyesuaian kondisi. Opsi C dan D menonjolkan kepatuhan dan keamanan peran yang dapat mengurangi makna keteguhan prinsip. Opsi E bersifat realistis, tetapi cenderung membatasi kontribusi pada peluang yang ada, bukan pada komitmen nilai. Oleh karena itu, jawaban yang paling tepat adalah opsi B.

Jawaban: B',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  24,
  'TWK',
  'Integritas',
  'sedang',
  'Seorang atasan mengetahui bahwa salah satu bawahannya melakukan kesalahan prosedur dalam pelaksanaan tugas. Kesalahan tersebut tidak menimbulkan dampak besar, namun jika diungkap dapat memengaruhi penilaian kinerja tim yang dipimpinnya. Sikap atasan yang paling mencerminkan integritas adalah …',
  NULL,
  '{"A":"Memberikan pembinaan internal agar kesalahan tidak terulang tanpa membawa persoalan ke ranah formal.","B":"Mengingatkan bawahan secara lisan agar lebih berhati-hati dalam menjalankan tugas ke depan.","C":"Menyelesaikan permasalahan secara kekeluargaan demi menjaga soliditas dan kepercayaan tim.","D":"Mempertimbangkan kepentingan tim secara menyeluruh sebelum menentukan langkah yang akan diambil.","E":"Menyampaikan kesalahan tersebut sesuai mekanisme yang berlaku meskipun berdampak pada penilaian kinerja tim."}'::jsonb,
  NULL,
  'E',
  'Integritas seorang atasan tercermin dari keselarasan antara kewenangan, tanggung jawab, dan kepatuhan terhadap aturan, terutama ketika terdapat konflik antara kepentingan tim dan kewajiban menegakkan prosedur. Dalam situasi ini, meskipun kesalahan bawahan tidak berdampak besar dan berpotensi memengaruhi penilaian kinerja tim, atasan yang berintegritas tetap mengedepankan transparansi dan akuntabilitas. Opsi E paling tepat karena menunjukkan sikap menyampaikan kesalahan sesuai mekanisme yang berlaku, yang mencerminkan komitmen terhadap aturan meskipun berisiko menimbulkan dampak bagi tim yang dipimpin. Opsi A, B, dan C terlihat menjaga keharmonisan dan pembinaan internal, namun cenderung menghindari akuntabilitas formal. Opsi D tampak bijak dengan mempertimbangkan kepentingan tim, tetapi berpotensi mengaburkan kewajiban utama atasan untuk menegakkan prosedur secara konsisten. Oleh karena itu, sikap yang paling mencerminkan integritas adalah opsi E.

Jawaban: E',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  25,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  '(1) Kekayaan hayati Indonesia menyediakan beragam komoditas pangan nonberas seperti sagu, jagung, dan berbagai jenis umbi-umbian di setiap pelosok daerah. (2) Selama ini ketergantungan masyarakat terhadap konsumsi beras masih sangat dominan sehingga membebani stabilitas cadangan pangan nasional. (3) Oleh karena itu, pengembangan potensi pangan lokal menjadi strategi utama dalam memperkuat ketahanan pangan nasional secara berkelanjutan. (4) Komoditas asli daerah ini terbukti lebih adaptif terhadap perubahan iklim ekstrem dibandingkan dengan tanaman pangan hasil impor. (5) Dukungan pemerintah melalui pemberian insentif bagi petani lokal sangat diperlukan untuk mempercepat proses diversifikasi pangan tersebut. (6) Edukasi kepada masyarakat mengenai nilai gizi komoditas lokal juga harus terus ditingkatkan guna mengubah pola konsumsi yang sudah mengakar.

Pokok pikiran paragraf tersebut adalah...',
  NULL,
  '{"A":"Beragam komoditas pangan nonberas yang tersedia di berbagai pelosok daerah Indonesia.","B":"Dampak ketergantungan konsumsi beras terhadap stabilitas cadangan pangan nasional.","C":"Pengembangan potensi pangan lokal sebagai strategi penguatan ketahanan pangan nasional.","D":"Keunggulan adaptasi komoditas pangan lokal terhadap perubahan iklim yang ekstrem.","E":"Pentingnya pemberian insentif bagi petani lokal untuk mempercepat diversifikasi pangan."}'::jsonb,
  NULL,
  'C',
  'Kalimat (1) & (2) merupakan pembuka atau latar belakang masalah (kekayaan pangan vs ketergantungan beras). Kalimat (3) adalah pokok pikirannya. Kalimat ini merangkum solusi dan arah pembicaraan seluruh paragraf, yaitu pengembangan pangan lokal untuk ketahanan pangan. Kalimat (4), (5), & (6) merupakan penjelasan tambahan atau dukungan terhadap strategi yang disebutkan di kalimat (3) (tentang adaptasi iklim, peran pemerintah, dan edukasi).

Jawaban: C',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  26,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  '(1) Penerapan konsep kota pintar (smart city) di berbagai kota besar di Indonesia bertujuan untuk meningkatkan kualitas layanan publik melalui integrasi teknologi digital. (2) Dengan sistem ini, pengurusan administrasi kependudukan dapat dilakukan secara lebih transparan dan efisien tanpa harus mengantre panjang di kantor pemerintahan. (3) Pemanfaatan data secara real-time juga membantu pemerintah daerah dalam memantau kondisi kemacetan lalu lintas dan titik-titik rawan banjir dengan lebih akurat. (4) Selain itu, aplikasi pengaduan warga memungkinkan masyarakat untuk melaporkan kerusakan infrastruktur secara langsung kepada pihak berwenang. (5) Namun, keberhasilan implementasi program ini sangat bergantung pada ketersediaan infrastruktur jaringan internet yang stabil di seluruh penjuru wilayah. (6) Edukasi bagi masyarakat mengenai literasi digital juga menjadi faktor penentu agar teknologi yang tersedia dapat dimanfaatkan secara optimal.

Kalimat utama pada paragraf di atas terdapat pada nomor...',
  NULL,
  '{"A":"(1)","B":"(2)","C":"(3)","D":"(4)","E":"(6)"}'::jsonb,
  NULL,
  'A',
  'Kalimat (1) adalah kalimat utama karena bersifat paling umum dan menjadi payung bagi seluruh isi paragraf. Kalimat ini memperkenalkan topik utama, yaitu tujuan penerapan smart city untuk meningkatkan layanan publik. Kalimat (2), (3), dan (4) memberikan contoh nyata dari peningkatan layanan tersebut (administrasi, pantauan lalu lintas/banjir, dan pengaduan). Kalimat (5) dan (6) memberikan catatan atau faktor pendukung terkait implementasi tujuan yang disebutkan di kalimat (1).

Jawaban: A',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  27,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  '(1) Indonesia memiliki kekayaan sumber energi baru terbarukan (EBT) yang sangat melimpah, mulai dari tenaga surya, bayu, hingga panas bumi. (2) Meskipun potensinya sangat besar, pemanfaatan sumber energi bersih ini masih belum mencapai target maksimal yang ditetapkan dalam bauran energi nasional. (3) Salah satu tantangan utama yang dihadapi adalah tingginya biaya investasi awal untuk membangun infrastruktur pembangkit listrik ramah lingkungan. (4) Selain itu, kerangka regulasi yang ada terkadang masih dianggap tumpang tindih sehingga menghambat minat investor di sektor energi hijau. (5) Namun, kesadaran akan dampak perubahan iklim mulai mendorong pemerintah untuk memberikan berbagai insentif fiskal bagi para pengembang EBT. (6) Kolaborasi antara sektor publik dan swasta juga terus ditingkatkan guna mempercepat transisi energi menuju visi emisi nol bersih. (7) Oleh sebab itu, optimalisasi EBT di Indonesia memerlukan sinergi kebijakan dan dukungan pembiayaan yang kuat agar kemandirian energi berkelanjutan dapat segera terwujud.

Kesimpulan paragraf di atas adalah...',
  NULL,
  '{"A":"Kekayaan sumber energi baru terbarukan di Indonesia meliputi tenaga surya, bayu, dan panas bumi yang belum tergarap optimal.","B":"Tingginya biaya investasi dan regulasi yang tumpang tindih menjadi penghambat utama masuknya investor di sektor energi hijau.","C":"Pemerintah mulai memberikan insentif fiskal kepada pengembang EBT sebagai bentuk kesadaran terhadap dampak perubahan iklim global.","D":"Keberhasilan transisi energi menuju emisi nol bersih sangat bergantung pada kemampuan sektor swasta dalam mengelola infrastruktur.","E":"Optimalisasi EBT melalui sinergi kebijakan dan dukungan finansial merupakan kunci bagi perwujudan kemandirian energi Indonesia yang berkelanjutan."}'::jsonb,
  NULL,
  'E',
  'Sebuah kesimpulan yang baik harus merangkum seluruh alur paragraf. Paragraf ini memiliki pola potensi & masalah pada kalimat 1-4 kemudian upaya yang mulai dilakukan pada kalimat 5-6, dan solusi akhir pada kalimat 7. Opsi E secara akurat mengambil intisari dari kalimat terakhir yang merupakan simpulan logis dari seluruh uraian sebelumnya. Ia mencakup elemen "Sinergi Kebijakan", "Dukungan Finansial", dan tujuan akhirnya yaitu "Kemandirian Energi Berkelanjutan".

Jawaban: E',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  28,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  '(1) Pengembangan sektor ekonomi kreatif berbasis budaya lokal kini menjadi salah satu prioritas utama dalam meningkatkan daya saing bangsa di kancah global. (2) Dalam kebijakan tersebut memerlukan sinergi yang kuat antara pemerintah, pelaku usaha, dan akademisi guna mencapai target yang maksimal. (3) Keunikan produk tradisional yang dikombinasikan dengan desain modern terbukti memberikan nilai tambah yang tinggi bagi konsumen mancanegara. (4) Pemerintah juga terus memberikan dukungan berupa pelatihan teknis serta akses permodalan bagi para pelaku usaha mikro di berbagai daerah. (5) Keberlanjutan ekosistem ekonomi ini sangat bergantung pada konsistensi regulasi dan kemudahan perizinan yang diberikan oleh pemangku kepentingan.

Kalimat tidak efektif pada paragraf tersebut ditunjukkan oleh nomor...',
  NULL,
  '{"A":"(1)","B":"(2)","C":"(3)","D":"(4)","E":"(5)"}'::jsonb,
  NULL,
  'B',
  'Kalimat nomor (2) merupakan contoh kesalahan subjek yang tidak jelas karena penggunaan kata depan di awal kalimat. Kalimat tersebut berbunyi: "Dalam kebijakan tersebut memerlukan sinergi yang kuat..." Frasa "Dalam kebijakan tersebut" berfungsi sebagai Keterangan karena diawali oleh kata depan "Dalam". Akibatnya, kalimat ini tidak memiliki Subjek.

Jawaban: B',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  29,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  '(1) Sektor pertanian tetap menjadi pilar utama dalam menjaga kualitas ketahanan pangan masyarakat di wilayah pedesaan. (2) Luas lahan perkebunan kelapa sawit yang mencapai ribuan hektar telah memberikan kontribusi besar bagi perolehan devisa negara. (3) Pemerintah terus mendorong peningkatan produksi komoditas kopi agar mampu bersaing di pasar internasional yang semakin kompetitif. (4) Setiap laporan hasil panen harus disusun secara sistematis sebagai bentuk pertanggungjawaban kelompok tani kepada instansi terkait. (5) Program subsidi pupuk yang menelan anggaran hingga beberapa miliar rupiah diharapkan dapat membantu produktivitas para petani secara merata.

Manakah kata bercetak tebal yang TIDAK BAKU pada paragraf tersebut …',
  NULL,
  '{"A":"Kualitas (kalimat 1)","B":"Hektar (kalimat 2)","C":"Komoditas (kalimat 3)","D":"Pertanggungjawaban (kalimat 4)","E":"Miliar (kalimat 5)"}'::jsonb,
  NULL,
  'B',
  'Kata hektar pada opsi B adalah kata yang tidak baku. Menurut KBBI, bentuk yang baku adalah hektare (dengan akhiran ''e'').

Jawaban: B',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  30,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Manakah di antara kalimat-kalimat di bawah ini yang menggunakan huruf kapital secara tepat...',
  NULL,
  '{"A":"Kemarin sore, kami berpapasan dengan Gubernur di depan gedung balai kota.","B":"Penduduk desa tersebut mayoritas berprofesi sebagai pengrajin ukiran Suku Asmat.","C":"Nelayan dilarang berlayar ke arah Barat karena ombak sedang sangat tinggi.","D":"Rombongan wisatawan asing itu sangat mengagumi keindahan alam Danau Toba.","E":"Paman membawa oleh-oleh berupa pisang Ambon dan kacang Bogor dari luar kota."}'::jsonb,
  NULL,
  'D',
  'Penggunaan huruf kapital pada Danau Toba sudah tepat. Aturan penggunaan huruf kapital dipakai sebagai huruf pertama unsur nama geografi (danau, selat, gunung, sungai) yang diikuti nama diri.

Jawaban: D',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  31,
  'TIU',
  'Analogi Kata',
  'sedang',
  'KONTEMPORER: MUTAKHIR =...',
  NULL,
  '{"A":"Statis: Dinamis","B":"Canggih: Teknologi","C":"Purba: Kuno","D":"Murni: Bersih","E":"Baru: Lama"}'::jsonb,
  NULL,
  'C',
  'Hubungan analoginya adalah sinonim atau persamaan makna. Kontemporer memiliki arti yang sama dengan mutakhir (sama-sama merujuk pada waktu sekarang atau masa kini). Hal yang sama yaitu purba memiliki arti yang sama dengan kuno (sama-sama merujuk pada masa lampau yang sudah sangat lama).

Jawaban: C',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  32,
  'TIU',
  'Analogi Kata',
  'sedang',
  'PROGRESIF: STAGNAN =...',
  NULL,
  '{"A":"Umum: Khusus","B":"Identik: Signifikan","C":"Dinamis: Statis","D":"Tua: Muda","E":"Luas: Sempit"}'::jsonb,
  NULL,
  'C',
  'Hubungan analoginya adalah lawan kata yang merujuk pada sifat pergerakan. Progresif artinya bergerak maju/ berkembang, sedangkan stagnan artinya terhenti/ tidak jalan. Hal yang sama yaitu dinamis artinya penuh gerak/ semangat, sedangkan statis artinya diam/ tidak berubah.

Jawaban: C',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  33,
  'TIU',
  'Silogisme',
  'sedang',
  'Semua siswa SMA Cendikia harus membawa kartu peserta ketika ujian.

Beberapa siswa SMA Cendikia yang membawa kartu peserta lupa membawa alat tulis.

Siswa SMA Cendikia yang tidak membawa alat tulis tidak boleh masuk ruang ujian.

Kesimpulan yang paling tepat adalah...',
  NULL,
  '{"A":"Semua siswa SMA Cendikia tidak lupa membawa kartu peserta.","B":"Semua siswa SMA Cendikia yang membawa kartu peserta pasti mengikuti ujian.","C":"Semua siswa SMA Cendikia yang mengikuti ujian lupa membawa alat tulis.","D":"Siswa yang tidak lupa membawa alat tulis pasti membawa kartu peserta.","E":"Beberapa siswa SMA Cendikia tidak boleh masuk ruang ujian."}'::jsonb,
  NULL,
  'E',
  'Premis pertama menyatakan bahwa semua siswa SMA Cendikia harus membawa kartu peserta ketika ujian. Premis kedua menyebutkan bahwa beberapa siswa SMA Cendikia yang membawa kartu peserta lupa membawa alat tulis. Artinya, terdapat beberapa siswa SMA Cendikia yang tidak membawa alat tulis. Premis ketiga menegaskan bahwa siswa SMA Cendikia yang tidak membawa alat tulis tidak boleh masuk ruang ujian. Dengan demikian, dapat disimpulkan bahwa beberapa siswa SMA Cendikia tidak boleh masuk ruang ujian.

Jawaban: E',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  34,
  'TIU',
  'Silogisme',
  'sedang',
  'Tidak ada mahasiswa Universitas Maju yang mengikuti program pertukaran di Kampus Global.

Sebagian mahasiswa Universitas Maju adalah anggota klub riset.

Kesimpulan dari kedua premis di atas adalah...',
  NULL,
  '{"A":"Semua mahasiswa Universitas Maju mengikuti program pertukaran di Kampus Global.","B":"Sebagian anggota klub riset mengikuti program pertukaran di Kampus Global.","C":"Semua anggota klub riset bukan mahasiswa Universitas Maju.","D":"Sebagian mahasiswa Universitas Maju bukan anggota klub riset.","E":"Sebagian anggota klub riset Universitas Maju tidak mengikuti program pertukaran di Kampus Global."}'::jsonb,
  NULL,
  'E',
  'Premis 1: Tidak ada mahasiswa Universitas Maju yang mengikuti program pertukaran di Kampus Global.

Artinya, Semua mahasiswa Universitas Maju tidak mengikuti program pertukaran di Kampus Global.

p: Semua mahasiswa Universitas Maju

q: tidak mengikuti program pertukaran di Kampus Global.

Premis 2: Sebagian mahasiswa Universitas Maju adalah anggota klub riset.

p: Sebagian mahasiswa Universitas Maju

r: anggota klub riset.

Maka, dapat kita selesaikan menggunakan rumus berikut:

P1: Semua p → q

P2: Sebagian p → r

Kesimpulan: Sebagian q → r

Maka, jawaban yang tepat adalah yang E. Sebagian anggota klub riset Universitas Maju tidak mengikuti program pertukaran di Kampus Global.

Jawaban: E',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  35,
  'TIU',
  'Silogisme',
  'sedang',
  'Tidak semua karyawan perusahaan “DataPrime” mengikuti pelatihan keamanan siber.

Setiap karyawan yang tidak mengikuti pelatihan keamanan siber, berisiko tinggi melakukan kesalahan pengelolaan data sensitif.

Kesimpulan yang paling tepat adalah...',
  NULL,
  '{"A":"Semua karyawan “DataPrime” berisiko tinggi melakukan kesalahan pengelolaan data.","B":"Sebagian karyawan “DataPrime” berisiko tinggi melakukan kesalahan pengelolaan data sensitif.","C":"Tidak ada karyawan yang melakukan kesalahan pengelolaan data sensitif.","D":"Semua karyawan yang mengikuti pelatihan tetap berisiko tinggi.","E":"Karyawan yang tidak mengikuti pelatihan pasti melakukan kesalahan pengelolaan data."}'::jsonb,
  NULL,
  'B',
  'Premis 1: Tidak semua karyawan perusahaan “DataPrime” mengikuti pelatihan keamanan siber.

Artinya, Beberapa karyawan perusahaan “DataPrime” tidak mengikuti pelatihan keamanan siber. 

p: Beberapa karyawan perusahaan “DataPrime”.

q: tidak mengikuti pelatihan keamanan siber.

Premis 2: Setiap karyawan yang tidak mengikuti pelatihan keamanan siber, berisiko tinggi melakukan kesalahan pengelolaan data sensitif.

q: Setiap karyawan yang tidak mengikuti pelatihan keamanan siber.

r: berisiko tinggi melakukan kesalahan pengelolaan data sensitif.

Maka, dapat kita selesaikan menggunakan rumus silogisme:

P1: Sebagian p → q

P2: Semua q → r

Kesimpulan: Sebagian p → r

Maka, jawaban yang tepat adalah yang B. Sebagian karyawan “DataPrime” berisiko tinggi melakukan kesalahan pengelolaan data sensitif.

Jawaban: B',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  36,
  'TIU',
  'Kemampuan Numerik',
  'sedang',
  'Penjelasan yang diberikan oleh narasumber itu sangat jelas dan gamblang sehingga mudah dipahami.

Hubungan ini sama dengan...',
  NULL,
  '{"A":"Suasana di dalam perpustakaan itu terasa sangat hening dan tenang","B":"Dia merasa sangat lelah tetapi tetap terlihat bahagia.","C":"Kita harus selalu disiplin agar dapat meraih kesuksesan.","D":"Petani membutuhkan benih dan pupuk untuk memulai masa tanam.","E":"Laptop digunakan oleh pegawai untuk rapat dan menyusun laporan."}'::jsonb,
  NULL,
  'A',
  'Soal ini fokus terhadap penggunaan dua kata yang bermakna sama (sinonim) dalam satu kalimat. Pada soal menggunakan kata jelas dan gamblang. Keduanya memiliki arti yang sama, yaitu mudah dimengerti atau tidak samar-samar. Hal yang sama yaitu suasana hening dan tenang. Keduanya merupakan sinonim yang menggambarkan kondisi suasana yang tidak berisik atau sepi.

Jawaban: A',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  37,
  'TIU',
  'Kemampuan Numerik',
  'sedang',
  'Senter memerlukan baterai dan bohlam agar dapat memancarkan cahaya.

Hubungan ini sama dengan...',
  NULL,
  '{"A":"Guru memerlukan buku dan spidol saat mengajar di dalam kelas.","B":"Radio memerlukan listrik dan antena agar dapat menangkap siaran.","C":"Petani memerlukan cangkul dan sabit untuk mengolah sawah.","D":"Mobil memerlukan kaca spion dan klakson agar aman di jalan.","E":"Burung memerlukan sayap dan ekor agar bisa terbang di udara."}'::jsonb,
  NULL,
  'B',
  'Senter membutuhkan baterai sebagai sumber energi dan bohlam sebagai komponen fisik agar bisa memancarkan cahaya. Hal yang sama yaitu radio membutuhkan listrik sebagai sumber energi dan antena sebagai komponen fisik agar bisa menangkap siaran.

Jawaban: B',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  38,
  'TIU',
  'Kemampuan Numerik',
  'sedang',
  '5 8  + 3 − 3 1 4  =...',
  NULL,
  '{"A":"0,375","B":"0,750","C":"2,000","D":"4,000","E":"4,250"}'::jsonb,
  NULL,
  'A',
  '5 8  + 3 − 3 1 4  = 0,625 + 3 − 3,25

                    = 0,375

Jawaban: A',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  39,
  'TIU',
  'Kemampuan Numerik',
  'sedang',
  '125% + 1 3 4  − 0,5 =...',
  NULL,
  '{"A":"9 4","B":"5 2","C":"11 4","D":"7 2","E":"13 4"}'::jsonb,
  NULL,
  'B',
  '125% + 1 3 4  − 0,5 = 125 100  + 7 4  − 5 10

                            = 5 4  + 7 4  − 1 2

                            = 12 4  − 1 2  

                            = 3 − 1 2

                            = 5 2

Jawaban: B',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  40,
  'TIU',
  'Berhitung',
  'sedang',
  '\(\frac{2}{5}-3\frac{1}{2}:\frac{5}{2}=...\)',
  NULL,
  '{"A":"\\(-1,24\\)","B":"\\(-1,00\\)","C":"\\(-0,85\\)","D":"\\(1,00\\)","E":"\\(1,24\\)"}'::jsonb,
  NULL,
  'B',
  '\(\frac{2}{5}-3\frac{1}{2}:\frac{5}{2}=\frac{2}{5}-\frac{7}{2}\times\frac{2}{5}\)

                               \(=\frac{2}{5}-\frac{7}{5}\)

                               \(=-\frac{5}{5}\)

                               \(=-1\)

Jawaban: B',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  41,
  'TIU',
  'Perbandingan Kuantitatif',
  'sedang',
  'Diketahui nilai x = 5 4 dan y = −4

![gambar](/gambar/cf0575032775.png)

Manakah hubungan yang benar antara kuantitas A dan B berikut berdasarkan informasi yang diberikan…',
  '/gambar/cf0575032775.png',
  '{"A":"5A < 2B","B":"3A = 2B","C":"3A > 4B","D":"2A = B 2","E":"A < B"}'::jsonb,
  NULL,
  'C',
  'A = −2y − x

\(=-2\left(-4\right)-\left(\frac{5}{4}\right)\)

\(=8-\frac{5}{4}\)

\(=\frac{32}{4}-\frac{5}{4}\)

\(=\frac{27}{4}\)

= 6,75

B = 4x + 3y

\(=4\left(\frac{5}{4}\right)+3\left(-4\right)\)

= 5 − 12

= −7

Maka kita uji coba ke masing-masing opsi

![gambar](/gambar/8aa99b136208.png)

Jawaban: C',
  '/gambar/8aa99b136208.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  42,
  'TIU',
  'Berhitung',
  'sedang',
  'Diketahui:

![gambar](/gambar/b177f9845dd4.png)

Manakah hubungan yang benar antara kuantitas X dan Y berdasarkan informasi yang diberikan…',
  '/gambar/b177f9845dd4.png',
  '{"A":"2X < 4Y","B":"3X > 4Y","C":"2X < 2Y","D":"3X < 5Y","E":"4X < 5Y"}'::jsonb,
  NULL,
  'B',
  'X → −6 ×  5 + 44 − 2 = −30 + 44 − 2 = 12

Y → 16 + 11 − 7 ×  3 = 16 + 11 − 21 = 6

Kita uji perbadingan tersebut pada pilihan jawaban 

![gambar](/gambar/902c63d01b05.png)

Jawaban: B',
  '/gambar/902c63d01b05.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  43,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Diketahui

Sebuah mesin fotokopi dapat mencetak 360 lembar kertas dengan kecepatan 6 lembar per menit.

![gambar](/gambar/d5828005db4b.png)

Manakah hubungan yang benar antara kuantitas X dan Y?',
  '/gambar/d5828005db4b.png',
  '{"A":"2X > Y","B":"X > Y","C":"X = Y","D":"3X < Y","E":"Hubungan X dan Y tidak dapat ditentukan"}'::jsonb,
  NULL,
  'A',
  'X = Waktu yang dibutuhkan mesin untuk mencetak seluruh kertas

X = \(\frac{360}{6}\)  = 60 menit = 1 jam

Y = 1,5 jam

Jika disubstitusikan nilai X = 1 dan Y = 1,5 maka diperoleh hubungan antara kuantitas X dan Y yaitu 2X > Y

Jawaban: A',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  44,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Diketahui:

A = jumlah buku dalam 12 rak, setiap rak berisi 5 lusin buku

B = 600 buku

Berdasarkan data tersebut, manakah pernyataan yang benar?',
  NULL,
  '{"A":"4A < 5B","B":"2A > 3B","C":"A 2  = 2B","D":"3B > A 2","E":"A = B"}'::jsonb,
  NULL,
  'A',
  'A = 12 ×  5 lusin buku = 12 ×  60 buku = 720 buku

B = 600 buku

Maka perbandingan

A: B

= 720: 600

= 6: 5

Selanjutnya sesuaikan dengan tiap opsi

![gambar](/gambar/40a914aee608.png)

Jawaban: A',
  '/gambar/40a914aee608.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  45,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Sebuah mobil boks menghabiskan 3 liter bahan bakar untuk menempuh jarak 45 km. Jika mobil tersebut memiliki 20 liter bahan bakar, berapa jarak maksimum yang dapat ditempuh?',
  NULL,
  '{"A":"270 km","B":"285 km","C":"300 km","D":"315 km","E":"330 km"}'::jsonb,
  NULL,
  'C',
  '3 liter   → 45 km

20 liter → x

Soal ini merupakan soal perbandingan senilai, maka:

3 20  = 45 x

x = 45   ×   20 3

x = 300 km

Jawaban: C',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  46,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Sebuah rumah kontrakan disewakan dengan harga Rp9.600.000 per tahun. Budi ingin menyewa rumah tersebut selama 8 bulan. Jika biaya sewa dihitung secara proporsional, berapakah biaya sewa yang harus dibayar Budi?',
  NULL,
  '{"A":"Rp6.400.000","B":"Rp6.800.000","C":"Rp7.200.000","D":"Rp7.600.000","E":"Rp8.200.000"}'::jsonb,
  NULL,
  'A',
  '![gambar](/gambar/2f2985a2b3c3.png)

Untuk menyelesaikan soal tersebut dapat kita gunakan perbandingan senilai

9. 600. 000 x  = 12 8

800. 000 x  = 1 8

x = 6.400.000

Maka, biaya sewa kontrakkan selama 8 bulan adalah Rp6.400.000

Jawaban: A',
  '/gambar/2f2985a2b3c3.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  47,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Sebuah proyek pembangunan gedung dapat diselesaikan oleh 60 pekerja dalam 30 hari. Namun, 15 pekerja dipindahkan ke proyek lain sehingga jumlah pekerja berkurang. Jika produktivitas setiap pekerja sama, berapakah total waktu yang diperlukan untuk menyelesaikan proyek tersebut hingga selesai?',
  NULL,
  '{"A":"30 hari","B":"33 hari","C":"34 hari","D":"38 hari","E":"40 hari"}'::jsonb,
  NULL,
  'E',
  '![gambar](/gambar/649e840b94a7.png)

Untuk menyelesaikan soal tersebut kita gunakan perbandingan tak senilai

Al Faiz aab: x =  a   ×   a b

x = 60   ×   30 45  = 4   ×   30 3  = 40 hari

Jawaban: E',
  '/gambar/649e840b94a7.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  48,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Enam orang relawan membersihkan sebuah pantai. Dalam waktu 5 jam, mereka berhasil membersihkan 25% dari seluruh area pantai. Jika pantai tersebut ingin dibersihkan seluruhnya dalam waktu 15 jam, berapa jumlah tambahan relawan yang diperlukan?',
  NULL,
  '{"A":"1 orang","B":"2 orang","C":"3 orang","D":"4 orang","E":"5 orang"}'::jsonb,
  NULL,
  'B',
  'Dari soal ini dapat diselesaikan dengan perbandingan 3 variabel, yaitu H = T ×  W

![gambar](/gambar/0e6bc8a3c365.png)

H = T ×  W

25 % 100 %  = 6 x   ×   5 15

1 4  = 6 x ×   1 3

1 4  = 2 x

x = 8

Sehingga, tambahan orang yang diperlukan adalah 8 − 6 = 2 orang

Jawaban: B',
  '/gambar/0e6bc8a3c365.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  49,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Seorang sopir mobil melakukan perjalanan dari kota P ke kota Q sejauh 300 km. Ia mengemudi dengan kecepatan rata-rata 75 km/jam selama 2 jam pertama. Setelah itu, ia beristirahat selama 30 menit, lalu melanjutkan perjalanan dengan kecepatan rata-rata 100 km/jam hingga tiba di kota Q. Berapa lama waktu total perjalanan dari kota P ke kota Q, termasuk waktu istirahat?',
  NULL,
  '{"A":"3,5 jam","B":"4 jam","C":"4,25 jam","D":"4,75 jam","E":"5 jam"}'::jsonb,
  NULL,
  'B',
  '• Hitung jarak yang ditempuh sebelum istirahat: 75 km/jam ×  2 jam = 150 km

• Hitung sisa jarak setelah istirahat 300 km − 150 km = 150 km

• Hitung waktu tempuh setelah istirahat: 150 km ÷ 100 km/jam = 1,5 jam

Sehingga waktu totalnya = 2 + 0,5 + 1,5 = 4 jam

Jawaban: B',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  50,
  'TIU',
  'Soal Cerita',
  'sedang',
  '24   25   28   33   40   …',
  NULL,
  '{"A":"42","B":"44","C":"45","D":"49","E":"50"}'::jsonb,
  NULL,
  'D',
  '![gambar](/gambar/8bd6cd1ef008.png)

Jawaban: D',
  '/gambar/8bd6cd1ef008.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  51,
  'TIU',
  'Soal Cerita',
  'sedang',
  '…  −9  −3   9   21  −63   −45',
  NULL,
  '{"A":"−2","B":"3","C":"4","D":"−5","E":"−4"}'::jsonb,
  NULL,
  'B',
  '![gambar](/gambar/cb54f74d3cec.png)

Jawaban: B',
  '/gambar/cb54f74d3cec.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  52,
  'TIU',
  'Deret Angka',
  'sedang',
  '9  36  26  104  84  336  …',
  NULL,
  '{"A":"384","B":"366","C":"345","D":"320","E":"306"}'::jsonb,
  NULL,
  'E',
  '![gambar](/gambar/4d7b1672e76a.png)

Jawaban: E',
  '/gambar/4d7b1672e76a.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  53,
  'TIU',
  'Deret Angka',
  'sedang',
  'Di sebuah taman berbentuk segi enam, terdapat enam jenis buah yang ditanam mengelilingi kolam, yaitu Apel, Jeruk, Mangga, Pisang, Anggur, dan Nanas. Diketahui bahwa:

• Jeruk berada tepat di sebelah kanan Apel.

• Mangga berada tepat di antara Jeruk dan Pisang.

• Anggur berada tepat di sebelah kiri Apel.

Berdasarkan informasi tersebut, pernyataan berikut yang SALAH adalah …',
  NULL,
  '{"A":"Pisang berada tepat di sebelah kanan Mangga","B":"Mangga berada tepat di sebelah kanan Jeruk","C":"Apel berada tepat di antara Anggur dan Jeruk","D":"Jeruk berada tepat di sebelah kanan Apel","E":"Anggur berada tepat di sebelah kanan Apel"}'::jsonb,
  NULL,
  'E',
  '![gambar](/gambar/3f223917b425.png)

A. Pisang berada tepat di sebelah kanan Mangga (Benar)

B. Mangga berada tepat di sebelah kanan Jeruk (Benar)

C. Apel berada tepat di antara Anggur dan Jeruk (Benar)

D. Jeruk berada tepat di sebelah kanan Apel (Benar)

E. Anggur berada tepat di sebelah kanan Apel (Salah)

Jawaban: E',
  '/gambar/3f223917b425.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  54,
  'TIU',
  'Deret Angka',
  'sedang',
  'Terdapat beberapa jalur penghubung dari Titik A ke Titik G yang melewati beberapa titik lain. Titik A terhubung langsung dengan B dan C, serta B terhubung dengan C. Dari B, jalur dapat diteruskan ke C atau D. Titik D terhubung dengan B, C, F, dan G. Selain melalui D, titik G juga dapat dicapai melalui E. Titik E hanya terhubung dengan D dan G. Jika jalur dari A ke G hanya boleh melewati maksimal 3 titik perantara, berapakah jumlah kemungkinan jalur yang dapat digunakan?',
  NULL,
  '{"A":"4","B":"5","C":"6","D":"7","E":"8"}'::jsonb,
  NULL,
  'C',
  '![gambar](/gambar/7488bc709cf7.png)

Karena yang diminta pada soal adalah jalur yang hanya boleh melewati maksimal 3 titik di antara titik A dan G, maka kita pilih beberapa kemungkinan jalur:

1. A – B – D – G

2. A – C – D – G

3. A – B – D – E – G

4. A – C – D – E – G

5. A – B – C – D – G

6. A – C – B – D – G

Sehingga, banyak kemungkinan jalur yang dipilih adalah 6

Jawaban: C',
  '/gambar/7488bc709cf7.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  55,
  'TIU',
  'Analitis',
  'sedang',
  'Dalam sebuah Komunitas Sains, lima anggota melaporkan jumlah eksperimen yang telah mereka lakukan selama satu semester. Tentukan urutan nama dari jumlah eksperimen paling sedikit ke paling banyak.

Jika terdapat jumlah eksperimen yang sama, maka urutkan berdasarkan usia termuda terlebih dahulu.

![gambar](/gambar/7a6921a68ee6.png)',
  '/gambar/7a6921a68ee6.png',
  '{"A":"Rian – Lia – Fira – Nina – Dito","B":"Lia – Rian – Nina – Fira – Dito","C":"Rian – Lia – Nina – Fira – Dito","D":"Lia – Rian – Fira – Nina – Dito","E":"Lia – Rian – Fira – Dito – Nina"}'::jsonb,
  NULL,
  'D',
  'Jumlah eksperimen paling sedikit adalah 10 eksperimen (Rian dan Lia), karena jumlah sama, didahulukan dari usia yang paling muda yaitu Lia (19), kemudian Rian (21). Selanjutnya eksperimen yang dilakukan Nina dan Fira adalah 14, karena sama, maka diurutkan dari Fira (20), kemudian Nina (22), dan yang terakhir adalah Dito sebanyak 18 eksperimen. Sehingga urutannya adalah Lia – Rian – Fira – Nina – Dito.

Jawaban: D',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  56,
  'TIU',
  'Kemampuan Numerik',
  'sedang',
  'Di sebuah kompetisi robotik tingkat kota, terdapat empat tim yang berkompetisi selama 3 hari. Penilaian kompetisi terdiri dari dua kategori: teknis dan presentasi. Nilai teknis dihitung 5 kali lipat dari skor teknis. Nilai presentasi dihitung 2 kali lipat dari skor presentasi.

Data skor teknis dan presentasi tiap tim ditampilkan pada tabel berikut:

![gambar](/gambar/2c7432a545cb.png)

Berdasarkan data tersebut, tim mana yang memiliki total nilai tertinggi?',
  '/gambar/2c7432a545cb.png',
  '{"A":"Orion","B":"Nova","C":"Vega","D":"Atlas","E":"Tidak ada"}'::jsonb,
  NULL,
  'D',
  'Nilai teknis dihitung 5 kali lipat dari skor teknis dan nilai presentasi dihitung 2 kali lipat dari skor presentasi.

Sehingga total nilai masing-masing tim dihitung dengan rumus:

(Skor Teknis ×  5) + (Skor Presentase ×  2)

Maka diperoleh,

• Orion = (120 ×  5) + (80 ×  2) = 600 + 160 = 760

• Nova = (110 ×  5) + (100 ×  2) = 550 + 200 = 750

• Vega = (130 ×  5) + (60 ×  2) = 650 + 120 = 770

• Atlas = (140 × 5) + (55 ×  2) = 700 + 110 = 810

Nilai tertinggi diperoleh tim Atlas dengan total 810.

Jawaban: D',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  57,
  'TIU',
  'Figural',
  'sedang',
  'Perhatikan gambar berikut!

![gambar](/gambar/88319637454a.png)',
  '/gambar/88319637454a.png',
  '{"A":"A","B":"B","C":"C","D":"D","E":"E"}'::jsonb,
  NULL,
  'A',
  '![gambar](/gambar/1ee2ab561980.png)

Pola pada gambar (1), (2), (3) dan (5) adalah

• Garis yang berwarna merah tetap

• Garis yang berwarna biru berputar berlawanan arah jarum jam

Sehingga, gambar yang sesuai untuk mengisi posisi (4) adalah

![gambar](/gambar/9ffb1a3e023f.png)

Jawaban: A',
  '/gambar/1ee2ab561980.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  58,
  'TIU',
  'Figural',
  'sedang',
  'Perhatikan gambar berikut!

![gambar](/gambar/c732d8749fd5.png)',
  '/gambar/c732d8749fd5.png',
  '{"A":"A","B":"B","C":"C","D":"D","E":"E"}'::jsonb,
  NULL,
  'A',
  '![gambar](/gambar/fc9cede98b48.png)

Pola dari gambar (1) ke gambar (2), gambar (2) ke gambar (3), dan seterusnya, adalah sebagai berikut:

• Objek 1: Polanya adalah berubah warna dari putih – hitam – putih – hitam, begitu seterusnya.

• Objek 2: Polanya adalah dicerminkan secara vertikal – tetap – dicerimankan secara vertikal – tetap

• Objek 3: Polanya adalah diputar 180°.

• Objek 4: Polanya tetap – diputar 180° – tetap – diputar 180°.

• Objek 5: Polanya adalah berputar 180° - berubah warna dari hitam ke putih - berputar 180° - berubah warna dari putih ke hitam.

Sehingga, gambar yang sesuai untuk mengisi posisi pada gambar (4) adalah

![gambar](/gambar/9cb37eca0341.png)

Jawaban: A',
  '/gambar/fc9cede98b48.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  59,
  'TIU',
  'Figural',
  'sedang',
  'Perhatikan gambar berikut!

![gambar](/gambar/344e497b7a6a.png)',
  '/gambar/344e497b7a6a.png',
  '{"A":"A","B":"B","C":"C","D":"D","E":"E"}'::jsonb,
  NULL,
  'A',
  '![gambar](/gambar/d42591384450.png)

Pola pada gambar (1) ke gambar (2) adalah, garis yang berwarna merah tetap dan garis berwarna biru berotasi berlawanan arah jarum jam.

Dengan mengaplikasikan pola tersebut ke gambar (3) dan (4), maka gambar yang sesuai untuk gambar (4) adalah

![gambar](/gambar/cf43962a1d7e.png)

Jawaban: A',
  '/gambar/d42591384450.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  60,
  'TIU',
  'Figural',
  'sedang',
  'Perhatikan gambar berikut!

![gambar](/gambar/dcf7fd543321.png)',
  '/gambar/dcf7fd543321.png',
  '{"A":"A","B":"B","C":"C","D":"D","E":"E"}'::jsonb,
  NULL,
  'B',
  '![gambar](/gambar/c3c3d2f90d51.png)

Pola dari gambar (1) ke gambar (2), penyusun objek sama. Kemudian jumlah objek A berkurang 1 sisi, objek B bertambah 2 sisi, dan objek C bertambah 1 sisi.

Pola serupa diaplikasikan pada gambar (3) ke gambar (4), sehingga gambar yang sesuai untuk mengisi gambar (4) adalah

![gambar](/gambar/78c031015ca8.png)

Jawaban: B',
  '/gambar/c3c3d2f90d51.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  61,
  'TIU',
  'Figural',
  'sedang',
  'Perhatikan gambar berikut!

![gambar](/gambar/d9cc01b03a0b.png)',
  '/gambar/d9cc01b03a0b.png',
  '{"A":"A","B":"B","C":"C","D":"D","E":"E"}'::jsonb,
  NULL,
  'B',
  'Pada opsi A, C, D, E semuanya merupakan kumpulan 3 garis identik yang saling sejajar (paralel). 

Pola Gambar B merupakan satu-satunya gambar di mana garis-garisnya saling bersinggungan, berpotongan, dan menyambung satu sama lain membentuk struktur bangunan/kotak yang menyatu

Sehingga gambar yang paling beda adalah B

Jawaban: B',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  62,
  'TIU',
  'Figural',
  'sedang',
  'Perhatikan gambar berikut!

![gambar](/gambar/66f629f91591.png)',
  '/gambar/66f629f91591.png',
  '{"A":"A","B":"B","C":"C","D":"D","E":"E"}'::jsonb,
  NULL,
  'A',
  'Pola pada opsi B, C, D, dan E menunjukkan bahwa kedua elemen hitam selalu diletakkan berdekatan. Satu-satunya gambar yang tidak mengikuti pola tersebut adalah gambar A.

Jawaban: A',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  63,
  'TIU',
  'Figural',
  'sedang',
  'Perhatikan gambar berikut!

![gambar](/gambar/f21722e22413.png)',
  '/gambar/f21722e22413.png',
  '{"A":"A","B":"B","C":"C","D":"D","E":"E"}'::jsonb,
  NULL,
  'B',
  'Pola pada kolom pertama adalah sebagai berikut:

![gambar](/gambar/67e38d498ee1.png)

Pola juga diaplikasikan pada kolom kedua dan ketiga. Sehingga gambar yang sesuai untuk mengisi posisi kolom tiga baris ketiga adalah

![gambar](/gambar/83e9f83bf335.png)

Jawaban: B',
  '/gambar/67e38d498ee1.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  64,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Perhatikan gambar berikut!

![gambar](/gambar/e340c9c44a9f.png)',
  '/gambar/e340c9c44a9f.png',
  '{"A":"A","B":"B","C":"C","D":"D","E":"E"}'::jsonb,
  NULL,
  'C',
  '![gambar](/gambar/83b45cce0b79.png)

Pola pada baris satu:

• Garis biru berputar secara bertahap berlawanan arah jarum jam.

• Dua garis merah dalam satu baris muncul dua kali pada posisi yang sama.

• Setiap objek pada masing-masing kotak memiliki bentuk yang berbeda dibandingkan dengan objek pada baris dan kolom lainnya.

Jawaban: C',
  '/gambar/83b45cce0b79.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  65,
  'TIU',
  'Figural Matriks 9 Kotak',
  'sedang',
  'Perhatikan gambar berikut!

![gambar](/gambar/cb771d8e843d.png)',
  '/gambar/cb771d8e843d.png',
  '{"A":"A","B":"B","C":"C","D":"D","E":"E"}'::jsonb,
  NULL,
  'E',
  '![gambar](/gambar/7db784a9f5d2.png)

Figural 9 kotak ini memiliki pola perbaris setiap objeknya

- Objek 1: pola objek berotasi 90° berlawanan arah jarum jam

- Objek 2: tetap

- Objek 3: pola objek dari kolom 1 ke kolom 2 dicerminkan secara vertikal. Kemudian dari kolom 2 ke kolom 3 berotasi 180°

- Objek 4: pola objek tiap barisnya memiliki 1 ukuran kecil dan 2 ukuran besar. Kemudian memiliki pola warna yang bergantian putih – hitam – putih setiap kolomnya 

- Objek tengah berpola 1 ukuran besar dan 2 ukuran kecil, kemudian warna objeknya berpola 1 warna abu-abu dan 2 warna putih.

Sehingga mengikuti pola tersebut, gambar yang tepat untuk mengisi adalah

![gambar](/gambar/8d936d475508.png)

Jawaban: E',
  '/gambar/7db784a9f5d2.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  66,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda adalah pimpinan perusahaan yang akan membuka proyek baru di lingkungan warga. Proyek ini bisa memberi keuntungan besar bagi perusahaan, tetapi sebagian warga khawatir dengan dampaknya. Anda harus menentukan sikap yang tetap profesional dan bertanggung jawab. Apa yang Anda lakukan?',
  NULL,
  '{"A":"Mengajak perwakilan warga berdiskusi untuk mencari solusi yang menguntungkan perusahaan dan masyarakat.","B":"Tetap menjalankan proyek sesuai rencana agar target keuntungan perusahaan tercapai dengan maksimal.","C":"Menjalankan proyek sambil menambahkan program sosial untuk membantu masyarakat sekitar.","D":"Berkoordinasi dengan pemerintah daerah agar proyek mendapat arahan dan dukungan kebijakan.","E":"Meninjau kembali rencana proyek dan menyesuaikannya dengan prinsip usaha berkelanjutan walau keuntungan berkurang."}'::jsonb,
  '{"A":5,"B":1,"C":2,"D":3,"E":4}'::jsonb,
  'A',
  'Profesionalisme dalam kepemimpinan proyek menuntut keseimbangan antara orientasi hasil dan tanggung jawab sosial. Nilai BerAKHLAK yang relevan adalah Akuntabel, Kolaboratif, dan Berorientasi Pelayanan karena keputusan berdampak langsung pada masyarakat. Pilihan A paling tepat karena mengajak perwakilan warga berdiskusi menunjukkan keterbukaan, tanggung jawab, dan kemauan mencari solusi bersama sehingga mencerminkan Kolaboratif dan Akuntabel serta mendapat skor 5. Pilihan E juga sangat baik karena menyesuaikan proyek dengan prinsip keberlanjutan menunjukkan integritas dan tanggung jawab jangka panjang sehingga mendapat skor 4. Pilihan D cukup baik karena berkoordinasi dengan pemerintah daerah mencerminkan Loyal terhadap regulasi namun belum menyentuh partisipasi langsung masyarakat sehingga mendapat skor 3. Pilihan C menunjukkan kepedulian sosial tetapi belum menyelesaikan kekhawatiran utama warga sehingga mendapat skor 2. Pilihan B paling tidak tepat karena hanya fokus pada keuntungan tanpa mempertimbangkan dampak sosial sehingga tidak mencerminkan Berorientasi Pelayanan dan mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  67,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda adalah mahasiswa baru yang ingin cepat beradaptasi dan meningkatkan produktivitas belajar di perkuliahan. Anda menyadari bahwa cara mengatur waktu dan strategi belajar akan sangat menentukan hasil akademik Anda. Langkah apa yang Anda lakukan?',
  NULL,
  '{"A":"Menggunakan media sosial atau hiburan sebagai penghargaan setelah menyelesaikan target belajar.","B":"Menunda sebagian tugas agar dapat fokus pada mata kuliah yang dianggap lebih sulit.","C":"Mengurangi kegiatan organisasi dan hobi sementara waktu agar lebih fokus pada perkuliahan.","D":"Mengurangi waktu istirahat agar dapat memperpanjang durasi belajar setiap hari.","E":"Bergabung dalam kelompok belajar untuk berdiskusi dan saling membantu memahami materi kuliah."}'::jsonb,
  '{"A":3,"B":2,"C":4,"D":1,"E":5}'::jsonb,
  'E',
  'Sebagai mahasiswa, profesionalisme tercermin dalam pengelolaan diri yang disiplin dan berkelanjutan. Nilai BerAKHLAK yang relevan adalah Kompeten dan Adaptif karena peningkatan hasil belajar memerlukan strategi efektif dan kolaboratif. Pilihan E paling tepat karena bergabung dalam kelompok belajar menunjukkan kemauan meningkatkan kompetensi melalui diskusi dan kerja sama sehingga mencerminkan Kompeten dan Kolaboratif serta mendapat skor 5. Pilihan C juga baik karena memprioritaskan akademik menunjukkan komitmen terhadap tanggung jawab utama sehingga mendapat skor 4. Pilihan A cukup tepat karena menjaga motivasi belajar namun tidak secara langsung meningkatkan kualitas pemahaman sehingga mendapat skor 3. Pilihan B kurang tepat karena menunda tugas berpotensi menurunkan disiplin sehingga mendapat skor 2. Pilihan D paling tidak tepat karena mengurangi waktu istirahat dapat menurunkan efektivitas dan kesehatan sehingga tidak mencerminkan pengelolaan diri yang baik dan mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  68,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda adalah ketua panitia sebuah acara kampus besar yang melibatkan banyak divisi dan tenggat waktu yang berbeda. Agar seluruh rangkaian kegiatan berjalan tertib dan sesuai target, Anda perlu menyusun rencana kerja yang efektif. Langkah apa yang Anda lakukan?',
  NULL,
  '{"A":"Memprioritaskan bagian acara yang paling menarik perhatian agar hasilnya terlihat maksimal sejak awal.","B":"Membagi seluruh pekerjaan ke dalam tugas-tugas kecil lalu menyusun jadwal yang jelas untuk setiap divisi.","C":"Menambah konsep kegiatan baru sambil tetap menjalankan rencana yang sudah ada agar acara semakin meriah.","D":"Memberikan kepercayaan penuh kepada setiap divisi untuk mengatur pekerjaannya masing-masing tanpa banyak intervensi.","E":"Menyelesaikan tugas yang paling mudah terlebih dahulu agar tim lebih termotivasi untuk melanjutkan pekerjaan berikutnya."}'::jsonb,
  '{"A":3,"B":5,"C":1,"D":2,"E":4}'::jsonb,
  'B',
  'Dalam kepemimpinan organisasi, profesionalisme ditunjukkan melalui perencanaan terstruktur dan pengendalian kerja yang sistematis. Nilai BerAKHLAK yang dominan adalah Akuntabel dan Kompeten karena pemimpin harus memastikan pekerjaan berjalan efektif dan terukur. Pilihan B paling tepat karena membagi tugas menjadi bagian kecil dan menyusun jadwal jelas menunjukkan manajemen yang terencana dan tanggung jawab yang kuat sehingga mendapat skor 5. Pilihan E juga baik karena membangun motivasi tim melalui strategi bertahap namun belum menekankan pengendalian menyeluruh sehingga mendapat skor 4. Pilihan A cukup baik karena memperhatikan daya tarik acara tetapi berisiko kurang seimbang dalam perencanaan teknis sehingga mendapat skor 3. Pilihan D kurang tepat karena kepercayaan tanpa pengawasan berpotensi mengurangi akuntabilitas sehingga mendapat skor 2. Pilihan C paling tidak tepat karena menambah konsep baru tanpa penguatan sistem dapat mengganggu stabilitas kerja sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  69,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda adalah seorang perawat di rumah sakit yang merasa kemampuan Anda perlu ditingkatkan agar pelayanan kepada pasien semakin baik. Anda ingin terus berkembang dan mengikuti perkembangan ilmu kesehatan yang terbaru. Langkah apa yang Anda lakukan?',
  NULL,
  '{"A":"Mengikuti pelatihan medis atau seminar kesehatan untuk memperbarui pengetahuan dan keterampilan Anda.","B":"Membaca jurnal dan artikel kesehatan terbaru untuk menambah wawasan secara mandiri.","C":"Mencoba menggunakan alat atau sistem baru di ruangan agar pelayanan terasa lebih modern.","D":"Mengamati cara kerja perawat senior lalu mencoba menerapkan praktik baik tersebut dalam tugas harian Anda.","E":"Menonton video edukasi kesehatan sebagai referensi tambahan dalam meningkatkan kemampuan Anda."}'::jsonb,
  '{"A":5,"B":3,"C":2,"D":4,"E":1}'::jsonb,
  'A',
  'Sebagai tenaga kesehatan, profesionalisme erat kaitannya dengan peningkatan kompetensi berkelanjutan demi pelayanan optimal. Nilai BerAKHLAK yang relevan adalah Kompeten dan Berorientasi Pelayanan karena kualitas layanan berdampak langsung pada keselamatan pasien. Pilihan A paling tepat karena mengikuti pelatihan atau seminar menunjukkan komitmen sistematis meningkatkan keterampilan sesuai standar profesi sehingga mendapat skor 5. Pilihan D juga baik karena belajar dari praktik senior mencerminkan sikap reflektif dan adaptif sehingga mendapat skor 4. Pilihan B cukup baik karena membaca jurnal menambah wawasan namun belum tentu terimplementasi secara praktis sehingga mendapat skor 3. Pilihan C kurang tepat karena mencoba alat baru tanpa peningkatan kompetensi mendalam berpotensi kurang efektif sehingga mendapat skor 2. Pilihan E paling tidak tepat karena hanya mengandalkan video tanpa pembinaan profesional kurang komprehensif sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  70,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda bekerja sebagai staf pengelola data di sebuah perusahaan transportasi. Suatu hari ada pihak luar yang meminta akses data operasional perusahaan untuk keperluan penelitian. Sebagian data bersifat umum, namun sebagian lainnya termasuk informasi internal. Sikap apa yang Anda ambil?',
  NULL,
  '{"A":"Mengusulkan pembuatan prosedur tertulis agar permintaan data berikutnya dapat ditangani lebih jelas.","B":"Menolak seluruh permintaan data agar tidak menimbulkan risiko bagi perusahaan.","C":"Memberikan seluruh data yang diminta agar perusahaan terlihat terbuka.","D":"Memilah data sesuai aturan perusahaan dan hanya memberikan informasi yang memang boleh dibagikan.","E":"Mendiskusikan permintaan tersebut dengan atasan sebelum mengambil keputusan akhir."}'::jsonb,
  '{"A":3,"B":1,"C":2,"D":5,"E":4}'::jsonb,
  'D',
  'Pengelolaan data menuntut integritas dan kepatuhan pada aturan karena berkaitan dengan keamanan informasi. Nilai BerAKHLAK yang utama adalah Akuntabel dan Loyal karena setiap keputusan harus sesuai kebijakan dan melindungi kepentingan organisasi. Pilihan D paling tepat karena memilah data sesuai aturan menunjukkan integritas serta kepatuhan regulasi sehingga mendapat skor 5. Pilihan E juga baik karena berdiskusi dengan atasan menunjukkan kehati-hatian dan tanggung jawab sebelum mengambil keputusan sehingga mendapat skor 4. Pilihan A cukup baik karena mengusulkan prosedur tertulis menunjukkan perbaikan sistem namun belum menjawab situasi langsung sehingga mendapat skor 3. Pilihan C kurang tepat karena memberikan seluruh data berisiko melanggar kerahasiaan sehingga mendapat skor 2. Pilihan B paling tidak tepat karena menolak seluruh permintaan tanpa pertimbangan proporsional tidak mencerminkan pelayanan profesional sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  71,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda adalah manajer di sebuah perusahaan milik pemerintah yang ingin meningkatkan kemampuan karyawan baru agar cepat beradaptasi dengan target kerja. Anda harus memastikan program pengembangan berjalan tepat sasaran. Apa yang Anda lakukan?',
  NULL,
  '{"A":"Menyediakan program pendampingan dengan melibatkan karyawan senior sebagai mentor.","B":"Mengadakan sesi praktik langsung agar teori yang dipelajari lebih mudah diterapkan.","C":"Menggunakan sistem pembelajaran daring agar materi dapat diakses secara fleksibel.","D":"Mewajibkan karyawan baru mengikuti pelatihan tambahan setelah dilakukan penilaian awal.","E":"Melakukan evaluasi rutin lalu menyesuaikan materi pelatihan sesuai kebutuhan tim."}'::jsonb,
  '{"A":5,"B":2,"C":1,"D":3,"E":4}'::jsonb,
  'A',
  'Profesionalisme dalam pengembangan SDM menuntut program yang terarah, terukur, dan mampu mempercepat adaptasi kerja. Nilai BerAKHLAK yang relevan adalah Kompeten, Kolaboratif, dan Akuntabel karena peningkatan kapasitas karyawan harus dilakukan secara sistematis dan bertanggung jawab. Pilihan A paling tepat karena menyediakan program pendampingan dengan mentor senior menunjukkan transfer pengetahuan yang terstruktur serta membangun budaya kolaboratif sehingga karyawan baru lebih cepat memahami standar kerja dan mendapat skor 5. Pilihan E juga sangat baik karena melakukan evaluasi rutin dan menyesuaikan materi mencerminkan sikap adaptif dan akuntabel terhadap kebutuhan tim sehingga mendapat skor 4. Pilihan D cukup baik karena mewajibkan pelatihan tambahan setelah penilaian awal menunjukkan pendekatan berbasis kebutuhan namun belum menyentuh aspek pendampingan langsung sehingga mendapat skor 3. Pilihan B bermanfaat karena praktik langsung memperkuat pemahaman namun tanpa sistem pendampingan berkelanjutan hasilnya kurang optimal sehingga mendapat skor 2. Pilihan C paling tidak tepat karena hanya mengandalkan pembelajaran daring tanpa kontrol kualitas dan pendampingan aktif kurang efektif dalam percepatan adaptasi sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  72,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda adalah staf pengadaan di sebuah perusahaan dan menemukan dokumen persetujuan yang terindikasi berkaitan dengan praktik gratifikasi dari vendor tertentu. Anda memahami risiko etika dan hukum yang mungkin timbul, tetapi juga mempertimbangkan dampaknya terhadap posisi Anda di tim. Sikap apa yang Anda ambil?',
  NULL,
  '{"A":"Menyetujui dokumen tersebut sambil merencanakan pembahasan ulang dalam rapat evaluasi berikutnya.","B":"Menyetujui dokumen tersebut agar pekerjaan tetap berjalan lalu membahasnya secara pribadi dengan atasan.","C":"Menyetujui dokumen tersebut dengan harapan praktik tersebut dapat diperbaiki secara bertahap dari dalam tim.","D":"Menolak menyetujui dokumen tersebut dan melaporkannya melalui mekanisme pelaporan internal yang berlaku.","E":"Menolak menyetujui dokumen tersebut dan meminta pendapat bagian hukum sebelum mengambil langkah lanjut."}'::jsonb,
  '{"A":3,"B":2,"C":1,"D":5,"E":4}'::jsonb,
  'D',
  'Profesionalisme dalam pengadaan sangat berkaitan dengan integritas dan kepatuhan hukum. Nilai BerAKHLAK yang dominan adalah Akuntabel dan Loyal karena ASN atau pegawai BUMN wajib menjaga kepercayaan publik dan mematuhi aturan. Pilihan D paling tepat karena menolak dokumen dan melaporkannya melalui mekanisme internal menunjukkan keberanian moral serta kepatuhan terhadap sistem pengendalian sehingga mendapat skor 5. Pilihan E juga baik karena menolak dan meminta pendapat bagian hukum menunjukkan kehati-hatian serta tanggung jawab profesional sehingga mendapat skor 4. Pilihan A kurang tepat karena tetap menyetujui dokumen meski berencana membahasnya kemudian tetap membuka risiko pelanggaran sehingga mendapat skor 3. Pilihan B lebih lemah karena menyetujui demi kelancaran pekerjaan menunjukkan kompromi terhadap integritas sehingga mendapat skor 2. Pilihan C paling tidak tepat karena membiarkan praktik tersebut berjalan dengan harapan perbaikan bertahap tidak mencerminkan sikap tegas terhadap pelanggaran sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  73,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda adalah supervisor di sebuah pusat layanan pelanggan dan sedang memimpin briefing penting dengan tim. Tiba-tiba salah satu staf meminta bantuan karena ada komplain besar dari klien penting di luar ruangan. Apa yang Anda lakukan?',
  NULL,
  '{"A":"Meminta staf lain yang tidak sedang briefing untuk menangani komplain sementara waktu.","B":"Mengajak staf tersebut masuk dan membahas komplain di tengah briefing tim agar segera tertangani.","C":"Memintanya menunggu sampai briefing selesai tanpa mengambil langkah tambahan.","D":"Menginformasikan pimpinan rapat lalu meminta izin untuk membantu menangani komplain tersebut.","E":"Menyelesaikan briefing terlebih dahulu lalu segera membantu menangani komplain setelahnya."}'::jsonb,
  '{"A":4,"B":2,"C":1,"D":5,"E":3}'::jsonb,
  'D',
  'Profesionalisme dalam layanan pelanggan menuntut kemampuan mengelola prioritas tanpa mengabaikan tanggung jawab utama. Nilai BerAKHLAK yang relevan adalah Berorientasi Pelayanan, Akuntabel, dan Adaptif karena kepuasan klien harus ditangani cepat dan tepat. Pilihan D paling tepat karena menginformasikan pimpinan rapat lalu meminta izin menunjukkan koordinasi yang tertib sekaligus responsif terhadap komplain penting sehingga mendapat skor 5. Pilihan A juga baik karena mendelegasikan kepada staf lain mencerminkan manajemen tugas yang efektif sehingga mendapat skor 4. Pilihan E cukup baik karena menyelesaikan briefing terlebih dahulu menunjukkan tanggung jawab terhadap forum namun respons terhadap komplain menjadi kurang cepat sehingga mendapat skor 3. Pilihan B kurang tepat karena membahas komplain di tengah briefing dapat mengganggu fokus tim sehingga mendapat skor 2. Pilihan C paling tidak tepat karena menunda tanpa tindakan tambahan tidak mencerminkan orientasi pelayanan sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  74,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda adalah manajer sebuah toko retail dan ingin menanamkan sikap profesional kepada karyawan baru. Anda berencana mengajak mereka melihat langsung operasional cabang utama yang terkenal disiplin dan tertata. Agar kegiatan itu berdampak maksimal, apa yang Anda lakukan?',
  NULL,
  '{"A":"Meminta karyawan berpakaian rapi agar mencerminkan sikap profesional saat kunjungan.","B":"Menugaskan karyawan mengamati dan mencatat praktik kerja yang baik selama kunjungan.","C":"Mengadakan sesi refleksi singkat tanpa arahan khusus setelah kegiatan selesai.","D":"Mengajak karyawan berdiskusi dan simulasi pelayanan setelah kunjungan selesai.","E":"Memberikan tugas laporan tertulis tentang sistem kerja yang mereka lihat."}'::jsonb,
  '{"A":3,"B":5,"C":1,"D":4,"E":2}'::jsonb,
  'B',
  'Menanamkan profesionalisme membutuhkan pembelajaran aktif yang mendorong refleksi dan penerapan nyata. Nilai BerAKHLAK yang menonjol adalah Kompeten dan Berorientasi Pelayanan karena karyawan perlu memahami praktik kerja unggul secara konkret. Pilihan B paling tepat karena menugaskan karyawan mengamati dan mencatat praktik baik mendorong sikap kritis dan pembelajaran aktif sehingga mendapat skor 5. Pilihan D juga sangat baik karena diskusi dan simulasi setelah kunjungan membantu internalisasi nilai profesional sehingga mendapat skor 4. Pilihan A cukup baik karena menjaga penampilan mencerminkan etika kerja namun hanya menyentuh aspek simbolik sehingga mendapat skor 3. Pilihan E kurang tepat karena laporan tertulis tanpa pendalaman praktik kurang mendorong perubahan perilaku sehingga mendapat skor 2. Pilihan C paling tidak tepat karena refleksi tanpa arahan kurang terstruktur sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  75,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda adalah kepala tim di sebuah perusahaan kreatif dan ingin anggota tim siap menghadapi tuntutan dunia kerja yang cepat berubah. Anda menyadari keterampilan praktis sangat dibutuhkan selain teori. Langkah apa yang Anda ambil?',
  NULL,
  '{"A":"Menyusun materi kerja yang seimbang antara teori dan praktik dalam setiap proyek.","B":"Mengadakan program mentoring internal tanpa keterlibatan pihak luar.","C":"Mengundang praktisi industri untuk berbagi pengalaman langsung kepada tim.","D":"Mengajak tim mengikuti program magang atau proyek kolaborasi dengan mitra eksternal.","E":"Mewajibkan tim mengikuti pelatihan keterampilan sesuai bidang masing-masing."}'::jsonb,
  '{"A":2,"B":1,"C":5,"D":4,"E":3}'::jsonb,
  'C',
  'alam dunia kerja yang dinamis profesionalisme menuntut kesiapan menghadapi perubahan melalui penguatan kompetensi praktis dan jejaring eksternal. Nilai BerAKHLAK yang relevan adalah Kompeten dan Adaptif karena tim harus mampu belajar dari praktik terbaik industri. Pilihan C paling tepat karena mengundang praktisi industri memberikan wawasan nyata serta memperluas perspektif kerja sehingga mendapat skor 5. Pilihan D juga baik karena magang atau kolaborasi eksternal memberi pengalaman langsung menghadapi tantangan riil sehingga mendapat skor 4. Pilihan E cukup baik karena pelatihan bidang masing masing meningkatkan kompetensi namun kurang memperkaya sudut pandang lintas praktik sehingga mendapat skor 3. Pilihan A kurang tepat karena keseimbangan teori dan praktik masih bersifat internal dan belum membuka jejaring eksternal sehingga mendapat skor 2. Pilihan B paling tidak tepat karena mentoring internal tanpa variasi sumber belajar kurang adaptif terhadap perubahan industri sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  76,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda adalah ASN yang ditugaskan memimpin pembangunan puskesmas di daerah terpencil dengan keterbatasan anggaran dan tenaga. Agar proyek tetap berjalan efektif, langkah apa yang Anda ambil?',
  NULL,
  '{"A":"Membuat daftar lengkap sumber daya yang tersedia lalu memprioritaskan penggunaannya sesuai kebutuhan.","B":"Menggunakan sistem pemantauan jarak jauh untuk mengurangi kebutuhan pengawasan langsung di lapangan.","C":"Menggunakan simulasi perencanaan digital untuk meminimalkan kesalahan desain sejak awal.","D":"Menerapkan sistem koordinasi daring agar tim tetap terhubung tanpa banyak pertemuan fisik.","E":"Mencari alternatif teknologi baru yang lebih hemat untuk digunakan di wilayah terpencil."}'::jsonb,
  '{"A":5,"B":3,"C":2,"D":4,"E":1}'::jsonb,
  'A',
  'Sebagai ASN yang memimpin pembangunan puskesmas di daerah terpencil, profesionalisme tidak hanya diukur dari keberhasilan fisik proyek tetapi juga dari kemampuan mengelola keterbatasan secara efektif dan akuntabel. Nilai BerAKHLAK yang dominan adalah Akuntabel, Kompeten, dan Adaptif karena pengelolaan anggaran publik harus transparan, tepat prioritas, dan berorientasi pada kebutuhan masyarakat. Pilihan A paling tepat karena menyusun daftar sumber daya lalu memprioritaskannya menunjukkan perencanaan yang sistematis dan bertanggung jawab sehingga setiap keputusan berbasis kebutuhan riil di lapangan dan mendapat skor 5. Pilihan D juga sangat baik karena koordinasi daring menjaga efektivitas komunikasi tim di tengah keterbatasan akses sehingga mencerminkan sikap adaptif dan efisien serta mendapat skor 4. Pilihan B cukup baik karena pemantauan jarak jauh membantu pengawasan namun tidak sepenuhnya menjawab persoalan manajemen sumber daya inti sehingga mendapat skor 3. Pilihan C kurang tepat karena simulasi desain memang mengurangi risiko teknis tetapi tidak menjadi solusi utama atas keterbatasan anggaran dan tenaga sehingga mendapat skor 2. Pilihan E paling tidak tepat karena mencari teknologi baru berisiko menambah kompleksitas dan belum tentu sesuai kebutuhan lokal sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  77,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda adalah Kepala Dinas Pertanian dan menerima banyak keluhan dari petani karena harga pupuk terus meningkat. Kondisi ini mulai mengganggu produktivitas dan kesejahteraan petani di wilayah Anda. Anda harus mengambil langkah yang profesional dan berdampak nyata. Apa yang Anda lakukan?',
  NULL,
  '{"A":"Mengumpulkan data distribusi pupuk lalu berkoordinasi dengan pihak terkait untuk memastikan penyaluran tepat sasaran.","B":"Mengeluarkan imbauan kepada petani untuk menggunakan pupuk secara lebih efisien sesuai anjuran teknis.","C":"Melakukan sosialisasi melalui media cetak dan digital tentang kebijakan pupuk agar petani memahami situasi yang terjadi.","D":"Mengusulkan tambahan subsidi pupuk kepada pemerintah daerah agar beban petani dapat dikurangi dan produktivitas meningkat.","E":"Mengajak perwakilan petani, distributor, dan pemerintah duduk bersama mencari solusi yang adil dan berkelanjutan."}'::jsonb,
  '{"A":3,"B":2,"C":1,"D":4,"E":5}'::jsonb,
  'E',
  'Sebagai Kepala Dinas Pertanian, profesionalisme menuntut keberpihakan pada kepentingan publik dengan pendekatan yang strategis dan berkelanjutan. Nilai BerAKHLAK yang relevan adalah Berorientasi Pelayanan, Kolaboratif, dan Akuntabel karena kebijakan harus berdampak langsung pada kesejahteraan petani. Pilihan E paling tepat karena mengajak petani, distributor, dan pemerintah duduk bersama menunjukkan kepemimpinan kolaboratif dan solusi partisipatif yang berpotensi adil serta berkelanjutan sehingga mendapat skor 5. Pilihan D juga sangat baik karena mengusulkan subsidi tambahan menunjukkan keberpihakan konkret terhadap kesejahteraan petani sehingga mendapat skor 4. Pilihan A cukup baik karena pengumpulan data distribusi mencerminkan akuntabilitas namun masih pada tahap administratif sehingga mendapat skor 3. Pilihan B kurang tepat karena imbauan efisiensi tidak menyentuh akar persoalan harga sehingga mendapat skor 2. Pilihan C paling tidak tepat karena sosialisasi kebijakan tanpa tindakan konkret tidak cukup memberikan dampak nyata sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  78,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda seorang karyawan di sebuah kantor yang mulai terpecah karena perbedaan pandangan politik antarpegawai. Perdebatan sering terjadi dan mulai mengganggu kinerja tim. Apa yang Anda lakukan?',
  NULL,
  '{"A":"Mengingatkan seluruh tim agar memisahkan urusan politik pribadi dari tanggung jawab pekerjaan.","B":"Mengusulkan aturan internal tentang etika berdiskusi agar suasana kerja tetap profesional.","C":"Menghindari pembahasan politik dan fokus pada penyelesaian tugas masing-masing.","D":"Mengadakan diskusi terbuka agar setiap pegawai dapat menyampaikan pandangannya secara tertib.","E":"Melaporkan pegawai yang berbeda pandangan kepada atasan agar diberi peringatan."}'::jsonb,
  '{"A":4,"B":5,"C":2,"D":3,"E":1}'::jsonb,
  'B',
  'Dalam lingkungan kerja yang mulai terpecah karena perbedaan pandangan politik, pencegahan radikalisme harus dilakukan dengan pendekatan sistemik dan profesional. Nilai BerAKHLAK yang dominan adalah Harmonis dan Loyal karena ASN wajib menjaga persatuan dan netralitas. Pilihan B paling tepat karena mengusulkan aturan etika berdiskusi menciptakan batas yang jelas agar perbedaan tidak merusak profesionalitas sehingga mendapat skor 5. Pilihan A juga baik karena mengingatkan pemisahan urusan pribadi dan pekerjaan menunjukkan kesadaran menjaga netralitas sehingga mendapat skor 4. Pilihan D cukup baik karena diskusi terbuka memberi ruang komunikasi namun berpotensi memperpanjang perdebatan jika tidak terstruktur sehingga mendapat skor 3. Pilihan C kurang tepat karena hanya menghindari pembahasan tanpa solusi sistemik sehingga mendapat skor 2. Pilihan E paling tidak tepat karena melaporkan perbedaan pandangan tanpa indikasi pelanggaran dapat memicu konflik baru sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  79,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda adalah kepala sekolah yang melihat tanda-tanda perubahan sikap ekstrem pada salah satu siswa. Anda ingin melakukan langkah pencegahan sejak dini tanpa menimbulkan stigma. Apa yang Anda lakukan?',
  NULL,
  '{"A":"Mengadakan edukasi tentang bahaya radikalisme untuk seluruh siswa.","B":"Meminta guru BK melakukan pendekatan dan observasi terhadap siswa tersebut.","C":"Meningkatkan keterlibatan siswa dalam kegiatan kelompok yang positif.","D":"Membuka ruang diskusi kelas agar siswa dapat menyampaikan pandangan secara terbuka.","E":"Meminta siswa tersebut sementara dirumahkan agar tidak memengaruhi siswa yang lain."}'::jsonb,
  '{"A":4,"B":5,"C":3,"D":2,"E":1}'::jsonb,
  'B',
  'Sebagai kepala sekolah, langkah pencegahan harus dilakukan secara edukatif dan tidak menimbulkan stigma. Nilai BerAKHLAK yang relevan adalah Harmonis, Adaptif, dan Berorientasi Pelayanan karena pendidikan harus melindungi sekaligus membina. Pilihan B paling tepat karena melibatkan guru BK untuk pendekatan personal menunjukkan penanganan profesional dan terarah tanpa mempermalukan siswa sehingga mendapat skor 5. Pilihan A juga sangat baik karena edukasi umum mencegah penyebaran pemahaman ekstrem secara luas sehingga mendapat skor 4. Pilihan C cukup baik karena kegiatan positif memperkuat integrasi sosial namun belum menyentuh pendekatan khusus terhadap siswa tersebut sehingga mendapat skor 3. Pilihan D kurang tepat karena diskusi terbuka berpotensi memunculkan perdebatan sensitif jika tidak terkontrol sehingga mendapat skor 2. Pilihan E paling tidak tepat karena merumahkan siswa berisiko menciptakan stigma dan memperburuk kondisi psikologis sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  80,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda adalah lurah di wilayah yang mulai terpapar paham intoleran. Anda menyadari perlu kerja sama banyak pihak agar pencegahan berjalan efektif. Apa langkah Anda?',
  NULL,
  '{"A":"Menangani masalah secara internal di kelurahan tanpa melibatkan pihak lain.","B":"Membentuk tim lintas instansi untuk menyusun strategi pencegahan bersama.","C":"Memanfaatkan teknologi untuk memantau informasi yang beredar di masyarakat.","D":"Mengadakan pertemuan rutin dengan tokoh masyarakat untuk berbagi informasi.","E":"Fokus pada kegiatan sosialisasi mandiri kepada warga dengan koordinasi seadanya."}'::jsonb,
  '{"A":1,"B":5,"C":3,"D":4,"E":2}'::jsonb,
  'B',
  'Situasi ini menguji kemampuan membangun sinergi dan kolaborasi dalam mencegah berkembangnya paham intoleran di masyarakat. Permasalahan yang berkaitan dengan intoleransi dan radikalisme umumnya tidak dapat ditangani oleh satu pihak saja, melainkan memerlukan keterlibatan berbagai unsur seperti pemerintah, aparat keamanan, tokoh masyarakat, tokoh agama, lembaga pendidikan, dan unsur masyarakat lainnya. Hal ini mencerminkan nilai BerAKHLAK terutama Kolaboratif, Loyal, dan Harmonis. Kolaboratif berarti membangun kerja sama lintas pihak untuk mencapai tujuan bersama. Loyal berarti menjaga persatuan dan keutuhan bangsa. Harmonis berarti menciptakan lingkungan sosial yang saling menghormati di tengah keberagaman masyarakat. Pilihan B memperoleh skor 5 karena menunjukkan upaya paling komprehensif melalui pembentukan tim lintas instansi yang memungkinkan koordinasi, pertukaran informasi, dan penyusunan strategi pencegahan secara terpadu. Pendekatan ini memiliki jangkauan dan efektivitas yang lebih besar dibandingkan langkah yang dilakukan secara parsial. Pilihan D memperoleh skor 4 karena melibatkan tokoh masyarakat yang memiliki pengaruh besar dalam membangun ketahanan sosial dan mendeteksi potensi masalah di lingkungan warga. Namun, cakupannya masih lebih terbatas dibanding kolaborasi lintas instansi. Pilihan C memperoleh skor 3 karena pemanfaatan teknologi dapat membantu memantau perkembangan informasi dan potensi penyebaran paham intoleran. Namun, teknologi hanya merupakan alat pendukung dan tidak dapat menggantikan koordinasi serta kerja sama antarpihak. Pilihan E memperoleh skor 2 karena tetap menunjukkan upaya pencegahan melalui sosialisasi, tetapi kurang didukung koordinasi yang kuat sehingga efektivitasnya lebih terbatas. Pilihan A memperoleh skor 1 karena menangani masalah secara internal tanpa melibatkan pihak lain berisiko membuat upaya pencegahan menjadi kurang efektif dan tidak menyentuh berbagai aspek yang diperlukan dalam penanganan isu intoleransi.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  81,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda adalah ketua organisasi kepemudaan di kota Anda yang anggotanya berasal dari berbagai latar belakang agama dan suku. Anda ingin mencegah munculnya sikap eksklusif dan menjaga persatuan. Apa yang Anda lakukan?',
  NULL,
  '{"A":"Mengadakan pelatihan tentang pentingnya menghargai perbedaan bagi seluruh anggota.","B":"Menggelar forum dialog terbuka agar anggota dapat saling berbagi dan memahami perbedaan.","C":"Mengadakan kegiatan bersama lintas budaya untuk memperkuat kerja sama antaranggota.","D":"Mengadakan pertemuan rutin untuk merayakan hari besar dari berbagai latar belakang.","E":"Menyediakan bahan bacaan tentang keberagaman untuk dipelajari secara mandiri."}'::jsonb,
  '{"A":4,"B":5,"C":2,"D":3,"E":1}'::jsonb,
  'B',
  'Organisasi kepemudaan yang beragam membutuhkan penguatan nilai kebersamaan melalui dialog dan interaksi bermakna. Nilai BerAKHLAK yang dominan adalah Harmonis dan Kolaboratif. Pilihan B paling tepat karena forum dialog terbuka membangun pemahaman mendalam antaranggota sehingga mendapat skor 5. Pilihan A juga baik karena pelatihan menghargai perbedaan memberi landasan teoritis sehingga mendapat skor 4. Pilihan D cukup baik karena perayaan bersama mempererat hubungan namun belum menyentuh diskusi nilai secara eksplisit sehingga mendapat skor 3. Pilihan C kurang tepat karena kegiatan lintas budaya tanpa ruang refleksi belum tentu memperkuat kesadaran kritis sehingga mendapat skor 2. Pilihan E paling tidak tepat karena hanya menyediakan bahan bacaan kurang efektif membangun interaksi aktif sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  82,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda adalah seorang ASN yang melihat rekan kerja menunjukkan sikap dan pernyataan yang mengarah pada pemikiran radikal. Anda ingin menangani situasi ini secara profesional tanpa menimbulkan konflik. Apa yang Anda lakukan?',
  NULL,
  '{"A":"Melaporkan rekan tersebut langsung ke aparat berwenang agar segera ditindaklanjuti.","B":"Mendekati rekan tersebut untuk memahami pandangannya lalu menyampaikan ke atasan jika diperlukan.","C":"Mengusulkan pelatihan tentang nilai kebangsaan dan toleransi untuk seluruh pegawai.","D":"Membahas kondisi tersebut dengan bagian kepegawaian agar penanganannya tetap adil.","E":"Mengajak tim berdiskusi bersama pimpinan untuk menentukan langkah yang tepat."}'::jsonb,
  '{"A":1,"B":5,"C":4,"D":2,"E":3}'::jsonb,
  'B',
  'Menangani indikasi pemikiran radikal di lingkungan kerja harus dilakukan secara hati hati dan profesional. Nilai BerAKHLAK yang relevan adalah Harmonis dan Akuntabel karena keseimbangan antara pembinaan dan penegakan aturan penting dijaga. Pilihan B paling tepat karena pendekatan personal memberi ruang klarifikasi sekaligus membuka jalur pelaporan resmi bila diperlukan sehingga mendapat skor 5. Pilihan C juga baik karena pelatihan kebangsaan memperkuat ketahanan kolektif sehingga mendapat skor 4. Pilihan E cukup baik karena diskusi bersama pimpinan menjaga objektivitas namun belum menyentuh pendekatan personal sehingga mendapat skor 3. Pilihan D kurang tepat karena langsung ke bagian kepegawaian tanpa komunikasi awal dapat menimbulkan ketegangan sehingga mendapat skor 2. Pilihan A paling tidak tepat karena pelaporan langsung ke aparat tanpa proses internal berpotensi memperbesar konflik sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  83,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda adalah Ketua RT di lingkungan perumahan yang mulai muncul kelompok warga dengan pandangan keras dan sering menyebarkan ajakan yang mengarah pada sikap intoleran. Situasi ini membuat warga lain merasa tidak nyaman. Apa langkah yang Anda ambil?',
  NULL,
  '{"A":"Mengundang seluruh warga dalam forum terbuka untuk membahas nilai kebersamaan dan aturan hidup bertetangga.","B":"Mengajak tokoh agama dan tokoh masyarakat menyusun kegiatan bersama yang memperkuat persatuan warga.","C":"Mendekati kelompok tersebut secara persuasif lalu melibatkan pihak berwenang jika ditemukan pelanggaran hukum.","D":"Mengeluarkan imbauan tertulis agar warga tidak menyebarkan pandangan yang memecah belah lingkungan.","E":"Membatasi kegiatan kelompok tersebut dan meminta mereka lebih baik mencari tempat tinggal di perumahan lain."}'::jsonb,
  '{"A":4,"B":3,"C":5,"D":2,"E":1}'::jsonb,
  'C',
  'Sebagai Ketua RT, menjaga ketenteraman lingkungan memerlukan pendekatan persuasif dan terukur. Nilai BerAKHLAK yang dominan adalah Harmonis dan Kolaboratif. Pilihan C paling tepat karena pendekatan persuasif diikuti pelibatan pihak berwenang jika ada pelanggaran menunjukkan keseimbangan antara pembinaan dan penegakan hukum sehingga mendapat skor 5. Pilihan A juga baik karena forum terbuka memperkuat nilai kebersamaan sehingga mendapat skor 4. Pilihan B cukup baik karena kegiatan bersama mempererat persatuan namun belum langsung menyentuh kelompok yang bermasalah sehingga mendapat skor 3. Pilihan D kurang tepat karena imbauan tertulis saja kurang efektif tanpa dialog sehingga mendapat skor 2. Pilihan E paling tidak tepat karena pembatasan dan pengusiran berisiko memicu konflik sosial sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  84,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda adalah pimpinan di sebuah lembaga keamanan pertahanan negara dan menerima laporan adanya potensi penyebaran paham radikal di kalangan personel. Identifikasi tidak mudah karena aktivitas tersebut dilakukan secara tertutup. Langkah apa yang Anda ambil?',
  NULL,
  '{"A":"Mengadakan pembinaan rutin tentang nilai kebangsaan dan loyalitas kepada seluruh personel.","B":"Membentuk tim khusus untuk melakukan pemantauan dan analisis secara profesional dan terukur.","C":"Memberikan peringatan umum agar seluruh personel menjauhi paham yang bertentangan dengan negara.","D":"Melakukan pendekatan pribadi kepada personel yang dicurigai untuk menggali informasi awal.","E":"Menyusun sistem pelaporan internal yang aman agar personel dapat melapor tanpa takut."}'::jsonb,
  '{"A":4,"B":5,"C":1,"D":3,"E":2}'::jsonb,
  'B',
  'Di lembaga pertahanan, potensi radikalisme harus ditangani secara profesional dan terukur. Nilai BerAKHLAK yang relevan adalah Loyal dan Akuntabel karena menjaga keutuhan negara merupakan tanggung jawab utama. Pilihan B paling tepat karena membentuk tim khusus untuk pemantauan menunjukkan pendekatan sistemik dan profesional sehingga mendapat skor 5. Pilihan A juga baik karena pembinaan rutin memperkuat loyalitas personel sehingga mendapat skor 4. Pilihan D cukup baik karena pendekatan pribadi memberi informasi awal namun perlu sistem pendukung sehingga mendapat skor 3. Pilihan E kurang tepat karena sistem pelaporan tanpa analisis aktif kurang komprehensif sehingga mendapat skor 2. Pilihan C paling tidak tepat karena hanya peringatan umum tidak cukup menghadapi ancaman tersembunyi sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  85,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda adalah koordinator di sebuah organisasi non-pemerintah yang bergerak dalam pencegahan radikalisme. Anda ingin program yang dibuat tidak hanya teori tetapi benar-benar membangun ketahanan anggota. Apa yang Anda lakukan?',
  NULL,
  '{"A":"Mengundang ahli eksternal untuk memberikan pelatihan tentang pencegahan radikalisme.","B":"Memberikan materi dan pelatihan teori secara rutin kepada seluruh anggota.","C":"Mengalihkan sebagian anggaran ke program sosial lain yang dianggap lebih prioritas.","D":"Membentuk tim dengan latar belakang berbeda untuk menyusun strategi pencegahan yang komprehensif.","E":"Mengadakan simulasi situasi nyata agar anggota terlatih menghadapi potensi radikalisme."}'::jsonb,
  '{"A":3,"B":2,"C":1,"D":5,"E":4}'::jsonb,
  'D',
  'Program pencegahan radikalisme harus membangun ketahanan nyata bukan hanya pemahaman teoritis. Nilai BerAKHLAK yang dominan adalah Kolaboratif dan Adaptif karena strategi harus komprehensif dan aplikatif. Pilihan D paling tepat karena membentuk tim lintas latar belakang menghasilkan strategi menyeluruh dan kontekstual sehingga mendapat skor 5. Pilihan E juga sangat baik karena simulasi situasi nyata melatih kesiapan anggota secara praktis sehingga mendapat skor 4. Pilihan A cukup baik karena pelatihan oleh ahli memperkaya wawasan namun belum menjamin internalisasi berkelanjutan sehingga mendapat skor 3. Pilihan B kurang tepat karena pelatihan teori saja kurang membangun daya tahan praktis sehingga mendapat skor 2. Pilihan C paling tidak tepat karena mengalihkan anggaran melemahkan fokus utama organisasi sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  86,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda adalah Kepala Keamanan di sebuah kantor pemerintahan saat terjadi aksi demonstrasi di depan gedung. Situasi awalnya damai, namun mulai muncul provokasi yang mengarah pada tindakan anarkis. Anda harus menjaga keamanan tanpa melanggar hak menyampaikan pendapat. Apa yang Anda lakukan?',
  NULL,
  '{"A":"Menginstruksikan tim untuk langsung membubarkan massa agar situasi cepat terkendali.","B":"Berkoordinasi dengan aparat dan perwakilan demonstran untuk menenangkan situasi secara persuasif.","C":"Memperketat pengamanan gedung dan membatasi akses masuk bagi seluruh pihak luar.","D":"Mengimbau massa melalui pengeras suara agar tetap tertib dan tidak terprovokasi.","E":"Membiarkan aparat eksternal menangani sepenuhnya tanpa keterlibatan tim keamanan internal."}'::jsonb,
  '{"A":2,"B":5,"C":3,"D":4,"E":1}'::jsonb,
  'B',
  'Sebagai Kepala Keamanan di kantor pemerintahan, Anda berada pada posisi strategis yang menuntut keseimbangan antara menjaga ketertiban dan menghormati hak konstitusional warga untuk menyampaikan pendapat. Penanganan situasi demonstrasi yang mulai terprovokasi harus dilakukan secara terukur, proporsional, dan berbasis koordinasi agar tidak memperkeruh keadaan. Nilai BerAKHLAK yang relevan adalah Harmonis, Loyal, dan Akuntabel karena keamanan publik harus dijaga tanpa melanggar prinsip demokrasi. Pilihan B paling tepat karena berkoordinasi dengan aparat dan perwakilan demonstran menunjukkan pendekatan persuasif dan dialogis sehingga potensi anarkis dapat dicegah tanpa represif serta mendapat skor 5. Pilihan D juga sangat baik karena imbauan melalui pengeras suara merupakan langkah preventif yang menjaga suasana tetap kondusif sehingga mendapat skor 4. Pilihan C cukup baik karena memperketat pengamanan melindungi aset negara namun belum menyentuh akar provokasi di lapangan sehingga mendapat skor 3. Pilihan A kurang tepat karena pembubaran langsung berisiko melanggar hak menyampaikan pendapat sehingga mendapat skor 2. Pilihan E paling tidak tepat karena menyerahkan sepenuhnya kepada aparat tanpa keterlibatan internal menunjukkan kurangnya tanggung jawab sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  87,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda adalah seorang ASN dan sedang ramai isu kebijakan pemerintah yang dianggap kontroversial oleh sebagian masyarakat. Banyak rekan dan kenalan meminta Anda menyampaikan pendapat secara terbuka, termasuk di media sosial. Sikap apa yang Anda ambil?',
  NULL,
  '{"A":"Memberikan penjelasan singkat berdasarkan informasi resmi tanpa menyampaikan opini pribadi.","B":"Menghindari seluruh pembahasan isu tersebut agar tidak terlibat dalam perdebatan.","C":"Mengajak rekan berdiskusi santai untuk saling berbagi pandangan politik masing-masing.","D":"Menyampaikan pendapat pribadi secara terbuka agar dianggap responsif terhadap isu yang berkembang.","E":"Menjaga sikap netral di ruang publik dan fokus menjalankan tugas sesuai kewenangan."}'::jsonb,
  '{"A":4,"B":3,"C":1,"D":2,"E":5}'::jsonb,
  'E',
  'Sebagai ASN, menjaga netralitas dalam isu kebijakan kontroversial merupakan bagian dari profesionalisme dan loyalitas terhadap negara. ASN dituntut tidak terlibat dalam polemik politik praktis yang dapat merusak kepercayaan publik. Nilai BerAKHLAK yang menonjol adalah Loyal, Harmonis, dan Akuntabel. Pilihan E paling tepat karena menjaga sikap netral dan fokus pada tugas menunjukkan komitmen pada etika ASN sehingga mendapat skor 5. Pilihan A juga baik karena memberikan penjelasan berdasarkan informasi resmi tanpa opini pribadi tetap menjaga profesionalitas sehingga mendapat skor 4. Pilihan B cukup baik karena menghindari perdebatan menjaga diri dari konflik namun kurang proaktif dalam edukasi sehingga mendapat skor 3. Pilihan D kurang tepat karena menyampaikan pendapat pribadi di ruang publik berisiko menimbulkan persepsi keberpihakan sehingga mendapat skor 2. Pilihan C paling tidak tepat karena diskusi politik santai berpotensi memperlebar perbedaan di lingkungan kerja sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  88,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda adalah Kepala Dinas yang baru dilantik dan melihat antarbidang jarang berdiskusi sehingga koordinasi kurang efektif. Anda ingin membangun jejaring kerja yang kuat di internal dinas. Apa yang Anda lakukan?',
  NULL,
  '{"A":"Mengadakan forum rutin lintas bidang untuk membahas tantangan dan berbagi informasi kerja.","B":"Menunjuk koordinator diskusi agar setiap pertemuan berjalan terarah dan semua terlibat.","C":"Membuat grup komunikasi daring untuk berbagi informasi di luar jam kerja dengan instansi antarbidang lainnya.","D":"Mendorong setiap bidang menyampaikan laporan hasil konerja dan pengalaman dalam rapat internal bulanan.","E":"Menyusun agenda rapat yang fokus pada masalah teknis masing-masing bidang agar produktivitas tetap stabil."}'::jsonb,
  '{"A":5,"B":4,"C":1,"D":3,"E":2}'::jsonb,
  'A',
  'Sebagai Kepala Dinas yang baru dilantik, membangun jejaring kerja internal memerlukan komunikasi terbuka dan forum kolaboratif agar koordinasi meningkat. Nilai BerAKHLAK yang relevan adalah Kolaboratif dan Akuntabel karena kerja lintas bidang harus saling terhubung dan transparan. Pilihan A paling tepat karena forum rutin lintas bidang menciptakan ruang koordinasi sistematis dan berbagi solusi sehingga mendapat skor 5. Pilihan B juga sangat baik karena menunjuk koordinator memastikan diskusi terarah sehingga mendapat skor 4. Pilihan D cukup baik karena laporan kinerja memberi transparansi namun belum membangun dialog interaktif sehingga mendapat skor 3. Pilihan E kurang tepat karena fokus teknis masing-masing bidang berisiko memperkuat sekat struktural sehingga mendapat skor 2. Pilihan C paling tidak tepat karena grup daring di luar jam kerja tanpa struktur jelas kurang efektif membangun jejaring profesional sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  89,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda adalah guru Matematika di SMA dan ingin memanfaatkan teknologi digital untuk meningkatkan minat belajar siswa sekaligus membangun jejaring dengan guru Matematika lain. Apa yang Anda lakukan?',
  NULL,
  '{"A":"Mengadakan kelas virtual kolaboratif dengan sekolah lain untuk proyek bersama siswa.","B":"Menggunakan aplikasi pembelajaran interaktif dalam proses mengajar sehari-hari.","C":"Mengunggah materi pembelajaran di platform digital agar mudah diakses siswa.","D":"Mengikuti seminar online untuk memperluas wawasan tentang pengajaran Matematika.","E":"Mengikuti komunitas guru Matematika daring untuk berbagi metode dan bahan ajar."}'::jsonb,
  '{"A":5,"B":3,"C":2,"D":1,"E":4}'::jsonb,
  'A',
  'Sebagai guru, membangun jejaring profesional melalui teknologi digital dapat meningkatkan kualitas pembelajaran sekaligus kolaborasi lintas sekolah. Nilai BerAKHLAK yang menonjol adalah Kompeten dan Kolaboratif. Pilihan A paling tepat karena kelas virtual kolaboratif membuka kerja sama antar sekolah dan memperluas pengalaman siswa sehingga mendapat skor 5. Pilihan E juga sangat baik karena komunitas guru daring memperkuat pertukaran metode ajar sehingga mendapat skor 4. Pilihan B cukup baik karena penggunaan aplikasi interaktif meningkatkan minat siswa namun belum memperluas jejaring eksternal sehingga mendapat skor 3. Pilihan C kurang tepat karena mengunggah materi hanya bersifat satu arah sehingga mendapat skor 2. Pilihan D paling tidak tepat karena seminar online tanpa implementasi kolaboratif belum membangun jejaring nyata sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  90,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda adalah kepala puskesmas yang memimpin tenaga kesehatan dengan pengalaman beragam. Beberapa staf masih baru dan belum percaya diri menangani kasus tertentu. Bagaimana Anda membangun sistem mentoring yang efektif?',
  NULL,
  '{"A":"Membiarkan staf baru belajar mandiri agar cepat terbiasa dengan tanggung jawabnya.","B":"Membentuk tim kecil campuran senior dan junior untuk menangani kasus bersama.","C":"Menetapkan tenaga senior sebagai mentor bagi staf baru dengan jadwal pendampingan terstruktur.","D":"Mengadakan sesi berbagi pengalaman rutin agar seluruh staf saling belajar dari satu sama lain.","E":"Memberikan panduan tertulis kepada setiap staf baru agar mereka dapat mempelajarnya di rumah."}'::jsonb,
  '{"A":1,"B":3,"C":5,"D":4,"E":2}'::jsonb,
  'C',
  'Dalam lingkungan puskesmas, sistem mentoring harus terstruktur agar transfer pengetahuan berjalan efektif dan meningkatkan kepercayaan diri staf baru. Nilai BerAKHLAK yang relevan adalah Kompeten dan Kolaboratif. Pilihan C paling tepat karena menetapkan mentor senior dengan jadwal terstruktur memastikan pendampingan berkelanjutan sehingga mendapat skor 5. Pilihan D juga sangat baik karena sesi berbagi pengalaman memperkaya wawasan kolektif sehingga mendapat skor 4. Pilihan B cukup baik karena tim campuran memberi ruang belajar bersama namun belum sistematis sehingga mendapat skor 3. Pilihan E kurang tepat karena panduan tertulis tanpa pendampingan langsung kurang efektif sehingga mendapat skor 2. Pilihan A paling tidak tepat karena membiarkan belajar mandiri berisiko menimbulkan kesalahan kerja sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  91,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda adalah staf rumah sakit yang sedang berselisih dengan perawat dari unit lain sehingga koordinasi pasien menjadi terganggu. Anda ingin menyelesaikan konflik tanpa memperkeruh suasana kerja. Apa yang Anda lakukan?',
  NULL,
  '{"A":"Meminta bantuan atasan atau mediator untuk membantu menyelesaikan masalah secara objektif.","B":"Mengajak rekan tersebut berbicara langsung untuk mencari solusi yang saling menguntungkan.","C":"Mengusulkan pelatihan komunikasi tim agar kejadian serupa tidak terulang.","D":"Mengusulkan pertemuan lintas unit untuk membahas hambatan kerja bersama-sama.","E":"Berusaha memahami sudut pandang rekan tersebut sebelum mengambil langkah lanjutan."}'::jsonb,
  '{"A":4,"B":5,"C":1,"D":3,"E":2}'::jsonb,
  'B',
  'Konflik lintas unit harus diselesaikan melalui komunikasi terbuka dan pendekatan kolaboratif agar tidak mengganggu pelayanan pasien. Nilai BerAKHLAK yang dominan adalah Harmonis dan Kolaboratif. Pilihan B paling tepat karena dialog langsung membuka ruang klarifikasi dan solusi bersama sehingga mendapat skor 5. Pilihan A juga baik karena mediator menjaga objektivitas penyelesaian sehingga mendapat skor 4. Pilihan D cukup baik karena pertemuan lintas unit membahas hambatan kerja namun belum menyentuh akar konflik personal sehingga mendapat skor 3. Pilihan E kurang tepat karena hanya memahami tanpa tindakan lanjutan kurang menyelesaikan masalah sehingga mendapat skor 2. Pilihan C paling tidak tepat karena pelatihan komunikasi tidak langsung menjawab konflik yang sedang terjadi sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  92,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda adalah kepala koperasi desa yang bekerja sama dengan beberapa pemasok barang. Anda ingin menjaga hubungan kerja yang sehat dan saling menguntungkan. Apa yang Anda lakukan?',
  NULL,
  '{"A":"Memberikan evaluasi dan umpan balik secara rutin kepada pemasok.","B":"Mengadakan kegiatan bersama untuk mempererat hubungan kerja.","C":"Mencari peluang proyek baru yang dapat melibatkan pemasok tersebut.","D":"Mengadakan pertemuan berkala untuk membahas kebutuhan dan kendala kerja sama.","E":"Berbagi informasi penting yang dapat membantu pemasok meningkatkan kualitas layanan."}'::jsonb,
  '{"A":4,"B":3,"C":1,"D":5,"E":2}'::jsonb,
  'D',
  'Hubungan koperasi dengan pemasok memerlukan komunikasi dua arah dan evaluasi berkala agar kerja sama berkelanjutan. Nilai BerAKHLAK yang relevan adalah Kolaboratif dan Akuntabel. Pilihan D paling tepat karena pertemuan berkala membahas kebutuhan dan kendala menciptakan hubungan transparan dan saling menguntungkan sehingga mendapat skor 5. Pilihan A juga baik karena umpan balik rutin meningkatkan kualitas layanan sehingga mendapat skor 4. Pilihan B cukup baik karena kegiatan bersama mempererat hubungan namun belum menyentuh aspek operasional sehingga mendapat skor 3. Pilihan E kurang tepat karena berbagi informasi tanpa forum diskusi terstruktur kurang komprehensif sehingga mendapat skor 2. Pilihan C paling tidak tepat karena mencari proyek baru tanpa penguatan kerja sama lama berisiko menurunkan stabilitas hubungan sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  93,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda adalah anggota tim relawan bencana yang bekerja dengan banyak pihak. Anda ingin menjaga kepercayaan dan kerja sama yang baik di dalam tim. Apa sikap yang Anda ambil?',
  NULL,
  '{"A":"Menjaga informasi internal agar tidak disalahgunakan oleh pihak luar.","B":"Melaporkan isu kerja kepada koordinator untuk menjaga transparansi tim.","C":"Menyusun aturan kerja tim agar setiap anggota memahami tanggung jawabnya.","D":"Menghargai pendapat setiap anggota dan aktif mendukung kerja sama tim.","E":"Mengadakan diskusi rutin agar semua anggota bisa menyampaikan ide secara terbuka."}'::jsonb,
  '{"A":1,"B":2,"C":3,"D":5,"E":4}'::jsonb,
  'D',
  'Dalam tim relawan bencana, kepercayaan dan keterbukaan menjadi fondasi utama keberhasilan kerja sama. Nilai BerAKHLAK yang menonjol adalah Kolaboratif dan Harmonis. Pilihan D paling tepat karena menghargai pendapat setiap anggota dan aktif mendukung kerja sama menciptakan solidaritas tim sehingga mendapat skor 5. Pilihan E juga sangat baik karena diskusi rutin menjaga komunikasi terbuka sehingga mendapat skor 4. Pilihan C cukup baik karena aturan kerja memberi kejelasan tanggung jawab namun belum menyentuh hubungan interpersonal sehingga mendapat skor 3. Pilihan B kurang tepat karena pelaporan isu tanpa dialog langsung kurang membangun kedekatan tim sehingga mendapat skor 2. Pilihan A paling tidak tepat karena menjaga informasi secara tertutup berlebihan dapat mengurangi rasa percaya sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  94,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda adalah seorang perawat yang baru menyelesaikan pendidikan dan ingin memperluas peluang kerja di rumah sakit atau klinik. Anda menyadari pentingnya membangun jejaring profesional sejak awal karier. Apa yang Anda lakukan?',
  NULL,
  '{"A":"Bergabung dengan komunitas profesi perawat untuk memperluas relasi dan informasi lowongan.","B":"Mengikuti seminar kesehatan agar menambah wawasan sekaligus bertemu tenaga medis lain.","C":"Menghubungi senior atau alumni yang sudah bekerja untuk meminta arahan dan rekomendasi.","D":"Menggunakan platform profesional daring untuk terhubung dengan tenaga kesehatan lain.","E":"Mengikuti program magang di fasilitas kesehatan untuk menambah pengalaman kerja."}'::jsonb,
  '{"A":4,"B":3,"C":5,"D":2,"E":1}'::jsonb,
  'C',
  'Membangun jejaring profesional sejak awal karier membantu memperluas peluang dan akses informasi kerja. Nilai BerAKHLAK yang relevan adalah Kompeten dan Kolaboratif. Pilihan C paling tepat karena menghubungi senior atau alumni membuka peluang bimbingan dan rekomendasi nyata sehingga mendapat skor 5. Pilihan A juga baik karena komunitas profesi memperluas relasi sehingga mendapat skor 4. Pilihan B cukup baik karena seminar mempertemukan tenaga medis lain namun belum tentu membangun relasi berkelanjutan sehingga mendapat skor 3. Pilihan D kurang tepat karena platform daring tanpa interaksi aktif kurang optimal sehingga mendapat skor 2. Pilihan E paling tidak tepat karena magang lebih fokus pada pengalaman teknis daripada membangun jejaring luas sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  95,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda adalah Ketua RT dan mengetahui dua warga sedang bertengkar hingga suasana lingkungan menjadi tidak nyaman. Jika dibiarkan, konflik ini dapat memecah hubungan antarwarga. Apa langkah yang Anda ambil untuk menjaga jejaring kerja dan keharmonisan lingkungan?',
  NULL,
  '{"A":"Mengundang kedua pihak untuk mediasi bersama tokoh masyarakat agar tercapai kesepakatan yang adil.","B":"Mendatangi masing-masing pihak secara terpisah untuk memahami akar masalah sebelum mengambil langkah lanjut.","C":"Mengadakan pertemuan seluruh warga untuk mengingatkan pentingnya menjaga kerukunan dan keharmonisan bersama.","D":"Menyampaikan imbauan tertulis agar warga tidak memperbesar masalah di lingkungan karena berpotensi mengganggu warga lain.","E":"Membiarkan kedua pihak menyelesaikan sendiri konflik tersebut agar konflik teratasi dengan sendirinya."}'::jsonb,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'A',
  'Sebagai Ketua RT, menjaga keharmonisan lingkungan memerlukan mediasi yang adil dan terbuka agar konflik tidak meluas. Nilai BerAKHLAK yang dominan adalah Harmonis dan Kolaboratif. Pilihan A paling tepat karena mediasi bersama tokoh masyarakat menciptakan solusi yang adil dan diterima kedua pihak sehingga mendapat skor 5. Pilihan B juga sangat baik karena memahami akar masalah secara terpisah membantu mempersiapkan mediasi yang objektif sehingga mendapat skor 4. Pilihan C cukup baik karena mengingatkan warga tentang kerukunan namun tidak langsung menyelesaikan konflik inti sehingga mendapat skor 3. Pilihan D kurang tepat karena imbauan tertulis tanpa dialog langsung kurang efektif sehingga mendapat skor 2. Pilihan E paling tidak tepat karena membiarkan konflik berpotensi memperburuk hubungan sosial sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  96,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Anda adalah kepala cabang sebuah bank yang memimpin tim dengan latar belakang suku dan budaya berbeda. Anda ingin memastikan semua pegawai merasa dihargai dan bekerja dalam suasana yang inklusif. Apa yang Anda lakukan?',
  NULL,
  '{"A":"Mengadakan pelatihan tentang keberagaman agar semua pegawai memahami pentingnya sikap inklusif.","B":"Mendengarkan setiap pegawai dengan empati dan berusaha memahami pengalaman serta pandangan mereka.","C":"Mengadakan forum rutin untuk membahas isu keberagaman yang muncul di lingkungan kerja.","D":"Menyelenggarakan kegiatan kebersamaan yang menampilkan ragam budaya pegawai.","E":"Mendorong pegawai berbagi cerita budaya masing-masing dalam suasana santai."}'::jsonb,
  '{"A":3,"B":5,"C":4,"D":2,"E":1}'::jsonb,
  'B',
  'Sebagai kepala cabang bank yang memimpin tim dengan latar belakang suku dan budaya berbeda, membangun lingkungan kerja inklusif tidak cukup hanya dengan kegiatan simbolik, tetapi membutuhkan kepemimpinan yang empatik dan berkelanjutan. Nilai BerAKHLAK yang dominan adalah Harmonis, Kolaboratif, dan Berorientasi Pelayanan karena suasana kerja yang saling menghargai akan meningkatkan kinerja kolektif dan kepercayaan internal. Pilihan B paling tepat karena mendengarkan setiap pegawai dengan empati menunjukkan kepemimpinan yang menghargai martabat individu dan membuka ruang aman untuk berbagi pengalaman, sehingga membangun inklusivitas dari tingkat personal dan mendapat skor 5. Pilihan C juga sangat baik karena forum rutin memungkinkan isu keberagaman dibahas secara sistematis dan mencegah potensi konflik laten sehingga mendapat skor 4. Pilihan A cukup baik karena pelatihan keberagaman memberi pemahaman teoritis, namun tanpa pendekatan personal dampaknya bisa kurang mendalam sehingga mendapat skor 3. Pilihan D kurang kuat karena kegiatan kebersamaan bersifat seremonial dan belum tentu menyentuh kesadaran kritis sehingga mendapat skor 2. Pilihan E paling tidak tepat karena berbagi cerita santai tanpa struktur dan komitmen lanjutan kurang menjamin perubahan budaya kerja sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  97,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Anda adalah kru maskapai penerbangan yang baru bergabung dalam tim internasional. Anda ingin membangun hubungan baik dengan rekan kerja dari berbagai negara. Apa yang Anda lakukan?',
  NULL,
  '{"A":"Mengusulkan sesi berbagi budaya agar setiap kru saling mengenal tradisi masing-masing.","B":"Mengajak rekan kerja berbincang santai tentang kebiasaan dan tradisi mereka.","C":"Menjaga sikap sopan dalam setiap interaksi tanpa membahas perbedaan budaya.","D":"Aktif mengikuti kegiatan lintas budaya yang diadakan perusahaan.","E":"Membaca referensi tentang budaya negara rekan kerja untuk menambah pemahaman."}'::jsonb,
  '{"A":5,"B":2,"C":1,"D":4,"E":3}'::jsonb,
  'A',
  'Dalam tim internasional, membangun hubungan lintas budaya memerlukan inisiatif aktif yang mendorong pemahaman dua arah. Nilai BerAKHLAK yang menonjol adalah Harmonis dan Kolaboratif karena kerja sama global membutuhkan sensitivitas budaya. Pilihan A paling tepat karena mengusulkan sesi berbagi budaya menciptakan ruang resmi untuk saling memahami dan mengurangi stereotip sehingga mendapat skor 5. Pilihan D juga sangat baik karena aktif mengikuti kegiatan lintas budaya menunjukkan komitmen integrasi sehingga mendapat skor 4. Pilihan E cukup baik karena membaca referensi menambah pemahaman pribadi namun belum tentu membangun relasi langsung sehingga mendapat skor 3. Pilihan B kurang kuat karena perbincangan santai tanpa struktur belum tentu mendalam sehingga mendapat skor 2. Pilihan C paling tidak tepat karena menjaga sopan santun tanpa membahas perbedaan tidak cukup membangun kedekatan lintas budaya sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  98,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Anda adalah guru di sebuah sekolah yang memiliki siswa dengan latar belakang beragam. Salah satu siswa dijauhi oleh teman-temannya karena memiliki warna kulit yang berbeda. Anda ingin menciptakan lingkungan kelas yang adil dan menghargai perbedaan. Apa yang Anda lakukan?',
  NULL,
  '{"A":"Membuka diskusi kelas tentang keberagaman dan dampak stereotip terhadap pertemanan.","B":"Menyusun materi pembelajaran yang menekankan nilai toleransi dan kesetaraan.","C":"Memberikan kesempatan kepada siswa tersebut tampil dalam kegiatan kelas agar lebih percaya diri.","D":"Mengadakan kegiatan kelompok yang mendorong kerja sama agar siswa saling mengenal tanpa melihat perbedaan fisik.","E":"Memberikan pendampingan kepada siswa tersebut dan mengajak teman-temannya memahami pentingnya saling menghargai."}'::jsonb,
  '{"A":3,"B":2,"C":1,"D":5,"E":4}'::jsonb,
  'D',
  'Sebagai guru, menciptakan lingkungan kelas yang adil menuntut intervensi yang mendorong interaksi positif dan mengikis prasangka. Nilai BerAKHLAK yang relevan adalah Harmonis dan Berorientasi Pelayanan karena pendidikan harus menjamin rasa aman bagi setiap siswa. Pilihan D paling tepat karena kegiatan kelompok mendorong kerja sama nyata dan interaksi langsung sehingga stereotip dapat terkikis melalui pengalaman bersama dan mendapat skor 5. Pilihan E juga sangat baik karena pendampingan personal memberi dukungan psikologis sekaligus edukasi kepada teman-temannya sehingga mendapat skor 4. Pilihan A cukup baik karena diskusi keberagaman meningkatkan kesadaran namun belum tentu mengubah perilaku nyata sehingga mendapat skor 3. Pilihan B kurang kuat karena materi pembelajaran bersifat konseptual tanpa praktik langsung sehingga mendapat skor 2. Pilihan C paling tidak tepat karena hanya memberi panggung tanpa mengubah dinamika sosial kelas sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  99,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Anda adalah manajer personalia yang sedang merekrut pegawai untuk posisi penting. Perusahaan memiliki komitmen untuk bersikap adil dan menghargai keberagaman. Apa yang Anda lakukan agar proses rekrutmen tetap inklusif dan objektif?',
  NULL,
  '{"A":"Menilai kandidat hanya berdasarkan kemampuan dan pengalaman tanpa melihat latar belakangnya.","B":"Membuat strategi khusus untuk menarik pelamar dari latar belakang yang beragam.","C":"Melakukan penilaian lebih detail terhadap kandidat dari latar belakang berbeda agar tidak terjadi diskriminasi.","D":"Memberikan peluang lebih besar kepada kandidat dari kelompok minoritas.","E":"Membentuk tim rekrutmen yang beragam agar proses seleksi lebih adil dan inklusif."}'::jsonb,
  '{"A":1,"B":4,"C":3,"D":2,"E":5}'::jsonb,
  'E',
  'Rekrutmen inklusif menuntut sistem yang adil dan bebas bias, bukan sekadar niat baik. Nilai BerAKHLAK yang dominan adalah Akuntabel, Kolaboratif, dan Harmonis. Pilihan E paling tepat karena tim rekrutmen yang beragam dapat meminimalkan bias dan memastikan proses seleksi lebih objektif sehingga mendapat skor 5. Pilihan B juga sangat baik karena strategi menarik pelamar beragam memperluas akses kesempatan kerja sehingga mendapat skor 4. Pilihan C cukup baik karena penilaian detail mencegah diskriminasi, namun berisiko subjektif jika tidak sistematis sehingga mendapat skor 3. Pilihan D kurang tepat karena memberi peluang lebih besar pada kelompok tertentu berpotensi menimbulkan ketidakadilan baru sehingga mendapat skor 2. Pilihan A paling tidak tepat karena mengabaikan konteks keberagaman dapat menutup peluang koreksi terhadap bias sistemik sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  100,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Di sebuah perusahaan besar, sebagian besar jabatan manajerial diisi oleh pria, padahal banyak karyawan perempuan memiliki kinerja yang sangat baik. Situasi ini menimbulkan pertanyaan tentang peluang yang setara dalam karier. Jika Anda berada dalam posisi tersebut, apa yang Anda lakukan?',
  NULL,
  '{"A":"Mengikuti pelatihan kepemimpinan agar siap bersaing untuk posisi yang lebih tinggi.","B":"Mengajukan pertemuan dengan pimpinan untuk membahas peluang promosi yang adil dan terbuka.","C":"Secara aktif menawarkan diri pada proyek strategis untuk menunjukkan kemampuan kerja.","D":"Mengadakan seminar internal tentang pentingnya kesetaraan gender di tempat kerja.","E":"Membentuk kelompok diskusi perempuan untuk saling berbagi pengalaman dan dukungan."}'::jsonb,
  '{"A":4,"B":5,"C":3,"D":1,"E":2}'::jsonb,
  'B',
  'Isu kesetaraan gender di tempat kerja harus ditangani melalui dialog dan mediasi yang profesional. Nilai BerAKHLAK yang relevan adalah Harmonis dan Akuntabel karena peluang karier harus transparan dan adil. Pilihan B paling tepat karena membahas peluang promosi secara terbuka dengan pimpinan menunjukkan keberanian profesional sekaligus pendekatan sistemik sehingga mendapat skor 5. Pilihan A juga sangat baik karena meningkatkan kapasitas diri menunjukkan kesiapan kompetitif sehingga mendapat skor 4. Pilihan C cukup baik karena terlibat proyek strategis memperlihatkan kompetensi namun belum menyentuh kebijakan struktural sehingga mendapat skor 3. Pilihan E kurang kuat karena kelompok diskusi tanpa pengaruh kebijakan kurang berdampak luas sehingga mendapat skor 2. Pilihan D paling tidak tepat karena seminar tanpa perubahan sistem nyata kurang efektif sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  101,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Anda adalah kepala perpustakaan daerah yang ingin mengenalkan keberagaman budaya kepada pengunjung, terutama anak-anak dan remaja. Anda ingin langkah yang tepat agar program berjalan efektif dan berdampak luas. Apa yang Anda lakukan?',
  NULL,
  '{"A":"Mengumpulkan buku dan materi dari berbagai budaya untuk membuat sudut baca yang inklusif.","B":"Mengadakan pertemuan dengan orang tua untuk membahas pentingnya mengenal budaya lain.","C":"Mengadakan kegiatan kreatif yang menampilkan cerita dan tradisi dari berbagai daerah.","D":"Mengundang narasumber dari komunitas budaya untuk berbagi pengalaman langsung.","E":"Bekerja sama dengan organisasi lokal yang peduli pada isu keberagaman budaya."}'::jsonb,
  '{"A":5,"B":1,"C":4,"D":3,"E":2}'::jsonb,
  'A',
  'Perpustakaan sebagai ruang publik memiliki peran strategis membangun literasi keberagaman sejak dini. Nilai BerAKHLAK yang dominan adalah Berorientasi Pelayanan dan Harmonis. Pilihan A paling tepat karena menyediakan sudut baca inklusif memberi akses berkelanjutan bagi pengunjung untuk mengenal budaya lain sehingga mendapat skor 5. Pilihan C juga sangat baik karena kegiatan kreatif memperkuat pengalaman langsung sehingga mendapat skor 4. Pilihan D cukup baik karena narasumber memberi perspektif nyata namun bersifat temporer sehingga mendapat skor 3. Pilihan E kurang kuat karena kerja sama tanpa program konkret belum tentu berdampak langsung sehingga mendapat skor 2. Pilihan B paling tidak tepat karena pertemuan orang tua tanpa program edukatif terstruktur kurang menyasar anak dan remaja secara langsung sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  102,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Anda adalah anggota organisasi kampus yang ingin membangun hubungan baik dengan teman dari berbagai latar belakang. Anda menyadari prasangka bisa merusak hubungan jika tidak disikapi dengan bijak. Apa yang Anda lakukan?',
  NULL,
  '{"A":"Mengikuti kegiatan budaya agar lebih memahami tradisi yang berbeda.","B":"Membaca referensi tentang budaya lain untuk menambah pengetahuan dan pemahaman.","C":"Mengajak teman dari latar belakang berbeda untuk berdiskusi dan berbagi pengalaman.","D":"Mengadakan kegiatan bersama agar semua bisa saling mengenal lebih dekat.","E":"Menjaga sikap sopan dalam setiap interaksi sehari-hari tanpa membahas perbedaan."}'::jsonb,
  '{"A":4,"B":3,"C":5,"D":2,"E":1}'::jsonb,
  'C',
  'Mencegah prasangka di lingkungan kampus membutuhkan komunikasi langsung dan interaksi setara. Nilai BerAKHLAK yang menonjol adalah Harmonis dan Kolaboratif. Pilihan C paling tepat karena dialog langsung membangun pemahaman mendalam dan mengurangi stereotip melalui pengalaman personal sehingga mendapat skor 5. Pilihan A juga sangat baik karena partisipasi budaya memperluas perspektif sehingga mendapat skor 4. Pilihan B cukup baik karena membaca referensi menambah wawasan namun kurang membangun relasi aktif sehingga mendapat skor 3. Pilihan D kurang kuat karena kegiatan bersama tanpa dialog reflektif belum tentu mengikis prasangka sehingga mendapat skor 2. Pilihan E paling tidak tepat karena sopan santun tanpa keterbukaan tidak cukup membangun kedekatan lintas budaya sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  103,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Anda memiliki tetangga yang anaknya sakit parah dan membutuhkan biaya besar untuk berobat. Anda dan tetangga tersebut berbeda agama, namun tinggal di lingkungan yang sama. Apa yang Anda lakukan?',
  NULL,
  '{"A":"Mengunjungi dan menawarkan bantuan sesuai kemampuan tanpa melihat perbedaan agama.","B":"Menyampaikan doa dan dukungan moral agar keluarga tersebut tetap kuat menghadapi ujian.","C":"Menunggu inisiatif dari tokoh agama setempat sebelum ikut terlibat membantu.","D":"Mengajak warga sekitar untuk bersama-sama membantu kebutuhan pengobatan anak tersebut.","E":"Memberikan bantuan secara diam-diam agar tidak menjadi pembicaraan warga lain."}'::jsonb,
  '{"A":4,"B":3,"C":1,"D":5,"E":2}'::jsonb,
  'D',
  'Dalam kehidupan bertetangga, solidaritas sosial harus melampaui perbedaan agama. Nilai BerAKHLAK yang dominan adalah Harmonis dan Kolaboratif. Pilihan D paling tepat karena mengajak warga bersama membantu menciptakan dampak kolektif dan memperkuat solidaritas lingkungan sehingga mendapat skor 5. Pilihan A juga sangat baik karena bantuan langsung menunjukkan empati personal sehingga mendapat skor 4. Pilihan B cukup baik karena dukungan moral memberi penguatan psikologis namun kurang konkret sehingga mendapat skor 3. Pilihan E kurang kuat karena bantuan diam-diam tidak membangun solidaritas kolektif sehingga mendapat skor 2. Pilihan C paling tidak tepat karena menunggu pihak lain mengurangi inisiatif kemanusiaan sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  104,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Anda memiliki rekan kerja yang sering memakai atribut khas daerahnya saat bekerja. Hal itu tidak melanggar aturan kantor, namun beberapa rekan mulai menilai negatif dan membicarakannya. Apa yang Anda lakukan?',
  NULL,
  '{"A":"Mengajak rekan tersebut berdiskusi agar tetap menjaga suasana kerja yang nyaman.","B":"Mengusulkan diskusi tim tentang pentingnya saling menghormati perbedaan budaya.","C":"Membiarkan situasi berjalan karena tidak ada aturan yang dilanggar oleh rekan tersebut.","D":"Menyarankan rekan tersebut mengurangi penggunaan atribut agar tidak jadi sorotan.","E":"Mengingatkan rekan lain untuk menghargai keberagaman selama tidak melanggar aturan."}'::jsonb,
  '{"A":3,"B":4,"C":2,"D":1,"E":5}'::jsonb,
  'E',
  'Keberagaman ekspresi budaya di tempat kerja harus dihargai selama tidak melanggar aturan. Nilai BerAKHLAK yang relevan adalah Harmonis dan Loyal terhadap prinsip kebhinekaan. Pilihan E paling tepat karena mengingatkan rekan lain untuk menghargai keberagaman menunjukkan keberanian menjaga suasana inklusif sehingga mendapat skor 5. Pilihan B juga sangat baik karena diskusi tim membangun kesadaran kolektif sehingga mendapat skor 4. Pilihan A cukup baik karena dialog personal menjaga kenyamanan namun belum menyentuh sumber prasangka sehingga mendapat skor 3. Pilihan C kurang kuat karena membiarkan situasi berpotensi memperpanjang gosip negatif sehingga mendapat skor 2. Pilihan D paling tidak tepat karena menyarankan mengurangi atribut berarti membatasi ekspresi budaya yang sah sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  105,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Anda adalah petugas layanan di kantor kecamatan yang ingin memastikan pelayanan kepada warga tetap sesuai aturan terbaru. Anda menyadari bahwa regulasi pelayanan publik sering berubah dan perlu dipahami dengan baik. Apa yang Anda lakukan?',
  NULL,
  '{"A":"Rutin memantau perubahan aturan pelayanan agar tidak salah dalam memberikan layanan.","B":"Menunggu arahan dari atasan jika terjadi perubahan regulasi agar tidak salah melangkah.","C":"Bergabung dalam forum diskusi antarpegawai untuk berbagi informasi tentang aturan baru.","D":"Mengikuti komunitas atau grup profesional yang membahas kebijakan pelayanan publik.","E":"Mengikuti pelatihan setiap kali ada pembaruan aturan pelayanan dari instansi terkait."}'::jsonb,
  '{"A":3,"B":1,"C":2,"D":4,"E":5}'::jsonb,
  'E',
  'Sebagai petugas layanan kecamatan, profesionalisme ditentukan oleh kemampuan memahami regulasi terbaru agar pelayanan tidak salah prosedur. Nilai BerAKHLAK yang dominan adalah Kompeten, Akuntabel, dan Berorientasi Pelayanan karena pelayanan publik harus tepat aturan dan responsif. Pilihan E paling tepat karena mengikuti pelatihan resmi setiap ada pembaruan aturan memastikan pemahaman komprehensif dan akurat sehingga mendapat skor 5. Pilihan D juga sangat baik karena komunitas profesional membantu memperluas perspektif kebijakan sehingga mendapat skor 4. Pilihan A cukup baik karena memantau perubahan menunjukkan kesadaran tanggung jawab namun belum tentu mendalam sehingga mendapat skor 3. Pilihan C kurang kuat karena forum diskusi informal belum tentu valid secara regulatif sehingga mendapat skor 2. Pilihan B paling tidak tepat karena menunggu arahan tanpa inisiatif menunjukkan kurangnya kompetensi proaktif sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  106,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Anda adalah petugas pelayanan di kantor kelurahan. Beberapa warga merasa kurang dihargai saat mengurus administrasi karena cara komunikasi petugas dianggap kurang ramah. Apa yang Anda lakukan untuk meningkatkan kualitas pelayanan?',
  NULL,
  '{"A":"Menjalankan prosedur sesuai aturan agar pelayanan tetap adil dan tertib bagi masyarakat.","B":"Membatasi percakapan di luar urusan administrasi agar proses lebih cepat selesai.","C":"Mengadakan pertemuan dengan perwakilan warga untuk mendengar masukan dan memperbaiki layanan.","D":"Menjelaskan setiap prosedur dengan bahasa yang jelas agar warga memahami alasan kebijakan.","E":"Mengikuti pelatihan komunikasi pelayanan agar dapat melayani dengan lebih empati."}'::jsonb,
  '{"A":2,"B":1,"C":5,"D":4,"E":3}'::jsonb,
  'C',
  'Sebagai petugas pelayanan di kelurahan, kualitas layanan tidak hanya diukur dari ketepatan prosedur, tetapi juga dari cara berinteraksi dengan masyarakat. Pelayanan publik yang baik harus menghadirkan rasa dihargai dan diperlakukan secara manusiawi. Nilai BerAKHLAK yang dominan adalah Berorientasi Pelayanan, Harmonis, dan Kompeten karena pelayanan harus responsif terhadap keluhan masyarakat dan terus diperbaiki. Pilihan C paling tepat karena mengadakan pertemuan dengan perwakilan warga menunjukkan keterbukaan terhadap evaluasi eksternal dan komitmen perbaikan berbasis masukan langsung sehingga berdampak sistemik dan mendapat skor 5. Pilihan D juga sangat baik karena menjelaskan prosedur dengan bahasa yang jelas dapat mengurangi kesalahpahaman dan meningkatkan kepuasan warga sehingga mendapat skor 4. Pilihan E cukup baik karena pelatihan komunikasi meningkatkan kapasitas individu petugas namun belum tentu menyentuh akar masalah sistem pelayanan sehingga mendapat skor 3. Pilihan A kurang kuat karena menjalankan prosedur saja tanpa perbaikan pendekatan komunikasi belum menjawab keluhan utama warga sehingga mendapat skor 2. Pilihan B paling tidak tepat karena membatasi interaksi justru memperlebar jarak emosional antara petugas dan warga sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  107,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Anda adalah Ketua Pelayanan di kantor Dukcapil. Banyak warga mengeluh karena informasi tentang syarat dan prosedur administrasi sering terlambat dan sulit dipahami. Anda ingin memastikan informasi lebih jelas dan tepat waktu. Apa yang Anda lakukan?',
  NULL,
  '{"A":"Menyusun jadwal penyampaian informasi yang teratur dan menyederhankan bahasa yang dipakai dalam penyampaian.","B":"Mengajak perwakilan warga terlibat dalam penyusunan materi informasi pelayanan yang akan diimplementasikan.","C":"Memberikan pelatihan komunikasi kepada petugas agar penjelasan kepada warga lebih mudah dipahami.","D":"Menyederhanakan bahasa pada pengumuman dan brosur agar tidak membingungkan bagi warga.","E":"Menggunakan berbagai media seperti papan informasi dan media sosial untuk menyebarkan informasi."}'::jsonb,
  '{"A":5,"B":1,"C":4,"D":3,"E":2}'::jsonb,
  'A',
  'Dalam pelayanan administrasi kependudukan, kejelasan dan ketepatan waktu informasi adalah fondasi kepercayaan publik. Ketika informasi sulit dipahami atau terlambat, maka kualitas pelayanan menurun meskipun prosedur sudah benar. Nilai BerAKHLAK yang relevan adalah Akuntabel, Berorientasi Pelayanan, dan Kompeten. Pilihan A paling tepat karena menyusun jadwal penyampaian informasi yang teratur sekaligus menyederhanakan bahasa memastikan sistem informasi berjalan konsisten dan mudah dipahami sehingga dampaknya luas dan berkelanjutan serta mendapat skor 5. Pilihan C juga sangat baik karena pelatihan komunikasi meningkatkan kualitas penyampaian langsung kepada warga sehingga mendapat skor 4. Pilihan D cukup baik karena penyederhanaan bahasa pada brosur membantu pemahaman namun belum menjamin ketepatan waktu informasi sehingga mendapat skor 3. Pilihan E kurang kuat karena penggunaan berbagai media tanpa sistem konten yang jelas belum tentu efektif sehingga mendapat skor 2. Pilihan B paling tidak tepat karena melibatkan warga dalam penyusunan materi tanpa kerangka teknis berisiko memperlambat proses perbaikan sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  108,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Anda adalah Kepala Puskesmas yang bertanggung jawab atas pelayanan kesehatan di wilayah Anda. Setelah evaluasi, Anda menemukan waktu tunggu pasien semakin lama dan mulai dikeluhkan warga. Apa langkah yang Anda ambil untuk meningkatkan kualitas pelayanan?',
  NULL,
  '{"A":"Menambah petugas pada jam sibuk agar antrean dapat terurai lebih cepat.","B":"Mengadakan evaluasi rutin bersama staf untuk mencari penyebab keterlambatan.","C":"Memasang papan informasi perkiraan waktu tunggu agar pasien lebih siap menunggu.","D":"Mengatur ulang alur pendaftaran dan pelayanan agar proses lebih cepat dan teratur.","E":"Mengimbau pasien datang lebih awal agar tidak terjadi penumpukan antrean."}'::jsonb,
  '{"A":4,"B":3,"C":2,"D":5,"E":1}'::jsonb,
  'D',
  'Sebagai Kepala Puskesmas, lamanya waktu tunggu menunjukkan adanya persoalan sistem dalam alur pelayanan. Perbaikan tidak cukup hanya bersifat tambahan tenaga atau imbauan, tetapi perlu penataan ulang proses kerja. Nilai BerAKHLAK yang dominan adalah Kompeten, Akuntabel, dan Berorientasi Pelayanan. Pilihan D paling tepat karena mengatur ulang alur pendaftaran dan pelayanan menyasar akar persoalan sistemik sehingga dampaknya menyeluruh dan berkelanjutan serta mendapat skor 5. Pilihan A juga sangat baik karena penambahan petugas pada jam sibuk dapat mengurai antrean dalam jangka pendek sehingga mendapat skor 4. Pilihan B cukup baik karena evaluasi rutin membantu identifikasi masalah namun belum menjadi solusi konkret sehingga mendapat skor 3. Pilihan C kurang kuat karena papan informasi hanya mengelola ekspektasi tanpa memperbaiki proses sehingga mendapat skor 2. Pilihan E paling tidak tepat karena mengimbau pasien datang lebih awal tidak menyelesaikan persoalan inti sistem antrean sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  109,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Anda ditunjuk sebagai pendamping perubahan di sebuah perusahaan yang selama ini dikenal kurang ramah dalam melayani pelanggan. Hasil evaluasi menunjukkan masalah utama terletak pada kebiasaan dan pola pikir pegawai yang sulit berubah. Anda menyadari bahwa perubahan budaya tidak bisa dilakukan secara instan. Langkah apa yang paling sulit namun paling penting untuk Anda ambil?',
  NULL,
  '{"A":"Mengusulkan langkah teknis kepada manajemen agar staf mengikuti aturan pelayanan yang baru.","B":"Menyusun strategi komunikasi internal untuk menjelaskan tujuan perubahan kepada seluruh pegawai.","C":"Mengadakan pelatihan intensif tentang sikap dan keterampilan melayani pelanggan.","D":"Mengidentifikasi nilai yang sudah dipercaya pegawai lalu menggabungkannya ke dalam budaya baru.","E":"Menunjuk beberapa pegawai sebagai contoh perubahan agar bisa memengaruhi rekan lainnya."}'::jsonb,
  '{"A":1,"B":3,"C":2,"D":5,"E":4}'::jsonb,
  'D',
  'Perubahan budaya pelayanan adalah proses transformasi nilai, bukan sekadar perubahan prosedur teknis. Tantangan terbesar bukan pada aturan baru, tetapi pada cara berpikir dan kebiasaan pegawai. Nilai BerAKHLAK yang relevan adalah Adaptif, Kolaboratif, dan Berorientasi Pelayanan. Pilihan D paling tepat karena mengidentifikasi nilai yang sudah dipercaya pegawai lalu mengintegrasikannya ke budaya baru menunjukkan pendekatan strategis yang menghargai identitas organisasi sekaligus mendorong perubahan dari dalam sehingga mendapat skor 5. Pilihan E juga sangat baik karena menunjuk role model dapat mempercepat internalisasi perubahan melalui teladan nyata sehingga mendapat skor 4. Pilihan B cukup baik karena komunikasi internal penting untuk menyamakan persepsi namun belum tentu mengubah perilaku tanpa integrasi nilai sehingga mendapat skor 3. Pilihan C kurang kuat karena pelatihan intensif tanpa perubahan mindset mendalam berisiko hanya bersifat sementara sehingga mendapat skor 2. Pilihan A paling tidak tepat karena hanya mengusulkan aturan teknis tidak cukup mengubah budaya kerja sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-29',
  110,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Anda adalah petugas layanan di sebuah bank. Saat antrean sedang padat, seorang teman dekat Anda datang dan meminta agar didahulukan karena merasa sudah lama saling mengenal. Anda harus menjaga profesionalisme sekaligus hubungan pertemanan. Apa yang Anda lakukan?',
  NULL,
  '{"A":"Mendahulukan teman tersebut karena situasinya dianggap tidak terlalu merugikan nasabah lain.","B":"Tetap melayani nomor antrean dan menjelaskan dengan bahwa semua nasabah diperlakukan sama.","C":"Meminta izin atasan untuk mempertimbangkan apakah teman tersebut bisa diprioritaskan.","D":"Melayani teman tersebut secara singkat agar antrean tetap berjalan tanpa penjelasan panjang.","E":"Menawarkan bantuan setelah jam layanan selesai agar tidak mengganggu antrean."}'::jsonb,
  '{"A":1,"B":5,"C":3,"D":2,"E":4}'::jsonb,
  'B',
  'Dalam pelayanan publik maupun perbankan, integritas dan keadilan menjadi prinsip utama. Situasi ketika teman meminta diprioritaskan menguji konsistensi profesionalisme dan komitmen terhadap aturan. Nilai BerAKHLAK yang dominan adalah Akuntabel, Loyal, dan Berorientasi Pelayanan. Pilihan B paling tepat karena tetap melayani sesuai nomor antrean dan menjelaskan bahwa semua nasabah diperlakukan sama menunjukkan komitmen terhadap keadilan dan transparansi sehingga mendapat skor 5. Pilihan E juga sangat baik karena menawarkan bantuan di luar jam layanan menjaga hubungan personal tanpa melanggar prosedur sehingga mendapat skor 4. Pilihan C cukup baik karena meminta izin atasan menunjukkan kehati-hatian namun tetap membuka peluang perlakuan khusus sehingga mendapat skor 3. Pilihan D kurang tepat karena melayani secara singkat tanpa penjelasan tetap melanggar prinsip keadilan antrean sehingga mendapat skor 2. Pilihan A paling tidak tepat karena mendahulukan teman jelas bertentangan dengan integritas dan asas pelayanan yang adil sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  1,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Seorang WNI mengikuti forum budaya di luar negeri dan memperkenalkan batik serta tarian daerah sebagai bagian dari identitas bangsa. Sikap tersebut paling mencerminkan nilai butir Pancasila yaitu...',
  NULL,
  '{"A":"Menjalin hubungan baik dengan masyarakat internasional melalui kegiatan budaya.","B":"Menunjukkan kebanggaan sebagai bagian dari bangsa Indonesia di tengah pergaulan dunia.","C":"Mengembangkan kebudayaan daerah agar lebih dikenal oleh bangsa lain.","D":"Menghargai keberagaman budaya sebagai kekayaan yang dimiliki setiap bangsa.","E":"Membangun kerja sama lintas negara melalui pengenalan budaya nasional."}'::jsonb,
  NULL,
  'B',
  'Nilai yang paling tepat adalah sila ke-3 Pancasila yaitu Persatuan Indonesia. Salah satu butir pengamalannya adalah mengembangkan rasa cinta tanah air serta bangga sebagai bangsa Indonesia dan bertanah air Indonesia. Opsi B paling tepat karena WNI tersebut tidak hanya menampilkan budaya Indonesia di luar negeri, tetapi juga menunjukkan kebanggaan terhadap identitas nasional di tengah pergaulan dunia. Sikap ini mencerminkan bahwa budaya Indonesia dipandang sebagai bagian dari jati diri bangsa yang harus dikenalkan dan dijaga. Opsi C juga baik karena memperkenalkan kebudayaan daerah kepada bangsa lain, namun fokusnya masih pada pengenalan budaya daerah, bukan pada rasa bangga sebagai bagian dari bangsa Indonesia. Opsi A positif karena menjalin hubungan baik dengan masyarakat internasional, tetapi lebih menekankan hubungan sosial antarbangsa. Opsi E baik karena mendorong kerja sama lintas negara, namun belum secara langsung menunjukkan pengamalan nilai cinta tanah air. Opsi D juga positif karena menghargai keberagaman budaya, tetapi sifatnya masih umum dan tidak secara khusus menunjukkan kebanggaan terhadap identitas Indonesia.

Jawaban: B.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  2,
  'TWK',
  'Pancasila',
  'sedang',
  'Di lingkungan masyarakat terdapat warga negara asing (WNA) terlantar dan sering tidur di fasilitas umum. Warga merasa khawatir tetapi juga menyadari bahwa orang tersebut harus diperlakukan secara manusiawi. Tindakan yang paling sesuai dengan nilai Pancasila adalah...',
  NULL,
  '{"A":"Mengajak warga memberi bantuan sementara sambil melaporkan kondisi tersebut kepada aparat setempat agar ditangani sesuai aturan.","B":"Meminta warga tidak terlalu mempersoalkan keberadaan WNA tersebut selama tidak melakukan tindakan yang merugikan.","C":"Menggalang bantuan makanan dan pakaian agar WNA tersebut tidak lagi terlihat mengganggu kenyamanan warga.","D":"Mengarahkan WNA tersebut untuk berpindah ke tempat lain yang lebih aman agar lingkungan tetap tertib.","E":"Menenangkan warga dengan meminta mereka menunggu sampai ada pihak luar yang menangani persoalan tersebut."}'::jsonb,
  NULL,
  'A',
  'Nilai Pancasila yang paling tepat dalam konteks ini adalah sila ke-2 yaitu Kemanusiaan yang Adil dan Beradab yang dijalankan bersama sikap tertib hukum sebagai warga negara. Opsi A paling tepat karena masyarakat tidak bersikap semena-mena terhadap WNA yang terlantar, tetapi juga tidak membiarkan persoalan yang berkaitan dengan ketertiban dan status hukum. Memberi bantuan sementara menunjukkan kepedulian kemanusiaan, sedangkan melaporkan kepada aparat setempat menunjukkan kesadaran bahwa penanganan WNA harus melalui pihak yang berwenang. Opsi B terlihat bijak karena tidak memperbesar masalah, tetapi kurang tepat karena membiarkan persoalan tanpa langkah penyelesaian. Opsi C baik karena menunjukkan kepedulian sosial, namun bantuan saja belum cukup karena masalah WNA juga berkaitan dengan status keberadaan dan ketertiban lingkungan. Opsi D tampak menjaga ketertiban, tetapi kurang tepat karena warga tidak berwenang memindahkan atau mengarahkan WNA secara sepihak. Opsi E menunjukkan sikap tenang, tetapi terlalu pasif karena warga negara tetap perlu berperan aktif sesuai batas kewenangannya.

Jawaban: A.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  3,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Pada Februari 2026, merek parfum lokal HMNS bekerja sama dengan Sekolah Farmasi ITB untuk mengembangkan produk melalui riset dan pengembangan formulasi. Sikap masyarakat yang paling mencerminkan butir pengamalan sila kelima Pancasila terhadap karya tersebut adalah....',
  NULL,
  '{"A":"Menggunakan produk tersebut karena sedang dikenal luas dan memiliki daya tarik di kalangan masyarakat.","B":"Mengapresiasi karya hasil kolaborasi riset yang bermanfaat bagi kemajuan industri kreatif nasional.","C":"Mendorong semua merek lokal mengikuti pola kerja sama serupa agar mampu bersaing secara global.","D":"Menjadikan produk lokal sebagai simbol kebanggaan nasional dalam berbagai kegiatan promosi.","E":"Mengutamakan produk hasil riset dalam negeri sebagai bentuk dukungan terhadap lembaga pendidikan."}'::jsonb,
  NULL,
  'B',
  'Nilai Pancasila yang paling tepat dalam konteks tersebut adalah salah satu butir sila kelima Pancasila, Keadilan Sosial bagi Seluruh Rakyat Indonesia, yaitu suka menghargai hasil karya orang lain yang bermanfaat bagi kemajuan dan kesejahteraan bersama. Opsi B paling tepat karena masyarakat tidak hanya melihat kerja sama tersebut sebagai upaya menghasilkan produk parfum lokal, tetapi juga sebagai karya yang lahir dari riset, ilmu pengetahuan, dan kolaborasi antara industri dengan lembaga pendidikan. Sikap mengapresiasi karya tersebut menunjukkan penghargaan terhadap inovasi anak bangsa yang dapat mendorong kemajuan industri kreatif nasional. Opsi C terlihat baik karena mendorong merek lokal mengikuti pola kerja sama serupa, tetapi lebih menekankan strategi meningkatkan daya saing global, bukan inti butir Pancasila tentang menghargai hasil karya. Opsi E juga positif karena mendukung hasil riset dalam negeri, tetapi fokusnya lebih sempit pada dukungan terhadap lembaga pendidikan. Opsi D lebih dekat dengan nilai cinta tanah air pada sila ketiga karena menonjolkan kebanggaan terhadap produk lokal. Opsi A kurang tepat karena penggunaan produk hanya didasarkan pada popularitas dan daya tariknya, bukan penghargaan terhadap manfaat karya bagi kemajuan bersama.

Jawaban: B',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  4,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Indonesia dan Malaysia memiliki sejumlah budaya serumpun sehingga tidak jarang muncul perdebatan di media sosial. Sebagai WNI, tanggapan yang paling mencerminkan nasionalisme adalah....',
  NULL,
  '{"A":"Mengajak masyarakat menunjukkan keunggulan budaya Indonesia agar negara lain tidak mudah menyamakan budaya serumpun.","B":"Menyampaikan bahwa budaya serumpun tidak perlu dipersoalkan selama hubungan kedua negara tetap berjalan baik.","C":"Mendorong pemerintah segera mengklaim seluruh budaya yang memiliki kemiripan agar tidak menimbulkan perdebatan baru.","D":"Memperbanyak kampanye kebanggaan budaya Indonesia dengan menekankan bahwa budaya nasional lebih beragam.","E":"Menguatkan literasi sejarah budaya Indonesia dan memperkenalkannya secara santun agar masyarakat dunia memahami asal-usulnya."}'::jsonb,
  NULL,
  'E',
  'Nasionalisme dalam konteks ini berarti mencintai dan menjaga identitas budaya bangsa dengan cara yang cerdas, santun, dan bertanggung jawab. Opsi E paling tepat karena menunjukkan sikap membela budaya Indonesia melalui literasi sejarah, pengenalan budaya, dan cara komunikasi yang beradab tanpa merendahkan negara lain. Opsi A terlihat nasionalis, tetapi kurang tepat karena menonjolkan keunggulan dapat mengarah pada sikap membandingkan dan memperuncing perdebatan. Opsi B tampak menjaga hubungan baik, tetapi terlalu pasif karena tidak menunjukkan upaya menjaga identitas budaya Indonesia. Opsi C terlihat tegas, tetapi kurang tepat karena klaim budaya harus berdasarkan kajian sejarah dan ketentuan yang jelas, bukan sekadar reaksi terhadap perdebatan. Opsi D baik karena menunjukkan kebanggaan terhadap budaya Indonesia, tetapi belum sekuat Opsi E karena lebih menekankan kampanye kebanggaan daripada penguatan literasi dan pengenalan budaya secara tepat.

Jawaban: E.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  5,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Setelah menyelesaikan studi melalui beasiswa LPDP, seorang lulusan mendapat tawaran bergabung dengan pusat riset luar negeri yang memiliki teknologi maju. Pada saat yang sama, Indonesia membutuhkan pengembangan teknologi serupa untuk memperkuat industri nasional. Sikap yang paling mencerminkan nilai nasionalisme adalah....',
  NULL,
  '{"A":"Menerima posisi tersebut sambil memperkenalkan kemampuan tenaga profesional Indonesia melalui berbagai forum dan jejaring kerja internasional.","B":"Mengembangkan karier di luar negeri karena keberhasilan profesional juga dapat meningkatkan citra sumber daya manusia Indonesia.","C":"Kembali bekerja di Indonesia agar ilmu yang diperoleh dapat langsung diterapkan untuk memenuhi kebutuhan pembangunan nasional.","D":"Memanfaatkan posisi internasional untuk membangun transfer teknologi, riset bersama, dan kontribusi terukur bagi kepentingan Indonesia.","E":"Menjalani karier di luar negeri sambil menjaga identitas budaya dan hubungan yang erat dengan masyarakat Indonesia."}'::jsonb,
  NULL,
  'D',
  'Nilai nasionalisme dalam konteks tersebut ditunjukkan melalui kesediaan memanfaatkan ilmu, keahlian, dan peluang yang dimiliki untuk memberikan manfaat nyata bagi kepentingan bangsa. Opsi D paling tepat karena penerima beasiswa tidak hanya mengembangkan karier pribadi di luar negeri, tetapi juga menggunakan posisinya secara strategis untuk membangun transfer teknologi, penelitian bersama, dan pengembangan tenaga ahli Indonesia. Tindakan tersebut dapat membantu meningkatkan kemampuan nasional dan mengurangi ketergantungan Indonesia terhadap teknologi asing. Opsi C terlihat sangat baik karena memilih kembali dan bekerja di Indonesia sehingga ilmu yang diperoleh dapat langsung digunakan untuk pembangunan nasional. Namun, nasionalisme tidak hanya ditentukan oleh tempat seseorang bekerja, melainkan oleh seberapa besar kontribusi nyata yang diberikan kepada bangsa. Dalam konteks soal, posisi di pusat riset luar negeri justru dapat dimanfaatkan untuk memperoleh akses teknologi dan membangun kerja sama yang lebih luas bagi Indonesia. Opsi A positif karena memperkenalkan kemampuan tenaga profesional Indonesia, tetapi lebih menekankan citra bangsa daripada manfaat langsung bagi pembangunan nasional. Opsi B juga menunjukkan daya saing global, tetapi fokus utamanya masih pada pencapaian profesional dan reputasi pribadi. Opsi E mencerminkan kecintaan terhadap identitas Indonesia, tetapi belum menunjukkan kontribusi yang konkret dan terukur terhadap kebutuhan pembangunan bangsa.

Jawaban: D.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  6,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Menjelang HUT RI ke-80, terdapat fenomena memasang bendera One Piece sebagai bentuk ekspresi budaya populer. Sebagai generasi muda, sikap yang paling mencerminkan nasionalisme adalah...',
  NULL,
  '{"A":"Mendukung pemasangan bendera tersebut karena kreativitas generasi muda perlu diberi ruang dalam perayaan kemerdekaan.","B":"Menolak seluruh simbol budaya populer dalam perayaan kemerdekaan agar makna nasionalisme tidak bergeser.","C":"Menghargai ekspresi kreatif tersebut selama tetap menempatkan Merah Putih sebagai simbol utama dan memperkuat semangat persatuan.","D":"Menganggap pemasangan bendera tersebut sebagai hal biasa karena nasionalisme tidak harus ditunjukkan melalui simbol negara.","E":"Mengajak masyarakat fokus pada kegiatan positif lain agar perdebatan tentang simbol tidak menimbulkan konflik sosial."}'::jsonb,
  NULL,
  'C',
  'Nasionalisme tidak hanya berarti mencintai Indonesia dalam ucapan, tetapi juga ditunjukkan melalui sikap menghormati simbol negara, menjaga persatuan, dan memahami makna kemerdekaan. Dalam konteks menjelang HUT RI ke-80, Merah Putih harus tetap ditempatkan sebagai simbol utama negara karena bendera negara melambangkan kehormatan, identitas, dan persatuan bangsa Indonesia. Opsi C paling tepat karena menunjukkan sikap yang seimbang. Generasi muda tetap boleh menghargai ekspresi kreatif atau budaya populer, tetapi ekspresi tersebut tidak boleh menggeser makna utama peringatan kemerdekaan dan tidak boleh mengurangi penghormatan terhadap Merah Putih. Sikap ini mencerminkan nasionalisme yang dewasa, yaitu tetap terbuka terhadap kreativitas namun tetap menjunjung identitas kebangsaan. Opsi A terlihat baik karena mendukung kreativitas anak muda, tetapi kurang tepat karena belum menegaskan bahwa Merah Putih harus menjadi simbol utama dalam HUT RI. Opsi B tampak tegas dalam menjaga nasionalisme, tetapi terlalu kaku karena tidak semua simbol budaya populer harus ditolak selama tidak menggantikan atau merendahkan simbol negara. Opsi D kurang tepat karena mengecilkan arti simbol negara, padahal dalam peringatan kemerdekaan, penghormatan terhadap Merah Putih menjadi bagian penting dari nasionalisme. Opsi E baik karena berupaya mencegah konflik sosial, tetapi belum menjawab inti masalah, yaitu bagaimana generasi muda tetap menghargai kreativitas tanpa mengabaikan kedudukan simbol negara.

Jawaban: C.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  7,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  'Perhatikan pernyataan berikut!

1) Mempelajari Pancasila, UUD NRI 1945, bahasa Indonesia, dan sejarah perjuangan bangsa

2) Mengikuti prosedur pewarganegaraan secara sah serta siap menjalankan hak dan kewajiban sebagai WNI

3) Menunjukkan kecintaan kepada Indonesia dengan lebih menonjolkan budaya Indonesia daripada budaya asalnya

4) Menghargai keberagaman masyarakat Indonesia serta ikut menjaga persatuan dalam kehidupan sehari-hari

5) Berkontribusi dalam bidang ekonomi dan sosial sebagai bukti utama bahwa dirinya sudah nasionalis

6) Mengikuti kebiasaan masyarakat Indonesia agar dapat diterima baik sebagai warga negara Indonesia yang

Seorang warga negara asing ingin menjadi warga negara Indonesia dan berusaha menumbuhkan rasa nasionalisme terhadap Indonesia. Tindakan yang tepat untuk menunjukkan sikap tersebut adalah...',
  NULL,
  '{"A":"1, 4, dan 5","B":"1, 3, dan 5","C":"2, 4, dan 6","D":"3, 5, dan 6","E":"1, 2, dan 4"}'::jsonb,
  NULL,
  'E',
  'Nasionalisme bagi WNA yang ingin menjadi WNI tidak cukup ditunjukkan dengan beradaptasi terhadap kebiasaan masyarakat atau memberikan kontribusi bagi Indonesia saja. Nasionalisme harus dibangun melalui pemahaman terhadap dasar negara, kepatuhan pada hukum, serta kesediaan menjaga persatuan bangsa. Pernyataan 1 benar karena mempelajari Pancasila, UUD NRI Tahun 1945, bahasa Indonesia, dan sejarah perjuangan bangsa menunjukkan kesungguhan dalam memahami identitas nasional Indonesia. Pernyataan 2 benar karena menjadi WNI harus melalui prosedur hukum yang sah dan disertai kesiapan menjalankan hak serta kewajiban sebagai warga negara. Pernyataan 4 benar karena menghargai keberagaman masyarakat dan ikut menjaga persatuan mencerminkan nasionalisme yang sesuai dengan nilai Pancasila. Pernyataan 3 salah karena mencintai Indonesia tidak harus dilakukan dengan lebih menonjolkan budaya Indonesia atau mengesampingkan budaya asal. Pernyataan 5 salah karena kontribusi dalam bidang ekonomi dan sosial memang bermanfaat, tetapi bukan bukti utama nasionalisme apabila tidak disertai pemahaman dan komitmen terhadap nilai kebangsaan. Pernyataan 6 salah karena penyesuaian terhadap kebiasaan masyarakat yang hanya bertujuan agar diterima belum menunjukkan nasionalisme apabila tidak disertai pemahaman terhadap dasar negara dan identitas bangsa.

Jawaban: E.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  8,
  'TWK',
  'Bhinneka Tunggal Ika',
  'sedang',
  'Sebuah organisasi siswa (OSIS) berencana membuat program agar lagu daerah kembali dikenal dan diminati warga sekolah tanpa kehilangan nilai budayanya. Program yang paling mencerminkan semangat Bhinneka Tunggal Ika adalah....',
  NULL,
  '{"A":"Menyelenggarakan lomba menyanyi dengan memilih lagu daerah yang paling diminati siswa berdasarkan hasil pemungutan suara di sekolah.","B":"Membuat seri konten digital berbagai lagu daerah dengan aransemen kreatif serta penjelasan mengenai asal, makna, dan ciri khasnya.","C":"Memusatkan kegiatan pada lagu daerah yang hampir terlupakan agar kekayaan budaya yang terancam hilang dapat diperkenalkan kembali.","D":"Menampilkan lagu dari berbagai daerah secara bergiliran dengan durasi yang sama agar setiap kebudayaan memperoleh ruang yang setara.","E":"Menggabungkan potongan berbagai lagu daerah dalam satu pertunjukan modern agar keberagaman budaya terasa menarik bagi generasi muda."}'::jsonb,
  NULL,
  'B',
  'Bhinneka Tunggal Ika mendorong generasi muda untuk menghargai keberagaman budaya sekaligus menjadikannya sebagai kekuatan persatuan. Opsi B paling tepat karena program tersebut mengenalkan lagu dari berbagai daerah melalui media digital yang dekat dengan kehidupan siswa, tetapi tetap mempertahankan asal, makna, dan ciri khas setiap lagu. Dengan demikian, kreativitas digunakan untuk memperluas minat terhadap budaya tanpa menghilangkan identitas daerah yang terkandung di dalamnya. Opsi A terlihat menarik karena melibatkan partisipasi siswa, tetapi pemilihan berdasarkan popularitas dapat membuat lagu daerah yang kurang dikenal tidak memperoleh ruang. Opsi C baik karena berupaya menyelamatkan lagu yang hampir terlupakan, tetapi programnya hanya berfokus pada kelompok lagu tertentu sehingga belum sepenuhnya menggambarkan keberagaman budaya Indonesia. Opsi D tampak adil karena memberikan durasi yang sama kepada setiap daerah, tetapi masih terbatas pada pembagian kesempatan dan belum menunjukkan strategi kreatif agar siswa memahami nilai budaya setiap lagu. Opsi E juga menarik karena menggabungkan berbagai lagu daerah dalam satu pertunjukan, tetapi pemotongan dan penggabungan lagu dapat mengaburkan makna serta ciri khas budaya masing-masing daerah.

Jawaban: B.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  9,
  'TWK',
  'Bhinneka Tunggal Ika',
  'sedang',
  'Para Dalam lomba estafet 17 Agustus, panitia membentuk setiap tim dari warga berbeda usia, RT, dan latar budaya. Setiap anggota harus menyelesaikan bagian lomba sesuai kemampuannya agar tim berhasil. Makna Bhinneka Tunggal Ika yang paling tepat dari sistem lomba tersebut adalah....',
  NULL,
  '{"A":"Kesamaan aturan membuat seluruh peserta memperoleh perlakuan yang adil dalam perlombaan.","B":"Pembagian anggota yang beragam mencegah satu kelompok mendominasi jalannya perlombaan.","C":"Perbedaan kemampuan dan latar belakang dapat saling melengkapi untuk mencapai tujuan bersama.","D":"Keberagaman warga tetap terjaga karena setiap anggota menjalankan tugasnya masing-masing.","E":"Kekompakan tim dapat dibangun dengan mengurangi penonjolan identitas setiap kelompok."}'::jsonb,
  NULL,
  'C',
  'Bhinneka Tunggal Ika mengajarkan bahwa perbedaan tidak boleh menjadi penyebab perpecahan, tetapi harus dikelola untuk memperkuat persatuan dan mencapai tujuan bersama. Dalam konteks soal, para pemuda memiliki usulan yang berbeda mengenai kegiatan 17 Agustus. Meskipun demikian, seluruh usulan tersebut sebenarnya memiliki tujuan yang sama, yaitu menyukseskan peringatan kemerdekaan dan melibatkan seluruh pemuda. Opsi C paling tepat karena mencerminkan sikap konvergen, yaitu mengarahkan berbagai pendapat dan kepentingan yang berbeda menuju satu kesepakatan bersama. Dengan menyatukan berbagai usulan ke dalam satu konsep acara, setiap ide tetap mendapat ruang, tetapi pelaksanaannya tidak berjalan sendiri-sendiri. Opsi A terlihat menghargai setiap usulan, tetapi kurang tepat karena masing-masing pemuda tetap menjalankan idenya secara terpisah sehingga belum mencerminkan kesatuan. Opsi B tampak demokratis karena menggunakan dukungan mayoritas, tetapi suara terbanyak belum tentu mengakomodasi kepentingan kelompok yang lebih sedikit. Opsi D baik karena memberi kesempatan kepada setiap pemuda untuk berperan, namun masih sebatas membagi waktu pelaksanaan dan belum menyatukan berbagai gagasan. Opsi E terlihat praktis karena memilih usulan yang paling mudah, tetapi lebih menekankan efisiensi daripada usaha merangkul perbedaan dan membangun kesepakatan bersama.

Jawaban: C.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  10,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Pergerakan nasional ada karena bangsa Indonesia mulai menyadari bahwa penjajahan harus dihadapi melalui perjuangan yang lebih terarah dan terorganisir. Bagi generasi muda Pergerakan Nasional dapat dimaknai sebagai...',
  NULL,
  '{"A":"Semangat untuk memperjuangkan kepentingan kelompok muda agar lebih banyak mendapat ruang dalam kehidupan bangsa.","B":"Kesadaran untuk membangun bangsa melalui tindakan terencana, kerja sama, dan kepedulian terhadap persoalan masyarakat.","C":"Dorongan untuk mengenang sejarah perjuangan bangsa tanpa harus terlibat langsung dalam kehidupan sosial saat ini.","D":"Kemampuan menyesuaikan diri dengan perkembangan zaman agar generasi muda dapat bersaing secara pribadi.","E":"Upaya menjaga nama baik bangsa dengan menghindari persoalan sosial yang dapat menimbulkan perbedaan pendapat."}'::jsonb,
  NULL,
  'B',
  'Pergerakan Nasional merupakan perjuangan bangsa Indonesia yang dilakukan secara lebih sadar, terarah, dan terorganisir untuk memperbaiki keadaan rakyat serta mencapai cita-cita bersama. Pada masa penjajahan, perjuangan ini lahir karena adanya kesadaran bahwa penderitaan rakyat tidak bisa dihadapi secara sendiri-sendiri atau hanya berdasarkan kepentingan daerah, tetapi harus dilakukan melalui kerja sama dan tujuan kebangsaan. Dalam kehidupan generasi muda saat ini, makna Pergerakan Nasional tidak lagi berupa perjuangan fisik melawan penjajah, melainkan perjuangan membangun bangsa melalui kepedulian sosial, kerja sama, sikap terencana, dan keterlibatan dalam menyelesaikan masalah masyarakat. Opsi B paling tepat karena menunjukkan bahwa generasi muda perlu memiliki kesadaran untuk membangun bangsa dengan tindakan yang terarah, kerja sama, dan kepedulian terhadap persoalan bersama. Opsi A kurang tepat karena masih berpusat pada kepentingan kelompok muda, bukan kepentingan bangsa secara luas. Opsi C kurang tepat karena mengenang sejarah memang penting, tetapi Pergerakan Nasional harus dimaknai sebagai semangat bertindak, bukan hanya mengingat perjuangan masa lalu. Opsi D terlihat baik karena generasi muda perlu menyesuaikan diri dengan perkembangan zaman, tetapi pilihan ini lebih menekankan persaingan pribadi daripada kontribusi untuk bangsa. Opsi E juga positif karena menjaga nama baik bangsa, tetapi kurang tepat karena menghindari persoalan sosial bukan bentuk perjuangan aktif untuk memperbaiki keadaan masyarakat.

Jawaban: B.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  11,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Pada masa pergerakan nasional, Dr. Soetomo berupaya mengurangi kesenjangan antara golongan kaya dan miskin serta mendekatkan kaum terpelajar dengan rakyat. Penerapan semangat perjuangan tersebut oleh generasi muda dalam kehidupan saat ini ditunjukkan melalui tindakan....',
  NULL,
  '{"A":"Menyelenggarakan kegiatan berbagi ilmu yang melibatkan pelajar, pekerja, dan warga dari berbagai latar belakang.","B":"Menggalang bantuan rutin bagi masyarakat kurang mampu untuk membantu memenuhi kebutuhan hidup sehari-hari.","C":"Menempatkan mahasiswa sebagai penggerak utama kegiatan sosial karena memiliki pengetahuan yang lebih luas.","D":"Mengadakan seminar perjuangan Dr. Soetomo agar generasi muda semakin memahami sejarah pergerakan nasional.","E":"Membentuk komunitas pemuda berprestasi untuk merancang program sosial yang dapat menjadi teladan masyarakat."}'::jsonb,
  NULL,
  'A',
  'Semangat perjuangan Dr. Soetomo tidak hanya berkaitan dengan kebangkitan kaum terpelajar, tetapi juga dengan upaya mengurangi kesenjangan sosial dan mendekatkan kelompok terdidik dengan masyarakat. Opsi A paling tepat karena kegiatan berbagi ilmu yang melibatkan pelajar, pekerja, dan warga dari berbagai latar belakang dapat memperluas akses pengetahuan sekaligus membangun hubungan yang lebih setara antara kaum terpelajar dan masyarakat. Tindakan tersebut merupakan bentuk penerapan semangat perjuangan Dr. Soetomo dalam kehidupan saat ini. Opsi B terlihat baik karena membantu masyarakat kurang mampu, tetapi lebih menekankan pemberian bantuan untuk memenuhi kebutuhan hidup dan belum secara langsung memperkecil jarak antara kaum terpelajar dengan masyarakat. Opsi C kurang tepat karena menempatkan mahasiswa sebagai penggerak utama justru dapat mempertahankan jarak antara kelompok terpelajar dan masyarakat. Opsi D positif karena menambah pemahaman sejarah, tetapi masih sebatas kegiatan edukasi dan belum menerapkan semangat perjuangan tersebut dalam tindakan nyata. Opsi E juga baik karena membentuk komunitas sosial, tetapi hanya melibatkan pemuda berprestasi sehingga belum mencerminkan keterlibatan masyarakat dari berbagai latar belakang.

Jawaban: A.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  12,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  'Perhatikan pernyataan berikut!

1) Menempatkan identitas kebangsaan di atas kepentingan kelompok daerah saat bekerja sama dengan pemuda lain

2) Menggunakan bahasa Indonesia sebagai alat komunikasi agar mudah menjalani kehidupan sehari-hari

3) Mengutamakan kebanggaan terhadap daerah asal agar keberagaman bangsa tetap terlihat kuat

4) Membangun kerja sama lintas daerah dengan kesadaran bahwa semua memiliki tujuan kebangsaan yang sama

5) Menjadikan organisasi daerah sebagai wadah utama perjuangan agar ciri khas tiap daerah tetap terjaga

6) Menghargai perbedaan suku dan budaya dengan tetap menjaga rasa sebagai satu bangsa Indonesia

Moh. Yamin berperan dalam merumuskan ikrar Sumpah Pemuda yang menegaskan pentingnya persatuan di atas perbedaan daerah. Jika semangat tersebut diterapkan dalam kehidupan saat ini, sikap yang tepat ditunjukkan oleh...',
  NULL,
  '{"A":"1, 2, dan 4","B":"1, 3, dan 5","C":"1, 4, dan 6","D":"2, 4, dan 6","E":"3, 5, dan 6"}'::jsonb,
  NULL,
  'C',
  'Semangat Sumpah Pemuda menegaskan bahwa perbedaan suku, budaya, dan daerah harus dipersatukan dalam identitas kebangsaan Indonesia. Pernyataan 1 benar karena menempatkan kepentingan bangsa di atas kepentingan kelompok daerah menunjukkan kesadaran sebagai bagian dari satu bangsa. Pernyataan 4 benar karena kerja sama lintas daerah yang didasarkan pada tujuan kebangsaan bersama mencerminkan persatuan di tengah perbedaan. Pernyataan 6 juga benar karena menghargai perbedaan suku dan budaya harus disertai dengan tetap menjaga rasa sebagai satu bangsa Indonesia. Pernyataan 2 kurang tepat karena bahasa Indonesia hanya digunakan agar memudahkan komunikasi sehari-hari, bukan sebagai wujud kesadaran terhadap bahasa persatuan. Pernyataan 3 salah karena kebanggaan terhadap daerah tidak seharusnya lebih diutamakan daripada identitas kebangsaan. Pernyataan 5 juga salah karena menjadikan organisasi daerah sebagai wadah utama perjuangan dapat memperkuat kepentingan kedaerahan dan kurang mencerminkan semangat persatuan nasional.

Jawaban: C.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  13,
  'TWK',
  'Bela Negara',
  'sedang',
  'Setelah Proklamasi Kemerdekaan, PPKI mengesahkan UUD 1945, memilih Presiden dan Wakil Presiden, serta membentuk Komite Nasional. Makna paling tepat dari keputusan PPKI tersebut adalah...',
  NULL,
  '{"A":"Menyempurnakan perjuangan kemerdekaan dengan membentuk kekuatan pertahanan rakyat.","B":"Melanjutkan hasil perumusan dasar negara agar diterima oleh seluruh golongan bangsa.","C":"Menegaskan bahwa kemerdekaan Indonesia memiliki dasar hukum dan susunan pemerintahan.","D":"Menyatukan berbagai kelompok perjuangan agar tidak terjadi perbedaan arah politik.","E":"Membuktikan kepada dunia bahwa kemerdekaan Indonesia diperoleh melalui perjuangan rakyat."}'::jsonb,
  NULL,
  'C',
  'PPKI berperan penting setelah Proklamasi Kemerdekaan karena keputusan-keputusannya memberi dasar hukum dan susunan awal bagi negara Indonesia yang baru berdiri. Pengesahan UUD 1945 menunjukkan adanya konstitusi sebagai dasar penyelenggaraan negara, pemilihan Presiden dan Wakil Presiden menunjukkan adanya pemimpin pemerintahan, sedangkan pembentukan Komite Nasional menjadi bagian dari kelengkapan awal negara. Opsi C paling tepat karena menggambarkan makna utama keputusan PPKI, yaitu menegaskan bahwa kemerdekaan Indonesia tidak berhenti pada pernyataan merdeka, tetapi dilanjutkan dengan pembentukan dasar hukum dan pemerintahan yang sah. Opsi B terlihat baik karena berkaitan dengan dasar negara, tetapi terlalu sempit karena keputusan PPKI tidak hanya menyangkut penerimaan dasar negara. Opsi D cukup menjebak karena persatuan kelompok perjuangan memang penting, tetapi bukan inti utama dari keputusan PPKI tersebut. Opsi E juga benar secara umum karena kemerdekaan Indonesia lahir dari perjuangan rakyat, tetapi tidak langsung menjelaskan fungsi keputusan PPKI. Opsi A kurang tepat karena pembentukan kekuatan pertahanan bukan makna utama dari sidang awal PPKI yang disebutkan dalam soal.

Jawaban: C.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  14,
  'TWK',
  'UUD 1945',
  'sedang',
  'Saat banjir melanda suatu wilayah, warga membantu mengevakuasi anak-anak, lansia, dan orang sakit ke tempat aman serta memastikan kebutuhan dasar mereka terpenuhi. Berdasarkan UUD NRI Tahun 1945 Pasal 28A, sikap tersebut paling mencerminkan...',
  NULL,
  '{"A":"Kepedulian sosial masyarakat dalam membantu sesama saat terjadi bencana.","B":"Kesigapan warga dalam mengurangi dampak bencana di lingkungan sekitar.","C":"Perlindungan terhadap keselamatan jiwa dan keberlangsungan hidup manusia.","D":"Kerja sama masyarakat dalam menciptakan kondisi lingkungan yang aman.","E":"Pemenuhan kebutuhan dasar kelompok rentan agar tetap terlindungi saat bencana."}'::jsonb,
  NULL,
  'C',
  'Pasal 28A UUD NRI Tahun 1945 menegaskan bahwa setiap orang berhak untuk hidup serta berhak mempertahankan hidup dan kehidupannya. Dalam konteks soal, tindakan mengevakuasi anak-anak, lansia, dan orang sakit ke tempat aman serta memastikan kebutuhan dasar mereka terpenuhi menunjukkan upaya melindungi keselamatan jiwa dan keberlangsungan hidup manusia. Opsi C paling tepat karena mencakup inti Pasal 28A secara utuh yaitu perlindungan hidup dan upaya mempertahankan kehidupan. Opsi E cukup menjebak karena juga membahas kebutuhan dasar kelompok rentan, tetapi cakupannya lebih sempit karena hanya menekankan bantuan dan perlindungan kelompok tertentu saat bencana. Opsi A baik karena menunjukkan kepedulian sosial, tetapi masih terlalu umum. Opsi B tepat dalam konteks kesiapsiagaan, namun fokusnya lebih pada pengurangan dampak bencana. Opsi D baik karena menekankan kerja sama, tetapi belum langsung mencerminkan hak untuk hidup. Oleh karena itu, jawaban paling tepat adalah opsi C.

Jawaban: C.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  15,
  'TWK',
  'UUD 1945',
  'sedang',
  'Suatu undang-undang dianggap membatasi hak konstitusional warga. Warga kemudian mengajukan pengujian ke Mahkamah Konstitusi. Fungsi utama Mahkamah Konstitusi dalam kasus tersebut adalah...',
  NULL,
  '{"A":"Menyelesaikan perselisihan warga dengan pemerintah akibat penerapan aturan.","B":"Memberikan pertimbangan kepada DPR agar isi undang-undang disempurnakan.","C":"Mengawasi lembaga negara agar pelaksanaan undang-undang tidak menyimpang.","D":"Menguji kesesuaian undang-undang dengan UUD NRI Tahun 1945.","E":"Menilai aturan yang merugikan warga agar perlindungan hukum tetap terjamin."}'::jsonb,
  NULL,
  'D',
  'Mahkamah Konstitusi memiliki kewenangan untuk menguji undang-undang terhadap UUD NRI Tahun 1945. Hal ini sesuai dengan Pasal 24C ayat (1) UUD NRI Tahun 1945 yang menyatakan bahwa Mahkamah Konstitusi berwenang mengadili pada tingkat pertama dan terakhir yang putusannya bersifat final untuk menguji undang-undang terhadap Undang-Undang Dasar. Opsi D paling tepat karena kasus tersebut membahas warga yang merasa hak konstitusionalnya dibatasi oleh suatu undang-undang, sehingga fungsi MK adalah menilai apakah undang-undang tersebut sesuai atau bertentangan dengan UUD NRI Tahun 1945. Opsi E cukup menjebak karena membahas aturan yang merugikan warga dan perlindungan hukum, tetapi redaksinya masih umum dan tidak secara khusus menunjukkan pengujian undang-undang terhadap UUD. Opsi A tampak berkaitan dengan masalah warga dan pemerintah, tetapi kurang tepat karena MK tidak berfungsi menyelesaikan semua perselisihan warga dengan pemerintah akibat penerapan aturan. Opsi B kurang tepat karena MK bukan lembaga yang memberi pertimbangan kepada DPR untuk menyempurnakan undang-undang, melainkan lembaga yang memutus perkara konstitusional. Opsi C juga kurang tepat karena pengawasan pelaksanaan undang-undang oleh lembaga negara bukan fungsi utama MK dalam kasus ini.

Jawaban: D.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  16,
  'TWK',
  'UUD 1945',
  'sedang',
  'Perhatikan pernyataan berikut ini!

1) Mengelola sumber daya alam di bawah pengawasan negara agar manfaatnya tidak dikuasai segelintir pihak.

2) Mengutamakan pendapatan daerah dari sumber daya alam meskipun manfaatnya belum merata.

3) Memberi keleluasaan kepada pemilik modal karena investasi dapat mempercepat pembangunan daerah.

4) Menyalurkan hasil pengelolaan kekayaan alam untuk pelayanan publik dan kebutuhan rakyat.

5) Menyerahkan pengelolaan kekayaan alam kepada SDM ahli agar hasilnya lebih efisien dan produktif.

6) Memanfaatkan hasil tambang, hutan, dan air untuk mendukung kesejahteraan masyarakat luas.

Berdasarkan UUD NRI Tahun 1945 Pasal 33 ayat (3), sikap yang tepat dalam pengelolaan sumber daya alam ditunjukkan oleh...',
  NULL,
  '{"A":"1, 4, dan 5","B":"2, 5, dan 6","C":"1, 4, dan 6","D":"2, 3, dan 5","E":"4, 5, dan 6"}'::jsonb,
  NULL,
  'C',
  'UUD NRI Tahun 1945 Pasal 33 ayat (3) berbunyi, “Bumi dan air dan kekayaan alam yang terkandung di dalamnya dikuasai oleh negara dan dipergunakan untuk sebesar-besar kemakmuran rakyat.” Makna utama pasal ini adalah sumber daya alam tidak boleh dikelola hanya untuk keuntungan pihak tertentu, tetapi harus berada dalam penguasaan negara dan hasilnya diarahkan untuk kesejahteraan rakyat. Pernyataan 1 tepat karena pengelolaan sumber daya alam perlu berada di bawah pengawasan negara agar manfaatnya tidak dikuasai segelintir pihak. Pernyataan 4 tepat karena hasil pengelolaan kekayaan alam seharusnya kembali kepada rakyat melalui pelayanan publik dan pemenuhan kebutuhan masyarakat. Pernyataan 6 tepat karena pemanfaatan tambang, hutan, dan air harus diarahkan untuk kesejahteraan masyarakat luas. Pernyataan 2 kurang tepat karena pendapatan daerah belum cukup menjadi ukuran keberhasilan jika manfaatnya belum merata. Pernyataan 3 kurang tepat karena terlalu menekankan keleluasaan pemilik modal. Pernyataan 5 cukup menjebak karena SDM ahli memang penting, tetapi pernyataan tersebut hanya menekankan efisiensi dan produktivitas, belum menegaskan kemakmuran rakyat sebagai tujuan utama. Jadi, pernyataan yang tepat adalah 1, 4, dan 6.

Jawaban: C.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  17,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Dalam sebuah bazar sekolah, siswa diajak mengenalkan produk lokal di tengah maraknya penggunaan produk luar negeri. Sikap yang paling mencerminkan cinta tanah air adalah...',
  NULL,
  '{"A":"Membiasakan siswa memilih produk lokal agar penggunaan barang buatan dalam negeri semakin meningkat.","B":"Mengenalkan produk lokal agar pelaku UMKM mendapat ruang promosi lebih luas.","C":"Menjadikan bazar sebagai sarana kerja sama antara siswa dan pelaku usaha daerah.","D":"Mendukung penggunaan produk lokal agar kegiatan ekonomi masyarakat daerah semakin berkembang.","E":"Mengutamakan produk lokal yang berkualitas sebagai bentuk bangga terhadap kemampuan bangsa sendiri."}'::jsonb,
  NULL,
  'E',
  'Cinta tanah air mencerminkan rasa bangga, peduli, dan setia terhadap bangsa melalui sikap nyata dalam kehidupan sehari-hari. Dalam konteks soal, penggunaan produk lokal bukan hanya berkaitan dengan kebiasaan membeli atau mendukung ekonomi daerah, tetapi juga menunjukkan penghargaan terhadap karya bangsa sendiri. Opsi E paling tepat karena mengutamakan produk lokal yang berkualitas mencerminkan rasa bangga terhadap kemampuan bangsa sendiri. Sikap ini menunjukkan bahwa cinta tanah air dapat diwujudkan dengan menghargai hasil karya dalam negeri dan percaya pada potensi bangsa. Opsi A cukup menjebak karena sama-sama membahas penggunaan barang buatan dalam negeri, tetapi fokusnya lebih pada kebiasaan menggunakan produk lokal dan belum menegaskan rasa bangga terhadap bangsa. Opsi B baik karena membantu promosi UMKM, tetapi lebih menekankan pemasaran produk. Opsi C positif karena menunjukkan kerja sama antara siswa dan pelaku usaha daerah, namun fokusnya lebih pada kolaborasi kegiatan. Opsi D juga baik karena mendukung perkembangan ekonomi masyarakat daerah, tetapi belum langsung menunjukkan kebanggaan terhadap kemampuan bangsa sebagai inti cinta tanah air.

Jawaban: E.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  18,
  'TWK',
  'Bela Negara',
  'sedang',
  'Di wilayah perbatasan, peredaran barang selundupan mulai dianggap wajar karena harganya lebih murah dan mudah diperoleh. Kondisi ini dapat melemahkan kepatuhan hukum serta merugikan kepentingan negara. Sikap yang paling mencerminkan bela negara adalah...',
  NULL,
  '{"A":"Mengarahkan warga membeli barang legal sambil menjelaskan dampak barang selundupan bagi negara.","B":"Mengajak warga memprioritaskan barang dari pedagang setempat agar ekonomi perbatasan tetap hidup.","C":"Mengusulkan kegiatan pasar murah agar warga memiliki pilihan barang dengan harga terjangkau.","D":"Memilih barang yang memiliki dokumen resmi meskipun harganya lebih tinggi dari barang selundupan.","E":"Menjaga hubungan baik antarwarga agar perbedaan pilihan belanja tidak menimbulkan masalah sosial."}'::jsonb,
  NULL,
  'A',
  'Bela negara merupakan sikap warga negara dalam menjaga kedaulatan, keutuhan, dan kepentingan bangsa sesuai peran masing-masing. Dalam konteks soal, barang selundupan bukan hanya persoalan harga murah, tetapi juga berkaitan dengan pelanggaran hukum, kerugian negara, dan melemahnya kesadaran masyarakat terhadap kepentingan nasional. Opsi A paling tepat karena mengarahkan warga untuk membeli barang legal sekaligus memberi pemahaman tentang dampak barang selundupan bagi negara. Sikap ini menunjukkan bela negara karena warga ikut menjaga kepentingan nasional melalui kepatuhan hukum dan edukasi kepada masyarakat. Opsi D cukup menjebak karena memilih barang resmi juga benar, tetapi masih sebatas tindakan pribadi dan belum mendorong kesadaran bersama. Opsi B baik karena mendukung ekonomi perbatasan, tetapi belum memastikan barang yang dipilih legal. Opsi C positif karena menawarkan solusi harga terjangkau, tetapi belum langsung menyentuh masalah barang selundupan. Opsi E baik karena menjaga kerukunan, tetapi tidak menyelesaikan inti persoalan yang merugikan negara.

Jawaban: A.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  19,
  'TWK',
  'Bela Negara',
  'sedang',
  'Pada Serangan Umum 1 Maret 1949, TNI dan rakyat membuktikan bahwa Republik Indonesia masih berdiri meskipun Belanda berusaha membangun anggapan bahwa Indonesia telah lumpuh. Sikap bela negara yang paling sesuai dengan semangat tersebut pada masa kini adalah...',
  NULL,
  '{"A":"Menyampaikan kritik kepada pemerintah secara tertib agar kehidupan bernegara tetap berjalan baik.","B":"Menumbuhkan keberanian masyarakat untuk menghadapi tekanan yang dapat mengganggu ketertiban nasional.","C":"Mempelajari strategi perjuangan bangsa agar semangat pantang menyerah tetap tertanam dalam diri.","D":"Mengikuti kegiatan kebangsaan untuk menghargai jasa pejuang yang mempertahankan kemerdekaan.","E":"Mendukung upaya menjaga kedaulatan negara dengan menyebarkan informasi yang benar dan memperkuat persatuan."}'::jsonb,
  NULL,
  'E',
  'Serangan Umum 1 Maret 1949 menunjukkan semangat bela negara karena TNI dan rakyat berusaha membuktikan bahwa Republik Indonesia masih berdiri dan mampu mempertahankan kedaulatannya meskipun Belanda berusaha membangun anggapan bahwa Indonesia telah lumpuh. Peristiwa ini bukan hanya perjuangan fisik, tetapi juga upaya menjaga kepercayaan rakyat dan menunjukkan kepada dunia bahwa Indonesia tetap ada. Opsi E paling tepat karena mendukung upaya menjaga kedaulatan negara melalui penyebaran informasi yang benar dan penguatan persatuan. Sikap ini sesuai dengan semangat Serangan Umum 1 Maret karena pada masa kini ancaman terhadap negara tidak selalu berbentuk serangan fisik, tetapi juga dapat muncul melalui informasi yang keliru dan perpecahan sosial. Opsi B terlihat baik karena menumbuhkan keberanian menghadapi tekanan, tetapi masih umum dan belum langsung mengarah pada kedaulatan negara. Opsi C positif karena mempelajari strategi perjuangan dapat menanamkan semangat pantang menyerah, tetapi masih sebatas pemahaman sejarah. Opsi D baik karena menghargai jasa pejuang, tetapi lebih bersifat penghormatan dan belum menunjukkan tindakan bela negara yang aktif. Opsi A juga baik karena menyampaikan kritik secara tertib penting dalam kehidupan bernegara, tetapi tidak paling sesuai dengan konteks mempertahankan eksistensi dan kedaulatan negara.

Jawaban: E.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  20,
  'TWK',
  'Integritas',
  'sedang',
  'Saat banjir terjadi di beberapa wilayah kota, warga membantu mendata korban, mengarahkan masyarakat ke posko resmi, dan menyebarkan informasi dari BPBD agar tidak terjadi kepanikan. Tindakan tersebut paling tepat menunjukkan...',
  NULL,
  '{"A":"Nasionalisme karena warga menunjukkan kepedulian terhadap keselamatan masyarakat di daerahnya.","B":"Gotong royong karena warga bekerja sama membantu korban banjir di lingkungan sekitar.","C":"Bela negara karena warga ikut menjaga ketahanan masyarakat dari ancaman nonmiliter.","D":"Tanggung jawab sosial karena warga membantu masyarakat yang membutuhkan pertolongan.","E":"Integritas karena warga menyampaikan informasi resmi agar tidak menimbulkan kesalahpahaman."}'::jsonb,
  NULL,
  'C',
  'Bela negara tidak hanya dilakukan melalui perang atau kegiatan militer, tetapi juga melalui sikap warga dalam menjaga keselamatan, ketertiban, dan ketahanan masyarakat saat menghadapi ancaman nonmiliter. Banjir termasuk ancaman nonmiliter karena dapat mengganggu kehidupan masyarakat, menimbulkan kepanikan, dan menghambat aktivitas warga. Opsi C paling tepat karena warga ikut menjaga ketahanan masyarakat dengan membantu pendataan korban, mengarahkan ke posko resmi, dan menyebarkan informasi dari BPPD agar situasi tetap terkendali. Sikap ini mencerminkan bela negara karena warga berperan aktif menjaga keselamatan masyarakat sesuai kemampuan masing-masing. Opsi A terlihat baik karena menunjukkan kepedulian terhadap keselamatan masyarakat, tetapi lebih mengarah pada nasionalisme secara umum dan belum menekankan ketahanan menghadapi ancaman. Opsi B juga positif karena menggambarkan kerja sama dalam membantu korban banjir, tetapi fokusnya lebih pada gotong royong. Opsi D baik karena menunjukkan tanggung jawab sosial kepada masyarakat yang membutuhkan pertolongan, tetapi belum mencakup makna bela negara secara utuh. Opsi E cukup menjebak karena menyampaikan informasi resmi memang menunjukkan integritas, tetapi konteks utama soal lebih luas yaitu menjaga ketahanan masyarakat dari ancaman nonmiliter.

Jawaban: C.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  21,
  'TWK',
  'Integritas',
  'sedang',
  'Jenderal Soedirman tetap memimpin perjuangan gerilya meskipun kondisi kesehatannya sedang lemah. Ia tetap menjalankan tanggung jawabnya karena perjuangan mempertahankan kemerdekaan dianggap sebagai amanah yang harus dijaga. Nilai integritas yang paling menonjol dari sikap tersebut adalah...',
  NULL,
  '{"A":"Menunjukkan keberanian menghadapi tekanan besar demi mempertahankan kemerdekaan bangsa.","B":"Memegang teguh tanggung jawab meskipun menghadapi keterbatasan pribadi yang berat.","C":"Mengutamakan kepentingan negara dengan tetap menjaga semangat perjuangan rakyat.","D":"Menjadi teladan pemimpin yang mampu membangkitkan semangat pasukan dalam perjuangan.","E":"Menunjukkan kesetiaan kepada bangsa melalui perjuangan yang dilakukan secara konsisten."}'::jsonb,
  NULL,
  'B',
  'Integritas mencerminkan sikap jujur, konsisten, dan bertanggung jawab dalam menjalankan amanah meskipun menghadapi tantangan. Sikap Jenderal Soedirman yang tetap memimpin gerilya dalam kondisi sakit menunjukkan bahwa ia memegang teguh tanggung jawab perjuangan dan tidak menjadikan keterbatasan pribadi sebagai alasan untuk meninggalkan amanah. Opsi B paling tepat karena menekankan tanggung jawab yang tetap dijalankan meskipun menghadapi kondisi pribadi yang berat. Sikap ini sesuai dengan nilai integritas karena seseorang tetap konsisten menjalankan amanah walaupun berada dalam keadaan sulit. Opsi A terlihat baik karena menunjukkan keberanian menghadapi tekanan, tetapi lebih mengarah pada nilai patriotisme. Opsi C juga positif karena mengutamakan kepentingan negara, tetapi belum secara khusus menekankan tanggung jawab dalam keterbatasan pribadi. Opsi D baik karena menunjukkan keteladanan pemimpin, tetapi fokusnya lebih pada pengaruh terhadap pasukan. Opsi E juga baik karena menunjukkan kesetiaan kepada bangsa, tetapi belum sekuat opsi B dalam menggambarkan integritas sebagai tanggung jawab menjalankan amanah.

Jawaban: B.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  22,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  'Pada pembahasan Piagam Jakarta, sejumlah tokoh bangsa menerima perubahan rumusan sila pertama setelah adanya keberatan dari sebagian pihak. Mereka tetap menjaga keputusan bersama demi persatuan Indonesia yang baru merdeka. Sikap tersebut menunjukkan nilai integritas yang paling menonjol berupa...',
  NULL,
  '{"A":"Menjaga suasana musyawarah agar perbedaan pandangan tidak menghambat kemerdekaan.","B":"Menyelaraskan keputusan bersama agar dasar negara dapat diterima oleh seluruh golongan.","C":"Menghargai keberatan pihak lain agar proses penetapan dasar negara berlangsung damai.","D":"Menunjukkan sikap terbuka terhadap keberagaman keyakinan dalam kehidupan berbangsa.","E":"Tetap bertanggung jawab pada persatuan bangsa meskipun keputusan akhir berbeda dari kehendak awal."}'::jsonb,
  NULL,
  'E',
  'Perubahan rumusan sila pertama dalam Piagam Jakarta menunjukkan sikap para tokoh bangsa yang mampu menempatkan kepentingan Indonesia di atas kepentingan golongan. Nilai integritas terlihat dari kesediaan untuk tetap bertanggung jawab terhadap persatuan bangsa meskipun keputusan akhir tidak sepenuhnya sesuai dengan kehendak awal. Opsi E paling tepat karena menunjukkan keteguhan dalam menjaga amanah kebangsaan dan tidak memaksakan kepentingan kelompok ketika persatuan negara menjadi tujuan utama. Opsi A terlihat baik karena menjaga suasana musyawarah, tetapi lebih menekankan kelancaran proses pembahasan. Opsi B juga positif karena dasar negara perlu diterima oleh seluruh golongan, tetapi fokusnya lebih pada hasil kesepakatan bersama. Opsi C tampak tepat karena menghargai keberatan pihak lain, tetapi lebih mengarah pada sikap toleran dalam proses musyawarah. Opsi D juga baik karena menunjukkan keterbukaan terhadap keberagaman keyakinan, tetapi belum sekuat opsi E dalam menunjukkan integritas sebagai tanggung jawab terhadap persatuan bangsa.

Jawaban: E.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  23,
  'TWK',
  'Integritas',
  'sedang',
  'Dalam seleksi beasiswa sekolah, panitia menemukan ada nilai peserta yang salah masuk ke sistem sehingga peringkat akhir berubah. Peserta yang diuntungkan dari kesalahan itu adalah anak salah satu donatur kegiatan. Sikap yang paling menunjukkan integritas adalah...',
  NULL,
  '{"A":"Menunda pengumuman sementara agar panitia dapat memeriksa kembali data yang masuk ke sistem.","B":"Menetapkan hasil berdasarkan kesepakatan panitia agar keputusan tidak menimbulkan polemik.","C":"Mengumumkan hasil sesuai data awal karena sistem sudah menampilkan peringkat secara otomatis.","D":"Mengutamakan peserta yang paling membutuhkan agar tujuan sosial beasiswa tetap tercapai.","E":"Memperbaiki nilai sesuai bukti penilaian dan menjelaskan koreksi melalui prosedur resmi."}'::jsonb,
  NULL,
  'E',
  'Integritas menunjukkan sikap jujur, bertanggung jawab, dan berani menjaga kebenaran meskipun ada tekanan atau risiko tidak menyenangkan. Dalam konteks soal, masalah utama adalah adanya nilai yang salah masuk ke sistem sehingga hasil seleksi menjadi tidak sesuai fakta. Opsi E paling tepat karena memperbaiki nilai berdasarkan bukti penilaian dan menjelaskan koreksi melalui prosedur resmi menunjukkan kejujuran serta tanggung jawab dalam menjaga keadilan seleksi. Opsi A terlihat baik karena menunda pengumuman untuk memeriksa data merupakan langkah hati-hati, tetapi belum menjadi tindakan akhir yang memastikan kesalahan diperbaiki. Opsi B tampak positif karena menghindari polemik, tetapi integritas tidak boleh hanya bergantung pada kesepakatan jika data sebenarnya salah. Opsi C kurang tepat karena mengikuti hasil sistem tidak dapat dibenarkan jika data awal terbukti keliru. Opsi D baik karena memperhatikan tujuan sosial beasiswa, tetapi keputusan tetap harus berdasarkan data yang benar dan objektif.

Jawaban: E.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  24,
  'TWK',
  'Bela Negara',
  'sedang',
  'Sebagai negara kepulauan, Indonesia memiliki wilayah yang luas dengan kondisi geografis dan kebutuhan masyarakat yang berbeda-beda. Pemerintah memperkuat transportasi laut, jaringan internet, dan layanan publik hingga pulau terluar agar pembangunan tidak hanya terpusat di kota besar. Kebijakan tersebut paling mencerminkan Wawasan Nusantara karena...',
  NULL,
  '{"A":"Memperkuat keterhubungan antarwilayah agar Indonesia dipandang sebagai satu kesatuan bangsa.","B":"Meningkatkan potensi daerah kepulauan agar mampu bersaing dengan wilayah lain.","C":"Mempercepat pemerataan layanan publik agar masyarakat terpencil memperoleh fasilitas dasar.","D":"Menjaga perhatian negara terhadap wilayah perbatasan agar tidak tertinggal dalam pembangunan.","E":"Mengembangkan pusat ekonomi baru agar pertumbuhan tidak hanya terjadi di kota besar."}'::jsonb,
  NULL,
  'A',
  'Wawasan Nusantara adalah cara pandang bangsa Indonesia terhadap diri dan lingkungannya sebagai satu kesatuan politik, ekonomi, sosial budaya, serta pertahanan dan keamanan. Dalam soal ini, penguatan transportasi laut, jaringan internet, dan layanan publik hingga pulau terluar menunjukkan bahwa seluruh wilayah Indonesia harus dipandang sebagai satu kesatuan yang saling terhubung. Opsi A paling tepat karena menekankan keterhubungan antarwilayah dan pandangan bahwa Indonesia bukan kumpulan daerah yang terpisah, melainkan satu kesatuan bangsa. Opsi C cukup menjebak karena pemerataan layanan publik memang penting, tetapi fokusnya lebih pada akses fasilitas dasar. Opsi E juga baik karena mendorong pemerataan ekonomi, tetapi belum sepenuhnya menunjukkan konsep kesatuan wilayah. Opsi D positif karena memperhatikan wilayah perbatasan, tetapi cakupannya lebih sempit. Opsi B baik karena mengembangkan potensi daerah, tetapi lebih mengarah pada daya saing daerah, bukan inti Wawasan Nusantara.

Jawaban: A.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  25,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  '(1) Laju pembukaan lahan di kawasan hutan hujan tropis terus mengalami peningkatan signifikan guna memenuhi kebutuhan industri kayu dan perluasan area perkebunan. (2) Fenomena ini diperparah dengan banyaknya alih fungsi hutan lindung menjadi kawasan pertambangan yang sering kali dilakukan tanpa izin resmi. (3) Penerapan kebijakan moratorium penebangan hutan dan optimalisasi program restorasi lahan menjadi solusi mutlak untuk menahan laju kerusakan lingkungan. (4) Keberhasilan langkah tersebut sangat bergantung pada konsistensi pengawasan di lapangan serta keterlibatan aktif masyarakat lokal dalam menjaga wilayah adat mereka. (5) Jika eksploitasi ini tidak segera dihentikan, fungsi hutan sebagai penyerap emisi karbon akan menghilang dan mempercepat pemanasan global. (6) Selain itu, krisis biodiversitas menjadi risiko nyata yang mengancam kepunahan berbagai spesies flora dan fauna endemik. (7) Sinergi antara pemerintah dan organisasi lingkungan perlu diperkuat demi menjamin ketersediaan sumber daya alam bagi masa depan.

Gagasan utama paragraf di atas adalah...',
  NULL,
  '{"A":"Dampak pembukaan lahan hutan hujan tropis terhadap kepunahan spesies flora dan fauna.","B":"Peningkatan laju deforestasi akibat tingginya permintaan industri kayu dan pertambangan.","C":"Implementasi moratorium dan restorasi lahan sebagai solusi penahan kerusakan hutan.","D":"Peran aktif masyarakat lokal dan pengawasan lapangan dalam menjaga kelestarian hutan.","E":"Penguatan sinergi antara pemerintah dan organisasi lingkungan demi masa depan."}'::jsonb,
  NULL,
  'C',
  'Paragraf ini menggunakan pola ineratif, di mana kalimat (1) dan (2) berfungsi sebagai latar belakang masalah (laju deforestasi), sedangkan kalimat (5), (6), dan (7) merupakan rincian dampak negatif serta harapan jangka panjang. "Jantung" atau inti dari paragraf ini terletak pada kalimat (3) yang memperkenalkan solusi inti berupa moratorium dan restorasi lahan yang menjadi gagasan utama pada paragraf ini.

Jawaban: C',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  26,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  '(1) Penawaran opsi pembayaran PayLater pada platform lokapasar telah merevolusi pola konsumsi masyarakat, khususnya dalam mempercepat transaksi impulsif. (2) Lonjakan volume transaksi ini pada mulanya disambut penuh sukacita oleh para pelaku usaha mikro karena perputaran barang menjadi jauh lebih masif. (3) Namun, mekanisme penahanan dan keterlambatan pencairan dana dari pihak penyedia layanan kredit justru mengganggu likuiditas keuangan para penjual kecil tersebut. (4) Di tengah tingginya arus pesanan, tidak sedikit pedagang yang terpaksa menolak order karena kehabisan modal kerja harian untuk merestok barang dagangan. (5) Situasi dilematis ini menuntut para pelaku usaha untuk memiliki alokasi dana darurat yang tangguh guna memitigasi risiko macetnya arus kas di era digital.

Kesimpulan yang paling tepat untuk paragraf tersebut adalah...',
  NULL,
  '{"A":"Pelaku usaha mikro wajib mengelola dana darurat yang kuat untuk mengantisipasi gangguan likuiditas akibat skema pencairan dana PayLater.","B":"Keterlambatan pencairan dana dari layanan PayLater menyebabkan para pelaku usaha mikro kehabisan modal kerja harian.","C":"Lonjakan volume transaksi impulsif di platform lokapasar merupakan ancaman serius bagi stabilitas arus kas pedagang kecil.","D":"Opsi pembayaran PayLater merevolusi pola konsumsi masyarakat namun memaksa pedagang menolak order karena kehabisan barang.","E":"Pihak penyedia layanan kredit harus mempercepat pencairan dana agar perputaran barang pelaku usaha mikro tidak terganggu."}'::jsonb,
  NULL,
  'A',
  'Konklusi teks ini berakar pada masalah gangguan likuiditas akibat penundaan pencairan dana PayLater, yang kemudian bermuara pada satu keharusan adaptasi bagi pelaku usaha mikro. Pilihan A secara komprehensif memayungi keseluruhan bagian penting dari penyebab hingga solusi mitigasinya.

Jawaban: A',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  27,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  '(1) Penggunaan data analitik dalam memantau perilaku konsumen memberikan gambaran yang presisi mengenai tren pasar yang sedang berkembang saat ini. (2) Keakuratan prediksi tersebut memudahkan tim pemasaran untuk merancang kampanye yang lebih tertarget dan personal bagi setiap segmen pelanggan. (3) Integrasi nilai-nilai keberlanjutan dalam strategi operasional perusahaan merupakan aspek fundamental yang menjamin loyalitas konsumen jangka panjang. (4) Prinsip etika ini mendorong organisasi untuk tidak hanya mengejar profit semata, tetapi juga memperhatikan dampak lingkungan dan sosial secara nyata. (5) Perusahaan yang mengabaikan tanggung jawab moral tersebut sering kali menghadapi krisis reputasi yang sangat sulit dipulihkan di mata publik. (6) Penyelarasan antara keuntungan finansial dan etika bisnis menjadi standar baru kesuksesan sebuah organisasi di masa depan.

Berdasarkan paragraf di atas, kalimat utama ditunjukkan pada nomor...',
  NULL,
  '{"A":"(1)","B":"(3)","C":"(4)","D":"(6)","E":"(1) dan (6)"}'::jsonb,
  NULL,
  'B',
  'Paragraf ini menggunakan pola ineratif, di mana kalimat utamanya terletak di bagian tengah. Kalimat (1) dan (2) berfungsi sebagai latar belakang atau pengantar yang membahas tentang data analitik (aspek teknis). Kalimat (3) muncul sebagai pernyataan umum yang memperkenalkan topik sesungguhnya, yaitu integrasi nilai keberlanjutan. Kalimat (4) dan (5) adalah penjelas yang menguraikan isi dari kalimat (3). Kalimat (6) merupakan simpulan atau harapan (bukan kalimat utama).

Jawaban: B',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  28,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  '(1) Manajemen operasional yang baik mengharuskan setiap dokumen draf kerja sama diperiksa keabsahannya agar dipastikan tetap autentik. (2) Sebagai lembaga yang tepercaya di bidangnya, menjaga kualitas dan kredibilitas adalah prioritas utama. (3) Para pelanggan setia juga sudah sangat familiar dengan berbagai program unggulan yang ditawarkan setiap semesternya. (4) Evaluasi kepuasan layanan selalu ditinjau secara detail untuk memastikan standar mutu tidak mengalami penurunan. (5) Selain itu, perlindungan hukum terhadap merek dagang perusahaan wajib dikawal ketat guna mencegah potensi plagiarisme oleh pihak kompetitor.

Manakah kata bercetak tebal pada teks di atas yang merupakan kata tidak baku...',
  NULL,
  '{"A":"Autentik (kalimat 1)","B":"Tepercaya (kalimat 2)","C":"Familiar (kalimat 3)","D":"Detail (kalimat 4)","E":"Merek (kalimat 5)"}'::jsonb,
  NULL,
  'C',
  'Berdasarkan Kamus Besar Bahasa Indonesia (KBBI), bentuk baku yang benar adalah familier (diserap dari bahasa Belanda familiair, bukan langsung dari bahasa Inggris familiar).

Jawaban: C',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  29,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  '(1) Dinamika pasar yang fluktuatif mengharuskan perusahaan untuk terus melakukan manuver adaptasi pada sistem rantai pasok. (2) Melalui penerapan perangkat lunak manajemen inventaris terbaru diharapkan mampu meminimalisasi selisih stok di gudang utama. (3) Efisiensi operasional ini secara langsung akan berdampak positif pada peningkatan margin laba kotor perusahaan menjelang penutupan kuartal. (4) Selain itu, pelatihan intensif bagi staf logistik juga telah dijadwalkan agar mereka lebih familier dengan pembaruan fitur-fitur tersebut. (5) Keberhasilan transisi teknologi ini pada akhirnya sangat bergantung pada komitmen pengawasan dari seluruh jajaran eksekutif.

Kalimat yang tidak efektif pada teks di atas ditunjukkan oleh nomor...',
  NULL,
  '{"A":"(1)","B":"(2)","C":"(3)","D":"(4)","E":"(5)"}'::jsonb,
  NULL,
  'B',
  'Kalimat tersebut tidak efektif karena kehilangan unsur subjek akibat penggunaan konjungsi atau preposisi di awal kalimat. Frasa "Melalui penerapan perangkat lunak manajemen inventaris terbaru" berfungsi sebagai keterangan cara, lalu diikuti oleh predikat "diharapkan", sehingga subjek pada kalimat tersebut tidak ada. Untuk menjadi kalimat efektif, preposisi "Melalui" harus dihilangkan agar frasa "Penerapan perangkat lunak manajemen inventaris terbaru" dapat berdiri sebagai subjek.

Jawaban: B',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  30,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  '(1) Perusahaan terus berupaya mengoptimalkan strategi pemasaran digital untuk menjangkau target audiens yang lebih luas pada kuartal ini. (2) Salah satu pendekatan yang dinilai paling efektif saat ini adalah pemanfaatan platform media sosial secara organik maupun berbayar. (3) Tim operasional telah menyiapkan anggaran promosi yang cukup besar tetapi eksekusi kampanye tersebut masih terhambat oleh minimnya ketersediaan konten kreatif. (4) Padahal, desain visual yang interaktif sangat dibutuhkan untuk mempertahankan tingkat retensi pelanggan di dunia maya. (5) Divisi pemasaran menyarankan agar tim desain segera berkolaborasi dengan kreator eksternal guna mengatasi masalah kebuntuan ide ini. (6) Langkah kolaboratif tersebut diharapkan tidak hanya mempercepat timeline produksi, melainkan juga memberikan nuansa segar pada identitas merek. (7) Kesigapan manajemen dalam merespons kendala operasional semacam ini akan sangat menentukan tolok ukur keberhasilan proyek secara keseluruhan.

Kesalahan penggunaan tanda baca koma terdapat pada kalimat nomor...',
  NULL,
  '{"A":"(2)","B":"(6)","C":"(4)","D":"(7)","E":"(3)"}'::jsonb,
  NULL,
  'E',
  'Berdasarkan Pedoman Umum Ejaan Bahasa Indonesia, tanda koma (,) wajib dipakai sebelum konjungsi koordinatif yang menyatakan pertentangan, seperti tetapi, melainkan, dan sedangkan. Pada kalimat (3), konjungsi tetapi menghubungkan dua klausa yang setara ("Tim operasional telah menyiapkan anggaran..." dan "eksekusi kampanye tersebut masih terhambat..."), sehingga wajib disisipkan tanda koma sebelum kata tetapi. Penulisan yang benar seharusnya adalah:...anggaran promosi yang cukup besar, tetapi eksekusi kampanye....

Jawaban: E',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  31,
  'TIU',
  'Silogisme',
  'sedang',
  'Sebuah perusahaan teknologi menerapkan kebijakan pembatasan akses administrator untuk menjaga keamanan sistem. Sebelum memperoleh akses tersebut, setiap pengguna harus melewati pemeriksaan riwayat pelanggaran privasi. Terdapat dua argumen mengenai kebijakan tersebut.

Argumen 1: Pemeriksaan riwayat pelanggaran privasi sebelum pemberian akses sudah cukup untuk mencegah penyalahgunaan hak administrator.

Argumen 2: Pelatihan keamanan siber lanjutan dapat meningkatkan kemampuan pengguna dalam mengenali ancaman keamanan digital.

Fakta di lapangan: Hasil audit internal menunjukkan bahwa beberapa pengguna yang telah lolos pemeriksaan riwayat pelanggaran privasi justru melakukan penyalahgunaan akses administrator dengan mengambil data perusahaan tanpa izin.

Simpulan mengenai fakta tersebut adalah....',
  NULL,
  '{"A":"Memperkuat argumen 1.","B":"Memperkuat argumen 2.","C":"Memperlemah argumen 1.","D":"Memperlemah argumen 2.","E":"Tidak relevan dengan argumen 1 maupun argumen 2."}'::jsonb,
  NULL,
  'C',
  'Argumen 1: Pemeriksaan riwayat pelanggaran privasi dianggap sudah cukup untuk mencegah penyalahgunaan akses administrator. Fakta menunjukkan bahwa beberapa pengguna yang telah lolos pemeriksaan tersebut justru menyalahgunakan akses administrator. Artinya, pemeriksaan riwayat pelanggaran privasi saja belum cukup untuk mencegah penyalahgunaan akses. Hal ini memperlemah argumen 1.

Argumen 2: Pelatihan keamanan siber lanjutan dapat meningkatkan kemampuan pengguna dalam mengenali ancaman digital. Fakta tidak memberikan informasi mengenai pelatihan maupun kemampuan pengguna dalam mengenali ancaman keamanan. Oleh karena itu, fakta tidak dapat digunakan untuk menilai argumen 2.

Jawaban: C',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  32,
  'TIU',
  'Silogisme',
  'sedang',
  'Aplikasi investasi SmartInvest mewajibkan pengguna menyelesaikan verifikasi identitas sebelum dapat melakukan transaksi. Saat ini, sebagian pengguna aplikasi belum menyelesaikan verifikasi identitas sehingga belum memperoleh akses transaksi.

Manajemen berpendapat bahwa peningkatan jumlah pengguna yang menyelesaikan verifikasi identitas sudah cukup untuk meningkatkan jumlah transaksi investasi, sebab hambatan utama pengguna dalam bertransaksi adalah belum terpenuhinya persyaratan verifikasi.

Manakah pernyataan berikut yang paling MEMPERLEMAH pendapat manajemen tersebut?',
  NULL,
  '{"A":"Sebagian pengguna membutuhkan waktu lebih lama untuk menyelesaikan verifikasi karena dokumen identitas harus diperiksa ulang.","B":"Pengguna yang belum menyelesaikan verifikasi identitas tidak dapat mengakses fitur pembelian produk investasi.","C":"Beberapa pengguna yang telah menyelesaikan verifikasi identitas memperoleh informasi mengenai berbagai produk investasi.","D":"SmartInvest menyediakan panduan tambahan untuk membantu pengguna memahami prosedur verifikasi identitas.","E":"Jumlah pengguna terverifikasi meningkat sebesar 30%, tetapi jumlah transaksi investasi justru menurun sebesar 12% pada periode yang sama."}'::jsonb,
  NULL,
  'E',
  'Argumen manajemen: Peningkatan jumlah pengguna terverifikasi dianggap sudah cukup untuk meningkatkan transaksi investasi. Argumen tersebut mengasumsikan bahwa ketika semakin banyak pengguna memperoleh akses transaksi, jumlah transaksi juga akan meningkat. Periksa pilihan jawaban:

A. Menjelaskan kendala selama verifikasi, tetapi tidak menguji hubungan antara jumlah pengguna terverifikasi dan transaksi.

B. Menegaskan bahwa verifikasi merupakan syarat transaksi, tetapi tidak membuktikan peningkatan transaksi.

C. Menjelaskan bahwa pengguna memperoleh informasi investasi, tetapi tidak memastikan bahwa mereka melakukan transaksi.

D. Menjelaskan upaya mempermudah verifikasi, bukan dampaknya terhadap transaksi.

E. Menunjukkan bahwa jumlah pengguna terverifikasi meningkat, tetapi transaksi justru menurun.

Pilihan E paling memperlemah argumen karena menunjukkan bahwa bertambahnya pengguna terverifikasi tidak dengan sendirinya meningkatkan jumlah transaksi.

Jawaban: E',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  33,
  'TIU',
  'Analitis',
  'sedang',
  'Pengadilan Negeri Sentosa menyelenggarakan persidangan kasus korupsi yang dihadiri oleh hakim, penasihat hukum terdakwa, dan sejumlah pengunjung. Tidak ada hakim yang bertugas di pengadilan tersebut yang bekerja sebagai penasihat hukum terdakwa. Terdapat dua argumen mengenai penyelenggaraan persidangan tersebut.

Argumen 1: Pengumuman jadwal sidang melalui aplikasi pengadilan memudahkan masyarakat menentukan waktu kehadiran.

Argumen 2: Penasihat hukum terdakwa yang menghadiri persidangan di Pengadilan Negeri Sentosa dapat berasal dari luar jajaran hakim yang bertugas di pengadilan tersebut.

Fakta di lapangan: Dalam persidangan kasus korupsi, seorang penasihat hukum terdakwa tercatat sebagai advokat dari kantor hukum independen dan bukan merupakan hakim yang bertugas di Pengadilan Negeri Sentosa.

Simpulan mengenai fakta tersebut adalah....',
  NULL,
  '{"A":"Memperkuat argumen 1.","B":"Memperkuat argumen 2.","C":"Memperlemah argumen 1.","D":"Memperlemah argumen 2.","E":"Tidak relevan dengan argumen 1 maupun argumen 2."}'::jsonb,
  NULL,
  'B',
  'Argumen 1: Pengumuman jadwal sidang melalui aplikasi memudahkan masyarakat menentukan waktu kehadiran. Fakta tidak membahas penggunaan aplikasi, akses informasi jadwal, ataupun kemudahan masyarakat menghadiri sidang. Jadi, fakta tidak dapat digunakan untuk menilai argumen 1.

Argumen 2: Penasihat hukum terdakwa dapat berasal dari luar jajaran hakim yang bertugas di Pengadilan Negeri Sentosa. Fakta menunjukkan bahwa seorang penasihat hukum terdakwa merupakan advokat independen dan bukan hakim yang bertugas di pengadilan tersebut. Hal ini membuktikan adanya penasihat hukum dari luar jajaran hakim pengadilan. Dengan demikian, fakta tersebut memperkuat argumen 2.

Jawaban: B',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  34,
  'TIU',
  'Silogisme',
  'sedang',
  'Setiap kapal yang memperoleh izin berlayar telah lolos inspeksi keselamatan. Seluruh kapal yang lolos inspeksi keselamatan memiliki sertifikat kelayakan berlayar. Sementara itu, beberapa kapal milik Koperasi Bahari belum memiliki sertifikat kelayakan berlayar.

Kesimpulan yang paling tepat berdasarkan informasi tersebut adalah....',
  NULL,
  '{"A":"Semua kapal milik Koperasi Bahari belum memperoleh izin berlayar.","B":"Setiap kapal yang memiliki sertifikat kelayakan berlayar pasti memperoleh izin berlayar.","C":"Beberapa kapal milik Koperasi Bahari yang belum memiliki sertifikat telah lolos inspeksi keselamatan.","D":"Tidak ada kapal milik Koperasi Bahari yang memiliki sertifikat kelayakan berlayar.","E":"Beberapa kapal milik Koperasi Bahari belum memperoleh izin berlayar."}'::jsonb,
  NULL,
  'E',
  'Premis 1: Setiap kapal yang memperoleh izin berlayar telah lolos inspeksi keselamatan.

Premis 2: Semua kapal yang lolos inspeksi keselamatan memiliki sertifikat kelayakan berlayar.

Premis 3: Beberapa kapal Koperasi Bahari belum memiliki sertifikat kelayakan berlayar.

Dari premis 1 dan 2, diperoleh bahwa setiap kapal yang memiliki izin berlayar pasti memiliki sertifikat kelayakan.

Artinya, kapal yang belum memiliki sertifikat kelayakan pasti belum memperoleh izin berlayar.

Karena sebagian kapal Koperasi Bahari belum memiliki sertifikat, sebagian kapal tersebut juga belum memperoleh izin berlayar.

Jawaban: E',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  35,
  'TIU',
  'Kemampuan Numerik',
  'sedang',
  'KLEPTOMANIA: MENCURI =...',
  NULL,
  '{"A":"Piromania: Api","B":"Insomnia: Tidur","C":"Mitomania: Berbohong","D":"Amnesia: Ingatan","E":"Paranoia: Takut"}'::jsonb,
  NULL,
  'C',
  'Kleptomania adalah dorongan yang tidak bisa ditahan untuk melakukan tindakan mencuri. Pola yang sama terdapat pada kata mitomania yang merupakan dorongan psikologis untuk terus melakukan tindakan berbohong.

Jawaban: C',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  36,
  'TIU',
  'Kemampuan Numerik',
  'sedang',
  'Mobil pemadam kebakaran dilengkapi dengan sirene dan selang air.

Hubungan pada kalimat tersebut sama dengan...',
  NULL,
  '{"A":"Kapal pesiar dilengkapi dengan kolam renang dan ruang bioskop.","B":"Pesawat tempur dilengkapi dengan kursi pelontar dan radar pelacak.","C":"Helikopter dilengkapi dengan baling-baling dan tuas kendali.","D":"Sepeda motor dilengkapi dengan kaca spion dan lampu sein.","E":"Ambulans dilengkapi dengan ranjang pasien dan tabung oksigen."}'::jsonb,
  NULL,
  'E',
  'Sirene dan selang air merupakan perlengkapan utama dari mobil pemadam kebakaran untuk menangani keadaan darurat medis/penyelamatan. Hubungan yang sama terdapat pada ranjang pasien dan tabung oksigen merupakan perlengkapan utama dari ambulans untuk menangani keadaan darurat medis/penyelamatan.

Jawaban: E',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  37,
  'TIU',
  'Kemampuan Numerik',
  'sedang',
  'Hasil dari \(2\frac{\frac{1}{3}}{\frac{1}{6}}+\left(\frac{1}{2}-\left(-\frac{1}{4}\right)\right)\div\frac{3}{5}\times2\)  =...',
  NULL,
  '{"A":"5,5","B":"6","C":"6,5","D":"7,5","E":"7"}'::jsonb,
  NULL,
  'C',
  '\(2\frac{\frac{1}{3}}{\frac{1}{6}}+\left(\frac{1}{2}-\left(-\frac{1}{4}\right)\right)\div\frac{3}{5}\times2\)  = 2 + \(\left(\frac{1}{3}\times\frac{6}{1}\right)\)  + \(\left(\frac{1}{2}+\frac{1}{4}\right)\div\frac{3}{5}\)  × 2

                = 2 + 2 + \(\left(\frac{2+1}{4}\right)\div\frac{3}{5}\) × 2

                = 4 + \(\left(\frac{3}{4}\times\frac{5}{3}\right)\)  × 2

                = 4 + \(\frac{5}{4}\)  × 2

                = 4 + 2,5

                = 6,5

Jawaban: C',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  38,
  'TIU',
  'Perbandingan Kuantitatif',
  'sedang',
  'Diketahui  \(a\) dan \(b\) merupakan bilangan bulat positif. Perhatikan dua kuantitas berikut!

![gambar](/gambar/4fde15c2bbbf.png)

Apakah kuantitas S lebih besar daripada kuantitas T?

Putuskan apakah pernyataan (1) dan (2) berikut cukup untuk menjawab pertanyaan tersebut!

(1) 5 \(a\)  + 2 \(b\)  = 23

(2) \(a\)  + \(b\) = 7',
  '/gambar/4fde15c2bbbf.png',
  '{"A":"Pernyataan (1) SAJA cukup, tetapi pernyataan (2) SAJA tidak cukup.","B":"Pernyataan (2) SAJA cukup, tetapi pernyataan (1) SAJA tidak cukup.","C":"DUA pernyataan BERSAMA-SAMA cukup, tetapi masing-masing SAJA tidak cukup.","D":"Pernyataan (1) SAJA cukup dan pernyataan (2) SAJA cukup.","E":"Pernyataan (1) dan (2) BERSAMA-SAMA tidak cukup."}'::jsonb,
  NULL,
  'A',
  'Diketahui:

\(S=44-5a,\ \ \ \ T=14+2b\)

Ditanya apakah \(S>T\)?

44 − 5 \(a\)  > 14 + 2 \(b\)

30 > 5 \(a\)  + 2 \(b\)

Pernyataan (1): 5 \(a\)  + 2 \(b\)  = 23

Substitusikan:

30 > 23 (Benar)

Jadi, pernyataan (1) SAJA cukup.

Pernyataan (2): \(a\)  + \(b\)  = 7

Terdapat beberapa kemungkinan:

Jika \(a\)  = 1 dan \(b\)  = 6:

5 \(a\)  + 2 \(b\) = 5 + 12 = 17

30 > 17 (Benar)

Jika \(a\)  = 6 dan \(b\) = 1:

5 \(a\)  + 2 \(b\)  = 30 + 2 = 32

30 > 32 (Salah)

Karena menghasilkan jawaban berbeda, pernyataan (2) SAJA tidak cukup.

Jawaban: A',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  39,
  'TIU',
  'Perbandingan Kuantitatif',
  'sedang',
  'Diketahui  \(x\) merupakan bilangan real dan \(y\) merupakan bilangan real positif. Perhatikan dua kuantitas berikut!

![gambar](/gambar/72d99bd5e82d.png)

Apakah kuantitas A lebih kecil daripada kuantitas B?

Putuskan apakah pernyataan (1) dan (2) berikut cukup untuk menjawab pertanyaan tersebut!

(1) \(x\)  − 5 \(y\) = −18

(2) \(x\) + 4 \(y\) = 0',
  '/gambar/72d99bd5e82d.png',
  '{"A":"Pernyataan (1) SAJA cukup, tetapi pernyataan (2) SAJA tidak cukup.","B":"Pernyataan (2) SAJA cukup, tetapi pernyataan (1) SAJA tidak cukup.","C":"DUA pernyataan BERSAMA-SAMA cukup, tetapi masing-masing SAJA tidak cukup.","D":"Pernyataan (1) SAJA cukup dan pernyataan (2) SAJA cukup.","E":"Pernyataan (1) dan (2) BERSAMA-SAMA tidak cukup."}'::jsonb,
  NULL,
  'B',
  'Diketahui:

\(A=3x-2y,\ \ \ \ \ B=x+4y\)

Ditanya apakah \(A<B\)?

\(3x-2y<x+4y\)

\(2x<6y\)

\(x<3y\)

Pernyataan (1): \(x-5y\)  = −18

Jika \(y\)  = 2, maka:

\(x\)  − 5(2) = −18 \(\Rightarrow x\)  = −8

−8 < 3(2) (Benar)

Jika \(y\)  = 10, maka:

\(x\)  − 5(10) = −18 \(\Rightarrow x\)  = 32

32 < 3(10) (Salah)

Pernyataan (1) tidak cukup.

Pernyataan (2): \(x+4y\) = 0

Diperoleh:

\(x=-4y\)

Substitusikan ke kedua kuantitas:

\(A\)  = 3(−4 \(y\)) − 2 \(y\)  = −14 \(y\)

\(B\) = −4 \(y\) + 4 \(y\) = 0

Karena \(y\)  > 0, maka:

−14 \(y\)  < 0

Artinya, \(A<B\) pasti benar.

Jadi, pernyataan (2) SAJA cukup.

Jawaban: B',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  40,
  'TIU',
  'Berhitung',
  'sedang',
  'Sebuah printer laser akan mencetak laporan yang terdiri atas 120 halaman teks dan 60 halaman bergambar secara berturut-turut. Kecepatan pencetakan halaman bergambar lebih rendah daripada halaman teks, tetapi tetap untuk masing-masing jenis halaman.

Apakah seluruh laporan dapat selesai dicetak dalam waktu kurang dari 8 menit?

Putuskan apakah pernyataan (1) dan (2) berikut cukup untuk menjawab pertanyaan tersebut!

(1) Printer dapat mencetak 40 halaman teks setiap menit.

(2) Printer dapat mencetak 15 halaman bergambar setiap menit.',
  NULL,
  '{"A":"Pernyataan (1) SAJA cukup, tetapi pernyataan (2) SAJA tidak cukup.","B":"Pernyataan (2) SAJA cukup, tetapi pernyataan (1) SAJA tidak cukup.","C":"DUA pernyataan BERSAMA-SAMA cukup, tetapi masing-masing SAJA tidak cukup.","D":"Pernyataan (1) SAJA cukup dan pernyataan (2) SAJA cukup.","E":"Pernyataan (1) dan (2) BERSAMA-SAMA tidak cukup."}'::jsonb,
  NULL,
  'C',
  'Pernyataan (1): Waktu mencetak halaman teks

\(\frac{120}{40}\)  = 3 menit

Namun, kecepatan pencetakan halaman bergambar belum diketahui.

Misalnya:

• Kecepatan gambar 30 halaman/menit → total waktu 5 menit.

• Kecepatan gambar 10 halaman/menit → total waktu 9 menit.

Pernyataan (1) tidak cukup.

Pernyataan (2): Waktu mencetak halaman bergambar:

\(\frac{60}{15}\)  = 4 menit

Namun, kecepatan pencetakan halaman teks belum diketahui.

Misalnya:

• Kecepatan teks 60 halaman/menit → total waktu 6 menit.

• Kecepatan teks 20 halaman/menit → total waktu 10 menit.

Pernyataan (2) tidak cukup.

Gabungan pernyataan (1) dan (2):

Waktu mencetak teks:

\(\frac{120}{40}\)  = 3 menit

Waktu mencetak gambar:

\(\frac{60}{15}\)  = 4 menit

Total waktu:

\(X\)  = 3 + 4 = 7 menit

Karena 7 menit kurang dari 8 menit, seluruh laporan dapat selesai tepat sesuai batas waktu yang ditanyakan.

Kedua pernyataan BERSAMA-SAMA cukup, tetapi masing-masing SAJA tidak cukup.

Jawaban: C',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  41,
  'TIU',
  'Berhitung',
  'sedang',
  'Sebuah komunitas pengrajin menyewakan ruang workshop dengan tarif Rp60.000,00 untuk dua jam pertama. Jika digunakan lebih lama, setiap jam berikutnya dikenakan tarif lanjutan yang tetap dan lebih murah daripada tarif rata-rata per jam pada dua jam pertama.

Berapa total durasi penyewaan ruang workshop oleh seorang peserta?

Putuskan apakah pernyataan (1) dan (2) berikut cukup untuk menjawab pertanyaan tersebut!

(1) Tarif setiap jam tambahan adalah setengah dari tarif rata-rata per jam pada dua jam pertama.

(2) Peserta membayar total Rp105.000,00 setelah selesai menggunakan ruang workshop.',
  NULL,
  '{"A":"Pernyataan (1) SAJA cukup, tetapi pernyataan (2) SAJA tidak cukup.","B":"Pernyataan (2) SAJA cukup, tetapi pernyataan (1) SAJA tidak cukup.","C":"DUA pernyataan BERSAMA-SAMA cukup, tetapi masing-masing SAJA tidak cukup.","D":"Pernyataan (1) SAJA cukup dan pernyataan (2) SAJA cukup.","E":"Pernyataan (1) dan (2) BERSAMA-SAMA tidak cukup."}'::jsonb,
  NULL,
  'C',
  'Pernyataan (1):

Tarif rata-rata per jam pada dua jam pertama:

60.000 ÷ 2 = 30.000

Tarif lanjutan:

\(\frac{1}{2}\)  × 30.000 = 15.000

Tarif lanjutan diketahui, tetapi total biaya atau jumlah jam tambahan belum diketahui.

Pernyataan (1) tidak cukup.

Pernyataan (2):

Biaya tambahan:

105.000 − 60.000 = 45.000

Namun, tarif setiap jam tambahan belum diketahui.

Pernyataan (2) tidak cukup.

Gabungan pernyataan (1) dan (2):

Jumlah jam tambahan:

45.000 ÷ 15.000 = 3 jam

Total durasi: 2 + 3 = 5 jam

Jawaban: C',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  42,
  'TIU',
  'Berhitung',
  'sedang',
  'Sebuah pabrik menggunakan pompa model lama yang mampu memindahkan 120 liter air dalam waktu 8 menit. Pabrik kemudian menggantinya dengan pompa model baru yang memiliki debit tetap.

Berapa liter air yang dapat dipindahkan pompa baru selama 1,5 jam?

Putuskan apakah pernyataan (1) dan (2) berikut cukup untuk menjawab pertanyaan tersebut!

(1) Pompa baru dapat memindahkan 180 liter air dalam waktu 10 menit.

(2) Debit pompa baru 20% lebih besar daripada debit pompa lama.',
  NULL,
  '{"A":"Pernyataan (1) SAJA cukup, tetapi pernyataan (2) SAJA tidak cukup.","B":"Pernyataan (2) SAJA cukup, tetapi pernyataan (1) SAJA tidak cukup.","C":"DUA pernyataan BERSAMA-SAMA cukup, tetapi masing-masing SAJA tidak cukup.","D":"Pernyataan (1) SAJA cukup dan pernyataan (2) SAJA cukup.","E":"Pernyataan (1) dan (2) BERSAMA-SAMA tidak cukup."}'::jsonb,
  NULL,
  'D',
  'Diketahui:

1,5 jam = 90 menit

Debit = \(\frac{\operatorname{Volume}}{Waktu}\)

Pernyataan (1):

Debit pompa baru:

180 ÷ 10 = 18 liter/menit

Volume selama 90 menit:

18 × 90 = 1.620 liter

Pernyataan (1) cukup.

Pernyataan (2):

Debit pompa lama:

120 ÷ 8 = 15 liter/menit

Debit pompa baru:

15 + (20% × 15) = 18 liter/menit

Volume selama 90 menit:

18 × 90 = 1.620 liter

Pernyataan (2) cukup.

Jawaban: D',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  43,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Sebuah studio animasi memiliki 24 animator yang diperkirakan dapat menyelesaikan sebuah proyek dalam waktu 5 hari. Studio berencana menambah animator sejak awal pengerjaan. Seluruh animator memiliki kemampuan kerja yang sama.

Berapa hari lebih cepat proyek tersebut dapat diselesaikan setelah jumlah animator ditambah?

Putuskan apakah pernyataan (1) dan (2) berikut cukup untuk menjawab pertanyaan tersebut!

(1) Seluruh animator bekerja selama 8 jam setiap hari.

(2) Jumlah animator ditambah sebanyak 25% dari jumlah semula.',
  NULL,
  '{"A":"Pernyataan (1) SAJA cukup, tetapi pernyataan (2) SAJA tidak cukup.","B":"Pernyataan (2) SAJA cukup, tetapi pernyataan (1) SAJA tidak cukup.","C":"DUA pernyataan BERSAMA-SAMA cukup, tetapi masing-masing SAJA tidak cukup.","D":"Pernyataan (1) SAJA cukup dan pernyataan (2) SAJA cukup.","E":"Pernyataan (1) dan (2) BERSAMA-SAMA tidak cukup."}'::jsonb,
  NULL,
  'B',
  'Pernyataan (1):

Diketahui lama kerja setiap animator adalah 8 jam per hari, tetapi jumlah animator tambahan belum diketahui.

Pernyataan (1) tidak cukup.

Pernyataan (2):

Tambahan animator:

25% × 24 = 6

Jumlah animator baru:

24 + 6 = 30

Gunakan perbandingan tak senilai.

![gambar](/gambar/55295aeedc80.png)

24 × 5 = 30 × \(x\)

\(x\)  =  \(\frac{24\times5}{30}\)  = 4 hari

Pekerjaan selesai lebih cepat:

5 − 4 = 1 hari

Pernyataan (2) cukup.

Jawaban: B',
  '/gambar/55295aeedc80.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  44,
  'TIU',
  'Analitis',
  'sedang',
  'Sebuah kereta akan menempuh perjalanan dengan kecepatan rata-rata tetap. Karena keberangkatannya tertunda selama 1 jam, kereta harus meningkatkan kecepatannya agar tetap tiba sesuai jadwal semula. Jarak perjalanan tidak berubah.

Berapa selisih kecepatan rata-rata kereta setelah penundaan dan kecepatan semula?

Putuskan apakah pernyataan (1) dan (2) berikut cukup untuk menjawab pertanyaan tersebut!

(1) Berdasarkan jadwal awal, waktu tempuh perjalanan adalah 9 jam.

(2) Setelah mengalami penundaan, kereta melaju dengan kecepatan rata-rata 81 km/jam.',
  NULL,
  '{"A":"Pernyataan (1) SAJA cukup, tetapi pernyataan (2) SAJA tidak cukup.","B":"Pernyataan (2) SAJA cukup, tetapi pernyataan (1) SAJA tidak cukup.","C":"DUA pernyataan BERSAMA-SAMA cukup, tetapi masing-masing SAJA tidak cukup.","D":"Pernyataan (1) SAJA cukup dan pernyataan (2) SAJA cukup.","E":"Pernyataan (1) dan (2) BERSAMA-SAMA tidak cukup."}'::jsonb,
  NULL,
  'C',
  'Pernyataan (1):

Waktu perjalanan semula adalah 9 jam.

Karena keberangkatan tertunda 1 jam, waktu perjalanan baru:

9 − 1 = 8 jam

Namun, jarak perjalanan atau kecepatan kereta belum diketahui.

Pernyataan (1) tidak cukup.

Pernyataan (2):

Kecepatan baru adalah 81 km/jam, tetapi waktu perjalanan dan jarak tempuh belum diketahui.

Pernyataan (2) tidak cukup.

Gabungan pernyataan (1) dan (2):

Jarak perjalanan:

\(s\)  = 81 × 8 = 648 km

Kecepatan semula:

\(v=\frac{648}{9}\)  = 72 km/jam

Selisih kecepatan:

81 − 72 = 9 km/jam

Jawaban: C',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  45,
  'TIU',
  'Silogisme',
  'sedang',
  'Sebuah pusat konservasi memindahkan sebagian rusa ke kandang lain. Kini kandang asal dihuni 3 ekor rusa yang masing-masing mengonsumsi pakan dalam jumlah sama setiap hari.

Berapa hari persediaan pakan yang saat ini tersedia dapat bertahan hingga habis?

Putuskan apakah pernyataan (1) dan (2) berikut cukup untuk menjawab pertanyaan tersebut!

(1) Jumlah persediaan pakan yang tersedia saat ini adalah 216 kg.

(2) Sebelum pemindahan, kandang tersebut dihuni oleh 8 ekor rusa.',
  NULL,
  '{"A":"Pernyataan (1) SAJA cukup, tetapi pernyataan (2) SAJA tidak cukup.","B":"Pernyataan (2) SAJA cukup, tetapi pernyataan (1) SAJA tidak cukup.","C":"DUA pernyataan BERSAMA-SAMA cukup, tetapi masing-masing SAJA tidak cukup.","D":"Pernyataan (1) SAJA cukup dan pernyataan (2) SAJA cukup.","E":"Pernyataan (1) dan (2) BERSAMA-SAMA tidak cukup."}'::jsonb,
  NULL,
  'E',
  'Pernyataan (1): Persediaan pakan diketahui sebanyak 216 kg.

Namun, kebutuhan pakan setiap rusa per hari belum diketahui.

Pernyataan (1) tidak cukup.

Pernyataan (2): Jumlah rusa sebelumnya adalah 8 ekor, tetapi tidak diketahui jumlah pakan yang mereka konsumsi setiap hari maupun lama persediaan pakan sebelumnya dapat bertahan.

Pernyataan (2) tidak cukup.

Gabungan pernyataan (1) dan (2):

Diketahui stok pakan saat ini 216 kg dan jumlah rusa saat ini 3 ekor.

Namun, kebutuhan pakan setiap rusa per hari tetap belum diketahui.

Misalnya:

Jika setiap rusa mengonsumsi 1 kg pakan per hari:

\(x=\frac{216}{3\times1}\)  = 72 hari

Jika setiap rusa mengonsumsi 2 kg pakan per hari:

\(x=\frac{216}{3\times2}\)  × 2 = 36 hari

Kedua kemungkinan memenuhi seluruh informasi tetapi menghasilkan jawaban berbeda.

Jadi, kedua pernyataan bersama-sama tetap tidak cukup.

Jawaban: E',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  46,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Pasangan operasi perkalian berikut yang menghasilkan nilai sama adalah....',
  NULL,
  '{"A":"224 × 425 sama dengan 280 × 335","B":"216 × 440 sama dengan 264 × 360","C":"245 × 384 sama dengan 280 × 334","D":"252 × 375 sama dengan 315 × 302","E":"275 × 344 sama dengan 220 × 425"}'::jsonb,
  NULL,
  'B',
  'A.

Bagi kedua ruas dengan 56, kemudian 5.

224 × 425 = 280 × 335

4 × 425 = 5 × 335

4 × 85 = 5 × 67

340 ≠ 335

B.

Bagi kedua ruas dengan 24, kemudian 40.

216 × 440 = 264 × 360

9 × 440 = 11 × 360

9 × 11 = 11 × 9

99 = 99

C.

Bagi kedua ruas dengan 35, kemudian 8.

245 × 384 = 280 × 334

7 × 384 = 8 × 334

7 × 48 = 334

336 ≠ 334

D.

Bagi kedua ruas dengan 63, kemudian 5.

252 × 375 = 315 × 302

4 × 375= 5 × 302

4 × 75 = 302

300 ≠ 302

E.

Bagi kedua ruas dengan 55, kemudian 4.

275 × 344 = 220 × 425

5 × 344 = 4 × 425

5 × 86 = 425

430 ≠ 425

Jawaban: B',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  47,
  'TIU',
  'Silogisme',
  'sedang',
  'Sebuah perusahaan melakukan perhitungan jumlah barang untuk beberapa metode pengemasan. Pasangan pembagian yang menghasilkan nilai sama adalah....',
  NULL,
  '{"A":"2.254 ÷ 46 sama dengan 2.400 ÷ 48","B":"2.688 ÷ 48 sama dengan 2.850 ÷ 50","C":"2.352 ÷ 42 sama dengan 2.508 ÷ 44","D":"2.565 ÷ 45 sama dengan 2.552 ÷ 44","E":"2.862 ÷ 54 sama dengan 3.180 ÷ 60"}'::jsonb,
  NULL,
  'E',
  'A.

\(\frac{2.254}{46}=\frac{1.127}{23}\)  = 49

\(\frac{2.400}{48}=\frac{200}{4}\)  = 50

49 ≠ 50

B.

\(\frac{2.400}{48}=\frac{200}{4}\)  = 56

\(\frac{2.850}{50}=\frac{285}{5}\)  = 57

56 ≠ 57

C. 

\(\frac{2.352}{42}=\frac{392}{7}\)  = 56

\(\frac{2.508}{44}=\frac{627}{11}\)  = 57

56 ≠ 57

D.

\(\frac{2.565}{45}=\frac{513}{9}\)  = 57

\(\frac{2.552}{44}=\frac{638}{11}\)  = 58

57 ≠ 58

E.

\(\frac{2.862}{54}=\frac{477}{9}\)  = 53

\(\frac{3.180}{60}=\frac{318}{6}\)  = 53

53 = 53

Jawaban: E',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  48,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Operasi perkalian berikut yang memiliki hasil sama dengan 1.365 × 84 adalah....',
  NULL,
  '{"A":"1.274 × 90","B":"1.260 × 92","C":"1.500 × 76","D":"1.425 × 81","E":"1.170 × 97"}'::jsonb,
  NULL,
  'A',
  'Bandingkan setiap opsi dengan 1.365×84.

A.

Bagi kedua ruas dengan 91, kemudian 6.

1.365 × 84 = 1.274 × 90

15 × 84 = 14 × 90

15 × 14 = 14 × 15

210 = 210

B.

Bagi kedua ruas dengan 105, kemudian 4.

1.365 × 84 = 1.260 × 92

13 × 84 = 12 × 92

13 × 21 = 12 × 23

273 ≠ 276

C.

Bagi kedua ruas dengan 15, kemudian 4.

1.365 × 84 = 1.500 × 76

91 × 84 = 100 × 76

91 × 21 = 100 × 19

1.911 ≠ 1.900

D.

Bagi kedua ruas dengan 15, kemudian 3.

1.365 × 84 = 1.425 × 81

91 × 84 = 95 × 81

91 × 28 = 95 × 27

2.548 ≠ 2.565

E.

Bagi kedua ruas dengan 195.

1.365 × 84 = 1.170 × 97

7 × 84 = 6 × 97

588 ≠ 582

Jawaban: A',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  49,
  'TIU',
  'Soal Cerita',
  'sedang',
  'yang paling mendekati hasil perhitungan berikut adalah....

\(\frac{1.253\times89}{30}\)',
  NULL,
  '{"A":"3.500","B":"3.700","C":"3.900","D":"4.100","E":"4.300"}'::jsonb,
  NULL,
  'B',
  '\(\frac{1.253\times89}{30}\approx\frac{1.250\times90}{30}\)

=1.250 × 3

=3.750

Jawaban: B',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  50,
  'TIU',
  'Silogisme',
  'sedang',
  'Diberikan suatu barisan bilangan dengan pola yang tetap dan berlanjut. Beberapa suku pada barisan tersebut diketahui sebagai berikut.

![gambar](/gambar/68be9cc14807.png)

Nilai suku ke-11 adalah....',
  '/gambar/68be9cc14807.png',
  '{"A":"214","B":"218","C":"226","D":"230","E":"222"}'::jsonb,
  NULL,
  'E',
  'Perhatikan selisih antarsuku:

\(33 \xrightarrow{+15} 48 \xrightarrow{+19} 67 \xrightarrow{+23} 90\)

Selisihnya bertambah 4, sehingga selisih berikutnya adalah 27, 31, 35, dan 39.

\(U_8\)  = 90 + 27 = 117

\(U_9\)  = 117 + 31 = 148

\(U_{10}\)  = 148 + 35 = 183

\(U_{11}\)  = 183 + 39 = 222

Jawaban: E',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  51,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Perhatikan tabel berikut!

![gambar](/gambar/f063f6f79b3b.png)

Bilangan yang tepat untuk menggantikan tanda tanya (?) adalah....',
  '/gambar/f063f6f79b3b.png',
  '{"A":"55","B":"59","C":"61","D":"63","E":"57"}'::jsonb,
  NULL,
  'B',
  '![gambar](/gambar/d6f52711a9a8.png)

\(x \xrightarrow{+13} 72 \xrightarrow{\times 3} 216 \xrightarrow{-29} 187\)

\(x\)  + 13 = 72

\(x\)  = 59

Jawaban: B',
  '/gambar/d6f52711a9a8.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  52,
  'TIU',
  'Deret Angka',
  'sedang',
  'Perhatikan pola bilangan pada kedua kotak berikut!

![gambar](/gambar/a347009993d8.png)

Bilangan yang tepat untuk menggantikan tanda tanya (?) adalah....',
  '/gambar/a347009993d8.png',
  '{"A":"138","B":"136","C":"144","D":"132","E":"140"}'::jsonb,
  NULL,
  'A',
  'Perhatikan hubungan angka dari kiri ke kanan.

Kotak I

Baris pertama:

\(7^2\) − 6 = 49 − 6 = 43

Baris kedua:

\(9^2\)  − 6 = 81 − 6 = 75

Jadi, polanya adalah bilangan kiri dikuadratkan, kemudian dikurangi 6.

Kotak II

Baris pertama:

\(11^2\) − 6 = 121 − 6 = 115

Baris kedua:

\(x\)  = \(12^2\) − 6

= 144 − 6

= 138

Jawaban: A',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  53,
  'TIU',
  'Deret Angka',
  'sedang',
  'Sebuah studio desain memiliki beberapa perlengkapan kerja yang akan disimpan ke dalam tiga lemari berbeda. Aturan penyimpanannya sebagai berikut:

• Tablet gambar harus disimpan dalam lemari yang sama dengan stylus pen.

• Printer harus disimpan dalam lemari yang sama dengan kertas khusus.

• Kamera dan tripod harus ditempatkan di lemari yang berbeda.

Berdasarkan aturan tersebut, pasangan barang manakah yang pasti berada dalam lemari yang sama?',
  NULL,
  '{"A":"Tablet gambar dan kamera","B":"Stylus pen dan tripod","C":"Kamera dan printer","D":"Tablet gambar dan printer","E":"Printer dan kertas khusus"}'::jsonb,
  NULL,
  'E',
  'Aturan (1): tablet gambar ↔ stylus pen.

Aturan (2): printer ↔ kertas khusus.

Aturan (3): kamera ≠ tripod.

Dapat diketahui bahwa yang pasti satu lemari adalah printer dan kertas khusus dari aturan (2).

Jawaban: E',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  54,
  'TIU',
  'Deret Angka',
  'sedang',
  'Rani, Bimo, Salsa, Dito, dan Kevin duduk berjajar di 5 kursi. Salsa tidak mau duduk di sebelah Dito, tetapi harus duduk di antara Rani dan Kevin. Kevin duduk di kursi kedua dari kiri dan berada di sebelah Bimo. Di mana Dito duduk?',
  NULL,
  '{"A":"Sebelah kiri Salsa","B":"Antara Bimo dan Kevin","C":"Sebelah Rani","D":"Tepat di sebelah kanan Salsa","E":"Antara Rani dan Salsa"}'::jsonb,
  NULL,
  'C',
  '• Salsa tidak mau duduk di sebelah Dito

• Salsa duduk di antara Rani dan Kevin

• Kevin duduk di kursi kedua dari kiri dan berada di sebelah Bimo

Bimo | Kevin | Salsa | Rani | Dito

Sehingga, Dito duduk di sebelah kanan Salsa.

Jawaban: C',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  55,
  'TIU',
  'Kemampuan Numerik',
  'sedang',
  'Seorang penumpang akan bepergian dari Halte Pusat menuju Halte Selatan. Dari Halte Pusat terdapat jalur menuju Halte Barat dan Halte Timur. Halte Barat terhubung dengan Halte Museum dan Halte Pasar, sedangkan Halte Timur terhubung dengan Halte Taman dan Halte Selatan. Berapa minimal halte yang dilalui penumpang, termasuk halte awal dan halte tujuan?',
  NULL,
  '{"A":"2 halte","B":"3 halte","C":"4 halte","D":"5 halte","E":"6 halte"}'::jsonb,
  NULL,
  'B',
  'Informasi yang diberikan:

(1) Penumpang akan bepergian dari Halte Pusat menuju Halte Selatan

(2) Halte Pusat terdapat jalur menuju Halte Barat dan Halte Timur.

(3) Halte Barat terhubung dengan Halte Museum dan Halte Pasar

(4) Halte Timur terhubung dengan Halte Taman dan Halte Selatan

Sehingga rutenya sebagai berikut

![gambar](/gambar/7326399ded81.png)

Rute yang dilalui penumpang adalah Halte Pusat – Halte Timur – Halte Selatan

Jadi, minimal halte yang dilalui adalah 3 halte.

Jawaban: B',
  '/gambar/7326399ded81.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  56,
  'TIU',
  'Analitis',
  'sedang',
  'Tentukan urutan peserta dari peringkat tertinggi ke terendah. Jika terdapat skor yang sama, maka urutkan berdasarkan usia termuda lebih dulu.

![gambar](/gambar/cf162e3c8d67.png)

Urutan peserta dari peringkat tertinggi ke terendah adalah...',
  '/gambar/cf162e3c8d67.png',
  '{"A":"Eko – Beni – Cika – Dinda – Andra","B":"Eko – Beni – Cika – Andra – Dinda","C":"Beni – Cika – Eko – Dinda – Andra","D":"Eko – Cika – Beni – Dinda – Andra","E":"Dinda – Andra – Eko – Beni – Cika"}'::jsonb,
  NULL,
  'A',
  '• Skor tertinggi: Eko → 92.

• Nilai berikutnya: Beni dan Cika → 90.

Karena skor dan jumlah jawaban salah sama, maka diurutkan berdasarkan usia termuda, yaitu Beni terlebih dahulu lalu Cika.

• Nilai berikutnya: Dinda → 88.

• Nilai terendah: Andra → 85.

Maka urutannya adalah:

Eko – Beni – Cika – Dinda – Andra

Jawaban: A',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  57,
  'TIU',
  'Figural Serial',
  'sedang',
  '![gambar](/gambar/68d5d1660623.png)',
  '/gambar/68d5d1660623.png',
  '{"A":"![gambar](/gambar/0710ab86ea49.png)","B":"![gambar](/gambar/8fce09821629.png)","C":"![gambar](/gambar/c834ebfb8f8e.png)","D":"![gambar](/gambar/f47f62d44420.png)","E":"![gambar](/gambar/0b32181bc3a8.png)"}'::jsonb,
  NULL,
  'B',
  '![gambar](/gambar/b50f30384a62.png)

Jika diperhatikan dari bentuk objek yang ada di gambar (1) sama seperti di gambar (4), objek yang ada di gambar (2) sama seperti di gambar (5), kemudian objek yang ada di gambar (3) sama seperti di gambar 6. Terbentuk pola gambar:

• Gambar 1 → Gambar 4

• Gambar 2 → Gambar 5

• Gambar 3 → Gambar 6

Perubahan dari gambar bagian awal ke bagian akhir adalah dirotasi 90° searah jarum jam.

Sehingga gambar yang tepat untuk gambar selanjutnya adalah

![gambar](/gambar/d604aebd6311.png)

Jawaban: B',
  '/gambar/b50f30384a62.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  58,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Perhatikan gambar berikut!

![gambar](/gambar/db2b5a18bd63.png)',
  '/gambar/db2b5a18bd63.png',
  '{"A":"![gambar](/gambar/9978b52cc031.png)","B":"![gambar](/gambar/33a8f6c357bf.png)","C":"![gambar](/gambar/1663af016c3a.png)","D":"![gambar](/gambar/8732aa67f907.png)","E":"![gambar](/gambar/5a28bcf23c32.png)"}'::jsonb,
  NULL,
  'C',
  '![gambar](/gambar/5305a97be80e.png)

Masing-masing objek yang ditandai sebagai objek 1, 2, 3 dan 4 memiliki pola yang berbeda yaitu

• Objek 1, memiliki perubahan  ![gambar](/gambar/ea671be8cb7e.png) sehingga objek yang tepat untuk gambar (6) adalah  ![gambar](/gambar/2e4f0f5e5d03.png)

• Objek 2, memiliki perubahan yang berulang  ![gambar](/gambar/c96da18d960d.png), sehingga objek yang tepat untuk gambar (6) adalah  ![gambar](/gambar/317658bcbdb8.png)

• Objek 3, memiliki pola bertambah satu lengkungan setiap langkahnya

• Objek 4, tetap tidak ada perubahan

Sehingga gambar yang tepat untuk gambar (6) adalah

![gambar](/gambar/ecf161287428.png)

Jawaban: C',
  '/gambar/5305a97be80e.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  59,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Perhatikan gambar berikut!

![gambar](/gambar/a6c1b93e6f89.png)',
  '/gambar/a6c1b93e6f89.png',
  '{"A":"![gambar](/gambar/6278cbce580e.png)","B":"![gambar](/gambar/0d5b978672a9.png)","C":"![gambar](/gambar/c1bf8b4b4590.png)","D":"![gambar](/gambar/6ecf5dff5c0e.png)","E":"![gambar](/gambar/5fc391e9b64a.png)"}'::jsonb,
  NULL,
  'D',
  '![gambar](/gambar/c3f4b6bf3d11.png)

Karena yang ditanya adalah gambar (2), maka cari pola gambar dari gambar (3) ke gambar (4), kemudian terapkan gambar (1) ke gambar (2).

Masing-masing objek yang ada pada gambar (1) dan (3) ditandai sebagai objek 1, 2 dan 3 memiliki pola yang berbeda yaitu

• Objek 1, memiliki perubahan bertambahnya 2 lengkungan kemudian bergeser ke kanan.

• Objek 2, memiliki perubahan penghapusan 2 cabang kemudian bergeser ke kiri.

• Objek 3, dicerminkan secara vertikal

Menggunakan pola yang sama, sehingga gambar yang tepat untuk gambar (2) adalah

![gambar](/gambar/7d925e9511ab.png)

Jawaban: D',
  '/gambar/c3f4b6bf3d11.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  60,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Perhatikan gambar berikut!

![gambar](/gambar/d60c017f602b.png)',
  '/gambar/d60c017f602b.png',
  '{"A":"![gambar](/gambar/94b81df0d070.png)","B":"![gambar](/gambar/adea54e737f8.png)","C":"![gambar](/gambar/146e7d16f258.png)","D":"![gambar](/gambar/a43b88d5856c.png)","E":"![gambar](/gambar/31474357b83c.png)"}'::jsonb,
  NULL,
  'E',
  '![gambar](/gambar/1470a1440f6d.png)

Karena yang ditanya adalah gambar (3), maka cari pola gambar dari gambar (2) ke gambar (1), kemudian terapkan gambar (4) ke gambar (3).

Masing-masing objek yang ada pada gambar (2) dan (4) ditandai sebagai objek 1, 2, 3 dan 4 memiliki pola yang berbeda yaitu

• Objek 1 dan 4 bertukar tempat

• Objek 2 dan 3 dicerminkan secara horizontal

Menggunakan pola yang sama, maka gambar yang tepat untuk mengisi gambar (3) adalah

![gambar](/gambar/0567c13cfe61.png)

Jawaban: E',
  '/gambar/1470a1440f6d.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  61,
  'TIU',
  'Figural',
  'sedang',
  'Perhatikan gambar berikut!',
  NULL,
  '{"A":"![gambar](/gambar/6850b54b48cf.png)","B":"![gambar](/gambar/fc00b703db24.png)","C":"![gambar](/gambar/4451f682b023.png)","D":"![gambar](/gambar/a56203aa9b6e.png)","E":"![gambar](/gambar/7101b9e7930b.png)"}'::jsonb,
  NULL,
  'E',
  '![gambar](/gambar/a257574a6953.png)

Setiap objek yang ada pada Opsi A, B, C dan E memiliki posisi yang sama setiap objek yang sama, kecuali opsi E.

Jawaban: E',
  '/gambar/a257574a6953.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  62,
  'TIU',
  'Figural',
  'sedang',
  'Perhatikan gambar berikut!',
  NULL,
  '{"A":"![gambar](/gambar/fb9403c9631b.png)","B":"![gambar](/gambar/e1e44029042a.png)","C":"![gambar](/gambar/ee8e7f6249b0.png)","D":"![gambar](/gambar/210b545e883a.png)","E":"![gambar](/gambar/3915c2bbf33d.png)"}'::jsonb,
  NULL,
  'D',
  '![gambar](/gambar/69b35296b0f6.png)

Pada opsi A, B, C, dan E, terdapat 2 objek seperti puzle yang bisa disatukan atau menyatu menjadi 1 objek. Sedangkan E tidak seperti puzle yang bisa disatukan.

Jawaban: D',
  '/gambar/69b35296b0f6.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  63,
  'TIU',
  'Figural',
  'sedang',
  'Perhatikan gambar berikut

![gambar](/gambar/5eb5636e13ed.png)',
  '/gambar/5eb5636e13ed.png',
  '{"A":"![gambar](/gambar/61ae70304cef.png)","B":"![gambar](/gambar/bfb11a289aa3.png)","C":"![gambar](/gambar/78df6ffe4a42.png)","D":"![gambar](/gambar/a8d16c050283.png)","E":"![gambar](/gambar/f796d1e405dc.png)"}'::jsonb,
  NULL,
  'D',
  '![gambar](/gambar/be2ed8a9caeb.png)

Dari gambar diatas, kita misalkan setiap kotak dengan nomor. Sehingga kita dapatkan 3 kelompok gambar yaitu

• Gambar (1), gambar (5) dan gambar (9) memiliki pola rotasi 90° searah jarum jam

• Gambar (2), gambar (6) dan gambar (7) memiliki pola rotasi 180° searah ataupun berlawanan arah jarum jam (karena menghasilkan hasil yang sama)

• Gambar (3), gambar (4) dan gambar (8) memiliki pola rotasi 90° berlawanan arah jarum jam

Sehingga gambar yang tepat adalah

![gambar](/gambar/dabbecfcf923.png)

Jawaban: D',
  '/gambar/be2ed8a9caeb.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  64,
  'TIU',
  'Figural',
  'sedang',
  'Perhatikan gambar berikut!

![gambar](/gambar/ed10ee8448d7.png)',
  '/gambar/ed10ee8448d7.png',
  '{"A":"![gambar](/gambar/fd8d7a203181.png)","B":"![gambar](/gambar/0deedb2a7a27.png)","C":"![gambar](/gambar/dff3d26bbaef.png)","D":"![gambar](/gambar/d69a55b18105.png)","E":"![gambar](/gambar/89760daabf97.png)"}'::jsonb,
  NULL,
  'C',
  '![gambar](/gambar/e0476a0d6862.png)

Pada gambar tersebut terdapat objek kecil yang ditandai lingkaran merah dan lingkaran biru, memiliki pola perkolom, yang mana di kolom yang sama objek tersebut terdapat di dua kotak.

Objek besar ditengah dibaris pertama merupakan gabungan dari baris kedua dan ketiga.

![gambar](/gambar/daabca477b15.png)

Objek yang ditandai lingkaran hijau memiliki pola perkolom, yang mana di kolom yang sama terdapat pola baris pertama merupakan gabungan dari pola baris kedua dan ketiga.

Sehingga gambar yang tepat untuk mengisi kotak yang kosong adalah

![gambar](/gambar/59d6c60b4afd.png)

Jawaban: C',
  '/gambar/e0476a0d6862.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  65,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Perhatikan gambar berikut!

![gambar](/gambar/82da91a60689.png)',
  '/gambar/82da91a60689.png',
  '{"A":"![gambar](/gambar/cccc4cecf510.png)","B":"![gambar](/gambar/ec67658424f1.png)","C":"![gambar](/gambar/c69b634a4c77.png)","D":"![gambar](/gambar/ab83cb6159a7.png)","E":"![gambar](/gambar/f85f8121a68c.png)"}'::jsonb,
  NULL,
  'B',
  '![gambar](/gambar/ae8d1a7d856a.png)

Pada gambar tersebut terdapat pola disetiap barisnya, yaitu

• Objek besar pada kolom (1) dan kolom (2) digabungkan menghasilkan objek di kolom (3)

• Objek kecil dari kolom (2) ke kolom (3) hanya berbeda pada ujungnya yang semula lancip menjadi tumpul.

Sehingga gambar yang tepat untuk mengisi tempat yang kosong adalah

![gambar](/gambar/3f421b778f50.png)

Jawaban: B',
  '/gambar/ae8d1a7d856a.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  66,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Anda adalah customer service di sebuah bank. Pada jam pelayanan yang cukup ramai, Anda melihat beberapa orang yang bukan pegawai bank membantu calon nasabah mengisi formulir pengajuan pinjaman di ruang tunggu. Sebagian calon nasabah mengaku terbantu karena proses menjadi lebih cepat, sementara sebagian lainnya langsung meminta bantuan kepada orang-orang tersebut tanpa terlebih dahulu datang ke meja layanan. Hingga saat ini belum ada keluhan ataupun laporan pelanggaran yang diterima oleh bank. Sikap Anda adalah...',
  NULL,
  '{"A":"Mengingatkan calon nasabah bahwa pengisian formulir sebaiknya dilakukan melalui pendampingan petugas bank agar informasi yang diberikan sesuai prosedur.","B":"Mengamati terlebih dahulu aktivitas tersebut sambil menunggu adanya laporan dari nasabah sebelum mengambil tindakan lebih lanjut.","C":"Mengajak rekan kerja mengevaluasi penyebab nasabah lebih memilih meminta bantuan kepada pihak di luar layanan resmi bank.","D":"Menjelaskan kepada calon nasabah bahwa bank menyediakan pendampingan resmi selama proses pengajuan pinjaman sehingga mereka dapat memperoleh bantuan melalui petugas yang berwenang.","E":"Meminta orang-orang tersebut menghentikan aktivitas membantu nasabah karena bukan bagian dari pegawai bank."}'::jsonb,
  '{"A":4,"B":2,"C":3,"D":5,"E":1}'::jsonb,
  'D',
  'Pilihan D memperoleh skor 5 karena menjelaskan kepada calon nasabah bahwa bank menyediakan pendampingan resmi selama proses pengajuan pinjaman menunjukkan orientasi pada pelayanan publik yang mengutamakan keamanan, kepastian layanan, dan perlindungan kepentingan nasabah. Tindakan ini mengarahkan nasabah memanfaatkan layanan resmi tanpa terburu-buru menyimpulkan bahwa pihak yang membantu telah melakukan pelanggaran. Dengan demikian, kepercayaan masyarakat terhadap layanan bank tetap terjaga dan potensi risiko akibat penggunaan pihak di luar mekanisme resmi dapat diminimalkan. Pilihan A memperoleh skor 4 karena mengingatkan calon nasabah agar pengisian formulir dilakukan melalui pendampingan petugas bank merupakan langkah yang tepat untuk memastikan informasi yang diberikan sesuai prosedur. Namun, tindakan ini lebih berfokus pada proses pengisian formulir dan belum secara langsung memperkuat pemahaman nasabah mengenai keberadaan layanan resmi yang dapat mereka manfaatkan. Pilihan C memperoleh skor 3 karena mengajak rekan kerja mengevaluasi penyebab nasabah lebih memilih meminta bantuan kepada pihak di luar layanan resmi menunjukkan kepedulian terhadap peningkatan kualitas pelayanan. Akan tetapi, tindakan ini lebih berorientasi pada evaluasi internal dan belum memberikan solusi langsung kepada nasabah yang sedang membutuhkan layanan. Pilihan B memperoleh skor 2 karena memilih mengamati terlebih dahulu hingga ada laporan menunjukkan sikap hati-hati sebelum mengambil tindakan. Namun, pendekatan ini bersifat pasif sehingga kesempatan untuk memberikan edukasi dan mencegah ketergantungan nasabah pada pihak di luar layanan resmi menjadi terlewat. Pilihan E memperoleh skor 1 karena langsung meminta orang-orang tersebut menghentikan aktivitasnya tanpa adanya bukti pelanggaran atau keluhan dari nasabah merupakan tindakan yang kurang proporsional. Pendekatan ini berpotensi menimbulkan kesalahpahaman dan tidak mencerminkan pelayanan publik yang mengedepankan edukasi, komunikasi, serta penyelesaian masalah secara bijaksana.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  67,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Anda bertugas sebagai petugas pelayanan di loket perizinan. Pada saat antrean sedang ramai, seorang pemohon datang membawa surat rekomendasi dari seorang pejabat daerah agar permohonannya diprioritaskan karena dinilai penting bagi pengembangan investasi di wilayah tersebut. Di sisi lain, masih banyak pemohon lain yang telah menunggu sesuai nomor antrean dan seluruh persyaratan mereka telah lengkap. Sikap Anda adalah... …',
  NULL,
  '{"A":"Menjelaskan kepada pemohon bahwa seluruh permohonan akan diproses sesuai antrean, kemudian menyampaikan kepada atasan mengenai adanya surat rekomendasi tersebut.","B":"Meminta arahan kepada atasan mengenai tindak lanjut surat rekomendasi tersebut sambil menunda keputusan sampai memperoleh kepastian.","C":"Menjelaskan kepada pemohon bahwa pelayanan tetap mengikuti prosedur dan antrean, kemudian memastikan permohonannya diproses secara profesional tanpa perlakuan khusus.","D":"Mengutamakan pemohon tersebut apabila seluruh persyaratannya telah lengkap karena rekomendasi pejabat menunjukkan adanya kepentingan yang perlu dipertimbangkan.","E":"Mengutamakan pemohon tersebut apabila seluruh persyaratannya telah lengkap karena rekomendasi pejabat menunjukkan adanya kepentingan yang perlu dipertimbangkan."}'::jsonb,
  '{"A":4,"B":3,"C":5,"D":1,"E":2}'::jsonb,
  'C',
  'Pilihan terbaik adalah C karena menunjukkan komitmen terhadap prinsip pelayanan publik yang adil, akuntabel, dan bebas dari intervensi. Petugas tetap menghormati pemohon dengan memberikan penjelasan yang baik, namun tidak memberikan perlakuan khusus meskipun terdapat surat rekomendasi dari pejabat. Selain itu, petugas memastikan permohonan tetap diproses secara profesional sesuai prosedur yang berlaku. Sikap ini mencerminkan integritas, kesetaraan pelayanan, dan kepastian hukum, sehingga mendapat skor 5. A juga baik karena tetap menjaga prinsip antrean dan menunjukkan transparansi dengan melaporkan adanya surat rekomendasi kepada atasan. Namun, langkah tersebut belum secara tegas menunjukkan bahwa petugas mampu mengambil keputusan sesuai kewenangannya, sehingga mendapat skor 4. B cukup tepat karena menunjukkan kehati-hatian dengan meminta arahan atasan. Akan tetapi, petugas sebenarnya telah memiliki dasar aturan mengenai mekanisme pelayanan sehingga tidak perlu menunda keputusan hanya karena adanya surat rekomendasi, sehingga mendapat skor 3. E kurang tepat karena meskipun tidak secara langsung memotong antrean, usulan memberikan pelayanan lebih cepat setelah antrean berkurang tetap berpotensi menimbulkan persepsi adanya perlakuan khusus kepada salah satu pemohon. Oleh karena itu mendapat skor 2. D menjadi pilihan yang paling kurang tepat karena memberikan prioritas pelayanan berdasarkan surat rekomendasi pejabat bertentangan dengan asas kesetaraan, keadilan, dan integritas dalam pelayanan publik. Tindakan tersebut berpotensi menimbulkan diskriminasi terhadap pemohon lain yang telah mengikuti prosedur, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  68,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Instansi Anda mendapat target menyelesaikan seluruh permohonan dalam waktu singkat. Karena mengejar target tersebut, beberapa petugas mulai melewati tahapan verifikasi agar proses pelayanan lebih cepat. Sikap Anda adalah...',
  NULL,
  '{"A":"Mengikuti cara kerja tersebut agar target penyelesaian permohonan dapat tercapai sesuai waktu yang ditentukan.","B":"Tetap melakukan verifikasi sesuai prosedur sambil berusaha menyelesaikan permohonan secara efisien sesuai target yang ditetapkan.","C":"Menyampaikan kepada atasan bahwa tahapan verifikasi mulai dilewati agar dapat diberikan arahan mengenai target pelayanan.","D":"Mengingatkan rekan kerja untuk tetap mengikuti tahapan verifikasi sambil mengusulkan cara kerja yang lebih efisien agar target tetap tercapai.","E":"Mengusulkan agar target penyelesaian disesuaikan dengan kemampuan petugas agar seluruh tahapan pelayanan dapat dilakukan secara optimal."}'::jsonb,
  '{"A":1,"B":4,"C":3,"D":5,"E":2}'::jsonb,
  'D',
  'Pilihan D memperoleh skor 5 karena mengingatkan rekan kerja untuk tetap mengikuti tahapan verifikasi sekaligus mengusulkan cara kerja yang lebih efisien menunjukkan keseimbangan antara kepatuhan terhadap prosedur dan pencapaian target pelayanan. Tindakan ini tidak hanya mencegah kesalahan atau risiko akibat verifikasi yang dilewati, tetapi juga menunjukkan inisiatif untuk mencari solusi agar pelayanan tetap cepat dan berkualitas. Pilihan B memperoleh skor 4 karena tetap melakukan verifikasi sesuai prosedur sambil berusaha menyelesaikan permohonan secara efisien menunjukkan sikap bertanggung jawab dan berorientasi pada kualitas pelayanan. Namun, tindakan ini lebih berfokus pada pelaksanaan tugas pribadi dan belum secara langsung membantu mengatasi kebiasaan rekan kerja yang mulai melewati tahapan verifikasi. Pilihan C memperoleh skor 3 karena menyampaikan kondisi kepada atasan dapat membantu memastikan adanya arahan yang tepat ketika target pelayanan berpotensi mendorong petugas mengabaikan prosedur. Namun, tindakan ini masih bergantung pada keputusan atasan dan belum menunjukkan upaya langsung untuk memperbaiki proses kerja yang sedang berlangsung. Pilihan E memperoleh skor 2 karena mengusulkan penyesuaian target dapat menjadi bahan evaluasi apabila target memang tidak realistis. Namun, dalam situasi tersebut belum ada upaya untuk mencari cara agar proses pelayanan dapat dilakukan secara lebih efisien. Mengubah target juga belum tentu menjadi solusi utama terhadap masalah melewati tahapan verifikasi. Pilihan A memperoleh skor 1 karena mengikuti cara kerja yang melewati tahapan verifikasi hanya demi memenuhi target dapat mengurangi ketelitian dan berpotensi menimbulkan kesalahan dalam pelayanan. Pencapaian target waktu tidak seharusnya mengorbankan prosedur dan kualitas pelayanan kepada masyarakat.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  69,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Anda bertugas di kantor Disdukcapil. Setelah akta kelahiran seorang pemohon diterbitkan, Anda menyadari terdapat kesalahan penulisan nama anak akibat kekeliruan saat proses input data. Pemohon baru mengetahui kesalahan tersebut saat hendak menggunakan akta untuk keperluan administrasi lainnya. Sikap Anda adalah...',
  NULL,
  '{"A":"Mengambil tanggung jawab atas kesalahan tersebut dengan membantu pemohon memperoleh solusi sesuai prosedur yang berlaku.","B":"Menjelaskan kepada pemohon mengenai prosedur koreksi akta yang harus dilakukan untuk memperbaiki kesalahan tersebut.","C":"Melaporkan kesalahan tersebut kepada atasan agar penanganannya dapat dilakukan sesuai kewenangan yang berlaku.","D":"Meminta pemohon menunggu proses pemeriksaan internal sebelum menentukan langkah perbaikan dokumen tersebut.","E":"Menjelaskan bahwa kesalahan administrasi dapat terjadi sehingga dokumen perlu diperiksa kembali sebelum digunakan."}'::jsonb,
  '{"A":5,"B":3,"C":4,"D":2,"E":1}'::jsonb,
  'A',
  'Pilihan A memperoleh skor 5 karena mengambil tanggung jawab atas kesalahan sekaligus membantu pemohon memperoleh solusi sesuai prosedur menunjukkan orientasi pelayanan yang kuat. Petugas tidak sekadar menjelaskan bahwa telah terjadi kesalahan, tetapi juga berupaya membantu pemohon menyelesaikan dampak kesalahan tersebut melalui mekanisme yang benar. Pilihan C memperoleh skor 4 karena melaporkan kesalahan kepada atasan merupakan tindakan yang bertanggung jawab dan memastikan penanganan dilakukan sesuai kewenangan. Namun, tindakan ini belum menunjukkan keterlibatan langsung dalam membantu pemohon memperoleh penyelesaian atas dokumen yang bermasalah. Pilihan B memperoleh skor 3 karena memberikan penjelasan mengenai prosedur koreksi membantu pemohon memahami langkah yang harus ditempuh. Namun, petugas masih sebatas memberikan informasi dan belum menunjukkan upaya lebih lanjut untuk membantu proses penyelesaiannya. Pilihan D memperoleh skor 2 karena meminta pemohon menunggu pemeriksaan internal dapat dilakukan untuk memastikan penyebab kesalahan sebelum menentukan tindakan. Namun, sikap tersebut kurang responsif terhadap kebutuhan pemohon, terutama karena kesalahan berasal dari proses pelayanan yang dilakukan oleh instansi. Pilihan E memperoleh skor 1 karena hanya menjelaskan bahwa kesalahan administrasi dapat terjadi dan meminta dokumen diperiksa kembali tidak memberikan solusi terhadap kesalahan yang sudah terjadi. Pernyataan tersebut juga berpotensi memberikan kesan bahwa tanggung jawab atas kesalahan berada pada pemohon.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  70,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Anda bertugas sebagai petugas administrasi di Instalasi Gawat Darurat (IGD) sebuah rumah sakit. Pada saat ruang IGD sedang penuh, keluarga salah satu pasien terus mendesak agar pasiennya segera ditangani karena menganggap kondisinya sangat serius. Sementara itu, berdasarkan hasil triase yang telah dilakukan oleh tenaga medis, masih terdapat pasien lain yang memerlukan penanganan lebih dahulu sesuai tingkat kegawatdaruratannya. Sikap Anda adalah...',
  NULL,
  '{"A":"Meminta tenaga medis meninjau kembali hasil triase agar keluarga pasien merasa yakin bahwa kondisi pasien telah dinilai dengan tepat.","B":"Menenangkan keluarga pasien sambil memastikan mereka memperoleh informasi mengenai perkembangan proses penanganan pasien.","C":"Meminta keluarga pasien menunggu karena tenaga medis telah bekerja sesuai prosedur yang berlaku.","D":"Mengutamakan pasien tersebut agar situasi di ruang IGD tidak semakin tegang","E":"Menjelaskan kepada keluarga pasien bahwa urutan penanganan di IGD ditentukan berdasarkan hasil triase sehingga seluruh pasien memperoleh pelayanan sesuai tingkat kegawatdaruratannya."}'::jsonb,
  '{"A":4,"B":3,"C":2,"D":1,"E":5}'::jsonb,
  'E',
  'Pilihan E memperoleh skor 5 karena menjelaskan kepada keluarga pasien bahwa prioritas penanganan di IGD ditentukan berdasarkan hasil triase menunjukkan sikap yang adil, transparan, dan berorientasi pada kebutuhan pasien. Petugas tidak hanya mempertahankan prosedur, tetapi juga memberikan pemahaman kepada keluarga mengenai dasar penentuan prioritas pelayanan. Dengan demikian, hak seluruh pasien tetap terlindungi dan potensi konflik dapat diredakan melalui komunikasi yang baik. Pilihan A memperoleh skor 4 karena meminta tenaga medis meninjau kembali hasil triase menunjukkan kepedulian terhadap kekhawatiran keluarga dan kehati-hatian dalam memastikan kondisi pasien telah dinilai dengan tepat. Namun, karena hasil triase telah dilakukan oleh tenaga medis dan tidak terdapat indikasi kesalahan, tindakan tersebut belum menjadi langkah yang paling efektif untuk merespons desakan keluarga. Pilihan B memperoleh skor 3 karena menenangkan keluarga sambil memastikan mereka memperoleh informasi mengenai perkembangan penanganan dapat membantu mengurangi kecemasan dan menjaga komunikasi selama proses pelayanan. Namun, tindakan ini belum secara langsung menjelaskan alasan pasien harus menunggu berdasarkan tingkat kegawatdaruratannya. Pilihan C memperoleh skor 2 karena meminta keluarga menunggu menunjukkan kepatuhan terhadap prosedur dan keputusan tenaga medis. Namun, respons tersebut cenderung pasif dan belum memberikan penjelasan yang memadai kepada keluarga mengenai dasar penentuan prioritas pelayanan. Pilihan D memperoleh skor 1 karena mengutamakan pasien hanya untuk meredakan situasi mengabaikan hasil triase dan dapat mengurangi hak pasien lain yang memiliki tingkat kegawatdaruratan lebih tinggi. Pelayanan publik seharusnya diberikan secara objektif berdasarkan kebutuhan, bukan karena tekanan dari pihak tertentu.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  71,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Anda bertugas sebagai customer service di sebuah bank. Anda menemukan brosur lama tentang persyaratan pembukaan rekening yang masih tersedia di meja pelayanan, padahal sebagian ketentuannya sudah berubah. Sikap Anda adalah...',
  NULL,
  '{"A":"Mengingatkan nasabah agar memastikan kembali persyaratan pembukaan rekening kepada petugas sebelum mengajukan permohonan.","B":"Menyampaikan kepada supervisor bahwa brosur tersebut perlu diperbarui agar informasi yang diterima nasabah tetap sesuai ketentuan terbaru.","C":"Memindahkan brosur lama dari meja pelayanan agar nasabah tidak lagi menggunakannya sebagai acuan.","D":"Mengganti brosur lama dengan informasi terbaru setelah memastikan persyaratan yang tercantum telah sesuai dengan ketentuan bank.","E":"Membiarkan brosur tersebut karena nasabah masih dapat memperoleh informasi terbaru langsung dari customer service."}'::jsonb,
  '{"A":2,"B":4,"C":3,"D":5,"E":1}'::jsonb,
  'D',
  'Pilihan terbaik adalah D karena mengganti brosur lama dengan informasi terbaru setelah memastikan kesesuaiannya dengan ketentuan bank merupakan tindakan yang secara langsung mencegah nasabah memperoleh informasi yang keliru sekaligus menjaga kualitas dan keakuratan informasi pelayanan, sehingga mendapat skor 5. B juga baik karena menyampaikan temuan kepada supervisor menunjukkan kepedulian terhadap kualitas informasi dan mendorong adanya pembaruan materi pelayanan, namun penyelesaian masalah masih bergantung pada tindak lanjut pihak lain sehingga mendapat skor 4. C cukup tepat karena memindahkan brosur lama dapat mencegah nasabah menjadikannya sebagai acuan, tetapi belum memastikan informasi terbaru tersedia sebagai penggantinya sehingga mendapat skor 3. A kurang tepat karena meminta nasabah melakukan verifikasi ulang dapat menambah langkah yang sebenarnya dapat dicegah apabila informasi pelayanan telah diperbarui dengan baik, sehingga mendapat skor 2. E menjadi pilihan paling tidak tepat karena membiarkan brosur dengan informasi yang sudah tidak relevan tetap tersedia berpotensi membuat nasabah memperoleh informasi yang keliru dan menunjukkan kurangnya inisiatif dalam menjaga kualitas pelayanan, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  72,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda menemukan metode baru yang dapat mempercepat proses rekapitulasi laporan dibandingkan prosedur yang selama ini digunakan di instansi. Metode tersebut belum pernah diterapkan atau diuji sebelumnya. Sikap Anda adalah...',
  NULL,
  '{"A":"Langsung menggunakan metode tersebut agar pekerjaan dapat diselesaikan lebih cepat dari biasanya.","B":"Menggunakan metode tersebut pada pekerjaan pribadi terlebih dahulu untuk melihat apakah hasilnya sesuai dengan prosedur yang berlaku.","C":"Menyampaikan metode tersebut kepada atasan untuk mendapatkan pertimbangan sebelum menerapkannya dalam pekerjaan.","D":"Mengusulkan agar metode tersebut diuji dalam lingkup terbatas sebelum dipertimbangkan untuk digunakan secara rutin.","E":"Tetap menggunakan prosedur yang berlaku karena metode baru tersebut belum menjadi bagian dari ketentuan instansi."}'::jsonb,
  '{"A":1,"B":3,"C":5,"D":4,"E":2}'::jsonb,
  'C',
  'Pilihan terbaik adalah C karena menyampaikan metode baru kepada atasan sebelum menerapkannya menunjukkan sikap profesional dalam menyampaikan inovasi sekaligus menghormati kewenangan dan prosedur yang berlaku di instansi, sehingga penerapan metode tersebut dapat dipertimbangkan secara resmi dan mendapat skor 5. D juga baik karena pengujian dalam lingkup terbatas dapat membantu mengetahui efektivitas dan risiko metode baru sebelum digunakan secara luas, namun pelaksanaannya tetap perlu mempertimbangkan kewenangan dan persetujuan pihak yang bertanggung jawab sehingga mendapat skor 4. B cukup tepat karena mencoba memastikan metode tersebut dapat menghasilkan pekerjaan yang sesuai sebelum digunakan lebih lanjut, tetapi melakukan perubahan cara kerja secara mandiri tetap berisiko apabila metode tersebut ternyata tidak sesuai dengan ketentuan yang berlaku, sehingga mendapat skor 3. E kurang tepat karena terlalu berorientasi pada kepatuhan terhadap cara kerja yang sudah ada dan kurang menunjukkan inisiatif untuk menyampaikan gagasan yang berpotensi meningkatkan efisiensi pekerjaan, sehingga mendapat skor 2. A menjadi pilihan paling tidak tepat karena langsung menerapkan metode yang belum teruji tanpa mempertimbangkan persetujuan, risiko, dan kesesuaiannya dengan prosedur instansi dapat menimbulkan masalah dalam proses kerja maupun pertanggungjawaban hasil pekerjaan, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  73,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Nama Anda tercantum sebagai peserta sebuah pelatihan dan Anda mendapat informasi bahwa sertifikat akan diberikan kepada peserta. Namun, Anda tidak mengikuti seluruh rangkaian kegiatan karena beberapa kali harus kembali menyelesaikan pekerjaan kantor. Sikap Anda adalah...…',
  NULL,
  '{"A":"Mengambil sertifikat tersebut sambil menjelaskan kepada panitia bahwa Anda tidak mengikuti seluruh rangkaian kegiatan.","B":"Mengonfirmasi kepada panitia mengenai status sertifikat dengan menyampaikan kondisi kehadiran Anda selama pelatihan.","C":"Menanyakan kepada rekan peserta mengenai ketentuan penerimaan sertifikat bagi peserta yang tidak mengikuti seluruh kegiatan.","D":"Meminta penjelasan panitia mengenai kriteria peserta yang dinyatakan berhak menerima sertifikat pelatihan.","E":"Mengembalikan sertifikat kepada panitia setelah mengetahui bahwa kehadiran Anda tidak memenuhi seluruh rangkaian kegiatan."}'::jsonb,
  '{"A":3,"B":5,"C":2,"D":4,"E":1}'::jsonb,
  'B',
  'Pilihan terbaik adalah B karena mengonfirmasi status sertifikat dengan menyampaikan kondisi kehadiran secara terbuka menunjukkan sikap jujur dan bertanggung jawab sekaligus memberikan kesempatan kepada panitia untuk menentukan kelayakan Anda berdasarkan ketentuan yang berlaku, sehingga mendapat skor 5. D juga baik karena berusaha memastikan kriteria penerimaan sertifikat sebelum mengambil keputusan, namun belum secara langsung menyampaikan kondisi kehadiran Anda yang sebenarnya kepada pihak yang berwenang sehingga mendapat skor 4. A cukup tepat karena menunjukkan keterbukaan dengan menyampaikan kondisi kehadiran kepada panitia, tetapi keputusan menerima sertifikat dilakukan terlebih dahulu sebelum memastikan apakah Anda memang memenuhi persyaratan yang ditetapkan, sehingga mendapat skor 3. C kurang tepat karena mencari informasi dari rekan dapat membantu memahami ketentuan secara umum, tetapi informasi tersebut belum tentu akurat dan tidak menyelesaikan persoalan secara langsung dengan pihak yang berwenang, sehingga mendapat skor 2. E menjadi pilihan paling tidak tepat karena langsung mengembalikan sertifikat berdasarkan asumsi bahwa ketidakhadiran sebagian otomatis membuat Anda tidak berhak menerimanya, padahal keputusan mengenai kelayakan penerima sertifikat seharusnya ditentukan berdasarkan ketentuan penyelenggara, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  74,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Anda bertugas mengelola sebuah taman kota yang sering dimanfaatkan masyarakat untuk berolahraga, bersantai, dan berkumpul. Dalam beberapa minggu terakhir, sebuah komunitas rutin mengadakan kegiatan di salah satu area taman dengan jumlah peserta yang cukup banyak. Meskipun kegiatan tersebut tidak melanggar aturan, beberapa pengunjung mengeluhkan bahwa ruang di area tersebut menjadi terbatas sehingga mereka merasa kurang nyaman menggunakan fasilitas taman. Sikap Anda adalah...',
  NULL,
  '{"A":"Menjelaskan kepada pengunjung bahwa komunitas tersebut masih menggunakan taman sesuai ketentuan yang berlaku.","B":"Mengajak perwakilan komunitas berdiskusi mengenai pengaturan penggunaan area taman agar tetap dapat dimanfaatkan secara nyaman oleh seluruh pengunjung.","C":"Menyusun jadwal penggunaan area taman bersama berbagai komunitas agar pemanfaatan ruang publik lebih seimbang.","D":"Memindahkan kegiatan komunitas ke lokasi lain agar pengunjung umum dapat menggunakan seluruh fasilitas taman.","E":"Menambah papan informasi mengenai tata tertib penggunaan fasilitas taman agar seluruh pengunjung memahami hak dan kewajibannya."}'::jsonb,
  '{"A":2,"B":5,"C":4,"D":1,"E":3}'::jsonb,
  'B',
  'Pilihan B memperoleh skor 5 karena mengajak perwakilan komunitas berdiskusi mengenai pengaturan penggunaan area taman merupakan langkah yang mengedepankan komunikasi, kolaborasi, dan kepentingan seluruh pengguna ruang publik. Tindakan ini berupaya mencari solusi yang disepakati bersama tanpa mengurangi hak salah satu pihak dalam memanfaatkan fasilitas umum. Sikap tersebut mencerminkan pelayanan publik yang berorientasi pada pemerataan akses, penyelesaian masalah secara partisipatif, dan menjaga kenyamanan masyarakat. Pilihan C memperoleh skor 4 karena menyusun jadwal penggunaan area taman bersama berbagai komunitas dapat menjadi solusi untuk mewujudkan pemerataan akses terhadap fasilitas publik. Namun, tindakan ini belum melibatkan proses komunikasi dengan pihak yang terdampak sehingga berpotensi menimbulkan keberatan apabila diterapkan tanpa adanya kesepahaman. Pilihan E memperoleh skor 3 karena menambah papan informasi mengenai tata tertib penggunaan fasilitas taman dapat membantu meningkatkan pemahaman masyarakat mengenai hak dan kewajiban dalam menggunakan ruang publik. Akan tetapi, tindakan ini belum secara langsung menyelesaikan permasalahan yang terjadi karena akar masalahnya adalah pengaturan pemanfaatan ruang, bukan kurangnya informasi mengenai aturan. Pilihan A memperoleh skor 2 karena menjelaskan bahwa komunitas masih menggunakan taman sesuai ketentuan menunjukkan sikap objektif terhadap aturan yang berlaku. Namun, tindakan ini kurang responsif terhadap keluhan masyarakat karena tidak berupaya mencari solusi agar seluruh pengunjung dapat memanfaatkan fasilitas taman secara nyaman. Pilihan D memperoleh skor 1 karena memindahkan kegiatan komunitas ke lokasi lain tanpa adanya pelanggaran aturan merupakan tindakan yang kurang adil dan mengabaikan hak komunitas sebagai pengguna fasilitas publik. Pendekatan ini berpotensi menimbulkan konflik baru serta tidak mencerminkan pelayanan publik yang mengedepankan musyawarah dan keseimbangan kepentingan seluruh masyarakat.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  75,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda menjadi anggota tim yang bertugas menyeleksi vendor untuk kebutuhan kantor. Salah satu vendor yang mengajukan penawaran merupakan perusahaan milik teman dekat Anda. Sikap Anda adalah...',
  NULL,
  '{"A":"Menilai seluruh vendor berdasarkan kriteria evaluasi yang telah ditetapkan.","B":"Menilai seluruh vendor berdasarkan hasil evaluasi yang didukung bukti dan data penawaran.","C":"Menyampaikan kepada ketua tim bahwa Anda mengenal salah satu pemilik vendor.","D":"Meminta anggota tim lain memberikan penilaian terhadap vendor tersebut.","E":"Menghindari pembahasan mengenai vendor milik teman selama proses evaluasi berlangsung."}'::jsonb,
  '{"A":4,"B":5,"C":3,"D":2,"E":1}'::jsonb,
  'B',
  'Pilihan terbaik adalah B karena menunjukkan sikap profesional dengan mendasarkan penilaian pada bukti dan data penawaran yang dapat dipertanggungjawabkan. Keputusan yang berbasis data membantu menjaga objektivitas, meminimalkan pengaruh hubungan pribadi, serta memastikan proses seleksi berlangsung secara adil dan transparan, sehingga mendapat skor 5. A juga baik karena menilai seluruh vendor berdasarkan kriteria evaluasi yang telah ditetapkan. Hal ini mencerminkan kepatuhan terhadap standar penilaian dan menjaga perlakuan yang sama bagi seluruh peserta. Namun, pilihan ini belum secara tegas menekankan pentingnya penggunaan bukti dan data sebagai dasar penilaian sehingga mendapat skor 4. C cukup tepat karena menyampaikan kepada ketua tim bahwa Anda mengenal salah satu pemilik vendor menunjukkan sikap terbuka terhadap potensi konflik kepentingan. Akan tetapi, tindakan tersebut belum secara langsung memastikan bahwa proses penilaian dilakukan secara objektif berdasarkan hasil evaluasi, sehingga mendapat skor 3. D kurang tepat karena menyerahkan penilaian kepada anggota tim lain memang dapat mengurangi potensi konflik kepentingan, tetapi juga menunjukkan pengalihan tanggung jawab yang telah diberikan kepada Anda tanpa pilihan yang paling kurang tepat karena hanya menghindari pembahasan mengenai vendor milik teman tanpa memastikan bahwa proses evaluasi tetap berlangsung secara objektif dan akuntabel. Sikap tersebut tidak menyelesaikan potensi konflik kepentingan yang ada sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  76,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda menemukan kesalahan pelayanan yang dilakukan oleh unit Anda sehingga seorang masyarakat menerima informasi yang kurang tepat. Seorang rekan menyarankan agar kesalahan tersebut tidak dilaporkan agar citra instansi tetap terjaga. Sikap Anda adalah..…',
  NULL,
  '{"A":"Menyampaikan kesalahan tersebut kepada atasan agar dapat ditentukan tindak lanjut yang sesuai.","B":"Membahas kesalahan tersebut bersama rekan satu unit untuk mencari cara memperbaikinya sebelum dilaporkan.","C":"Memastikan terlebih dahulu dampak kesalahan tersebut sebelum menentukan apakah perlu dilaporkan kepada atasan.","D":"Menyampaikan kondisi yang sebenarnya kepada pihak terkait dan mengusulkan langkah perbaikan sesuai prosedur.","E":"Tidak melaporkan kesalahan tersebut selama masalahnya dapat diselesaikan tanpa menimbulkan keluhan dari masyarakat."}'::jsonb,
  '{"A":4,"B":3,"C":2,"D":5,"E":1}'::jsonb,
  'D',
  'Pilihan terbaik adalah D karena menyampaikan kondisi yang sebenarnya kepada pihak terkait sekaligus mengusulkan langkah perbaikan menunjukkan kejujuran profesional dan tanggung jawab dalam menyelesaikan masalah tanpa mengabaikan kepentingan masyarakat, sehingga mendapat skor 5. A juga baik karena melaporkan kesalahan kepada atasan menunjukkan sikap terbuka dan bertanggung jawab, namun belum secara langsung memastikan adanya upaya perbaikan terhadap dampak yang mungkin telah diterima masyarakat, sehingga mendapat skor 4. B cukup tepat karena membahas masalah bersama rekan untuk mencari solusi dapat membantu memperbaiki kesalahan secara internal, tetapi menunda pelaporan berpotensi membuat informasi penting tidak segera diketahui oleh pihak yang memiliki kewenangan untuk mengambil tindakan, sehingga mendapat skor 3. C kurang tepat karena menilai dampak sebelum melaporkan memang menunjukkan kehati-hatian, tetapi kesalahan pelayanan tetap perlu ditangani secara transparan dan tidak seharusnya bergantung pada besar kecilnya dampak yang terlihat, sehingga mendapat skor 2. E menjadi pilihan paling tidak tepat karena menyembunyikan kesalahan demi menjaga citra instansi mengabaikan prinsip kejujuran dan akuntabilitas serta dapat memperbesar masalah apabila kesalahan tersebut diketahui masyarakat di kemudian hari, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  77,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda ditugaskan menghadiri kegiatan dinas di luar kota menggunakan kendaraan dinas pada akhir pekan. Dalam perjalanan pulang, Anda menyadari bahwa lokasi keperluan pribadi Anda berada di jalur yang sama dan tidak memerlukan tambahan waktu maupun biaya perjalanan. Sikap Anda adalah...',
  NULL,
  '{"A":"Tetap menggunakan kendaraan dinas hanya untuk kepentingan kedinasan sesuai penugasan yang diberikan.","B":"Menyelesaikan keperluan pribadi tersebut karena tidak menambah biaya maupun mengubah rute perjalanan.","C":"Menanyakan kepada atasan apakah kendaraan dinas dapat digunakan untuk keperluan tersebut.","D":"Menunda keperluan pribadi hingga perjalanan dinas selesai dan kendaraan dinas dikembalikan sesuai ketentuan.","E":"Mempertimbangkan penggunaan kendaraan dinas apabila tidak mengganggu pelaksanaan tugas kedinasan."}'::jsonb,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'A',
  'Pilihan terbaik adalah A karena menunjukkan sikap profesional dengan menggunakan kendaraan dinas hanya untuk kepentingan kedinasan sesuai penugasan yang diberikan. Meskipun keperluan pribadi berada di jalur yang sama dan tidak menambah waktu maupun biaya perjalanan, penggunaan kendaraan dinas tetap harus sesuai peruntukannya agar terhindar dari konflik kepentingan dan menjaga integritas dalam pengelolaan aset negara. Oleh karena itu, pilihan ini mendapat skor 5. B juga baik karena mempertimbangkan efisiensi penggunaan kendaraan dinas tanpa menambah biaya maupun mengubah rute perjalanan. Namun, pilihan ini tetap mencampurkan kepentingan pribadi dengan penggunaan aset negara sehingga berpotensi menimbulkan konflik kepentingan dan tidak sepenuhnya mencerminkan profesionalisme, sehingga mendapat skor 4. C cukup tepat karena menunjukkan kehati-hatian dengan meminta arahan kepada atasan sebelum mengambil keputusan. Meskipun demikian, penggunaan kendaraan dinas telah memiliki ketentuan yang jelas sehingga keputusan tersebut seharusnya dapat diambil berdasarkan aturan yang berlaku tanpa bergantung pada persetujuan atasan, sehingga mendapat skor 3. D kurang tepat karena memilih menunda keperluan pribadi hingga kendaraan dinas dikembalikan memang menghindari penyalahgunaan aset negara, tetapi belum menunjukkan pemahaman bahwa kendaraan dinas memang sejak awal hanya digunakan untuk kepentingan kedinasan. Tindakan ini lebih berfokus pada penundaan daripada penegasan prinsip profesionalisme, sehingga mendapat skor 2. E menjadi pilihan yang paling kurang tepat karena menjadikan kelancaran tugas kedinasan sebagai pertimbangan utama untuk menggunakan kendaraan dinas bagi kepentingan pribadi. Padahal, meskipun tidak mengganggu pelaksanaan tugas, penggunaan aset negara tetap harus dibatasi sesuai peruntukannya agar terhindar dari konflik kepentingan, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  78,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda mengajar di sebuah sekolah dan menemukan banyak siswa menggunakan AI untuk menyelesaikan hampir seluruh tugas yang diberikan. Akibatnya, siswa menjadi kurang terbiasa berpikir dan memahami materi secara mandiri. Sikap Anda adalah...',
  NULL,
  '{"A":"Mengingatkan siswa agar menggunakan AI hanya sebagai pendukung belajar dan tetap memahami materi yang dikerjakan.","B":"Merancang tugas yang mendorong siswa menjelaskan proses berpikir dan hasil pekerjaannya secara mandiri.","C":"Membatasi penggunaan AI dalam tugas sekolah agar siswa kembali terbiasa mengerjakan tugas secara mandiri.","D":"Membiarkan penggunaan AI selama siswa tetap mengumpulkan tugas sesuai batas waktu yang ditentukan.","E":"Mengajak siswa berdiskusi mengenai manfaat dan risiko penggunaan AI dalam proses pembelajaran."}'::jsonb,
  '{"A":4,"B":5,"C":3,"D":1,"E":2}'::jsonb,
  'B',
  'Pilihan terbaik adalah B karena merancang tugas yang mendorong siswa menjelaskan proses berpikir dan hasil pekerjaannya secara mandiri dapat mengurangi ketergantungan terhadap AI sekaligus memastikan teknologi tetap dapat digunakan secara bijak sebagai alat bantu pembelajaran, sehingga mendapat skor 5. A juga baik karena memberikan pemahaman kepada siswa mengenai penggunaan AI secara proporsional dapat membantu mereka menyadari bahwa teknologi seharusnya mendukung proses belajar, bukan menggantikan proses berpikir, sehingga mendapat skor 4. C cukup tepat karena membatasi penggunaan AI dapat mendorong siswa kembali mengembangkan kemampuan berpikir secara mandiri, tetapi pendekatan tersebut kurang adaptif terhadap perkembangan teknologi dan belum mengajarkan siswa cara memanfaatkan AI secara bertanggung jawab, sehingga mendapat skor 3. E kurang tepat karena diskusi mengenai manfaat dan risiko AI dapat meningkatkan kesadaran siswa, tetapi tanpa perubahan pada metode penugasan, ketergantungan terhadap AI dalam menyelesaikan tugas masih berpotensi terus terjadi, sehingga mendapat skor 2. D menjadi pilihan paling tidak tepat karena hanya berfokus pada penyelesaian tugas dan ketepatan waktu tanpa memperhatikan apakah siswa benar-benar memahami materi, sehingga dapat menghambat perkembangan kemampuan belajar dan berpikir secara mandiri, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  79,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda merupakan staf administrasi di Dinas Pendidikan yang bertugas menyusun laporan pertanggungjawaban penggunaan anggaran program pelatihan guru. Laporan tersebut harus dikirim ke bagian keuangan hari ini. Karena waktu semakin dekat, seorang rekan mengusulkan agar tahap pemeriksaan kelengkapan bukti pengeluaran dilewati terlebih dahulu dan dilakukan setelah laporan dikirim. Sikap Anda adalah...…',
  NULL,
  '{"A":"Tetap menyelesaikan pemeriksaan seluruh bukti pengeluaran sesuai tahapan sebelum laporan dikirim.","B":"Mengupayakan pemeriksaan dilakukan lebih cepat dengan tetap memastikan seluruh bukti pengeluaran yang dipersyaratkan telah diperiksa.","C":"Memeriksa terlebih dahulu bukti pengeluaran yang dianggap paling penting agar laporan dapat segera dikirim.","D":"Menyampaikan kondisi tersebut kepada atasan untuk menentukan langkah yang tepat agar laporan dapat diselesaikan sesuai batas waktu.","E":"Menyetujui usulan rekan agar laporan dapat dikirim tepat waktu dan pemeriksaan dilanjutkan setelahnya."}'::jsonb,
  '{"A":3,"B":5,"C":2,"D":4,"E":1}'::jsonb,
  'B',
  'Pilihan terbaik adalah B karena berupaya mempercepat proses pemeriksaan tanpa menghilangkan tahapan yang diperlukan menunjukkan kemampuan bekerja secara efisien sekaligus tetap menjaga kepatuhan terhadap prosedur dan akuntabilitas laporan pertanggungjawaban, sehingga mendapat skor 5. D juga baik karena menyampaikan kondisi kepada atasan dapat menjadi langkah yang tepat untuk memperoleh arahan ketika terdapat tekanan batas waktu, namun penyelesaian tersebut masih bergantung pada keputusan atasan dan belum menunjukkan upaya langsung untuk mengoptimalkan proses pemeriksaan yang sedang berlangsung, sehingga mendapat skor 4. A cukup tepat karena tetap menjalankan seluruh tahapan pemeriksaan menunjukkan komitmen terhadap prosedur dan ketelitian dalam penyusunan laporan, tetapi belum menunjukkan inisiatif untuk mencari cara yang lebih efisien ketika menghadapi tenggat waktu yang terbatas, sehingga mendapat skor 3. C kurang tepat karena memilih hanya memeriksa bukti pengeluaran yang dianggap penting berisiko mengabaikan dokumen lain yang juga diperlukan dalam pertanggungjawaban dan dapat menimbulkan masalah di kemudian hari, sehingga mendapat skor 2. E menjadi pilihan paling tidak tepat karena melewati tahapan pemeriksaan yang seharusnya dilakukan dapat menyebabkan laporan dikirim dengan data atau bukti yang belum terverifikasi, sehingga mengutamakan kecepatan dengan mengorbankan kepatuhan prosedur dan akuntabilitas pekerjaan, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  80,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda bertugas dalam tim pengadaan sebuah instansi pemerintah. Seorang rekan meminta informasi mengenai perkembangan proses pengadaan, tetapi sebagian informasi tersebut masih bersifat terbatas. Sikap Anda adalah...',
  NULL,
  '{"A":"Menjelaskan perkembangan proses pengadaan sesuai informasi yang dapat disampaikan kepada rekan tersebut.","B":"Menyampaikan seluruh perkembangan proses pengadaan agar rekan dapat menyusun laporan secara lengkap.","C":"Menyampaikan perkembangan proses pengadaan setelah seluruh tahapan selesai sesuai jadwal yang ditetapkan.","D":"Menjelaskan perkembangan proses pengadaan sesuai kewenangan dan mengarahkan rekan pada pihak yang berwenang.","E":"Mengonfirmasi kepada atasan mengenai informasi perkembangan pengadaan yang dapat disampaikan kepada rekan."}'::jsonb,
  '{"A":4,"B":1,"C":2,"D":5,"E":3}'::jsonb,
  'D',
  'Pilihan terbaik adalah D karena memberikan informasi sesuai kewenangan sekaligus mengarahkan rekan kepada pihak yang berwenang untuk informasi yang bersifat terbatas menunjukkan keseimbangan antara transparansi, koordinasi, dan kepatuhan terhadap ketentuan kerahasiaan informasi, sehingga mendapat skor 5. A juga baik karena tetap memberikan informasi yang dapat disampaikan kepada rekan sehingga kebutuhan koordinasi dan transparansi tetap terpenuhi, namun belum memberikan arahan terkait informasi lain yang memiliki batasan akses, sehingga mendapat skor 4. E cukup tepat karena melakukan konfirmasi kepada atasan dapat membantu memastikan batas informasi yang boleh disampaikan, tetapi langkah tersebut masih bergantung pada keputusan pihak lain dan belum secara langsung memberikan informasi yang dibutuhkan rekan, sehingga mendapat skor 3. C kurang tepat karena menunda pemberian informasi hingga seluruh proses selesai dapat menghambat kebutuhan koordinasi dan pelaporan, padahal sebagian perkembangan pekerjaan yang tidak bersifat terbatas masih dapat disampaikan, sehingga mendapat skor 2. B menjadi pilihan paling tidak tepat karena menyampaikan seluruh perkembangan pengadaan tanpa mempertimbangkan batasan akses terhadap informasi dapat melanggar ketentuan kerahasiaan dan berpotensi menimbulkan risiko bagi instansi, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  81,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda menjadi satu-satunya pegawai yang memahami proses pengolahan data tertentu di unit kerja Anda. Saat akan mengambil cuti, belum ada rekan yang mampu menggantikan pekerjaan tersebut. Sikap Anda adalah...',
  NULL,
  '{"A":"Menyelesaikan pekerjaan yang menjadi tanggung jawab Anda sebelum mengambil cuti sesuai jadwal yang telah ditentukan.","B":"Menyampaikan kondisi tersebut kepada atasan dan meminta arahan mengenai pembagian pekerjaan selama Anda tidak berada di kantor.","C":"Membagikan panduan proses kerja kepada rekan agar pekerjaan tersebut tetap dapat dilanjutkan selama Anda mengambil cuti.","D":"Meminta rekan mempelajari proses pekerjaan tersebut setelah Anda kembali agar dapat membantu pada kesempatan berikutnya.","E":"Membatalkan cuti yang telah direncanakan agar pekerjaan tersebut tetap dapat diselesaikan dan tidak menghambat pelayanan."}'::jsonb,
  '{"A":2,"B":4,"C":5,"D":3,"E":1}'::jsonb,
  'C',
  'Pilihan terbaik adalah C karena membagikan panduan proses kerja kepada rekan dapat mengurangi ketergantungan pada satu pegawai sekaligus memastikan pekerjaan tetap dapat dilanjutkan selama Anda mengambil cuti, sehingga mencerminkan profesionalisme dan kepedulian terhadap keberlanjutan layanan, sehingga mendapat skor 5. B juga baik karena menyampaikan kondisi kepada atasan dapat membantu menentukan pembagian pekerjaan dan memastikan operasional tetap berjalan selama Anda tidak berada di kantor, namun belum menunjukkan upaya langsung untuk mentransfer pengetahuan yang diperlukan kepada rekan kerja, sehingga mendapat skor 4. D cukup tepat karena membagikan pengetahuan kepada rekan setelah Anda kembali dapat membantu membangun kemampuan tim untuk ke depannya, tetapi belum menyelesaikan kebutuhan keberlanjutan pekerjaan selama Anda sedang cuti, sehingga mendapat skor 3. A kurang tepat karena menyelesaikan pekerjaan sebelum cuti memang menunjukkan tanggung jawab terhadap tugas, tetapi belum memberikan solusi apabila terdapat pekerjaan baru yang tetap harus diproses selama Anda tidak berada di kantor, sehingga mendapat skor 2. E menjadi pilihan paling tidak tepat karena membatalkan cuti bukan solusi berkelanjutan dan justru mempertahankan ketergantungan pekerjaan pada satu orang, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  82,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda mengetahui rekan kerja menggunakan hasil analisis yang Anda buat dalam laporan bersama tanpa mencantumkan kontribusi Anda. Sikap Anda adalah...…',
  NULL,
  '{"A":"Membicarakan hal tersebut secara pribadi dengan rekan untuk memahami alasan penggunaan hasil analisis tersebut.","B":"Meminta rekan mencantumkan kontribusi Anda dalam laporan agar pembagian hasil kerja lebih jelas.","C":"Menyampaikan kepada atasan mengenai penggunaan hasil analisis tersebut untuk mendapatkan arahan lebih lanjut.","D":"Mengajak rekan meninjau ulang laporan & menyepakati pencantuman kontribusi berdasarkan pembagian pekerjaan.","E":"Membiarkan hal tersebut selama hasil analisis tetap digunakan untuk mendukung penyelesaian laporan tim."}'::jsonb,
  '{"A":4,"B":3,"C":2,"D":5,"E":1}'::jsonb,
  'D',
  'Pilihan terbaik adalah D karena mengajak rekan meninjau kembali laporan dan menyepakati pencantuman kontribusi berdasarkan pembagian pekerjaan menunjukkan sikap profesional dalam menyelesaikan persoalan secara terbuka dan proporsional, sekaligus menjaga hubungan kerja tanpa mengabaikan penghargaan terhadap kontribusi setiap anggota tim, sehingga mendapat skor 5. A juga baik karena membicarakan persoalan secara pribadi dapat menjadi langkah awal untuk memahami alasan rekan menggunakan hasil analisis tersebut dan mencegah konflik berkembang, namun belum secara langsung memastikan adanya pengakuan terhadap kontribusi Anda dalam laporan, sehingga mendapat skor 4. B cukup tepat karena meminta pencantuman kontribusi merupakan bentuk upaya menjaga kejelasan pembagian hasil kerja, tetapi pendekatan tersebut lebih berfokus pada kepentingan pribadi dan belum memberikan ruang untuk membahas persoalan secara kolaboratif dengan rekan, sehingga mendapat skor 3. C kurang tepat karena langsung membawa persoalan kepada atasan dapat menjadi langkah yang terlalu formal ketika masalah masih dapat diselesaikan melalui komunikasi langsung dengan rekan yang bersangkutan, sehingga mendapat skor 2. E menjadi pilihan paling tidak tepat karena membiarkan penggunaan hasil analisis tanpa kejelasan kontribusi dapat mengabaikan prinsip etika profesional dan berpotensi menimbulkan persoalan serupa dalam kerja sama tim di kemudian hari, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  83,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda adalah ketua tim dalam lomba inovasi pelayanan publik di kampus. Dua hari sebelum lomba, salah satu anggota utama mengalami kecelakaan ringan sehingga tidak bisa hadir. Tim mulai panik karena bagian presentasi ada pada anggota tersebut. Sikap Anda adalah…',
  NULL,
  '{"A":"Menawarkan diri menggantikan bagian presentasi meskipun belum sepenuhnya memahami semua materi.","B":"Menghubungi anggota yang berhalangan untuk meminta ringkasan materi yang bisa segera dipelajari tim.","C":"Meminta ketua tim menentukan pengganti agar keputusan bisa cepat diambil.","D":"Menenangkan anggota tim agar tetap percaya diri menghadapi lomba yang sudah dekat.","E":"Mengajak tim membagi ulang peran sesuai kemampuan masing-masing agar persiapan tetap berjalan."}'::jsonb,
  '{"A":3,"B":4,"C":2,"D":1,"E":5}'::jsonb,
  'E',
  'Pilihan E memperoleh skor 5 karena mengajak tim membagi ulang peran sesuai kemampuan masing-masing merupakan langkah yang paling tepat dalam membangun jejaring kerja. Tindakan ini memanfaatkan potensi seluruh anggota tim, mendorong kolaborasi, serta memastikan persiapan tetap berjalan meskipun salah satu anggota utama tidak dapat hadir. Dengan pembagian tugas yang disesuaikan dengan kemampuan masing-masing, beban kerja menjadi lebih seimbang dan peluang keberhasilan tim tetap terjaga. Pilihan B memperoleh skor 4 karena menghubungi anggota yang berhalangan untuk meminta ringkasan materi merupakan upaya menjaga kesinambungan informasi dan memanfaatkan pengetahuan anggota yang tidak dapat hadir. Namun, tindakan ini masih berfokus pada memperoleh materi presentasi dan belum mengatur kembali pembagian peran seluruh anggota tim. Pilihan A memperoleh skor 3 karena menawarkan diri menggantikan bagian presentasi menunjukkan rasa tanggung jawab dan kepedulian terhadap keberlangsungan tim. Akan tetapi, tindakan ini berisiko karena belum sepenuhnya memahami materi sehingga efektivitas presentasi belum dapat dipastikan. Pilihan C memperoleh skor 2 karena meminta ketua tim menentukan pengganti dapat mempercepat proses pengambilan keputusan. Namun, sebagai ketua tim, tindakan tersebut kurang mencerminkan inisiatif dalam mengoordinasikan kerja sama dan mencari solusi bersama anggota tim. Pilihan D memperoleh skor 1 karena menenangkan anggota tim memang dapat membantu mengurangi kepanikan, tetapi tidak menyelesaikan permasalahan utama, yaitu kekosongan peran presentasi dan penyesuaian pembagian tugas menjelang lomba. Oleh karena itu, tindakan ini kurang efektif dalam mendukung keberhasilan kerja sama tim.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  84,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda bekerja dengan rekan yang sangat sering menawarkan bantuan. Niatnya baik, tetapi ia sering masuk ke meja Anda saat Anda sedang fokus menyelesaikan laporan. Anda tetap ingin menjaga hubungan baik tanpa membuat pekerjaan terganggu. Sikap Anda adalah…',
  NULL,
  '{"A":"Menerima semua bantuannya agar ia merasa dihargai sebagai bagian dari tim.","B":"Menjelaskan dengan sopan kapan Anda membutuhkan bantuan dan kapan perlu fokus bekerja.","C":"Mengucapkan terima kasih lalu tetap melanjutkan pekerjaan sesuai cara Anda sendiri.","D":"Mengajaknya membantu bagian tertentu yang memang bisa mempercepat penyelesaian laporan","E":"Menyampaikan kepada rekan lain bahwa bantuan tersebut sering membuat Anda kurang fokus."}'::jsonb,
  '{"A":2,"B":5,"C":3,"D":4,"E":1}'::jsonb,
  'B',
  'Pilihan B memperoleh skor 5 karena menjelaskan dengan sopan kapan membutuhkan bantuan dan kapan perlu fokus bekerja menunjukkan komunikasi yang terbuka serta kemampuan membangun kerja sama yang sehat. Tindakan ini menghargai niat baik rekan kerja sekaligus menetapkan batasan kerja secara profesional sehingga hubungan baik tetap terjaga tanpa mengurangi efektivitas pekerjaan. Sikap tersebut mencerminkan kompetensi Jejaring Kerja, yaitu mampu menjaga kolaborasi melalui komunikasi yang jelas dan saling menghormati. Pilihan D memperoleh skor 4 karena mengajak rekan membantu bagian tertentu yang memang dapat mempercepat penyelesaian laporan menunjukkan kemauan untuk tetap berkolaborasi dan memanfaatkan bantuan secara tepat. Namun, tindakan ini belum secara langsung menyampaikan kebutuhan akan ruang untuk bekerja dengan fokus sehingga potensi gangguan yang sama masih dapat terjadi di kemudian hari. Pilihan C memperoleh skor 3 karena mengucapkan terima kasih lalu tetap melanjutkan pekerjaan sesuai cara sendiri menunjukkan sikap menghargai rekan kerja. Akan tetapi, tindakan ini belum mengomunikasikan harapan atau batasan secara jelas sehingga rekan tersebut mungkin tidak menyadari bahwa bantuannya justru mengganggu konsentrasi. Pilihan A memperoleh skor 2 karena menerima semua bantuan demi menjaga perasaan rekan menunjukkan kepedulian terhadap hubungan kerja. Namun, tindakan ini mengabaikan kebutuhan untuk menjaga fokus dan efektivitas pekerjaan sehingga kurang mencerminkan pengelolaan kerja sama yang profesional. Pilihan E memperoleh skor 1 karena menyampaikan keluhan kepada rekan lain mengenai perilaku tersebut tidak menyelesaikan akar permasalahan dan berpotensi menimbulkan kesalahpahaman maupun mengganggu hubungan kerja dalam tim. Langkah yang lebih tepat adalah berkomunikasi secara langsung dengan rekan yang bersangkutan.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  85,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Anda mengikuti makan malam bersama tim lintas divisi. Dalam percakapan santai, seorang senior beberapa kali meminta rekan baru dari daerah tertentu menirukan logat khas daerahnya untuk menghibur suasana. Sebagian anggota tertawa, tetapi rekan tersebut terlihat mulai tidak nyaman dan lebih banyak diam. Sikap Anda adalah…',
  NULL,
  '{"A":"Memulai percakapan ringan dengan peserta lain dan menanyakan pengalaman kerja mereka.","B":"Menunggu ada peserta lain yang mengajak berbicara agar suasana terasa lebih nyaman.","C":"Bergabung dengan kelompok yang terlihat terbuka lalu mengikuti obrolan dengan sopan.","D":"Lebih banyak bersama teman satu unit agar tidak merasa terlalu canggung selama acara.","E":"Menyapa beberapa peserta yang duduk dekat dengan Anda saat acara sedang santai."}'::jsonb,
  '{"A":5,"B":1,"C":4,"D":2,"E":3}'::jsonb,
  'A',
  'Pilihan A memperoleh skor 5 karena memulai percakapan ringan dengan peserta lain dan menanyakan pengalaman kerja mereka membantu mengalihkan suasana menjadi lebih inklusif tanpa mempermalukan pihak mana pun. Tindakan ini menciptakan ruang interaksi yang lebih nyaman bagi seluruh peserta, termasuk rekan yang sebelumnya menjadi sasaran candaan, sehingga mencerminkan sikap menghargai keberagaman dan membangun lingkungan sosial yang saling menghormati. Pilihan C memperoleh skor 4 karena bergabung dengan kelompok yang terlihat terbuka lalu mengikuti obrolan dengan sopan menunjukkan kemampuan beradaptasi dan menjaga hubungan baik dengan berbagai pihak. Namun, tindakan ini lebih berfokus pada keterlibatan diri dalam percakapan dan belum memberikan dampak yang berarti terhadap suasana yang membuat rekan lain merasa kurang nyaman. Pilihan E memperoleh skor 3 karena menyapa beberapa peserta yang duduk di dekat menunjukkan sikap ramah dan membangun interaksi sosial yang positif. Akan tetapi, tindakan ini belum secara nyata membantu menciptakan suasana yang lebih inklusif bagi rekan yang sedang merasa tidak nyaman. Pilihan D memperoleh skor 2 karena memilih tetap bersama teman satu unit dapat membuat diri merasa lebih nyaman selama acara. Namun, sikap tersebut cenderung membatasi interaksi dengan peserta lain dan kurang mendukung terciptanya hubungan sosial yang inklusif di lingkungan kerja. Pilihan B memperoleh skor 1 karena hanya menunggu peserta lain memulai percakapan menunjukkan sikap pasif. Tindakan ini tidak memberikan kontribusi dalam membangun suasana yang lebih nyaman maupun mendorong interaksi yang menghargai keberagaman di antara peserta acara.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  86,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda menjadi bagian dari tim lintas bidang untuk membuat laporan program daerah. Bidang teknis merasa bidang administrasi lambat mengirim data, sedangkan bidang administrasi merasa data teknis sering berubah. Suasana rapat mulai saling menyalahkan. Suasana rapat mulai saling menyalahkan. Sikap Anda adalah…',
  NULL,
  '{"A":"Mengajak tiap bidang menyampaikan kendala masing-masing lalu menyepakati alur kerja yang jelas.","B":"Meminta ketua tim menegur bidang yang paling sering membuat pekerjaan terlambat.","C":"Mengusulkan jadwal pengiriman data yang disepakati bersama agar semua bagian punya pegangan.","D":"Menenangkan suasana rapat agar pembahasan tidak semakin melebar dari tujuan awal.","E":"Membantu merapikan data yang sudah masuk agar laporan tetap bisa mulai disusun."}'::jsonb,
  '{"A":5,"B":1,"C":4,"D":2,"E":3}'::jsonb,
  'A',
  'Pilihan A memperoleh skor 5 karena mengajak tiap bidang menyampaikan kendala masing-masing lalu menyepakati alur kerja yang jelas menunjukkan kemampuan membangun kolaborasi melalui komunikasi dua arah dan penyelesaian masalah secara bersama-sama. Tindakan ini tidak hanya meredakan konflik, tetapi juga menghasilkan kesepakatan yang dapat memperlancar koordinasi antarbidang pada tahap berikutnya. Sikap tersebut mencerminkan kompetensi Jejaring Kerja, yaitu membangun kerja sama yang efektif melalui koordinasi, saling memahami peran, dan penyelarasan proses kerja. Pilihan C memperoleh skor 4 karena mengusulkan jadwal pengiriman data yang disepakati bersama dapat membantu memperjelas koordinasi dan mengurangi potensi keterlambatan di masa mendatang. Namun, tindakan ini belum menggali penyebab utama perbedaan pandangan antarbidang sehingga solusi yang dihasilkan belum sepenuhnya menyelesaikan akar permasalahan. Pilihan E memperoleh skor 3 karena membantu merapikan data yang sudah masuk menunjukkan kepedulian terhadap penyelesaian pekerjaan dan menjaga progres penyusunan laporan. Akan tetapi, tindakan ini hanya mengatasi dampak dari permasalahan dan belum memperbaiki koordinasi yang menjadi penyebab utama munculnya konflik. Pilihan D memperoleh skor 2 karena menenangkan suasana rapat dapat membantu mengurangi ketegangan sehingga diskusi tidak semakin melebar. Namun, tindakan tersebut belum mengarahkan tim pada penyelesaian masalah maupun perbaikan mekanisme kerja antarbidang. Pilihan B memperoleh skor 1 karena meminta ketua tim menegur bidang yang dianggap paling sering menyebabkan keterlambatan cenderung memperkuat budaya saling menyalahkan. Tindakan ini berpotensi memperburuk hubungan kerja antarbidang dan tidak mendorong terciptanya solusi yang kolaboratif.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  87,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda bekerja sama dengan tim dari kantor cabang daerah lain untuk menyelesaikan agenda pelatihan. Tim cabang sering terlambat membalas pesan karena jam kerja lapangan mereka berbeda. Beberapa anggota tim pusat mulai kesal karena merasa koordinasi berjalan lambat. Sikap Anda adalah…',
  NULL,
  '{"A":"Membuat jadwal komunikasi yang disepakati bersama agar koordinasi tetap jelas dan tidak saling menunggu.","B":"Meminta tim cabang membalas pesan lebih cepat karena pelatihan harus segera disiapkan.","C":"Menanyakan kendala mereka lalu menyesuaikan cara koordinasi agar tetap nyaman bagi semua pihak.","D":"Mengirim ulang pesan di grup agar tim cabang segera melihat informasi yang dibutuhkan.","E":"Menyusun daftar hal penting yang perlu dijawab agar komunikasi menjadi lebih ringkas."}'::jsonb,
  '{"A":5,"B":2,"C":4,"D":1,"E":3}'::jsonb,
  'A',
  'Pilihan A memperoleh skor 5 karena membuat jadwal komunikasi yang disepakati bersama menunjukkan kemampuan membangun koordinasi yang efektif melalui kesepakatan bersama. Tindakan ini mempertimbangkan perbedaan pola kerja antara tim pusat dan tim cabang sehingga komunikasi menjadi lebih teratur, mengurangi kesalahpahaman, dan memperkuat kerja sama dalam mencapai tujuan bersama. Sikap ini mencerminkan kompetensi Jejaring Kerja, yaitu membangun kolaborasi yang efektif dengan menyesuaikan mekanisme koordinasi sesuai kebutuhan seluruh pihak. Pilihan C memperoleh skor 4 karena menanyakan kendala yang dihadapi tim cabang lalu menyesuaikan cara koordinasi menunjukkan sikap empati dan kemauan memahami kondisi rekan kerja. Namun, tindakan ini belum menghasilkan mekanisme komunikasi yang disepakati bersama sehingga efektivitas koordinasi jangka panjang belum sepenuhnya terjamin. Pilihan E memperoleh skor 3 karena menyusun daftar hal penting yang perlu dijawab dapat membuat komunikasi menjadi lebih ringkas dan memudahkan tim cabang memberikan respons. Akan tetapi, tindakan ini hanya meningkatkan efisiensi penyampaian informasi dan belum menyelesaikan perbedaan pola kerja yang menjadi penyebab utama keterlambatan komunikasi. Pilihan B memperoleh skor 2 karena meminta tim cabang membalas pesan lebih cepat menunjukkan kepedulian terhadap kelancaran persiapan pelatihan. Namun, tindakan tersebut kurang mempertimbangkan kondisi kerja tim cabang yang memang memiliki karakteristik berbeda sehingga kurang mendukung terjalinnya kerja sama yang saling memahami. Pilihan D memperoleh skor 1 karena hanya mengirim ulang pesan di grup tidak menyelesaikan akar permasalahan, yaitu perbedaan pola kerja dan mekanisme komunikasi antara kedua tim. Tindakan ini berpotensi membuat koordinasi tetap berjalan kurang efektif tanpa adanya upaya membangun kesepahaman bersama.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  88,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Di unit kerja Anda, seorang pegawai baru pernah bekerja di instansi lain dan memiliki relasi dengan beberapa pihak yang sering menjadi mitra kerja organisasi. Saat tim mengalami kesulitan memperoleh informasi mengenai pelaksanaan suatu program, pegawai tersebut menawarkan bantuan untuk menghubungi relasi yang dimilikinya. Namun, sebagian rekan menganggap hal tersebut tidak terlalu penting dan mengira ia hanya ingin menunjukkan kelebihannya. Sikap Anda adalah...',
  NULL,
  '{"A":"Memanfaatkan relasi yang ditawarkan apabila dapat membantu memperlancar koordinasi dan tetap dilakukan sesuai mekanisme yang berlaku.","B":"Menyarankan pegawai baru membuktikan terlebih dahulu bahwa relasinya benar-benar dapat membantu pekerjaan tim.","C":"Mengajak rekan kerja lebih terbuka terhadap setiap potensi yang dapat mendukung kelancaran kerja sama tim.","D":"Menunggu hingga pimpinan memutuskan apakah relasi tersebut perlu dimanfaatkan dalam pekerjaan.","E":"Mengabaikan tawaran tersebut karena seluruh koordinasi sebaiknya dilakukan melalui jalur yang sudah biasa digunakan."}'::jsonb,
  '{"A":5,"B":3,"C":4,"D":2,"E":1}'::jsonb,
  'A',
  'Pilihan A memperoleh skor 5 karena memanfaatkan relasi yang dimiliki pegawai baru apabila dapat membantu memperlancar koordinasi dan tetap dilakukan sesuai mekanisme yang berlaku menunjukkan kemampuan membangun jejaring kerja yang berorientasi pada kepentingan organisasi. Tindakan ini menghargai potensi yang dimiliki setiap anggota tim sekaligus memastikan bahwa pemanfaatan jejaring tetap profesional, transparan, dan tidak mengabaikan prosedur yang berlaku. Pilihan C memperoleh skor 4 karena mengajak rekan kerja lebih terbuka terhadap setiap potensi yang dapat mendukung kelancaran kerja sama merupakan langkah yang positif dalam membangun budaya kolaboratif. Namun, tindakan ini masih berfokus pada perubahan sikap rekan kerja dan belum memanfaatkan secara langsung peluang jejaring yang dapat membantu menyelesaikan kebutuhan tim. Pilihan B memperoleh skor 3 karena menyarankan pegawai baru membuktikan terlebih dahulu manfaat relasinya menunjukkan sikap yang cukup objektif sebelum memanfaatkan jejaring tersebut. Namun, pendekatan ini berpotensi menimbulkan kesan kurang percaya kepada anggota baru dan belum mencerminkan keterbukaan dalam membangun kerja sama. Pilihan D memperoleh skor 2 karena menunggu keputusan pimpinan merupakan tindakan yang menghormati kewenangan atasan. Akan tetapi, sikap ini kurang menunjukkan inisiatif dalam memanfaatkan potensi jejaring yang dapat mendukung penyelesaian pekerjaan secara lebih efektif. Pilihan E memperoleh skor 1 karena mengabaikan tawaran tersebut hanya karena koordinasi selama ini dilakukan melalui jalur yang biasa digunakan menunjukkan sikap yang kurang adaptif terhadap peluang kolaborasi. Tindakan ini dapat menyebabkan organisasi kehilangan kesempatan memperluas jejaring kerja yang berpotensi meningkatkan efektivitas koordinasi dan pencapaian tujuan bersama.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  89,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda ikut dalam tim kecil untuk membuat materi sosialisasi aturan baru. Salah satu anggota tim sangat teliti tetapi sering mengoreksi pekerjaan orang lain di grup dengan kalimat yang membuat rekan lain kurang nyaman. Hasil kerjanya bagus, tetapi cara komunikasinya mulai menurunkan semangat tim. Sikap Anda adalah…',
  NULL,
  '{"A":"Meminta anggota lain memahami bahwa koreksi tersebut sebenarnya untuk kebaikan hasil kerja.","B":"Menyarankan semua koreksi ditulis dalam dokumen bersama agar tidak memenuhi percakapan grup.","C":"Membantu merapikan masukan yang ia berikan agar anggota lain lebih mudah menerimanya.","D":"Mengajaknya bicara baik-baik agar masukan tetap disampaikan dengan cara yang lebih nyaman.","E":"Mengurangi pembahasan di grup agar anggota tim tidak terlalu sering merasa tersinggung."}'::jsonb,
  '{"A":2,"B":4,"C":3,"D":5,"E":1}'::jsonb,
  'D',
  'Pilihan D memperoleh skor 5 karena mengajak anggota tersebut berbicara secara baik-baik merupakan langkah yang paling tepat untuk menjaga kualitas kerja sekaligus hubungan dalam tim. Masukan yang diberikan sebenarnya bermanfaat, tetapi cara penyampaiannya mulai memengaruhi kenyamanan anggota lain. Dengan membicarakannya secara langsung dan konstruktif, masalah komunikasi dapat diselesaikan tanpa mempermalukan yang bersangkutan di hadapan tim. Pilihan B memperoleh skor 4 karena menyarankan agar koreksi disampaikan melalui dokumen bersama dapat mengurangi percakapan yang berpotensi membuat anggota lain merasa tidak nyaman. Cara ini juga membantu memusatkan masukan pada pekerjaan. Namun, akar persoalan mengenai cara komunikasi anggota tersebut belum secara langsung diselesaikan. Pilihan C memperoleh skor 3 karena membantu merapikan masukan dapat membuat koreksi lebih mudah diterima oleh anggota lain dan menjaga suasana kerja tetap kondusif. Namun, tindakan ini membuat Anda mengambil alih sebagian tanggung jawab komunikasi anggota tersebut sehingga kurang mendorong perbaikan cara berkomunikasi secara langsung. Pilihan A memperoleh skor 2 karena meminta anggota lain memahami maksud baik dari koreksi dapat membantu mengurangi salah persepsi. Namun, tindakan ini cenderung meminta pihak yang merasa tidak nyaman untuk menyesuaikan diri tanpa menyelesaikan cara penyampaian masukan yang menjadi sumber masalah. Pilihan E memperoleh skor 1 karena mengurangi pembahasan di grup hanya untuk menghindari anggota tim merasa tersinggung justru dapat menghambat komunikasi dan koordinasi. Masalah utama bukan terletak pada keberadaan diskusi, melainkan pada cara masukan disampaikan, sehingga mengurangi interaksi bukan solusi yang tepat.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  90,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda menjadi koordinator tim untuk acara edukasi digital di desa. Relawan muda ingin membuat acara dengan permainan interaktif, sedangkan tokoh masyarakat ingin acara lebih formal agar terlihat serius. Anda perlu menjaga kerja sama keduanya. Sikap Anda adalah…',
  NULL,
  '{"A":"Menggabungkan acara formal di awal dan sesi interaktif di bagian praktik agar semua pihak terakomodasi.","B":"Mengikuti keinginan tokoh masyarakat karena mereka lebih memahami kebiasaan warga setempat.","C":"Mendukung relawan muda karena acara yang menarik biasanya lebih disukai peserta.","D":"Mengajak kedua pihak berdiskusi tentang tujuan acara dan bentuk kegiatan yang paling sesuai.","E":"Membagi tugas agar tokoh masyarakat mengisi sambutan dan relawan muda mengatur teknis kegiatan."}'::jsonb,
  '{"A":4,"B":2,"C":1,"D":5,"E":3}'::jsonb,
  'D',
  'Pilihan D memperoleh skor 5 karena mengajak kedua pihak berdiskusi mengenai tujuan acara dan bentuk kegiatan yang paling sesuai merupakan langkah yang paling tepat dalam membangun jejaring kerja. Tindakan ini mengedepankan komunikasi, kolaborasi, dan penyamaan persepsi sebelum menentukan solusi, sehingga keputusan yang dihasilkan lebih berpeluang diterima oleh seluruh pihak. Dengan demikian, kerja sama antara relawan muda dan tokoh masyarakat dapat tetap terjaga serta berorientasi pada keberhasilan kegiatan. Pilihan A memperoleh skor 4 karena menggabungkan sesi formal dan interaktif merupakan solusi yang mampu mengakomodasi kepentingan kedua pihak. Namun, tindakan ini langsung menetapkan bentuk kegiatan tanpa melalui proses diskusi bersama, sehingga belum sepenuhnya mencerminkan pendekatan kolaboratif dalam membangun kesepakatan. Pilihan E memperoleh skor 3 karena membagi tugas sesuai peran masing-masing dapat mengurangi potensi konflik dan menjaga keterlibatan seluruh pihak dalam pelaksanaan kegiatan. Akan tetapi, pembagian tugas belum menyelesaikan perbedaan pandangan mengenai konsep acara yang menjadi sumber permasalahan. Pilihan B memperoleh skor 2 karena mengikuti keinginan tokoh masyarakat menunjukkan penghargaan terhadap pengalaman dan pemahaman mereka terhadap karakteristik warga. Namun, tindakan ini kurang mempertimbangkan masukan dari relawan muda sehingga kolaborasi tidak terbangun secara seimbang. Pilihan C memperoleh skor 1 karena hanya mendukung relawan muda mengabaikan pandangan tokoh masyarakat yang juga memiliki peran penting dalam keberhasilan kegiatan. Sikap ini berpotensi menimbulkan ketidakharmonisan dan melemahkan kerja sama antar pihak yang terlibat.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  91,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda menjadi operator arsip digital di instansi daerah. Setelah sistem diperbarui, beberapa dokumen lama sulit ditemukan. Seorang pegawai senior meminta dokumen itu disalin ke flashdisk pribadi agar pekerjaannya cepat selesai. Sikap Anda adalah…',
  NULL,
  '{"A":"Membantu menyalin dokumen tertentu sambil mencatat siapa yang memakainya.","B":"Menghubungi pengelola sistem agar pencarian dokumen segera diperbaiki.","C":"Menyarankan pegawai senior mencari dokumen secara manual sampai sistem normal kembali.","D":"Membuat daftar dokumen yang paling dibutuhkan agar pekerjaan penting tetap berjalan.","E":"Menolak penyimpanan di flashdisk pribadi dan menawarkan akses resmi yang lebih aman."}'::jsonb,
  '{"A":2,"B":4,"C":1,"D":3,"E":5}'::jsonb,
  'E',
  'Pilihan E memperoleh skor 5 karena menolak penyimpanan dokumen pada flashdisk pribadi dan menawarkan akses resmi yang lebih aman menunjukkan pemanfaatan teknologi informasi yang mengutamakan keamanan data serta kepatuhan terhadap prosedur pengelolaan informasi. Tindakan ini tetap berupaya membantu kebutuhan rekan kerja tanpa mengabaikan prinsip perlindungan data dan keamanan sistem informasi instansi. Sikap tersebut mencerminkan kompetensi Teknologi Informasi dan Komunikasi (TIK), yaitu menggunakan teknologi secara bertanggung jawab, aman, dan sesuai ketentuan. Pilihan B memperoleh skor 4 karena menghubungi pengelola sistem agar kendala pencarian dokumen segera diperbaiki merupakan langkah yang tepat untuk mengatasi penyebab utama permasalahan. Namun, tindakan ini belum memberikan solusi langsung terhadap kebutuhan pegawai senior untuk mengakses dokumen dalam waktu dekat. Pilihan D memperoleh skor 3 karena membuat daftar dokumen yang paling dibutuhkan dapat membantu memprioritaskan pekerjaan penting selama sistem belum sepenuhnya pulih. Akan tetapi, tindakan ini belum menyelesaikan masalah akses dokumen maupun mencegah permintaan penggunaan media penyimpanan pribadi. Pilihan A memperoleh skor 2 karena membantu menyalin dokumen sambil mencatat pengguna menunjukkan adanya upaya menjaga ketertelusuran penggunaan dokumen. Namun, tindakan ini tetap menggunakan flashdisk pribadi yang berpotensi menimbulkan risiko kebocoran atau penyalahgunaan data sehingga tidak sesuai dengan prinsip keamanan informasi. Pilihan C memperoleh skor 1 karena menyarankan pegawai senior mencari dokumen secara manual hingga sistem kembali normal tidak memberikan solusi yang efektif terhadap kebutuhan pekerjaan. Selain kurang memanfaatkan dukungan teknologi yang tersedia, tindakan ini juga berpotensi menghambat penyelesaian tugas dan tidak menyelesaikan akar permasalahan.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  92,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda bertugas mengelola akses sistem di sebuah instansi. Seorang pegawai telah mutasi ke unit lain sejak dua minggu lalu, tetapi akunnya masih dapat mengakses dokumen penting unit sebelumnya. Pegawai tersebut masih beberapa kali membantu pekerjaan unit lama sehingga rekan kerja menganggap aksesnya belum perlu dicabut. Sikap Anda adalah...…',
  NULL,
  '{"A":"Menginformasikan kondisi akses tersebut kepada atasan agar dapat ditentukan penyesuaian hak akses pegawai.","B":"Mempertahankan akses pegawai selama masih terdapat pekerjaan unit lama yang perlu diselesaikan.","C":"Memeriksa kembali jenis dokumen yang dapat diakses sebelum menentukan penyesuaian hak aksesnya.","D":"Mengusulkan akses disesuaikan dengan kebutuhan pekerjaan yang masih diberikan kepada pegawai tersebut.","E":"Mengingatkan pegawai agar menggunakan akses tersebut hanya untuk pekerjaan unit lama yang masih diperlukan."}'::jsonb,
  '{"A":4,"B":1,"C":2,"D":5,"E":3}'::jsonb,
  'D',
  'Pilihan D memperoleh skor 5 karena mengusulkan penyesuaian hak akses berdasarkan kebutuhan pekerjaan merupakan langkah yang paling tepat untuk menyeimbangkan keamanan informasi dan kelancaran pekerjaan. Pegawai yang telah berpindah unit tidak seharusnya mempertahankan akses secara luas, tetapi akses yang memang masih dibutuhkan untuk menyelesaikan pekerjaan tertentu tetap dapat diberikan secara terbatas. Pendekatan ini menerapkan prinsip pemberian akses sesuai kebutuhan sekaligus mencegah akses berlebihan terhadap dokumen unit sebelumnya. Pilihan A memperoleh skor 4 karena menginformasikan kondisi tersebut kepada atasan menunjukkan kepedulian terhadap keamanan sistem dan memastikan perubahan hak akses dilakukan melalui kewenangan yang tepat. Namun, tindakan ini belum menawarkan bentuk penyesuaian yang dapat menjaga keseimbangan antara kebutuhan pekerjaan dan keamanan akses. Pilihan E memperoleh skor 3 karena mengingatkan pegawai untuk menggunakan akses hanya sesuai kebutuhan menunjukkan upaya membatasi penggunaan akses secara bertanggung jawab. Namun, tindakan ini masih bergantung pada kepatuhan individu dan tidak mengatasi persoalan utama, yaitu hak akses yang secara sistem masih terlalu luas. Pilihan C memperoleh skor 2 karena memeriksa jenis dokumen yang dapat diakses dapat membantu mengetahui tingkat risiko sebelum menentukan tindakan. Namun, tanpa adanya langkah lanjutan untuk menyesuaikan hak akses, pemeriksaan tersebut belum menyelesaikan masalah keamanan yang sedang terjadi. Pilihan B memperoleh skor 1 karena mempertahankan akses hanya berdasarkan kebutuhan pekerjaan unit lama mengabaikan prinsip keamanan dan pembatasan hak akses. Meskipun pegawai masih membantu pekerjaan sebelumnya, akses yang tidak disesuaikan dapat meningkatkan risiko penggunaan atau perubahan dokumen oleh pihak yang sudah tidak berada di unit tersebut.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  93,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda mengelola dashboard kinerja layanan publik. Pimpinan ingin menampilkan data yang bagus saja saat rapat. Namun Anda melihat data respons pengaduan online justru menurun tajam. Sikap Anda adalah…',
  NULL,
  '{"A":"Menampilkan data yang baik dan data yang menurun dengan penjelasan yang jujur.","B":"Mengatur tampilan dashboard agar data yang menurun tidak terlalu terlihat.","C":"Menyiapkan data lengkap sebagai lampiran jika ada yang bertanya saat rapat.","D":"Menampilkan data yang menurun sebagai bahan evaluasi dan memberi saran perbaikan.","E":"Menjelaskan secara umum bahwa masih ada data yang perlu diperiksa lebih lanjut"}'::jsonb,
  '{"A":4,"B":1,"C":3,"D":5,"E":2}'::jsonb,
  'D',
  'Pilihan D memperoleh skor 5 karena menampilkan data yang menurun sebagai bahan evaluasi disertai saran perbaikan menunjukkan pemanfaatan teknologi informasi secara akuntabel dan berorientasi pada peningkatan kinerja. Dashboard tidak hanya berfungsi sebagai media pelaporan, tetapi juga sebagai dasar pengambilan keputusan yang objektif. Tindakan ini mencerminkan kompetensi Teknologi Informasi dan Komunikasi (TIK), yaitu memanfaatkan data secara tepat, transparan, dan mendukung perbaikan layanan. Pilihan A memperoleh skor 4 karena menampilkan data yang baik maupun yang menurun disertai penjelasan yang jujur menunjukkan sikap transparan dan menjaga integritas informasi. Namun, tindakan ini belum memanfaatkan hasil analisis data untuk memberikan rekomendasi perbaikan sehingga nilai tambah dashboard sebagai alat evaluasi belum optimal. Pilihan C memperoleh skor 3 karena menyiapkan data lengkap sebagai lampiran menunjukkan kesiapan menyediakan informasi apabila diperlukan. Akan tetapi, data yang penting belum disampaikan secara terbuka dalam paparan utama sehingga peluang untuk segera mengevaluasi penurunan kinerja menjadi berkurang. Pilihan E memperoleh skor 2 karena menjelaskan secara umum bahwa masih ada data yang perlu diperiksa menunjukkan kehati-hatian dalam menyampaikan informasi. Namun, tindakan ini kurang transparan karena tidak menggambarkan kondisi kinerja yang sebenarnya sehingga manfaat dashboard sebagai alat monitoring menjadi tidak maksimal. Pilihan B memperoleh skor 1 karena mengatur tampilan dashboard agar data yang menurun tidak terlalu terlihat merupakan tindakan yang mengurangi objektivitas penyajian informasi. Sikap ini berpotensi menyesatkan proses evaluasi dan tidak mencerminkan pemanfaatan teknologi informasi yang akurat, transparan, serta dapat dipertanggungjawabkan.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  94,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda ikut menilai aplikasi absensi digital untuk kantor. Vendor menawarkan fitur pengenalan wajah yang terlihat canggih. Namun mereka belum menjelaskan bagaimana data wajah pegawai akan dilindungi. Sikap Anda adalah…',
  NULL,
  '{"A":"Mengusulkan uji coba pada beberapa pegawai agar manfaat aplikasi terlihat lebih jelas.","B":"Meminta penjelasan konkret tentang keamanan data wajah sebelum aplikasi dipilih.","C":"Membandingkan aplikasi itu dengan aplikasi lain dari sisi harga dan fitur.","D":"Mendukung aplikasi tersebut karena fitur pengenalan wajah terlihat lebih modern.","E":"Mengajak tim menilai manfaat dan risiko sebelum memutuskan memakai fitur tersebut."}'::jsonb,
  '{"A":2,"B":5,"C":3,"D":1,"E":4}'::jsonb,
  'B',
  'Pilihan B memperoleh skor 5 karena meminta penjelasan konkret mengenai mekanisme perlindungan data wajah sebelum aplikasi dipilih menunjukkan pemanfaatan teknologi informasi yang mengutamakan keamanan data dan pengelolaan risiko. Data biometrik merupakan informasi yang bersifat sensitif sehingga penggunaannya harus disertai jaminan keamanan yang jelas sebelum sistem diterapkan. Sikap ini mencerminkan kompetensi Teknologi Informasi dan Komunikasi (TIK), yaitu mampu mengevaluasi penerapan teknologi dengan mempertimbangkan aspek keamanan, keandalan, dan perlindungan data. Pilihan E memperoleh skor 4 karena mengajak tim menilai manfaat dan risiko sebelum memutuskan penggunaan fitur pengenalan wajah menunjukkan sikap objektif dalam mengevaluasi teknologi. Namun, tindakan ini masih bersifat umum dan belum secara spesifik memastikan adanya kejelasan mengenai mekanisme perlindungan data biometrik yang menjadi isu utama.Pilihan C memperoleh skor 3 karena membandingkan aplikasi dari harga dan fitur merupakan bagian dari proses evaluasi sebelum pengadaan. Akan tetapi, tindakan ini belum memberikan perhatian yang memadai terhadap aspek keamanan data pribadi yang menjadi pertimbangan penting dalam pemilihan aplikasi. Pilihan A memperoleh skor 2 karena mengusulkan uji coba aplikasi dapat membantu menilai kemudahan penggunaan dan manfaat fitur yang ditawarkan. Namun, uji coba dilakukan sebelum ada kepastian mengenai perlindungan data wajah sehingga masih mengabaikan risiko keamanan informasi. Pilihan D memperoleh skor 1 karena mendukung penggunaan aplikasi hanya karena fitur pengenalan wajah terlihat lebih modern menunjukkan penilaian yang berorientasi pada kecanggihan teknologi tanpa mempertimbangkan aspek keamanan data. Tindakan ini berpotensi menimbulkan risiko terhadap perlindungan informasi pribadi pegawai dan tidak mencerminkan pemanfaatan TIK yang bertanggung jawab.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  95,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda staff pelayanan digital yang sedang membantu warga mengisi formulir online bantuan UMKM. Warga meminta Anda menyimpan akun dan kata sandinya agar nanti bisa dibantu lagi. Ia takut salah saat membuka sistem sendiri. Sikap Anda adalah…',
  NULL,
  '{"A":"Memberikan catatan langkah masuk akun agar warga bisa mencoba lagi di rumah.","B":"Menyimpan akun dan kata sandi sementara karena warga sudah memberi izin.","C":"Mengajari warga membuat kata sandi sendiri dan menjelaskan cara menjaganya.","D":"Mendampingi warga sampai formulir selesai sambil tetap membiarkan akun dipegang warga.","E":"Menyarankan warga meminta bantuan keluarga jika nanti masih kesulitan membuka akun."}'::jsonb,
  '{"A":3,"B":2,"C":5,"D":4,"E":1}'::jsonb,
  'C',
  'Pilihan terbaik adalah C karena mengajari warga membuat kata sandi sendiri dan menjelaskan cara menjaganya membantu warga memahami penggunaan akun secara mandiri sekaligus menjaga keamanan data pribadi, sehingga mendapat skor 5. D juga baik karena mendampingi warga hingga formulir selesai sambil memastikan akun tetap berada dalam kendalinya dapat membantu menyelesaikan kebutuhan saat itu dan mengurangi risiko penyalahgunaan akun, sehingga mendapat skor 4. A cukup tepat karena memberikan panduan dapat membantu warga mencoba mengakses sistem secara mandiri di kemudian hari, namun belum memastikan warga benar-benar memahami cara menjaga keamanan akun, sehingga mendapat skor 3. B kurang tepat karena menyimpan akun dan kata sandi meskipun atas izin pemilik tetap berisiko terhadap keamanan informasi pribadi dan dapat menimbulkan ketergantungan pada petugas, sehingga mendapat skor 2. E menjadi pilihan paling tidak tepat karena hanya mengarahkan warga kepada pihak lain tanpa membantu meningkatkan kemampuan warga dalam menggunakan layanan secara mandiri, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  96,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda mengelola kanal pengaduan online. Banyak warga mengadu karena sistem pembayaran retribusi gagal. Beberapa aduan isinya sama tetapi masuk dengan nomor tiket berbeda. Sikap Anda adalah…',
  NULL,
  '{"A":"Mengelompokkan aduan berdasarkan jenis masalah agar tim teknis lebih mudah menanganinya.","B":"Membalas semua aduan dengan pesan umum bahwa sistem sedang diperbaiki.","C":"Meminta warga menunggu informasi resmi melalui media sosial instansi.","D":"Membuat daftar keluhan yang paling banyak muncul untuk dilaporkan kepada pimpinan.","E":"Menyusun prioritas aduan berdasarkan dampaknya dan menggabungkan laporan yang sama."}'::jsonb,
  '{"A":4,"B":1,"C":2,"D":3,"E":5}'::jsonb,
  'E',
  'Pilihan terbaik adalah E karena menyusun prioritas berdasarkan dampak dan menggabungkan laporan yang memiliki masalah serupa membuat pengelolaan aduan lebih efisien, menghindari penanganan berulang, dan membantu tim fokus pada gangguan yang paling berdampak terhadap masyarakat, sehingga mendapat skor 5. A juga baik karena mengelompokkan aduan berdasarkan jenis masalah dapat memudahkan proses identifikasi dan koordinasi dengan tim teknis, namun belum mempertimbangkan tingkat urgensi atau dampak dari setiap masalah, sehingga mendapat skor 4. D cukup tepat karena membuat daftar keluhan yang paling banyak muncul dapat memberikan gambaran kepada pimpinan mengenai masalah yang sedang dihadapi masyarakat, tetapi belum membantu mengatur penanganan aduan secara langsung dan sistematis, sehingga mendapat skor 3. C kurang tepat karena hanya mengarahkan warga menunggu informasi resmi belum memberikan kepastian mengenai tindak lanjut aduan maupun membantu proses penanganan masalah yang sedang terjadi, sehingga mendapat skor 2. B menjadi pilihan paling tidak tepat karena memberikan jawaban umum kepada seluruh warga tidak membedakan kebutuhan setiap aduan dan tidak membantu proses identifikasi maupun penyelesaian gangguan pembayaran yang terjadi, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  97,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda membantu pelaksanaan ujian berbasis komputer di sekolah. Menjelang ujian, jaringan internet sering turun karena terlalu banyak perangkat tersambung. Kepala sekolah ingin ujian tetap berjalan sesuai jadwal. Sikap Anda adalah…',
  NULL,
  '{"A":"Menyiapkan rencana cadangan seperti pembagian sesi, pembatasan Wi-Fi, dan bantuan teknisi.","B":"Mengatur tempat duduk siswa agar pengawas lebih mudah membantu jika ada kendala.","C":"Meminta siswa datang lebih awal agar perangkat bisa dicek sebelum ujian dimulai.","D":"Mengecek jaringan lebih dulu dan menjelaskan risiko teknis kepada kepala sekolah.","E":"Menyiapkan formulir laporan kendala agar setiap masalah saat ujian bisa dicatat."}'::jsonb,
  '{"A":5,"B":3,"C":1,"D":4,"E":2}'::jsonb,
  'A',
  'Pilihan terbaik adalah A karena menyiapkan beberapa alternatif untuk mengantisipasi gangguan jaringan menunjukkan kemampuan memanfaatkan teknologi secara adaptif dan memastikan ujian tetap dapat berjalan meskipun terdapat kendala teknis, sehingga mendapat skor 5. D juga baik karena mengecek kondisi jaringan dan menyampaikan risiko kepada kepala sekolah membantu pihak sekolah memahami situasi sebelum ujian dimulai, namun belum memberikan langkah antisipasi yang konkret apabila gangguan benar-benar terjadi, sehingga mendapat skor 4. B cukup tepat karena pengaturan tempat duduk dapat memudahkan pengawasan ketika siswa mengalami kendala, tetapi tidak menyelesaikan persoalan utama berupa kapasitas jaringan yang terbatas, sehingga mendapat skor 3. E kurang tepat karena pencatatan kendala dapat membantu evaluasi setelah ujian berlangsung, tetapi belum memberikan solusi untuk menjaga kelancaran ujian ketika gangguan jaringan terjadi, sehingga mendapat skor 2. C menjadi pilihan paling tidak tepat karena meminta siswa datang lebih awal hanya membantu pemeriksaan perangkat secara terbatas dan tidak mengatasi masalah kapasitas jaringan yang muncul akibat banyaknya perangkat yang terhubung, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  98,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Anda tergabung dalam grup komunikasi internal instansi. Belakangan, beberapa rekan sering membagikan unggahan media sosial yang mengaitkan karakter atau etos kerja suatu daerah dengan pengalaman pribadi. Unggahan tersebut memang tidak menggunakan kata-kata kasar, tetapi mulai memunculkan komentar yang menggeneralisasi masyarakat dari daerah tersebut. Sikap Anda adalah...',
  NULL,
  '{"A":"Mengingatkan di grup bahwa setiap daerah memiliki keragaman karakter sehingga sebaiknya tidak menarik kesimpulan berdasarkan stereotip.","B":"Menghubungi rekan yang pertama kali membagikan unggahan tersebut dan mengajaknya lebih bijak dalam membagikan konten di grup kerja.","C":"Menyampaikan kepada admin grup agar lebih selektif terhadap konten yang dibagikan di grup internal.","D":"Tidak menanggapi unggahan tersebut karena setiap orang memiliki sudut pandang yang berbeda terhadap suatu daerah.","E":"Ikut menyampaikan pengalaman pribadi mengenai daerah tersebut agar diskusi menjadi lebih lengkap."}'::jsonb,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'A',
  'Pilihan terbaik adalah A karena mengingatkan seluruh anggota grup bahwa setiap daerah memiliki keragaman karakter dapat meluruskan generalisasi yang berkembang sekaligus membangun kesadaran bersama untuk menghargai keberagaman di lingkungan kerja, sehingga mendapat skor 5. B juga baik karena menghubungi rekan secara pribadi dan mengajaknya lebih bijak dalam membagikan konten dapat menjadi pendekatan persuasif untuk mencegah penyebaran stereotip, namun dampaknya lebih terbatas karena hanya menyasar rekan yang pertama membagikan unggahan, sehingga mendapat skor 4. C cukup tepat karena melibatkan admin grup dapat membantu menjaga kualitas komunikasi dalam ruang kerja, tetapi penyelesaian tersebut lebih bersifat administratif dan belum secara langsung memberikan pemahaman kepada anggota mengenai pentingnya menghindari stereotip, sehingga mendapat skor 3. D kurang tepat karena membiarkan komentar berkembang atas dasar perbedaan sudut pandang dapat membuat generalisasi terhadap suatu daerah terus berlangsung tanpa adanya upaya untuk meluruskannya, sehingga mendapat skor 2. E menjadi pilihan paling tidak tepat karena menambahkan pengalaman pribadi mengenai daerah tersebut berpotensi memperluas generalisasi dan memperkuat stereotip yang sedang berkembang dalam diskusi, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  99,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Anda menjadi anggota tim yang akan melaksanakan program pemberdayaan masyarakat di sebuah desa adat. Setelah mempelajari rencana kegiatan, Anda mengetahui bahwa jadwal dan konsep program belum mempertimbangkan aturan adat serta kebiasaan masyarakat setempat. Padahal, keberhasilan program sangat bergantung pada partisipasi warga. Sikap Anda adalah...',
  NULL,
  '{"A":"Mengusulkan agar tim berdiskusi dengan tokoh adat dan menyesuaikan pelaksanaan program dengan nilai budaya setempat tanpa mengurangi tujuan program.","B":"Menyampaikan kepada ketua tim bahwa terdapat aspek budaya yang perlu dipertimbangkan sebelum program dilaksanakan.","C":"Mengusulkan agar program tetap dilaksanakan sesuai rencana, kemudian dilakukan penyesuaian apabila muncul kendala di lapangan.","D":"Mengumpulkan informasi mengenai kebiasaan masyarakat setempat sebagai bahan masukan dalam rapat tim.","E":"Tetap melaksanakan program sesuai rencana karena seluruh konsep kegiatan telah disusun berdasarkan pedoman instansi."}'::jsonb,
  '{"A":5,"B":4,"C":2,"D":3,"E":1}'::jsonb,
  'A',
  'Pilihan terbaik adalah A karena melibatkan tokoh adat dan menyesuaikan pelaksanaan program dengan nilai budaya setempat menunjukkan sensitivitas budaya sekaligus mendorong partisipasi masyarakat tanpa mengabaikan tujuan program, sehingga peluang keberhasilan pelaksanaan kegiatan menjadi lebih besar dan mendapat skor 5. B juga baik karena menunjukkan kepedulian terhadap aspek budaya dengan menyampaikan masukan kepada ketua tim sebelum program dilaksanakan, namun belum disertai langkah konkret untuk melibatkan masyarakat dalam penyusunan penyesuaian program, sehingga mendapat skor 4. D cukup tepat karena mengumpulkan informasi mengenai budaya lokal dapat menjadi dasar dalam memberikan masukan kepada tim, tetapi langkah tersebut masih bersifat persiapan dan belum memastikan adanya penyesuaian program yang sesuai dengan kondisi masyarakat, sehingga mendapat skor 3. C kurang tepat karena memilih melaksanakan program terlebih dahulu berisiko menimbulkan penolakan atau rendahnya partisipasi masyarakat apabila sejak awal terdapat ketidaksesuaian dengan nilai budaya setempat, sehingga mendapat skor 2. E menjadi pilihan paling tidak tepat karena hanya berpegang pada pedoman instansi tanpa mempertimbangkan karakteristik budaya masyarakat dapat mengurangi efektivitas program dan bertentangan dengan prinsip pelayanan yang adaptif terhadap kondisi sosial budaya, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  100,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Di unit kerja Anda, sebagian besar pegawai telah memiliki kelompok pertemanan masing-masing sehingga pegawai baru jarang diajak berdiskusi maupun berinteraksi di luar pekerjaan. Akibatnya, pegawai baru tersebut tampak kurang percaya diri untuk menyampaikan pendapat saat bekerja bersama tim. Sikap Anda adalah...',
  NULL,
  '{"A":"Mengajak pegawai baru bergabung dalam diskusi tim agar lebih mengenal rekan-rekan kerja.","B":"Memberikan kesempatan kepada pegawai baru untuk beradaptasi sesuai kenyamanannya.","C":"Menciptakan suasana kerja yang melibatkan seluruh anggota tanpa membedakan kelompok pertemanan.","D":"Memperkenalkan pegawai baru kepada setiap anggota tim pada kesempatan yang ada.","E":"Menyarankan pegawai baru lebih aktif memulai percakapan dengan rekan kerja."}'::jsonb,
  '{"A":4,"B":2,"C":5,"D":3,"E":1}'::jsonb,
  'C',
  'Pilihan terbaik adalah C karena menciptakan suasana kerja yang melibatkan seluruh anggota tim tanpa membedakan kelompok pertemanan menunjukkan upaya membangun budaya kerja yang inklusif. Tindakan ini tidak hanya membantu pegawai baru beradaptasi, tetapi juga mendorong setiap anggota tim untuk saling berinteraksi dan bekerja sama tanpa adanya sekat antarkelompok. Dengan demikian, lingkungan kerja menjadi lebih terbuka, menghargai keberagaman, dan mendukung partisipasi setiap individu sehingga mendapat skor 5. A juga baik karena mengajak pegawai baru bergabung dalam diskusi tim merupakan bentuk kepedulian yang dapat membantunya mengenal rekan kerja dan meningkatkan rasa percaya diri. Namun, tindakan ini masih berfokus pada individu dan belum menyentuh penyebab utama, yaitu budaya kelompok yang cenderung eksklusif, sehingga mendapat skor 4. D cukup tepat karena memperkenalkan pegawai baru kepada setiap anggota tim dapat menjadi langkah awal untuk membangun hubungan kerja yang baik. Akan tetapi, perkenalan saja belum tentu mendorong interaksi yang berkelanjutan maupun menciptakan lingkungan kerja yang lebih inklusif, sehingga mendapat skor 3. B kurang tepat karena memberikan kesempatan kepada pegawai baru untuk beradaptasi sesuai kenyamanannya menunjukkan penghargaan terhadap proses penyesuaian diri. Namun, sikap ini cenderung pasif dan belum memberikan dukungan yang diperlukan agar pegawai baru lebih mudah diterima dalam lingkungan kerja, sehingga mendapat skor 2. E menjadi pilihan yang paling kurang tepat karena hanya menyarankan pegawai baru untuk lebih aktif memulai percakapan tanpa adanya upaya dari lingkungan kerja untuk menciptakan suasana yang lebih inklusif. Pendekatan ini membebankan proses adaptasi sepenuhnya kepada pegawai baru sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  101,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Sebagai seorang pimpinan, Anda mengetahui beberapa pegawai beranggapan bahwa pegawai yang berasal dari jurusan tertentu lebih memahami pekerjaan sehingga pendapat mereka lebih sering dijadikan acuan dalam rapat. Akibatnya, usulan dari pegawai dengan latar belakang pendidikan lain jarang dipertimbangkan meskipun memiliki pengalaman yang relevan. Sikap Anda adalah...',
  NULL,
  '{"A":"Memberikan kesempatan yang sama kepada setiap pegawai untuk menyampaikan pandangan dalam rapat sesuai pengalaman yang dimilikinya.","B":"Mengingatkan tim agar mempertimbangkan kompetensi dan pengalaman dalam menilai setiap usulan yang disampaikan.","C":"Meminta pegawai dengan latar belakang berbeda menyampaikan pengalaman yang relevan dengan pembahasan rapat.","D":"Mengarahkan pembahasan rapat pada pendapat pegawai yang memiliki latar belakang pendidikan paling sesuai.","E":"Membiarkan tim menentukan sendiri pendapat yang dianggap paling sesuai dengan kebutuhan pekerjaan."}'::jsonb,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'A',
  'Pilihan terbaik adalah A karena memberikan kesempatan yang sama kepada setiap pegawai untuk menyampaikan pandangan berdasarkan pengalaman yang dimiliki menunjukkan sikap inklusif dan objektif dalam menghargai keberagaman kompetensi, sehingga setiap anggota memiliki kesempatan untuk berkontribusi dalam pengambilan keputusan, sehingga mendapat skor 5. B juga baik karena mengingatkan tim agar mempertimbangkan kompetensi dan pengalaman dapat membantu mengurangi penilaian berdasarkan latar belakang pendidikan semata, namun masih bersifat pengarahan umum dan belum secara langsung memastikan setiap pegawai memperoleh kesempatan untuk menyampaikan pandangannya, sehingga mendapat skor 4. C cukup tepat karena meminta pegawai dengan latar belakang berbeda menjelaskan pengalaman yang relevan dapat membantu memperluas sudut pandang dalam rapat, tetapi pendekatan tersebut masih berfokus pada pegawai tertentu dan belum membangun kesempatan yang setara bagi seluruh anggota tim, sehingga mendapat skor 3. D kurang tepat karena menjadikan latar belakang pendidikan sebagai dasar utama dalam menentukan pendapat yang diprioritaskan dapat mempertahankan anggapan bahwa jurusan tertentu selalu lebih kompeten, padahal pengalaman kerja juga dapat menjadi sumber pengetahuan yang relevan, sehingga mendapat skor 2. E menjadi pilihan paling tidak tepat karena menyerahkan proses tersebut sepenuhnya kepada dinamika kelompok dapat membuat kecenderungan terhadap latar belakang pendidikan tertentu terus berlangsung dan menyebabkan kontribusi pegawai lain kembali terabaikan, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  102,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Di unit kerja Anda, informasi mengenai pelatihan, seminar, dan kesempatan mengikuti proyek sering kali lebih dahulu dibagikan melalui grup pertemanan tertentu sebelum diumumkan secara resmi. Akibatnya, beberapa pegawai sering terlambat mengetahui informasi tersebut sehingga kesempatan mereka untuk berpartisipasi menjadi berkurang. Sikap Anda adalah...',
  NULL,
  '{"A":"Mengingatkan rekan kerja agar informasi penting disampaikan melalui media resmi yang dapat diakses seluruh pegawai.","B":"Membagikan kembali informasi yang Anda terima kepada rekan kerja yang belum mengetahuinya.","C":"Menyampaikan kepada pimpinan bahwa penyebaran informasi sebaiknya dilakukan secara bersamaan kepada seluruh pegawai.","D":"Mengusulkan mekanisme penyebaran informasi melalui saluran resmi yang dapat diakses seluruh pegawai secara bersamaan.","E":"Memahami kebiasaan tersebut karena setiap pegawai dapat memperoleh informasi dari rekan yang lebih dahulu mengetahuinya."}'::jsonb,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'A',
  'Pilihan terbaik adalah A karena mengingatkan rekan kerja agar informasi penting disampaikan melalui media resmi yang dapat diakses seluruh pegawai menunjukkan kepedulian terhadap terciptanya akses informasi yang adil dan setara. Tindakan ini berupaya menghilangkan kebiasaan penyebaran informasi melalui lingkaran pertemanan tertentu sehingga setiap pegawai memiliki kesempatan yang sama untuk memperoleh informasi mengenai pelatihan, seminar, maupun proyek. Dengan demikian, sikap ini mencerminkan nilai keadilan sosial dan inklusivitas sehingga mendapat skor 5. B juga baik karena membagikan kembali informasi kepada rekan kerja yang belum mengetahuinya dapat membantu mengurangi kesenjangan informasi dalam jangka pendek. Namun, tindakan ini hanya menyelesaikan dampak dari permasalahan dan belum memperbaiki pola penyebaran informasi yang menjadi penyebab utama, sehingga mendapat skor 4. C cukup tepat karena menyampaikan kepada pimpinan bahwa penyebaran informasi sebaiknya dilakukan secara bersamaan menunjukkan kepedulian terhadap kesetaraan akses informasi. Namun, tindakan ini lebih bersifat melaporkan kondisi daripada mengambil langkah langsung untuk mendorong perubahan di lingkungan kerja, sehingga mendapat skor 3. D kurang tepat karena mengusulkan mekanisme penyebaran informasi melalui saluran resmi memang bertujuan menciptakan sistem yang lebih baik. Namun, usulan tersebut masih memerlukan proses pembahasan dan penerapan, sehingga belum memberikan solusi yang dapat segera mengatasi ketidakadilan akses informasi yang sedang terjadi, sehingga mendapat skor 2. E menjadi pilihan yang paling kurang tepat karena menganggap penyebaran informasi melalui lingkaran pertemanan sebagai hal yang wajar dapat mempertahankan ketimpangan akses informasi di lingkungan kerja. Sikap ini tidak mencerminkan penghargaan terhadap prinsip kesetaraan kesempatan bagi seluruh pegawai, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  103,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Anda mengikuti rapat penyusunan program kerja di unit Anda. Seorang pegawai kontrak mengusulkan ide yang dinilai mampu meningkatkan kualitas pelayanan berdasarkan pengalamannya menangani masyarakat secara langsung. Namun, sebagian peserta rapat kurang menanggapi usulan tersebut dan lebih memilih menunggu pendapat dari ASN tetap meskipun belum memberikan solusi. Sikap Anda adalah...',
  NULL,
  '{"A":"Meminta peserta rapat memberikan kesempatan kepada pegawai kontrak untuk menjelaskan usulannya secara lebih lengkap.","B":"Menyampaikan bahwa setiap pegawai berhak menyampaikan pendapat tanpa membedakan status kepegawaiannya.","C":"Mengajak peserta rapat mempertimbangkan seluruh usulan yang disampaikan sebelum mengambil keputusan.","D":"Memberikan dukungan terhadap usulan pegawai kontrak apabila ide tersebut dinilai bermanfaat bagi organisasi.","E":"Mendorong agar setiap usulan dievaluasi berdasarkan kualitas dan manfaatnya tanpa dipengaruhi oleh status kepegawaian penyampainya."}'::jsonb,
  '{"A":4,"B":2,"C":1,"D":3,"E":5}'::jsonb,
  'E',
  'Pilihan terbaik adalah E karena mendorong agar setiap usulan dievaluasi berdasarkan kualitas dan manfaatnya tanpa dipengaruhi oleh status kepegawaian penyampainya. Sikap ini mencerminkan penghargaan terhadap kesetaraan, objektivitas, dan keberagaman dalam lingkungan kerja. Dengan menilai gagasan berdasarkan substansinya, setiap pegawai memiliki kesempatan yang sama untuk berkontribusi sehingga tercipta budaya kerja yang inklusif dan bebas dari diskriminasi, sehingga mendapat skor 5. A juga baik karena meminta peserta rapat memberikan kesempatan kepada pegawai kontrak untuk menjelaskan usulannya secara lebih lengkap menunjukkan kepedulian agar setiap orang memperoleh ruang yang setara untuk menyampaikan pendapat. Namun, tindakan ini masih berfokus pada pemberian kesempatan berbicara dan belum menekankan bahwa penilaian terhadap usulan harus dilakukan secara objektif tanpa dipengaruhi status kepegawaian, sehingga mendapat skor 4. C cukup tepat karena mengajak peserta rapat mempertimbangkan seluruh usulan sebelum mengambil keputusan menunjukkan sikap terbuka terhadap berbagai pendapat. Akan tetapi, tindakan ini belum secara tegas mengatasi kecenderungan adanya bias terhadap status kepegawaian yang menjadi akar permasalahan, sehingga mendapat skor 3. B kurang tepat karena menyampaikan bahwa setiap pegawai berhak menyampaikan pendapat memang mencerminkan penghargaan terhadap kesetaraan. Namun, tindakan tersebut masih bersifat normatif dan belum mengarahkan agar proses pengambilan keputusan benar-benar didasarkan pada kualitas usulan yang disampaikan, sehingga mendapat skor 2. D menjadi pilihan yang paling kurang tepat karena memberikan dukungan kepada usulan pegawai kontrak hanya apabila dinilai bermanfaat belum mendorong perubahan cara pandang seluruh peserta rapat terhadap pentingnya menilai setiap usulan secara objektif. Sikap ini lebih menunjukkan dukungan terhadap individu daripada membangun budaya kerja yang adil dan inklusif, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  104,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Di kantor Anda, kegiatan makan bersama sering dilakukan secara spontan setelah jam kerja. Beberapa pegawai selalu ikut menentukan tempat dan menu, sementara pegawai lain jarang terlibat karena memiliki kebiasaan dan kebutuhan yang berbeda. Sikap Anda adalah...',
  NULL,
  '{"A":"Mengusulkan agar pilihan tempat dan menu dibicarakan bersama sebelum kegiatan makan dilakukan.","B":"Menanyakan kepada beberapa pegawai mengenai pilihan yang lebih sesuai untuk kegiatan berikutnya.","C":"Mengikuti keputusan mayoritas karena kegiatan tersebut merupakan aktivitas informal di luar pekerjaan.","D":"Membiarkan setiap pegawai menentukan sendiri keikutsertaannya dalam kegiatan makan bersama.","E":"Mengajak tim mempertimbangkan pilihan tempat dan menu yang dapat mengakomodasi kebutuhan seluruh anggota."}'::jsonb,
  '{"A":4,"B":3,"C":2,"D":1,"E":5}'::jsonb,
  'E',
  'Pilihan terbaik adalah E karena mengajak tim mempertimbangkan tempat dan menu yang dapat mengakomodasi kebutuhan seluruh anggota menunjukkan sikap inklusif dan kepedulian terhadap keberagaman kebiasaan dalam lingkungan kerja, sehingga setiap pegawai memiliki kesempatan yang lebih setara untuk terlibat dalam kegiatan bersama, sehingga mendapat skor 5. A juga baik karena membicarakan pilihan tempat dan menu bersama dapat meningkatkan keterlibatan pegawai dalam menentukan kegiatan, namun belum secara spesifik memastikan kebutuhan anggota dengan kebiasaan yang berbeda benar-benar menjadi pertimbangan dalam keputusan tersebut, sehingga mendapat skor 4. B cukup tepat karena menanyakan pilihan kepada beberapa pegawai dapat membantu memahami kebutuhan yang selama ini kurang diperhatikan, tetapi pendekatan tersebut belum melibatkan seluruh anggota dalam menentukan kegiatan bersama, sehingga mendapat skor 3. C kurang tepat karena mengikuti keputusan mayoritas berpotensi membuat kebutuhan pegawai yang jumlahnya lebih sedikit kembali terabaikan, meskipun kegiatan tersebut berlangsung di luar jam kerja, sehingga mendapat skor 2. D menjadi pilihan paling tidak tepat karena menyerahkan sepenuhnya kepada masing-masing pegawai tidak mendorong terciptanya kegiatan bersama yang lebih inklusif dan tidak menyelesaikan pola keterlibatan yang selama ini belum merata, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  105,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Menjelang pelaksanaan lomba kebersihan antar dusun, beredar sebuah video di media sosial yang memperlihatkan warga dari salah satu dusun diduga menghina dusun lain. Video tersebut dengan cepat memicu perdebatan sehingga sebagian warga mulai mengajak masyarakat untuk tidak mendukung keikutsertaan dusun tersebut dalam perlombaan. Sementara itu, kebenaran video tersebut belum dapat dipastikan. Sikap Anda adalah...',
  NULL,
  '{"A":"Mengimbau masyarakat agar tidak menyebarluaskan video tersebut sampai informasi yang beredar dapat dipastikan kebenarannya.","B":"Mengingatkan masyarakat agar tetap menjaga hubungan baik dengan seluruh warga meskipun beredar berbagai informasi di media sosial.","C":"Menyarankan panitia tetap melaksanakan perlombaan sesuai jadwal sambil menunggu situasi kembali kondusif.","D":"Menyampaikan kepada masyarakat bahwa video tersebut belum tentu benar sehingga tidak perlu langsung memihak salah satu dusun.","E":"Mengajak masyarakat menunggu hasil klarifikasi dari pihak yang berwenang sebelum menyimpulkan isi video tersebut."}'::jsonb,
  '{"A":4,"B":3,"C":1,"D":2,"E":5}'::jsonb,
  'E',
  'Pilihan terbaik adalah E karena mengajak masyarakat menunggu hasil klarifikasi dari pihak yang berwenang sebelum menyimpulkan isi video menunjukkan sikap kritis terhadap informasi yang belum terverifikasi. Tindakan ini mencegah masyarakat mengambil kesimpulan secara terburu-buru, mengurangi potensi penyebaran disinformasi, serta membantu menjaga persatuan di tengah situasi yang berpotensi memicu konflik, sehingga mendapat skor 5. A juga baik karena mengimbau masyarakat agar tidak menyebarluaskan video sebelum kebenarannya dipastikan dapat mengurangi penyebaran informasi yang belum terverifikasi. Namun, tindakan ini lebih berfokus pada penghentian penyebaran informasi dan belum secara tegas mengarahkan masyarakat untuk menunggu proses klarifikasi sebelum membentuk penilaian, sehingga mendapat skor 4. B cukup tepat karena mengingatkan masyarakat agar tetap menjaga hubungan baik dapat membantu menjaga keharmonisan di lingkungan sekitar. Akan tetapi, tindakan ini belum menyentuh akar permasalahan, yaitu perlunya memverifikasi kebenaran informasi sebelum bereaksi terhadap video yang beredar, sehingga mendapat skor 3. D kurang tepat karena menyampaikan bahwa video tersebut belum tentu benar memang dapat meredakan sebagian reaksi masyarakat. Namun, pernyataan tersebut masih bersifat dugaan dan belum mendorong masyarakat untuk memperoleh informasi yang telah diklarifikasi dari sumber yang berwenang, sehingga mendapat skor 2. C menjadi pilihan yang paling kurang tepat karena hanya menyarankan perlombaan tetap berjalan tanpa disertai upaya mengatasi penyebaran informasi yang belum jelas kebenarannya. Sikap ini berpotensi membuat akar permasalahan tetap berkembang dan memicu konflik yang lebih besar di masyarakat, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  106,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Beberapa bulan setelah pelaksanaan pemilu, rapat di unit kerja Anda masih diwarnai sindiran mengenai pilihan politik pada masa lalu. Suasana tersebut membuat sebagian pegawai enggan menyampaikan pendapat sehingga kerja sama tim mulai terganggu. Sikap Anda adalah...',
  NULL,
  '{"A":"Mengingatkan rekan kerja agar pembahasan rapat tetap berfokus pada penyelesaian pekerjaan.","B":"Menyampaikan bahwa perbedaan pilihan politik merupakan hak setiap individu yang perlu dihormati.","C":"Mengajak rekan kerja mengakhiri pembahasan mengenai pilihan politik dalam rapat.","D":"Mengusulkan agar setiap peserta rapat menyampaikan pendapat tanpa membawa isu di luar kepentingan pekerjaan.","E":"Memahami kondisi tersebut karena perbedaan pilihan politik memang memerlukan waktu untuk mereda."}'::jsonb,
  '{"A":4,"B":3,"C":2,"D":5,"E":1}'::jsonb,
  'D',
  'Pilihan terbaik adalah D karena mengusulkan agar setiap peserta rapat menyampaikan pendapat tanpa membawa isu di luar kepentingan pekerjaan. Tindakan ini menjaga profesionalisme, memperkuat netralitas ASN, serta mengarahkan seluruh peserta untuk kembali berfokus pada tujuan organisasi. Dengan demikian, perbedaan pilihan politik tidak memengaruhi kualitas kerja sama maupun proses pengambilan keputusan sehingga mendapat skor 5. A juga baik karena mengingatkan rekan kerja agar pembahasan rapat tetap berfokus pada penyelesaian pekerjaan dapat membantu mengembalikan suasana rapat menjadi lebih kondusif. Namun, tindakan ini lebih bersifat mengalihkan pembahasan dan belum secara tegas mendorong terciptanya budaya diskusi yang bebas dari pengaruh perbedaan pilihan politik, sehingga mendapat skor 4. B cukup tepat karena menyampaikan bahwa perbedaan pilihan politik merupakan hak setiap individu menunjukkan penghargaan terhadap keberagaman pandangan. Akan tetapi, tindakan ini belum mengarahkan peserta rapat untuk memisahkan urusan pribadi dari pelaksanaan tugas kedinasan, sehingga mendapat skor 3. C kurang tepat karena mengajak rekan kerja mengakhiri pembahasan mengenai pilihan politik memang dapat menghentikan perdebatan saat itu. Namun, tindakan tersebut belum menyentuh penyebab terganggunya kerja sama tim, yaitu perlunya menjaga profesionalisme selama menjalankan tugas, sehingga mendapat skor 2. E menjadi pilihan yang paling kurang tepat karena membiarkan kondisi tersebut berlangsung dapat menyebabkan suasana kerja tetap terpolarisasi dan mengganggu efektivitas kerja sama tim. Sikap ini tidak mencerminkan upaya menjaga persatuan maupun profesionalisme ASN, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  107,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda bertugas mengelola media sosial sebuah instansi pemerintah. Belakangan, unggahan instansi memperoleh peningkatan jangkauan karena dipenuhi komentar yang menyerang kelompok tertentu dan memicu perdebatan panjang. Sebagian anggota tim mengusulkan agar komentar tersebut dibiarkan karena dinilai dapat meningkatkan interaksi akun. Sikap Anda adalah...',
  NULL,
  '{"A":"Mengingatkan tim bahwa kolom komentar sebaiknya tetap digunakan untuk mendukung komunikasi yang santun.","B":"Menyarankan agar komentar yang melanggar etika ditangani sesuai pedoman moderasi media sosial instansi.","C":"Menyampaikan kepada tim bahwa peningkatan interaksi tidak selalu mencerminkan kualitas komunikasi dengan masyarakat.","D":"Membalas komentar yang bersifat provokatif dengan penjelasan agar tidak terjadi kesalahpahaman.","E":"Membiarkan komentar tersebut selama tidak mengandung unsur yang melanggar ketentuan peraturan perundang-undangan."}'::jsonb,
  '{"A":4,"B":5,"C":3,"D":2,"E":1}'::jsonb,
  'B',
  'Pilihan terbaik adalah B karena menyarankan agar komentar yang melanggar etika ditangani sesuai pedoman moderasi media sosial instansi menunjukkan sikap profesional dalam mengelola ruang digital. Tindakan ini tidak didasarkan pada kepentingan meningkatkan interaksi semata, tetapi mengutamakan komunikasi yang bertanggung jawab, mencegah berkembangnya provokasi, serta menjaga kepercayaan masyarakat terhadap instansi, sehingga mendapat skor 5. A juga baik karena mengingatkan tim bahwa kolom komentar sebaiknya digunakan untuk mendukung komunikasi yang santun dapat membangun kesadaran pentingnya etika digital. Namun, tindakan ini masih berupa pengingat dan belum mengarahkan penanganan komentar sesuai mekanisme yang berlaku, sehingga mendapat skor 4. C cukup tepat karena menyampaikan bahwa tingginya interaksi belum tentu mencerminkan kualitas komunikasi membantu tim memahami bahwa ukuran keberhasilan media sosial tidak hanya ditentukan oleh jumlah komentar. Akan tetapi, tindakan ini belum memberikan langkah yang jelas dalam menangani komentar yang berpotensi memecah belah, sehingga mendapat skor 3. D kurang tepat karena membalas komentar provokatif dengan penjelasan memang bertujuan meluruskan informasi. Namun, tindakan ini berpotensi memperpanjang perdebatan di ruang publik dan belum tentu efektif meredakan provokasi yang sedang berkembang, sehingga mendapat skor 2. E menjadi pilihan yang paling kurang tepat karena membiarkan komentar yang menyerang kelompok tertentu hanya demi meningkatkan interaksi mengabaikan tanggung jawab menjaga ruang digital yang aman dan kondusif. Sikap ini berpotensi memperkuat penyebaran ujaran kebencian dan memicu perpecahan di masyarakat, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  108,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Instansi Anda akan menyelenggarakan seminar kebangsaan untuk masyarakat. Salah satu calon narasumber memiliki kemampuan komunikasi yang sangat baik dan banyak diminati peserta. Namun, dari penelusuran tim, narasumber tersebut beberapa kali mengunggah konten di media sosial yang bernada provokatif terhadap kelompok tertentu. Sebagian anggota panitia tetap ingin mengundangnya karena diyakini dapat meningkatkan minat masyarakat terhadap acara tersebut. Sikap Anda adalah...',
  NULL,
  '{"A":"Mengusulkan agar pemilihan narasumber tetap mempertimbangkan rekam jejak yang sejalan dengan tujuan kegiatan.","B":"Menyarankan panitia mencari narasumber lain yang memiliki kompetensi serupa.","C":"Mengingatkan panitia agar tidak hanya mempertimbangkan jumlah pengikut narasumber.","D":"Mengusulkan agar panitia meminta klarifikasi kepada narasumber mengenai konten yang pernah diunggah.","E":"Menyetujui usulan tersebut karena tujuan utama kegiatan adalah menarik sebanyak mungkin peserta."}'::jsonb,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'A',
  'Pilihan A memperoleh skor 5 karena mengusulkan agar pemilihan narasumber mempertimbangkan rekam jejak yang sejalan dengan tujuan kegiatan menunjukkan sikap selektif dan preventif terhadap potensi penyebaran paham atau narasi yang dapat memicu konflik antarkelompok. Dalam kegiatan yang membawa tema kebangsaan, popularitas dan kemampuan komunikasi tidak cukup menjadi dasar pemilihan. Rekam jejak narasumber juga perlu dipertimbangkan agar pesan yang disampaikan tetap mendukung persatuan dan nilai kebangsaan. Pilihan B memperoleh skor 4 karena menyarankan mencari narasumber lain dengan kompetensi serupa merupakan langkah yang dapat mengurangi risiko munculnya konten provokatif dalam kegiatan. Namun, tindakan ini langsung mengarah pada penggantian narasumber tanpa terlebih dahulu mempertimbangkan informasi secara lebih menyeluruh. Pilihan C memperoleh skor 3 karena mengingatkan panitia agar tidak hanya mempertimbangkan jumlah pengikut menunjukkan bahwa pemilihan narasumber seharusnya tidak didasarkan pada popularitas semata. Namun, tindakan ini masih bersifat umum dan belum secara langsung membahas persoalan rekam jejak narasumber yang berpotensi bertentangan dengan tujuan kegiatan. Pilihan D memperoleh skor 2 karena meminta klarifikasi kepada narasumber dapat membantu panitia memperoleh informasi tambahan mengenai konteks konten yang pernah diunggah. Namun, klarifikasi saja belum menjamin bahwa narasumber memiliki rekam jejak yang sesuai dengan nilai dan tujuan seminar kebangsaan. Pilihan E memperoleh skor 1 karena menyetujui pemilihan narasumber hanya berdasarkan kemampuannya menarik peserta mengabaikan potensi dampak dari narasi provokatif yang pernah disampaikan. Dalam kegiatan yang membawa tema kebangsaan, peningkatan jumlah peserta tidak seharusnya mengorbankan tujuan menjaga persatuan dan mencegah penyebaran narasi yang dapat memicu permusuhan antarkelompok.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  109,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda menjadi anggota tim pengelola media sosial sebuah instansi pemerintah. Hasil evaluasi menunjukkan bahwa unggahan yang membandingkan karakteristik antarkelompok masyarakat memperoleh jangkauan dan interaksi yang jauh lebih tinggi dibandingkan konten edukatif lainnya. Sebagian anggota tim mengusulkan agar pola konten tersebut lebih sering digunakan untuk meningkatkan capaian kinerja media sosial instansi. Sikap Anda adalah...',
  NULL,
  '{"A":"Mengingatkan tim bahwa penyusunan konten perlu mempertimbangkan dampaknya terhadap keharmonisan masyarakat.","B":"Mengusulkan agar strategi konten tetap mengutamakan informasi yang edukatif dan tidak berpotensi menimbulkan polarisasi.","C":"Menyarankan tim mengevaluasi kembali indikator keberhasilan media sosial selain jumlah interaksi.","D":"Mengusulkan agar konten tersebut tetap digunakan dengan penyampaian yang lebih hati-hati.","E":"Mendukung usulan tersebut karena peningkatan jangkauan merupakan target utama pengelolaan media social."}'::jsonb,
  '{"A":4,"B":5,"C":3,"D":2,"E":1}'::jsonb,
  'B',
  'Pilihan terbaik adalah B karena mengusulkan agar strategi konten tetap mengutamakan informasi yang edukatif dan tidak berpotensi menimbulkan polarisasi menunjukkan tanggung jawab dalam menjaga ruang digital yang sehat. Meskipun target kinerja media sosial penting, instansi pemerintah tetap harus mengedepankan komunikasi yang memperkuat persatuan dan tidak mendorong munculnya perpecahan di masyarakat, sehingga mendapat skor 5. A juga baik karena mengingatkan tim agar mempertimbangkan dampak konten terhadap keharmonisan masyarakat menunjukkan kepedulian terhadap etika komunikasi publik. Namun, tindakan ini masih berupa pengingat dan belum memberikan arah yang jelas mengenai strategi konten yang sebaiknya diterapkan, sehingga mendapat skor 4. C cukup tepat karena mendorong evaluasi indikator keberhasilan media sosial agar tidak hanya berfokus pada jumlah interaksi. Akan tetapi, tindakan ini belum secara langsung menyelesaikan persoalan penggunaan konten yang berpotensi memecah belah masyarakat, sehingga mendapat skor 3. D kurang tepat karena tetap membuka peluang penggunaan konten yang membandingkan kelompok masyarakat. Meskipun penyampaiannya dibuat lebih hati-hati, risiko munculnya polarisasi tetap ada sehingga tindakan ini kurang mencerminkan upaya pencegahan secara optimal, sehingga mendapat skor 2. E menjadi pilihan yang paling kurang tepat karena mengutamakan capaian jangkauan tanpa mempertimbangkan dampak sosial dari konten yang dipublikasikan. Sikap ini berpotensi memperkuat polarisasi dan tidak sejalan dengan nilai persatuan serta etika komunikasi publik, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-36',
  110,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda menjadi fasilitator dalam forum konsultasi publik yang membahas rencana pembangunan di wilayah setempat. Di tengah diskusi, salah seorang peserta yang merupakan tokoh masyarakat menyampaikan pendapat dengan kalimat yang menggeneralisasi dan merendahkan kelompok masyarakat tertentu sebagai penyebab berbagai permasalahan di lingkungan tersebut. Beberapa peserta mulai memberikan tanggapan dengan nada yang semakin emosional sehingga suasana forum menjadi kurang kondusif. Sikap Anda adalah...',
  NULL,
  '{"A":"Mengingatkan peserta agar menyampaikan pendapat dengan bahasa yang menghormati seluruh kelompok masyarakat.","B":"Mengarahkan pembahasan kembali pada pokok permasalahan tanpa menanggapi pernyataan yang menyinggung kelompok tertentu.","C":"Menegaskan bahwa setiap pendapat perlu disampaikan tanpa mengandung pernyataan yang dapat memicu prasangka terhadap kelompok masyarakat lain.","D":"Memberikan kesempatan kepada peserta lain untuk menanggapi pernyataan tersebut agar diperoleh sudut pandang yang lebih beragam.","E":"Menghentikan penyampaian pendapat peserta tersebut agar suasana forum tidak semakin memanas."}'::jsonb,
  '{"A":4,"B":3,"C":5,"D":2,"E":1}'::jsonb,
  'C',
  'Pilihan terbaik adalah C karena menegaskan bahwa setiap pendapat perlu disampaikan tanpa mengandung pernyataan yang dapat memicu prasangka terhadap kelompok masyarakat lain. Tindakan ini tetap menghormati kebebasan berpendapat, tetapi memberikan batas yang jelas bahwa forum publik harus dijalankan dengan komunikasi yang menghargai keberagaman dan tidak mendorong munculnya ujaran kebencian. Dengan demikian, suasana diskusi tetap kondusif dan tujuan forum dapat tercapai, sehingga mendapat skor 5. A juga baik karena mengingatkan peserta agar menggunakan bahasa yang menghormati seluruh kelompok masyarakat menunjukkan upaya menjaga etika komunikasi. Namun, tindakan ini lebih berfokus pada cara penyampaian pendapat dan belum secara tegas mengarahkan agar isi pendapat tidak mengandung generalisasi yang dapat memicu prasangka, sehingga mendapat skor 4. B cukup tepat karena mengarahkan pembahasan kembali pada pokok permasalahan dapat membantu meredakan ketegangan dalam forum. Akan tetapi, tindakan ini belum menyelesaikan persoalan utama, yaitu adanya pernyataan yang berpotensi memicu kebencian terhadap kelompok tertentu, sehingga mendapat skor 3. D kurang tepat karena memberikan kesempatan kepada peserta lain untuk langsung menanggapi berpotensi memperpanjang perdebatan ketika suasana forum sudah memanas. Tanpa adanya penegasan terlebih dahulu mengenai batas komunikasi yang dapat diterima, konflik dapat semakin berkembang, sehingga mendapat skor 2. E menjadi pilihan yang paling kurang tepat karena langsung menghentikan penyampaian pendapat peserta berpotensi menimbulkan kesan bahwa fasilitator membatasi hak berbicara. Tindakan ini kurang proporsional karena masih terdapat cara lain yang lebih tepat untuk menjaga ketertiban forum sekaligus menghormati kebebasan berpendapat, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  1,
  'TWK',
  'Pancasila',
  'sedang',
  'Di Indonesia, banyak lulusan terampil yang bekerja tidak sesuai bidang karena ketidakmerataan peluang profesi kerja di daerah dan kota besar. Solusi dari permasalahan tersebut yang paling sesuai dengan nilai butir Pancasila yaitu …',
  NULL,
  '{"A":"Mendorong masyarakat daerah agar menyesuaikan diri dengan pekerjaan yang tersedia meskipun tidak sesuai keahlian.","B":"Memusatkan pelatihan kerja di kota besar agar lulusan daerah lebih mudah bersaing di pusat ekonomi.","C":"Memberikan bantuan sementara kepada lulusan yang belum mendapat pekerjaan sesuai bidangnya.","D":"Mengarahkan lulusan muda memilih bidang kerja yang paling cepat menghasilkan pendapatan.","E":"Membuka akses pelatihan dan lapangan kerja sesuai potensi daerah agar kesempatan profesi lebih merata."}'::jsonb,
  NULL,
  'E',
  'Nilai yang paling tepat adalah sila ke-5 Pancasila yaitu Keadilan Sosial bagi Seluruh Rakyat Indonesia. Salah satu butir pengamalannya adalah melakukan kegiatan dalam rangka mewujudkan kemajuan yang merata dan berkeadilan sosial. Dalam konteks soal, masalah utama bukan hanya banyak lulusan yang belum bekerja, tetapi adanya ketimpangan kesempatan profesi antara daerah dan kota besar. Ketika peluang kerja yang sesuai keahlian hanya terpusat di kota besar, maka sebagian masyarakat daerah tidak memiliki kesempatan yang sama untuk mengembangkan kemampuan dan memperoleh pekerjaan yang layak. Karena itu, opsi E paling tepat karena membuka akses pelatihan dan lapangan kerja sesuai potensi daerah dapat menjadi solusi yang adil. Langkah ini tidak hanya membantu lulusan bekerja sesuai bidangnya, tetapi juga mendorong pemerataan pembangunan dan mengurangi kesenjangan antardaerah. Opsi C cukup baik karena memberikan bantuan sementara kepada lulusan yang belum bekerja, tetapi sifatnya hanya membantu dalam jangka pendek dan belum menyelesaikan akar masalah. Opsi A kurang tepat karena hanya meminta masyarakat menyesuaikan diri dengan keadaan tanpa memperbaiki ketimpangan kesempatan. Opsi B tidak tepat karena memusatkan pelatihan di kota besar justru dapat memperkuat ketidakmerataan. Opsi D juga kurang tepat karena terlalu menekankan pendapatan cepat, bukan pemerataan kesempatan dan keadilan sosial.

Jawaban: E.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  2,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Berkembangnya K-Pop di Indonesia membuat sebagian anak muda lebih bangga mengikuti budaya luar dibandingkan mengenal budaya sendiri. Sikap yang paling sesuai untuk mempertahankan nilai Pancasila adalah …',
  NULL,
  '{"A":"Mengikuti budaya luar sebagai bentuk keterbukaan terhadap perkembangan zaman selama tidak menimbulkan konflik sosial.","B":"Membatasi pengaruh budaya luar agar generasi muda lebih fokus mempelajari budaya bangsa sendiri.","C":"Menjadikan budaya luar sebagai hiburan sekaligus tetap mengenal, mencintai, dan melestarikan budaya Indonesia.","D":"Mengutamakan budaya daerah sendiri karena budaya lokal lebih sesuai dengan kepribadian bangsa Indonesia.","E":"Memanfaatkan budaya luar sebagai pembanding agar masyarakat Indonesia dapat memilih budaya yang paling populer."}'::jsonb,
  NULL,
  'C',
  'Nilai yang paling tepat adalah sila ke-3 Pancasila yaitu Persatuan Indonesia. Salah satu butir pengamalannya adalah mengembangkan rasa cinta tanah air serta bangga sebagai bangsa Indonesia. Opsi C paling tepat karena menunjukkan sikap selektif terhadap budaya luar tanpa kehilangan jati diri bangsa. K-Pop boleh dinikmati sebagai hiburan global, tetapi generasi muda tetap perlu mengenal, mencintai, dan melestarikan budaya Indonesia sebagai identitas nasional. Opsi A tampak baik karena menunjukkan keterbukaan terhadap budaya luar, tetapi belum menekankan pentingnya menjaga budaya bangsa. Opsi B kurang tepat karena terlalu membatasi budaya luar dan tidak menunjukkan sikap terbuka terhadap perkembangan global. Opsi D baik karena mencintai budaya daerah, tetapi masih terlalu sempit karena nilai Pancasila menekankan kebanggaan terhadap budaya Indonesia secara luas. Opsi E kurang tepat karena menilai budaya dari sisi popularitas, bukan dari nilai kebangsaan dan identitas nasional.

Jawaban: C.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  3,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Dalam peringatan 17 Agustus di sebuah TK, anak-anak mengikuti lomba sederhana seperti menyanyikan lagu nasional dan mengenakan atribut merah putih menjadi sarana awal untuk menanamkan rasa bangga sebagai bangsa Indonesia. Nilai Pancasila yang paling tepat tercermin dari kegiatan tersebut adalah …',
  NULL,
  '{"A":"Membiasakan anak untuk bekerja sama dalam kegiatan sekolah agar tercipta suasana yang tertib dan menyenangkan.","B":"Menumbuhkan rasa cinta tanah air sejak dini melalui pengalaman sederhana yang dekat dengan kehidupan anak.","C":"Mengajarkan anak untuk mengikuti aturan perlombaan agar mampu bersikap disiplin dalam kegiatan bersama.","D":"Melatih anak mengenal keberagaman teman melalui kegiatan sekolah yang dilakukan secara bersama-sama.","E":"Membentuk keberanian anak untuk tampil di depan umum sebagai bagian dari pengembangan diri."}'::jsonb,
  NULL,
  'B',
  'Nilai yang paling tepat adalah sila ke-3 Pancasila yaitu Persatuan Indonesia. Salah satu butir pengamalannya adalah mengembangkan rasa cinta tanah air dan bangga sebagai bangsa Indonesia. Opsi B paling tepat karena kegiatan 17 Agustus di sekolah bukan hanya kegiatan seremonial, tetapi menjadi cara sederhana untuk menanamkan nasionalisme sejak dini. Anak-anak memang belum memahami sejarah kemerdekaan secara utuh, tetapi semangat mengikuti kegiatan merah putih, menyanyikan lagu nasional, dan merasakan kebersamaan dalam peringatan kemerdekaan dapat membangun rasa bangga terhadap Indonesia. Opsi A baik karena menunjukkan kerja sama, tetapi fokusnya lebih pada ketertiban kegiatan. Opsi C juga positif karena berkaitan dengan disiplin, namun bukan inti utama dari peringatan kemerdekaan. Opsi D baik karena mengenalkan kebersamaan, tetapi belum secara langsung menekankan cinta tanah air. Opsi E positif karena melatih keberanian anak, tetapi lebih mengarah pada pengembangan diri.

Jawaban: B',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  4,
  'TWK',
  'UUD 1945',
  'sedang',
  'Dalam pelaksanaan program bantuan sosial, DPR menemukan banyak laporan bahwa bantuan belum tepat sasaran. DPR kemudian memanggil menteri terkait, meminta data realisasi program, dan mendorong perbaikan pelaksanaan kebijakan. Berdasarkan Pasal 20A UUD NRI Tahun 1945, tindakan DPR tersebut menunjukkan …',
  NULL,
  '{"A":"Fungsi legislasi karena DPR ikut mendorong pembentukan aturan baru dalam program bantuan sosial.","B":"Fungsi anggaran karena DPR memastikan dana negara digunakan untuk kepentingan masyarakat.","C":"Fungsi pengawasan karena DPR menilai pelaksanaan kebijakan pemerintah agar sesuai tujuan.","D":"Fungsi perwakilan karena DPR menyampaikan keluhan masyarakat kepada pemerintah.","E":"Fungsi anggaran karena DPR mengatur langsung teknis penyaluran bantuan kepada masyarakat."}'::jsonb,
  NULL,
  'C',
  'Pasal 20A ayat (1) UUD NRI Tahun 1945 menegaskan bahwa DPR memiliki fungsi legislasi, fungsi anggaran, dan fungsi pengawasan. Dalam konteks soal, DPR tidak sedang membuat undang-undang dan tidak sedang membahas rancangan APBN, tetapi sedang menilai pelaksanaan program bantuan sosial yang dijalankan pemerintah. Opsi C paling tepat karena tindakan memanggil menteri, meminta data realisasi program, dan mendorong perbaikan kebijakan merupakan bentuk fungsi pengawasan DPR. Opsi A terlihat baik karena DPR memang memiliki fungsi legislasi, tetapi konteks soal bukan pembentukan undang-undang. Opsi B cukup menjebak karena program bantuan sosial berkaitan dengan dana negara, tetapi fokus tindakan DPR dalam soal adalah mengawasi pelaksanaannya. Opsi D juga positif karena DPR menyerap aspirasi masyarakat, tetapi fungsi utama yang tampak dalam kasus ini adalah pengawasan. Opsi E kurang tepat karena DPR tidak mengatur langsung teknis penyaluran bantuan, melainkan mengawasi pemerintah sebagai pelaksana kebijakan.

Jawaban: C.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  5,
  'TWK',
  'UUD 1945',
  'sedang',
  'Saat terjadi konflik di suatu negara, pemerintah Indonesia mengevakuasi WNI, membuka layanan pengaduan, dan memastikan mereka dapat kembali dengan aman. Kebijakan tersebut paling sesuai dengan tujuan negara dalam Pembukaan UUD 1945 alinea keempat yaitu …',
  NULL,
  '{"A":"Ikut melaksanakan ketertiban dunia melalui upaya menjaga perdamaian antarnegara.","B":"Melindungi segenap bangsa Indonesia melalui jaminan keselamatan warga negara.","C":"Memberikan informasi resmi secara cepat agar WNI dapat mengambil langkah aman.","D":"Memperkuat koordinasi antarnegara agar proses evakuasi WNI berjalan lancar.","E":"Menjaga hubungan luar negeri agar kepentingan Indonesia tetap dihormati negara lain."}'::jsonb,
  NULL,
  'B',
  'Pembukaan UUD 1945 alinea keempat memuat tujuan negara Indonesia yaitu melindungi segenap bangsa Indonesia dan seluruh tumpah darah Indonesia, memajukan kesejahteraan umum, mencerdaskan kehidupan bangsa, serta ikut melaksanakan ketertiban dunia. Dalam konteks soal, tindakan pemerintah mengevakuasi WNI, membuka layanan pengaduan, dan memastikan mereka dapat kembali dengan aman menunjukkan upaya negara dalam melindungi keselamatan warga negaranya. Opsi B paling tepat karena secara langsung mencerminkan tujuan negara untuk melindungi segenap bangsa Indonesia melalui jaminan keselamatan warga negara, termasuk WNI yang berada di luar negeri. Opsi A terlihat baik karena konflik di negara lain berkaitan dengan ketertiban dunia, tetapi fokus kebijakan dalam soal bukan menjaga perdamaian antarnegara melainkan melindungi WNI. Opsi C positif karena informasi resmi membantu WNI mengambil langkah aman, tetapi hanya menjadi bagian pendukung dari perlindungan negara. Opsi D juga baik karena koordinasi antarnegara diperlukan dalam proses evakuasi, tetapi bukan inti tujuan negara yang paling sesuai. Opsi E baik karena hubungan luar negeri penting bagi kepentingan Indonesia, tetapi belum langsung menunjukkan perlindungan keselamatan warga negara.

Jawaban: B.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  6,
  'TWK',
  'UUD 1945',
  'sedang',
  'Seorang hakim dilaporkan sering bertemu salah satu pihak yang sedang berperkara di luar persidangan. Masyarakat menilai tindakan tersebut dapat mengurangi kepercayaan terhadap peradilan. Berdasarkan kewenangan Komisi Yudisial, tindakan yang paling tepat adalah …',
  NULL,
  '{"A":"Mengkaji ulang putusan hakim agar hasil perkara tetap memenuhi rasa keadilan masyarakat.","B":"Menyerahkan laporan kepada Mahkamah Agung karena seluruh urusan hakim menjadi kewenangannya.","C":"Meminta pengadilan membuka kembali perkara agar dugaan keberpihakan dapat diperiksa ulang.","D":"Menindaklanjuti dugaan pelanggaran etik hakim tanpa mencampuri isi putusan perkara.","E":"Memberikan sanksi pidana kepada hakim jika terbukti merusak kepercayaan publik."}'::jsonb,
  NULL,
  'D',
  'Komisi Yudisial memiliki kewenangan menjaga dan menegakkan kehormatan, keluhuran martabat, serta perilaku hakim. Dalam konteks soal, masalah utamanya adalah perilaku hakim yang sering bertemu salah satu pihak berperkara di luar persidangan, sehingga dapat menimbulkan kesan tidak netral dan menurunkan kepercayaan masyarakat terhadap peradilan. Opsi D paling tepat karena Komisi Yudisial berwenang menindaklanjuti dugaan pelanggaran etik hakim, tetapi tetap tidak boleh mencampuri isi putusan perkara. Sikap ini penting karena KY berfokus pada perilaku dan etika hakim, bukan pada benar atau salahnya putusan yang dijatuhkan. Opsi A terlihat menjebak karena membahas rasa keadilan masyarakat, tetapi KY tidak berwenang mengkaji ulang atau mengubah putusan hakim. Opsi B kurang tepat karena Mahkamah Agung memang memiliki kewenangan dalam lingkungan peradilan, tetapi dugaan pelanggaran etik hakim tetap dapat menjadi perhatian Komisi Yudisial. Opsi C juga kurang tepat karena membuka kembali perkara bukan kewenangan KY dan hanya dapat dilakukan melalui mekanisme hukum tertentu. Opsi E tampak tegas, tetapi KY bukan lembaga yang menjatuhkan sanksi pidana karena perkara pidana menjadi ranah aparat penegak hukum.

Jawaban: D.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  7,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Pada masa pergerakan nasional, beberapa tokoh bangsa mengembangkan pendidikan sebagai sarana perjuangan bangsa yang harus merdeka dan mampu berdiri dengan kekuatan sendiri. Makna perjuangan melalui pendidikan saat itu adalah …',
  NULL,
  '{"A":"Pendidikan menjadi jalan untuk mencetak rakyat terpelajar yang mampu bersaing secara pribadi dalam sistem kolonial.","B":"Pendidikan diarahkan untuk memperbaiki kehidupan rakyat agar memperoleh kedudukan sosial yang lebih baik di masa penjajahan.","C":"Pendidikan menjadi sarana menyiapkan generasi muda agar mampu menyesuaikan diri dengan perubahan yang dibawa pemerintah kolonial.","D":"Pendidikan digunakan untuk membangun kesadaran nasional agar rakyat tidak hanya cerdas, tetapi juga sadar akan martabat bangsanya.","E":"Pendidikan dikembangkan untuk memperluas pengetahuan rakyat tanpa harus mengaitkannya dengan perjuangan politik bangsa"}'::jsonb,
  NULL,
  'D',
  'Makna yang paling tepat adalah Opsi D karena pendidikan pada masa pergerakan nasional tidak hanya bertujuan mencerdaskan rakyat secara akademik, tetapi juga membangkitkan kesadaran kebangsaan. Tokoh-tokoh pergerakan nasional memandang pendidikan sebagai jalan untuk membebaskan rakyat dari kebodohan, mental terjajah, dan ketergantungan kepada penjajah. Melalui pendidikan, rakyat diharapkan memahami martabatnya sebagai bangsa serta memiliki keberanian untuk memperjuangkan kemerdekaan. Opsi A tampak baik karena menekankan kemampuan bersaing, tetapi masih berorientasi pada keberhasilan pribadi dalam sistem kolonial. Opsi B juga positif karena menyebut perbaikan kehidupan rakyat, tetapi terlalu menekankan kedudukan sosial. Opsi C kurang tepat karena pendidikan bukan diarahkan untuk menyesuaikan diri dengan kolonialisme. Opsi E kurang tepat karena memisahkan pendidikan dari perjuangan bangsa, padahal pendidikan saat itu menjadi bagian penting dari gerakan nasional.

Jawaban: D.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  8,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Taman Siswa didirikan karena pendidikan pada masa itu belum memberi ruang luas bagi rakyat untuk tumbuh sebagai bangsa yang merdeka. Di kehidupan masa kini, semangat tersebut paling tepat diterapkan dengan cara …',
  NULL,
  '{"A":"Mengembangkan pendidikan yang membuat siswa unggul secara akademik, adaptif terhadap perubahan, dan mampu bersaing dalam dunia global.","B":"Mendorong sekolah membentuk siswa yang berprestasi, disiplin, serta mampu menjaga nama baik bangsa di berbagai kesempatan.","C":"Membiasakan siswa mengenal budaya nasional melalui kegiatan sekolah agar memiliki rasa bangga terhadap warisan bangsa.","D":"Memberikan akses pendidikan yang luas agar setiap siswa memiliki peluang yang sama untuk meningkatkan kualitas hidupnya.","E":"Menanamkan pendidikan yang membebaskan cara berpikir siswa, membentuk budi pekerti, dan menumbuhkan tanggung jawab kebangsaan."}'::jsonb,
  NULL,
  'E',
  'Semangat Ki Hadjar Dewantara melalui Taman Siswa tidak hanya bertujuan membuat siswa berkembang secara akademik, tetapi juga membentuk manusia yang merdeka dalam berpikir, berbudi pekerti, dan memiliki tanggung jawab terhadap bangsa. Pendidikan menurut semangat Taman Siswa harus membebaskan peserta didik dari cara berpikir yang pasif dan bergantung pada pihak lain. Karena itu, opsi E paling sesuai karena memadukan tiga hal penting, yaitu kemerdekaan berpikir, pembentukan karakter, dan kesadaran kebangsaan. Opsi A terlihat positif karena pendidikan memang perlu membuat siswa unggul secara akademik, adaptif, dan mampu bersaing di dunia global. Namun, pilihan ini belum mencerminkan inti perjuangan Ki Hadjar Dewantara karena terlalu menekankan daya saing dan kemampuan menghadapi perubahan. Opsi B juga baik karena prestasi, disiplin, dan menjaga nama baik bangsa merupakan hal penting dalam pendidikan. Namun, pilihan ini masih lebih menekankan hasil luar yang tampak seperti prestasi dan citra baik. Opsi C positif karena mengenalkan budaya nasional dapat menumbuhkan rasa bangga terhadap warisan bangsa. Akan tetapi, pilihan ini masih terlalu sempit karena hanya menekankan pengenalan budaya. Opsi D baik karena akses pendidikan yang luas dapat memberi kesempatan yang sama kepada setiap siswa untuk memperbaiki masa depan. Namun, pilihan ini lebih menekankan pemerataan kesempatan belajar. Sementara itu, inti soal menanyakan penerapan semangat Taman Siswa dalam membentuk manusia merdeka.

Jawaban: E.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  9,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  'Pada Kongres Pemuda II, para pemuda berdiskusi dan berbeda pandangan. Hal tersebut tidak membuat mereka terpecah namun diarahkan untuk menyatukan tujuan perjuangan Indonesia. Makna penting dari proses tersebut adalah …',
  NULL,
  '{"A":"Perbedaan pandangan perlu disatukan melalui kesepakatan bersama agar perjuangan pemuda memiliki arah yang sama.","B":"Setiap organisasi pemuda perlu diberi ruang menyampaikan gagasan agar identitas kelompok tetap terjaga.","C":"Diskusi pemuda menjadi sarana membangun wawasan kebangsaan tanpa menghilangkan ciri perjuangan masing-masing organisasi.","D":"Perbedaan pemikiran dapat menjadi kekuatan apabila dikelola untuk mengutamakan persatuan bangsa di atas kepentingan kelompok.","E":"Kesadaran nasional dapat tumbuh apabila pemuda memiliki semangat belajar dan terbuka terhadap berbagai gagasan perjuangan."}'::jsonb,
  NULL,
  'D',
  'Kongres Pemuda II menjadi salah satu peristiwa penting dalam sejarah pergerakan nasional karena menunjukkan kemampuan pemuda Indonesia dalam menyatukan berbagai perbedaan. Para pemuda yang hadir berasal dari organisasi, daerah, dan latar pemikiran yang beragam. Mereka membahas banyak hal seperti pendidikan, nasionalisme, demokrasi, dan peran kepanduan. Namun, perbedaan pandangan tersebut tidak dijadikan alasan untuk mempertahankan kepentingan kelompok masing-masing. Justru melalui diskusi, para pemuda mampu menyatukan arah perjuangan menuju cita-cita yang lebih besar, yaitu persatuan bangsa Indonesia. Hal ini mencerminkan bahwa persatuan tidak harus lahir dari kesamaan pendapat, tetapi dari kemampuan mengelola perbedaan demi kepentingan nasional. Opsi D paling tepat karena menunjukkan bahwa perbedaan pemikiran dapat menjadi kekuatan apabila dikelola untuk mengutamakan persatuan bangsa di atas kepentingan kelompok. Ini sesuai dengan semangat Sumpah Pemuda yang menegaskan satu tanah air, satu bangsa, dan satu bahasa persatuan. Opsi A terlihat baik karena menekankan kesepakatan bersama, tetapi maknanya masih sebatas menyamakan arah perjuangan dan belum menegaskan bahwa perbedaan dapat menjadi kekuatan. Opsi B positif karena memberi ruang kepada setiap organisasi untuk menyampaikan gagasan, tetapi masih terlalu menonjolkan identitas kelompok. Opsi C juga baik karena membahas wawasan kebangsaan, namun masih menekankan ciri perjuangan masing-masing organisasi sehingga belum sepenuhnya menunjukkan pengutamaan persatuan. Opsi E benar dalam hal keterbukaan terhadap gagasan, tetapi belum menyentuh inti utama Kongres Pemuda II yaitu menyatukan perbedaan untuk kepentingan bangsa.

Jawaban: D.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  10,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Pada sidang PPKI, salah satu keputusan penting adalah membentuk Komite Nasional untuk membantu jalannya pemerintahan setelah proklamasi. Makna utama pembentukan Komite Nasional tersebut adalah …',
  NULL,
  '{"A":"Melengkapi struktur awal negara agar pemerintahan Indonesia dapat berjalan lebih terarah.","B":"Menyatukan seluruh organisasi perjuangan agar tidak terjadi perbedaan arah setelah kemerdekaan.","C":"Menggantikan tugas Presiden sementara sampai lembaga negara terbentuk secara lengkap.","D":"Menyiapkan kekuatan rakyat untuk mempertahankan kemerdekaan dari ancaman Belanda.","E":"Membuktikan bahwa kemerdekaan Indonesia telah mendapat dukungan seluruh rakyat."}'::jsonb,
  NULL,
  'A',
  'Pembentukan Komite Nasional oleh PPKI menunjukkan bahwa setelah proklamasi, Indonesia tidak hanya menyatakan diri merdeka, tetapi juga mulai membangun kelengkapan awal negara. Komite Nasional dibentuk untuk membantu Presiden dalam menjalankan pemerintahan sebelum lembaga-lembaga negara terbentuk secara lengkap. Opsi A paling tepat karena menggambarkan makna utama pembentukan Komite Nasional, yaitu melengkapi struktur awal negara agar pemerintahan Indonesia yang baru berdiri dapat berjalan lebih terarah. Opsi B terlihat baik karena persatuan organisasi perjuangan penting, tetapi bukan inti pembentukan Komite Nasional. Opsi C kurang tepat karena Komite Nasional tidak menggantikan tugas Presiden, melainkan membantu jalannya pemerintahan. Opsi D baik dalam konteks mempertahankan kemerdekaan, tetapi pembentukan Komite Nasional bukan khusus untuk menyiapkan kekuatan rakyat. Opsi E juga positif karena dukungan rakyat penting, tetapi tidak langsung menjelaskan fungsi Komite Nasional dalam struktur awal negara.

Jawaban: A.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  11,
  'TWK',
  'Bela Negara',
  'sedang',
  'Di daerah perbatasan yang mulai berkembang menjadi kawasan industri, muncul usulan agar lowongan kerja hanya untuk warga asli daerah. Usulan tersebut dapat menumbuhkan sikap kedaerahan berlebihan. Sikap yang paling sesuai dengan Wawasan Nusantara untuk mengatasi hal tersebut adalah …',
  NULL,
  '{"A":"Membuka peluang bagi semua warga negara serta menyiapkan pelatihan agar warga setempat mampu bersaing.","B":"Memberi kesempatan kepada warga luar daerah setelah kebutuhan tenaga kerja lokal terpenuhi.","C":"Menjaga kekhasan daerah agar pembangunan tidak menghilangkan identitas masyarakat lokal.","D":"Memprioritaskan warga asli daerah agar manfaat pembangunan benar-benar dirasakan masyarakat setempat.","E":"Mengembangkan potensi daerah dengan membatasi pengaruh masyarakat dari luar wilayah."}'::jsonb,
  NULL,
  'A',
  'Wawasan Nusantara memandang Indonesia sebagai satu kesatuan wilayah, bangsa, ekonomi, sosial budaya, serta pertahanan dan keamanan. Dalam konteks soal, pembangunan di daerah perbatasan memang perlu memberi manfaat bagi masyarakat setempat, tetapi tidak boleh menutup kesempatan warga negara lain karena dapat menumbuhkan sikap kedaerahan berlebihan. Opsi A paling tepat karena membuka peluang bagi semua warga negara sekaligus tetap memperhatikan warga setempat melalui pelatihan agar mampu bersaing. Opsi B cukup menjebak karena masih memberi ruang bagi warga luar daerah, tetapi tetap menempatkan mereka sebagai pihak kedua setelah warga lokal. Opsi C baik karena menjaga identitas daerah, tetapi belum menjawab masalah kesempatan kerja. Opsi D terlihat baik karena berpihak pada warga asli daerah, tetapi dapat mengarah pada sikap eksklusif. Opsi E kurang tepat karena membatasi pengaruh masyarakat luar bertentangan dengan semangat persatuan dalam Wawasan Nusantara.

Jawaban: A.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  12,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Seorang pejabat membuat kebijakan berdasarkan pandangan pribadi dan kelompok tertentu, padahal kebijakan tersebut berdampak luas bagi masyarakat dan berpotensi menimbulkan perpecahan. Sikap yang paling mencerminkan nasionalisme adalah …',
  NULL,
  '{"A":"Mengutamakan kepentingan masyarakat luas dan negara di atas kepentingan pribadi maupun kelompok.","B":"Menunjukkan ketegasan dalam mengambil keputusan agar kebijakan dapat berjalan tanpa banyak hambatan.","C":"Menjaga dukungan kelompok yang sejalan agar kebijakan pemerintah tetap memiliki dasar pelaksanaan.","D":"Menyesuaikan kebijakan dengan aspirasi mayoritas agar keputusan lebih mudah diterima masyarakat.","E":"Menyampaikan kebijakan secara terbuka agar masyarakat memahami arah keputusan pemerintah."}'::jsonb,
  NULL,
  'A',
  'Nasionalisme menekankan sikap mengutamakan kepentingan bangsa dan negara di atas kepentingan pribadi maupun golongan. Dalam konteks soal, masalah utama terletak pada pejabat yang menggunakan kewenangannya berdasarkan pandangan pribadi dan kelompok tertentu saja. Sikap tersebut dapat melemahkan persatuan karena warga yang berbeda pandangan tidak ikut dipertimbangkan. Opsi A paling tepat karena menunjukkan bahwa pejabat publik harus berpikir untuk kepentingan masyarakat luas dan negara, bukan hanya untuk dirinya atau kelompok tertentu. Opsi B terlihat positif karena menekankan ketegasan, tetapi ketegasan tanpa mempertimbangkan kepentingan umum dapat menjadi pemaksaan kehendak.Opsi C baik karena menjaga dukungan dapat membantu pelaksanaan kebijakan, tetapi masih berorientasi pada kelompok tertentu. Opsi D tampak demokratis karena mempertimbangkan mayoritas, tetapi nasionalisme tidak boleh mengabaikan kepentingan seluruh warga. Opsi E positif karena keterbukaan penting, tetapi komunikasi yang baik tidak cukup jika isi kebijakan masih berpihak pada kepentingan sempit.

Jawaban: A.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  13,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  'Perhatikan pernyataan berikut!

1) Menggunakan kebebasan berpendapat dengan tetap menjaga etika dan tanggung jawab sosial

2) Menyampaikan kritik berbasis fakta tanpa menyerang identitas pribadi, suku, agama, atau golongan

3) Membalas komentar provokatif dengan bahasa yang tegas agar kelompok sendiri tidak dipandang lemah

4) Mengutamakan kebebasan berekspresi meskipun komentar yang disampaikan dapat menyinggung kelompok lain

5) Mengajak masyarakat melakukan klarifikasi dan dialog agar perbedaan pendapat tidak berkembang menjadi konflik

6) Mengikuti pendapat mayoritas di media sosial agar perdebatan cepat selesai dan tidak semakin melebar

Arus globalisasi membuat masyarakat semakin bebas menyampaikan komentar di media sosial dan sering disalahgunakan sehingga memicu konflik. Sikap yang sesuai dengan nilai nasionalisme ditunjukkan oleh pernyataan …',
  NULL,
  '{"A":"1, 2, dan 3","B":"1, 2, dan 5","C":"1, 4, dan 6","D":"2, 3, dan 5","E":"3, 4, dan 6"}'::jsonb,
  NULL,
  'B',
  'Nasionalisme tidak hanya dimaknai sebagai rasa cinta tanah air secara simbolik, tetapi juga kemampuan menjaga persatuan bangsa dalam kehidupan sehari-hari. Di era globalisasi, masyarakat memang memiliki ruang yang lebih luas untuk menyampaikan pendapat melalui media sosial. Namun, kebebasan tersebut tetap harus disertai etika, tanggung jawab, dan kesadaran bahwa setiap komentar dapat berdampak pada hubungan sosial. Komentar yang menghina, menyerang identitas SARA, atau menyebarkan ujaran kebencian dapat memicu konflik antarkelompok dan bertentangan dengan semangat nasionalisme karena melemahkan persatuan bangsa. Pernyataan 1 benar karena kebebasan berpendapat harus tetap dilakukan dengan etika dan tanggung jawab sosial. Sikap nasionalis tidak hanya ditunjukkan dengan berani berbicara, tetapi juga mampu menjaga agar pendapat yang disampaikan tidak merugikan orang lain dan tidak merusak ketertiban masyarakat. Pernyataan 2 benar karena kritik dalam negara demokratis tetap diperbolehkan, tetapi harus berbasis fakta dan tidak menyerang identitas pribadi, suku, agama, ras, atau golongan tertentu. Kritik yang disampaikan secara santun dan objektif dapat menjadi bentuk kepedulian terhadap bangsa. Pernyataan 5 benar karena klarifikasi dan dialog dapat mencegah kesalahpahaman agar perbedaan pendapat tidak berkembang menjadi konflik sosial. Sikap ini mencerminkan nasionalisme karena mengutamakan persatuan dan kepentingan bersama. Pernyataan 3 salah karena membalas komentar provokatif dengan alasan menjaga harga diri kelompok justru dapat memperbesar konflik. Sikap tersebut lebih menunjukkan fanatisme kelompok daripada nasionalisme. Pernyataan 4 salah karena kebebasan berekspresi tidak boleh digunakan tanpa batas sampai menyinggung atau merendahkan kelompok lain. Dalam kehidupan berbangsa, hak berpendapat harus tetap memperhatikan persatuan dan kepentingan umum. Pernyataan 6 salah karena mengikuti pendapat mayoritas di media sosial bukan jaminan bahwa pendapat tersebut benar atau sesuai dengan nilai kebangsaan. Sikap nasionalis menuntut kemampuan berpikir kritis, bukan sekadar mengikuti arus.

Jawaban: B.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  14,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Muncul kelompok yang ingin memisahkan diri dari Indonesia karena ketidakpuasan akan pemerintah. Dalam sudut pandang nasionalisme, kondisi tersebut harus disikapi dengan tetap menjaga keutuhan bangsa. Berikut merupakan sikap yang mencerminkan nasionalisme, kecuali …',
  NULL,
  '{"A":"Mengutamakan dialog antara pemerintah dan masyarakat daerah agar persoalan dapat diselesaikan tanpa mengancam persatuan.","B":"Mendorong pemerataan pembangunan agar masyarakat daerah merasa mendapat keadilan dalam kehidupan berbangsa.","C":"Menyampaikan aspirasi daerah melalui cara damai dan konstitusional tanpa merusak keutuhan NKRI.","D":"Memberi kebebasan kepada daerah apabila merasa kepentingannya belum diperhatikan.","E":"Menempatkan kepentingan bangsa di atas kepentingan kelompok dengan tetap memperhatikan kebutuhan daerah."}'::jsonb,
  NULL,
  'D',
  'Nasionalisme menekankan kesadaran untuk mencintai tanah air, menjaga persatuan, serta menempatkan kepentingan bangsa dan negara di atas kepentingan pribadi, kelompok, maupun daerah. Dalam konteks soal, munculnya kelompok yang ingin memisahkan diri dari Indonesia menunjukkan adanya ancaman terhadap keutuhan NKRI. Meskipun alasan yang digunakan adalah ketidakpuasan terhadap kinerja pemerintah, penyelesaiannya tetap harus dilakukan melalui cara yang menjaga persatuan bangsa, bukan dengan memisahkan diri dari negara. Opsi A mencerminkan nasionalisme karena dialog antara pemerintah dan masyarakat daerah dapat menjadi jalan untuk menyelesaikan persoalan secara damai. Melalui dialog, keluhan masyarakat dapat didengar tanpa harus mengancam keutuhan bangsa. Opsi B juga mencerminkan nasionalisme karena pemerataan pembangunan dapat mengurangi rasa ketidakadilan dan memperkuat rasa memiliki masyarakat daerah terhadap Indonesia. Opsi C tepat karena aspirasi daerah tetap boleh disampaikan, tetapi harus melalui cara yang damai, konstitusional, dan tidak merusak persatuan nasional. Opsi E juga sesuai dengan nasionalisme karena kepentingan daerah tetap diperhatikan, tetapi harus ditempatkan dalam bingkai kepentingan bangsa yang lebih luas. Opsi D adalah jawaban yang tepat untuk pertanyaan kecuali karena memberi kebebasan kepada daerah untuk memisahkan diri justru bertentangan dengan nasionalisme. Sikap tersebut dapat melemahkan persatuan, mengancam kedaulatan negara, dan tidak sejalan dengan semangat menjaga keutuhan NKRI. Dalam nasionalisme, ketidakpuasan daerah harus diselesaikan melalui dialog, keadilan pembangunan, dan kebijakan yang berpihak pada masyarakat, bukan melalui pemisahan diri.

Jawaban: D.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  15,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Para tokoh bangsa mampu menempatkan kesetiaan kepada negara di atas kepentingan pribadi, kelompok, maupun golongan. Dalam kehidupan masa kini, sikap nasionalisme yang mencerminkan keteladanan tersebut adalah …',
  NULL,
  '{"A":"Mengembangkan kemampuan diri agar dapat bersaing dan membawa nama baik bangsa di tingkat global.","B":"Menjaga persatuan dengan mengutamakan kepentingan bangsa ketika menghadapi perbedaan politik, sosial, dan kelompok.","C":"Mengikuti kegiatan kebangsaan secara aktif agar semakin memahami sejarah perjuangan para tokoh nasional.","D":"Menyampaikan pendapat secara terbuka dalam kehidupan demokrasi sebagai bentuk kepedulian terhadap negara.","E":"Menghargai jasa para pahlawan dengan mengikuti upacara dan memperingati hari besar nasional secara tertib."}'::jsonb,
  NULL,
  'B',
  'Nasionalisme tidak hanya mencintai Indonesia melalui simbol seperti bendera, lagu kebangsaan, atau upacara tetapi memiliki kesadaran untuk menempatkan kepentingan bangsa dan negara di atas kepentingan pribadi, kelompok, golongan, maupun kepentingan politik tertentu. Para tokoh bangsa pada masa perjuangan mampu menunjukkan sikap tersebut dengan mengesampingkan ego pribadi dan perbedaan latar belakang demi tujuan yang lebih besar yaitu kemerdekaan dan persatuan Indonesia. Opsi B menjadi jawaban yang paling tepat karena menggambarkan penerapan nasionalisme pada masa kini. Dalam kehidupan sekarang, tantangan bangsa tidak selalu berbentuk penjajahan fisik, tetapi bisa berupa perbedaan pilihan politik, konflik sosial, kepentingan kelompok, fanatisme golongan, dan perpecahan di masyarakat. Sikap menjaga persatuan serta mengutamakan kepentingan bangsa saat menghadapi perbedaan menunjukkan kesetiaan kepada negara sebagaimana dicontohkan para tokoh perjuangan. Opsi A baik karena mengembangkan kemampuan diri dan membawa nama baik bangsa merupakan sikap positif. Namun, pilihan ini lebih menekankan prestasi pribadi di tingkat global. Opsi C juga baik karena mengikuti kegiatan kebangsaan dapat menambah pemahaman sejarah, tetapi belum menunjukkan sikap mengutamakan kepentingan negara dalam situasi nyata. Opsi D positif karena menyampaikan pendapat secara terbuka adalah bagian dari demokrasi, tetapi belum cukup jika pendapat tersebut tidak diarahkan untuk menjaga kepentingan bangsa. Opsi E baik karena menghargai jasa pahlawan melalui upacara dan peringatan hari nasional, tetapi masih bersifat seremonial.

Jawaban: B.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  16,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Seorang mahasiswa Indonesia mengikuti kompetisi teknologi di luar negeri. Ia membuat aplikasi sederhana untuk membantu petani mendeteksi hama agar hasil panen tidak mudah gagal. Sikap yang paling mencerminkan cinta tanah air adalah …',
  NULL,
  '{"A":"Menampilkan kualitas inovasi anak bangsa agar citra Indonesia semakin kuat di forum internasional.","B":"Mengarahkan inovasi pada masalah pertanian agar teknologi yang dibuat tidak berhenti sebagai karya lomba.","C":"Membawa persoalan pertanian lokal ke ruang global agar tantangan masyarakat desa mendapat perhatian luas.","D":"Memanfaatkan kompetisi luar negeri untuk memperluas jejaring dan membuka peluang pengembangan inovasi.","E":"Menghubungkan kemampuan teknologi dengan kebutuhan masyarakat Indonesia agar karya yang dibuat memberi dampak nyata."}'::jsonb,
  NULL,
  'E',
  'Cinta tanah air tidak hanya ditunjukkan dengan rasa bangga saat membawa nama Indonesia di luar negeri, tetapi juga melalui tindakan nyata yang memberi manfaat bagi masyarakat Indonesia. Dalam konteks soal, mahasiswa tersebut tidak sekadar mengikuti kompetisi teknologi untuk prestasi pribadi, tetapi membuat aplikasi yang membantu petani mendeteksi hama agar hasil panen tidak mudah gagal. Pilihan E paling tepat karena menunjukkan bahwa kemampuan teknologi diarahkan untuk menjawab kebutuhan masyarakat Indonesia dan memberi dampak nyata bagi kehidupan petani. Sikap ini mencerminkan cinta tanah air karena ilmu dan prestasi digunakan untuk membantu bangsa sendiri. Pilihan B cukup menjebak karena sama-sama membahas masalah pertanian dan menunjukkan bahwa inovasi tidak berhenti sebagai karya lomba, tetapi belum secara kuat menekankan manfaat langsung bagi masyarakat Indonesia. Pilihan A terlihat baik karena membawa citra Indonesia di forum internasional, tetapi fokusnya lebih pada pengakuan dan kebanggaan di luar negeri. Pilihan C juga positif karena mengangkat persoalan lokal ke ruang global, tetapi masih berfokus pada perhatian terhadap isu, bukan kontribusi nyata. Pilihan D baik karena jejaring internasional dapat mendukung pengembangan inovasi, tetapi lebih mengarah pada peluang pengembangan diri. Oleh karena itu, jawaban paling tepat adalah pilihan E.

Jawaban: E.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  17,
  'TWK',
  'Integritas',
  'sedang',
  'Di wilayah pesisir dekat perbatasan, nelayan melihat kapal asing mencurigakan mengambil ikan di perairan Indonesia. Warga tidak bertindak sendiri, tetapi mencatat ciri kapal dan melaporkannya kepada petugas berwenang. Tindakan tersebut paling tepat menunjukkan …',
  NULL,
  '{"A":"Nasionalisme karena warga menunjukkan kebanggaan terhadap potensi laut Indonesia.","B":"Bela negara karena warga ikut menjaga kedaulatan wilayah sesuai peran dan prosedur.","C":"Integritas karena warga melaporkan kejadian sesuai fakta melalui jalur yang benar.","D":"Gotong royong karena warga bekerja sama menjaga keamanan lingkungan pesisir.","E":"Tanggung jawab sosial karena warga peduli terhadap kehidupan nelayan setempat."}'::jsonb,
  NULL,
  'B',
  'Bela negara tidak hanya dilakukan melalui perjuangan fisik atau kegiatan militer, tetapi juga melalui peran warga dalam menjaga kedaulatan, keamanan, dan kepentingan bangsa sesuai kemampuan masing-masing. Dalam konteks soal, kapal asing yang mengambil ikan di perairan Indonesia berkaitan dengan pelanggaran wilayah dan ancaman terhadap kedaulatan negara. Opsi B paling tepat karena warga ikut menjaga kedaulatan wilayah dengan cara yang benar, yaitu mencatat ciri kapal dan melaporkannya kepada petugas berwenang. Opsi C cukup menjebak karena melaporkan kejadian sesuai fakta memang mencerminkan integritas, tetapi konteks utama soal lebih kuat mengarah pada bela negara karena berkaitan dengan penjagaan wilayah Indonesia. Opsi A terlihat baik karena menunjukkan kebanggaan terhadap potensi laut Indonesia, tetapi belum menunjukkan tindakan menjaga negara secara langsung. Opsi D positif karena ada kerja sama warga, tetapi lebih mengarah pada gotong royong. Opsi E juga baik karena menunjukkan kepedulian terhadap nelayan, tetapi belum mencakup makna menjaga kedaulatan negara.

Jawaban: B.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  18,
  'TWK',
  'Bela Negara',
  'sedang',
  'Di sebuah grup warga, beredar tautan yang mengatasnamakan instansi pemerintah dan meminta NIK untuk pencairan bantuan. Tautan tersebut terlihat resmi, tetapi sumbernya belum jelas. Sikap yang paling mencerminkan bela negara adalah …',
  NULL,
  '{"A":"Mengimbau warga tidak mengisi data pribadi sambil menunggu penjelasan resmi dari instansi terkait.","B":"Mengkritik keamanan layanan digital pemerintah agar perlindungan data masyarakat segera diperbaiki.","C":"Membagikan peringatan singkat di grup warga agar masyarakat tidak mudah tertipu tautan palsu.","D":"Memeriksa kebenaran tautan melalui kanal resmi dan melaporkannya kepada pihak berwenang.","E":"Membantu warga yang sudah mengisi data untuk mengamankan akun dan meminta pendampingan resmi."}'::jsonb,
  NULL,
  'D',
  'Bela negara tidak hanya berkaitan dengan ancaman militer, tetapi juga dapat diwujudkan melalui sikap warga dalam menghadapi ancaman nonmiliter seperti kejahatan digital. Dalam konteks soal, tautan palsu yang meminta NIK warga dapat merugikan masyarakat, mencuri data pribadi, dan mengganggu kepercayaan terhadap layanan pemerintah. Opsi D paling tepat karena memeriksa kebenaran tautan melalui kanal resmi menunjukkan sikap hati-hati, sedangkan melaporkannya kepada pihak berwenang menunjukkan tindakan aktif untuk mencegah korban yang lebih luas. Sikap ini mencerminkan bela negara karena warga ikut menjaga keamanan masyarakat dan ketertiban ruang digital. Opsi A cukup menjebak karena mengimbau warga untuk tidak mengisi data pribadi memang baik, tetapi masih sebatas pencegahan awal dan belum ada tindakan pelaporan. Opsi C juga terlihat positif karena memberi peringatan kepada warga, tetapi jika tidak disertai verifikasi dan pelaporan resmi, peringatan tersebut bisa menimbulkan kepanikan atau memperluas penyebaran tautan. Opsi B baik karena kritik terhadap keamanan digital penting, tetapi kritik saja belum langsung menangani ancaman yang sedang terjadi. Opsi E juga menjebak karena membantu korban sangat penting, tetapi sifatnya lebih pada penanganan setelah kejadian, sedangkan sikap bela negara paling tepat adalah mencegah dampak lebih luas melalui verifikasi dan pelaporan resmi.

Jawaban: D.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  19,
  'TWK',
  'Bela Negara',
  'sedang',
  'Perhatikan pernyataan berikut!

1) Menolak tawaran menjadi afiliator judi online meskipun dijanjikan imbalan besar.

2) Mengikuti kegiatan hiburan daring yang legal untuk mengisi waktu luang secara positif.

3) Melaporkan akun atau iklan judi online ke kanal resmi agar penyebarannya dapat dihentikan.

4) Mencatat ciri-ciri promosi judi online agar diri sendiri lebih waspada saat menggunakan internet.

5) Mengedukasi keluarga dan teman tentang dampak judi online terhadap ekonomi dan masa depan.

6) Mengajak teman melakukan kegiatan produktif agar tidak terlalu sering bermain gawai.

Maraknya judi online dapat merusak ekonomi keluarga, menurunkan produktivitas, dan melemahkan ketahanan sosial masyarakat. Sikap bela negara untuk mencegah dampak tersebut ditunjukkan oleh pernyataan …',
  NULL,
  '{"A":"1, 4, dan 5","B":"3, 4, dan 6","C":"4, 5, dan 6","D":"1, 2, dan 5","E":"1, 3, dan 5"}'::jsonb,
  NULL,
  'E',
  'Bela negara pada masa kini dapat diwujudkan dengan mencegah ancaman nonmiliter yang merusak ketahanan masyarakat, salah satunya judi online. Pernyataan 1 benar karena menolak menjadi afiliator judi online menunjukkan sikap tidak ikut menyebarkan aktivitas yang merugikan masyarakat. Pernyataan 3 benar karena melaporkan akun atau iklan judi online ke kanal resmi merupakan tindakan aktif untuk membantu menghentikan penyebarannya. Pernyataan 5 benar karena edukasi kepada keluarga dan teman dapat mencegah dampak judi online sejak awal. Pernyataan 2 positif karena memilih hiburan daring yang legal, tetapi belum secara langsung mencegah penyebaran judi online. Pernyataan 4 juga baik karena meningkatkan kewaspadaan pribadi, tetapi masih terbatas untuk diri sendiri dan belum ada tindakan pelaporan atau edukasi kepada orang lain. Pernyataan 6 positif karena mengajak teman melakukan kegiatan produktif, tetapi masih terlalu umum dan tidak langsung menyasar bahaya judi online. Jadi, sikap bela negara yang tepat ditunjukkan oleh pernyataan 1, 3, dan 5.

Jawaban: E.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  20,
  'TWK',
  'Bhinneka Tunggal Ika',
  'sedang',
  'Sekolah negeri memiliki siswa yang beragam, saat kegiatan bersama ada siswa yang merasa kurang nyaman karena kegiatan tersebut terlalu menonjolkan satu agama. Sikap yang sesuai dengan nilai kebhinekaan adalah …',
  NULL,
  '{"A":"Mengusulkan kegiatan bersama yang bersifat umum agar semua teman dapat ikut tanpa merasa keyakinannya diabaikan.","B":"Tetap melanjutkan kegiatan karena tujuannya baik dan teman yang berbeda agama dapat menyesuaikan diri.","C":"Mengajak teman yang kurang nyaman untuk memahami bahwa kegiatan tersebut hanya bagian dari kebiasaan kelas.","D":"Memisahkan kegiatan berdasarkan agama agar setiap siswa tetap dapat menjalankan kegiatan sesuai keyakinannya.","E":"Mengganti kegiatan secara langsung agar tidak muncul perbedaan pendapat di antara siswa."}'::jsonb,
  NULL,
  'A',
  'Nilai kebhinekaan dalam masyarakat dapat diterapkan dengan menghargai perbedaan agama, suku, budaya, dan kebiasaan tanpa memaksakan kehendak kelompok tertentu kepada kelompok lain. Opsi A paling tepat karena mencerminkan nilai kebhinekaan yaitu menghargai perbedaan agama tanpa menghilangkan kebersamaan. Dalam lingkungan apalagi sekolah, kegiatan bersama sebaiknya dibuat netral dan dapat diikuti semua siswa dengan nyaman. Sikap ini menunjukkan bahwa perbedaan keyakinan harus dihormati dan tidak boleh ada siswa yang merasa terpaksa mengikuti kegiatan yang tidak sesuai dengan agamanya. Opsi B kurang tepat karena meskipun tujuannya terlihat baik, tetap memaksa teman yang berbeda agama untuk menyesuaikan diri dengan kegiatan yang kurang nyaman baginya. Opsi C juga kurang tepat karena hanya meminta teman memahami keadaan, tetapi belum menyelesaikan masalah secara adil. Opsi D kurang tepat karena memisahkan kegiatan berdasarkan agama dapat mengurangi rasa persatuan di kelas. Opsi E kurang tepat karena mengganti kegiatan secara langsung tanpa musyawarah tidak melatih siswa untuk berdiskusi dan mencari jalan tengah. Oleh karena itu, sikap paling sesuai dengan nilai kebhinekaan adalah mengusulkan kegiatan yang bersifat umum agar semua siswa tetap dapat ikut bersama tanpa merasa keyakinannya diabaikan.

Jawaban: A.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  21,
  'TWK',
  'Bhinneka Tunggal Ika',
  'sedang',
  'Perhatikan pernyataan berikut!

1) Menghargai pendapat orang lain meskipun berbeda dengan pandangan pribadi

2) Menjadikan budaya lokal sebagai alasan untuk menolak budaya dari daerah lain

3) Menjaga ucapan saat berinteraksi agar tidak menyinggung identitas kelompok lain

4) Mengutamakan kebiasaan kelompok sendiri karena dianggap paling sesuai dengan nilai masyarakat

5) Menempatkan diri pada keadaan orang lain sebelum menilai sikap atau pilihannya

6) Membatasi pergaulan hanya dengan orang yang memiliki budaya dan keyakinan yang sama

Bentuk penerapan Tradisi Tepo Seliro (kearifan lokal Yogyakarta) yang sesuai dengan nilai kebhinekaan ditunjukkan oleh pernyataan …',
  NULL,
  '{"A":"1, 2, dan 4","B":"2, 4, dan 6","C":"3, 4, dan 5","D":"1, 5, dan 6","E":"1, 3, dan 5"}'::jsonb,
  NULL,
  'E',
  'Tepo seliro merupakan kearifan lokal yang mengajarkan seseorang untuk mampu menempatkan diri pada posisi orang lain sebelum berbicara atau bertindak. Nilai ini sejalan dengan kebhinekaan karena masyarakat Indonesia terdiri atas berbagai suku, agama, budaya, kebiasaan, dan pandangan yang berbeda. Pernyataan 1 benar karena menghargai pendapat orang lain meskipun berbeda menunjukkan sikap terbuka dan tidak memaksakan pandangan pribadi. Sikap ini penting dalam kebhinekaan karena perbedaan pendapat harus dikelola dengan saling menghormati. Pernyataan 3 benar karena menjaga ucapan saat berinteraksi dapat mencegah orang lain merasa tersinggung karena identitas suku, agama, budaya, atau kelompoknya. Hal ini mencerminkan tepo seliro karena seseorang mempertimbangkan perasaan orang lain sebelum berbicara. Pernyataan 5 benar karena menempatkan diri pada keadaan orang lain sebelum menilai sikap atau pilihannya merupakan inti dari tepo seliro. Sikap ini membuat seseorang tidak mudah menghakimi perbedaan dan lebih mampu membangun hubungan yang rukun. Pernyataan 2 salah karena budaya lokal tidak boleh dijadikan alasan untuk menolak budaya daerah lain. Pernyataan 4 salah karena mengutamakan kebiasaan kelompok sendiri dapat menumbuhkan sikap merasa paling benar. Pernyataan 6 salah karena membatasi pergaulan hanya dengan orang yang sama budaya dan keyakinannya bertentangan dengan semangat kebhinekaan. Jadi, bentuk penerapan tepo seliro yang sesuai dengan nilai kebhinekaan ditunjukkan oleh pernyataan 1, 3, dan 5.

Jawaban: E.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  22,
  'TWK',
  'Integritas',
  'sedang',
  'Tan Malaka dikenal sebagai tokoh yang konsisten memperjuangkan gagasan kemerdekaan penuh meskipun menghadapi tekanan, pengasingan, dan risiko pribadi. Jika nilai integritas tersebut diterapkan pada masa kini, sikap yang paling sesuai adalah …',
  NULL,
  '{"A":"Mengadakan diskusi sejarah perjuangan bangsa agar generasi muda memahami tokoh-tokoh kemerdekaan.","B":"Menulis kritik terhadap kebijakan publik dengan data yang jelas meskipun berbeda dari pendapat umum.","C":"Mengikuti kegiatan sosial untuk membantu masyarakat kecil yang terdampak persoalan ekonomi.","D":"Menolak mengubah data laporan kegiatan organisasi meskipun diminta senior agar hasilnya terlihat berhasil.","E":"Mengikuti kampanye antikorupsi di sekolah untuk mendukung gerakan kejujuran di lingkungan belajar."}'::jsonb,
  NULL,
  'D',
  'Integritas mencerminkan sikap jujur, teguh, dan bertanggung jawab dalam memegang prinsip yang benar meskipun menghadapi tekanan. Sikap Tan Malaka yang tetap konsisten memperjuangkan gagasannya meskipun mengalami risiko pribadi menunjukkan bahwa seseorang tidak boleh mengorbankan kebenaran hanya demi keamanan, penerimaan, atau kepentingan tertentu. Opsi D paling tepat karena menolak mengubah data laporan meskipun mendapat tekanan dari senior menunjukkan keteguhan menjaga kejujuran dan tanggung jawab. Sikap ini paling sesuai dengan nilai integritas karena tetap berpegang pada kebenaran meskipun ada tekanan dari pihak lain. Opsi B cukup menjebak karena berani menyampaikan kritik berbasis data memang baik, tetapi lebih menonjolkan keberanian berpendapat. Opsi A baik karena meningkatkan pemahaman sejarah, tetapi belum menunjukkan keteguhan prinsip dalam tekanan. Opsi C positif karena menunjukkan kepedulian sosial, tetapi tidak langsung berkaitan dengan integritas. Opsi E juga baik karena mendukung kejujuran, tetapi masih sebatas mengikuti kampanye dan belum menunjukkan ujian integritas secara langsung.

Jawaban: D.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  23,
  'TWK',
  'Integritas',
  'sedang',
  'Mohammad Hatta dikenal sebagai tokoh yang hidup sederhana dan tidak memanfaatkan kedudukannya untuk kepentingan pribadi. Keteladanan integritas dari sikap tersebut dalam kehidupan organisasi masa kini ditunjukkan oleh pernyataan berikut, kecuali …',
  NULL,
  '{"A":"Menolak memakai kendaraan organisasi untuk urusan pribadi meskipun memiliki akses sebagai pengurus.","B":"Mengembalikan sisa anggaran kegiatan kepada bendahara dengan bukti penggunaan yang jelas.","C":"Menyusun dokumentasi penggunaan fasilitas untuk membangun citra profesional organisasi.","D":"Menyampaikan penggunaan fasilitas organisasi secara terbuka meskipun tidak ada pemeriksaan.","E":"Menggunakan fasilitas organisasi hanya untuk kepentingan kegiatan bersama sesuai amanah."}'::jsonb,
  NULL,
  'C',
  'Integritas mencerminkan sikap jujur sederhana bertanggung jawab serta konsisten menggunakan amanah sesuai kepentingan organisasi dan bukan untuk keuntungan pribadi. Keteladanan Mohammad Hatta menunjukkan bahwa kedudukan dan fasilitas yang dimiliki tidak seharusnya dimanfaatkan untuk kepentingan diri sendiri. Opsi C merupakan jawaban yang tepat untuk pertanyaan kecuali karena menyusun dokumentasi penggunaan fasilitas dengan tujuan membangun citra profesional lebih menekankan penampilan dan reputasi organisasi daripada sikap integritas dalam menjaga amanah. Opsi A mencerminkan integritas karena pengurus menahan diri untuk tidak menggunakan fasilitas organisasi bagi kepentingan pribadi meskipun memiliki akses. Opsi B tepat karena mengembalikan sisa anggaran disertai bukti penggunaan menunjukkan kejujuran dan pertanggungjawaban terhadap keuangan organisasi. Opsi D juga mencerminkan integritas karena penggunaan fasilitas disampaikan secara terbuka meskipun tidak sedang diperiksa sehingga keterbukaan dilakukan atas kesadaran pribadi. Opsi E paling jelas menunjukkan amanah karena fasilitas organisasi digunakan sesuai tujuan bersama dan tidak dialihkan untuk kepentingan pribadi. Dengan demikian opsi C kurang langsung mencerminkan keteladanan integritas Mohammad Hatta karena orientasinya lebih pada citra profesional organisasi.

Jawaban: C.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  24,
  'TWK',
  'Integritas',
  'sedang',
  'Seorang admin pelatihan diminta mengunggah sertifikat peserta. Ia menemukan beberapa nama tetap diminta masuk daftar penerima sertifikat meskipun tidak mengikuti kegiatan sampai selesai, dengan alasan agar peserta tidak kecewa dan citra panitia tetap baik. Sikap yang paling menunjukkan integritas adalah …',
  NULL,
  '{"A":"Mencantumkan semua nama peserta sambil memberi catatan internal untuk evaluasi kegiatan berikutnya.","B":"Menunda pengunggahan sertifikat sampai panitia menyepakati daftar peserta yang akan diterbitkan.","C":"Menerbitkan sertifikat sesuai data kehadiran dan menjelaskan aturan kepada panitia secara terbuka.","D":"Menghubungi peserta yang belum memenuhi syarat agar memahami alasan sertifikat belum dapat diterbitkan.","E":"Menyusun laporan kegiatan secara rapi agar kepercayaan peserta terhadap panitia tetap terjaga."}'::jsonb,
  NULL,
  'C',
  'Integritas mencerminkan kejujuran, tanggung jawab, dan keberanian menjaga kebenaran meskipun ada tekanan untuk menjaga citra atau menyenangkan pihak tertentu. Dalam konteks soal, admin pelatihan menemukan adanya peserta yang tidak mengikuti kegiatan sampai selesai, tetapi tetap diminta masuk daftar penerima sertifikat. Opsi C paling tepat karena menerbitkan sertifikat sesuai data kehadiran dan menjelaskan aturan kepada panitia secara terbuka menunjukkan sikap jujur serta bertanggung jawab terhadap ketentuan yang berlaku. Sikap ini mencerminkan integritas karena admin tidak mengubah fakta demi menjaga citra panitia atau menghindari kekecewaan peserta. Opsi A kurang tepat karena tetap mencantumkan semua nama berarti membiarkan peserta yang tidak memenuhi syarat menerima sertifikat. Opsi B terlihat baik karena menunda pengunggahan tampak hati-hati, tetapi belum memastikan keputusan akhir berdasarkan data yang benar. Opsi D baik karena memberi penjelasan kepada peserta yang belum memenuhi syarat, tetapi lebih bersifat tindak lanjut setelah keputusan benar dibuat. Opsi E juga positif karena laporan rapi dapat menjaga kepercayaan, tetapi kerapian laporan tidak cukup jika keputusan sertifikat tidak sesuai fakta.

Jawaban: C.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  25,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  '(1) Pengintegrasian teks multimodal dalam pembelajaran di perguruan tinggi kini menjadi urgensi untuk menjembatani kesenjangan antara literasi akademik dan realitas komunikasi digital. (2) Mahasiswa tidak lagi cukup hanya dibekali kemampuan menganalisis teks tulis konvensional, tetapi juga dituntut untuk mendekonstruksi makna dari perpaduan visual, audio, dan tipografi secara simultan. (3) Berbagai penelitian menunjukkan bahwa aktivitas pembedahan artefak digital, seperti infografik dan kampanye video, mampu merangsang daya kritis mahasiswa secara lebih komprehensif. (4) Di luar ruang kelas, keterampilan ini terbukti mempercepat proses adaptasi lulusan saat menghadapi kompleksitas produksi informasi di dunia profesional. (5) Namun, implementasi pendekatan ini sering kali terhambat oleh ketidaksiapan perangkat pedagogis serta minimnya variasi instrumen evaluasi yang digunakan oleh dosen. (6) Pembaruan kurikulum yang mengakomodasi sintesis berbagai moda komunikasi mutlak diperlukan agar institusi pendidikan mampu mencetak generasi yang relevan dengan tuntutan zaman.

Gagasan utama paragraf tersebut adalah...',
  NULL,
  '{"A":"Pembaruan kurikulum pendidikan tinggi guna mengakomodasi sintesis berbagai moda komunikasi masa kini.","B":"Kendala implementasi pendekatan teks multimodal akibat minimnya instrumen evaluasi pedagogis dari dosen.","C":"Pentingnya penerapan teks multimodal di perguruan tinggi untuk merespons dinamika literasi komunikasi digital.","D":"Tuntutan bagi lulusan perguruan tinggi untuk menguasai keterampilan analisis visual dan audio secara simultan.","E":"Dampak positif pembedahan artefak digital terhadap peningkatan daya kritis mahasiswa di dunia profesional."}'::jsonb,
  NULL,
  'C',
  'Paragraf tersebut dikembangkan dengan pola deduktif, di mana gagasan utamanya terletak pada kalimat (1), yakni mengenai urgensi pengintegrasian teks multimodal. Kalimat-kalimat selanjutnya berfungsi sebagai penjelas yang menguraikan alasan dari urgensi tersebut, mulai dari tuntutan analisis multidimensi (kalimat 2), manfaatnya bagi daya kritis dan kesiapan kerja (kalimat 3 dan 4), hingga kendala pedagogis di lapangan (kalimat 5).

Jawaban: C',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  26,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  '(1) Momentum bulan suci Ramadan selalu diikuti dengan peningkatan antusiasme belanja masyarakat secara signifikan di berbagai sektor ritel maupun jasa edukasi. (2) Pergeseran pola konsumsi ini menuntut perusahaan untuk merancang strategi promosi yang lebih empatik dan relevan dengan nuansa spiritual masyarakat. (3) Pelibatan mitra afiliasi di berbagai daerah terbukti efektif dalam memperluas jangkauan kampanye tanpa harus membebani anggaran iklan digital secara berlebihan. (4) Para mitra tersebut bertugas menyebarkan informasi mengenai program penawaran khusus, seperti pengadaan giveaway berskala besar, secara organik melalui jaringan media sosial mereka. (5) Selain itu, penyampaian pesan komunikasi yang hangat namun tidak kaku sangat diperlukan agar brand image tetap terjaga di mata publik. (6) Pendekatan personal melalui jaringan afiliasi ini juga dinilai mampu membangun kepercayaan calon konsumen dengan lebih cepat dibandingkan metode pemasaran konvensional. (7) Oleh karena itu, optimalisasi peran mitra pemasaran melalui strategi komunikasi yang tepat merupakan kunci keberhasilan untuk mendongkrak omzet perusahaan selama periode Ramadan.

Kalimat utama paragraf di atas ditunjukkan oleh nomor...',
  NULL,
  '{"A":"(1)","B":"(2)","C":"(3)","D":"(6)","E":"(7)"}'::jsonb,
  NULL,
  'E',
  'Paragraf di atas dikembangkan dengan pola induktif dengan menyajikan hal-hal khusus terlebih dahulu sebelum menarik kesimpulan umum yang memayungi keseluruhan isi teks. Kalimat (1) dan (2) berfungsi murni sebagai kalimat pengantar yang menjelaskan latar belakang momentum bulan puasa. Kalimat (3) hingga (6) merupakan kalimat penjelas yang merinci hal-hal teknis mengenai bagaimana strategi itu dijalankan, yakni melalui mitra afiliasi, program giveaway, dan gaya komunikasi. Barulah pada kalimat (7), seluruh rincian tersebut disatukan dalam sebuah simpulan mutlak yang menegaskan bahwa "optimalisasi peran mitra pemasaran" adalah kunci keberhasilannya.

Jawaban: E',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  27,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  '(1) Konsolidasi data dari berbagai divisi operasional melalui sistem Enterprise Resource Planning (ERP) menjanjikan transparansi pembukuan secara seketika. (2) Infrastruktur terpusat ini diyakini mampu menghapus kebiasaan bekerja dalam "silo" yang selama ini menjadi biang kerok lambatnya pencocokan data keuangan akhir bulan. (3) Walaupun perangkat lunak tersebut memiliki spesifikasi kelas dunia, proses implementasinya di lapangan sering kali tersendat oleh tingginya resistensi dari karyawan senior. (4) Keengganan untuk mengubah kebiasaan pencatatan manual dan ketakutan akan transparansi berlebihan memicu sabotase terselubung berupa penginputan data yang tertunda. (5) Kegagalan transformasi digital yang diakibatkan oleh benturan budaya kerja ini membuktikan bahwa adaptasi teknologi wajib didahului oleh manajemen perubahan perilaku sumber daya manusia.

Kesimpulan yang paling tepat untuk paragraf tersebut adalah...',
  NULL,
  '{"A":"Implementasi sistem ERP sering kali tersendat akibat resistensi karyawan senior yang enggan mengubah kebiasaan pencatatan manual.","B":"Adaptasi teknologi sistem ERP tidak akan berhasil secara optimal tanpa adanya intervensi manajemen perubahan perilaku budaya kerja SDM.","C":"Konsolidasi data melalui sistem ERP terbukti gagal menghapus budaya kerja dalam silo karena adanya sabotase dari karyawan operasional.","D":"Ketakutan akan transparansi pembukuan seketika menyebabkan lambatnya proses pencocokan data keuangan akhir bulan perusahaan.","E":"Perusahaan harus memberikan sanksi tegas kepada karyawan yang secara terselubung menunda penginputan data ke dalam sistem terpusat."}'::jsonb,
  NULL,
  'B',
  'Paragraf di atas menceritakan kehebatan teknologi ERP yang sayangnya bisa lumpuh seketika hanya karena penolakan budaya dari SDMnya. Oleh sebab itu, simpulan akhirnya adalah pentingnya mengelola manusianya terlebih dahulu sebelum memasang teknologi. Pilihan B merumuskan konklusi ini dengan sempurna.

Jawaban: B',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  28,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  'Manakah di antara kalimat-kalimat di bawah ini yang merupakan kalimat efektif …',
  NULL,
  '{"A":"Bagi para mahasiswa pendidikan bahasa Inggris dituntut untuk memahami konsep transposisi tata bahasa secara komprehensif.","B":"Tim peneliti saat ini sedang mendiskusikan tentang hasil uji coba modul pembelajaran yang telah diterapkan minggu lalu.","C":"Fokus utama dari proyek penelitian ini adalah mengumpulkan data, menganalisis teks multimodal, dan penyusunan draf publikasi.","D":"Pengembangan desain instruksional berbasis teks multimodal bertujuan menjembatani kesenjangan antara literasi akademik dan praktik komunikasi digital.","E":"Meskipun metode transposisi tata bahasa tersebut dinilai sangat inovatif, namun implementasinya di lapangan masih menghadapi berbagai kendala."}'::jsonb,
  NULL,
  'D',
  'Kalimat pada opsi D merupakan satu-satunya kalimat efektif karena memiliki struktur Subjek dan Predikat yang jelas, serta tidak mengandung pemborosan kata. Sebaliknya, kalimat-kalimat lain memiliki cacat struktur. Pada opsi A tidak memiliki subjek, opsi B mengandung pemborosan kata, opsi C tidak paralel, sedangkan opsi E tidak efektif karena menggunakan konjungsi ganda.

Jawaban: D',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  29,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Manakah kalimat di bawah ini yang salah dalam penggunaan huruf kapital …',
  NULL,
  '{"A":"Rapat paripurna terkait strategi bisnis tersebut dihadiri langsung oleh Presiden beserta jajaran menteri kabinet yang baru dilantik.","B":"Survei topografi menunjukkan bahwa lahan potensial untuk ekspansi pabrik berada di sebelah barat daya dari pusat kota.","C":"Tren penggunaan istilah asing yang keinggris-inggrisan dalam draf kontrak kerja mulai dievaluasi ulang oleh tim legal.","D":"Meskipun saat ini ia menjabat sebagai seorang direktur operasional, gaya komunikasi yang diterapkannya tetap egaliter dan terbuka.","E":"Sebagai bentuk dukungan terhadap UMKM lokal, perusahaan rutin menyajikan soto Madura dan camilan kacang Bogor di ruang tamu VIP."}'::jsonb,
  NULL,
  'E',
  'Berdasarkan kaidah EYD V, frasa kacang Bogor salah karena kata "bogor" di sini bukanlah penunjuk asal daerah (kacang tersebut bisa ditanam di mana saja), melainkan sebuah nama jenis varietas tanaman, sehingga wajib ditulis dengan huruf kecil seluruhnya menjadi kacang bogor (sama halnya dengan jeruk bali, gula jawa, petai cina, nangka belanda).

Jawaban: E',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  30,
  'TWK',
  'Nasionalisme',
  'sedang',
  '(1) Di tengah ketatnya persaingan industri, setiap manajer dituntut untuk mampu memposisikan dirinya sebagai mentor sekaligus eksekutor yang tangguh bagi tim. (2) Keputusan strategis sering kali harus diambil dengan cepat tanpa bermaksud mengesampingkan masukan berharga dari berbagai kepala divisi. (3) Apalagi, fluktuasi nilai tukar mata uang asing pada kuartal ini terbukti sangat memengaruhi proyeksi laba rugi perusahaan secara keseluruhan. (4) Oleh sebab itu, berbagai kerangka kerja teoretis yang digunakan dalam tahap riset pasar wajib disesuaikan kembali dengan realitas di lapangan. (5) Manajemen puncak menyadari bahwa mereka harus segera mengubah tata kelola konvensional agar tetap relevan dengan tuntutan era disrupsi digital.

Manakah kata bercetak tebal pada teks di atas yang merupakan kata tidak baku …',
  NULL,
  '{"A":"Memposisikan (kalimat 1)","B":"Mengesampingkan (kalimat 2)","C":"Memengaruhi (kalimat 3)","D":"Teoretis (kalimat 4)","E":"Mengubah (kalimat 5)"}'::jsonb,
  NULL,
  'A',
  'Opsi A. memposisikan merupakan bentuk tidak baku karena melanggar kaidah peluluhan konsonan K-T-S-P. Kata dasar "posisi" diawali dengan huruf ''p'' dan diikuti huruf vokal ''o'', sehingga saat mendapat imbuhan me-...-kan, huruf ''p'' tersebut mutlak harus luluh menjadi memosisikan.

Jawaban: A',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  31,
  'TIU',
  'Silogisme',
  'sedang',
  'Semua pengguna layanan perbankan prioritas telah melakukan verifikasi identitas biometrik.

Tidak semua pengguna layanan perbankan prioritas mengaktifkan notifikasi transaksi real-time.

Kesimpulan yang paling tepat adalah...',
  NULL,
  '{"A":"Pengguna layanan perbankan prioritas yang mengaktifkan notifikasi transaksi real-time telah melakukan verifikasi identitas biometrik.","B":"Sebagian pengguna layanan perbankan prioritas belum melakukan verifikasi identitas biometrik.","C":"Semua pengguna layanan perbankan prioritas mengaktifkan notifikasi transaksi real-time.","D":"Sebagian pengguna layanan perbankan prioritas tidak mengaktifkan notifikasi transaksi real-time dan belum melakukan verifikasi biometrik.","E":"Tidak ada pengguna layanan perbankan prioritas yang melakukan verifikasi identitas biometrik."}'::jsonb,
  NULL,
  'A',
  'Premis pertama menyatakan bahwa semua pengguna layanan perbankan prioritas telah melakukan verifikasi identitas biometrik. Artinya, setiap orang yang termasuk pengguna layanan perbankan prioritas pasti sudah melakukan verifikasi biometrik. Premis kedua menyatakan bahwa tidak semua pengguna layanan perbankan prioritas mengaktifkan notifikasi transaksi real-time, yang berarti ada sebagian pengguna yang tidak mengaktifkan notifikasi tersebut. Namun, baik yang mengaktifkan maupun yang tidak mengaktifkan notifikasi tetap merupakan pengguna layanan perbankan prioritas. Karena seluruh pengguna layanan perbankan prioritas telah melakukan verifikasi identitas biometrik, maka pengguna layanan perbankan prioritas yang mengaktifkan notifikasi transaksi real-time juga pasti telah melakukan verifikasi identitas biometrik. Oleh karena itu, kesimpulan yang paling tepat adalah A.

Jawaban: A',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  32,
  'TIU',
  'Silogisme',
  'sedang',
  'Tidak semua analis data di Pusat Inovasi Cerdas mengikuti program sertifikasi kecerdasan buatan.

Semua peserta program sertifikasi kecerdasan buatan memperoleh akses ke laboratorium komputasi lanjutan.

Kesimpulan yang paling tepat adalah...',
  NULL,
  '{"A":"Semua analis data di Pusat Inovasi Cerdas memperoleh akses ke laboratorium komputasi lanjutan.","B":"Tidak ada analis data di Pusat Inovasi Cerdas yang memperoleh akses ke laboratorium komputasi lanjutan.","C":"Semua pengguna laboratorium komputasi lanjutan adalah analis data di Pusat Inovasi Cerdas.","D":"Analis data yang tidak mengikuti sertifikasi tidak memperoleh akses laboratorium komputasi lanjutan.","E":"Sebagian pengguna laboratorium komputasi lanjutan mungkin merupakan analis data di Pusat Inovasi Cerdas."}'::jsonb,
  NULL,
  'E',
  'Premis pertama menyatakan bahwa tidak semua analis data di Pusat Inovasi Cerdas mengikuti program sertifikasi kecerdasan buatan. Pernyataan ini menunjukkan bahwa dalam kelompok analis data terdapat yang mengikuti sertifikasi dan ada yang tidak mengikuti sertifikasi. Premis kedua menyatakan bahwa semua peserta program sertifikasi kecerdasan buatan memperoleh akses ke laboratorium komputasi lanjutan. Dengan demikian, siapa pun yang mengikuti sertifikasi akan menjadi pengguna laboratorium komputasi lanjutan. Karena sebagian analis data dapat saja mengikuti program sertifikasi kecerdasan buatan, maka mereka juga memperoleh akses ke laboratorium komputasi lanjutan. Oleh sebab itu, dapat disimpulkan bahwa sebagian pengguna laboratorium komputasi lanjutan mungkin merupakan analis data di Pusat Inovasi Cerdas. Jadi, jawaban yang paling tepat adalah E.

Jawaban: E',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  33,
  'TIU',
  'Silogisme',
  'sedang',
  'Semua peneliti yang memperoleh izin mengakses basis data rahasia telah menandatangani perjanjian kerahasiaan.

Tidak ada orang yang telah menandatangani perjanjian kerahasiaan yang diperbolehkan membagikan data penelitian kepada pihak luar tanpa persetujuan resmi.

Kesimpulan yang paling tepat adalah...',
  NULL,
  '{"A":"Semua peneliti telah menandatangani perjanjian kerahasiaan.","B":"Sebagian peneliti membagikan data penelitian kepada pihak luar.","C":"Semua orang yang tidak membagikan data penelitian memperoleh izin mengakses basis data rahasia.","D":"Tidak ada peneliti yang memperoleh izin mengakses basis data rahasia yang diperbolehkan membagikan data penelitian kepada pihak luar tanpa persetujuan resmi.","E":"Sebagian peneliti tidak memperoleh izin mengakses basis data rahasia."}'::jsonb,
  NULL,
  'D',
  'Pada premis pertama dijelaskan bahwa semua peneliti yang memperoleh izin mengakses basis data rahasia telah menandatangani perjanjian kerahasiaan. Artinya, setiap peneliti yang memiliki izin akses ke basis data rahasia pasti termasuk dalam kelompok orang yang telah menandatangani perjanjian kerahasiaan. Premis kedua menyatakan bahwa tidak ada orang yang telah menandatangani perjanjian kerahasiaan yang diperbolehkan membagikan data penelitian kepada pihak luar tanpa persetujuan resmi. Karena peneliti yang memperoleh izin akses basis data rahasia telah menandatangani perjanjian kerahasiaan, maka mereka juga termasuk pihak yang tidak diperbolehkan membagikan data penelitian kepada pihak luar tanpa persetujuan resmi. Oleh karena itu, kesimpulan yang paling tepat adalah tidak ada peneliti yang memperoleh izin mengakses basis data rahasia yang diperbolehkan membagikan data penelitian kepada pihak luar tanpa persetujuan resmi, yaitu opsi D.

Jawaban: D',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  34,
  'TIU',
  'Kemampuan Numerik',
  'sedang',
  'PISAU: MEMOTONG =...',
  NULL,
  '{"A":"Sapu: Lantai","B":"Timbangan: Berat","C":"Lem: Merekatkan","D":"Payung: Hujan","E":"Tinta: Hitam"}'::jsonb,
  NULL,
  'C',
  'Pisau adalah alat yang berfungsi untuk memotong. Hubungan ini paling tepat disamakan dengan lem yang merupakan benda yang berfungsi untuk merekatkan.

Jawaban: C',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  35,
  'TIU',
  'Kemampuan Numerik',
  'sedang',
  'GURU: SEKOLAH =...',
  NULL,
  '{"A":"Nelayan: Ikan","B":"Dokter: Pasien","C":"Sopir: Kendaraan","D":"Hakim: Keadilan","E":"Petani: Sawah"}'::jsonb,
  NULL,
  'E',
  'Guru bekerja dan mengabdi di sekolah. Pola ini setara dengan petani yang bekerja di sawah.

Jawaban: E',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  36,
  'TIU',
  'Kemampuan Numerik',
  'sedang',
  'Pohon kaktus memiliki batang berdaging tebal dan duri tajam agar dapat bertahan hidup di lingkungan gurun yang ekstrem.

Hubungan pada kalimat tersebut sama dengan...',
  NULL,
  '{"A":"Burung elang memiliki sayap lebar dan cakar melengkung agar dapat terbang tinggi serta menerkam mangsanya dengan cepat.","B":"Kapal selam memiliki lambung ganda dan tangki pemberat agar dapat menyelam ke dasar samudra yang bertekanan tinggi.","C":"Bunga mawar memiliki kelopak berwarna cerah dan kelenjar nektar agar dapat menarik perhatian serangga penyerbuk.","D":"Unta memiliki punuk penyimpan lemak dan bulu mata panjang agar dapat bertahan hidup di ekosistem padang pasir yang keras.","E":"Beruang kutub memiliki lapisan lemak tebal dan gigi taring tajam agar dapat berburu anjing laut di hamparan bongkahan es."}'::jsonb,
  NULL,
  'D',
  'Hubungan pada kalimat soal menunjukkan ciri khusus makhluk hidup yang berfungsi untuk bertahan di lingkungan ekstrem. Pola yang sama terdapat pada unta, yaitu punuk sebagai cadangan lemak dan bulu mata panjang untuk melindungi mata dari pasir sehingga mampu bertahan di padang pasir.

Jawaban: D',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  37,
  'TIU',
  'Kemampuan Numerik',
  'sedang',
  'Kamera digital menggunakan lensa optik dan sensor cahaya.

Hubungan pada kalimat tersebut sama dengan...',
  NULL,
  '{"A":"Teleskop observatorium menggunakan cermin cekung dan lensa okuler.","B":"Mesin pemindai menggunakan lampu iluminasi dan sensor citra.","C":"Kacamata minus menggunakan lensa cekung dan bingkai titanium.","D":"Proyektor bioskop menggunakan lampu halogen dan pita seluloid.","E":"Mikrofon studio menggunakan membran diafragma dan kabel konektor."}'::jsonb,
  NULL,
  'B',
  'Kamera digital memadukan lensa dan sensor untuk mendigitalisasi momen menjadi gambar. Pola ini setara sempurna dengan mesin pemindai (scanner) yang memadukan lampu dan sensor citra untuk mendigitalisasi wujud fisik dokumen.

Jawaban: B',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  38,
  'TIU',
  'Kemampuan Numerik',
  'sedang',
  '\(\frac{5}{6}\)  × 1,2 − \(\frac{3}{5}\)  ÷ \(\frac{9}{10}\)  + 2 = …',
  NULL,
  '{"A":"\\(2\\frac{1}{3}\\)","B":"\\(2\\frac{2}{3}\\)","C":"\\(2\\frac{7}{9}\\)","D":"\\(3\\frac{1}{3}\\)","E":"\\(3\\frac{2}{3}\\)"}'::jsonb,
  NULL,
  'A',
  '\(\frac{5}{6}\)  × 1,2 − \(\frac{3}{5}\)  ÷ \(\frac{9}{10}\)  + 2 =  \(\frac{5}{6}\)  × \(\frac{12}{10}\)  − \(\frac{3}{5}\)  × \(\frac{10}{9}\)  + 2

\(\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ =1-\frac{2}{3}+2\)  

\(\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ =\frac{1}{3}+2\)

\(\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ =\frac{7}{3}\)

\(\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ =2\frac{1}{3}\)

Jawaban: A',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  39,
  'TIU',
  'Kemampuan Numerik',
  'sedang',
  '\(\frac{3}{4}\times 1,2+\frac{1}{5}\div \frac{2}{10}=\ldots\)',
  NULL,
  '{"A":"1,3","B":"1,5","C":"1,9","D":"2,0","E":"2,3"}'::jsonb,
  NULL,
  'C',
  '\(\frac{3}{4}\times 1,2+\frac{1}{5}\div \frac{2}{10}=\frac{3}{4}\times \frac{12}{10}+\frac{1}{5}\div \frac{2}{10}\)

\(=\frac{3}{4}\times \frac{12}{10}+\frac{1}{5}\times \frac{10}{2}\)

\(=\frac{9}{10}+1\)

\(=\frac{9+10}{10}\)

\(=\frac{19}{10}\)

= 1,9

Jawaban: C',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  40,
  'TIU',
  'Berhitung',
  'sedang',
  '\(2+\frac{3}{4}-\frac{1}{2}=\ldots\)',
  NULL,
  '{"A":"1,75","B":"2","C":"2,25","D":"2,5","E":"3,25"}'::jsonb,
  NULL,
  'C',
  '\(2+\frac{3}{4}-\frac{1}{2}=2+0,75-0,5\)

\(=2+0,25\)

\(=2,25\)

Jawaban: C',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  41,
  'TIU',
  'Berhitung',
  'sedang',
  'Diketahui

![gambar](/gambar/6b4e08eedc55.png)

Tentukanlah hubungan antara \(A\)  dan \(B\)  yang benar...',
  '/gambar/6b4e08eedc55.png',
  '{"A":"\\(A>B\\)","B":"\\(2 A<B\\)","C":"\\(B<3A\\)","D":"\\(A+B>0\\)","E":"\\(A=B\\)"}'::jsonb,
  NULL,
  'B',
  'A → −8 + 12 − 3 × 4 = −8 + 12 − 12 = −8

B → −5 + 18 − 2 × 3 = −5 + 18 − 6 = 7

Sehingga perbandingan A: B = −8: 7

Selanjutnya sesuaikan dengan tiap opsi

![gambar](/gambar/f3fae0902c13.png)

Jawaban: B',
  '/gambar/f3fae0902c13.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  42,
  'TIU',
  'Perbandingan Kuantitatif',
  'sedang',
  'Diketahui nilai \(x=4\) dan \(y=\frac{3}{2}\).

![gambar](/gambar/e3017087264c.png)

Manakah hubungan yang benar antara A dan B?',
  '/gambar/e3017087264c.png',
  '{"A":"\\(\\frac{1}{2}A\\gt B\\)","B":"\\(A<2B\\)","C":"Hubungan A dan B tidak dapat ditentukan","D":"\\(A=B\\)","E":"\\(\\frac{1}{2}A\\gt 2B\\)"}'::jsonb,
  NULL,
  'B',
  'Diketahui nilai \(x=4\) dan \(y=\frac{3}{2}\). 

Nilai A  

\(3x-y=3\left(4\right)-\frac{3}{2}=12-\frac{3}{2}=\frac{24-3}{2}=\frac{21}{2}\)  = 10,5

Nilai B  

\(5x+2y=5\left(4\right)+2\left(\frac{3}{2}\right)\)  = 20 + 3 = 23

Selanjutnya sesuaikan dengan tiap opsi

![gambar](/gambar/ed8f02608f11.png)

Jawaban: B',
  '/gambar/ed8f02608f11.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  43,
  'TIU',
  'Perbandingan Kuantitatif',
  'sedang',
  'Diketahui

![gambar](/gambar/9689a006f17b.png)

Manakah hubungan yang benar antara A dan B?',
  '/gambar/9689a006f17b.png',
  '{"A":"\\(2A>3B\\)","B":"\\(A=2B\\)","C":"Hubungan A dan B tidak dapat ditentukan","D":"\\(3A<4B\\)","E":"\\(4A=5B\\)"}'::jsonb,
  NULL,
  'A',
  'Nilai A

1 ton = 1000 kg 

Jumlah beras awal: \(1\frac{1}{2}\) ton = 1500 kg 

Sisa beras: 1500 − 300 = 1200 kg

Nilai B  

500 kg

Perbandingan A: B = 1200: 500 

= 12:5

Selanjutnya sesuaikan dengan tiap opsi

![gambar](/gambar/e5e5f05e9c23.png)

Jawaban: A',
  '/gambar/e5e5f05e9c23.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  44,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Diketahui seorang pekerja mampu merakit 42 mainan dalam waktu 2,8 jam.

![gambar](/gambar/32a25d996723.png)

Tentukanlah hubungan antara \(A\)  dan \(B\)  yang benar...',
  '/gambar/32a25d996723.png',
  '{"A":"\\(A=B\\)","B":"\\(A>B\\)","C":"\\(A<B\\)","D":"\\(2A=B\\)","E":"\\(B=2A\\)"}'::jsonb,
  NULL,
  'A',
  'Diketahui seorang pekerja mampu merakit 42 mainan dalam waktu 2,8 jam = 2,8 × 60 = 168 menit

A → Jumlah mainan yang dihasilkan dalam waktu 336 menit

![gambar](/gambar/f7c310f8b4fa.png)

\(\frac{42}{x}=\frac{168}{336}\)  

\(x=\frac{42\times \cancel{336}}{\cancel{168}}\)

= 42 × 2

= 84

Banyak mainan yang dapat dirakit dalam waktu 336 menit adalah 84.

B → 84

Jadi, \(A=B=84\)

Jawaban: A',
  '/gambar/f7c310f8b4fa.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  45,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Biaya kursus Bahasa Inggris selama 9 bulan adalah Rp5.850.000. Jika biaya kursus dihitung secara proporsional, berapa biaya kursus untuk 4 bulan?',
  NULL,
  '{"A":"Rp2.400.000","B":"Rp2.500.000","C":"Rp2.600.000","D":"Rp2.750.000","E":"Rp3.000.000"}'::jsonb,
  NULL,
  'C',
  '![gambar](/gambar/f4d991b6b6fb.png)

Untuk menyelesaikan soal tersebut dapat kita gunakan perbandingan senilai.

\(\frac{5.850.000}{x}=\frac{9}{4}\)

\(\ \ x=\frac{5.850.000\times 4}{9}\)

\(x\)  = 2.600.000

Jawaban: C',
  '/gambar/f4d991b6b6fb.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  46,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Lima mesin fotokopi mampu mencetak 2,25 rim kertas dalam satu jam. Jika terdapat 8 mesin fotokopi dengan kemampuan yang sama, berapa rim kertas yang dapat dicetak dalam satu jam?',
  NULL,
  '{"A":"3 rim","B":"3,2 rim","C":"3,4 rim","D":"3,6 rim","E":"4 rim"}'::jsonb,
  NULL,
  'D',
  '![gambar](/gambar/bafcebd2a52c.png)

Untuk menyelesaikan soal tersebut dapat kita gunakan perbandingan senilai.

\(\frac{5}{8}=\frac{2,25}{x}\)

\(x=\frac{8\times 2,25}{5}\)

\(x=\frac{18}{5}\)

\(x\) = 3,6 rim

Jawaban: D',
  '/gambar/bafcebd2a52c.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  47,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Sebuah konveksi memiliki 14 penjahit yang mampu menyelesaikan pesanan 4.200 seragam dalam 21 hari. Setelah pekerjaan berlangsung selama 9 hari, ditambahkan 7 penjahit agar pesanan selesai lebih cepat. Berapa total waktu yang dibutuhkan hingga seluruh seragam selesai dijahit?',
  NULL,
  '{"A":"14 hari","B":"15 hari","C":"16 hari","D":"17 hari","E":"18 hari"}'::jsonb,
  NULL,
  'D',
  'Diketahui 14 penjahit mampu menyelesaikan pekerjaan selama 21 hari

Di hari ke-10 ada tambahan 7 penjahit

![gambar](/gambar/6863a52430c0.png)

Maka, total waktu yang dibutuhkan untuk menyelesaikan proyek tersebut adalah 9 + 8 = 17 hari.

Jawaban: D',
  '/gambar/6863a52430c0.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  48,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Sebuah kapal wisata berlayar dari pelabuhan menuju sebuah pulau dengan kecepatan rata-rata 48 km/jam dan memerlukan waktu 5 jam untuk tiba di tujuan. Pada perjalanan berikutnya, kapal cepat menempuh rute yang sama dengan kecepatan 12 km/jam lebih tinggi dibandingkan kapal wisata tersebut. Berapakah selisih waktu tempuh antara kapal cepat dan kapal wisata dalam satuan menit?',
  NULL,
  '{"A":"48","B":"60","C":"72","D":"90","E":"120"}'::jsonb,
  NULL,
  'B',
  'Untuk soal ini kita bisa gunakan perbandingan tak senilai

![gambar](/gambar/6864bb9a2929.png)

![gambar](/gambar/7aed149a5b74.png)

\(x=\frac{48\times 5}{60}\)

\(x\) = 4 jam

Selisih waktunya adalah 5 jam – 4 jam = 1 jam = 60 menit

Sehingga, kapal cepat lebih cepat 60 menit dari kapal wisata.

Jawaban: B',
  '/gambar/6864bb9a2929.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  49,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Sebuah perusahaan konstruksi menugaskan 12 teknisi untuk memasang 2 unit menara jaringan dalam waktu 6 hari. Jika perusahaan tersebut ingin menyelesaikan pemasangan 8 unit menara jaringan dengan tingkat kesulitan yang sama dalam waktu 9 hari, maka jumlah teknisi yang dibutuhkan adalah... orang.',
  NULL,
  '{"A":"32","B":"48","C":"64","D":"72","E":"80"}'::jsonb,
  NULL,
  'A',
  'Diketahui,

12 teknisi mampu memasang 2 unit menara jaringan dalam waktu 6 hari.

Hasil = Tenaga × Waktu 

\(\frac{2}{8}=\frac{12\times 6}{x\times 9}\)

\(\frac{1}{4}=\frac{4\times 2}{x}\)

\(x\)  = 32

Maka teknisi yang dibutuhkan adalah 32 orang.

Jawaban: A',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  50,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Di sebuah taman kota, diketahui bahwa 5 mesin pemotong rumput kecil mampu merapikan seluruh rumput di satu area taman dalam waktu 6 jam. Sementara itu, 2 mesin pemotong rumput besar dapat menyelesaikan area taman yang sama dalam waktu 3 jam. Jika pada hari tertentu digunakan 3 mesin kecil dan 1 mesin besar secara bersamaan, maka seluruh area taman tersebut akan selesai dirapikan dalam waktu... jam.',
  NULL,
  '{"A":"1","B":"2","C":"2,5","D":"3,75","E":"4,25"}'::jsonb,
  NULL,
  'D',
  'Untuk menyelesaikan soal tersebut, kita cari terlebih dahulu 3 mesin kecil dalam berapa jam dan 1 mesin besar dalam berapa jam.

![gambar](/gambar/3c18d7d83765.png)

\(x=\frac{5\times 6}{3}=10\)  jam

![gambar](/gambar/a71021d89cd7.png)

\(y=\frac{2\times 3}{1}\)  = 6 jam

Maka 3 mesin kecil dan 1 mesin besar dapat menyelesaikan pemotongan area taman dalam

\(\frac{1}{w}=\frac{1}{10}+\frac{1}{6}\)  

\(\frac{1}{w}=\frac{3+5}{30}\)

\(w=\frac{30}{8}\)

= 3,75

Jawaban: D',
  '/gambar/3c18d7d83765.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  51,
  'TIU',
  'Soal Cerita',
  'sedang',
  '..., 8, 16, 19, 38, 41, 82',
  NULL,
  '{"A":"-4","B":"0","C":"2","D":"4","E":"5"}'::jsonb,
  NULL,
  'E',
  '![gambar](/gambar/6071a3dd89a6.png)

Jawaban: E',
  '/gambar/6071a3dd89a6.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  52,
  'TIU',
  'Deret Angka',
  'sedang',
  '−1,−4,...,−8,−9,−12,−27',
  NULL,
  '{"A":"-1","B":"-2","C":"-3","D":"-4","E":"-6"}'::jsonb,
  NULL,
  'C',
  '![gambar](/gambar/29d3aefd3de8.png)

Jawaban: C',
  '/gambar/29d3aefd3de8.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  53,
  'TIU',
  'Deret Angka',
  'sedang',
  '3, 15, 5, 25, 15, 75,..., 325',
  NULL,
  '{"A":"25","B":"45","C":"65","D":"125","E":"225"}'::jsonb,
  NULL,
  'C',
  '![gambar](/gambar/e9fe08430e96.png)

Jawaban: C',
  '/gambar/e9fe08430e96.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  54,
  'TIU',
  'Deret Angka',
  'sedang',
  'Terdapat 8 peserta berlabel A, B, C, D, E, F, G, H yang akan dibagi ke dalam 3 tim. Dengan ketentuan A hanya boleh satu tim dengan B atau H. C tidak boleh satu tim dengan D. Jika E satu tim dengan F, maka G harus berada di tim lain.

Jika setiap tim terdiri atas minimal 2 peserta, manakah pembagian yang tepat?',
  NULL,
  '{"A":"(A, B, H), (C, G), (D, E, F)","B":"(A, H), (C, D, G), (E, F, B)","C":"(A, B), (C, D, H), (E, F, G)","D":"(A, E), (C, F, G, H), (D, B)","E":"(A, B), (C, G), (D, E, F, H)"}'::jsonb,
  NULL,
  'E',
  'Opsi A: A dengan B dan H (melanggar ketentuan).

Opsi B: C dengan D (melanggar ketentuan).

Opsi C: E dengan F, satu tim dengan G (melanggar ketentuan).

Opsi D: A dengan E (melanggar ketentuan).

Opsi E: A bersama B tanpa H, C tidak bersama D, dan E serta F satu tim sehingga G berada di tim lain (memenuhi semua ketentuan).

Jawaban: E',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  55,
  'TIU',
  'Kemampuan Numerik',
  'sedang',
  'Seorang petugas survei akan melakukan perjalanan dari desa P menuju desa T. Dari desa P tersedia rute menuju desa Q atau desa R. Dari desa Q terdapat rute langsung ke desa S. Dari desa R tersedia rute menuju desa S dan desa T. Dari desa S terdapat rute langsung menuju desa T. Banyak jalur berbeda yang dapat ditempuh petugas survei dari desa P ke desa T adalah...',
  NULL,
  '{"A":"2 jalur","B":"3 jalur","C":"4 jalur","D":"5 jalur","E":"6 jalur"}'::jsonb,
  NULL,
  'B',
  'Jalur dari desa P menuju desa T

![gambar](/gambar/341691576810.png)

Diperoleh 3 jalur, yaitu:

P – Q – S – T

P – R – T

P – R – S – T

Sehingga, banyak jalur yang dapat ditempuh petugas survei dari desa P ke desa T adalah 3 jalur.

Jawaban: B',
  '/gambar/341691576810.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  56,
  'TIU',
  'Silogisme',
  'sedang',
  'Bu Sinta akan berdiskusi bersama empat siswanya, yaitu Andi, Bella, Cici, dan Dodi dengan menempati enam kursi yang disusun melingkar.

- Bu Sinta duduk berhadapan dengan Dodi.

- Andi duduk tepat di sebelah kanan Bu Sinta dan berhadapan dengan Bella.

- Dodi duduk di sebelah kursi kosong.

Jika semua ketentuan dipenuhi, maka pernyataan yang salah adalah...',
  NULL,
  '{"A":"Cici duduk berhadapan dengan kursi kosong","B":"Dodi menempati kursi tepat di kiri Bella","C":"Kursi kosong berada di antara Andi dan Dodi","D":"Bu Sinta terpisah satu kursi dengan kursi kosong","E":"Andi duduk di sebelah Cici"}'::jsonb,
  NULL,
  'E',
  'Pertama, gambar lingkaran dan beri enam tempat untuk mengisi nama-nama. Selanjutnya, susun pernyataan yang diketahui secara melingkar.

![gambar](/gambar/36a510dd3883.png)

Sehingga, berdasarkan gambar tersebut diketahui pernyataan yang salah adalah Andi duduk di sebelah Cici.

Jawaban: E',
  '/gambar/36a510dd3883.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  57,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Berikut adalah tabel penilaian dari 3 orang yang diminta untuk menilai kebersihan dari empat taman yang berbeda untuk mendapatkan reward dari pemerintah.

![gambar](/gambar/c54893279325.png)

Berdasarkan tabel penilaian tersebut, manakah taman dengan penilaian terbaik yang berhak mendapatkan reward dari pemerintah?',
  '/gambar/c54893279325.png',
  '{"A":"Taman 1","B":"Taman 2","C":"Taman 3","D":"Taman 4","E":"Taman 2 dan 3"}'::jsonb,
  NULL,
  'D',
  '![gambar](/gambar/f4a059837aa0.png)

Maka, dapat diketahui taman dengan penilaian terbaik yang berhak mendapatkan reward dari pemerintah adalah taman 4.

Jawaban: D',
  '/gambar/f4a059837aa0.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  58,
  'TIU',
  'Figural',
  'sedang',
  'Perhatikan gambar berikut!

![gambar](/gambar/9aeac0aa5f94.png)',
  '/gambar/9aeac0aa5f94.png',
  '{"A":"![gambar](/gambar/8f5512af17e5.png)","B":"![gambar](/gambar/abccab4554ef.png)","C":"![gambar](/gambar/00442860fd7b.png)","D":"![gambar](/gambar/48e935f2aadd.png)","E":"![gambar](/gambar/8ae1e601480d.png)"}'::jsonb,
  NULL,
  'B',
  'Setiap objek pada gambar secara bersama berotasi 90° searah jarum jam setiap langkahnya. Sehingga gambar yang tepat adalah

![gambar](/gambar/2eb5bf467ec3.png)

Jawaban: B',
  '/gambar/2eb5bf467ec3.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  59,
  'TIU',
  'Figural',
  'sedang',
  'Perhatikan gambar berikut!

![gambar](/gambar/1864399cb9f8.png)',
  '/gambar/1864399cb9f8.png',
  '{"A":"![gambar](/gambar/64837bd30d94.png)","B":"![gambar](/gambar/4ca03bd6613f.png)","C":"![gambar](/gambar/e617058c80b9.png)","D":"![gambar](/gambar/74e623106d5a.png)","E":"![gambar](/gambar/5b793372f334.png)"}'::jsonb,
  NULL,
  'B',
  '![gambar](/gambar/5d0e6da2aa92.png)

Pola gambar (1) ke gambar (2)

Objek yang ditandai dirotasi 90° (searah jarum jam atau berlawanan arah jarum jam karena menghasilkan bentuk objek yang sama).

Menggunakan pola yang sama gambar (3) ke gambar (4), maka gambar yang tepat adalah

![gambar](/gambar/981202e41147.png)

Jawaban: B',
  '/gambar/5d0e6da2aa92.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  60,
  'TIU',
  'Figural',
  'sedang',
  'Perhatikan gambar berikut!

![gambar](/gambar/e34fe13091ab.png)',
  '/gambar/e34fe13091ab.png',
  '{"A":"![gambar](/gambar/1e3c88d8401a.png)","B":"![gambar](/gambar/94ab0ea6b472.png)","C":"![gambar](/gambar/0778f3478ab2.png)","D":"![gambar](/gambar/940813b77e1b.png)","E":"![gambar](/gambar/def6624ab72b.png)"}'::jsonb,
  NULL,
  'C',
  'Pola gambar (1) ke gambar (2)

![gambar](/gambar/126694f73635.png)

Pada gambar (1) terdapat tiga objek yang beda

- Bentuk objek angka 1 berubah menjadi objek angka 2 (bertambah 1 (+1)) dan dicerminkan secara horizontal, kemudian objek tersebut bergeser ke sisi atas bagian kiri.

- Objek di lingkaran merah dirotasi 90° berlawanan arah jarum jam dan posisi objek bergeser ke sisi kanan bawah, kemudian objek tersebut diduplikat dengan cara dicerminkan secara vertikal.

- Objek di lingkaran biru digeser ke sisi atas bagian kanan dan diperkecil.

Mengikuti pola yang sama, maka gambar yang tepat mengisi posisi ke (4) adalah

![gambar](/gambar/0244fe9969f3.png)

Jawaban: C',
  '/gambar/126694f73635.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  61,
  'TIU',
  'Figural',
  'sedang',
  'Perhatikan gambar berikut!',
  NULL,
  '{"A":"![gambar](/gambar/a076abc638cd.png)","B":"![gambar](/gambar/89c22e5cd3b8.png)","C":"![gambar](/gambar/f36255333bf5.png)","D":"![gambar](/gambar/e680dc12c10c.png)","E":"![gambar](/gambar/b988400d89e2.png)"}'::jsonb,
  NULL,
  'A',
  'Jika dilihat dari pola objek setiap gambar, gambar opsi B dan E banyak sisinya memiliki selisih 1 dan gambar opsi C dan D memiliki bentuk 2 bentuk objek yang sama dan selisihnya 0. Sedangkan opsi A banyak sisinya memiliki selisih 3 atau 4 – 1 = 3.

Jawaban: A',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  62,
  'TIU',
  'Figural',
  'sedang',
  'Perhatikan gambar berikut!',
  NULL,
  '{"A":"![gambar](/gambar/aac4cb7fd76f.png)","B":"![gambar](/gambar/4ef64afafb1e.png)","C":"![gambar](/gambar/493a1f65b85a.png)","D":"![gambar](/gambar/4456b99ddb4b.png)","E":"![gambar](/gambar/18e39724ce2a.png)"}'::jsonb,
  NULL,
  'C',
  '![gambar](/gambar/b4d97437a179.png)

Pada opsi A, B, D, dan E terdapat 3 objek yang berada diatas objek hitam, sedangkan opsi C hanya terdapat 2 objek

Jawaban: C',
  '/gambar/b4d97437a179.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  63,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Perhatikan gambar berikut!

![gambar](/gambar/db9c90304616.png)',
  '/gambar/db9c90304616.png',
  '{"A":"![gambar](/gambar/ff85309c1623.png)","B":"![gambar](/gambar/f30d7c48470d.png)","C":"![gambar](/gambar/c6d405e46be1.png)","D":"![gambar](/gambar/c33658fe141e.png)","E":"![gambar](/gambar/4d1279f199c2.png)"}'::jsonb,
  NULL,
  'E',
  '![gambar](/gambar/b0d7d864eb32.png)

Gambar diatas memiliki pola perbaris, yaitu gabungan dari kolom (1) dan kolom (2) menghasilkan kolom (3). Ketika kolom (1) dan kolom (2) digabungkan, terdapat warna yang sama yang hilang, kemudian warna yang berbeda digabungkan jadi satu dan posisi warna ditukar.

Sehingga gambar yang tepat untuk mengisi gambar yang kosong adalah

![gambar](/gambar/21a807968db1.png)

Jawaban: E',
  '/gambar/b0d7d864eb32.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  64,
  'TIU',
  'Figural',
  'sedang',
  'Perhatikan gambar berikut

![gambar](/gambar/573a5eba014b.png)',
  '/gambar/573a5eba014b.png',
  '{"A":"![gambar](/gambar/29bcea9c3106.png)","B":"![gambar](/gambar/a09cb43952d2.png)","C":"![gambar](/gambar/74ab59a9ca78.png)","D":"![gambar](/gambar/2c7046962c9f.png)","E":"![gambar](/gambar/ffe131511343.png)"}'::jsonb,
  NULL,
  'B',
  '![gambar](/gambar/ef518e2ce428.png)

Gambar diatas memiliki pola perbaris, yaitu gabungan dari kolom (2) dan kolom (3) menghasilkan kolom (1). Terdapat pola warna yang sama perkolomnya. Sehingga gambar yang tepat mengisi baris ketiga kolom ketiga adalahGambar diatas memiliki pola perbaris, yaitu gabungan dari kolom (2) dan kolom (3) menghasilkan kolom (1). Terdapat pola warna yang sama perkolomnya. Sehingga gambar yang tepat mengisi baris ketiga kolom ketiga adalah 

![gambar](/gambar/de848c7c55d1.png)

Jawaban: B',
  '/gambar/ef518e2ce428.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  65,
  'TIU',
  'Figural',
  'sedang',
  'Perhatikan gambar berikut!

![gambar](/gambar/3106cbfda18b.png)',
  '/gambar/3106cbfda18b.png',
  '{"A":"![gambar](/gambar/2a6e35c7ec7d.png)","B":"![gambar](/gambar/6e8389b10378.png)","C":"![gambar](/gambar/5bad8ad2cb4a.png)","D":"![gambar](/gambar/3e1738a74528.png)","E":"![gambar](/gambar/fe9e6f0b765e.png)"}'::jsonb,
  NULL,
  'A',
  '![gambar](/gambar/df1c5ce8be1c.png) ![gambar](/gambar/df1c5ce8be1c.png)

Gambar diatas memiliki pola perkolom. Setiap gambar terdapat 2 objek yaitu kotak merah dan kotak biru. Pola kotak merah pada baris (1) ke baris (2) bergeser satu langkah ke bawah seperti yang ditunjukkan panah. Pola kotak biru pada baris (1) ke baris (2) bergeser selangkah ke atas seperti yang ditunjukkan panah.

Sehingga gambar yang tepat mengisi gambar yang kosong adalah

![gambar](/gambar/5c4a02ca8e9f.png)

Jawaban: A',
  '/gambar/df1c5ce8be1c.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  66,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Anda bertugas di Samsat. Seorang warga memprotes pajak kendaraannya yang lebih mahal dibanding tahun sebelumnya. Setelah diperiksa, kenaikan tersebut berasal dari kebijakan baru pemerintah pusat. Sikap Anda adalah …',
  NULL,
  '{"A":"Menjelaskan dasar perubahan biaya dan membantu warga memahami rincian tagihannya.","B":"Meminta warga membaca informasi kebijakan yang telah tersedia di ruang pelayanan.","C":"Menjelaskan bahwa petugas Samsat hanya menjalankan ketentuan dari pemerintah pusat.","D":"Mendengarkan keberatannya lalu menunjukkan saluran resmi untuk menyampaikan masukan.","E":"Menyarankan warga membayar terlebih dahulu agar proses administrasinya tidak tertunda."}'::jsonb,
  '{"A":5,"B":2,"C":3,"D":4,"E":1}'::jsonb,
  'A',
  'Situasi ini menguji kemampuan petugas memberikan informasi secara jelas ketika masyarakat keberatan terhadap kebijakan yang tidak ditetapkan langsung oleh unit pelayanan. Pilihan A mendapat skor 5 karena petugas tidak sekadar menyatakan bahwa kenaikan merupakan kebijakan pusat, tetapi membantu warga memahami dasar dan rincian biaya yang harus dibayarkan. Transparansi seperti ini dapat mengurangi kesalahpahaman tanpa menyalahkan pihak lain. Pilihan D mendapat skor 4 karena tetap mendengarkan keberatan dan memberikan jalur penyampaian aspirasi yang tepat, tetapi kebutuhan utama warga untuk memahami kenaikan biaya belum dijelaskan secara langsung. Pilihan C mendapat skor 3 karena informasinya benar, tetapi terkesan hanya melepaskan tanggung jawab pelayanan. Pilihan B mendapat skor 2 karena menyediakan informasi, namun warga masih harus memahaminya sendiri. Pilihan E mendapat skor 1 karena lebih menekankan penyelesaian pembayaran dibanding menjawab keberatan warga.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  67,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Anda bertugas di loket pelayanan perizinan. Seorang warga protes karena pengajuannya dikembalikan akibat dokumen belum lengkap, padahal sebelumnya ia mendapat informasi bahwa persyaratannya sudah sesuai. Antrean mulai ramai. Sikap Anda adalah …',
  NULL,
  '{"A":"Menjelaskan kembali persyaratan dan meminta warga melengkapinya.","B":"Mendengarkan kronologi lalu mencatat keluhannya untuk evaluasi.","C":"Memeriksa dokumen dan membantu mencari solusi sesuai prosedur.","D":"Menghubungi petugas sebelumnya untuk memastikan informasi yang diberikan.","E":"Meminta koordinator menangani masalah agar antrean tetap berjalan."}'::jsonb,
  '{"A":3,"B":2,"C":5,"D":4,"E":1}'::jsonb,
  'C',
  'Pilihan C paling tepat karena langsung memeriksa masalah dan membantu warga memperoleh penyelesaian sesuai prosedur. Pilihan D mendapat skor 4 karena melakukan klarifikasi terhadap informasi sebelumnya, tetapi belum langsung memberikan solusi. Pilihan A mendapat skor 3 karena tetap memberi arahan, namun belum mencari sumber kesalahan informasi. Pilihan B mendapat skor 2 karena hanya mendengarkan dan mencatat keluhan. Pilihan E mendapat skor 1 karena langsung menyerahkan masalah kepada koordinator.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  68,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Anda bertugas di pusat informasi tempat wisata. Seorang anak datang menangis karena terpisah dari orang tuanya, sedangkan kawasan sedang sangat ramai. Sikap Anda adalah …',
  NULL,
  '{"A":"Menenangkan anak dan mengantarkannya berkeliling mencari orang tuanya.","B":"Membawa anak ke titik aman lalu melaakukan prosedur pencarian melalui petugas.","C":"Menanyakan ciri orang tuanya kemudian mengumumkannya melalui pengeras suara.","D":"Meminta anak menunggu di pusat informasi karena orang tuanya kemungkinan akan mencarinya.","E":"Meminta pengunjung sekitar membantu mencari orang tua anak tersebut."}'::jsonb,
  '{"A":2,"B":5,"C":4,"D":3,"E":1}'::jsonb,
  'B',
  'Situasi ini menguji kemampuan memberikan pelayanan yang cepat sekaligus mengutamakan keselamatan kelompok rentan. Pilihan B mendapat skor 5 karena anak ditempatkan di lokasi aman dan pencarian dilakukan melalui prosedur petugas sehingga pengawasan tetap terkontrol. Pilihan C mendapat skor 4 karena pengumuman dapat mempercepat pertemuan dengan orang tua, tetapi tetap perlu mempertimbangkan keamanan informasi anak dan koordinasi internal. Pilihan D mendapat skor 3 karena mempertahankan anak di satu lokasi dapat memudahkan pencarian, tetapi masih terlalu pasif. Pilihan A mendapat skor 2 karena berniat membantu langsung, namun membawa anak berkeliling justru dapat memperluas area pencarian dan membuat orang tua semakin sulit menemukannya. Pilihan E mendapat skor 1 karena melibatkan pengunjung yang tidak dikenal membuat pengawasan terhadap anak menjadi kurang terjamin.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  69,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Anda bertugas di pusat informasi kampus. Seorang mahasiswa meminta rekomendasi beasiswa karena kondisi ekonomi keluarganya sedang sulit, tetapi ia belum mengetahui program yang sesuai dengan profilnya. Sikap Anda adalah …',
  NULL,
  '{"A":"Memberikan daftar seluruh beasiswa agar mahasiswa dapat memilih sendiri.","B":"Menanyakan kebutuhannya lalu mengarahkan pada beasiswa yang persyaratannya sesuai dengannya.","C":"Menyarankan mahasiswa memprioritaskan beasiswa dengan jumlah bantuan terbesar.","D":"Menjelaskan beberapa pilihan dan menunjukkan sumber resmi untuk membandingkan persyaratannya.","E":"Memintanya menghubungi penyelenggara masing-masing karena informasi dapat berubah sewaktu-waktu."}'::jsonb,
  '{"A":3,"B":5,"C":2,"D":4,"E":1}'::jsonb,
  'B',
  'Situasi ini menguji kemampuan petugas memberikan informasi yang sesuai kebutuhan pengguna layanan, bukan sekadar menyampaikan sebanyak mungkin informasi. Pilihan B mendapat skor 5 karena petugas terlebih dahulu memahami kondisi mahasiswa kemudian mengarahkan pada program yang benar-benar relevan dengan profil dan kebutuhannya. Pilihan D mendapat skor 4 karena memberikan beberapa alternatif sekaligus sumber resmi sehingga mahasiswa dapat membandingkan program secara mandiri, tetapi belum sepersonal pilihan B. Pilihan A mendapat skor 3 karena informasi tetap diberikan, namun mahasiswa masih harus menyaring banyak pilihan sendiri. Pilihan C mendapat skor 2 karena besarnya bantuan bukan satu-satunya dasar memilih beasiswa. Pilihan E mendapat skor 1 karena langsung mengalihkan mahasiswa kepada pihak lain tanpa terlebih dahulu memberikan bantuan informasi yang menjadi tugas layanan kampus.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  70,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Anda bertugas sebagai perawat di rumah sakit. Seorang ibu marah karena anaknya yang sakit belum mendapat kamar rawat inap. Anda mengetahui seluruh kamar yang sesuai saat itu memang sedang penuh. Sikap Anda adalah …',
  NULL,
  '{"A":"Menjelaskan kondisi kamar dan memastikan pasien tetap mendapat penanganan sambil menunggu.","B":"Meminta keluarga memahami keadaan karena rumah sakit sedang menerima banyak pasien.","C":"Mengecek kembali kemungkinan kamar tersedia dan menyampaikan perkembangannya kepada keluarga.","D":"Menyarankan keluarga mencari rumah sakit lain jika tidak ingin menunggu terlalu lama.","E":"Menjelaskan bahwa pasien akan memperoleh kamar sesuai urutan ketersediaan yang berlaku."}'::jsonb,
  '{"A":5,"B":2,"C":4,"D":1,"E":3}'::jsonb,
  'A',
  'Situasi ini menguji kemampuan petugas menghadapi keluhan keluarga pasien ketika keterbatasan fasilitas tidak dapat langsung diatasi. Pilihan A mendapat skor 5 karena petugas memberikan penjelasan secara transparan sekaligus memastikan kebutuhan medis pasien tetap diperhatikan selama menunggu kamar. Dengan demikian, keluarga tidak hanya mendapat alasan tetapi juga kepastian bahwa pasien tetap dilayani. Pilihan C mendapat skor 4 karena menunjukkan inisiatif mencari kemungkinan kamar dan terus memberikan informasi, tetapi belum menegaskan pelayanan sementara kepada pasien. Pilihan E mendapat skor 3 karena menjelaskan mekanisme secara adil, namun masih kurang responsif terhadap kecemasan keluarga. Pilihan B mendapat skor 2 karena meminta pengertian tanpa menawarkan langkah pelayanan yang konkret. Pilihan D mendapat skor 1 karena terlalu cepat mengalihkan tanggung jawab pelayanan tanpa terlebih dahulu memastikan alternatif penanganan yang tersedia.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  71,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Anda bertugas di kantor imigrasi. Seorang pemohon paspor baru menyadari ada perbedaan penulisan nama pada dua dokumen pendukung, padahal ia harus bepergian dalam waktu dekat. Sikap Anda adalah …',
  NULL,
  '{"A":"Meminta pemohon memperbaiki dokumen terlebih dahulu sesuai ketentuan yang berlaku.","B":"Memeriksa kasusnya dan menjelaskan langkah tercepat yang tetap sesuai prosedur.","C":"Menyarankan pemohon mengajukan permohonan baru setelah seluruh datanya sudah sama.","D":"Menjelaskan dokumen yang perlu diperbaiki serta unit yang dapat membantu prosesnya.","E":"Tetap memproses permohonan karena perbedaan penulisan tersebut terlihat tidak terlalu besar."}'::jsonb,
  '{"A":3,"B":5,"C":2,"D":4,"E":1}'::jsonb,
  'B',
  'Situasi ini menguji kemampuan petugas memberikan solusi dalam batas kewenangan tanpa mengabaikan ketelitian administrasi. Pilihan B mendapat skor 5 karena petugas tidak mengabaikan ketidaksesuaian data, tetapi tetap berusaha menemukan langkah penyelesaian paling efisien yang diperbolehkan prosedur. Pilihan D mendapat skor 4 karena memberikan informasi praktis dan arah penyelesaian yang jelas, tetapi belum melihat secara langsung pilihan proses yang paling sesuai dengan kasus pemohon. Pilihan A mendapat skor 3 karena benar secara prosedural, namun masih terbatas pada instruksi umum. Pilihan C mendapat skor 2 karena berpotensi membuat pemohon mengulang proses lebih banyak daripada yang diperlukan. Pilihan E mendapat skor 1 karena ketidaksesuaian identitas tidak boleh diabaikan hanya karena dianggap kecil.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  72,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Anda bertugas di terminal bus. Seorang penumpang pengguna kursi roda kesulitan menuju peron karena jalur akses sedang terhalang pekerjaan perbaikan. Busnya akan berangkat tidak lama lagi. Sikap Anda adalah …',
  NULL,
  '{"A":"Menjelaskan kondisi jalur dan meminta penumpang menunggu sampai akses kembali dibuka.","B":"Menghubungi petugas terkait dan menyiapkan jalur aman alternatif menuju peron.","C":"Meminta beberapa petugas membantu mengangkat kursi roda melewati bagian yang terhalang.","D":"Berkoordinasi dengan operator bus agar keberangkatan dapat menunggu beberapa saat.","E":"Menyarankan penumpang menggunakan keberangkatan berikutnya yang memiliki waktu lebih longgar."}'::jsonb,
  '{"A":1,"B":5,"C":3,"D":4,"E":2}'::jsonb,
  'B',
  'Situasi ini menguji pelayanan yang inklusif kepada pengguna fasilitas publik dengan kebutuhan aksesibilitas tertentu. Pilihan B mendapat skor 5 karena petugas berusaha mempertahankan hak penumpang untuk menggunakan layanan dengan menyediakan akses alternatif yang tetap aman. Pilihan D mendapat skor 4 karena koordinasi dengan operator memberi waktu untuk membantu penumpang dan mencegah ia tertinggal, tetapi persoalan akses belum diselesaikan secara langsung. Pilihan C mendapat skor 3 karena berupaya membantu, namun mengangkat kursi roda bukan pilihan utama apabila masih dapat disediakan jalur yang aman dan dapat diakses. Pilihan E mendapat skor 2 karena menawarkan alternatif perjalanan, tetapi justru membebankan dampak keterbatasan fasilitas kepada penumpang. Pilihan A mendapat skor 1 karena hanya meminta menunggu tanpa memberikan solusi terhadap jadwal keberangkatan yang semakin dekat.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  73,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Anda menjadi petugas posko bantuan setelah banjir. Seorang warga marah karena keluarganya belum menerima paket bantuan, sementara beberapa tetangganya sudah mendapatkannya. Namanya ternyata belum tercantum dalam daftar penerima. Sikap Anda adalah …',
  NULL,
  '{"A":"Memintanya menunggu pembagian berikutnya karena bantuan diberikan berdasarkan daftar yang tersedia.","B":"Memberikan bantuan dari jatah keluarga lain agar warga tersebut tidak semakin kecewa.","C":"Mencatat identitasnya dan menyampaikan kepada koordinator untuk pengecekan lebih lanjut.","D":"Menjelaskan mekanisme pendataan dan meminta warga melengkapi informasi yang diperlukan.","E":"Memeriksa data dan kondisi warga lalu membantu proses verifikasi sesuai mekanisme posko."}'::jsonb,
  '{"A":2,"B":1,"C":4,"D":3,"E":5}'::jsonb,
  'E',
  'Situasi ini menguji kemampuan memberikan pelayanan yang adil ketika terdapat kemungkinan kekeliruan data dalam kondisi darurat. Pilihan E mendapat skor 5 karena petugas tidak langsung menolak maupun memberikan bantuan tanpa dasar, melainkan memeriksa kondisi sebenarnya dan membantu warga mengikuti proses verifikasi. Pilihan C mendapat skor 4 karena persoalan sudah diteruskan kepada pihak yang memiliki kewenangan melakukan pengecekan, tetapi petugas belum terlibat langsung dalam proses penyelesaiannya. Pilihan D mendapat skor 3 karena memberikan penjelasan dan membuka peluang perbaikan data, namun bebannya masih lebih banyak diberikan kepada warga. Pilihan A mendapat skor 2 karena mengikuti daftar memang menjaga ketertiban distribusi, tetapi belum menangani kemungkinan warga yang seharusnya berhak namun terlewat. Pilihan B mendapat skor 1 karena memberikan jatah milik penerima lain justru menciptakan ketidakadilan dan masalah administrasi baru.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  74,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda merupakan staf baru di divisi marketing dan harus segera menyelesaikan laporan pemasaran bulanan. Pada saat yang sama, Anda diminta mengikuti perjalanan dinas ke luar kota untuk kampanye produk baru. Kedua tugas memiliki waktu yang hampir bersamaan. Sikap Anda adalah …',
  NULL,
  '{"A":"Menyelesaikan laporan terlebih dahulu karena tugas tersebut sudah diberikan lebih awal.","B":"Mengikuti perjalanan dinas dan mengerjakan laporan setelah kegiatan kampanye selesai.","C":"Membagi waktu agar laporan dan perjalanan dinas dapat dijalankan secara bersamaan.","D":"Meminta rekan membantu menyelesaikan laporan agar Anda dapat mengikuti perjalanan dinas.","E":"Menjelaskan kondisi kepada atasan dan meminta arahan mengenai tugas yang harus diprioritaskan."}'::jsonb,
  '{"A":3,"B":2,"C":4,"D":1,"E":5}'::jsonb,
  'E',
  'Situasi ini menguji kemampuan menentukan prioritas ketika menerima dua tugas penting dalam waktu yang hampir bersamaan. Pilihan E mendapat skor 5 karena sebagai staf baru Anda belum tentu memiliki kewenangan menentukan sendiri tugas mana yang lebih prioritas. Menyampaikan kondisi kepada atasan membantu memastikan keputusan selaras dengan kebutuhan organisasi. Pilihan C mendapat skor 4 karena menunjukkan usaha menyelesaikan kedua tanggung jawab, tetapi belum tentu realistis apabila waktunya benar-benar berbenturan. Pilihan A mendapat skor 3 karena mempertimbangkan urutan penugasan, tetapi belum mempertimbangkan tingkat kepentingan perjalanan dinas. Pilihan B mendapat skor 2 karena memilih salah satu tugas tanpa koordinasi. Pilihan D mendapat skor 1 karena mendelegasikan pekerjaan kepada rekan tanpa memastikan adanya kewenangan dan persetujuan.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  75,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda adalah manajer divisi personalia yang dijadwalkan memimpin training wajib bagi anggota tim baru. Pada waktu yang sama, Anda diminta menghadiri audiensi dengan pimpinan perusahaan mengenai sosialisasi peraturan perusahaan yang baru. Sikap Anda adalah …',
  NULL,
  '{"A":"Tetap memimpin training karena kegiatan tersebut sudah dijadwalkan sejak awal.","B":"Menghadiri audiensi lalu menunda training hingga Anda memiliki waktu yang tersedia.","C":"Menugaskan staf kompeten memimpin training dan menghadiri audiensi dengan pimpinan.","D":"Meminta anggota baru mempelajari materi secara mandiri selama Anda mengikuti audiensi.","E":"Mengikuti sebagian training kemudian meninggalkannya untuk menghadiri audiensi."}'::jsonb,
  '{"A":3,"B":2,"C":5,"D":1,"E":4}'::jsonb,
  'C',
  'Situasi ini menguji kemampuan profesional dalam mengelola tanggung jawab dan melakukan delegasi. Pilihan C mendapat skor 5 karena kedua kegiatan tetap dapat berjalan melalui delegasi kepada staf yang kompeten, sementara audiensi dengan pimpinan yang membutuhkan posisi manajerial tetap dapat dihadiri. Pilihan E mendapat skor 4 karena berusaha menjalankan keduanya, tetapi pergantian penanggung jawab di tengah training dapat mengurangi efektivitas kegiatan. Pilihan A mendapat skor 3 karena bertanggung jawab terhadap jadwal awal, namun mengabaikan agenda strategis bersama pimpinan. Pilihan B mendapat skor 2 karena audiensi dihadiri tetapi training wajib menjadi tertunda. Pilihan D mendapat skor 1 karena training wajib tidak seharusnya diganti begitu saja dengan belajar mandiri.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  76,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda adalah dokter yang harus segera melakukan operasi terhadap pasien dengan kondisi serius. Sesaat sebelum operasi dimulai, Anda mendapat kabar bahwa anak Anda di rumah mengalami demam tinggi. Sikap Anda adalah …',
  NULL,
  '{"A":"Membatalkan operasi dan segera pulang karena kondisi keluarga menjadi tanggung jawab utama.","B":"Tetap melakukan operasi sambil sesekali menghubungi keluarga untuk memantau kondisi anak.","C":"Meminta dokter lain mengambil alih operasi agar Anda dapat segera menemani anak di rumah.","D":"Memastikan anak ditangani keluarga atau tenaga medis lalu menjalankan operasi sesuai tanggung jawab.","E":"Menunda operasi beberapa saat sampai memperoleh informasi yang lebih pasti mengenai kondisi anak."}'::jsonb,
  '{"A":1,"B":3,"C":4,"D":5,"E":2}'::jsonb,
  'D',
  'Situasi ini menguji profesionalisme ketika tanggung jawab pekerjaan berbenturan dengan kepentingan pribadi yang juga mendesak. Pilihan D mendapat skor 5 karena dokter tetap memastikan anak mendapat pertolongan yang layak tanpa meninggalkan pasien yang membutuhkan operasi segera. Pilihan C mendapat skor 4 karena pergantian dokter dapat menjadi solusi apabila dokter pengganti memang kompeten dan proses serah terima aman, tetapi pergantian mendadak tetap dapat memengaruhi penanganan pasien. Pilihan B mendapat skor 3 karena operasi tetap dilakukan, tetapi komunikasi pribadi selama tindakan berpotensi mengganggu konsentrasi. Pilihan E mendapat skor 2 karena menunda operasi pada pasien serius dapat meningkatkan risiko. Pilihan A mendapat skor 1 karena meninggalkan pasien tanpa memastikan penanganan pengganti tidak sesuai tanggung jawab profesional.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  77,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda merupakan wali kota yang ingin mengadakan rangkaian kegiatan menyambut Hari Kemerdekaan. Berbagai komunitas telah mengusulkan acara, tetapi anggaran pemerintah daerah tahun ini cukup terbatas. Sikap Anda adalah …',
  NULL,
  '{"A":"Mengurangi seluruh kegiatan secara merata agar anggaran tidak mengalami kekurangan.","B":"Menentukan kegiatan prioritas dan menggandeng masyarakat serta mitra secara transparan.","C":"Memusatkan anggaran pada satu acara besar agar perayaan tetap terlihat meriah.","D":"Menunda kegiatan yang membutuhkan biaya besar sampai anggaran pemerintah bertambah.","E":"Menggunakan anggaran dari program lain sementara agar seluruh kegiatan tetap terlaksana."}'::jsonb,
  '{"A":3,"B":5,"C":2,"D":4,"E":1}'::jsonb,
  'B',
  'Situasi ini menguji kemampuan menggunakan sumber daya secara profesional, efektif, dan bertanggung jawab. Pilihan B mendapat skor 5 karena keterbatasan anggaran diatasi melalui penentuan prioritas dan kolaborasi yang tetap transparan. Pilihan D mendapat skor 4 karena menunjukkan kehati-hatian terhadap penggunaan anggaran, tetapi belum memaksimalkan alternatif dukungan yang tersedia. Pilihan A mendapat skor 3 karena menjaga agar anggaran tidak terlampaui, tetapi pemotongan merata belum tentu mempertimbangkan nilai manfaat masing-masing kegiatan. Pilihan C mendapat skor 2 karena lebih mengutamakan kemeriahan dibanding pemerataan manfaat. Pilihan E mendapat skor 1 karena penggunaan anggaran program lain tanpa dasar yang tepat dapat mengganggu program publik lainnya.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  78,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda bekerja sebagai staf QC di perusahaan kosmetik. Seorang rekan beberapa kali membawa pulang sampel produk baru tanpa izin meskipun aturan perusahaan melarangnya. Anda sudah pernah menegurnya, tetapi perilaku tersebut kembali dilakukan. Sikap Anda adalah …',
  NULL,
  '{"A":"Menegurnya sekali lagi dan menjelaskan risiko jika kebiasaan tersebut terus dilakukan.","B":"Mengajak rekan lain mengingatkannya agar ia lebih serius menaati aturan perusahaan.","C":"Mengamankan sampel yang dibawa dan meminta rekan mengembalikannya ke bagian produksi.","D":"Membiarkan kejadian tersebut karena Anda sudah pernah memberikan teguran sebelumnya.","E":"Mencatat kejadian dan melaporkannya melalui prosedur pengawasan yang berlaku."}'::jsonb,
  '{"A":3,"B":2,"C":4,"D":1,"E":5}'::jsonb,
  'E',
  'Situasi ini menguji profesionalisme dalam menjaga aturan perusahaan dan kualitas pengendalian produk. Pilihan E mendapat skor 5 karena pelanggaran sudah berulang meskipun pernah ditegur sehingga perlu ditangani melalui mekanisme resmi. Pelaporan bukan berarti mencari kesalahan rekan, tetapi menjaga akuntabilitas serta mencegah risiko terhadap produk perusahaan. Pilihan C mendapat skor 4 karena berusaha menghentikan pelanggaran yang sedang terjadi, tetapi perilaku berulang tetap memerlukan tindak lanjut formal. Pilihan A mendapat skor 3 karena masih melakukan pembinaan, namun teguran sebelumnya sudah terbukti tidak cukup efektif. Pilihan B mendapat skor 2 karena melibatkan rekan lain tidak menjamin penyelesaian dan dapat memperluas persoalan secara informal. Pilihan D mendapat skor 1 karena membiarkan pelanggaran dapat membuat kebiasaan tersebut terus berlangsung.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  79,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda merupakan ASN di dinas pendidikan. Anda mengetahui seorang atasan menerima sejumlah uang dari pihak sekolah agar sekolah tersebut tidak diperiksa dalam audit yang dijadwalkan bulan depan. Anda memiliki informasi yang cukup mengenai kejadian tersebut. Sikap Anda adalah …',
  NULL,
  '{"A":"Menanyakan langsung kepada atasan untuk memastikan alasan menerima uang dari pihak sekolah.","B":"Mengingatkan atasan agar mengembalikan uang tersebut sebelum audit dilaksanakan.","C":"Mengumpulkan bukti yang relevan dan melaporkannya melalui mekanisme resmi yang tersedia.","D":"Menyampaikan informasi tersebut kepada auditor ketika pemeriksaan sekolah mulai dilakukan.","E":"Tidak ikut campur karena keputusan mengenai audit merupakan kewenangan pimpinan."}'::jsonb,
  '{"A":3,"B":4,"C":5,"D":2,"E":1}'::jsonb,
  'C',
  'Situasi ini menguji integritas dan profesionalisme ASN ketika mengetahui pelanggaran serius dalam pelaksanaan tugas. Pilihan C mendapat skor 5 karena tindakan suap berkaitan langsung dengan integritas pelayanan dan proses pengawasan sehingga perlu dilaporkan melalui mekanisme resmi berdasarkan informasi yang dapat dipertanggungjawabkan. Pilihan B mendapat skor 4 karena berusaha menghentikan pelanggaran dan memperbaiki keadaan, tetapi persoalan suap yang telah terjadi tetap membutuhkan penanganan sesuai prosedur. Pilihan A mendapat skor 3 karena klarifikasi dapat membantu memastikan informasi, namun tidak cukup ketika bukti yang dimiliki sudah kuat. Pilihan D mendapat skor 2 karena menunggu sampai audit dilakukan dapat membuat tindakan manipulasi berlangsung lebih jauh. Pilihan E mendapat skor 1 karena membiarkan tindakan tersebut bertentangan dengan tanggung jawab dan integritas ASN.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  80,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda merupakan staf keuangan yang sedang menyiapkan laporan untuk rapat pimpinan. Beberapa jam sebelum laporan diserahkan, Anda menemukan kesalahan perhitungan yang membuat capaian anggaran terlihat lebih baik dari kondisi sebenarnya. Sikap Anda adalah …',
  NULL,
  '{"A":"Memperbaiki data dan memberi tahu atasan mengenai perubahan sebelum laporan digunakan.","B":"Menyerahkan laporan sesuai jadwal lalu melakukan revisi setelah rapat selesai.","C":"Mengubah angka yang salah tanpa menjelaskan perubahan agar laporan tetap selesai tepat waktu.","D":"Meminta rekan memeriksa seluruh laporan sementara Anda menyiapkan penjelasan untuk pimpinan.","E":"Membiarkan angka tersebut karena selisihnya tidak terlalu memengaruhi keseluruhan laporan."}'::jsonb,
  '{"A":5,"B":2,"C":3,"D":4,"E":1}'::jsonb,
  'A',
  'Situasi ini menguji profesionalisme dalam menjaga ketepatan dan akuntabilitas informasi. Pilihan A mendapat skor 5 karena kesalahan segera diperbaiki sekaligus dikomunikasikan kepada atasan sebelum digunakan sebagai dasar pengambilan keputusan. Pilihan D mendapat skor 4 karena melakukan pemeriksaan tambahan dan mempersiapkan penjelasan, tetapi prosesnya dapat lebih panjang dibanding langsung memperbaiki kesalahan yang sudah diketahui. Pilihan C mendapat skor 3 karena data akhirnya benar, tetapi perubahan tanpa penjelasan mengurangi transparansi. Pilihan B mendapat skor 2 karena laporan yang salah tetap berpotensi digunakan dalam rapat. Pilihan E mendapat skor 1 karena membiarkan informasi yang diketahui keliru bertentangan dengan prinsip akurasi profesional.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  81,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda adalah teknisi gedung yang sedang mempersiapkan aula untuk acara besar. Saat pemeriksaan terakhir, Anda menemukan salah satu instalasi listrik berpotensi mengalami korsleting, sedangkan acara akan dimulai satu jam lagi. Sikap Anda adalah …',
  NULL,
  '{"A":"Membatasi penggunaan listrik di area tersebut sambil tetap menjalankan acara sesuai jadwal.","B":"Menjelaskan risiko kepada panitia dan meminta peserta berhati-hati selama kegiatan berlangsung.","C":"Memanggil teknisi tambahan dan mencoba memperbaiki instalasi tanpa mengubah susunan acara.","D":"Mengamankan area dan meminta penyesuaian acara sampai instalasi dinyatakan aman.","E":"Membiarkan instalasi digunakan karena gangguan tersebut belum benar-benar terjadi."}'::jsonb,
  '{"A":3,"B":2,"C":4,"D":5,"E":1}'::jsonb,
  'D',
  'Situasi ini menguji profesionalisme dalam menempatkan keselamatan di atas tekanan waktu dan target kegiatan. Pilihan D mendapat skor 5 karena teknisi bertindak berdasarkan risiko yang ditemukan, mengamankan area, dan memastikan fasilitas baru digunakan setelah dinyatakan aman. Pilihan C mendapat skor 4 karena menunjukkan respons cepat dengan melibatkan bantuan teknis, tetapi memaksakan agar susunan acara tidak berubah dapat menimbulkan tekanan terhadap proses perbaikan. Pilihan A mendapat skor 3 karena sudah melakukan pembatasan, namun risiko belum sepenuhnya dihilangkan. Pilihan B mendapat skor 2 karena sekadar memberikan peringatan tidak cukup untuk menangani potensi bahaya instalasi. Pilihan E mendapat skor 1 karena mengabaikan risiko yang sudah diketahui dapat membahayakan banyak orang.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  82,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda tergabung dalam proyek yang memiliki target penyelesaian cukup ketat. Salah satu rekan memiliki kondisi fisik yang mudah menurun sehingga cukup sering tidak hadir dan beberapa pekerjaannya mulai tertunda. Sikap Anda adalah …',
  NULL,
  '{"A":"Membantu menyelesaikan tugasnya ketika pekerjaan tim mulai mendekati tenggat.","B":"Meminta ketua tim mengurangi bagian tugasnya agar proyek tidak semakin terlambat.","C":"Mengajak tim menyesuaikan pembagian tugas dan tetap melibatkannya sesuai kemampuan.","D":"Menanyakan pekerjaan yang belum selesai lalu menawarkan bantuan pada bagian yang mendesak.","E":"Menyelesaikan pekerjaan masing-masing agar ketidakhadirannya tidak terlalu memengaruhi tim."}'::jsonb,
  '{"A":3,"B":2,"C":5,"D":4,"E":1}'::jsonb,
  'C',
  'Situasi ini menguji kemampuan menjaga kerja sama ketika salah satu anggota memiliki keterbatasan yang memengaruhi pelaksanaan proyek. Pilihan C mendapat skor 5 karena penyelesaian dilakukan bersama melalui penyesuaian pembagian tugas tanpa langsung mengeluarkan atau mengurangi peran rekan tersebut secara sepihak. Pendekatan ini menjaga target proyek sekaligus mempertahankan keterlibatan seluruh anggota. Pilihan D mendapat skor 4 karena menunjukkan kepedulian dan dukungan langsung, tetapi masih berfokus pada bantuan individu dan belum mengatur pembagian kerja tim secara keseluruhan. Pilihan A mendapat skor 3 karena membantu ketika tenggat mendekat cukup baik, tetapi sifatnya reaktif. Pilihan B mendapat skor 2 karena dapat mengurangi beban proyek, namun keputusan langsung mengurangi tugas belum tentu mempertimbangkan kemampuan yang masih dapat diberikan rekan tersebut. Pilihan E mendapat skor 1 karena terlalu berfokus pada pekerjaan masing-masing dan mengabaikan tanggung jawab bersama terhadap keberhasilan proyek.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  83,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda ditempatkan dalam satu kelompok dengan pegawai paling senior di tim. Ia memiliki banyak pengalaman, tetapi cenderung tertutup dan jarang menyampaikan pendapat ketika anggota lain berdiskusi. Sikap Anda adalah …',
  NULL,
  '{"A":"Membiarkannya menentukan sendiri kapan ingin terlibat dalam pembahasan kelompok.","B":"Meminta anggota lain lebih sering bertanya kepadanya ketika membutuhkan pengalaman tertentu.","C":"Mengajak berbicara secara pribadi agar mengetahui alasan ia jarang terlibat dalam diskusi.","D":"Memberikan bagian pekerjaan yang sesuai pengalamannya agar kontribusinya tetap terlihat.","E":"Membangun komunikasi secara bertahap dan mengajaknya berbagi pengalaman dalam diskusi tim."}'::jsonb,
  '{"A":2,"B":3,"C":4,"D":1,"E":5}'::jsonb,
  'E',
  'Situasi ini menguji kemampuan membangun hubungan dengan anggota yang memiliki karakter komunikasi berbeda. Pilihan E mendapat skor 5 karena tidak memaksa anggota senior untuk langsung terbuka, tetapi secara bertahap membangun komunikasi dan menciptakan ruang agar pengalamannya dapat menjadi manfaat bagi tim. Pilihan C mendapat skor 4 karena komunikasi pribadi dapat membantu memahami hambatan yang dirasakan, tetapi belum langsung menghubungkannya dengan partisipasi dalam kelompok. Pilihan B mendapat skor 3 karena memanfaatkan pengalaman anggota senior, namun interaksi masih muncul ketika anggota lain membutuhkan sesuatu. Pilihan A mendapat skor 2 karena menghormati karakter pribadi, tetapi terlalu pasif dalam membangun keterlibatan. Pilihan D mendapat skor 1 karena sekadar memberikan tugas tidak menyelesaikan hambatan komunikasi dan berpotensi membuat anggota tersebut semakin bekerja sendiri.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  84,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda merupakan ketua tim. Salah satu anggota yang baru bergabung terlihat beberapa kali kesulitan memahami alur pekerjaan sehingga tugasnya sering terlambat. Sikap Anda adalah …',
  NULL,
  '{"A":"Memberikan tugas yang lebih sederhana sampai ia terbiasa dengan pola kerja tim.","B":"Meminta anggota senior memeriksa setiap pekerjaannya sebelum diserahkan kepada tim.","C":"Menjelaskan kembali target pekerjaan dan meminta ia lebih aktif bertanya jika mengalami kendala.","D":"Mengidentifikasi kesulitannya lalu mengatur pendampingan agar ia dapat berkembang bersama tim.","E":"Mengalihkan sebagian tugasnya kepada anggota lain agar target tim tetap dapat tercapai."}'::jsonb,
  '{"A":3,"B":2,"C":4,"D":5,"E":1}'::jsonb,
  'D',
  'Situasi ini menguji kemampuan seorang ketua dalam membangun hubungan kerja sekaligus meningkatkan kapasitas anggota baru. Pilihan D mendapat skor 5 karena ketua terlebih dahulu mencari sumber kesulitan kemudian memberikan pendampingan yang terarah. Langkah ini tidak hanya menyelesaikan tugas saat ini, tetapi juga membantu anggota menjadi lebih mandiri untuk pekerjaan berikutnya. Pilihan C mendapat skor 4 karena memberikan arahan dan membuka komunikasi, tetapi masih menuntut anggota baru mengambil inisiatif sendiri ketika mungkin belum memahami pola kerja tim. Pilihan A mendapat skor 3 karena menyesuaikan beban kerja cukup membantu proses adaptasi, namun pengembangan kemampuan berlangsung lebih lambat. Pilihan B mendapat skor 2 karena pengawasan anggota senior dapat mencegah kesalahan, tetapi dapat menimbulkan ketergantungan. Pilihan E mendapat skor 1 karena mengalihkan pekerjaan memang menjaga target sementara, tetapi tidak membantu anggota baru berkembang.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  85,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda menjadi ketua RT dan berencana membangun sumur umum untuk memenuhi kebutuhan warga. Saat rapat, warga berbeda pendapat mengenai lokasi karena setiap kelompok merasa tempat yang diusulkannya paling strategis. Sikap Anda adalah …',
  NULL,
  '{"A":"Memilih lokasi yang paling banyak didukung warga agar keputusan segera diperoleh.","B":"Mengajak warga menilai kebutuhan, akses, dan kondisi lokasi sebelum mencari kesepakatan bersama.","C":"Meminta tokoh masyarakat menentukan lokasi yang dianggap paling adil bagi seluruh warga.","D":"Mengumpulkan beberapa usulan lokasi kemudian meminta warga memberikan pilihan melalui pemungutan suara.","E":"Memilih lahan milik RT karena penggunaannya akan lebih mudah diatur pada kemudian hari."}'::jsonb,
  '{"A":3,"B":5,"C":2,"D":4,"E":1}'::jsonb,
  'B',
  'Situasi ini menguji kemampuan membangun kolaborasi ketika terdapat perbedaan kepentingan dalam masyarakat. Pilihan B mendapat skor 5 karena perbedaan tidak langsung diselesaikan berdasarkan jumlah pendukung, tetapi melalui pembahasan kebutuhan dan kondisi objektif agar keputusan dapat diterima bersama. Pilihan D mendapat skor 4 karena semua warga tetap diberikan kesempatan menentukan pilihan dan keputusan menjadi jelas, tetapi pemungutan suara belum tentu menghasilkan lokasi yang paling sesuai secara teknis. Pilihan A mendapat skor 3 karena menggunakan dukungan mayoritas, namun kepentingan kelompok lain dapat terabaikan. Pilihan C mendapat skor 2 karena menyerahkan keputusan kepada tokoh masyarakat mengurangi partisipasi warga. Pilihan E mendapat skor 1 karena keputusan lebih didasarkan pada kemudahan pengelolaan daripada kebutuhan bersama.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  86,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Pimpinan meminta Anda mencari mitra untuk mendukung proyek perusahaan tahun depan. Beberapa organisasi memiliki bidang yang relevan, tetapi perusahaan belum pernah bekerja sama dengan mereka. Langkah Anda adalah …',
  NULL,
  '{"A":"Menghubungi organisasi yang paling terkenal agar peluang kerja sama lebih mudah memperoleh persetujuan pimpinan.","B":"Meminta rekomendasi dari kolega yang pernah bekerja sama dengan organisasi serupa.","C":"Memetakan calon mitra lalu membangun komunikasi berdasarkan tujuan dan manfaat kerja sama.","D":"Mengirim proposal kepada sebanyak mungkin organisasi untuk memperbesar kemungkinan memperoleh mitra.","E":"Memilih organisasi dengan penawaran paling menarik agar pembahasan kerja sama dapat segera dimulai."}'::jsonb,
  '{"A":3,"B":4,"C":5,"D":2,"E":1}'::jsonb,
  'C',
  'Situasi ini menguji kemampuan memperluas jejaring eksternal secara profesional dan strategis. Pilihan C mendapat skor 5 karena kerja sama dimulai dari pemetaan calon mitra yang sesuai lalu dilanjutkan dengan komunikasi mengenai tujuan dan manfaat bagi kedua pihak. Hal tersebut lebih berpotensi menciptakan hubungan yang relevan dan berkelanjutan. Pilihan B mendapat skor 4 karena memanfaatkan jaringan yang sudah dipercaya dapat membuka akses kepada mitra potensial, tetapi masih bergantung pada rekomendasi pihak lain. Pilihan A mendapat skor 3 karena reputasi organisasi dapat menjadi pertimbangan, namun terkenal tidak selalu berarti paling sesuai dengan kebutuhan proyek. Pilihan D mendapat skor 2 karena memperluas jangkauan, tetapi pendekatan yang terlalu umum kurang menunjukkan pembangunan hubungan yang terarah. Pilihan E mendapat skor 1 karena penawaran menarik saja tidak cukup menjadi dasar kecocokan mitra.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  87,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda koordinator proyek yang membutuhkan kerja sama divisi pemasaran dan produksi. Menjelang peluncuran, kedua divisi saling menyalahkan karena informasi perubahan produk terlambat diterima. Sikap Anda adalah …',
  NULL,
  '{"A":"Meminta masing-masing divisi membuat kronologi agar dapat diketahui pihak yang melakukan kesalahan.","B":"Menghubungi pimpinan proyek agar menentukan pihak yang bertanggung jawab terhadap keterlambatan.","C":"Meminta setiap divisi menyelesaikan bagiannya terlebih dahulu agar peluncuran tidak semakin terlambat.","D":"Merangkum perubahan yang belum tersampaikan dan membagikannya kepada kedua divisi.","E":"Mempertemukan kedua divisi untuk menyelaraskan informasi dan menyepakati pola koordinasi berikutnya."}'::jsonb,
  '{"A":2,"B":1,"C":3,"D":4,"E":5}'::jsonb,
  'E',
  'Situasi ini menguji kemampuan menjaga jejaring kerja lintas divisi ketika muncul konflik komunikasi. Pilihan E mendapat skor 5 karena tidak hanya menangani informasi yang terlambat, tetapi juga memperbaiki pola koordinasi agar masalah serupa tidak terulang. Pilihan D mendapat skor 4 karena membantu menyamakan informasi dan dapat mempercepat penyelesaian proyek, namun belum memperbaiki akar persoalan hubungan antardivisi. Pilihan C mendapat skor 3 karena menjaga fokus pada penyelesaian pekerjaan, tetapi ketidaksinkronan informasi masih dapat menimbulkan masalah berikutnya. Pilihan A mendapat skor 2 karena kronologi dapat membantu evaluasi, tetapi fokus pada pencarian kesalahan berpotensi memperbesar ketegangan. Pilihan B mendapat skor 1 karena menyerahkan konflik kepada pimpinan tanpa terlebih dahulu berupaya membangun koordinasi antaranggota.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  88,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Organisasi tempat Anda bekerja pernah bekerja sama dengan komunitas lokal, tetapi komunikasi berhenti setelah kegiatan selesai. Tahun ini, organisasi membutuhkan dukungan komunitas tersebut untuk program baru. Sikap Anda adalah …',
  NULL,
  '{"A":"Menghubungi kembali pengurusnya, membangun komunikasi, dan menawarkan keterlibatan sejak perencanaan.","B":"Mengirim proposal kerja sama terlebih dahulu agar mereka dapat mempelajari program secara lengkap.","C":"Meminta tokoh yang mengenal komunitas tersebut menyampaikan bahwa organisasi membutuhkan dukungan mereka.","D":"Mencari komunitas lain yang lebih aktif agar proses kerja sama dapat berjalan lebih cepat.","E":"Mengundang pengurus komunitas menghadiri acara organisasi sebelum membahas rencana kerja sama."}'::jsonb,
  '{"A":5,"B":3,"C":4,"D":1,"E":2}'::jsonb,
  'A',
  'Situasi ini menguji kemampuan memelihara dan mengaktifkan kembali jejaring yang pernah terbentuk. Pilihan mendapat skor 5 karena hubungan tidak dimulai langsung dari permintaan bantuan, melainkan melalui komunikasi kembali dan pelibatan komunitas sejak perencanaan. Cara tersebut menunjukkan bahwa komunitas diposisikan sebagai mitra, bukan sekadar pihak yang dibutuhkan ketika ada program. Pilihan C mendapat skor 4 karena menggunakan penghubung terpercaya dapat membantu membuka kembali hubungan, namun komunikasi masih bergantung pada perantara. Pilihan B mendapat skor 3 karena proposal memberikan informasi yang jelas, tetapi pendekatannya relatif formal untuk hubungan yang sempat terputus. Pilihan E mendapat skor 2 karena dapat menjadi pembuka komunikasi, tetapi tujuan kerja sama belum dibicarakan secara langsung. Pilihan D mendapat skor 1 karena segera mengganti mitra mengabaikan peluang memperbaiki jejaring yang sudah pernah terbentuk.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  89,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda ketua dalam tim gabungan dari beberapa unit. Sebagian anggota terbiasa berdiskusi sebelum mengambil keputusan, sedangkan lainnya lebih suka bekerja cepat berdasarkan pembagian tugas. Perbedaan tersebut mulai menghambat koordinasi. Sikap Anda adalah …',
  NULL,
  '{"A":"Mengikuti cara kerja mayoritas agar anggota lain dapat menyesuaikan diri secara bertahap.","B":"Membagi pekerjaan secara jelas lalu membiarkan setiap anggota menggunakan caranya masing-masing.","C":"Meminta ketua tim menetapkan satu pola kerja yang wajib digunakan seluruh anggota.","D":"Mengajak tim menyepakati cara koordinasi yang mengakomodasi kebutuhan kedua pola kerja.","E":"Menentukan bagian yang perlu didiskusikan bersama dan bagian yang dapat dikerjakan mandiri."}'::jsonb,
  '{"A":2,"B":3,"C":1,"D":5,"E":4}'::jsonb,
  'D',
  'Situasi ini menguji kemampuan bekerja dengan anggota yang memiliki gaya kerja berbeda. Pilihan D mendapat skor 5 karena perbedaan tidak dipandang sebagai hambatan yang harus dihilangkan, tetapi dikelola melalui kesepakatan bersama sehingga seluruh anggota tetap dapat bekerja secara efektif. Pilihan E mendapat skor 4 karena sudah menggabungkan dua pola kerja secara praktis, tetapi penerapannya sebaiknya tetap menjadi kesepakatan seluruh tim. Pilihan B mendapat skor 3 karena memberikan fleksibilitas, namun tanpa koordinasi yang cukup hasil pekerjaan dapat sulit disatukan. Pilihan A mendapat skor 2 karena mengikuti mayoritas dapat membuat sebagian anggota kurang terakomodasi. Pilihan C mendapat skor 1 karena memaksakan satu pola kerja tidak memanfaatkan keberagaman cara kerja dalam tim.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  90,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Anda bertugas dalam kegiatan pelayanan administrasi yang diselenggarakan di sebuah daerah. Sebelum pelayanan dimulai, masyarakat setempat memiliki kebiasaan memberikan penghormatan kepada tokoh adat melalui sambutan singkat sebagai bentuk tata krama. Pada hari tersebut jumlah pemohon cukup banyak sehingga beberapa rekan mengusulkan agar kegiatan langsung dimulai tanpa acara tersebut. Namun, tokoh masyarakat menilai penghormatan tersebut penting untuk menjaga penerimaan masyarakat terhadap kegiatan pelayanan. Sikap Anda adalah...',
  NULL,
  '{"A":"Mengusulkan agar penghormatan kepada tokoh adat tetap dilakukan secara singkat sebelum pelayanan dimulai agar kebiasaan masyarakat tetap dihargai.","B":"Menyarankan agar pelayanan segera dimulai dan penghormatan kepada tokoh adat dilakukan setelah sebagian besar pemohon selesai dilayani.","C":"Mengajak panitia dan tokoh masyarakat menyepakati bentuk penghormatan yang lebih singkat agar nilai budaya tetap terjaga tanpa menghambat pelayanan.","D":"Mengikuti kesepakatan panitia untuk memulai pelayanan sesuai jadwal sambil tetap menghormati kebiasaan masyarakat selama kegiatan berlangsung.","E":"Menyampaikan kepada tokoh masyarakat bahwa penghormatan dapat dilakukan pada kegiatan lain agar pelayanan hari itu dapat berjalan lebih cepat."}'::jsonb,
  '{"A":4,"B":2,"C":5,"D":3,"E":1}'::jsonb,
  'C',
  'Pilihan C memperoleh skor 5 karena mengajak panitia dan tokoh masyarakat menyepakati bentuk penghormatan yang lebih singkat menunjukkan kemampuan menyeimbangkan penghargaan terhadap budaya lokal dengan efektivitas pelayanan. Tindakan ini tidak mengabaikan kebiasaan masyarakat, tetapi juga mempertimbangkan kondisi pelayanan yang sedang padat. Melalui kesepakatan bersama, kegiatan tetap dapat berlangsung sesuai kebutuhan masyarakat tanpa mengorbankan kelancaran pelayanan. Pilihan A memperoleh skor 4 karena tetap melaksanakan penghormatan kepada tokoh adat dalam bentuk singkat menunjukkan sikap menghargai nilai dan kebiasaan masyarakat sekaligus berupaya mengurangi waktu yang digunakan. Namun, keputusan tersebut masih lebih berfokus pada mempertahankan bentuk kegiatan yang ada dan belum melibatkan pihak terkait untuk mencari bentuk yang paling sesuai dengan kondisi pelayanan. Pilihan D memperoleh skor 3 karena mengikuti kesepakatan panitia sambil tetap menghormati kebiasaan masyarakat menunjukkan upaya menjaga keseimbangan antara jadwal pelayanan dan budaya setempat. Namun, tindakan ini cenderung mengikuti keputusan yang sudah ada dan belum menunjukkan inisiatif untuk mencari alternatif yang dapat mengakomodasi kedua kepentingan secara lebih optimal. Pilihan B memperoleh skor 2 karena menunda penghormatan hingga sebagian besar pemohon selesai dilayani memang dapat mengurangi gangguan terhadap pelayanan pada awal kegiatan. Namun, pilihan ini berpotensi mengurangi makna penghormatan tersebut karena dilakukan setelah kegiatan utama berlangsung dan belum mempertimbangkan harapan masyarakat setempat. Pilihan E memperoleh skor 1 karena menyarankan agar penghormatan dilakukan pada kegiatan lain mengabaikan konteks budaya yang melekat pada kegiatan tersebut. Meskipun dapat membuat pelayanan berjalan lebih cepat, tindakan ini kurang menunjukkan penghargaan terhadap kebiasaan masyarakat dan berpotensi menimbulkan kesan bahwa nilai budaya setempat tidak dianggap penting.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  91,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Anda bertugas dalam kegiatan pelayanan kesehatan di sebuah desa. Sebagian warga lebih mempercayai pengobatan tradisional yang telah dilakukan turun-temurun dan mulai jarang memanfaatkan pemeriksaan medis. Sikap Anda adalah...',
  NULL,
  '{"A":"Mengajak warga berdiskusi mengenai pengalaman pengobatan mereka sekaligus memberikan penjelasan medis yang relevan dengan kondisi kesehatan.","B":"Mengajak tokoh masyarakat membahas manfaat pemeriksaan medis agar penyampaian informasi lebih mudah diterima oleh warga.","C":"Menyampaikan hasil pemeriksaan medis kepada warga sebagai bahan pertimbangan dalam menentukan pilihan pengobatan.","D":"Mengadakan sosialisasi mengenai pengobatan medis dan tradisional agar warga dapat memahami perbedaan manfaat keduanya.","E":"Mengarahkan warga mengikuti pemeriksaan medis terlebih dahulu sebelum mempertimbangkan pengobatan yang biasa dilakukan masyarakat."}'::jsonb,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'A',
  'Pilihan terbaik adalah A karena membuka ruang bagi warga untuk menyampaikan pengalaman sekaligus memberikan penjelasan medis yang relevan menciptakan komunikasi dua arah dan memungkinkan edukasi kesehatan disampaikan dengan mempertimbangkan latar belakang kepercayaan masyarakat, sehingga mendapat skor 5. B juga baik karena melibatkan tokoh masyarakat dapat membantu membangun kepercayaan dan membuat informasi kesehatan lebih mudah diterima, namun pendekatan tersebut masih menempatkan tokoh masyarakat sebagai perantara dan belum memberikan ruang yang cukup bagi warga untuk menyampaikan pandangannya, sehingga mendapat skor 4. C cukup tepat karena hasil pemeriksaan medis dapat menjadi dasar yang objektif bagi warga dalam mempertimbangkan pilihan penanganan, tetapi pendekatan ini lebih berfokus pada penyampaian hasil dan belum membangun pemahaman masyarakat secara lebih luas, sehingga mendapat skor 3. D kurang tepat karena memberikan informasi mengenai kedua pendekatan memang dapat memperluas wawasan warga, tetapi menyamakan pembahasan keduanya tanpa mengarahkan pada pentingnya pemeriksaan medis ketika diperlukan dapat membuat masyarakat tetap kesulitan menentukan langkah yang tepat, sehingga mendapat skor 2. E menjadi pilihan paling tidak tepat karena langsung mengarahkan warga pada pemeriksaan medis sebelum memahami kepercayaan dan pengalaman mereka dapat membuat pendekatan terasa menggurui serta berpotensi menimbulkan penolakan terhadap edukasi yang diberikan, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  92,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Anda bertugas dalam kegiatan edukasi kesehatan di sebuah desa. Beberapa keluarga masih menerapkan pantangan makanan bagi ibu setelah melahirkan yang dipercaya secara turun-temurun. Sebagian pantangan tersebut berpotensi membatasi asupan gizi ibu. Sikap Anda adalah...',
  NULL,
  '{"A":"Menjelaskan kepada keluarga mengenai kebutuhan gizi ibu setelah melahirkan serta pilihan makanan yang dapat dipertimbangkan.","B":"Mengajak tokoh masyarakat mendukung edukasi mengenai pemenuhan gizi bagi ibu setelah melahirkan.","C":"Menyampaikan daftar makanan yang dianjurkan agar keluarga memiliki pilihan dalam memenuhi kebutuhan gizi ibu.","D":"Menyarankan keluarga mengikuti anjuran tenaga kesehatan dalam memilih makanan selama masa pemulihan.","E":"Mengajak keluarga membahas pantangan tersebut dan memberikan alternatif makanan yang tetap sesuai dengan kebutuhan gizi ibu."}'::jsonb,
  '{"A":4,"B":3,"C":2,"D":1,"E":5}'::jsonb,
  'E',
  'Pilihan terbaik adalah E karena mengajak keluarga membahas pantangan yang dipercaya sekaligus memberikan alternatif makanan yang tetap memenuhi kebutuhan gizi menunjukkan kemampuan menghargai tradisi keluarga sambil tetap mengutamakan kesehatan ibu, sehingga pendekatan yang dilakukan lebih persuasif dan dapat meningkatkan penerimaan terhadap edukasi kesehatan, sehingga mendapat skor 5. A juga baik karena menjelaskan kebutuhan gizi dan pilihan makanan dapat membantu keluarga memahami pentingnya pemenuhan nutrisi selama masa pemulihan, namun belum secara langsung membahas pantangan yang menjadi pertimbangan keluarga, sehingga mendapat skor 4. B cukup tepat karena melibatkan tokoh masyarakat dapat membantu meningkatkan penerimaan terhadap edukasi kesehatan di lingkungan setempat, tetapi pendekatan tersebut masih bersifat tidak langsung dan belum menyelesaikan persoalan pantangan makanan secara spesifik, sehingga mendapat skor 3. C kurang tepat karena memberikan daftar makanan dapat menjadi sumber informasi bagi keluarga, tetapi belum mempertimbangkan kepercayaan yang mendasari pantangan tersebut dan belum memberikan ruang untuk mencari alternatif yang sesuai, sehingga mendapat skor 2. D menjadi pilihan paling tidak tepat karena hanya menyarankan keluarga mengikuti anjuran tenaga kesehatan tanpa memahami terlebih dahulu alasan dan kebiasaan yang mereka jalankan dapat membuat keluarga merasa tradisinya diabaikan dan berpotensi menimbulkan penolakan terhadap edukasi kesehatan, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  93,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Anda merupakan wali kelas. Salah satu orang tua meminta anaknya tidak mengikuti beberapa kegiatan sekolah karena jadwalnya digunakan untuk mengikuti les tambahan. Orang tua tersebut menilai les lebih penting untuk meningkatkan prestasi akademik anak. Sikap Anda adalah...',
  NULL,
  '{"A":"Mendiskusikan dengan orang tua mengenai jadwal kegiatan agar kebutuhan akademik dan kegiatan sekolah dapat tetap diperhatikan.","B":"Menjelaskan kepada orang tua manfaat kegiatan sekolah dan mencari pengaturan yang tetap mendukung kebutuhan belajar anak.","C":"Menyampaikan kepada orang tua bahwa kegiatan sekolah merupakan bagian dari proses pendidikan yang perlu diikuti siswa.","D":"Meminta siswa menentukan kegiatan yang ingin diikuti berdasarkan prioritas belajarnya.","E":"Mengizinkan siswa tidak mengikuti kegiatan sekolah selama orang tua menilai les lebih bermanfaat."}'::jsonb,
  '{"A":4,"B":5,"C":3,"D":2,"E":1}'::jsonb,
  'B',
  'Pilihan terbaik adalah B karena menjelaskan manfaat kegiatan sekolah sekaligus mencari pengaturan yang tetap mendukung kebutuhan belajar anak menunjukkan upaya memahami aspirasi orang tua tanpa mengabaikan perkembangan siswa secara menyeluruh, sehingga mendapat skor 5. A juga baik karena mendiskusikan jadwal bersama orang tua dapat membantu menemukan keseimbangan antara kegiatan akademik dan kegiatan sekolah, namun belum secara langsung memberikan pemahaman mengenai manfaat kegiatan sekolah bagi perkembangan siswa, sehingga mendapat skor 4. C cukup tepat karena menyampaikan bahwa kegiatan sekolah merupakan bagian dari proses pendidikan dapat membantu orang tua memahami pentingnya kegiatan tersebut, tetapi pendekatan ini masih bersifat satu arah dan belum memberikan ruang untuk mencari solusi atas kebutuhan akademik anak, sehingga mendapat skor 3. D kurang tepat karena menyerahkan keputusan kepada siswa dapat membuat anak terbebani dalam menentukan pilihan yang seharusnya dipertimbangkan bersama oleh orang tua dan sekolah, sehingga mendapat skor 2. E menjadi pilihan paling tidak tepat karena langsung mengikuti keputusan orang tua berpotensi mengabaikan manfaat kegiatan sekolah bagi perkembangan siswa dan tidak menunjukkan upaya mencari keseimbangan antara kebutuhan akademik dengan pengalaman belajar lainnya, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  94,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Anda merupakan wali kelas dan mengetahui salah satu siswa sering membantu orang tuanya bekerja setelah pulang sekolah sehingga beberapa tugasnya terlambat dikumpulkan. Siswa tersebut tetap berusaha mengikuti pelajaran dan tidak meminta perlakuan khusus. Sikap Anda adalah...',
  NULL,
  '{"A":"Mendiskusikan kondisi siswa dengan orang tua dan mencari penyesuaian waktu pengumpulan tugas yang tetap mendukung proses belajarnya.","B":"Memberikan kesempatan kepada siswa untuk menyelesaikan tugas pada waktu yang lebih sesuai dengan kondisi kesehariannya.","C":"Menanyakan kesulitan siswa dalam menyelesaikan tugas agar dapat diketahui bentuk bantuan yang dibutuhkannya.","D":"Tetap memberikan batas waktu yang sama kepada seluruh siswa agar penilaian berlangsung secara adil.","E":"Mengurangi jumlah tugas siswa tersebut agar kewajibannya membantu keluarga tidak terlalu mengganggu kegiatan sekolah."}'::jsonb,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'A',
  'Pilihan terbaik adalah A karena mendiskusikan kondisi siswa dengan orang tua sekaligus mencari penyesuaian waktu pengumpulan tugas menunjukkan upaya memahami kondisi sosial siswa tanpa menghilangkan tanggung jawab akademiknya, sehingga mendapat skor 5. B juga baik karena memberikan waktu yang lebih sesuai dapat membantu siswa tetap memenuhi kewajiban akademiknya dengan mempertimbangkan kondisi kesehariannya, namun belum melibatkan orang tua untuk memahami situasi siswa secara lebih menyeluruh, sehingga mendapat skor 4. C cukup tepat karena menanyakan kesulitan siswa menunjukkan kepedulian dan dapat membantu guru menentukan dukungan yang sesuai, tetapi belum menghasilkan penyesuaian konkret terhadap kendala waktu yang dihadapi siswa, sehingga mendapat skor 3. D kurang tepat karena menerapkan batas waktu yang sama memang terlihat adil secara perlakuan, tetapi belum mempertimbangkan kondisi sosial yang berbeda sehingga dapat membuat siswa dengan tanggung jawab keluarga lebih sulit memenuhi tuntutan akademik, sehingga mendapat skor 2. E menjadi pilihan paling tidak tepat karena mengurangi jumlah tugas secara langsung dapat mengurangi kesempatan siswa memperoleh pengalaman belajar yang sama dan berpotensi menimbulkan perlakuan yang berbeda tanpa terlebih dahulu mencari bentuk penyesuaian yang lebih proporsional, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  95,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Anda membantu kegiatan edukasi kesehatan di sebuah desa. Beberapa warga lebih mempercayai pengalaman tetangga mengenai cara menangani keluhan kesehatan karena dianggap sudah terbukti berhasil, sementara informasi dari tenaga kesehatan jarang dijadikan rujukan. Sikap Anda adalah...',
  NULL,
  '{"A":"Meminta tenaga kesehatan menjelaskan alasan di balik anjuran medis dengan contoh yang dekat dengan pengalaman warga.","B":"Mengumpulkan pengalaman warga mengenai penanganan keluhan kesehatan sebagai bahan pembahasan dalam kegiatan berikutnya.","C":"Mengajak warga membandingkan pengalaman yang mereka dengar dengan penjelasan tenaga kesehatan agar dapat memahami perbedaan kondisi setiap orang.","D":"Menyampaikan informasi kesehatan dari tenaga medis agar warga memiliki rujukan lain dalam menentukan tindakan.","E":"Mengarahkan warga untuk mengikuti informasi tenaga kesehatan karena pengalaman pribadi belum tentu sesuai dengan kondisi kesehatan setiap orang."}'::jsonb,
  '{"A":4,"B":3,"C":5,"D":2,"E":1}'::jsonb,
  'C',
  'Pilihan terbaik adalah C karena mengajak warga membandingkan pengalaman yang mereka dengar dengan penjelasan tenaga kesehatan dapat membangun dialog yang menghargai pengalaman masyarakat sekaligus membantu mereka memahami bahwa kondisi kesehatan setiap orang dapat berbeda, sehingga mendapat skor 5. A juga baik karena meminta tenaga kesehatan menjelaskan alasan di balik anjuran medis dengan contoh yang dekat dengan kehidupan warga dapat membuat informasi lebih mudah dipahami dan diterima, namun pendekatan tersebut masih lebih berfokus pada penyampaian informasi dan belum secara langsung mengakomodasi pengalaman yang selama ini dipercaya warga, sehingga mendapat skor 4. B cukup tepat karena mengumpulkan pengalaman warga dapat membantu memahami kebiasaan dan sumber informasi yang berkembang di masyarakat, tetapi belum memberikan langkah untuk membantu warga menilai kembali informasi yang mereka percaya, sehingga mendapat skor 3. D kurang tepat karena menyampaikan informasi dari tenaga kesehatan memang dapat memberikan rujukan yang lebih dapat dipertanggungjawabkan, tetapi pendekatan tersebut belum mempertimbangkan alasan warga lebih mempercayai pengalaman orang di sekitarnya, sehingga mendapat skor 2. E menjadi pilihan paling tidak tepat karena langsung mengarahkan warga untuk mengikuti informasi tenaga kesehatan dapat terkesan mengabaikan pengalaman dan kepercayaan yang telah berkembang di masyarakat, sehingga berpotensi membuat warga kurang terbuka terhadap edukasi yang diberikan, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  96,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda mengikuti kegiatan diskusi sejarah yang diselenggarakan di lingkungan instansi. Salah satu peserta membagikan materi digital yang menyajikan peristiwa sejarah Indonesia secara sepihak dan menyalahkan kelompok tertentu atas berbagai persoalan bangsa. Beberapa rekan mulai membagikan materi tersebut karena dianggap memberikan sudut pandang yang berbeda. Sikap Anda adalah...',
  NULL,
  '{"A":"Menyampaikan kepada rekan bahwa materi sejarah sebaiknya diperiksa kembali sebelum digunakan sebagai rujukan bersama.","B":"Meminta penyelenggara diskusi memberikan sumber pembanding agar peserta memperoleh perspektif yang lebih beragam.","C":"Mengingatkan rekan agar berhati-hati membagikan materi yang dapat menimbulkan pandangan negatif terhadap kelompok tertentu.","D":"Mengajak rekan membandingkan materi tersebut dengan sumber sejarah yang kredibel agar informasi dapat dipahami secara lebih objektif.","E":"Melaporkan penyebaran materi tersebut kepada pimpinan karena berpotensi memengaruhi pandangan pegawai."}'::jsonb,
  '{"A":4,"B":3,"C":2,"D":5,"E":1}'::jsonb,
  'D',
  'Pilihan terbaik adalah D karena mengajak rekan membandingkan materi dengan sumber sejarah yang kredibel mendorong sikap kritis dalam menerima informasi sekaligus mencegah narasi yang tidak berimbang memengaruhi cara pandang terhadap kelompok tertentu, sehingga mendapat skor 5. A juga baik karena mengingatkan pentingnya memeriksa kembali materi sebelum menjadikannya rujukan dapat membantu mencegah penyebaran informasi yang belum terverifikasi, namun belum memberikan langkah yang lebih konkret untuk memperoleh sudut pandang yang objektif, sehingga mendapat skor 4. B cukup tepat karena meminta penyelenggara menyediakan sumber pembanding dapat membantu peserta memperoleh perspektif yang lebih beragam, tetapi penanganannya masih bergantung pada tindakan penyelenggara dan belum secara langsung mendorong rekan mengevaluasi materi yang telah dibagikan, sehingga mendapat skor 3. C kurang tepat karena mengingatkan potensi munculnya pandangan negatif terhadap kelompok tertentu memang menunjukkan kepedulian terhadap persatuan, tetapi belum menyentuh persoalan utama mengenai validitas dan keseimbangan informasi sejarah yang dibagikan, sehingga mendapat skor 2. E menjadi pilihan paling tidak tepat karena langsung melaporkan materi kepada pimpinan sebelum dilakukan upaya klarifikasi dan pemeriksaan sumber dapat menjadi tindakan yang kurang proporsional terhadap informasi yang masih perlu diverifikasi, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  97,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda melihat materi mengenai suatu masalah sosial yang dibagikan berulang kali di grup internal. Data yang digunakan dalam materi tersebut dapat dipastikan benar, tetapi penyajiannya terus menonjolkan kesalahan satu kelompok masyarakat sehingga beberapa rekan mulai menganggap kelompok tersebut sebagai penyebab utama berbagai persoalan. Sikap Anda adalah...',
  NULL,
  '{"A":"Mengingatkan rekan agar melihat persoalan secara lebih menyeluruh dengan mempertimbangkan faktor lain yang turut memengaruhinya.","B":"Mengajak rekan membahas konteks data tersebut agar informasi yang benar tidak membentuk kesimpulan yang menyudutkan kelompok tertentu.","C":"Menyarankan rekan mencari informasi dari sumber lain agar memperoleh gambaran mengenai persoalan tersebut secara lebih lengkap.","D":"Menyampaikan bahwa data yang benar tetap perlu disikapi secara bijak agar tidak menimbulkan prasangka terhadap kelompok tertentu.","E":"Meminta admin menghapus materi tersebut karena pembahasannya dapat memengaruhi pandangan pegawai terhadap kelompok tertentu."}'::jsonb,
  '{"A":4,"B":5,"C":3,"D":2,"E":1}'::jsonb,
  'B',
  'Pilihan terbaik adalah B karena mengajak rekan memahami konteks data secara lebih menyeluruh menunjukkan kemampuan membedakan antara kebenaran fakta dan cara fakta tersebut digunakan untuk membentuk persepsi terhadap kelompok tertentu. Pendekatan ini tidak menolak fakta yang disampaikan, tetapi mendorong penilaian yang lebih objektif agar informasi tidak berkembang menjadi prasangka atau polarisasi, sehingga mendapat skor 5. A juga baik karena mengingatkan pentingnya melihat berbagai faktor yang memengaruhi suatu persoalan dapat mencegah kesimpulan yang terlalu menyederhanakan masalah, namun belum secara langsung mengajak rekan membahas bagaimana framing informasi tersebut dapat memengaruhi pandangan terhadap kelompok tertentu, sehingga mendapat skor 4. C cukup tepat karena mencari sumber lain dapat membantu memperluas informasi dan memberikan sudut pandang yang lebih lengkap, tetapi pendekatan tersebut masih menyerahkan proses evaluasi kepada masing-masing rekan tanpa mengarahkan pembahasan terhadap dampak framing yang muncul, sehingga mendapat skor 3. D kurang tepat karena mengingatkan agar data disikapi secara bijak memang dapat mencegah munculnya prasangka, tetapi penyampaiannya masih bersifat umum dan belum membantu rekan memahami bagian informasi yang dapat membentuk kesimpulan secara tidak proporsional, sehingga mendapat skor 2. E menjadi pilihan paling tidak tepat karena menghapus materi hanya berdasarkan dampak potensialnya dapat menghilangkan informasi yang sebenarnya valid dan belum menyelesaikan persoalan mengenai bagaimana data tersebut dipahami dan digunakan dalam diskusi, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  98,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda bertugas dalam kegiatan pelayanan masyarakat di sebuah kecamatan. Dalam rapat evaluasi, seorang rekan menunjukkan data pelanggaran administrasi yang memang tercatat paling banyak berasal dari wilayah tertentu. Rekan tersebut kemudian menyimpulkan bahwa masyarakat dari wilayah itu cenderung tidak tertib dan sulit mengikuti aturan. Beberapa pegawai mulai menggunakan kesimpulan tersebut ketika membicarakan warga dari wilayah tersebut. Sikap Anda adalah...',
  NULL,
  '{"A":"Mengingatkan bahwa data tersebut perlu dilihat bersama faktor lain sebelum digunakan untuk menggambarkan karakter masyarakat suatu wilayah.","B":"Mengajak tim membahas konteks di balik data tersebut agar hasil evaluasi tidak berkembang menjadi penilaian terhadap karakter kelompok masyarakat tertentu.","C":"Mengusulkan agar data dari beberapa periode dibandingkan untuk melihat apakah pola tersebut memang terjadi secara konsisten.","D":"Menyarankan agar kesimpulan mengenai karakter masyarakat tidak dimasukkan dalam laporan evaluasi pelayanan.","E":"Meminta pimpinan mengingatkan pegawai agar tidak membicarakan masyarakat dari wilayah tersebut secara negatif."}'::jsonb,
  '{"A":4,"B":5,"C":3,"D":2,"E":1}'::jsonb,
  'B',
  'Pilihan terbaik adalah B karena mengajak tim membahas konteks di balik data dapat membantu pegawai memahami bahwa fakta mengenai jumlah pelanggaran tidak secara otomatis menunjukkan karakter masyarakat secara keseluruhan. Pendekatan tersebut tetap mengakui data sebagai bahan evaluasi, tetapi mencegahnya berkembang menjadi generalisasi yang dapat memperkuat prasangka terhadap kelompok tertentu, sehingga mendapat skor 5. A juga baik karena mengingatkan pentingnya mempertimbangkan faktor lain sebelum menarik kesimpulan dapat mencegah generalisasi berdasarkan satu indikator, namun belum secara langsung mengarahkan tim untuk membahas dampak kesimpulan tersebut terhadap cara pandang kepada masyarakat, sehingga mendapat skor 4. C cukup tepat karena membandingkan data dari beberapa periode dapat membantu memastikan apakah pola yang terlihat memang konsisten dan bukan fenomena sementara, tetapi pendekatan tersebut lebih berfokus pada validitas pola data daripada persoalan generalisasi terhadap kelompok masyarakat, sehingga mendapat skor 3. D kurang tepat karena mengeluarkan kesimpulan tersebut dari laporan memang dapat mengurangi potensi munculnya generalisasi dalam dokumen, tetapi tidak menyelesaikan cara pandang pegawai yang sudah terbentuk dari pembahasan tersebut, sehingga mendapat skor 2. E menjadi pilihan paling tidak tepat karena menyerahkan persoalan kepada pimpinan untuk memberikan teguran dapat membatasi pembicaraan negatif, tetapi belum mendorong pegawai memahami mengapa kesimpulan tersebut berpotensi menjadi generalisasi dan bagaimana data seharusnya digunakan secara objektif, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  99,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda merupakan guru di sebuah SMA. Dalam tugas sejarah lokal, beberapa siswa menggunakan materi dari satu sumber yang menggambarkan suatu kelompok masyarakat sebagai pihak yang selalu menjadi penyebab konflik di daerah tersebut. Sumber itu memuat sejumlah fakta yang benar, tetapi siswa mulai menggunakan gambaran tersebut untuk menjelaskan karakter kelompok tersebut secara keseluruhan. Sikap Anda adalah...',
  NULL,
  '{"A":"Meminta siswa menggunakan sumber lain agar pembahasan sejarah tidak hanya berasal dari satu sudut pandang.","B":"Menjelaskan bahwa konflik pada masa lalu perlu dipahami berdasarkan kondisi dan konteks pada masa tersebut.","C":"Mengarahkan siswa menyesuaikan bagian materi yang memberikan gambaran negatif terhadap kelompok tersebut.","D":"Membatasi penggunaan sumber tersebut dalam tugas sejarah berikutnya.","E":"Mengajak siswa membandingkan berbagai sumber dan sudut pandang untuk menyusun kesimpulan yang tidak menggeneralisasi kelompok tertentu."}'::jsonb,
  '{"A":4,"B":3,"C":2,"D":1,"E":5}'::jsonb,
  'E',
  'Pilihan terbaik adalah E karena mengajak siswa membandingkan berbagai sumber dan sudut pandang dapat membantu mereka memahami bahwa suatu peristiwa sejarah memiliki konteks yang beragam. Pendekatan ini juga mendorong siswa menilai informasi secara kritis sehingga tidak menarik kesimpulan mengenai karakter suatu kelompok hanya berdasarkan fakta atau peristiwa tertentu, sehingga mendapat skor 5. A juga tepat karena menggunakan sumber lain dapat memperluas perspektif siswa dan mengurangi ketergantungan pada satu sumber, tetapi belum secara langsung mengarahkan siswa untuk menghindari generalisasi terhadap kelompok tertentu, sehingga mendapat skor 4. B cukup baik karena menjelaskan pentingnya memahami konflik berdasarkan kondisi pada masanya dapat membantu siswa melihat peristiwa secara lebih objektif, tetapi belum memberikan langkah untuk membandingkan informasi yang telah digunakan siswa, sehingga mendapat skor 3. C kurang tepat karena mengarahkan siswa menyesuaikan bagian yang memberikan gambaran negatif dapat mengurangi kesan buruk terhadap suatu kelompok, tetapi berisiko membuat siswa hanya mengubah penyajian materi tanpa memahami bagaimana generalisasi tersebut terbentuk, sehingga mendapat skor 2. D menjadi pilihan paling tidak tepat karena membatasi penggunaan sumber tersebut belum membantu siswa mengembangkan kemampuan mengevaluasi informasi secara kritis dan tidak menyelesaikan cara pandang yang sudah terbentuk dari materi tersebut, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  100,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda menjadi anggota tim yang sedang mengevaluasi program kerja di instansi. Dalam rapat, seorang rekan memberikan kritik terhadap cara kerja tim dan menyampaikan beberapa hal yang menurutnya perlu diperbaiki. Beberapa anggota tim menganggap kritik tersebut sebagai bentuk ketidaksetiaan terhadap tim dan mulai menyarankan agar rekan tersebut tidak lagi dilibatkan dalam pembahasan tertentu. Sikap Anda adalah...',
  NULL,
  '{"A":"Mengingatkan tim bahwa kritik terhadap cara kerja perlu dipisahkan dari penilaian terhadap pribadi atau loyalitas seseorang.","B":"Menyarankan agar kritik disampaikan melalui forum evaluasi agar perbedaan pendapat tetap berada dalam pembahasan pekerjaan.","C":"Mengajak tim menilai isi kritik berdasarkan data dan tujuan perbaikan program sebelum menentukan tindak lanjutnya.","D":"Meminta rekan tersebut menyampaikan kembali kritiknya dengan mempertimbangkan kondisi dan usaha yang telah dilakukan tim.","E":"Mendukung keputusan tim untuk membatasi keterlibatan rekan tersebut sampai situasi dalam tim kembali kondusif."}'::jsonb,
  '{"A":4,"B":3,"C":5,"D":2,"E":1}'::jsonb,
  'C',
  'Pilihan terbaik adalah C karena mengajak tim menilai isi kritik berdasarkan data dan tujuan perbaikan membuat perbedaan pendapat diperlakukan sebagai bagian dari evaluasi, bukan sebagai ancaman terhadap kelompok. Pendekatan ini membantu menjaga sikap kritis sekaligus mencegah munculnya pola pikir bahwa anggota yang berbeda pandangan merupakan pihak yang harus dijauhkan, sehingga mendapat skor 5. A juga baik karena memisahkan kritik terhadap pekerjaan dari penilaian terhadap loyalitas seseorang dapat mencegah kritik berkembang menjadi konflik personal, tetapi belum secara langsung mengarahkan tim untuk menilai substansi kritik yang disampaikan, sehingga mendapat skor 4. B cukup tepat karena forum evaluasi dapat menjadi ruang yang lebih terarah untuk menyampaikan perbedaan pendapat, tetapi membatasi kritik pada forum tertentu belum memastikan bahwa substansi kritik benar-benar dipertimbangkan oleh tim, sehingga mendapat skor 3. D kurang tepat karena meminta rekan menyesuaikan cara penyampaian dengan kondisi tim dapat membantu menjaga suasana diskusi, tetapi berpotensi membuat perhatian bergeser dari substansi kritik kepada kenyamanan anggota tim, sehingga mendapat skor 2. E menjadi pilihan paling tidak tepat karena membatasi keterlibatan seseorang hanya karena menyampaikan kritik dapat membentuk lingkungan yang tidak terbuka terhadap perbedaan pendapat dan memperkuat anggapan bahwa kritik merupakan ancaman bagi kelompok, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  101,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda tergabung dalam tim yang sedang menyusun program pelayanan masyarakat. Dalam rapat, terjadi perbedaan pendapat mengenai konsep kegiatan. Salah satu rekan bersikeras agar usulan kelompoknya diterapkan sepenuhnya dan menganggap menerima sebagian usulan pihak lain sebagai bentuk pengkhianatan terhadap prinsip yang selama ini mereka pegang. Akibatnya, pembahasan mulai berjalan secara berkelompok dan sulit menemukan kesepakatan. Sikap Anda adalah...',
  NULL,
  '{"A":"Mengajak tim mengidentifikasi bagian usulan yang memiliki tujuan bersama agar dapat menjadi dasar penyusunan keputusan.","B":"Menyarankan agar setiap pihak mempertahankan usulannya sampai diperoleh pilihan yang paling sesuai dengan prinsip masing-masing.","C":"Mengusulkan pembahasan kembali dengan mempertimbangkan manfaat dan dampak dari setiap usulan terhadap tujuan program.","D":"Menyampaikan bahwa perbedaan pandangan merupakan hal yang wajar selama keputusan akhir tetap mengikuti kesepakatan tim.","E":"Mendukung usulan yang sejak awal dianggap paling sesuai dengan prinsip kelompok agar arah program tetap konsisten."}'::jsonb,
  '{"A":5,"B":2,"C":4,"D":3,"E":1}'::jsonb,
  'A',
  'Pilihan terbaik adalah A karena mengidentifikasi tujuan yang sama dapat menjadi titik temu bagi pihak yang memiliki pandangan berbeda tanpa meminta mereka meninggalkan prinsip yang dianggap penting. Pendekatan ini mendorong dialog, mengurangi polarisasi, dan menunjukkan bahwa mencari kesepakatan tidak selalu berarti mengorbankan nilai yang diyakini, sehingga mendapat skor 5. C juga baik karena mempertimbangkan manfaat dan dampak setiap usulan membantu tim mengambil keputusan berdasarkan tujuan program, tetapi belum secara langsung membangun titik temu di antara pihak yang sudah terpecah dalam mempertahankan pandangannya, sehingga mendapat skor 4. D cukup tepat karena mengakui perbedaan sebagai bagian dari proses kerja dan menekankan pentingnya kesepakatan tim, tetapi belum memberikan langkah konkret untuk mengatasi sikap yang menganggap kompromi sebagai bentuk pengkhianatan, sehingga mendapat skor 3. B kurang tepat karena membiarkan setiap pihak terus mempertahankan posisi masing-masing dapat memperpanjang perbedaan dan membuat proses pengambilan keputusan semakin sulit, sehingga mendapat skor 2. E menjadi pilihan paling tidak tepat karena mendukung satu kelompok berdasarkan kesesuaian prinsip justru dapat memperkuat pembelahan dalam tim dan menghilangkan ruang bagi dialog dengan pihak yang memiliki pandangan berbeda, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  102,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda merupakan guru yang ditunjuk sebagai pembina kegiatan siswa. Menjelang lomba antarsekolah, salah satu siswa meminta menggunakan akun sekolah untuk mengakses materi berbayar milik sekolah lain yang diperoleh dari temannya. Ia beralasan materi tersebut diperlukan agar tim sekolah dapat memenangkan lomba dan membawa nama baik sekolah. Padahal, penggunaan akun atau materi tersebut tidak diperbolehkan karena melanggar ketentuan hak akses yang diberikan pemiliknya. Sikap Anda adalah...',
  NULL,
  '{"A":"Mengarahkan siswa mencari sumber belajar lain yang dapat digunakan secara sah dan tetap membantu tim mempersiapkan lomba.","B":"Menjelaskan kepada siswa bahwa tujuan membawa nama baik sekolah tetap perlu dicapai dengan cara yang sesuai dengan ketentuan penggunaan materi.","C":"Meminta siswa memastikan terlebih dahulu apakah pemilik materi mengizinkan penggunaannya sebelum materi tersebut digunakan.","D":"Membiarkan siswa menggunakan materi tersebut untuk persiapan internal selama tidak membagikannya kepada pihak lain.","E":"Mengizinkan penggunaan materi karena keberhasilan tim dalam membawa nama baik sekolah dianggap lebih penting dalam situasi tersebut."}'::jsonb,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'A',
  'Pilihan A paling tepat karena guru tetap mendukung tujuan siswa untuk berprestasi sekaligus mengarahkan mereka menggunakan sumber yang diperoleh secara sah. Dengan demikian, siswa belajar bahwa pencapaian yang baik tetap harus diperoleh melalui cara yang dapat dipertanggungjawabkan, sehingga mendapat skor 5. B juga tepat karena menegaskan bahwa tujuan membawa nama baik sekolah tidak dapat dijadikan alasan untuk mengabaikan ketentuan penggunaan materi, tetapi belum memberikan alternatif konkret bagi siswa untuk memenuhi kebutuhan persiapannya, sehingga mendapat skor 4. C cukup tepat karena memastikan izin dari pemilik materi dapat mencegah penggunaan yang tidak semestinya, tetapi langkah tersebut masih bersifat menunggu kepastian izin dan belum langsung mengarahkan siswa pada alternatif yang dapat digunakan, sehingga mendapat skor 3. D kurang tepat karena membatasi penggunaan hanya untuk kebutuhan internal tetap tidak menyelesaikan persoalan mengenai hak akses materi dan dapat membuat siswa menganggap pelanggaran dapat diterima selama tidak diketahui pihak lain, sehingga mendapat skor 2. E menjadi pilihan paling tidak tepat karena membenarkan penggunaan materi berdasarkan tujuan membawa nama baik sekolah dapat menanamkan pemahaman bahwa tujuan yang dianggap baik dapat menjadi alasan untuk mengabaikan aturan, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  103,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda bertugas mengelola dokumen digital dalam sebuah tim. Sebuah laporan kegiatan sudah diperiksa dan disetujui pimpinan untuk dikirim kepada mitra. Saat melakukan pengecekan akhir, Anda menemukan bahwa file tersebut masih dapat diedit oleh beberapa anggota tim. Salah satu rekan mengusulkan agar akses tetap dibiarkan agar perubahan kecil dapat dilakukan dengan cepat jika ada koreksi dari mitra. Sikap Anda adalah...',
  NULL,
  '{"A":"Membatasi hak edit setelah dokumen disahkan dan menyimpan salinan final sebagai acuan bersama.","B":"Meminta anggota tim memberi tahu terlebih dahulu sebelum melakukan perubahan pada dokumen yang telah disahkan.","C":"Menyimpan dokumen final di lokasi khusus dan membiarkan file kerja tetap dapat diedit untuk kebutuhan internal.","D":"Mengingatkan anggota tim agar lebih berhati-hati ketika membuka dokumen yang telah disahkan.","E":"Membiarkan pengaturan akses tetap seperti semula karena perubahan kecil masih mungkin diperlukan setelah dokumen dikirim."}'::jsonb,
  '{"A":5,"B":3,"C":4,"D":2,"E":1}'::jsonb,
  'A',
  'Pilihan A paling tepat karena setelah dokumen disahkan, integritas versi final perlu dijaga agar isi yang telah disetujui tidak berubah secara tidak terkendali. Membatasi hak edit sekaligus menyimpan salinan final memberikan kontrol terhadap dokumen tanpa menghambat proses koreksi karena perubahan berikutnya dapat dilakukan melalui versi atau dokumen kerja yang berbeda, sehingga mendapat skor 5. C juga baik karena memisahkan dokumen final dan file kerja dapat menjaga keberadaan versi yang telah disahkan sekaligus mempertahankan fleksibilitas bagi tim, tetapi efektivitasnya bergantung pada kedisiplinan anggota dalam membedakan dan menggunakan kedua file tersebut, sehingga mendapat skor 4. B cukup tepat karena kewajiban memberi tahu sebelum melakukan perubahan dapat meningkatkan kontrol dan kesadaran anggota tim, tetapi masih memungkinkan perubahan langsung terjadi pada dokumen yang telah disahkan, sehingga pengendalian versi belum optimal, sehingga mendapat skor 3. D kurang tepat karena mengingatkan anggota agar berhati-hati hanya mengandalkan perilaku pengguna dan tidak mengatasi celah pada pengaturan hak akses dokumen, sehingga mendapat skor 2. E menjadi pilihan paling tidak tepat karena mempertahankan akses edit pada dokumen yang sudah disahkan dapat menyebabkan isi berubah tanpa melalui proses pemeriksaan ulang dan menyulitkan tim memastikan versi mana yang benar-benar menjadi dokumen resmi, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  104,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda bertugas membantu penyusunan laporan capaian program dari beberapa unit. Saat menggabungkan data, Anda menemukan setiap unit menggunakan format penulisan tanggal dan kode kegiatan yang berbeda sehingga beberapa data terbaca sebagai kategori yang keliru. Batas pengumpulan laporan tinggal satu hari. Sikap Anda adalah...',
  NULL,
  '{"A":"Menyatukan format data terlebih dahulu dan meminta setiap unit memeriksa kembali hasil penyesuaiannya.","B":"Menghubungi unit yang datanya paling banyak bermasalah untuk memastikan format yang seharusnya digunakan.","C":"Membuat aturan format yang sama untuk seluruh data kemudian melanjutkan proses penggabungan.","D":"Menggunakan data yang sudah tersedia agar laporan dapat diselesaikan sesuai batas waktu.","E":"Menandai data yang formatnya berbeda untuk diperiksa setelah laporan selesai disusun."}'::jsonb,
  '{"A":5,"B":3,"C":4,"D":1,"E":2}'::jsonb,
  'A',
  'Pilihan A paling tepat karena menyatukan format data terlebih dahulu membantu memastikan seluruh data dapat terbaca secara konsisten, sementara meminta setiap unit memeriksa kembali hasil penyesuaian membantu mencegah perubahan format justru menimbulkan kesalahan baru. Pendekatan ini menjaga kualitas data sekaligus melibatkan unit yang memahami sumber data masing-masing, sehingga mendapat skor 5. C juga tepat karena menetapkan format yang seragam dapat mengurangi kesalahan saat proses penggabungan, tetapi belum melibatkan unit terkait untuk memastikan bahwa penyesuaian tersebut sesuai dengan karakter data yang mereka miliki, sehingga mendapat skor 4. B cukup tepat karena menghubungi unit dengan data yang paling bermasalah dapat membantu memperoleh kejelasan mengenai format yang benar, tetapi hanya menyelesaikan persoalan pada satu unit dan belum memastikan konsistensi seluruh data, sehingga mendapat skor 3. E kurang tepat karena menunda pemeriksaan data yang berbeda hingga laporan selesai dapat membuat kesalahan masuk ke hasil akhir dan berpotensi memengaruhi kesimpulan laporan, sehingga mendapat skor 2. D menjadi pilihan paling tidak tepat karena menggunakan data apa adanya demi mengejar batas waktu dapat menyebabkan kategori data terbaca keliru dan menghasilkan laporan yang tidak akurat, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  105,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda menggunakan sistem otomatis untuk mengelompokkan pengaduan masyarakat berdasarkan jenis masalah. Saat melakukan pengecekan, Anda menemukan beberapa pengaduan masuk ke kategori yang keliru karena sistem hanya membaca kata tertentu dalam laporan. Hasil pengelompokan tersebut akan digunakan untuk menentukan prioritas penanganan. Sikap Anda adalah...',
  NULL,
  '{"A":"Mengoreksi pengaduan yang terlihat keliru sebelum hasil pengelompokan digunakan sebagai dasar penentuan prioritas.","B":"Menyampaikan kepada pengelola sistem bahwa terdapat kesalahan pengelompokan pada beberapa jenis pengaduan.","C":"Memeriksa pola kesalahan sistem, memperbaiki data yang terdampak, lalu menyampaikan temuan tersebut kepada pengelola sistem.","D":"Menggunakan hasil sistem terlebih dahulu dan memperbaikinya jika ditemukan masalah dalam proses penanganan.","E":"Membandingkan hasil pengelompokan sistem dengan sejumlah data secara manual sebelum digunakan untuk menentukan prioritas."}'::jsonb,
  '{"A":4,"B":3,"C":5,"D":1,"E":2}'::jsonb,
  'C',
  'Pilihan C paling tepat karena tidak hanya memperbaiki pengaduan yang sudah diketahui keliru, tetapi juga memeriksa pola kesalahan untuk mengetahui sejauh mana hasil sistem terdampak. Temuan tersebut kemudian disampaikan kepada pengelola sistem agar dapat menjadi bahan evaluasi dan perbaikan, sehingga hasil pengelompokan berikutnya lebih akurat dan dapat digunakan sebagai dasar penentuan prioritas, sehingga mendapat skor 5. A juga tepat karena mengoreksi data yang keliru sebelum digunakan dapat mencegah kesalahan dalam menentukan prioritas penanganan, tetapi tindakannya masih berfokus pada data yang sudah ditemukan dan belum mencari pola kesalahan yang mungkin terjadi pada pengaduan lainnya, sehingga mendapat skor 4. B cukup tepat karena menyampaikan masalah kepada pengelola sistem dapat menjadi langkah awal untuk memperbaiki kesalahan, tetapi belum memberikan penanganan terhadap data yang sudah terdampak dan belum memastikan hasil pengelompokan yang akan digunakan tetap akurat, sehingga mendapat skor 3. E kurang tepat karena pemeriksaan secara manual terhadap sejumlah data memang dapat membantu menemukan kesalahan, tetapi sampel pemeriksaan belum tentu mencakup seluruh pola kesalahan yang terjadi pada sistem, sehingga masih terdapat risiko data keliru digunakan sebagai dasar penentuan prioritas, sehingga mendapat skor 2. D menjadi pilihan paling tidak tepat karena menggunakan hasil sistem yang sudah diketahui memiliki kesalahan untuk menentukan prioritas dapat menyebabkan pengaduan tertentu memperoleh penanganan yang tidak sesuai, sedangkan perbaikan baru dilakukan setelah masalah terjadi, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  106,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Instansi Anda baru menerapkan aplikasi untuk mempercepat pendataan penerima program. Proses input menjadi lebih singkat, tetapi beberapa pegawai sering salah memilih kategori karena tampilan fitur baru berbeda dari sistem sebelumnya. Data tersebut akan langsung masuk ke database utama. Sikap Anda adalah...',
  NULL,
  '{"A":"Mengusulkan panduan singkat berdasarkan kesalahan yang paling sering terjadi dan meminta pegawai memeriksa data sebelum disimpan.","B":"Meminta pegawai lebih teliti saat memilih kategori sebelum memasukkan data ke sistem.","C":"Mencatat jenis kesalahan yang muncul untuk disampaikan kepada pengelola aplikasi sebagai bahan perbaikan.","D":"Mengidentifikasi bagian aplikasi yang paling sering menimbulkan kesalahan dan mengusulkan perbaikan alur input kepada pengelola sistem.","E":"Mengembalikan proses pendataan ke sistem lama sampai seluruh pegawai terbiasa dengan aplikasi baru."}'::jsonb,
  '{"A":5,"B":2,"C":3,"D":4,"E":1}'::jsonb,
  'A',
  'Pilihan A paling tepat karena memberikan solusi yang langsung dapat diterapkan untuk mengurangi kesalahan input sekaligus membantu pegawai beradaptasi dengan sistem baru. Panduan berdasarkan kesalahan yang sering terjadi dapat menjadi acuan yang lebih jelas, sedangkan pemeriksaan sebelum penyimpanan membantu mencegah data yang keliru masuk ke database utama, sehingga mendapat skor 5. D juga tepat karena mengidentifikasi bagian aplikasi yang sering menimbulkan kesalahan dan menyampaikan usulan perbaikan kepada pengelola dapat membantu menyelesaikan masalah dari sisi sistem, tetapi proses perbaikannya membutuhkan tindak lanjut dan belum memberikan langkah pengendalian kesalahan yang dapat langsung diterapkan oleh pegawai, sehingga mendapat skor 4. C cukup tepat karena pencatatan kesalahan dapat memberikan informasi kepada pengelola aplikasi untuk melakukan evaluasi, tetapi tindakan tersebut lebih berfokus pada pengumpulan temuan dan belum memberikan upaya langsung untuk mencegah kesalahan berulang saat proses input berlangsung, sehingga mendapat skor 3. B kurang tepat karena meminta pegawai lebih teliti hanya mengandalkan perhatian pengguna, sementara masalah juga berkaitan dengan perubahan tampilan dan alur aplikasi sehingga belum memberikan mekanisme pencegahan yang memadai, sehingga mendapat skor 2. E menjadi pilihan paling tidak tepat karena mengembalikan proses ke sistem lama hanya karena pegawai masih beradaptasi dapat menghambat penerapan sistem baru dan tidak menyelesaikan persoalan kemampuan pengguna dalam menggunakan aplikasi tersebut, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  107,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda membantu pengelolaan sistem pendaftaran kegiatan pelatihan. Setelah sistem digunakan, beberapa peserta mengeluhkan tombol dan petunjuk yang sulit dipahami sehingga mereka beberapa kali mengulang proses pendaftaran. Sebagian peserta akhirnya meminta bantuan petugas untuk menyelesaikan proses tersebut. Sikap Anda adalah...',
  NULL,
  '{"A":"Membuat panduan singkat berdasarkan bagian yang paling sering membingungkan peserta.","B":"Mencatat bagian sistem yang paling banyak menimbulkan kesulitan untuk disampaikan kepada pengelola.","C":"Mengidentifikasi pola kesulitan pengguna dan mengusulkan penyederhanaan alur serta petunjuk pada bagian yang paling bermasalah.","D":"Membantu peserta yang mengalami kendala agar seluruh pendaftaran dapat diselesaikan.","E":"Menyarankan peserta membaca petunjuk sistem dengan lebih teliti sebelum melakukan pendaftaran."}'::jsonb,
  '{"A":4,"B":3,"C":5,"D":2,"E":1}'::jsonb,
  'C',
  'Pilihan C paling tepat karena tidak hanya menangani keluhan peserta, tetapi juga mencari pola kesulitan untuk mengetahui bagian sistem yang menjadi sumber masalah. Usulan penyederhanaan alur dan petunjuk dapat membantu memperbaiki pengalaman pengguna secara lebih menyeluruh sehingga kendala tidak terus berulang pada peserta berikutnya, sehingga mendapat skor 5. A juga tepat karena panduan singkat dapat membantu peserta memahami bagian sistem yang membingungkan, tetapi solusi tersebut lebih berfokus pada membantu pengguna menyesuaikan diri dan belum menyelesaikan persoalan pada desain sistemnya, sehingga mendapat skor 4. B cukup tepat karena mencatat bagian yang paling sering menimbulkan kesulitan dapat menjadi bahan evaluasi bagi pengelola, tetapi belum memberikan usulan atau langkah perbaikan yang lebih konkret, sehingga mendapat skor 3. D kurang tepat karena membantu peserta menyelesaikan pendaftaran memang dapat mengatasi kendala secara langsung, tetapi hanya menyelesaikan masalah pada pengguna tertentu dan membuat petugas terus menjadi perantara ketika sistem digunakan, sehingga mendapat skor 2. E menjadi pilihan paling tidak tepat karena menganggap masalah terutama disebabkan oleh kurang telitinya peserta, padahal keluhan yang muncul berulang menunjukkan adanya persoalan pada alur atau petunjuk sistem yang perlu dievaluasi, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  108,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda mengelola aplikasi komunikasi internal. Dalam satu minggu terakhir, pegawai menerima banyak notifikasi otomatis dari berbagai fitur sehingga beberapa pengumuman penting terlewat. Sebagian pegawai kemudian memilih mematikan seluruh notifikasi aplikasi. Sikap Anda adalah...',
  NULL,
  '{"A":"Mengurangi notifikasi yang bersifat rutin dan mempertahankan notifikasi yang berkaitan dengan informasi penting.","B":"Mengingatkan pegawai untuk memeriksa aplikasi secara berkala agar informasi penting tetap diketahui.","C":"Menyampaikan kepada pengelola sistem bahwa terlalu banyak notifikasi mulai mengurangi efektivitas komunikasi.","D":"Mengelompokkan notifikasi berdasarkan tingkat kepentingannya dan mengusulkan pengaturan prioritas pada aplikasi.","E":"Membiarkan setiap pegawai menentukan sendiri notifikasi yang ingin diterima sesuai kebutuhannya."}'::jsonb,
  '{"A":5,"B":2,"C":3,"D":4,"E":1}'::jsonb,
  'A',
  'Pilihan A paling tepat karena mengurangi notifikasi yang tidak mendesak sekaligus mempertahankan pemberitahuan yang berkaitan dengan informasi penting dapat mengatasi masalah utama, yaitu banyaknya notifikasi yang membuat informasi prioritas terlewat. Langkah ini juga membantu menjaga komunikasi internal tetap efektif tanpa menghilangkan fungsi notifikasi secara keseluruhan, sehingga mendapat skor 5. D juga tepat karena mengelompokkan notifikasi berdasarkan tingkat kepentingan dapat membantu pengguna membedakan informasi yang perlu segera diperhatikan dan mengurangi gangguan dari pemberitahuan rutin, tetapi penerapannya membutuhkan pengaturan sistem yang mungkin memerlukan proses lebih lanjut, sehingga mendapat skor 4. C cukup tepat karena menyampaikan masalah kepada pengelola sistem dapat menjadi langkah awal untuk mengevaluasi pengaturan notifikasi, tetapi belum memberikan solusi yang dapat langsung mengurangi gangguan komunikasi, sehingga mendapat skor 3. B kurang tepat karena meminta pegawai memeriksa aplikasi secara berkala hanya memindahkan tanggung jawab kepada pengguna dan tidak mengatasi penyebab utama berupa terlalu banyak notifikasi yang masuk, sehingga mendapat skor 2. E menjadi pilihan paling tidak tepat karena menyerahkan seluruh pengaturan kepada masing-masing pegawai dapat membuat penerimaan informasi menjadi tidak seragam dan berisiko menyebabkan pengumuman penting kembali terlewat, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  109,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Instansi Anda menerapkan sistem otomatis untuk menghitung capaian program. Setelah beberapa bulan, sebagian pegawai hanya menggunakan hasil perhitungan sistem dan mulai kesulitan menjelaskan bagaimana angka tersebut diperoleh ketika pimpinan meminta penjelasan. Sikap Anda adalah...',
  NULL,
  '{"A":"Mengingatkan pegawai untuk tetap memahami dasar perhitungan meskipun prosesnya sudah dilakukan oleh sistem.","B":"Mengusulkan dokumentasi mengenai alur perhitungan agar pegawai memiliki rujukan ketika perlu menjelaskan hasil sistem.","C":"Memastikan pegawai memahami indikator dan alur perhitungan, serta tetap melakukan pengecekan terhadap hasil yang dihasilkan sistem.","D":"Meminta pengelola sistem memberikan penjelasan mengenai cara kerja aplikasi kepada seluruh pegawai.","E":"Mengandalkan hasil sistem selama aplikasi masih berjalan sesuai fungsi yang ditetapkan."}'::jsonb,
  '{"A":3,"B":4,"C":5,"D":2,"E":1}'::jsonb,
  'C',
  'Pilihan C paling tepat karena memastikan pegawai memahami indikator dan alur perhitungan sekaligus tetap melakukan pengecekan terhadap hasil sistem. Teknologi dapat membantu mempercepat pekerjaan, tetapi pegawai tetap perlu memahami dasar informasi yang dihasilkan agar mampu menjelaskan, menilai kewajaran, dan mempertanggungjawabkan hasil ketika digunakan dalam pengambilan keputusan, sehingga mendapat skor 5. B juga tepat karena dokumentasi alur perhitungan dapat menjadi rujukan ketika pegawai perlu memahami kembali proses yang dilakukan sistem, tetapi keberadaan dokumentasi belum menjamin pegawai benar-benar memahami cara kerja dan dasar perhitungannya, sehingga mendapat skor 4. A cukup tepat karena mengingatkan pegawai untuk memahami dasar perhitungan dapat mencegah ketergantungan berlebihan pada sistem, tetapi belum memberikan langkah konkret untuk membantu pegawai memahami kembali proses tersebut maupun memastikan hasil sistem tetap sesuai, sehingga mendapat skor 3. D kurang tepat karena meminta pengelola sistem memberikan penjelasan dapat membantu meningkatkan pemahaman pegawai, tetapi tanggung jawab untuk memahami indikator dan hasil pekerjaan juga perlu dibangun melalui proses belajar dan pengecekan di tingkat pengguna, sehingga mendapat skor 2. E menjadi pilihan paling tidak tepat karena menganggap sistem yang berjalan sesuai fungsi sudah cukup menjadi dasar kepercayaan terhadap hasil perhitungan. Sikap tersebut dapat membuat pegawai terlalu bergantung pada teknologi dan kesulitan mempertanggungjawabkan hasil ketika muncul pertanyaan atau ketidaksesuaian, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-37',
  110,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda menemukan fitur analisis pada aplikasi internal yang awalnya dibuat untuk membantu evaluasi pekerjaan. Beberapa pegawai mulai menggunakan hasil analisis tersebut untuk menilai kinerja rekan secara informal, meskipun fitur tersebut belum dirancang untuk tujuan tersebut. Sikap Anda adalah...',
  NULL,
  '{"A":"Mengingatkan pegawai agar hasil analisis digunakan sesuai tujuan yang ditetapkan dalam sistem.","B":"Mengusulkan agar penggunaan fitur tersebut diperjelas melalui panduan agar tidak menimbulkan penafsiran berbeda.","C":"Mengkaji tujuan penggunaan fitur dan mengusulkan batasan pemanfaatannya agar hasil sistem digunakan sesuai fungsi serta dapat dipertanggungjawabkan.","D":"Membiarkan penggunaannya selama hasil analisis tersebut tidak disampaikan kepada pihak luar.","E":"Meminta pegawai menggunakan hasil analisis hanya sebagai bahan pertimbangan dalam diskusi internal."}'::jsonb,
  '{"A":3,"B":4,"C":5,"D":1,"E":2}'::jsonb,
  'C',
  'Pilihan C paling tepat karena tidak langsung melarang penggunaan fitur, tetapi terlebih dahulu mengkaji tujuan awal dan risiko penggunaannya sebelum menetapkan batasan yang jelas. Langkah ini membantu memastikan hasil analisis digunakan sesuai fungsi, memiliki dasar yang jelas, dan tidak menjadi dasar penilaian informal yang berpotensi keliru terhadap rekan kerja, sehingga mendapat skor 5. B juga tepat karena panduan dapat membantu menyamakan pemahaman pegawai mengenai penggunaan fitur, tetapi belum secara langsung mempertimbangkan risiko atau batasan penggunaan hasil analisis untuk tujuan lain, sehingga mendapat skor 4. A cukup tepat karena mengingatkan pegawai untuk menggunakan fitur sesuai tujuan awal dapat mencegah penyalahgunaan, tetapi pendekatan tersebut masih sebatas mengingatkan dan belum memberikan mekanisme yang jelas untuk mengatur penggunaan fitur, sehingga mendapat skor 3. E kurang tepat karena tetap membolehkan hasil analisis digunakan dalam diskusi internal, padahal fitur tersebut belum dirancang untuk menilai kinerja individu. Penggunaan tersebut masih dapat memengaruhi penilaian terhadap rekan meskipun dilakukan dalam lingkungan internal, sehingga mendapat skor 2. D menjadi pilihan paling tidak tepat karena persoalan utamanya bukan sekadar apakah informasi disampaikan kepada pihak luar, melainkan apakah hasil analisis digunakan sesuai tujuan dan memiliki dasar yang tepat. Membiarkannya digunakan secara informal dapat menimbulkan kesimpulan yang tidak tepat mengenai kinerja pegawai, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  1,
  'TWK',
  'Pancasila',
  'sedang',
  'Pemerintah daerah akan menerapkan kecerdasan buatan dalam pelayanan publik untuk meningkatkan efisiensi, tetapi tetap harus menjamin perlindungan data dan kesetaraan layanan. Kedudukan Pancasila yang paling tepat dalam penyusunan kebijakan tersebut adalah …',
  NULL,
  '{"A":"Pedoman moral aparatur dalam menggunakan teknologi secara bertanggung jawab.","B":"Dasar penentu arah kebijakan agar pemanfaatan teknologi selaras dengan nilai bangsa.","C":"Identitas nasional yang membedakan pengelolaan teknologi Indonesia dari negara lain.","D":"Sumber semangat pemerintah untuk meningkatkan mutu layanan melalui teknologi.","E":"Pemersatu masyarakat agar layanan digital dapat diterima berbagai kelompok."}'::jsonb,
  NULL,
  'B',
  'Pancasila berkedudukan sebagai dasar negara, sehingga nilai-nilainya menjadi landasan dalam penyusunan, pelaksanaan, dan evaluasi kebijakan publik. Dalam kasus tersebut, penggunaan kecerdasan buatan tidak cukup dinilai dari kemampuannya mempercepat pelayanan, tetapi juga dari kesesuaiannya dengan nilai kemanusiaan dan keadilan. Perlindungan data mencerminkan penghormatan terhadap privasi dan martabat manusia yang sejalan dengan sila kedua. Sementara itu, kesetaraan layanan mencerminkan sila kelima karena manfaat teknologi harus dapat dirasakan secara adil, termasuk oleh masyarakat yang memiliki keterbatasan akses atau kemampuan digital. Opsi B paling tepat karena menempatkan Pancasila sebagai dasar penentu arah kebijakan, sehingga efisiensi tetap berjalan seiring dengan perlindungan hak masyarakat. Opsi A juga mencerminkan fungsi Pancasila, tetapi lebih menekankan pedoman perilaku aparatur ketika menggunakan teknologi, sedangkan persoalan utama dalam soal adalah landasan penyusunan kebijakan pemerintah. Opsi C menekankan Pancasila sebagai identitas nasional, padahal tujuan kebijakan bukan sekadar membedakan pengelolaan teknologi Indonesia dari negara lain. Opsi D menempatkan Pancasila sebagai pendorong semangat meningkatkan pelayanan, tetapi belum menjelaskan nilai yang menjadi dasar untuk menjamin perlindungan data dan kesetaraan layanan. Opsi E menekankan fungsi pemersatu masyarakat, sedangkan penerimaan berbagai kelompok belum dengan sendirinya menjamin bahwa kebijakan tersebut melindungi hak dan memberikan pelayanan secara adil.

Jawaban: B',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  2,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Gerakan separatis muncul di suatu daerah akibat ketidakpuasan terhadap pembangunan dan pelayanan publik. Langkah yang paling mencerminkan nilai Pancasila untuk menjaga keutuhan NKRI sekaligus mengatasi akar masalahnya adalah …',
  NULL,
  '{"A":"Memperkuat pendidikan kebangsaan dan pelayanan publik untuk menumbuhkan rasa memiliki terhadap negara.","B":"Mempercepat pemerataan pembangunan dengan melibatkan masyarakat dalam menentukan prioritasnya.","C":"Membuka dialog dengan masyarakat dan memperkuat kegiatan kebangsaan di daerah.","D":"Menegakkan hukum terhadap gerakan separatis disertai dialog dan pemerataan pembangunan.","E":"Meningkatkan kesejahteraan dan kerja sama sosial untuk mengurangi potensi perpecahan."}'::jsonb,
  NULL,
  'D',
  'Pancasila mengarahkan upaya menjaga keutuhan NKRI melalui persatuan, musyawarah, dan keadilan sosial. Dalam kasus tersebut, pemerintah perlu menangani ancaman perpecahan sekaligus mengatasi ketidakpuasan terhadap pembangunan dan pelayanan publik. Opsi D paling tepat karena memadukan penegakan hukum, dialog, dan pemerataan pembangunan. Penegakan hukum ditujukan pada tindakan yang melanggar hukum dengan tetap menghormati hak masyarakat, sedangkan dialog membuka ruang penyampaian aspirasi dan pemerataan pembangunan mengatasi sumber ketidakpuasan. Pendekatan tersebut mencerminkan sila ketiga, keempat, dan kelima secara terpadu. Opsi A mendukung kesadaran kebangsaan dan perbaikan pelayanan, tetapi belum mencakup penanganan langsung terhadap ancaman yang muncul. Opsi B kuat dalam mengatasi akar masalah melalui pembangunan yang adil dan partisipatif, tetapi belum mencakup aspek penegakan hukum terhadap tindakan yang mengancam keutuhan negara. Opsi C membuka komunikasi dengan masyarakat, tetapi belum secara tegas menawarkan perbaikan ketimpangan pembangunan dan pelayanan publik. Opsi E mendukung kesejahteraan serta kebersamaan, tetapi langkahnya masih umum dibandingkan pendekatan terpadu pada opsi D.

Jawaban: D.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  3,
  'TWK',
  'Pancasila',
  'sedang',
  'Seorang mahasiswa berpendapat bahwa Pancasila cukup dipahami sebagai pedoman moral masyarakat sehingga penyelenggaraan negara dapat menggunakan dasar lain selama dianggap lebih efektif. Analisis yang paling tepat terhadap pendapat tersebut berdasarkan kedudukan Pancasila adalah …',
  NULL,
  '{"A":"Tepat karena Pancasila terutama menjadi pedoman perilaku masyarakat dalam menjalankan kehidupan bersama.","B":"Tepat karena penyelenggaraan negara dapat menentukan landasan kebijakan sesuai kebutuhan perkembangan masyarakat.","C":"Kurang tepat karena Pancasila merupakan dasar negara yang menjadi landasan dalam penyelenggaraan kehidupan bernegara.","D":"Kurang tepat karena Pancasila merupakan identitas nasional yang membedakan bangsa Indonesia dengan bangsa lainnya.","E":"Kurang tepat karena Pancasila merupakan pemersatu yang menjaga kebersamaan masyarakat di tengah berbagai perbedaan."}'::jsonb,
  NULL,
  'C',
  'Pancasila tidak hanya berfungsi sebagai pedoman moral dalam kehidupan masyarakat tetapi juga berkedudukan sebagai dasar negara. Artinya seluruh penyelenggaraan kehidupan bernegara harus berlandaskan pada nilai-nilai Pancasila. Oleh karena itu pendapat bahwa negara dapat menggunakan dasar lain hanya karena dianggap lebih efektif tidak tepat secara konstitusional dan filosofis. Opsi C paling tepat karena langsung menegaskan kedudukan Pancasila sebagai dasar negara yang menjadi landasan dalam penyelenggaraan pemerintahan pembentukan kebijakan dan kehidupan kenegaraan secara umum. Opsi A kurang tepat karena mempersempit fungsi Pancasila hanya sebagai pedoman perilaku masyarakat padahal kedudukannya jauh lebih luas. Opsi B juga tidak tepat karena negara memang dapat menyesuaikan kebijakan dengan perkembangan zaman tetapi penyesuaian tersebut tetap harus berada dalam kerangka nilai Pancasila. Opsi D benar bahwa Pancasila merupakan bagian penting dari identitas nasional tetapi konteks soal tidak sedang membahas pembeda bangsa Indonesia dengan bangsa lain. Opsi E juga benar karena Pancasila berfungsi sebagai pemersatu bangsa namun persoalan utama dalam stimulus adalah dasar yang digunakan dalam penyelenggaraan negara. Karena itu jawaban yang paling tepat adalah opsi C.

Jawaban: C.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  4,
  'TWK',
  'UUD 1945',
  'sedang',
  'Seorang warga negara asing telah lama tinggal dan bekerja di Indonesia serta aktif dalam kegiatan sosial masyarakat. Ia beranggapan bahwa lama tinggal dan kontribusinya sudah cukup untuk menjadikannya warga negara Indonesia. Analisis konstitusional yang paling tepat terhadap anggapan tersebut adalah ….',
  NULL,
  '{"A":"Berdasarkan Pasal 26 ayat (1), status WNI bagi orang dari bangsa lain tetap harus diperoleh melalui pengesahan sesuai undang-undang","B":"Berdasarkan Pasal 26 ayat (2), setiap orang yang bertempat tinggal di Indonesia dapat memperoleh status WNI setelah menjadi penduduk.","C":"Berdasarkan Pasal 27 ayat (1), kesamaan kedudukan di dalam hukum membuat penduduk asing memiliki status kewarganegaraan yang sama.","D":"Berdasarkan Pasal 28D ayat (1), jaminan kepastian hukum memberikan hak kepada setiap penduduk untuk memperoleh kewarganegaraan Indonesia.","E":"Berdasarkan Pasal 28D ayat (4), hak atas status kewarganegaraan menjadikan setiap orang yang menetap di Indonesia dapat diakui sebagai WNI."}'::jsonb,
  NULL,
  'A',
  'Pasal 26 ayat (1) UUD NRI Tahun 1945 menyatakan bahwa warga negara ialah orang-orang bangsa Indonesia asli dan orang-orang bangsa lain yang disahkan dengan undang-undang sebagai warga negara. Dengan demikian lama tinggal bekerja atau berkontribusi di Indonesia tidak dengan sendirinya mengubah seorang WNA menjadi WNI. Opsi A paling tepat karena status kewarganegaraan bagi orang dari bangsa lain tetap harus diperoleh melalui mekanisme yang ditentukan oleh undang-undang. Opsi B terlihat tepat karena Pasal 26 ayat (2) membahas penduduk tetapi ketentuan tersebut membedakan penduduk dari warga negara. Status sebagai penduduk tidak otomatis menjadikan seseorang WNI. Opsi C kurang tepat karena Pasal 27 ayat (1) berkaitan dengan persamaan kedudukan warga negara di dalam hukum dan pemerintahan bukan mekanisme memperoleh kewarganegaraan. Opsi D juga tidak tepat karena Pasal 28D ayat (1) memberikan jaminan pengakuan dan kepastian hukum yang adil tetapi bukan dasar otomatis untuk memperoleh status WNI. Opsi E cukup menjebak karena Pasal 28D ayat (4) memang menjamin hak atas status kewarganegaraan tetapi hak tersebut tidak berarti setiap orang yang tinggal di Indonesia otomatis menjadi warga negara Indonesia. Ketentuan mengenai siapa yang menjadi WNI tetap tunduk pada Pasal 26 dan undang-undang yang mengaturnya.

Jawaban: A.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  5,
  'TWK',
  'UUD 1945',
  'sedang',
  'Di sebuah kabupaten terpencil sebagian besar puskesmas kekurangan tenaga kesehatan dan fasilitas dasar. Pemerintah daerah kemudian lebih banyak mengandalkan layanan kesehatan swasta yang tarifnya sulit dijangkau masyarakat berpenghasilan rendah. Kondisi tersebut paling bertentangan dengan Pasal 34 ayat (3) UUD NRI Tahun 1945 karena …',
  NULL,
  '{"A":"Masyarakat harus mengeluarkan biaya lebih besar untuk memperoleh pelayanan kesehatan yang sesuai kebutuhan.","B":"Masyarakat berpenghasilan rendah memiliki pilihan layanan kesehatan yang lebih terbatas dibandingkan kelompok lainnya.","C":"Negara belum menjalankan tanggung jawab menyediakan fasilitas pelayanan kesehatan yang layak bagi masyarakat.","D":"Ketergantungan pada layanan swasta membuat akses kesehatan masyarakat semakin dipengaruhi kemampuan ekonomi.","E":"Pemerintah daerah belum berhasil menyeimbangkan kebutuhan pelayanan kesehatan dengan perkembangan fasilitas swasta."}'::jsonb,
  NULL,
  'C',
  'Pasal 34 ayat (3) UUD NRI Tahun 1945 menegaskan bahwa negara bertanggung jawab atas penyediaan fasilitas pelayanan kesehatan dan fasilitas pelayanan umum yang layak. Dalam konteks soal masalah utamanya bukan sekadar tingginya biaya atau terbatasnya pilihan layanan kesehatan tetapi belum optimalnya tanggung jawab negara dalam menyediakan fasilitas kesehatan yang layak bagi masyarakat. Opsi C paling tepat karena kekurangan tenaga kesehatan dan fasilitas dasar di puskesmas menunjukkan bahwa pelayanan kesehatan yang menjadi tanggung jawab negara belum tersedia secara memadai. Opsi A menggambarkan akibat yang dirasakan masyarakat karena harus mengeluarkan biaya lebih besar tetapi bukan inti amanat Pasal 34 ayat (3). Opsi B juga menunjukkan ketimpangan akses kesehatan bagi masyarakat berpenghasilan rendah tetapi masih merupakan dampak dari keterbatasan fasilitas publik. Opsi D terlihat kuat karena ketergantungan pada layanan swasta memang dapat membuat akses kesehatan bergantung pada kemampuan ekonomi namun persoalan konstitusional utamanya tetap terletak pada belum terpenuhinya tanggung jawab negara. Opsi E berkaitan dengan pengelolaan pelayanan kesehatan tetapi lebih menekankan keseimbangan antara fasilitas pemerintah dan swasta. Oleh karena itu opsi C paling tepat karena secara langsung mencerminkan tanggung jawab konstitusional negara dalam menyediakan fasilitas pelayanan kesehatan yang layak.

Jawaban: C.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  6,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  'Perhatikan pernyataan berikut!

1) Menyampaikan kritik terhadap kebijakan kampus melalui forum terbuka dengan alasan yang dapat dipertanggungjawabkan.

2) Membentuk komunitas mahasiswa sesuai minat bersama dengan tetap mengikuti aturan yang berlaku.

3) Menjalankan keputusan mayoritas setelah seluruh anggota memperoleh kesempatan menyampaikan pandangan.

4) Mengikuti forum diskusi untuk menyampaikan pandangan sekaligus mendengarkan pendapat yang berbeda.

5) Menyusun hasil aspirasi anggota sebagai bahan pertimbangan dalam menetapkan program organisasi.

6) Menetapkan tata tertib forum bersama agar pembahasan berlangsung teratur dan keputusan dapat dilaksanakan.

Pasal 28E ayat (3) UUD NRI Tahun 1945 menjamin kebebasan berserikat, berkumpul, dan mengeluarkan pendapat. Tindakan yang secara langsung menunjukkan penggunaan hak tersebut ditunjukkan oleh nomor …',
  NULL,
  '{"A":"1, 3, dan 5","B":"1, 2, dan 4","C":"2, 3, dan 6","D":"2, 4, dan 5","E":"3, 5, dan 6"}'::jsonb,
  NULL,
  'B',
  'Pasal 28E ayat (3) UUD NRI Tahun 1945 menjamin kebebasan setiap orang untuk berserikat, berkumpul, dan mengeluarkan pendapat. Pernyataan 1 benar karena menyampaikan kritik melalui forum terbuka merupakan bentuk penggunaan hak untuk mengeluarkan pendapat secara bertanggung jawab. Pernyataan 2 benar karena membentuk komunitas sesuai minat bersama merupakan bentuk kebebasan berserikat. Pernyataan 4 juga benar karena mengikuti forum diskusi menunjukkan kebebasan berkumpul sekaligus menggunakan hak untuk menyampaikan pandangan. Pernyataan 3 terlihat demokratis karena keputusan mayoritas diambil setelah semua anggota menyampaikan pandangan, tetapi lebih menunjukkan mekanisme pengambilan keputusan daripada penggunaan hak yang dimaksud dalam pasal tersebut. Pernyataan 5 juga positif karena aspirasi anggota digunakan sebagai bahan penyusunan program, tetapi lebih berkaitan dengan pengelolaan aspirasi dalam organisasi. Pernyataan 6 penting untuk menjaga ketertiban forum, tetapi lebih mencerminkan tata kelola kegiatan daripada pelaksanaan langsung kebebasan berserikat, berkumpul, dan mengeluarkan pendapat. Oleh karena itu, tindakan yang paling langsung mencerminkan implementasi Pasal 28E ayat (3) ditunjukkan oleh pernyataan 1, 2, dan 4.

Jawaban: B.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  7,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Di tengah keberagaman suku budaya dan kuatnya arus globalisasi nasionalisme berperan penting dalam menjaga identitas nasional Indonesia. Pernyataan yang kurang tepat mengenai peran nasionalisme tersebut adalah …',
  NULL,
  '{"A":"Menyatukan berbagai identitas lokal dalam kesadaran sebagai bagian dari satu bangsa Indonesia.","B":"Memperkuat rasa memiliki terhadap bangsa agar masyarakat tetap memiliki jati diri di tengah pengaruh global.","C":"Mendorong pelestarian budaya daerah sebagai bagian dari kekayaan yang membentuk identitas nasional.","D":"Membentuk kesamaan cara pandang terhadap budaya agar keberagaman identitas masyarakat semakin seragam.","E":"Menumbuhkan tanggung jawab bersama untuk menjaga nilai kebangsaan di tengah kehidupan masyarakat yang beragam."}'::jsonb,
  NULL,
  'D',
  'Nasionalisme berperan penting dalam menjaga identitas nasional karena membangun rasa memiliki terhadap bangsa sekaligus menyatukan masyarakat yang memiliki latar belakang suku budaya dan daerah yang berbeda. Opsi D merupakan pernyataan yang kurang tepat karena nasionalisme tidak bertujuan menyeragamkan keberagaman identitas masyarakat. Identitas nasional Indonesia justru terbentuk dari berbagai identitas lokal yang tetap dipertahankan dan dipersatukan dalam kesadaran sebagai satu bangsa. Opsi A tepat karena nasionalisme menyatukan berbagai identitas lokal dalam satu identitas kebangsaan. Opsi B benar karena rasa memiliki terhadap bangsa membantu masyarakat mempertahankan jati diri di tengah pengaruh global. Opsi C juga tepat karena budaya daerah merupakan bagian dari kekayaan yang membentuk identitas nasional Indonesia. Opsi E benar karena nasionalisme mendorong tanggung jawab bersama untuk menjaga nilai kebangsaan dalam kehidupan masyarakat yang beragam. Oleh karena itu opsi D kurang tepat karena mengarah pada penyeragaman identitas sedangkan nasionalisme Indonesia menekankan persatuan dalam keberagaman.

Jawaban: D.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  8,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Pada masa pergerakan nasional Dr. Soetomo mendorong kaum terpelajar menggunakan pengetahuannya untuk ikut memajukan rakyat. Sekelompok mahasiswa ingin menerapkan semangat nasionalisme tersebut di daerah yang masih memiliki keterbatasan akses pendidikan. Program yang paling tepat adalah …',
  NULL,
  '{"A":"Memberikan beasiswa kepada pelajar berprestasi agar memperoleh kesempatan pendidikan yang lebih luas.","B":"Mengadakan kelas sejarah kebangsaan agar pelajar semakin memahami perjuangan dan identitas bangsanya.","C":"Menyalurkan perangkat belajar kepada sekolah agar fasilitas pendidikan masyarakat semakin memadai.","D":"Menyelenggarakan kompetisi antarsekolah agar pelajar terdorong meningkatkan prestasi dan membawa nama daerah.","E":"Mendampingi pemuda setempat mengelola pusat belajar agar pengetahuan dapat berkembang mandiri di masyarakat."}'::jsonb,
  NULL,
  'E',
  'Semangat nasionalisme Dr. Soetomo tidak hanya menekankan kemajuan kaum terpelajar tetapi juga tanggung jawab mereka untuk menggunakan pengetahuan demi kemajuan rakyat. Opsi E paling tepat karena mahasiswa tidak sekadar memberikan bantuan tetapi ikut mendampingi pemuda setempat agar mampu mengelola pusat belajar secara mandiri. Tindakan tersebut menunjukkan bahwa ilmu dan kemampuan kaum terpelajar digunakan untuk memberdayakan masyarakat sekaligus mendorong kemajuan bangsa secara berkelanjutan. Opsi A baik karena membuka kesempatan pendidikan bagi pelajar berprestasi tetapi manfaatnya lebih terbatas pada penerima tertentu. Opsi B positif karena memperkuat pemahaman sejarah dan identitas kebangsaan tetapi masih berfokus pada pengetahuan. Opsi C juga bermanfaat karena membantu menyediakan fasilitas belajar tetapi lebih menekankan bantuan sarana daripada pemberdayaan masyarakat. Opsi D dapat meningkatkan prestasi dan semangat pelajar tetapi lebih berorientasi pada kompetisi dan pencapaian individu. Oleh karena itu opsi E paling mencerminkan semangat nasionalisme Dr. Soetomo karena menghubungkan peran kaum terpelajar dengan usaha memajukan masyarakat secara nyata dan berkelanjutan.

Jawaban: E.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  9,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Setiap 17 Agustus masyarakat memperingati kemerdekaan melalui upacara perlombaan dan berbagai kegiatan kebangsaan. Makna nasionalisme yang seharusnya ditanamkan melalui peringatan tersebut adalah …',
  NULL,
  '{"A":"Menjaga peringatan kemerdekaan sebagai tradisi nasional yang menumbuhkan kebanggaan terhadap Indonesia.","B":"Menjadikan penghargaan terhadap perjuangan bangsa sebagai dorongan untuk melanjutkan cita-cita kemerdekaan.","C":"Memahami kembali sejarah perjuangan agar masyarakat semakin menghargai proses lahirnya kemerdekaan.","D":"Memanfaatkan kegiatan kemerdekaan untuk membangun interaksi sosial yang lebih akrab antarwarga.","E":"Meningkatkan keterlibatan masyarakat dalam kegiatan nasional agar rasa memiliki terhadap bangsa semakin kuat."}'::jsonb,
  NULL,
  'B',
  'Nasionalisme dalam peringatan 17 Agustus tidak hanya ditunjukkan melalui kemeriahan kegiatan atau rasa bangga terhadap Indonesia tetapi juga melalui kesadaran untuk menghargai perjuangan para pendahulu dan meneruskan cita-cita kemerdekaan. Opsi B paling tepat karena peringatan kemerdekaan seharusnya menjadi dorongan bagi masyarakat untuk mengisi kemerdekaan melalui kontribusi nyata bagi kemajuan bangsa. Dengan demikian nasionalisme tidak berhenti pada mengenang perjuangan masa lalu tetapi juga diwujudkan melalui tanggung jawab terhadap masa depan Indonesia. Opsi A benar karena peringatan kemerdekaan dapat menjaga tradisi nasional dan menumbuhkan kebanggaan terhadap bangsa tetapi masih menekankan aspek perayaan dan rasa bangga. Opsi C juga positif karena memahami sejarah perjuangan penting untuk menumbuhkan penghargaan terhadap kemerdekaan tetapi masih berfokus pada kesadaran terhadap masa lalu. Opsi D baik karena kegiatan kemerdekaan dapat mempererat hubungan sosial antarwarga tetapi lebih menekankan manfaat sosial daripada makna nasionalisme. Opsi E benar karena partisipasi masyarakat dapat memperkuat rasa memiliki terhadap bangsa tetapi belum menegaskan tanggung jawab untuk meneruskan cita-cita kemerdekaan. Oleh karena itu opsi B paling tepat karena menghubungkan penghargaan terhadap perjuangan bangsa dengan komitmen untuk mengisi dan melanjutkan cita-cita kemerdekaan.

Jawaban: B.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  10,
  'TWK',
  'Integritas',
  'sedang',
  'Sebuah tim pengembang Indonesia mendapat tawaran kerja sama dari perusahaan teknologi asing untuk mengembangkan AI. Mereka menerima kerja sama tersebut tetapi memastikan hasil pengembangannya tetap memberi manfaat bagi kepentingan strategis nasional. Sikap tersebut paling tepat mencerminkan …',
  NULL,
  '{"A":"Nasionalisme karena kerja sama global tetap diarahkan untuk mendukung kepentingan dan kemajuan bangsa.","B":"Patriotisme karena pengembang menunjukkan kerelaan berkorban demi mempertahankan kehormatan negara.","C":"Bela negara karena teknologi dikembangkan sebagai bentuk keterlibatan langsung dalam menghadapi ancaman negara.","D":"Profesionalisme karena pengembang memanfaatkan kerja sama internasional untuk meningkatkan kualitas inovasi dan keahlian.","E":"Integritas karena pengembang tetap konsisten mempertahankan prinsip dalam menjalankan kerja sama internasional."}'::jsonb,
  NULL,
  'A',
  'Nasionalisme merupakan kesadaran untuk menempatkan kepentingan bangsa dan negara sebagai pertimbangan penting dalam mengambil keputusan. Opsi A paling tepat karena tim pengembang tetap terbuka terhadap kerja sama internasional tetapi memastikan hasil pengembangan teknologi memberikan manfaat bagi kepentingan strategis Indonesia. Sikap tersebut menunjukkan bahwa nasionalisme tidak berarti menolak kerja sama dengan pihak asing tetapi mampu memanfaatkan peluang global dengan tetap mengutamakan kepentingan dan kemajuan bangsa. Opsi B kurang tepat karena patriotisme lebih menekankan keberanian dan kerelaan berkorban demi bangsa sedangkan dalam kasus tersebut tidak terdapat unsur pengorbanan yang menjadi fokus utama. Opsi C juga kurang tepat karena bela negara berkaitan dengan keikutsertaan warga dalam mempertahankan negara dari berbagai ancaman sedangkan stimulus tidak menunjukkan adanya ancaman yang sedang dihadapi. Opsi D positif karena kerja sama internasional memang dapat meningkatkan kualitas inovasi dan keahlian tetapi inti tindakan dalam soal bukan peningkatan kompetensi melainkan keberpihakan pada kepentingan nasional. Opsi E berkaitan dengan konsistensi terhadap prinsip tetapi integritas lebih menekankan kesesuaian antara nilai perkataan dan tindakan. Dalam stimulus hal yang paling menonjol adalah tetap menempatkan kepentingan bangsa dalam kerja sama global. Oleh karena itu sikap tersebut paling tepat mencerminkan nasionalisme.

Jawaban: A.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  11,
  'TWK',
  'Bela Negara',
  'sedang',
  'Di sebuah grup media sosial beredar video yang diduga hasil suntingan dan menuduh kelompok masyarakat tertentu ingin memecah belah Indonesia. Video tersebut mulai menimbulkan kecurigaan antarwarga dan berpotensi mengganggu persatuan. Tindakan yang kurang efektif secara langsung sebagai wujud bela negara dalam menghadapi penyebaran video tersebut adalah …',
  NULL,
  '{"A":"Mengingatkan anggota grup untuk tetap tenang sambil menghentikan sementara penyebaran video hingga kebenarannya diketahui.","B":"Memeriksa kebenaran video melalui sumber tepercaya sebelum memberikan penjelasan kepada anggota grup.","C":"Mengajak warga menghentikan penyebaran video setelah informasi di dalamnya terbukti menyesatkan.","D":"Melaporkan video melalui saluran yang tersedia setelah terbukti memuat informasi yang menyesatkan.","E":"Mengadakan kegiatan kebangsaan pada agenda berikutnya untuk memperkuat rasa persatuan di lingkungan warga."}'::jsonb,
  NULL,
  'E',
  'Bela negara tidak hanya diwujudkan melalui tindakan fisik tetapi juga melalui sikap menjaga persatuan bangsa dari ancaman informasi yang dapat memicu kecurigaan dan perpecahan di masyarakat. Dalam konteks soal tindakan yang dibutuhkan adalah langkah yang mampu merespons penyebaran video secara langsung. Opsi E merupakan tindakan yang kurang efektif secara langsung karena kegiatan kebangsaan memang dapat memperkuat rasa persatuan tetapi dampaknya lebih bersifat umum dan jangka panjang sehingga tidak segera menghentikan masalah yang sedang terjadi. Opsi A tepat karena membantu menjaga ketenangan warga sekaligus menahan penyebaran informasi sampai kebenarannya diketahui. Opsi B tepat karena pemeriksaan melalui sumber tepercaya menjadi dasar sebelum memberikan penjelasan kepada masyarakat. Opsi C juga tepat karena menghentikan penyebaran video yang telah terbukti menyesatkan dapat mencegah meluasnya kecurigaan antarwarga. Opsi D tepat karena pelaporan melalui saluran yang tersedia merupakan langkah nyata untuk membantu penanganan konten yang berpotensi mengganggu persatuan. Dengan demikian kegiatan kebangsaan tetap mencerminkan semangat bela negara tetapi kurang efektif apabila digunakan sebagai respons langsung terhadap penyebaran informasi menyesatkan.

Jawaban: E.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  12,
  'TWK',
  'Bela Negara',
  'sedang',
  'Banjir yang melanda beberapa desa menyebabkan banyak warga harus mengungsi. Seorang warga yang memiliki keterampilan pertolongan pertama ingin ikut membantu penanganan korban. Tindakan yang paling mencerminkan rela berkorban sekaligus kemampuan awal bela negara adalah …',
  NULL,
  '{"A":"Menyalurkan kebutuhan pokok melalui posko resmi untuk membantu memenuhi kebutuhan para pengungsi.","B":"Bergabung sebagai relawan medis untuk menggunakan keterampilan pertolongan pertama dalam membantu korban.","C":"Menggalang bantuan bersama masyarakat untuk mendukung pemenuhan kebutuhan warga yang terdampak bencana.","D":"Menyebarkan informasi kebutuhan pengungsi dari posko resmi agar bantuan masyarakat lebih tepat sasaran.","E":"Menyediakan tempat tinggal sementara bagi keluarga terdampak agar mereka memperoleh tempat yang aman."}'::jsonb,
  NULL,
  'B',
  'Rela berkorban dalam bela negara berarti kesediaan memberikan waktu tenaga kemampuan atau sumber daya untuk kepentingan masyarakat dan negara. Kemampuan awal bela negara juga mencakup pengetahuan serta keterampilan yang dapat digunakan dalam menghadapi keadaan darurat. Opsi B paling tepat karena warga tersebut tidak hanya bersedia membantu korban tetapi juga memanfaatkan keterampilan pertolongan pertama yang dimilikinya secara langsung. Tindakan tersebut menunjukkan pengorbanan sekaligus kesiapan kemampuan dalam menghadapi bencana. Opsi A positif karena membantu memenuhi kebutuhan pengungsi tetapi tidak memanfaatkan keterampilan khusus yang dimiliki. Opsi C juga mencerminkan kepedulian melalui penggalangan bantuan tetapi kontribusinya lebih berfokus pada dukungan kebutuhan korban. Opsi D bermanfaat untuk membantu penyaluran bantuan secara tepat tetapi tidak menunjukkan penggunaan kemampuan pertolongan pertama. Opsi E mencerminkan kesediaan berkorban dengan menyediakan tempat tinggal tetapi belum memanfaatkan keahlian yang dimiliki dalam penanganan korban.

Jawaban: B.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  13,
  'TWK',
  'Bela Negara',
  'sedang',
  'Di lingkungan kampus mulai muncul unggahan yang menyudutkan kelompok tertentu. Meskipun belum menimbulkan konflik terbuka, kondisi tersebut berpotensi merusak hubungan antarmahasiswa. Tindakan preventif yang paling tepat sebagai wujud bela negara untuk mencegah berkembangnya perpecahan adalah …',
  NULL,
  '{"A":"Membentuk forum dialog lintas kelompok untuk membangun komunikasi dan saling pengertian sejak awal.","B":"Melaporkan unggahan kepada pihak kampus setelah konten tersebut menimbulkan perselisihan antarmahasiswa.","C":"Menyelenggarakan kegiatan kebersamaan setelah muncul ketegangan untuk memulihkan hubungan antarmahasiswa.","D":"Memberikan pendampingan kepada kelompok yang terdampak agar tetap merasa aman di lingkungan kampus.","E":"Menyampaikan klarifikasi setelah terjadi perdebatan agar kesalahpahaman tidak berkembang semakin luas."}'::jsonb,
  NULL,
  'A',
  'Bela negara tidak hanya diwujudkan melalui pertahanan secara fisik, tetapi juga melalui upaya menjaga persatuan dan mencegah munculnya konflik yang dapat mengganggu kehidupan bersama. Dalam konteks soal, tindakan preventif berarti langkah yang dilakukan sebelum unggahan yang menyudutkan kelompok tertentu berkembang menjadi ketegangan atau perpecahan yang lebih luas. Opsi A paling tepat karena forum dialog lintas kelompok dibentuk sejak awal untuk membuka komunikasi, mengurangi prasangka, dan membangun saling pengertian antarmahasiswa sebelum konflik terbuka terjadi. Tindakan tersebut mencerminkan upaya menjaga persatuan sebagai salah satu bentuk bela negara di lingkungan masyarakat. Opsi B kurang tepat sebagai tindakan preventif karena pelaporan baru dilakukan setelah unggahan tersebut menimbulkan perselisihan antarmahasiswa sehingga sifatnya sudah reaktif. Opsi C juga lebih bersifat pemulihan karena kegiatan kebersamaan dilakukan setelah muncul ketegangan. Opsi D merupakan langkah yang baik untuk memberikan perlindungan dan rasa aman kepada kelompok yang terdampak, tetapi belum secara langsung mencegah hubungan antarkelompok memburuk sejak awal. Opsi E dapat membantu meredakan kesalahpahaman, tetapi klarifikasi baru dilakukan setelah perdebatan terjadi. Oleh karena itu, opsi A paling tepat karena secara langsung menekankan pencegahan sejak awal melalui komunikasi dan penguatan hubungan antarkelompok.

Jawaban: A.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  14,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Kesenian tradisional di suatu daerah semakin jarang dipelajari karena generasi muda lebih tertarik pada budaya populer luar yang dianggap lebih modern. Program komunitas pemuda yang paling tepat sebagai wujud cinta tanah air adalah …',
  NULL,
  '{"A":"Menampilkan kesenian tradisional setiap peringatan hari besar nasional.","B":"Mengampanyekan kebanggaan terhadap budaya Indonesia melalui media sosial.","C":"Melatih pemuda bersama seniman mengembangkan kesenian tradisional dalam kemasan kekinian.","D":"Mendokumentasikan kesenian tradisional dalam arsip digital agar tidak punah.","E":"Menyelenggarakan festival pertukaran budaya antardaerah dan antarnegara."}'::jsonb,
  NULL,
  'C',
  'Cinta tanah air diwujudkan dengan menjaga kebudayaan bangsa agar tetap hidup dan diwariskan kepada generasi berikutnya. Opsi C paling tepat karena pemuda dilibatkan langsung mempelajari kesenian tradisional dari seniman sekaligus mengemasnya secara kekinian sehingga pelestarian berlangsung aktif, sesuai minat generasi muda, dan tidak menghilangkan nilai tradisinya. Opsi A kurang tepat karena hanya dilakukan pada momen tertentu. Opsi B kurang tepat karena kampanye dapat menumbuhkan kebanggaan, tetapi belum membuat pemuda mempelajari kesenian tersebut. Opsi D kurang tepat karena dokumentasi hanya menyimpan, belum menghidupkan kembali kesenian. Opsi E kurang tepat karena berfokus pada pertukaran budaya, bukan pelestarian kesenian daerah.

Jawaban: C.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  15,
  'TWK',
  'Bela Negara',
  'sedang',
  'Sejumlah pulau terluar masih mengalami keterbatasan akses pendidikan, kesehatan, dan distribusi kebutuhan pokok. Kebijakan yang paling sesuai dengan Wawasan Nusantara untuk mencapai tujuan nasional adalah…',
  NULL,
  '{"A":"Meningkatkan patroli laut untuk menjaga kedaulatan wilayah kepulauan Indonesia.","B":"Membangun jaringan transportasi dan pelayanan publik antarpulau secara terpadu dan merata.","C":"Mengembangkan pusat ekonomi lokal di setiap pulau agar ketergantungan terhadap wilayah lain dapat dikurangi.","D":"Mendorong kerja sama antardaerah untuk memperluas layanan pendidikan dan kesehatan bagi masyarakat di pulau terluar.","E":"Memperkuat pelabuhan utama sebagai pusat distribusi sebelum memperluas jaringan pelayanan menuju pulau terluar."}'::jsonb,
  NULL,
  'B',
  'Wawasan Nusantara memandang seluruh wilayah Indonesia sebagai satu kesatuan yang utuh sehingga pembangunan harus dilakukan secara merata dan saling terhubung antardaerah. Dalam konteks soal keterbatasan akses pendidikan kesehatan dan distribusi kebutuhan pokok di pulau terluar menunjukkan perlunya kebijakan yang mampu memperkuat konektivitas sekaligus pemerataan pelayanan. Opsi B paling tepat karena pembangunan jaringan transportasi dan pelayanan publik antarpulau secara terpadu dapat membuka akses masyarakat terhadap pendidikan kesehatan dan kebutuhan pokok secara lebih merata. Kebijakan tersebut juga mendukung tercapainya tujuan nasional melalui pemerataan kesejahteraan di seluruh wilayah Indonesia. Opsi A sesuai dengan aspek pertahanan dan keamanan tetapi belum menjawab persoalan pelayanan dasar yang menjadi fokus utama. Opsi C positif karena dapat memperkuat ekonomi lokal tetapi belum menjamin keterhubungan antarpulau dan pemerataan akses layanan. Opsi D juga tepat dalam memperluas layanan pendidikan dan kesehatan tetapi belum menyelesaikan persoalan distribusi kebutuhan pokok serta konektivitas wilayah secara menyeluruh. Opsi E membantu memperkuat distribusi tetapi masih berpusat pada pelabuhan utama sehingga pelayanan ke pulau terluar belum menjadi prioritas langsung. Oleh karena itu opsi B paling lengkap dalam mencerminkan Wawasan Nusantara sebagai dasar pemerataan pembangunan dan kesejahteraan nasional.

Jawaban: B.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  16,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  'Setelah Sumpah Pemuda, sejumlah organisasi pemuda melebur menjadi Indonesia Muda. Beberapa tahun kemudian, muncul pula organisasi politik seperti Gerindo yang berorientasi nasional. Makna paling tepat dari perkembangan tersebut adalah…',
  NULL,
  '{"A":"Sumpah Pemuda menjadi dasar resmi pembentukan seluruh organisasi pergerakan nasional.","B":"Sumpah Pemuda memperluas kerja sama organisasi agar kegiatan masyarakat lebih terkoordinasi.","C":"Sumpah Pemuda menjadikan organisasi pemuda sebagai penggerak utama seluruh perjuangan politik.","D":"Sumpah Pemuda mendorong organisasi mengutamakan identitas Indonesia di atas kepentingan kedaerahan.","E":"Sumpah Pemuda menyatukan organisasi pergerakan agar menggunakan strategi perjuangan yang sama."}'::jsonb,
  NULL,
  'D',
  'Sumpah Pemuda menegaskan persatuan tanah air, bangsa, dan bahasa Indonesia. Pengaruh utamanya terhadap organisasi pergerakan adalah menguatnya orientasi perjuangan nasional yang melampaui ikatan suku, daerah, dan golongan. Opsi D paling tepat karena menunjukkan perubahan cara pandang organisasi dari perjuangan yang bersifat kedaerahan menuju perjuangan bersama atas nama bangsa Indonesia. Peleburan berbagai organisasi pemuda menjadi Indonesia Muda merupakan salah satu bentuk nyata semangat tersebut. Opsi A terlihat baik namun Sumpah Pemuda bukan dasar hukum yang secara resmi memerintahkan pembentukan organisasi. Pengaruhnya lebih bersifat ideologis dan politis dalam memperkuat kesadaran persatuan. Opsi B terlihat benar karena kerja sama antarorganisasi memang semakin berkembang. Namun, kerja sama hanya merupakan manfaat dari adanya Sumpah Pemuda, sedangkan makna utamanya adalah tumbuhnya identitas kebangsaan Indonesia. Opsi C kurang tepat karena pemuda memiliki peran penting, tetapi perjuangan nasional juga dilakukan oleh organisasi politik, tokoh masyarakat, kelompok keagamaan, dan unsur lainnya. Opsi E terlihat positif karena organisasi memiliki tujuan kemerdekaan yang sama. Namun, Sumpah Pemuda tidak membuat semua organisasi menggunakan strategi yang seragam. Setiap organisasi tetap dapat memilih cara perjuangan yang berbeda

Jawaban: D.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  17,
  'TWK',
  'Integritas',
  'sedang',
  'Setelah dilantik menjadi pejabat, Ki Hadjar Dewantara tetap hidup sederhana dan tidak mengadakan perayaan mewah. Keteladanan integritas yang paling tepat diterapkan oleh pejabat masa kini adalah…',
  NULL,
  '{"A":"Mengadakan acara syukuran sederhana dengan dana pribadi sebagai bentuk rasa terima kasih atas amanah yang diterima.","B":"Membatasi penggunaan fasilitas jabatan agar tidak menimbulkan kesan hidup berlebihan di hadapan masyarakat.","C":"Menyampaikan rencana kerja secara terbuka agar masyarakat mengetahui tanggung jawab yang akan dijalankan.","D":"Memastikan seluruh kegiatan setelah pelantikan dilaksanakan sesuai aturan dan anggaran yang telah ditetapkan.","E":"Menjalankan jabatan sebagai amanah dengan hidup wajar serta mengutamakan pengabdian yang bertanggung jawab."}'::jsonb,
  NULL,
  'E',
  'Integritas merupakan kesesuaian antara nilai perkataan dan tindakan yang tercermin dalam sikap jujur sederhana serta bertanggung jawab. Keteladanan Ki Hadjar Dewantara menunjukkan bahwa jabatan tidak digunakan untuk menunjukkan kemewahan tetapi dipandang sebagai amanah untuk mengabdi kepada masyarakat. Opsi E paling tepat karena menekankan sikap hidup wajar sekaligus tanggung jawab dalam menjalankan jabatan. Sikap tersebut mencerminkan bahwa integritas tidak hanya terlihat dari kepatuhan terhadap aturan tetapi juga dari kesadaran moral dalam menggunakan kedudukan untuk kepentingan publik. Opsi A terlihat baik karena menggunakan dana pribadi dan memilih syukuran sederhana tetapi masih berfokus pada bentuk perayaan setelah pelantikan. Opsi B juga mencerminkan kesederhanaan tetapi alasannya lebih menekankan kesan di hadapan masyarakat daripada kesadaran untuk menggunakan jabatan secara bertanggung jawab. Opsi C positif karena menunjukkan keterbukaan tetapi lebih berkaitan dengan transparansi kerja dan belum secara langsung mencerminkan keteladanan hidup sederhana. Opsi D tepat karena kepatuhan terhadap aturan dan anggaran merupakan bagian penting dari integritas tetapi masih lebih bersifat prosedural. Oleh karena itu opsi E paling lengkap karena memadukan kesederhanaan tanggung jawab dan orientasi pengabdian dalam menjalankan jabatan.

Jawaban: E.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  18,
  'TWK',
  'Integritas',
  'sedang',
  'Seorang kepala dinas mengetahui perusahaan milik kerabatnya melanggar ketentuan perizinan. Tindakan yang paling mencerminkan integritas dan prinsip bahwa setiap orang harus taat kepada hukum adalah…',
  NULL,
  '{"A":"Meminta perusahaan tersebut segera memperbaiki pelanggaran sebelum pemeriksaan resmi dilakukan.","B":"Menyerahkan penanganan kepada wakilnya agar hubungan keluarga tidak memengaruhi keputusan.","C":"Berkonsultasi dengan bagian hukum sebelum menentukan langkah yang tidak merugikan pihak mana pun.","D":"Menyatakan hubungan keluarganya secara terbuka dan memastikan perkara diproses oleh tim berwenang dengan prosedur yang sama.","E":"Memeriksa seluruh perusahaan sejenis agar penindakan tidak dianggap hanya ditujukan kepada kerabatnya."}'::jsonb,
  NULL,
  'D',
  'Integritas menuntut konsistensi dalam menaati hukum meskipun berhadapan dengan kepentingan pribadi atau hubungan keluarga. Pejabat juga harus menghindari konflik kepentingan dan memastikan tidak ada perlakuan khusus berdasarkan kedudukan seseorang. Opsi D paling tepat karena kepala dinas secara terbuka mengungkapkan hubungan keluarganya, tidak mencampuri pemeriksaan, serta memastikan pelanggaran diproses melalui prosedur yang berlaku. Tindakan ini menunjukkan transparansi, objektivitas, dan persamaan kedudukan di hadapan hukum. Opsi A kurang tepat karena memberikan kesempatan memperbaiki pelanggaran sebelum pemeriksaan resmi dapat menjadi perlakuan khusus yang belum tentu diberikan kepada pelanggar lain. Opsi B terlihat positif namun hanya menyerahkan tugas kepada wakil belum menjamin proses berlangsung independen dan sesuai prosedur yang sama. Opsi C tampak tepat karena konsultasi hukum dapat membantu menghasilkan keputusan yang tepat, tetapi orientasi agar tidak merugikan pihak tertentu dapat mengaburkan kewajiban utama untuk menindak pelanggaran sesuai hukum. Opsi E juga terlihat benar karena menunjukkan upaya menjaga objektivitas, tetapi kurang tepat karena pemeriksaan terhadap perusahaan lain tidak boleh dijadikan alasan untuk menunda atau mengalihkan penanganan pelanggaran yang telah diketahui.

Jawaban: D.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  19,
  'TWK',
  'Integritas',
  'sedang',
  'Sjafruddin Prawiranegara berpesan, “Malu itu bila mengambil milik orang lain atau mengambil uang negara.” Setelah perjalanan dinas selesai, seorang pegawai mengetahui masih terdapat sisa uang yang tidak terpakai. Tindakan yang paling mencerminkan pesan tersebut adalah…',
  NULL,
  '{"A":"Mengalihkan sisa uang untuk memenuhi kebutuhan operasional unit yang belum memperoleh anggaran.","B":"Menyerahkan sisa uang kepada bendahara agar dapat digunakan dalam kegiatan dinas berikutnya.","C":"Mencatatnya sebagai penghematan dan mengusulkan pemanfaatannya untuk program yang lebih prioritas.","D":"Melaporkan sisa uang kepada atasan dan menyimpannya sampai memperoleh keputusan lebih lanjut.","E":"Mengembalikan sisa uang ke kas negara sesuai prosedur serta melaporkan bukti pertanggungjawabannya."}'::jsonb,
  NULL,
  'E',
  'Pesan Sjafruddin Prawiranegara menegaskan bahwa uang negara harus dijaga dan digunakan hanya sesuai peruntukannya. Integritas tidak cukup ditunjukkan dengan tidak mengambil uang tersebut untuk kepentingan pribadi, tetapi juga dengan mempertanggungjawabkannya secara jujur, transparan, dan sesuai prosedur. Opsi E paling tepat karena pegawai mengembalikan sisa uang ke kas negara dan melengkapinya dengan bukti pertanggungjawaban. Tindakan tersebut menunjukkan kejujuran, tanggung jawab, transparansi, dan kepatuhan terhadap aturan dalam mengelola uang negara. Opsi A terlihat baik karena kebutuhan operasional unit memang berkaitan dengan kepentingan organisasi. Namun, pegawai tidak berwenang mengalihkan sisa anggaran secara langsung meskipun tujuannya baik. Opsi B terlihat baik karena penyerahan kepada bendahara sesuai jalur administrasi, tetapi tujuannya keliru sebab sisa perjalanan dinas tidak dapat otomatis digunakan untuk kegiatan berikutnya tanpa proses pengembalian dan penganggaran yang sah. Opsi C positif karena mencatat penghematan dan mengusulkan pemanfaatannya menunjukkan kepedulian terhadap efektivitas anggaran. Namun, usulan program tidak menggantikan kewajiban untuk terlebih dahulu mengembalikan sisa uang negara. Opsi D tampak aman karena melapor kepada atasan menunjukkan keterbukaan dan kehati-hatian. Namun, menyimpan uang tersebut sampai ada keputusan dapat memperpanjang penguasaan atas uang negara yang seharusnya segera dipertanggungjawabkan sesuai prosedur.

Jawaban: E.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  20,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  'Perhatikan pernyataan berikut!

1) BPUPKI dimanfaatkan tokoh Indonesia untuk mempersiapkan dasar negara.

2) Pembentukan BPUPKI menandakan bahwa Jepang telah menyerahkan kedaulatan politik kepada bangsa Indonesia.

3) Perbedaan gagasan dalam sidang menjadi bagian dari proses perumusan dasar negara.

4) Gagasan dalam Sidang I menjadi rumusan dasar negara yang tidak lagi memerlukan pembahasan lanjutan.

5) Sidang I BPUPKI menjadi tahap penting dalam proses lahirnya Pancasila.

Pernyataan yang tepat mengenai peran BPUPKI dalam proses perumusan dasar negara ditunjukkan oleh nomor…',
  NULL,
  '{"A":"1, 2, dan 3","B":"1, 3, dan 5","C":"2, 3, dan 4","D":"1, 4, dan 5","E":"2, 4, dan 5"}'::jsonb,
  NULL,
  'B',
  'BPUPKI dibentuk pada masa pendudukan Jepang, tetapi keberadaannya dimanfaatkan oleh para tokoh Indonesia untuk membahas berbagai hal yang berkaitan dengan persiapan negara merdeka, termasuk perumusan dasar negara. Sidang I BPUPKI yang berlangsung pada 29 Mei–1 Juni 1945 menjadi tahap penting karena dalam sidang tersebut muncul berbagai gagasan mengenai dasar negara yang kemudian berkembang dalam proses perumusan Pancasila. Pernyataan 1 tepat karena para tokoh Indonesia memanfaatkan BPUPKI sebagai forum untuk membahas dasar negara bagi Indonesia merdeka. Pernyataan 2 kurang tepat karena pembentukan BPUPKI tidak berarti Jepang telah menyerahkan kedaulatan kepada bangsa Indonesia. Pada saat itu Indonesia masih berada di bawah pendudukan Jepang. Pernyataan 3 tepat karena perbedaan gagasan para tokoh dalam sidang merupakan bagian dari proses mencari rumusan dasar negara yang dapat diterima bersama. Pernyataan 4 kurang tepat karena gagasan dalam Sidang I belum menjadi rumusan dasar negara yang final. Proses perumusan masih berlanjut melalui Panitia Sembilan, Piagam Jakarta, hingga akhirnya Pancasila tercantum dalam Pembukaan UUD 1945 yang disahkan PPKI pada 18 Agustus 1945. Pernyataan 5 tepat karena Sidang I BPUPKI merupakan salah satu tahap penting dalam rangkaian sejarah lahirnya Pancasila. Oleh karena itu, pernyataan yang tepat adalah 1, 3, dan 5.

Jawaban: B.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  21,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Suatu daerah mengalami pertumbuhan investasi, tetapi masyarakat setempat belum memperoleh manfaat yang seimbang. Jika dikaitkan dengan lahirnya pergerakan nasional akibat eksploitasi kolonial, tindakan generasi muda yang paling tepat adalah…',
  NULL,
  '{"A":"Mengembangkan usaha lokal agar masyarakat lebih mandiri dalam menghadapi persaingan ekonomi.","B":"Mengadakan dialog dengan perusahaan untuk menyampaikan kebutuhan masyarakat sekitar.","C":"Membangun gerakan lintas kelompok berbasis data untuk memperjuangkan pengelolaan sumber daya yang adil melalui jalur konstitusional.","D":"Meningkatkan pendidikan sejarah agar masyarakat memahami dampak eksploitasi pada masa kolonial.","E":"Menyelenggarakan pelatihan kerja agar masyarakat dapat terlibat dalam kegiatan investasi di daerahnya."}'::jsonb,
  NULL,
  'C',
  'Eksploitasi pada masa Tanam Paksa dan politik liberal menimbulkan penderitaan serta rasa senasib. Dalam perkembangannya, kesadaran tersebut diolah melalui organisasi modern menjadi perjuangan bersama yang lebih luas. Nilai yang dapat diterapkan pada masa kini adalah menyatukan masyarakat dan memperjuangkan keadilan melalui cara yang terorganisasi, berdasarkan fakta, serta sesuai hukum. Opsi A positif namun tindakan ini lebih berfokus pada kemampuan masyarakat menghadapi persaingan dan belum memperjuangkan perbaikan kebijakan pengelolaan sumber daya. Pada opsi B dialog dengan perusahaan merupakan cara damai dan konstruktif. namun penyelesaian hanya melalui perusahaan belum tentu menyentuh aturan dan kebijakan yang menyebabkan pembagian manfaat tidak seimbang. Opsi D, dengan mempelajari sejarah dapat membangun kesadaran masyarakat. Namun, tindakan ini masih bersifat edukatif dan belum langsung memperjuangkan penyelesaian masalah yang sedang terjadi. Opsi E baik karena dengan pelatihan kerja dapat memperluas kesempatan masyarakat memperoleh manfaat ekonomi. Namun, tindakan tersebut belum memastikan pengelolaan sumber daya dan pembagian manfaat dilakukan secara adil.

Jawaban: C.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  22,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Pada masa pergerakan nasional, media cetak digunakan untuk menyebarkan gagasan kebangsaan dan menyatukan perjuangan. Penerapan semangat tersebut pada era digital yang paling tepat adalah…',
  NULL,
  '{"A":"Membangun kanal sejarah digital untuk menumbuhkan kesadaran kebangsaan generasi muda.","B":"Menggerakkan komunitas dan tokoh publik untuk memperluas pesan persatuan nasional.","C":"Membentuk forum digital terverifikasi untuk menyebarkan gagasan kebangsaan dan menyatukan gerakan masyarakat.","D":"Mengembangkan jaringan pelaporan bersama untuk mencegah konten yang merusak persatuan.","E":"Mengadakan literasi digital berbasis komunitas untuk meningkatkan tanggung jawab bermedia."}'::jsonb,
  NULL,
  'C',
  'Opsi C paling tepat karena memuat dua fungsi utama media pada masa pergerakan nasional, yaitu menyebarkan gagasan kebangsaan dan menghubungkan berbagai kelompok dalam gerakan bersama. Penggunaan informasi terverifikasi juga sesuai dengan tantangan media pada era digital. Opsi A terlihat benar karena konten sejarah dapat meningkatkan kesadaran kebangsaan. Namun, tindakan ini lebih berfokus pada pendidikan sejarah dan belum menjalankan fungsi konsolidasi gerakan masyarakat. Opsi B positif karena melibatkan komunitas dan tokoh publik dalam menyebarkan persatuan. Namun, fokusnya masih pada perluasan pesan dan belum membentuk ruang bersama untuk mengolah gagasan serta mengorganisasi tindakan masyarakat. Opsi D baik karena mencegah konten yang merusak persatuan merupakan bentuk menjaga keutuhan bangsa. Namun, tindakan tersebut lebih bersifat reaktif terhadap ancaman dan belum memanfaatkan media. Opsi E juga baik karena literasi digital membuat masyarakat lebih bertanggung jawab dalam menggunakan media. Namun, tindakan ini berfokus pada peningkatan kecakapan individu, bukan pada penyatuan kelompok dalam perjuangan kepentingan bangsa.

Jawaban: C.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  23,
  'TWK',
  'Bhinneka Tunggal Ika',
  'sedang',
  'Dalam kepanitiaan kampus yang anggotanya berasal dari berbagai daerah, pembagian tugas mulai dipengaruhi anggapan bahwa mahasiswa dari daerah tertentu biasanya lebih tegas, teliti, atau pandai berkomunikasi. Sikap yang paling sesuai dengan Bhinneka Tunggal Ika untuk mencegah stereotip adalah …',
  NULL,
  '{"A":"Membagi tugas berdasarkan minat dan kemampuan setiap anggota dengan tetap memberi kesempatan yang sama kepada semua.","B":"Menggabungkan anggota dari berbagai daerah agar setiap tim memiliki pengalaman dan cara kerja yang lebih beragam.","C":"Mempertimbangkan karakter yang umum dikenal dari setiap daerah sebagai salah satu dasar awal pembagian tugas.","D":"Memberi kesempatan anggota mencoba beberapa peran sebelum menentukan tugas yang paling sesuai dengan kemampuannya.","E":"Mengevaluasi pembagian tugas berdasarkan hasil kerja agar kemampuan setiap anggota dinilai secara lebih objektif."}'::jsonb,
  NULL,
  'A',
  'Bhinneka Tunggal Ika menuntut penghargaan terhadap keberagaman tanpa menjadikan identitas suku atau daerah sebagai dasar untuk menilai kemampuan seseorang. Opsi A paling tepat karena pembagian tugas dilakukan berdasarkan minat dan kemampuan individu serta tetap memberikan kesempatan yang sama kepada seluruh anggota. Sikap tersebut mencegah seseorang dinilai hanya berdasarkan kelompok asalnya. Opsi B juga baik karena tim yang beragam dapat memperluas interaksi dan pemahaman antardaerah, tetapi belum secara langsung memastikan bahwa penilaian terhadap anggota dilakukan secara individual. Opsi C terlihat positif karena hanya menjadikan karakter daerah sebagai pertimbangan awal, tetapi tetap mengandung stereotip karena kemampuan seseorang diasumsikan berdasarkan identitas daerahnya. Opsi D tepat karena memberi kesempatan anggota menunjukkan kemampuan sebelum tugas ditetapkan. Opsi E juga baik karena penilaian dilakukan berdasarkan hasil kerja yang nyata. Oleh karena itu opsi A paling lengkap karena sejak awal menempatkan individu berdasarkan kemampuan dan kesempatan yang setara bukan berdasarkan stereotip kelompok.

Jawaban: A.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  24,
  'TWK',
  'UUD 1945',
  'sedang',
  'Pasal 29 ayat (2) UUD NRI Tahun 1945 menjamin kemerdekaan setiap penduduk untuk memeluk agama dan beribadat menurut agama serta kepercayaannya. Dalam sebuah kegiatan kampus mahasiswa mendapat ruang menjalankan ibadah masing-masing lalu kembali bekerja bersama dalam satu program. Makna utama Bhinneka Tunggal Ika yang tercermin dari kondisi tersebut adalah …',
  NULL,
  '{"A":"Kesetaraan dapat diwujudkan dengan memberikan kesempatan beribadah yang sama kepada setiap peserta.","B":"Toleransi dapat dibangun dengan menghormati pelaksanaan ibadah sesuai keyakinan masing-masing.","C":"Perbedaan keyakinan tetap dihormati tanpa menghalangi persatuan dalam mencapai tujuan bersama.","D":"Ketertiban kegiatan dapat dijaga dengan menyesuaikan jadwal terhadap kebutuhan ibadah para peserta.","E":"Keharmonisan dapat dipelihara dengan memberikan ruang keagamaan sesuai kebutuhan setiap kelompok."}'::jsonb,
  NULL,
  'C',
  'Bhinneka Tunggal Ika menegaskan bahwa perbedaan agama dan keyakinan tidak menghalangi masyarakat untuk tetap hidup bersama dalam persatuan. Dalam konteks soal Pasal 29 ayat (2) menjamin kebebasan setiap penduduk untuk memeluk agama dan menjalankan ibadah sesuai keyakinannya. Opsi C paling tepat karena menunjukkan bahwa perbedaan keyakinan tetap dihormati sementara kebersamaan dalam mencapai tujuan bersama tetap dipertahankan. Sikap tersebut mencerminkan persatuan tanpa menghilangkan keberagaman yang menjadi inti Bhinneka Tunggal Ika.Opsi A benar dalam konteks kesetaraan tetapi lebih menekankan pemberian kesempatan yang sama untuk beribadah. Opsi B juga tepat sebagai bentuk toleransi namun masih berfokus pada penghormatan terhadap pelaksanaan ibadah. Opsi D berkaitan dengan pengaturan teknis kegiatan agar kebutuhan ibadah dapat diakomodasi. Opsi E juga positif karena memberi ruang sesuai kebutuhan setiap kelompok tetapi belum secara langsung menunjukkan persatuan di tengah perbedaan. Oleh karena itu opsi C paling tepat karena memadukan penghormatan terhadap keyakinan dengan komitmen untuk tetap bersatu dalam tujuan bersama.

Jawaban: C.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  25,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  '(1) Pergeseran tren interaksi digital menunjukkan bahwa konsumen kini semakin kebal dan kritis terhadap konten promosi yang bersifat hard-selling di berbagai platform media sosial. (2) Berbagai riset pasar mengonfirmasi bahwa audiens cenderung mengabaikan iklan konvensional dan beralih mencari format penceritaan visual yang menyentuh aspek emosional. (3) Fenomena ini menuntut para perancang kampanye untuk merombak total pendekatan penyusunan naskah agar tidak sekadar menonjolkan keunggulan fitur teknis produk. (4) Penggunaan figur otoritas lokal atau testimoni autentik dari pengguna sebelumnya terbukti jauh lebih ampuh dalam membangun kepercayaan publik sekaligus menembus ketatnya algoritma platform. (5) Berbagai adaptasi terhadap kompleksitas perilaku audiens tersebut menjadikan pendekatan storytelling yang humanis sebagai fondasi mutlak bagi keberhasilan pemasaran di era modern.

Gagasan utama paragraf tersebut adalah...',
  NULL,
  '{"A":"Pergeseran tren digital yang membuat konsumen semakin kritis terhadap promosi hard-selling.","B":"Penggunaan testimoni autentik untuk menembus algoritma dan membangun kepercayaan audiens.","C":"Pentingnya pendekatan storytelling yang humanis sebagai penentu keberhasilan strategi pemasaran.","D":"Tuntutan bagi perancang kampanye untuk merombak naskah yang hanya menonjolkan fitur produk.","E":"Pengaruh perubahan perilaku audiens terhadap penurunan efektivitas iklan konvensional di media sosial."}'::jsonb,
  NULL,
  'C',
  'Paragraf di atas disusun dengan pola pengembangan induktif, di mana gagasan utamanya diletakkan di akhir paragraf (kalimat 5). Kalimat (1) hingga (4) secara spesifik membedah fenomena penolakan terhadap iklan hard-selling, peralihan minat ke aspek emosional, urgensi perombakan naskah, hingga taktik testimoni autentik, yang kesemuanya mutlak berfungsi sebagai kalimat penjelas (rincian khusus).

Jawaban: C',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  26,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  '(1) Pergeseran tren konsumsi masyarakat menjelang akhir kuartal menuntut divisi pemasaran untuk merancang ulang pendekatan komunikasi komersial mereka secara menyeluruh. (2) Analisis data historis menunjukkan bahwa kampanye berbasis pemberian diskon konvensional tidak lagi cukup untuk menciptakan tingkat retensi pelanggan jangka panjang. (3) Oleh sebab itu, pembangunan ekosistem kemitraan melalui konsolidasi jaringan afiliasi kini menjadi strategi paling esensial dalam menjaga stabilitas ekspansi bisnis. (4) Melalui skema pembagian margin keuntungan yang transparan, para mitra ini dapat bertindak secara organik sebagai perpanjangan tangan merek di berbagai wilayah strategis. (5) Sinergi berkelanjutan dengan para agen lapangan tersebut pada akhirnya akan menekan biaya akuisisi pelanggan baru secara terukur dan efisien.

Kalimat utama paragraf tersebut ditunjukkan oleh nomor...',
  NULL,
  '{"A":"(1)","B":"(2)","C":"(3)","D":"(4)","E":"(5)"}'::jsonb,
  NULL,
  'C',
  'Paragraf tersebut dikembangkan dengan pola ineratif yang meletakkan pokok pikiran utamanya di bagian tengah teks sebagai gagasan untuk paragraf tersebut. Kalimat (1) dan (2) murni berfungsi sebagai pengantar yang menguraikan latar belakang masalah berupa pergeseran tren dan inefisiensi kampanye diskon, sedangkan kalimat (4) dan (5) merupakan penjelas teknis yang menjabarkan bagaimana skema kemitraan pada kalimat (3) dieksekusi beserta dampak efisiensinya.

Jawaban: C',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  27,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  '(1) Perluasan jaringan promosi melalui sistem afiliasi kini menjadi andalan berbagai entitas bisnis untuk mempenetrasi ceruk pasar yang lebih spesifik. (2) Pendekatan taktis ini dinilai sangat efisien mengingat anggaran pemasaran murni dikeluarkan hanya ketika terjadi konversi penjualan yang terverifikasi. (3) Walaupun menjanjikan tingkat pengembalian investasi yang optimal, tata kelola ribuan mitra afiliasi menuntut ketersediaan infrastruktur pelacakan data yang presisi. (4) Tanpa adanya dasbor analitik yang transparan, perusahaan berisiko tinggi menghadapi sengketa pencatatan komisi yang berpotensi menghancurkan kepercayaan publik. (5) Keterlambatan distribusi hak finansial akibat pembukuan yang manual sering kali memicu eksodus massal para agen promosi tersebut ke pangkuan kompetitor.

Kesimpulan yang paling tepat untuk paragraf tersebut adalah...',
  NULL,
  '{"A":"Sistem pemasaran afiliasi merupakan taktik paling efisien untuk mempenetrasi ceruk pasar karena anggarannya berbasis konversi nyata.","B":"Keterlambatan pembayaran hak finansial mitra afiliasi akan memicu sengketa pencatatan komisi dan eksodus massal ke kompetitor.","C":"Perusahaan wajib merancang dasbor analitik yang transparan agar tidak kehilangan seluruh anggaran pemasarannya di era digital.","D":"Tingkat pengembalian investasi promosi yang optimal hanya dapat dicapai apabila entitas bisnis mampu mengakuisisi agen dari kompetitor.","E":"Keberhasilan strategi pemasaran afiliasi sangat bergantung pada kesiapan infrastruktur teknologi pelacakan data perusahaan."}'::jsonb,
  NULL,
  'E',
  'Kesimpulan merupakan hasil sintesis dari seluruh gagasan yang diuraikan dalam teks. Paragraf tersebut menyajikan premis sebab-akibat yang memaparkan dua sisi pembicaraan, yakni besarnya potensi sistem afiliasi (kalimat 1 dan 2) yang dihadapkan dengan risiko fatal apabila pengelolaannya tidak didukung teknologi analitik yang mumpuni (kalimat 3, 4, dan 5). Pilihan E merupakan rumusan konklusi logis yang paling kokoh karena merangkum syarat mutlak dari berjalannya sistem tersebut.

Jawaban: E',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  28,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  'Seluruh pernyataan di bawah ini merupakan kalimat efektif, kecuali...',
  NULL,
  '{"A":"Penyesuaian struktur tarif pajak barang mewah pada kuartal ini diharapkan mampu meredam tingkat konsumsi masyarakat berpenghasilan tinggi secara signifikan.","B":"Meskipun fluktuasi harga komoditas global terus membayangi pasar domestik, pemerintah tetap optimistis bahwa target pertumbuhan ekonomi tahun ini dapat terpenuhi.","C":"Evaluasi kinerja tahunan yang diselenggarakan oleh departemen sumber daya manusia bertujuan untuk memetakan potensi kepemimpinan para manajer tingkat menengah.","D":"Keberhasilan restrukturisasi organisasi ini sangat bergantung pada komitmen jajaran direksi, partisipasi aktif seluruh karyawan, dan dialokasikannya anggaran operasional yang memadai.","E":"Seluruh pemangku kepentingan telah menyepakati bahwa pembaruan sistem enkripsi data nasabah merupakan langkah mitigasi yang tidak dapat ditawar lagi."}'::jsonb,
  NULL,
  'D',
  'Kalimat (D) menjadi satu-satunya kalimat yang tidak efektif karena melanggar syarat kesejajaran bentuk (paralelisme) dalam sebuah perincian. Terdapat tiga unsur yang dirinci yaitu (1) komitmen (kata benda), (2) partisipasi (kata benda), dan (3) dialokasikannya (kata kerja pasif). Agar menjadi kalimat efektif yang sejajar, kata kerja dialokasikannya harus diubah menjadi kata benda yang setara dengan rincian sebelumnya, sehingga kalimatnya berbunyi: "...bergantung pada komitmen jajaran direksi, partisipasi aktif seluruh karyawan, dan pengalokasian anggaran operasional yang memadai.

Jawaban: D',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  29,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  '(1) Di tengah ketidakpastian iklim ekonomi global, perusahaan tetap berkomitmen untuk melanjutkan ekspansi bisnis ke wilayah timur Indonesia. (2) Langkah agresif yang direkomendasikan oleh tim pengembangan bisnis tersebut, dinilai sangat krusial untuk mengamankan rantai pasok jangka panjang. (3) Walaupun alokasi anggaran belanja modal harus dipangkas secara drastis, manajemen meyakini bahwa target pendapatan tahunan masih dapat tercapai secara rasional. (4) Rencana pembangunan infrastruktur distribusi yang baru meliputi pengadaan gudang transit, penambahan armada logistik, dan modernisasi sistem pelacakan barang. (5) Transformasi operasional ini memang menuntut investasi awal yang cukup besar, tetapi efisiensi biayanya akan terlihat nyata pada pembukuan tahun depan.

Penggunaan tanda baca koma (,) yang tidak tepat terdapat pada kalimat nomor...',
  NULL,
  '{"A":"(1)","B":"(2)","C":"(3)","D":"(4)","E":"(5)"}'::jsonb,
  NULL,
  'B',
  'Kesalahan fatal pada kalimat (2) terletak pada penggunaan tanda koma yang memisahkan Subjek dengan Predikat. Frasa "Langkah agresif yang direkomendasikan oleh tim pengembangan bisnis tersebut" berkedudukan sebagai Subjek, sedangkan kata "dinilai" berkedudukan sebagai Predikat. Berdasarkan kaidah tata bahasa Indonesia, subjek dalam suatu kalimat, tidak boleh dipisahkan oleh tanda koma dari predikatnya.

Jawaban: B',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  30,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  'Manakah kalimat di bawah ini yang mengandung kata tidak baku …',
  NULL,
  '{"A":"Tim teknisi kami yang sangat andal telah dikerahkan untuk memulihkan sistem pangkalan data yang sempat lumpuh.","B":"Berbagai draf kontrak kerja sama eksklusif itu harus selalu diperiksa secara saksama oleh departemen legal.","C":"Manajemen berjanji akan segera mengakomodir seluruh usulan karyawan terkait perbaikan fasilitas kesehatan di lingkungan pabrik.","D":"Surat edaran tersebut telanjur didistribusikan ke seluruh kantor cabang sebelum mendapat persetujuan akhir dari direktur utama.","E":"Ketaatan terhadap imbauan pemerintah terkait standar emisi karbon menjadi salah satu indikator kinerja utama perusahaan tahun ini."}'::jsonb,
  NULL,
  'C',
  'Kalimat pada opsi C mengandung kata tidak baku yaitu mengakomodir, yang bentuk benarnya menurut KBBI adalah mengakomodasi, karena kata serapan dari bahasa Belanda berakhiran -ir dibakukan ke dalam bahasa Indonesia dengan akhiran -asi menjadi akomodasi, koordinasi, dan legalisasi.

Jawaban: C',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  31,
  'TIU',
  'Analogi Kata',
  'sedang',
  'GERGAJI: KAYU =...',
  NULL,
  '{"A":"Sendok: Piring","B":"Sepatu: Kaki","C":"Baju: Lemari","D":"Gunting: Kertas","E":"Pensil: Penghapus"}'::jsonb,
  NULL,
  'D',
  'Gergaji merupakan alat yang fungsi utamanya untuk memotong kayu. Hubungan yang sama terdapat pada gunting yang merupakan alat yang fungsi utamanya untuk memotong kertas.

Jawaban: D',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  32,
  'TIU',
  'Analogi Kata',
  'sedang',
  'TINGGI: RENDAH =...',
  NULL,
  '{"A":"Jauh: Jarak","B":"Besar: Berat","C":"Terang: Gelap","D":"Tajam: Pisau","E":"Panas: Api"}'::jsonb,
  NULL,
  'C',
  'Tinggi merupakan keadaan yang menjadi lawan kata dari rendah. Hubungan yang sama terdapat pada terang yang merupakan keadaan yang menjadi lawan kata dari gelap.

Jawaban: C',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  33,
  'TIU',
  'Kemampuan Numerik',
  'sedang',
  'Rumah makan memiliki area dapur dan meja pelanggan.

Hubungan pada kalimat tersebut sama dengan...',
  NULL,
  '{"A":"Pasar tradisional memiliki area parkir dan pos satpam.","B":"Bioskop memiliki ruang proyektor dan deretan kursi penonton.","C":"Rumah sakit memiliki ruang operasi dan halaman depan.","D":"Stasiun kereta memiliki jalur rel besi dan gerbong penumpang.","E":"Perpustakaan memiliki barisan rak buku dan kartu anggota."}'::jsonb,
  NULL,
  'B',
  'Area dapur dan meja pelanggan merupakan bagian ruang utama dari rumah makan untuk memberikan pelayanan kepada pengunjung. Hubungan yang sama terdapat pada ruang proyektor dan deretan kursi penonton merupakan bagian ruang utama dari bioskop untuk memberikan pelayanan kepada pengunjung.

Jawaban: B',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  34,
  'TIU',
  'Kemampuan Numerik',
  'sedang',
  'Jam tangan mekanik memiliki roda gigi dan jarum penunjuk.

Hubungan pada kalimat tersebut sama dengan...',
  NULL,
  '{"A":"Kompas navigasi memiliki jarum magnet dan lempeng arah.","B":"Termometer ruangan memiliki cairan raksa dan tabung kaca.","C":"Timbangan badan memiliki pijakan kaki dan layar digital.","D":"Kamera analog memiliki rol film dan lampu kilat.","E":"Kalkulator saku memiliki tombol angka dan panel surya."}'::jsonb,
  NULL,
  'A',
  'Roda gigi dan jarum penunjuk merupakan komponen penggerak utama dari jam tangan mekanik untuk menunjukkan informasi secara akurat. Hubungan yang sama terdapat pada jarum magnet dan lempeng arah merupakan komponen penggerak utama dari kompas navigasi untuk menunjukkan informasi secara akurat.

Jawaban: A',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  35,
  'TIU',
  'Silogisme',
  'sedang',
  'Semua Fresh Care yang mengandung menthol memberikan sensasi dingin

Sebagian Fresh Care yang dijual di Minimarket A mengandung menthol

Semua produk yang memberikan sensasi dingin diletakkan di rak khusus

Kesimpulan yang paling tepat adalah …',
  NULL,
  '{"A":"Semua produk di Minimarket A diletakkan di rak khusus","B":"Semua produk di rak khusus adalah Fresh Care","C":"Sebagian produk di Minimarket A diletakkan di rak khusus","D":"Sebagian Fresh Care tidak memberikan sensasi dingin","E":"Semua produk yang mengandung menthol adalah Fresh Care"}'::jsonb,
  NULL,
  'C',
  'Sebagian Fresh Care yang dijual di Minimarket A diketahui mengandung menthol. Produk yang mengandung menthol memberikan sensasi dingin, sedangkan semua produk yang memberikan sensasi dingin diletakkan di rak khusus. Dengan demikian, sebagian produk di Minimarket A yang mengandung menthol juga akan memberikan sensasi dingin dan diletakkan di rak khusus. Jadi, kesimpulan yang tepat adalah sebagian produk di Minimarket A diletakkan di rak khusus, sehingga jawabannya adalah C.

Jawaban: C',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  36,
  'TIU',
  'Silogisme',
  'sedang',
  'Semua penonton yang membeli tiket VIP mendapatkan akses ke area khusus

Tidak semua penonton yang mendapatkan akses ke area khusus membeli tiket VIP

Rina mendapatkan akses ke area khusus

Manakah kesimpulan yang paling tepat berdasarkan premis di atas?',
  NULL,
  '{"A":"Rina pasti membeli tiket VIP","B":"Rina pasti tidak membeli tiket VIP","C":"Rina mungkin membeli tiket VIP","D":"Semua penonton yang membeli tiket VIP bukan penonton konser","E":"Tidak ada penonton tiket VIP yang mendapatkan akses ke area khusus"}'::jsonb,
  NULL,
  'C',
  'Semua penonton yang membeli tiket VIP memang mendapatkan akses ke area khusus. Namun, premis kedua menunjukkan bahwa akses ke area khusus tidak hanya diperoleh oleh pemegang tiket VIP. Karena Rina diketahui mendapatkan akses ke area khusus, kita tidak bisa memastikan apakah Rina membeli tiket VIP atau tidak. Jadi, kesimpulan yang paling tepat adalah Rina mungkin membeli tiket VIP.

Jawaban: C',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  37,
  'TIU',
  'Silogisme',
  'sedang',
  'Semua film yang mendapatkan rating tinggi akan ditayangkan di studio utama

Film “Petualangan Senja” tidak ditayangkan di studio utama

Sebagian film yang diputar di bioskop tersebut merupakan film produksi lokal.

Kesimpulan yang paling tepat adalah …',
  NULL,
  '{"A":"Film “Petualangan Senja” mendapatkan rating tinggi","B":"Film “Petualangan Senja” bukan film produksi lokal","C":"Film yang mendapatkan rating tinggi selalu merupakan film produksi lokal","D":"Film “Petualangan Senja” tidak mendapatkan rating tinggi","E":"Semua film produksi lokal ditayangkan di studio utama"}'::jsonb,
  NULL,
  'D',
  'Semua film yang mendapatkan rating tinggi akan ditayangkan di studio utama. Sementara itu, film “Petualangan Senja” diketahui tidak ditayangkan di studio utama. Karena film dengan rating tinggi harus ditayangkan di studio utama, maka “Petualangan Senja” tidak mendapatkan rating tinggi. Jadi, jawaban yang tepat adalah D.

Jawaban: D',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  38,
  'TIU',
  'Kemampuan Numerik',
  'sedang',
  '\(3\frac{3}{4}+11\left(2\frac{2}{11}\right)-\frac{3}{4}-\frac{9}{-\frac{1}{3}}\)  =...',
  NULL,
  '{"A":"0","B":"27","C":"54","D":"-54","E":"24"}'::jsonb,
  NULL,
  'C',
  '\(3\frac{3}{4}+11\left(2\frac{2}{11}\right)-\frac{3}{4}-\frac{9}{\frac{1}{-3}}\)

= \(3+\cancel{\frac{3}{4}}+\cancel{11}\left(\frac{24}{\cancel{11}}\right)-\cancel{\frac{3}{4}}+27\)

= 3 + 24 + 27

= 54

Jawaban: C',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  39,
  'TIU',
  'Kemampuan Numerik',
  'sedang',
  '\(180\times\frac{7\times4}{36}\div\frac{5}{11}\)  =...',
  NULL,
  '{"A":"308","B":"230","C":"210","D":"140","E":"110"}'::jsonb,
  NULL,
  'A',
  '\(180\times\frac{7\times4}{36}\div\frac{5}{11}\)  = \(\cancel{180}\times\frac{7\times4}{\cancel{36}}\times\frac{11}{5}\)

= \(\cancel{5}\times7\times4\times\frac{11}{\cancel{5}}\)  

=  7 × 4  ×11  

= 308

Jawaban: A',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  40,
  'TIU',
  'Berhitung',
  'sedang',
  '\(7\frac{1}{2}-2+\frac{1}{2}\)  =...',
  NULL,
  '{"A":"10","B":"9","C":"8","D":"7","E":"6"}'::jsonb,
  NULL,
  'E',
  '\(7\frac{1}{2}-2+\frac{1}{2}\)  = \(\frac{15}{2}-2+\frac{1}{2}\)  

= \(\frac{16}{2}-2\)  

= 8 − 2 

= 6

Jawaban: E',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  41,
  'TIU',
  'Berhitung',
  'sedang',
  'Diketahui

![gambar](/gambar/870788202dfa.png)

Hubungan berikut yang tidak benar adalah …',
  '/gambar/870788202dfa.png',
  '{"A":"\\(A<B\\)","B":"\\(2A<3B\\)","C":"\\(A>2B\\)","D":"\\(4A>5B\\)","E":"\\(3A=5B\\)"}'::jsonb,
  NULL,
  'D',
  'A   → 1,25 − 1,75 = −0,5

B  → 0,5 − 0,8 = −0,3

Selanjutnya sesuaikan dengan tiap opsi

![gambar](/gambar/23409cfed51f.png)

Jawaban: D',
  '/gambar/23409cfed51f.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  42,
  'TIU',
  'Berhitung',
  'sedang',
  'Diketahui \(x=1\frac{1}{2}\) dan \(y=\frac{3}{4}\)

![gambar](/gambar/0c98454199af.png)

Tentukanlah hubungan antara P dan Q yang benar…',
  '/gambar/0c98454199af.png',
  '{"A":"2P > 2Q","B":"P < 2Q","C":"P = Q","D":"2P > Q","E":"3P > 2Q"}'::jsonb,
  NULL,
  'B',
  'Diketahui \(x=1\frac{1}{2}\) dan \(y=\frac{3}{4}\)

P → \(-4x+2y=-4\left(1\frac{1}{2}\right)+2\left(\frac{3}{4}\right)\)  

= \(-6+\frac{3}{2}\)  

= \(-\frac{9}{2}\)

Q → \(2(2x-y)\)  = \(4x-2y\)  = −1 \((-4x+2y)\)  = \(-P\)  

= \(-\left(-\frac{9}{2}\right)\)  

= \(\frac{9}{2}\)

Perbandingan P: Q 

= \(-\frac{9}{2}\: \ \frac{9}{2}\)  

= −1: 1

Selanjutnya sesuaikan dengan tiap opsi

![gambar](/gambar/da9058ead115.png)

Jawaban: B',
  '/gambar/da9058ead115.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  43,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Diketahui Lasman menempuh perjalanan dari kota A ke kota B dalam waktu 6 jam dengan kecepatan 54 km/jam.

![gambar](/gambar/53a7f71412cf.png)

Manakah hubungan yang benar antara kuantitas P dan Q berikut berdasarkan informasi yang diberikan?',
  '/gambar/53a7f71412cf.png',
  '{"A":"\\(2P\\ >\\ 3Q\\)","B":"\\(2P\\ <\\ 2Q\\)","C":"\\(4P\\ =\\ 2Q\\)","D":"\\(3P\\ >\\ 3Q\\)","E":"Hubungan P dan Q tidak dapat ditentukan"}'::jsonb,
  NULL,
  'B',
  'Diketahui:

Kecepatan awal = 54 km/jam

Waktu awal = 6 jam

Jarak perjalanan = 54 × 6 = 324 km

Nilai P

Jika kecepatan menjadi 72 km/jam, maka waktu yang diperlukan:

\(P=\frac{324}{72}\) = 4,5 jam

Nilai Q

5 jam

Selanjutnya sesuaikan dengan tiap opsi

![gambar](/gambar/6e143b899737.png)

Jawaban: B',
  '/gambar/6e143b899737.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  44,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Biaya parkir di sebuah apartemen adalah Rp900.000 untuk dua bulan dan dihitung secara proporsional berdasarkan lama penggunaan.

![gambar](/gambar/4205c5de64eb.png)

Tentukanlah hubungan antara A dan B yang benar!',
  '/gambar/4205c5de64eb.png',
  '{"A":"A = B","B":"A > B","C":"A < B","D":"2A = B","E":"2A = 2B"}'::jsonb,
  NULL,
  'B',
  'Biaya parkir per bulan = \(\frac{900.000}{2}\)  = Rp450.000

Nilai A

Biaya parkir selama lima bulan = 5 × 450.000 = Rp2.250.000

Nilai B

Rp2.100.000

Perbandingan A: B = 2.250.000: 2.100.000 

= 15: 14

Selanjutnya sesuaikan dengan tiap opsi

![gambar](/gambar/50a53ed3eba6.png)

Jawaban: B',
  '/gambar/50a53ed3eba6.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  45,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Gaji tahunan Bayu adalah Rp60.000.000. Dari penghasilan tersebut, Rp54.000.000 tidak dikenai pajak. Sisa penghasilannya dikenai pajak sebesar 5%. Berapa penghasilan bersih Bayu setelah dipotong pajak?',
  NULL,
  '{"A":"Rp57.000.000","B":"Rp58.500.000","C":"Rp59.700.000","D":"Rp59.400.000","E":"Rp60.000.000"}'::jsonb,
  NULL,
  'C',
  'Penghasilan yang dikenai pajak = Rp 60.000.000 − Rp 54.000.000 = Rp 6.000.000

Pajak yang harus dibayar = 5% × 6.000.000 = Rp 300.000

Maka, total penghasilan bersih Bayu adalah = 60.000.000 − 300.000 = Rp 59.700.000.

Jawaban: C',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  46,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Sebuah taman dapat dibersihkan oleh 15 petugas dalam 4 hari. Jika hanya dikerjakan oleh 5 petugas dengan kemampuan kerja yang sama, berapa hari yang diperlukan untuk menyelesaikan pekerjaan tersebut?',
  NULL,
  '{"A":"5 hari","B":"8 hari","C":"12 hari","D":"18 hari","E":"20 hari"}'::jsonb,
  NULL,
  'C',
  'Untuk menyelesaikan soal tersebut dapat menggunakan Al Faiz aab:

![gambar](/gambar/cf5504a0733e.png)

\(x=\frac{15\times4}{5}\)

\(x=12\)

Maka pekerjaan dengan 5 petugas dapat diselesaikan dalam waktu 12 hari.

Jawaban: C',
  '/gambar/cf5504a0733e.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  47,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Sebuah konveksi memiliki 28 penjahit yang ditargetkan menyelesaikan 5.600 seragam sekolah dalam 35 hari. Setelah bekerja selama 14 hari, 7 penjahit sakit dan tidak bekerja selama 6 hari. Agar seluruh pesanan tetap selesai tepat waktu, berapa penjahit tambahan yang perlu ditambahkan?',
  NULL,
  '{"A":"2","B":"3","C":"4","D":"5","E":"6"}'::jsonb,
  NULL,
  'B',
  'Diketahui

Pekerja = 28

Waktu = 35 hari

Pekerja sakit = 7

Libur = 6 hari

Sisa hari = 35 − 14 − 6 = 15

Al Faiz T = \(\frac{Pekerja\ libur\ \times\ libur}{sisa\ hari}\)  

= \(\frac{7\times 6}{15}\)  

= \(\frac{42}{15}\)  

= 2,8  (Karena yang dicari tambahan penjahit maka hasil perhitungannya dibulatkan ke atas)

Maka, tambahan penjahit yang dibutuhkan adalah 3 orang

Jawaban: B',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  48,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Seorang pedagang di pasar menjual 1½ kuintal tepung seharga Rp1.200.000. Jika seorang pembeli ingin membeli 20 kg tepung, berapa harga yang harus dibayarkan?',
  NULL,
  '{"A":"Rp80.000","B":"Rp120.000","C":"Rp160.000","D":"Rp200.000","E":"Rp240.000"}'::jsonb,
  NULL,
  'C',
  '1 kuintal = 100 kg

1½ kuintal = \(\frac{3}{2}\)  × 100 = 150 kg

Untuk menyelesaikan soal tersebut dapat kita gunakan perbandingan senilai.

![gambar](/gambar/9ee2aa332c55.png)

\(\frac{150}{20}=\frac{1.200.000}{x}\)  

\(\frac{15}{2}=\frac{1.200.000}{x}\)   

\(x=\frac{1.200.000\times2}{15}\)   

\(x\)  = 80.000 × 2

\(x\)  = 160.000

Jawaban: C',
  '/gambar/9ee2aa332c55.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  49,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Sasi memiliki 6 ekor kucing yang menghabiskan 24 bungkus makanan kucing dalam 1 bulan. Jika Sasi mengadopsi 5 ekor kucing lagi, berapa bungkus makanan kucing yang akan habis dalam sebulan?',
  NULL,
  '{"A":"36 bungkus","B":"40 bungkus","C":"44 bungkus","D":"46 bungkus","E":"48 bungkus"}'::jsonb,
  NULL,
  'C',
  '![gambar](/gambar/edae398ea0d4.png)

Untuk menyelesaikan soal tersebut dapat kita gunakan Al Faiz HTW

H = T × W

\(\frac{24}{x}=\frac{6}{5}\times \frac{1}{1}\)

\(\frac{24}{X}=\frac{6}{11}\)  

\(X=\frac{\cancel{24}\times 11}{\cancel6}\)

= 4 × 11

= 44

Jawaban: C',
  '/gambar/edae398ea0d4.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  50,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Diketahui 8 ekor kambing dapat menghabiskan 1 lahan dalam waktu 5 hari, sedangkan 4 ekor sapi dapat menghabiskan 1 lahan dalam waktu 5 hari. Jika dalam sebuah lahan terdapat 5 ekor kambing dan 2 ekor sapi, maka lahan tersebut dapat habis dalam waktu berapa hari?',
  NULL,
  '{"A":"2 hari","B":"3 hari","C":"4 hari","D":"5 hari","E":"6 hari"}'::jsonb,
  NULL,
  'D',
  'Untuk menyelesaikan soal tsb, kita cari terlebih dahulu 5 kambing dalam berapa hari dan 2 sapi dalam berapa hari.

![gambar](/gambar/f4a385f1ef32.png)

Maka 5 ekor kambing dan 2 ekor sapi dapat menghabiskan lahan dalam

\(\frac{1}{w}=\frac{1}{8}+\frac{1}{10}\)

\(\frac{1}{w}=\frac{5+4}{40}\)

\(w=\frac{40}{9}\)

= 4,44 \(\approx\) 5 hari

Jawaban: D',
  '/gambar/f4a385f1ef32.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  51,
  'TIU',
  'Soal Cerita',
  'sedang',
  '−2,−4,−8,−16,−32,…',
  NULL,
  '{"A":"−36","B":"−40","C":"−48","D":"−54","E":"−64"}'::jsonb,
  NULL,
  'E',
  '![gambar](/gambar/0a4ede9fa56a.png)

Jawaban: E',
  '/gambar/0a4ede9fa56a.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  52,
  'TIU',
  'Deret Angka',
  'sedang',
  '3, 5, 9, 17, …, 65',
  NULL,
  '{"A":"33","B":"34","C":"44","D":"51","E":"64"}'::jsonb,
  NULL,
  'A',
  '![gambar](/gambar/5a6bd839e8ca.png)

Jawaban: A',
  '/gambar/5a6bd839e8ca.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  53,
  'TIU',
  'Deret Angka',
  'sedang',
  '\(1\,\ 3\,\frac{11}{5},\frac{16}{14},....\)',
  NULL,
  '{"A":"\\(\\frac{21}{41}\\)","B":"\\(\\frac{21}{32}\\)","C":"\\(\\frac{21}{28}\\)","D":"\\(\\frac{32}{21}\\)","E":"\\(\\frac{41}{21}\\)"}'::jsonb,
  NULL,
  'A',
  '![gambar](/gambar/68c643ffd89e.png)

Jawaban: A',
  '/gambar/68c643ffd89e.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  54,
  'TIU',
  'Deret Angka',
  'sedang',
  'Enam peserta pelatihan, yaitu Andi, Bima, Deni, Fajar, Galih, dan Raka, akan ditempatkan ke dalam 3 ruangan. Setiap ruangan ditempati tepat 2 orang. Ketentuannya sebagai berikut:

(1) Andi tidak boleh satu ruangan dengan Bima maupun Raka.

(2) Deni hanya dapat ditempatkan bersama Bima atau Fajar.

(3) Galih tidak boleh satu ruangan dengan Fajar.

Pasangan yang mungkin berada dalam satu ruangan adalah....',
  NULL,
  '{"A":"Andi dan Bima","B":"Andi dan Raka","C":"Deni dan Galih","D":"Fajar dan Galih","E":"Bima dan Deni"}'::jsonb,
  NULL,
  'E',
  'Informasi yang diberikan:

(1) Andi tidak boleh satu ruangan dengan Bima maupun Raka.

(2) Deni hanya dapat ditempatkan bersama Bima atau Fajar.

(3) Galih tidak boleh satu ruangan dengan Fajar.

Selanjutnya kita sesuaikan dengan opsi

A. Andi dan Bima (Tidak sesuai dengan pernyataan (1))

B. Andi dan Raka (Tidak sesuai dengan pernyataan (1))

C. Deni dan Galih (Tidak sesuai dengan pernyataan (2))

D. Fajar dan Galih (Tidak sesuai dengan pernyataan (3))

E. Bima dan Deni

Jawaban: E',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  55,
  'TIU',
  'Analitis',
  'sedang',
  'Enam peserta, yaitu Arga, Bima, Deni, Fajar, Galih, dan Raka, dipanggil satu per satu untuk mengikuti wawancara. Raka dipanggil tepat setelah Deni. Di antara Galih dan Deni terdapat tepat dua peserta, dengan Galih mendapat giliran lebih dahulu. Arga mendapat giliran sebelum Bima, sedangkan Fajar mendapat giliran pertama. Berdasarkan informasi tersebut, siapakah yang dipanggil pada urutan keempat?',
  NULL,
  '{"A":"Arga","B":"Bima","C":"Deni","D":"Galih","E":"Raka"}'::jsonb,
  NULL,
  'B',
  'Informasi yang diberikan

(1) Raka dipanggil tepat setelah Deni.

(2) Di antara Galih dan Deni terdapat tepat dua peserta, dengan Galih mendapat giliran lebih dahulu.

(3) Arga mendapat giliran sebelum Bima, sedangkan Fajar mendapat giliran pertama.

Sehingga urutan yang mungkin adalah

Fajar – Galih – Arga – Bima – Deni – Raka

Jawaban: B',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  56,
  'TIU',
  'Analitis',
  'sedang',
  'Enam orang, yaitu Alya, Bella, Citra, Dina, Farah, dan Rani, duduk melingkar pada sebuah meja bundar. Farah duduk berhadapan dengan Dina. Bella duduk tepat setelah Farah jika dilihat searah jarum jam. Di antara Bella dan Citra terdapat tepat satu orang. Rani duduk tepat di antara Dina dan Citra. Berdasarkan informasi tersebut, siapakah yang duduk tepat di antara Bella dan Dina?',
  NULL,
  '{"A":"Alya","B":"Farah","C":"Citra","D":"Rani","E":"Dina"}'::jsonb,
  NULL,
  'A',
  'Informasi yang diberikan

(1) Farah duduk berhadapan dengan Dina.

(2) Bella duduk tepat setelah Farah jika dilihat searah jarum jam.

(3) Di antara Bella dan Citra terdapat tepat satu orang.

(4) Rani duduk tepat di antara Dina dan Citra.

Susunan yang dapat dibentuk adalah

![gambar](/gambar/116c526cd0b5.png)

Sehingga yang duduk tepat di antara Bella dan Dina adalah Alya

Jawaban: A',
  '/gambar/116c526cd0b5.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  57,
  'TIU',
  'Figural',
  'sedang',
  'Lima siswa, yaitu Aldi, Bagas, Candra, Dimas, dan Eko, mengikuti ujian Matematika dan Bahasa Inggris. Nilai mereka ditunjukkan pada tabel berikut.

![gambar](/gambar/3160555c356e.png)

Siswa dinyatakan lulus jika memperoleh nilai rata-rata minimal 82 dan tidak ada nilai yang kurang dari 78. Tiga siswa yang memperoleh nilai rata-rata tertinggi dan memenuhi syarat kelulusan adalah....',
  '/gambar/3160555c356e.png',
  '{"A":"Candra, Dimas, Eko","B":"Dimas, Aldi, Bagas","C":"Dimas, Bagas, Eko","D":"Dimas, Eko, Aldi","E":"Eko, Bagas, Aldi"}'::jsonb,
  NULL,
  'C',
  'Syarat kelulusan:

- Rata – rata nilai ≥ 82

- Nilai Matematika dan Bahasa Inggris ≥ 78

![gambar](/gambar/082e101dd873.png)

Sehingga tiga siswa yang memperoleh nilai rata-rata tertinggi dan memenuhi syarat kelulusan adalah Dimas, Bagas, dan Eko.

Jawaban: C',
  '/gambar/082e101dd873.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  58,
  'TIU',
  'Figural Serial',
  'sedang',
  'Perhatikan gambar berikut!

![gambar](/gambar/49adbe9aef5d.png)',
  '/gambar/49adbe9aef5d.png',
  '{"A":"![gambar](/gambar/124581d741ed.png)","B":"![gambar](/gambar/406c7d888008.png)","C":"![gambar](/gambar/683e8927b258.png)","D":"![gambar](/gambar/4e27bd08c4e7.png)","E":"![gambar](/gambar/60a6b02466ad.png)"}'::jsonb,
  NULL,
  'B',
  'Objek pada gambar memiliki beberapa pola, yaitu

• Objek bagian luar memiliki pola bentuk berulang yaitu Segi Empat - Bulat - Segi Lima

Sehingga bentuk objek yang sama:

Gambar 1 → Gambar 4

Gambar 2 → Gambar 5

Gambar 3 → Gambar 6

• Objek bagian tengah disesuaikan dengan bentuk objek bagian luar. Untuk objek bentuk Wajik pada gambar (1) terdapat huruf C, kemudian objek bentuk Wajik pada gambar (4) terdapat huruf P. Polanya adalah urutan abjad dari C ke P ada sebanyak 13 kali perpindahan. Begitu juga dengan objek bentuk lingkaran, polanya adalah urutan angka dari 3 ke 16 ada sebanyak 13 kali perpindahan.

Sehingga gambar selanjutnya yang tepat adalah

![gambar](/gambar/0d1f9555532c.png)

Jawaban: B',
  '/gambar/0d1f9555532c.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  59,
  'TIU',
  'Figural Serial',
  'sedang',
  'Perhatikan gambar berikut!

![gambar](/gambar/0170eacd93c9.png)',
  '/gambar/0170eacd93c9.png',
  '{"A":"![gambar](/gambar/d512b01d5e82.png)","B":"![gambar](/gambar/b3f9eb222443.png)","C":"![gambar](/gambar/acd14b339437.png)","D":"![gambar](/gambar/cfb5e44be9b5.png)","E":"![gambar](/gambar/6c2872f9c953.png)"}'::jsonb,
  NULL,
  'E',
  '![gambar](/gambar/95c70279fccc.png)

Objek pada gambar memiliki jumlah batang yang bertambah satu setiap langkahnya. Sehingga gambar selanjutnya yang tepat adalah

![gambar](/gambar/278c646ef6a3.png)

Jawaban: E',
  '/gambar/95c70279fccc.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  60,
  'TIU',
  'Figural',
  'sedang',
  'Perhatikan gambar berikut!',
  NULL,
  '{"A":"![gambar](/gambar/f66fd2785d0a.png)","B":"![gambar](/gambar/644c1ae96932.png)","C":"![gambar](/gambar/2dbe579fca3a.png)","D":"![gambar](/gambar/60750e1b09b1.png)","E":"![gambar](/gambar/24d6332dcca0.png)"}'::jsonb,
  NULL,
  'A',
  '![gambar](/gambar/7fb3625a6fbf.png)

Pada opsi B, C, D dan E objek lingkaran di bagian tengah masing-masing terdapat garis yang membatasi langsung. Sedangkan opsi A tidak ada garis yang membatasi langsung.

Jawaban: A',
  '/gambar/7fb3625a6fbf.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  61,
  'TIU',
  'Figural',
  'sedang',
  'Perhatikan gambar berikut!',
  NULL,
  '{"A":"![gambar](/gambar/f4832ba259de.png)","B":"![gambar](/gambar/95bf32c3833a.png)","C":"![gambar](/gambar/bdcd84b3d8e4.png)","D":"![gambar](/gambar/c4b4a8a977c0.png)","E":"![gambar](/gambar/933f9c903b39.png)"}'::jsonb,
  NULL,
  'E',
  'Pada opsi A, B, C dan D merupakan jenis alat musik yang dimainkan dengan cara ditiup. Sedangkan opsi E bukan merupakan jenis alat musik yang dimainkan dengan cara ditiup.

Jawaban: E',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  62,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Perhatikan gambar berikut!

![gambar](/gambar/f114f9bbce95.png)',
  '/gambar/f114f9bbce95.png',
  '{"A":"![gambar](/gambar/d0f54af3f37b.png)","B":"![gambar](/gambar/9babb1c541a2.png)","C":"![gambar](/gambar/7500c4c52d3a.png)","D":"![gambar](/gambar/b1394ad08db3.png)","E":"![gambar](/gambar/146b53f36c95.png)"}'::jsonb,
  NULL,
  'B',
  'Pola gambar (1) ke gambar (2)

![gambar](/gambar/03275d00b22e.png)

Pada gambar (1) terdapat empat objek yang berbeda

• Objek di lingkaran merah menjadi dua lalu dirotasi 90° berlawanan arah jarum jam, salah satunya berubah warna.

• Objek di lingkaran biru dirotasi 90° searah jarum jam.

• Objek di lingkaran hijau digabung.

Untuk pola gambar (3) ke gambar (4) sama dengan pola gambar (1) ke gambar (2). Sehingga yang memenuhi adalah opsi B

![gambar](/gambar/54ce3f62a4c2.png)

Jawaban: B',
  '/gambar/03275d00b22e.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  63,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Perhatikan gambar berikut!

![gambar](/gambar/f78e512c7789.png)',
  '/gambar/f78e512c7789.png',
  '{"A":"![gambar](/gambar/86fd37d82ac8.png)","B":"![gambar](/gambar/fdc201fa3fc9.png)","C":"![gambar](/gambar/cc6fd54bae9f.png)","D":"![gambar](/gambar/015376f88305.png)","E":"![gambar](/gambar/63c0366bdfbd.png)"}'::jsonb,
  NULL,
  'B',
  'Pola gambar (1) ke gambar (2)

![gambar](/gambar/b283136b3103.png)

Pada gambar (1) terdapat tiga objek yang berbeda

• Objek di lingkaran merah dirotasi 90° berlawanan arah jarum jam.

• Objek di lingkaran biru dirotasi 90° searah jarum jam.

• Objek di lingkaran hijau dicerminkan secara vertikal dan berubah warna.

Untuk pola gambar (3) ke gambar (4) sama dengan pola gambar (1) ke gambar (2). Sehingga yang memenuhi adalah opsi B.

![gambar](/gambar/05f875bcd212.png)

Jawaban: B',
  '/gambar/b283136b3103.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  64,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Perhatikan gambar berikut

![gambar](/gambar/7cacc2a6d52e.png)',
  '/gambar/7cacc2a6d52e.png',
  '{"A":"![gambar](/gambar/2e52d627773a.png)","B":"![gambar](/gambar/b040a96766d4.png)","C":"![gambar](/gambar/479a6481a0c9.png)","D":"![gambar](/gambar/6e8bd90a2b98.png)","E":"![gambar](/gambar/fc68db2f7f40.png)"}'::jsonb,
  NULL,
  'B',
  '![gambar](/gambar/40c343ec61bd.png)

Setiap baris pada gambar di atas memiliki dua bentuk objek yang berbeda, yaitu ![gambar](/gambar/27a7028ef486.png) (keriting) dan ![gambar](/gambar/78024b0aec5a.png)  (waru).

Gambar di atas memiliki pola per baris yaitu pada setiap baris terdapat 4 objek keriting dan 4 objek waru.

Pada baris ketiga sudah terdapat 2 objek keriting dan 4 objek waru, sehingga gambar yang tepat untuk mengisi gambar yang kosong adalah gambar dengan 2 objek keriting saja.

![gambar](/gambar/b2daae5e3a14.png)

Jawaban: B',
  '/gambar/40c343ec61bd.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  65,
  'TIU',
  'Figural',
  'sedang',
  'Perhatikan gambar berikut!

![gambar](/gambar/848727e77ff6.png)',
  '/gambar/848727e77ff6.png',
  '{"A":"![gambar](/gambar/765f521e6c48.png)","B":"![gambar](/gambar/cd3a8f8023a8.png)","C":"![gambar](/gambar/3c1226d1c4ab.png)","D":"![gambar](/gambar/3365f8840022.png)","E":"![gambar](/gambar/3fa0c65db0f8.png)"}'::jsonb,
  NULL,
  'C',
  '![gambar](/gambar/72a128f30c9f.png)

Gambar di atas memiliki pola per kolom. Setiap gambar terdapat 2 objek yaitu kotak kuning dan kotak biru.

Pola kotak kuning pada kolom (1) ke kolom (2) lalu ke kolom (3) bergeser satu langkah ke bawah, jika sudah sampai di kotak paling bawah maka kotak kuning bergeser ke kotak yang paling atas seperti yang ditunjukkan panah.

Pola kotak biru pada kolom (1) ke kolom (2) lalu ke kolom (3) bergeser satu langkah ke bawah, jika sudah sampai di kotak paling bawah maka kotak biru bergeser ke atas (bagian tengah) seperti yang ditunjukkan panah.

Sehingga gambar yang tepat mengisi gambar yang kosong adalah

![gambar](/gambar/8a2f388f0d6b.png)

Jawaban: C',
  '/gambar/72a128f30c9f.png',
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  66,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda membantu memeriksa laporan perjalanan dinas beberapa pegawai sebelum diserahkan kepada bagian keuangan. Saat mencocokkan laporan dengan bukti pengeluaran, Anda menemukan adanya selisih kecil pada salah satu laporan. Nominal yang dicantumkan sedikit lebih besar daripada pengeluaran sebenarnya. Ketika Anda menanyakannya, pegawai tersebut menjelaskan bahwa selisih seperti itu sudah biasa digunakan untuk menutup biaya kecil yang tidak memiliki bukti pembayaran. Beberapa rekan juga menganggap hal tersebut tidak perlu dipermasalahkan karena nilainya relatif kecil. Sikap Anda adalah...',
  NULL,
  '{"A":"Meminta pegawai tersebut menyesuaikan nominal laporan dengan pengeluaran yang sebenarnya sebelum laporan diserahkan.","B":"Menyampaikan temuan tersebut kepada penanggung jawab laporan agar dapat ditentukan langkah yang sesuai dengan ketentuan.","C":"Mengingatkan pegawai tersebut agar lebih berhati-hati mencantumkan nominal pengeluaran pada laporan berikutnya.","D":"Membiarkan selisih tersebut selama masih dalam batas kewajaran dan tidak memengaruhi jumlah anggaran secara signifikan.","E":"Menanyakan kembali jenis pengeluaran yang tidak tercatat sebelum menentukan apakah selisih tersebut perlu dikoreksi."}'::jsonb,
  '{"A":5,"B":4,"C":3,"D":1,"E":2}'::jsonb,
  'A',
  'Ketidaksesuaian nominal dalam laporan perjalanan dinas tetap merupakan persoalan integritas meskipun selisihnya kecil dan sudah dianggap sebagai kebiasaan oleh sebagian pegawai. Profesionalisme menuntut setiap laporan dibuat sesuai dengan kondisi sebenarnya dan dapat dipertanggungjawabkan. Pilihan A paling tepat karena meminta laporan disesuaikan dengan pengeluaran yang sebenarnya sebelum diserahkan, sehingga menunjukkan kejujuran, ketelitian, dan tanggung jawab dalam menjaga akurasi dokumen, sehingga mendapat skor 5. Pilihan B juga tepat karena membawa temuan kepada pihak yang bertanggung jawab agar ditindaklanjuti sesuai ketentuan, tetapi belum secara langsung mendorong koreksi laporan, sehingga mendapat skor 4. Pilihan C menunjukkan kepedulian terhadap ketelitian administrasi dengan mengingatkan pegawai agar lebih berhati-hati, tetapi tidak menyelesaikan ketidaksesuaian pada laporan yang sedang diperiksa, sehingga mendapat skor 3. Pilihan E menunjukkan kehati-hatian dengan melakukan klarifikasi terlebih dahulu, tetapi persoalan utama berupa perbedaan antara nominal laporan dan pengeluaran sebenarnya sudah diketahui sehingga tindakan tersebut belum cukup untuk memastikan laporan diperbaiki, sehingga mendapat skor 2. Pilihan D paling rendah karena membiarkan ketidaksesuaian hanya berdasarkan kecilnya nominal dapat menormalisasi ketidakjujuran dan mengabaikan prinsip akuntabilitas dalam pertanggungjawaban keuangan, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  67,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda sedang menyelesaikan tugas penting yang harus diselesaikan pada hari yang sama. Pada waktu yang bersamaan, Anda mendapat undangan rapat koordinasi yang juga penting karena akan membahas keputusan yang berkaitan dengan pekerjaan Anda. Keduanya tidak dapat diikuti secara bersamaan. Tindakan yang paling tepat Anda lakukan adalah....',
  NULL,
  '{"A":"Memprioritaskan tugas yang memiliki batas waktu penyelesaian pada hari tersebut.","B":"Menghadiri rapat koordinasi karena keputusan yang dibahas berkaitan langsung dengan pekerjaan Anda.","C":"Meminta rekan menyampaikan hasil rapat setelah kegiatan koordinasi selesai.","D":"Menyampaikan kepada penyelenggara rapat bahwa Anda tidak dapat menghadiri rapat tersebut.","E":"Meminta arahan atasan mengenai agenda yang perlu diprioritaskan."}'::jsonb,
  '{"A":3,"B":2,"C":4,"D":1,"E":5}'::jsonb,
  'E',
  'Profesionalisme dalam menghadapi dua pekerjaan yang sama-sama penting ditunjukkan melalui kemampuan mengelola prioritas dengan mempertimbangkan dampak pekerjaan serta mengomunikasikan kondisi kepada pihak yang memiliki kewenangan. Pilihan E paling tepat karena meminta arahan atasan ketika terdapat dua agenda penting yang tidak dapat diikuti secara bersamaan, sehingga keputusan prioritas dapat ditentukan berdasarkan kepentingan pekerjaan secara menyeluruh, sehingga mendapat skor 5. Pilihan C juga cukup baik karena memastikan informasi dari rapat tetap diperoleh meskipun tidak dapat hadir, tetapi belum menyelesaikan persoalan mengenai agenda mana yang seharusnya diprioritaskan, sehingga mendapat skor 4. Pilihan A menunjukkan kemampuan mempertimbangkan tenggat waktu dalam menentukan prioritas, tetapi keputusan tersebut dilakukan tanpa mengomunikasikan adanya benturan agenda kepada pihak yang berwenang, sehingga mendapat skor 3. Pilihan B menunjukkan tanggung jawab terhadap rapat yang berkaitan dengan pekerjaan, tetapi keputusan tersebut dapat membuat tugas yang harus selesai pada hari yang sama tidak tertangani secara optimal, sehingga mendapat skor 2. Pilihan D paling rendah karena hanya menyampaikan ketidakhadiran kepada penyelenggara rapat tanpa memberikan penyelesaian terhadap konflik antara kedua agenda, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  68,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda bertugas mengelola dokumen internal yang memuat hasil evaluasi kinerja pegawai. Suatu hari, seorang rekan yang tidak terlibat dalam proses evaluasi meminta Anda mengirimkan dokumen tersebut melalui aplikasi pesan pribadi dengan alasan hanya ingin mengetahui gambaran umum hasil evaluasi. Ia juga mengatakan bahwa informasi tersebut tidak akan disebarkan. Sikap Anda adalah...',
  NULL,
  '{"A":"Mengirimkan dokumen tersebut karena rekan berjanji tidak akan menyebarkannya.","B":"Menolak permintaan tersebut dan menjelaskan bahwa dokumen hanya dapat diberikan melalui mekanisme yang berwenang.","C":"Mengirimkan bagian tertentu yang dianggap tidak terlalu sensitif agar rekan tetap memperoleh informasi yang dibutuhkan.","D":"Menanyakan terlebih dahulu kepada rekan untuk apa informasi tersebut diperlukan sebelum menentukan tindakan.","E":"Menolak kemudian menyampaikan bahwa dokumen tidak dapat dibagikan melalui aplikasi pribadi dan dapat diperoleh jika melalui jalur resmi."}'::jsonb,
  '{"A":1,"B":4,"C":2,"D":3,"E":5}'::jsonb,
  'E',
  'Pilihan E merupakan jawaban paling tepat karena tidak hanya menjaga kerahasiaan dokumen, tetapi juga tetap membantu rekan memperoleh informasi melalui mekanisme yang sesuai. Sikap tersebut menunjukkan kemampuan menjaga keamanan informasi sekaligus mempertahankan hubungan kerja secara profesional, sehingga mendapat skor 5. Pilihan B juga menunjukkan integritas dan kepatuhan terhadap mekanisme yang berlaku, tetapi cenderung berhenti pada penolakan tanpa memberikan alternatif penyelesaian, sehingga mendapat skor 4. Pilihan D menunjukkan kehati-hatian dengan berusaha memahami kebutuhan rekan terlebih dahulu. Namun, mengetahui alasan permintaan belum menghilangkan kewajiban untuk menjaga kerahasiaan dokumen, sehingga mendapat skor 3. Pilihan C masih berisiko karena Anda tetap memberikan sebagian informasi tanpa memastikan adanya kewenangan untuk mengaksesnya. Oleh karena itu, mendapat skor 2. Pilihan A paling tidak tepat karena menjadikan janji pribadi sebagai dasar untuk membagikan dokumen internal. Hal tersebut mengabaikan tanggung jawab profesional dalam menjaga kerahasiaan informasi, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  69,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda sedang menyelesaikan pekerjaan yang harus selesai hari itu. Di tengah proses, pimpinan meminta Anda membantu pekerjaan lain yang juga cukup mendesak. Jika Anda mengerjakan tugas baru tersebut tanpa pengaturan ulang, pekerjaan pertama kemungkinan tidak selesai tepat waktu. Sikap Anda adalah...',
  NULL,
  '{"A":"Segera mengerjakan tugas baru karena permintaan pimpinan harus diprioritaskan.","B":"Menyelesaikan pekerjaan pertama terlebih dahulu agar tidak meninggalkan tanggung jawab yang sudah diberikan.","C":"Menjelaskan kepada pimpinan mengenai pekerjaan yang sedang berjalan dan meminta arahan mengenai prioritas penyelesaiannya.","D":"Mengerjakan kedua pekerjaan secara bersamaan agar keduanya tetap berjalan meskipun hasilnya mungkin tidak maksimal.","E":"Menjelaskan kondisi pekerjaan yang sedang berjalan, mengusulkan urutan prioritas yang realistis, dan menyesuaikan target penyelesaian berdasarkan arahan pimpinan."}'::jsonb,
  '{"A":2,"B":3,"C":4,"D":1,"E":5}'::jsonb,
  'E',
  'Pilihan E merupakan jawaban paling tepat karena menunjukkan kemampuan mengelola prioritas secara profesional. Anda tidak menolak tugas baru, tetapi juga tidak mengabaikan pekerjaan yang sedang berlangsung. Dengan menjelaskan kondisi secara objektif dan mengusulkan urutan prioritas yang realistis, pimpinan dapat menentukan langkah terbaik berdasarkan kebutuhan organisasi. Oleh karena itu, mendapat skor 5. Pilihan C mendapat skor 4 karena sudah menunjukkan komunikasi dan koordinasi yang baik, tetapi belum menunjukkan inisiatif untuk menawarkan solusi atau alternatif prioritas. Pilihan B mendapat skor 3 karena menunjukkan tanggung jawab terhadap pekerjaan yang sudah diberikan, tetapi terlalu berfokus pada tugas awal dan belum mempertimbangkan kebutuhan baru organisasi. Pilihan A mendapat skor 2 karena menunjukkan kepatuhan terhadap pimpinan, tetapi dilakukan tanpa mempertimbangkan konsekuensi terhadap pekerjaan yang sedang berjalan. Pilihan D mendapat skor 1 karena mencoba mengerjakan semuanya sekaligus tanpa mempertimbangkan kapasitas dan risiko penurunan kualitas pekerjaan. Sikap tersebut justru dapat menyebabkan kedua pekerjaan tidak terselesaikan secara optimal.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  70,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda bertugas di perpustakaan sekolah. Menjelang ujian, banyak siswa membutuhkan buku referensi yang jumlahnya terbatas. Seorang siswa yang Anda kenal meminta Anda menyisihkan satu buku untuknya karena ia baru dapat datang setelah jam sekolah. Jika buku tersebut disisihkan, siswa lain yang datang lebih dahulu kemungkinan tidak mendapatkannya. Sikap Anda adalah...',
  NULL,
  '{"A":"Menyisihkan buku tersebut karena siswa yang Anda kenal memang sedang membutuhkan untuk persiapan ujian.","B":"Menjelaskan bahwa buku harus diberikan berdasarkan mekanisme peminjaman yang berlaku dan tidak dapat dipesan secara khusus tanpa dasar yang jelas.","C":"Menyisihkan buku tersebut tetapi meminta siswa datang secepatnya agar tidak terlalu lama menunggu.","D":"Menanyakan kepada pengelola perpustakaan apakah terdapat mekanisme reservasi yang dapat digunakan oleh siswa tersebut.","E":"Menjelaskan ketentuan peminjaman kepada siswa dan membantu mencarikan alternatif sumber belajar lain apabila buku tersebut sudah dipinjam siswa lain."}'::jsonb,
  '{"A":1,"B":4,"C":2,"D":3,"E":5}'::jsonb,
  'E',
  'Pilihan E merupakan jawaban paling tepat karena menjaga prinsip keadilan dalam pemanfaatan fasilitas sekolah sekaligus tetap membantu siswa memperoleh solusi. Anda tidak memberikan perlakuan khusus, tetapi menawarkan alternatif apabila sumber yang dibutuhkan tidak tersedia. Hal ini mencerminkan objektivitas, tanggung jawab, dan kemampuan menyelesaikan masalah tanpa mengorbankan prinsip, sehingga mendapat skor 5. Pilihan B mendapat skor 4 karena sudah menjaga aturan dan keadilan, tetapi belum menawarkan alternatif untuk membantu siswa memenuhi kebutuhannya. Pilihan D mendapat skor 3 karena menunjukkan upaya mencari solusi melalui mekanisme yang tersedia, tetapi belum memberikan kepastian bahwa kebutuhan siswa dapat terpenuhi. Pilihan C mendapat skor 2 karena tetap memberikan perlakuan khusus kepada siswa, meskipun dibatasi dengan waktu tertentu. Pilihan A mendapat skor 1 karena memberikan keuntungan kepada seseorang berdasarkan hubungan pribadi, sehingga mengabaikan prinsip objektivitas dan keadilan dalam pelayanan.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  71,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda menjadi koordinator kegiatan ekstrakurikuler di sebuah sekolah. Menjelang perlombaan antarsekolah, salah satu anggota tim mengusulkan agar latihan tambahan dilakukan setiap sore selama dua minggu. Sebagian siswa menyetujui usulan tersebut, tetapi beberapa siswa mengatakan bahwa mereka memiliki kewajiban lain setelah jam sekolah. Sementara itu, waktu persiapan semakin terbatas. Sebagai koordinator, tindakan Anda adalah..',
  NULL,
  '{"A":"Menetapkan latihan tambahan setiap sore karena persiapan perlombaan membutuhkan komitmen seluruh anggota tim.","B":"Mengikuti jadwal latihan yang selama ini berjalan agar tidak mengganggu kegiatan siswa di luar ekstrakurikuler.","C":"Meminta siswa menentukan sendiri jadwal latihan yang dianggap paling memungkinkan bagi masing-masing anggota.","D":"Membahas kondisi tersebut bersama anggota tim dan menyesuaikan intensitas latihan dengan kebutuhan persiapan serta kemampuan mengikuti jadwal.","E":"Mempertahankan jadwal latihan tambahan, tetapi memberikan kesempatan kepada siswa yang berhalangan untuk mengikuti latihan pada waktu lain."}'::jsonb,
  '{"A":2,"B":3,"C":1,"D":5,"E":4}'::jsonb,
  'D',
  'Pilihan D merupakan pilihan paling tepat. Dalam situasi tersebut, koordinator perlu menjaga target persiapan tanpa mengabaikan kondisi anggota tim. Membahas kondisi bersama anggota memungkinkan keputusan dibuat berdasarkan kebutuhan latihan dan kemampuan siswa, sehingga keputusan tidak hanya berorientasi pada target perlombaan tetapi juga mempertimbangkan tanggung jawab siswa lainnya. Sikap tersebut menunjukkan kemampuan mengambil keputusan secara objektif dan proporsional, sehingga mendapat skor 5. Pilihan E mendapat skor 4 karena sudah menunjukkan fleksibilitas terhadap anggota yang memiliki kendala waktu. Namun, keputusan untuk tetap mempertahankan latihan tambahan belum tentu menjadi pilihan yang paling sesuai sebelum mengetahui kondisi dan kebutuhan seluruh anggota. Pilihan B mendapat skor 3 karena mempertimbangkan kegiatan siswa di luar ekstrakurikuler, tetapi kurang adaptif terhadap keterbatasan waktu persiapan yang sedang dihadapi. Pilihan A mendapat skor 2 karena menunjukkan komitmen terhadap target, tetapi mengambil keputusan secara sepihak dan menganggap seluruh anggota memiliki kondisi yang sama. Pilihan C mendapat skor 1 karena menyerahkan sepenuhnya pengaturan jadwal kepada anggota tanpa menjalankan fungsi koordinasi. Hal tersebut dapat membuat persiapan menjadi tidak terarah.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  72,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda bertugas sebagai petugas pemeriksa tiket di sebuah stasiun. Menjelang keberangkatan, seorang penumpang menunjukkan tiket yang namanya berbeda satu huruf dari identitasnya. Penumpang tersebut menjelaskan bahwa tiket dibeli oleh keluarganya dan kesalahan terjadi saat pemesanan. Ia meminta Anda tetap mengizinkannya naik karena kereta akan segera berangkat. Antrean pemeriksaan di belakangnya juga mulai panjang. Sikap Anda adalah...',
  NULL,
  '{"A":"Mengizinkan penumpang tersebut karena perbedaan nama hanya satu huruf dan keberangkatan sudah dekat.","B":"Menolak penumpang tersebut karena data tiket tidak sesuai dengan identitas yang dibawa.","C":"Memeriksa ketentuan perubahan data penumpang dan memberikan arahan berdasarkan mekanisme yang berlaku.","D":"Meminta penumpang menghubungi petugas layanan tiket untuk memastikan apakah perbedaan tersebut dapat diberikan pengecualian.","E":"Mengikuti ketentuan pemeriksaan sambil mempertimbangkan informasi tambahan yang dapat memastikan bahwa tiket memang digunakan oleh pemilik yang sah."}'::jsonb,
  '{"A":1,"B":3,"C":5,"D":4,"E":2}'::jsonb,
  'C',
  'Pilihan C mendapat skor 5 karena petugas tidak mengambil keputusan berdasarkan asumsi mengenai kecilnya kesalahan nama. Dengan memeriksa ketentuan yang berlaku, keputusan dapat diberikan berdasarkan standar yang sama kepada seluruh penumpang dan tetap mempertimbangkan kondisi yang mendesak. Pilihan D mendapat skor 4 karena sudah berupaya memastikan keputusan melalui petugas yang memiliki kewenangan terkait perubahan tiket. Namun, tindakan tersebut masih menyerahkan penyelesaian kepada pihak lain tanpa terlebih dahulu mengidentifikasi ketentuan yang dapat menjadi dasar pengambilan keputusan. Pilihan B mendapat skor 3 karena menjaga ketentuan pemeriksaan, tetapi langsung mengambil keputusan berdasarkan ketidaksesuaian data tanpa mempertimbangkan kemungkinan mekanisme penyelesaian yang tersedia. Pilihan E mendapat skor 2 karena menunjukkan kehati-hatian, tetapi frasa “mempertimbangkan informasi tambahan” belum memberikan dasar yang jelas mengenai bagaimana keputusan akan dibuat. Pilihan A mendapat skor 1 karena memberikan pengecualian berdasarkan pertimbangan pribadi bahwa perbedaan nama hanya sedikit. Hal tersebut dapat membuat standar pemeriksaan tidak konsisten.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  73,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda menjadi pelatih sebuah tim olahraga sekolah. Dalam persiapan menghadapi pertandingan, salah satu pemain utama mulai menunjukkan penurunan performa. Kapten tim menyarankan agar pemain tersebut tetap diturunkan karena pengalaman dan kemampuannya selama ini sangat membantu tim. Namun, beberapa anggota tim lain terlihat memiliki performa yang lebih baik dalam latihan terakhir. Pertandingan akan berlangsung dua hari lagi. Sikap Anda adalah...',
  NULL,
  '{"A":"Tetap menurunkan pemain utama karena pengalaman pertandingan merupakan pertimbangan penting.","B":"Mengganti pemain utama dengan anggota yang performanya lebih baik dalam latihan terakhir.","C":"Mempertimbangkan hasil latihan terakhir bersama kondisi pemain sebelum menentukan susunan tim.","D":"Meminta kapten tim menentukan pemain yang dianggap paling siap untuk pertandingan.","E":"Mempertahankan pemain utama dalam daftar tim dan memberikan kesempatan kepada pemain lain sesuai perkembangan latihan."}'::jsonb,
  '{"A":3,"B":4,"C":5,"D":1,"E":2}'::jsonb,
  'C',
  'Pilihan C mendapat skor 5 karena keputusan tidak didasarkan pada status pemain sebagai anggota utama maupun hanya pada satu hasil latihan. Pelatih mempertimbangkan informasi yang relevan secara menyeluruh sebelum menentukan keputusan, sehingga pilihan yang diambil lebih objektif dan dapat dipertanggungjawabkan. Pilihan B mendapat skor 4 karena menggunakan indikator performa terbaru sebagai dasar keputusan dan menunjukkan objektivitas. Namun, hanya mengandalkan hasil latihan terakhir belum tentu memberikan gambaran menyeluruh mengenai kesiapan pemain. Pilihan A mendapat skor 3 karena pengalaman memang relevan dalam menentukan pemain, tetapi keputusan tersebut terlalu bergantung pada reputasi pemain tanpa cukup mempertimbangkan kondisi terkini. Pilihan E mendapat skor 2 karena masih memberikan ruang kepada pemain lain, tetapi mempertahankan pemain utama sejak awal dapat membatasi objektivitas dalam menentukan susunan terbaik. Pilihan D mendapat skor 1 karena menyerahkan keputusan utama kepada kapten tim, padahal penentuan susunan pemain merupakan tanggung jawab pelatih.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  74,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda Anda bekerja dalam sebuah tim yang menggunakan satu aplikasi untuk mengelola pekerjaan bersama. Suatu pagi, Anda menerima pesan dari seseorang yang mengaku sebagai petugas pengelola sistem dan meminta kode verifikasi yang baru saja masuk ke ponsel Anda dengan alasan sedang melakukan pengecekan keamanan akun. Pengirim tersebut mengetahui nama dan unit kerja Anda sehingga terlihat meyakinkan. Sikap Anda adalah...',
  NULL,
  '{"A":"Memberikan kode tersebut karena pengirim mengetahui identitas dan unit kerja Anda.","B":"Meminta pengirim menjelaskan tujuan permintaan kode sebelum menentukan apakah kode dapat diberikan.","C":"Tidak memberikan kode dan melakukan konfirmasi melalui saluran resmi pengelola sistem.","D":"Mengabaikan pesan tersebut dan tetap menggunakan aplikasi seperti biasa selama akun masih dapat diakses.","E":"Menolak memberikan kode, kemudian melaporkan pesan tersebut melalui mekanisme keamanan yang tersedia."}'::jsonb,
  '{"A":1,"B":3,"C":5,"D":2,"E":4}'::jsonb,
  'C',
  'Pilihan C mendapat skor 5 karena kode verifikasi merupakan informasi keamanan yang tidak semestinya diberikan hanya berdasarkan identitas yang diklaim oleh pengirim. Melakukan konfirmasi melalui saluran resmi memungkinkan Anda memastikan apakah permintaan tersebut benar-benar berasal dari pengelola sistem tanpa mengambil risiko terhadap keamanan akun. Pilihan E mendapat skor 4 karena sudah tepat menolak permintaan dan menggunakan mekanisme pelaporan. Namun, tindakan tersebut belum memastikan apakah terdapat aktivitas resmi yang memang sedang dilakukan oleh pengelola sistem. Pilihan B mendapat skor 3 karena menunjukkan kehati-hatian, tetapi penjelasan dari pengirim belum dapat menjadi dasar untuk memastikan keamanan permintaan tersebut. Pilihan D mendapat skor 2 karena tidak memberikan informasi sensitif, tetapi mengabaikan potensi ancaman tanpa melakukan tindakan pengamanan atau verifikasi. Pilihan A mendapat skor 1 karena memberikan kode keamanan hanya berdasarkan klaim identitas pengirim dan dapat menyebabkan akun diakses oleh pihak yang tidak berwenang.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  75,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda merupakan seorang guru yang ingin meningkatkan keterlibatan siswa dalam pembelajaran. Selama ini, materi lebih banyak disampaikan melalui penjelasan di kelas dan buku pelajaran. Anda melihat beberapa siswa lebih mudah memahami materi ketika menggunakan media digital, tetapi kemampuan siswa dalam menggunakan teknologi cukup beragam. Tindakan yang paling tepat Anda lakukan adalah...',
  NULL,
  '{"A":"menggunakan aplikasi pembelajaran yang sedang banyak digunakan oleh siswa","B":"menyediakan materi pembelajaran dalam bentuk digital agar dapat dipelajari siswa","C":"menggunakan media digital pada materi yang lebih mudah dipahami melalui tampilan visual","D":"memilih media teknologi yang sesuai dengan materi dan kemampuan siswa","E":"menyesuaikan pemanfaatan teknologi dengan tujuan pembelajaran dan kebutuhan siswa"}'::jsonb,
  '{"A":1,"B":2,"C":3,"D":4,"E":5}'::jsonb,
  'E',
  'Pemanfaatan teknologi dalam pembelajaran perlu disesuaikan dengan tujuan pembelajaran dan kondisi siswa agar teknologi benar-benar membantu proses belajar. Pilihan E paling tepat karena menyesuaikan pemanfaatan teknologi dengan tujuan pembelajaran dan kebutuhan siswa menunjukkan bahwa teknologi digunakan berdasarkan kebutuhan pembelajaran, bukan sekadar mengikuti perkembangan atau tren, sehingga mendapat skor 5. Pilihan D juga sangat baik karena memilih media yang sesuai dengan materi dan kemampuan siswa dapat membuat penggunaan teknologi lebih tepat sasaran, tetapi belum secara langsung mempertimbangkan tujuan pembelajaran sebagai dasar pemilihannya, sehingga mendapat skor 4. Pilihan C cukup tepat karena penggunaan media digital pada materi yang lebih mudah dipahami secara visual dapat membantu siswa memahami materi tertentu, tetapi pemanfaatannya masih terbatas pada karakteristik materi, sehingga mendapat skor 3. Pilihan B kurang tepat karena menyediakan materi dalam bentuk digital memang dapat memperluas akses siswa terhadap bahan belajar, tetapi belum memastikan bahwa media tersebut sesuai dengan kebutuhan pembelajaran, sehingga mendapat skor 2. Pilihan A paling rendah karena memilih aplikasi hanya berdasarkan banyaknya siswa yang menggunakannya belum menunjukkan pertimbangan terhadap kesesuaian teknologi dengan tujuan pembelajaran dan kemampuan siswa, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  76,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda diminta membantu seorang rekan mengolah data hasil survei yang terdiri atas ratusan baris. Rekan tersebut selama ini menghitung dan mengelompokkan data secara manual karena merasa lebih mudah dipahami. Pekerjaan tersebut cukup memakan waktu dan beberapa hasil perhitungan sering berbeda ketika diperiksa ulang. Anda mengetahui bahwa aplikasi spreadsheet yang digunakan memiliki fitur yang dapat membantu proses tersebut. Sikap Anda adalah...',
  NULL,
  '{"A":"Mengajarkan fungsi perhitungan yang sesuai agar rekan dapat mengurangi pekerjaan manual.","B":"Mengubah seluruh proses pengolahan menjadi otomatis agar pekerjaan dapat selesai lebih cepat.","C":"Menggunakan fitur spreadsheet yang relevan pada bagian pekerjaan yang paling sering menimbulkan kesalahan.","D":"Menunjukkan penggunaan fitur yang sesuai dengan kebutuhan pengolahan data dan membandingkan hasilnya dengan perhitungan sebelumnya.","E":"Menyarankan rekan menggunakan fitur spreadsheet agar pengolahan data tidak perlu dilakukan secara manual."}'::jsonb,
  '{"A":4,"B":2,"C":3,"D":5,"E":1}'::jsonb,
  'D',
  'Pilihan D mendapat skor 5 karena tidak sekadar memperkenalkan fitur, tetapi memastikan fitur tersebut sesuai dengan kebutuhan dan hasilnya dapat dibandingkan dengan pengolahan sebelumnya. Hal ini menunjukkan pemanfaatan teknologi untuk meningkatkan efisiensi sekaligus ketepatan pekerjaan. Pilihan A mendapat skor 4 karena membantu rekan memanfaatkan fungsi yang relevan dan mengurangi pekerjaan manual. Namun, belum memastikan bahwa hasil penggunaan fungsi tersebut sesuai dengan hasil pengolahan sebelumnya. Pilihan C mendapat skor 3 karena berfokus pada bagian yang paling sering menimbulkan kesalahan, tetapi pemanfaatannya masih terbatas dan belum menunjukkan evaluasi terhadap hasil. Pilihan B mendapat skor 2 karena otomatisasi dapat meningkatkan efisiensi, tetapi mengubah seluruh proses sekaligus tanpa mempertimbangkan kebutuhan setiap tahap dapat menimbulkan kesalahan baru. Pilihan E mendapat skor 1 karena hanya memberikan saran umum tanpa membantu menentukan fitur atau cara penggunaan yang sesuai.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  77,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda merupakan pegawai yang membantu mengelola sistem informasi sebuah instansi. Suatu pagi, Anda mengetahui bahwa sebagian data pengguna pada sistem diduga tersebar di luar sistem dan mulai dibicarakan di media sosial. Anda belum mengetahui penyebab maupun seberapa luas data yang terdampak. Tindakan yang paling tepat Anda lakukan adalah....',
  NULL,
  '{"A":"segera memberitahukan kepada rekan kerja agar lebih berhati-hati dalam menggunakan sistem","B":"memeriksa data yang tersebar untuk mengetahui informasi apa saja yang kemungkinan terdampak","C":"melaporkan dugaan kebocoran kepada pihak yang menangani keamanan sistem untuk dilakukan pemeriksaan","D":"meminta pengelola sistem menghentikan sementara akses pada bagian yang diduga mengalami kebocoran","E":"melaporkan insiden kepada tim keamanan dan membantu mengidentifikasi cakupan serta penyebab kebocoran berdasarkan prosedur yang berlaku"}'::jsonb,
  '{"A":2,"B":3,"C":4,"D":1,"E":5}'::jsonb,
  'E',
  'Menghadapi dugaan kebocoran data perlu dilakukan dengan respons yang terukur agar insiden dapat segera ditangani dan dampaknya tidak semakin luas. Pilihan E paling tepat karena melaporkan insiden kepada tim keamanan sekaligus membantu mengidentifikasi cakupan dan penyebab berdasarkan prosedur menunjukkan respons yang terkoordinasi dan mendukung proses penanganan insiden secara menyeluruh, sehingga mendapat skor 5. Pilihan C juga sangat baik karena melaporkan dugaan kebocoran kepada pihak yang berwenang dapat memastikan pemeriksaan dilakukan oleh pihak yang memiliki kompetensi, tetapi belum menunjukkan keterlibatan dalam proses identifikasi insiden, sehingga mendapat skor 4. Pilihan B cukup baik karena memeriksa data yang tersebar dapat membantu mengetahui informasi yang terdampak, tetapi tindakan tersebut belum memastikan insiden segera dilaporkan kepada pihak yang bertanggung jawab, sehingga mendapat skor 3. Pilihan A kurang tepat karena memberitahukan rekan kerja hanya meningkatkan kewaspadaan internal, tetapi belum mengarahkan penanganan kepada pihak yang memiliki kewenangan, sehingga mendapat skor 2. Pilihan D paling rendah karena menghentikan akses secara langsung dapat mengganggu layanan dan belum tentu sesuai dengan prosedur penanganan insiden sebelum cakupan masalah diketahui, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  78,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Instansi Anda menerapkan aplikasi baru untuk mengelola kegiatan pegawai. Aplikasi tersebut memiliki banyak fitur, tetapi sebagian besar pegawai hanya menggunakan beberapa fitur utama. Akibatnya, mereka sering membuka menu yang keliru ketika mencari fungsi tertentu dan membutuhkan waktu lebih lama untuk menyelesaikan pekerjaan. Sikap Anda sebagai bagian tim IT adalah......',
  NULL,
  '{"A":"Membuat daftar fitur yang paling sering digunakan agar pegawai lebih mudah menemukan fungsi yang dibutuhkan.","B":"Mengusulkan penyederhanaan tampilan berdasarkan pola penggunaan fitur agar fungsi utama lebih mudah ditemukan.","C":"Meminta pegawai mempelajari seluruh fitur agar dapat memanfaatkan aplikasi secara maksimal.","D":"Mengidentifikasi fitur yang paling sering digunakan dan menyusun panduan berdasarkan kebutuhan pekerjaan utama.","E":"Menyarankan pegawai menggunakan fitur yang sudah mereka pahami terlebih dahulu."}'::jsonb,
  '{"A":3,"B":5,"C":1,"D":4,"E":2}'::jsonb,
  'B',
  'Menghadapi kesulitan pegawai dalam menggunakan aplikasi perlu dilakukan dengan memanfaatkan teknologi berdasarkan kebutuhan pekerjaan agar penggunaan aplikasi menjadi lebih efektif. Pilihan B paling tepat karena mengusulkan penyederhanaan tampilan berdasarkan pola penggunaan fitur dapat membuat fungsi yang paling dibutuhkan lebih mudah ditemukan dan mengurangi kesalahan saat menggunakan aplikasi, sehingga mendapat skor 5. Pilihan D juga sangat baik karena mengidentifikasi fitur yang sering digunakan dan menyusun panduan berdasarkan kebutuhan pekerjaan dapat membantu pegawai menemukan fungsi yang diperlukan, tetapi belum melakukan perbaikan langsung pada tampilan aplikasi, sehingga mendapat skor 4. Pilihan A cukup tepat karena membuat daftar fitur yang sering digunakan dapat membantu pegawai menemukan fungsi yang dibutuhkan, tetapi belum disesuaikan dengan pola penggunaan maupun melakukan perbaikan pada sistem, sehingga mendapat skor 3. Pilihan E kurang tepat karena menyarankan pegawai menggunakan fitur yang sudah dipahami memang dapat mengurangi kebingungan sementara, tetapi tidak membantu pegawai memahami fungsi lain yang dibutuhkan dalam pekerjaan, sehingga mendapat skor 2. Pilihan C paling rendah karena meminta pegawai mempelajari seluruh fitur justru dapat menambah beban belajar dan belum menyelesaikan masalah utama berupa kesulitan menemukan fungsi yang dibutuhkan, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  79,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda membantu menyiapkan informasi layanan dalam beberapa bahasa menggunakan fitur terjemahan otomatis. Setelah diperiksa, sebagian besar terjemahan dapat dipahami, tetapi terdapat beberapa istilah pelayanan yang memiliki makna berbeda setelah diterjemahkan. Informasi tersebut akan dipasang pada laman resmi instansi. Sikap Anda adalah...',
  NULL,
  '{"A":"Menelaah istilah yang berubah makna dan menyesuaikannya dengan konteks layanan sebelum informasi dipublikasikan.","B":"Membandingkan istilah yang bermasalah dengan istilah pada sumber asli lalu memilih terjemahan yang paling mudah dipahami pengguna.","C":"Memeriksa kembali keseluruhan hasil terjemahan dan meminta pihak yang memahami bahasa tersebut meninjau bagian yang diragukan.","D":"Menandai istilah yang memiliki perbedaan makna dan mengubahnya berdasarkan padanan bahasa yang umum digunakan.","E":"Menggunakan hasil terjemahan yang tersedia dan memperbaiki istilah yang dipersoalkan setelah informasi mendapat tanggapan pengguna."}'::jsonb,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'A',
  'Pilihan A mendapat skor 5 karena berfokus pada istilah yang mengalami perubahan makna sekaligus mempertimbangkan konteks pelayanan sebelum informasi resmi digunakan, sehingga hasil terjemahan tidak hanya benar secara bahasa tetapi juga sesuai dengan maksud layanan. C mendapat skor 4 karena melibatkan peninjauan oleh pihak yang memahami bahasa dan memeriksa bagian yang diragukan, tetapi cakupan tindakannya masih lebih berfokus pada pengecekan hasil daripada memastikan setiap istilah sesuai dengan konteks pelayanan. B mendapat skor 3 karena membandingkan istilah dengan sumber asli dapat membantu menentukan padanan yang tepat, tetapi ukuran yang digunakan lebih menekankan kemudahan dipahami daripada kesesuaian makna dalam konteks layanan. D mendapat skor 2 karena sudah berusaha memperbaiki istilah yang bermasalah, tetapi penggunaan padanan yang umum belum tentu sesuai dengan makna khusus dalam pelayanan instansi. E mendapat skor 1 karena membiarkan informasi dipublikasikan terlebih dahulu berisiko membuat pengguna menerima informasi dengan makna yang keliru, sedangkan perbaikan baru dilakukan setelah muncul tanggapan.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  80,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda bertugas membantu mengelola jadwal kegiatan di sebuah instansi pemerintah. Aplikasi yang digunakan memiliki fitur pengingat otomatis yang akan mengirimkan notifikasi kepada pegawai berdasarkan jadwal yang telah dimasukkan. Setelah beberapa waktu digunakan, Anda menemukan bahwa sebagian pegawai mulai mengandalkan notifikasi tersebut dan jarang memeriksa perubahan jadwal yang disampaikan melalui kanal resmi lainnya. Apa langkah paling tepat yang Anda lakukan?',
  NULL,
  '{"A":"Mengingatkan pegawai untuk memeriksa informasi jadwal pada kanal resmi sebagai bagian dari kebiasaan kerja.","B":"Tetap menggunakan fitur pengingat karena dapat membantu pegawai menerima informasi kegiatan secara lebih praktis.","C":"Menyampaikan kepada atasan bahwa penggunaan pengingat perlu disertai kebiasaan memeriksa informasi dari sumber resmi.","D":"Mendorong pegawai menggunakan pengingat sekaligus memeriksa pembaruan jadwal pada aplikasi secara berkala.","E":"Mengusulkan agar informasi perubahan jadwal ditampilkan lebih jelas pada aplikasi agar mudah diperiksa Kembali."}'::jsonb,
  '{"A":3,"B":1,"C":4,"D":5,"E":2}'::jsonb,
  'D',
  'Pemanfaatan teknologi dalam pekerjaan perlu diimbangi dengan kemampuan pengguna untuk tetap memahami dan mengendalikan proses kerja. Pilihan D paling tepat karena mendorong pemanfaatan fitur pengingat sekaligus membangun kebiasaan memeriksa pembaruan secara berkala, sehingga teknologi digunakan sebagai alat bantu dan tidak menjadi satu-satunya sumber informasi. Pilihan C juga baik karena menyadari adanya risiko ketergantungan pada fitur otomatis dan menyampaikannya kepada atasan, tetapi tindakannya belum secara langsung membangun kebiasaan penggunaan teknologi yang lebih tepat sehingga mendapat skor 4. Pilihan A cukup tepat karena mengingatkan pegawai untuk menggunakan kanal resmi sebagai pembanding, tetapi belum memberikan pendekatan yang lebih konkret terhadap pola penggunaan aplikasi sehingga mendapat skor 3. Pilihan E menunjukkan perhatian terhadap kemudahan pengguna dalam memeriksa informasi, tetapi perubahan tampilan aplikasi belum tentu menyelesaikan kebiasaan pegawai yang terlalu bergantung pada notifikasi sehingga mendapat skor 2. Pilihan B mendapat skor 1 karena hanya mempertahankan penggunaan fitur yang ada tanpa mempertimbangkan perubahan perilaku pengguna yang dapat menyebabkan informasi dari sumber lain terabaikan.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  81,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda menjadi bagian dari tim yang menyiapkan kegiatan pelayanan terpadu bersama beberapa unit di instansi. Menjelang pelaksanaan, salah satu unit mengubah jadwal petugas karena adanya kegiatan lain yang harus diprioritaskan. Perubahan tersebut berpotensi memengaruhi pembagian tugas unit lain. Sikap Anda adalah...',
  NULL,
  '{"A":"Menghubungi unit terkait untuk menyesuaikan pembagian tugas berdasarkan kondisi terbaru.","B":"Menunggu keputusan koordinator sebelum membahas perubahan tugas dengan unit lainnya.","C":"Menyampaikan perubahan tersebut kepada anggota tim agar setiap unit dapat menyesuaikan pekerjaannya.","D":"Membahas perubahan bersama unit terkait dan menyepakati pembagian tugas yang tetap mendukung kegiatan.","E":"Meminta unit tersebut mempertahankan jadwal awal agar pembagian tugas yang telah dibuat tetap berjalan."}'::jsonb,
  '{"A":4,"B":2,"C":3,"D":5,"E":1}'::jsonb,
  'D',
  'Menghadapi perubahan jadwal salah satu unit yang berdampak pada pembagian tugas perlu dilakukan dengan komunikasi dan koordinasi agar setiap unit dapat menyesuaikan perannya dan kegiatan tetap berjalan dengan baik. Pilihan D paling tepat karena membahas perubahan bersama unit terkait dan menyepakati pembagian tugas yang tetap mendukung kegiatan menunjukkan adanya koordinasi serta upaya mencari solusi yang disepakati bersama, sehingga mendapat skor 5. Pilihan A juga sangat baik karena menghubungi unit terkait untuk menyesuaikan pembagian tugas menunjukkan respons cepat terhadap perubahan kondisi, tetapi belum secara langsung memastikan adanya kesepakatan pembagian tugas antarunit, sehingga mendapat skor 4. Pilihan C cukup tepat karena menyampaikan perubahan kepada anggota tim dapat membantu setiap unit mengetahui kondisi terbaru dan menyesuaikan pekerjaan, tetapi belum menunjukkan koordinasi langsung untuk menyelesaikan dampak perubahan terhadap pembagian tugas, sehingga mendapat skor 3. Pilihan B kurang tepat karena menunggu keputusan koordinator dapat menjaga kewenangan dalam pengambilan keputusan, tetapi kurang responsif terhadap perubahan yang sudah berpotensi memengaruhi pekerjaan unit lain, sehingga mendapat skor 2. Pilihan E paling rendah karena meminta unit mempertahankan jadwal awal hanya untuk menjaga pembagian tugas yang sudah dibuat belum mempertimbangkan kondisi dan kebutuhan unit tersebut yang mengalami perubahan, sehingga dapat menghambat koordinasi dan kelancaran kegiatan, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  82,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda terlibat dalam penyusunan laporan kegiatan yang membutuhkan data dari beberapa bidang. Salah satu bidang memiliki data yang diperlukan tim Anda, tetapi mereka sedang menyelesaikan laporan lain dengan batas waktu yang berdekatan. Jika data tidak segera tersedia, penyusunan laporan tim Anda akan ikut tertunda. Sikap Anda adalah...',
  NULL,
  '{"A":"Menjelaskan kebutuhan data kepada bidang tersebut dan menyesuaikan waktu pengiriman dengan kondisi mereka.","B":"Meminta data segera dikirim agar pekerjaan tim Anda dapat mengikuti jadwal yang telah ditetapkan.","C":"Menghubungi anggota yang menangani data untuk mengetahui bagian yang dapat dibagikan terlebih dahulu.","D":"Membicarakan kebutuhan data dengan bidang tersebut dan menyepakati bagian yang dapat dipenuhi sesuai prioritas.","E":"Menunggu bidang tersebut menyelesaikan pekerjaannya sebelum meminta data yang dibutuhkan."}'::jsonb,
  '{"A":4,"B":2,"C":3,"D":5,"E":1}'::jsonb,
  'D',
  'Dalam jejaring kerja, pencapaian target perlu memperhatikan kepentingan dan kondisi pihak yang saling bergantung. Pilihan D mendapat skor 5 karena membuka pembicaraan dengan bidang terkait dan menghasilkan kesepakatan mengenai kebutuhan data berdasarkan prioritas, sehingga kedua pihak tetap dapat menjalankan tanggung jawabnya. Pilihan A mendapat skor 4 karena mempertimbangkan kondisi bidang lain sekaligus membahas waktu pengiriman, tetapi belum secara spesifik membangun kesepakatan mengenai bagian yang dapat dipenuhi. Pilihan C mendapat skor 3 karena mencari informasi langsung kepada petugas terkait dapat mempercepat komunikasi, tetapi koordinasinya masih terbatas pada individu dan belum menyelaraskan kebutuhan antartim. Pilihan B mendapat skor 2 karena lebih menekankan kepentingan tim sendiri dan kurang mempertimbangkan beban bidang lain. Pilihan E mendapat skor 1 karena sikap pasif tersebut dapat memperbesar risiko keterlambatan pekerjaan.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  83,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda mengikuti tim yang bekerja sama dengan organisasi masyarakat dalam kegiatan edukasi publik. Dalam rapat persiapan, pihak organisasi mengusulkan bentuk kegiatan yang lebih menarik bagi masyarakat, sedangkan beberapa anggota tim Anda menganggap usulan tersebut kurang sesuai dengan konsep awal. Perbedaan tersebut mulai membuat pembahasan berjalan cukup lama. Sikap Anda adalah...',
  NULL,
  '{"A":"Membandingkan usulan kedua pihak berdasarkan kebutuhan peserta dan tujuan kegiatan.","B":"Menyampaikan kepada organisasi bahwa konsep awal telah disusun berdasarkan rencana yang disepakati.","C":"Mengajak kedua pihak membahas bagian kegiatan yang dapat disesuaikan dengan kebutuhan masing-masing.","D":"Meminta koordinator menentukan konsep yang akan digunakan agar pembahasan segera selesai.","E":"Mengutamakan konsep tim sendiri sambil mempertimbangkan masukan dari pihak organisasi."}'::jsonb,
  '{"A":4,"B":2,"C":5,"D":1,"E":3}'::jsonb,
  'C',
  'Jejaring kerja dengan pihak yang memiliki sudut pandang berbeda membutuhkan kemampuan mencari titik temu dengan tetap menjaga tujuan kegiatan. Pilihan C mendapat skor 5 karena membuka ruang pembahasan bagi kedua pihak dan mencari bagian yang dapat disesuaikan, sehingga perbedaan tidak berhenti pada pilihan salah satu pihak. Pilihan A mendapat skor 4 karena menggunakan tujuan dan kebutuhan peserta sebagai dasar penilaian yang objektif, tetapi belum secara langsung mendorong kedua pihak menemukan bentuk kerja sama. Pilihan E mendapat skor 3 karena masih mempertimbangkan masukan pihak lain, tetapi posisi awal tetap lebih dominan sehingga ruang komprominya lebih terbatas. Pilihan B mendapat skor 2 karena hanya mempertahankan konsep yang telah dibuat dan kurang membuka peluang penyesuaian. Pilihan D mendapat skor 1 karena menyerahkan perbedaan kepada koordinator tanpa terlebih dahulu memanfaatkan proses kerja sama untuk mencari solusi.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  84,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda bertugas dalam tim yang mengadakan kegiatan di beberapa wilayah dan membutuhkan dukungan dari petugas lapangan setempat. Salah satu petugas memberikan informasi bahwa kondisi di wilayahnya berbeda dari asumsi yang digunakan tim pusat dalam menyusun rencana. Informasi tersebut belum tercantum dalam rencana awal, tetapi dapat memengaruhi pelaksanaan kegiatan. Sikap Anda adalah...',
  NULL,
  '{"A":"Mempertimbangkan informasi petugas lapangan saat menyesuaikan bagian kegiatan yang terdampak.","B":"Meminta petugas mengikuti rencana yang telah ditetapkan sambil mencatat kondisi yang berbeda.","C":"Menyampaikan informasi tersebut kepada anggota tim agar dapat dipertimbangkan dalam pelaksanaan.","D":"Mendiskusikan kondisi tersebut dengan petugas lapangan dan menyesuaikan rencana yang paling memungkinkan.","E":"Meminta koordinator menilai kembali rencana berdasarkan informasi dari petugas lapangan."}'::jsonb,
  '{"A":4,"B":1,"C":3,"D":5,"E":2}'::jsonb,
  'D',
  'Jejaring kerja yang efektif tidak hanya mengandalkan rencana pusat, tetapi juga memanfaatkan pengetahuan dari pihak yang berhadapan langsung dengan kondisi lapangan. Pilihan D mendapat skor 5 karena melibatkan petugas lapangan dalam membahas kondisi aktual dan menyesuaikan rencana berdasarkan kemungkinan yang tersedia. Pilihan A mendapat skor 4 karena sudah mempertimbangkan informasi lapangan dalam penyesuaian kegiatan, tetapi belum menunjukkan koordinasi langsung dengan pihak yang memberikan informasi tersebut. Pilihan C mendapat skor 3 karena menyampaikan informasi kepada tim membantu memperluas pemahaman, tetapi belum menghasilkan penyesuaian yang konkret. Pilihan E mendapat skor 2 karena melibatkan koordinator memang dapat memberikan arah, tetapi proses koordinasi dengan petugas lapangan belum dimanfaatkan secara optimal. Pilihan B mendapat skor 1 karena terlalu mempertahankan rencana awal meskipun terdapat informasi baru yang relevan terhadap pelaksanaan.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  85,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda bekerja dalam tim yang sedang mempersiapkan program bersama unit lain. Pada tahap pelaksanaan, Anda menemukan bahwa cara kerja tim Anda berbeda dengan unit mitra sehingga beberapa pekerjaan saling menunggu. Kedua tim sebenarnya memiliki target yang sama, tetapi belum memiliki kesepakatan mengenai urutan pekerjaan. Sikap Anda adalah...',
  NULL,
  '{"A":"Membicarakan perbedaan alur kerja dengan unit mitra dan menentukan bagian yang perlu diselaraskan.","B":"Menyesuaikan cara kerja tim Anda dengan kebiasaan unit mitra agar pekerjaan dapat terus berjalan.","C":"Menyampaikan kendala kepada koordinator dan menunggu arahan mengenai pembagian pekerjaan.","D":"Mengusulkan pembagian urutan kerja yang mempertimbangkan kebutuhan kedua tim.","E":"Mengajak anggota tim menyelesaikan bagian masing-masing terlebih dahulu sebelum membahas perbedaan alur."}'::jsonb,
  '{"A":5,"B":3,"C":2,"D":4,"E":1}'::jsonb,
  'A',
  'Ketika dua tim memiliki target yang sama tetapi pola kerja berbeda, jejaring kerja membutuhkan penyelarasan antaranggota agar pekerjaan tidak saling menunggu. Pilihan A mendapat skor 5 karena secara langsung membahas perbedaan dengan unit mitra dan menentukan bagian yang perlu diselaraskan, sehingga hambatan koordinasi dapat ditangani bersama. Pilihan D mendapat skor 4 karena menawarkan pembagian urutan kerja dengan mempertimbangkan kebutuhan kedua tim, tetapi belum menunjukkan adanya pembahasan langsung dengan unit mitra mengenai alur yang sedang menjadi kendala. Pilihan B mendapat skor 3 karena penyesuaian dapat membantu pekerjaan berjalan, tetapi hanya mengakomodasi cara kerja pihak lain dan belum memastikan alur kedua tim benar-benar selaras. Pilihan C mendapat skor 2 karena melibatkan koordinator merupakan langkah yang dapat dilakukan, tetapi terlalu cepat menyerahkan persoalan yang sebenarnya masih dapat dikoordinasikan antartim. Pilihan E mendapat skor 1 karena membiarkan masing-masing tim bekerja sendiri justru berisiko mempertahankan pekerjaan yang saling menunggu.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  86,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda ditugaskan dalam tim yang menyelenggarakan program pemberdayaan masyarakat bersama perguruan tinggi setempat. Saat pelaksanaan, pihak perguruan tinggi menawarkan mahasiswa untuk membantu kegiatan lapangan, sedangkan tim Anda memiliki keterbatasan tenaga pendamping. Namun, terdapat beberapa bagian kegiatan yang belum jelas pembagian tanggung jawabnya. Apa yang Anda lakukan?',
  NULL,
  '{"A":"Membahas pembagian tanggung jawab dengan pihak perguruan tinggi agar dukungan mahasiswa dapat digunakan sesuai kebutuhan kegiatan.","B":"Menentukan tugas mahasiswa berdasarkan kebutuhan tim lalu menyampaikan pembagian tersebut kepada pihak perguruan tinggi.","C":"Meminta koordinator menetapkan pembagian tugas agar keterlibatan pihak perguruan tinggi tetap sesuai rencana.","D":"Mengarahkan mahasiswa membantu pekerjaan lapangan yang sedang membutuhkan tenaga paling banyak.","E":"Menyusun pembagian tugas internal terlebih dahulu sebelum menentukan bentuk dukungan dari pihak perguruan tinggi."}'::jsonb,
  '{"A":5,"B":4,"C":2,"D":3,"E":1}'::jsonb,
  'A',
  'Jejaring kerja dengan pihak eksternal membutuhkan kemampuan menyelaraskan kebutuhan organisasi dengan kapasitas mitra agar kerja sama memberikan hasil yang optimal. Pilihan A paling tepat karena membahas pembagian tanggung jawab secara langsung dengan pihak perguruan tinggi sehingga dukungan yang tersedia dapat disesuaikan dengan kebutuhan kegiatan dan peran masing-masing pihak menjadi jelas, sehingga mendapat skor 5. Pilihan B juga baik karena berusaha mengatur pemanfaatan dukungan mahasiswa berdasarkan kebutuhan kegiatan, tetapi pembagian tersebut lebih banyak ditentukan dari sisi tim sendiri sehingga ruang penyelarasan dengan mitra lebih terbatas, sehingga mendapat skor 4. Pilihan D cukup tepat karena mengarahkan mahasiswa pada pekerjaan yang membutuhkan tenaga dapat membantu kelancaran kegiatan, tetapi pembagian tersebut belum membangun kesepahaman mengenai tanggung jawab kedua pihak, sehingga mendapat skor 3. Pilihan C masih dapat dilakukan karena koordinator memiliki kewenangan menentukan arah kerja sama, tetapi menyerahkan persoalan tersebut kepada koordinator sebelum membangun koordinasi dengan mitra membuat proses jejaring kurang optimal, sehingga mendapat skor 2. Pilihan E mendapat skor 1 karena lebih memprioritaskan pengaturan internal dan menunda pemanfaatan dukungan mitra, padahal keterlibatan pihak eksternal dapat membantu mengatasi keterbatasan tenaga dalam kegiatan.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  87,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda merupakan seorang guru yang memiliki siswa pindahan di kelas. Siswa tersebut cenderung pendiam dan tertutup sehingga lebih sering menyendiri saat kegiatan kelompok maupun waktu istirahat. Anda ingin membantu siswa tersebut agar secara perlahan dapat membangun hubungan dengan teman-teman barunya. Tindakan yang paling tepat Anda lakukan adalah....',
  NULL,
  '{"A":"meminta siswa tersebut mengikuti kegiatan bersama teman-temannya agar lebih cepat beradaptasi","B":"mengajak siswa tersebut berkomunikasi secara pribadi untuk mengetahui kesulitannya berinteraksi","C":"melibatkan siswa tersebut dalam kegiatan kelompok bersama beberapa teman yang mudah diajak bekerja sama","D":"meminta beberapa siswa untuk mengajak siswa tersebut bergabung dalam kegiatan kelas","E":"merancang kegiatan kolaboratif yang memberi kesempatan siswa tersebut berinteraksi secara bertahap dengan teman-temannya"}'::jsonb,
  '{"A":1,"B":2,"C":4,"D":3,"E":5}'::jsonb,
  'E',
  'Menghadapi siswa yang cenderung tertutup perlu dilakukan dengan membangun kesempatan interaksi secara bertahap agar siswa dapat membentuk hubungan dengan teman-temannya secara nyaman. Pilihan E paling tepat karena merancang kegiatan kolaboratif yang memungkinkan siswa berinteraksi secara bertahap dapat membangun jejaring secara lebih luas dan terarah, sehingga mendapat skor 5. Pilihan C juga sangat baik karena melibatkan siswa dalam kegiatan kelompok dapat membuka kesempatan untuk bekerja sama dan mengenal teman baru, tetapi interaksinya masih terbatas pada kelompok tertentu, sehingga mendapat skor 4. Pilihan D cukup baik karena meminta beberapa siswa mengajak siswa tersebut bergabung dapat membantu membuka hubungan sosial, tetapi peran guru dalam membangun proses interaksi masih terbatas, sehingga mendapat skor 3. Pilihan B kurang tepat karena komunikasi pribadi dapat membantu mengetahui kesulitan siswa, tetapi belum secara langsung memberikan kesempatan untuk membangun hubungan dengan teman-temannya, sehingga mendapat skor 2. Pilihan A paling rendah karena meminta siswa langsung mengikuti kegiatan bersama teman-temannya belum mempertimbangkan proses adaptasi yang perlu dilakukan secara bertahap, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  88,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda menjadi anggota tim yang mengembangkan inovasi pelayanan bersama sebuah unit dari instansi lain. Dalam prosesnya, unit tersebut memiliki sumber daya teknologi yang lebih lengkap, sedangkan tim Anda lebih memahami kebutuhan pengguna layanan. Masing-masing pihak mulai mengembangkan bagian pekerjaannya sendiri sehingga terdapat beberapa gagasan yang berpotensi saling tumpang tindih. Apa yang Anda lakukan?',
  NULL,
  '{"A":"Membahas pembagian kontribusi kedua pihak agar sumber daya dan pengetahuan dapat digunakan secara saling melengkapi.","B":"Menyelaraskan gagasan tim Anda dengan pekerjaan unit mitra agar bagian yang dikerjakan tidak saling tumpang tindih.","C":"Menyampaikan bagian yang telah dikerjakan tim Anda kepada unit mitra untuk menjadi bahan pengembangan berikutnya.","D":"Meminta koordinator dari kedua pihak menentukan pembagian pekerjaan berdasarkan kemampuan masing-masing.","E":"Memusatkan pengembangan pada bagian yang menjadi tanggung jawab tim Anda agar pekerjaan tetap berjalan."}'::jsonb,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'A',
  'Kerja sama lintas unit akan lebih efektif apabila setiap pihak dapat menggabungkan keunggulan yang dimiliki dan memahami kontribusi masing-masing. Pilihan A paling tepat karena mempertemukan sumber daya teknologi dari unit mitra dengan pemahaman tim terhadap kebutuhan pengguna sehingga pembagian kontribusi dibangun berdasarkan kekuatan kedua pihak dan mendapat skor 5. Pilihan B juga baik karena berupaya menyelaraskan pekerjaan agar tidak terjadi tumpang tindih, tetapi fokusnya lebih terbatas pada kesesuaian pekerjaan dibanding pemanfaatan keunggulan kedua pihak secara menyeluruh, sehingga mendapat skor 4. Pilihan C cukup tepat karena membagikan hasil pekerjaan dapat membantu mitra memahami perkembangan yang sudah dilakukan, tetapi belum secara aktif menyelaraskan kontribusi kedua pihak, sehingga mendapat skor 3. Pilihan D masih dapat dilakukan untuk mendapatkan kejelasan pembagian kerja, tetapi terlalu mengandalkan keputusan koordinator dan belum memanfaatkan komunikasi langsung antarpihak yang mengerjakan program, sehingga mendapat skor 2. Pilihan E mendapat skor 1 karena hanya berfokus pada bagian tim sendiri dan berpotensi mempertahankan tumpang tindih yang terjadi dalam kerja sama.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  89,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda merupakan seorang manajer proyek yang bekerja sama dengan beberapa vendor untuk menjalankan sebuah proyek. Salah satu vendor beberapa kali menyampaikan protes karena merasa pembayaran yang diterimanya terlambat, padahal berdasarkan catatan dan perjanjian, pembayaran dari perusahaan Anda telah dilakukan sesuai jadwal. Anda ingin meluruskan kesalahpahaman tersebut sekaligus menjaga hubungan kerja yang baik dengan vendor. Tindakan yang paling tepat Anda lakukan adalah....',
  NULL,
  '{"A":"menjelaskan bahwa pembayaran telah dilakukan sesuai perjanjian dan meminta vendor memeriksa kembali catatannya","B":"menunjukkan bukti pembayaran kepada vendor agar dapat mengetahui bahwa kewajiban perusahaan telah dipenuhi","C":"mengajak vendor membahas kendala pembayaran untuk mengetahui bagian proses yang menyebabkan perbedaan informasi","D":"menjelaskan bukti pembayaran dan mengajak vendor menyepakati mekanisme pengecekan pembayaran berikutnya","E":"mengklarifikasi perbedaan informasi bersama vendor serta menyepakati cara komunikasi agar kendala serupa tidak berulang"}'::jsonb,
  '{"A":3,"B":2,"C":4,"D":5,"E":1}'::jsonb,
  'D',
  'Menghadapi protes dari mitra perlu dilakukan dengan komunikasi yang terbuka dan tetap menjaga hubungan kerja agar persoalan dapat diselesaikan tanpa menimbulkan konflik baru. Pilihan D paling tepat karena menjelaskan bukti pembayaran sekaligus mengajak vendor menyepakati mekanisme pengecekan berikutnya dapat menyelesaikan perbedaan informasi dan membangun pola kerja yang lebih baik, sehingga mendapat skor 5. Pilihan C juga sangat baik karena membahas kendala bersama vendor dapat membantu menemukan sumber perbedaan informasi, tetapi belum menghasilkan kesepakatan mengenai mekanisme yang dapat mencegah masalah serupa, sehingga mendapat skor 4. Pilihan A cukup tepat karena memberikan penjelasan berdasarkan perjanjian dan meminta vendor melakukan pengecekan kembali, tetapi pendekatan tersebut masih lebih berfokus pada klarifikasi daripada mencari solusi bersama, sehingga mendapat skor 3. Pilihan B kurang tepat karena menunjukkan bukti pembayaran dapat memperjelas bahwa kewajiban perusahaan telah dipenuhi, tetapi belum menyentuh kemungkinan adanya kendala dalam proses komunikasi atau pencatatan di pihak vendor, sehingga mendapat skor 2. Pilihan E paling rendah karena mengklarifikasi informasi dan menyepakati komunikasi memang dapat membantu menjaga hubungan, tetapi belum secara jelas memastikan penyelesaian persoalan pembayaran berdasarkan bukti dan ketentuan yang telah disepakati, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  90,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Anda menjadi bagian dari tim yang menjalin kerja sama dengan pengelola fasilitas publik untuk mendukung sebuah program pemerintah. Menjelang pelaksanaan, pengelola fasilitas menawarkan lokasi alternatif karena tempat yang sebelumnya direncanakan akan digunakan untuk kegiatan lain. Lokasi baru memiliki akses yang lebih mudah bagi masyarakat, tetapi kapasitas ruangnya lebih terbatas. Apa yang Anda lakukan?',
  NULL,
  '{"A":"Membahas kondisi kedua lokasi bersama pengelola untuk menentukan pilihan yang paling mendukung kebutuhan program.","B":"Mempertimbangkan akses lokasi baru dan menyesuaikan kebutuhan kegiatan dengan kapasitas yang tersedia.","C":"Meminta pengelola mempertahankan lokasi awal agar persiapan yang telah dilakukan tetap dapat digunakan.","D":"Menyampaikan perubahan lokasi kepada tim untuk menentukan penyesuaian kegiatan yang diperlukan.","E":"Menggunakan lokasi alternatif agar pelaksanaan tetap berjalan sesuai jadwal yang telah ditentukan."}'::jsonb,
  '{"A":5,"B":4,"C":1,"D":3,"E":2}'::jsonb,
  'A',
  'Dalam jejaring kerja, perubahan kondisi dari salah satu mitra perlu direspons melalui komunikasi dan pertimbangan kepentingan bersama. Pilihan A paling tepat karena membahas kedua alternatif bersama pengelola dengan mempertimbangkan kebutuhan program sehingga keputusan tidak hanya didasarkan pada satu kelebihan lokasi, melainkan pada kesesuaiannya dengan tujuan kegiatan dan mendapat skor 5. Pilihan B juga baik karena mempertimbangkan keunggulan akses sekaligus menyesuaikan kegiatan dengan kapasitas lokasi, tetapi proses pengambilan keputusannya belum menunjukkan penyelarasan secara langsung dengan pihak pengelola, sehingga mendapat skor 4. Pilihan D cukup tepat karena membawa perubahan kondisi kepada tim dan membuka peluang penyesuaian, tetapi koordinasi dengan mitra belum dimanfaatkan secara optimal, sehingga mendapat skor 3. Pilihan E menunjukkan fleksibilitas agar jadwal tetap berjalan, tetapi langsung menerima okasi alternatif sebelum mempertimbangkan seluruh konsekuensinya, sehingga mendapat skor 2. Pilihan C mendapat skor 1 karena mempertahankan lokasi awal hanya berdasarkan persiapan yang sudah dilakukan dan kurang mempertimbangkan kondisi baru serta kemungkinan manfaat lokasi alternatif bagi masyarakat.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  91,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Anda bekerja pada unit yang mengelola program pelatihan bagi masyarakat. Kuota peserta tahun ini terbatas, sementara jumlah pendaftar jauh lebih banyak dari kapasitas yang tersedia. Sebagian calon peserta merupakan warga yang pernah mengikuti pelatihan serupa, sedangkan sebagian lainnya baru pertama kali mendaftar. Masyarakat mulai mempertanyakan dasar penentuan peserta karena informasi mengenai prioritas belum dijelaskan secara rinci. Apa yang Anda lakukan?',
  NULL,
  '{"A":"Mengusulkan agar peserta baru mendapat prioritas agar manfaat program dapat menjangkau lebih banyak masyarakat.","B":"Menggunakan urutan pendaftaran sebagai dasar pemilihan peserta agar proses seleksi mudah dipahami.","C":"Menyusun kriteria prioritas berdasarkan tujuan program dan menyampaikannya secara terbuka kepada calon peserta.","D":"Meminta pimpinan menentukan peserta berdasarkan pertimbangan kondisi masyarakat yang membutuhkan.","E":"Meninjau karakteristik pendaftar dan kebutuhan program sebelum menentukan dasar prioritas peserta."}'::jsonb,
  '{"A":2,"B":1,"C":5,"D":3,"E":4}'::jsonb,
  'C',
  'Menghadapi keterbatasan kuota peserta perlu dilakukan dengan menetapkan dasar prioritas yang objektif dan transparan agar proses pemilihan dapat dipahami oleh masyarakat. Pilihan C paling tepat karena menyusun kriteria prioritas berdasarkan tujuan program serta menyampaikannya secara terbuka dapat membuat proses seleksi lebih jelas, adil, dan dapat dipertanggungjawabkan, sehingga mendapat skor 5. Pilihan E juga sangat baik karena meninjau karakteristik pendaftar dan kebutuhan program dapat menjadi dasar dalam menentukan prioritas peserta, tetapi belum menunjukkan adanya kriteria yang jelas dan disampaikan secara terbuka kepada masyarakat, sehingga mendapat skor 4. Pilihan D cukup tepat karena melibatkan pimpinan dapat membantu menentukan peserta berdasarkan kondisi masyarakat yang membutuhkan, tetapi dasar penentuan prioritas masih bergantung pada pertimbangan pimpinan dan belum memberikan kejelasan kriteria kepada calon peserta, sehingga mendapat skor 3. Pilihan A kurang tepat karena memprioritaskan peserta baru memang dapat memperluas jangkauan manfaat program, tetapi belum tentu sesuai dengan tujuan dan kebutuhan program secara keseluruhan, sehingga mendapat skor 2. Pilihan B paling rendah karena menggunakan urutan pendaftaran memang mudah diterapkan, tetapi belum mempertimbangkan tujuan program maupun kondisi dan kebutuhan calon peserta sebagai dasar penentuan prioritas, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  92,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Anda bertugas pada unit pelayanan yang menangani berbagai jenis permohonan masyarakat. Dari hasil pemantauan, Anda menemukan bahwa waktu penyelesaian beberapa layanan sudah sesuai standar, tetapi masyarakat tetap sering menanyakan perkembangan permohonan mereka karena tidak mengetahui tahapan yang sedang berlangsung. Petugas kemudian cukup sering menerima pertanyaan yang sama dan waktu pelayanan ikut tersita. Apa langkah paling tepat yang Anda lakukan?',
  NULL,
  '{"A":"Menyediakan informasi perkembangan proses pada setiap tahapan yang dapat diakses oleh pemohon.","B":"Menambahkan penjelasan mengenai tahapan dan perkiraan waktu penyelesaian pada informasi layanan.","C":"Meminta petugas memberikan penjelasan lebih rinci ketika masyarakat menanyakan perkembangan permohonan.","D":"Mengingatkan masyarakat untuk menunggu sampai batas waktu penyelesaian yang telah ditetapkan.","E":"Mencatat pertanyaan yang sering diterima untuk menentukan informasi proses yang perlu diperjelas."}'::jsonb,
  '{"A":5,"B":4,"C":3,"D":1,"E":2}'::jsonb,
  'A',
  'Pelayanan publik yang efektif tidak hanya diukur dari ketepatan waktu penyelesaian, tetapi juga dari kemampuan memberikan kepastian informasi kepada masyarakat selama proses berlangsung. Pilihan A paling tepat karena menyediakan informasi perkembangan pada setiap tahapan memungkinkan masyarakat mengetahui status permohonannya secara mandiri dan mengurangi kebutuhan untuk melakukan pertanyaan berulang. Pilihan B mendapat skor 4 karena penjelasan tahapan dan perkiraan waktu dapat meningkatkan pemahaman masyarakat sejak awal, tetapi belum memberikan informasi mengenai perkembangan permohonan yang sedang diproses. Pilihan C mendapat skor 3 karena penjelasan yang lebih rinci dapat membantu masyarakat ketika bertanya, tetapi masih membuat petugas harus menangani pertanyaan satu per satu. Pilihan E mendapat skor 2 karena pencatatan pertanyaan dapat membantu menemukan informasi yang kurang jelas, tetapi belum memberikan solusi langsung terhadap kebutuhan masyarakat untuk mengetahui status permohonannya. Pilihan D mendapat skor 1 karena hanya meminta masyarakat menunggu sesuai standar waktu dan tidak menjawab kebutuhan mereka terhadap kepastian perkembangan proses.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  93,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Sebagai wali kelas, Anda mengetahui bahwa beberapa siswa mulai sering terlambat mengumpulkan tugas. Setelah berdiskusi dengan guru mata pelajaran, ditemukan bahwa sebagian siswa kesulitan membagi waktu karena mengikuti kegiatan sekolah dan memiliki tanggung jawab di luar sekolah. Guru mata pelajaran mengusulkan agar batas pengumpulan tugas dibuat lebih fleksibel, sedangkan guru lain khawatir kebijakan tersebut membuat siswa kurang disiplin. Anda perlu menentukan langkah agar penanganan masalah tetap dapat diterima oleh pihak-pihak yang terlibat. Apa yang Anda lakukan…',
  NULL,
  '{"A":"Menyerahkan keputusan kepada guru mata pelajaran karena masing-masing guru lebih memahami kondisi tugas di kelasnya.","B":"Mengajak guru terkait menyepakati aturan pengumpulan yang tetap memiliki batas waktu dengan mempertimbangkan kondisi siswa.","C":"Meminta seluruh guru memberikan kelonggaran dengan ketentuan yang sama agar siswa memperoleh perlakuan yang seragam.","D":"Mengumpulkan informasi dari siswa mengenai kendala mereka sebagai bahan untuk menentukan kebijakan bersama guru.","E":"Menetapkan aturan baru mengenai pengumpulan tugas setelah mempertimbangkan masukan dari guru dan kondisi siswa."}'::jsonb,
  '{"A":1,"B":5,"C":2,"D":4,"E":3}'::jsonb,
  'B',
  'Pilihan B mendapat skor tertinggi karena menunjukkan kemampuan membangun kesepakatan antaranggota tim dengan tetap menjaga tujuan bersama, yaitu kedisiplinan sekaligus mempertimbangkan kondisi siswa. Pilihan D juga baik karena melibatkan informasi dari pihak yang terdampak sebelum keputusan dibuat, tetapi belum secara langsung mengarah pada penyelarasan antar guru. Pilihan E cukup karena mempertimbangkan berbagai masukan sebelum mengambil keputusan, tetapi keputusan masih lebih terpusat pada wali kelas. Pilihan C menunjukkan upaya menciptakan keseragaman, tetapi belum tentu sesuai dengan karakteristik tugas setiap mata pelajaran. Pilihan A paling rendah karena menyerahkan persoalan kepada masing-masing pihak sehingga koordinasi untuk mencari solusi bersama menjadi kurang optimal.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  94,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Anda bertugas pada bagian pengecekan dokumen administrasi kependudukan. Seorang ibu hamil datang seorang diri untuk mengurus dokumen kependudukan. Setelah dilakukan pemeriksaan, ternyata masih terdapat dokumen persyaratan yang belum lengkap. Ibu tersebut menyampaikan bahwa rumahnya berjarak sekitar tiga jam perjalanan dari kantor pelayanan sehingga akan kesulitan jika harus kembali di lain hari. Sebagai petugas pengecekan dokumen, tindakan yang paling tepat Anda lakukan adalah....',
  NULL,
  '{"A":"menjelaskan dokumen yang kurang dan meminta ibu tersebut melengkapinya sebelum mengajukan kembali","B":"menyampaikan dokumen yang kurang serta menyarankan agar ibu tersebut melengkapinya melalui bantuan keluarga","C":"memeriksa kemungkinan penyelesaian persyaratan yang kurang sesuai dengan prosedur yang berlaku","D":"mengarahkan ibu tersebut kepada petugas terkait untuk mengetahui alternatif penyelesaian yang dapat dilakukan","E":"membantu mencari alternatif penyelesaian sesuai prosedur agar kebutuhan administrasinya dapat dipenuhi dalam kunjungan tersebut"}'::jsonb,
  '{"A":1,"B":2,"C":5,"D":3,"E":4}'::jsonb,
  'C',
  'Menghadapi masyarakat yang mengalami kendala dalam memenuhi persyaratan pelayanan perlu dilakukan dengan tetap berpegang pada ketentuan sekaligus memberikan kemudahan sesuai prosedur yang berlaku. Pilihan C paling tepat karena memeriksa kemungkinan penyelesaian persyaratan yang kurang sesuai dengan prosedur menunjukkan upaya memberikan solusi kepada masyarakat tanpa mengabaikan ketentuan pelayanan, sehingga mendapat skor 5. Pilihan E juga sangat baik karena membantu mencari alternatif penyelesaian dapat memberikan kemudahan kepada ibu tersebut mengingat kondisi dan jarak tempat tinggalnya, tetapi belum secara langsung menunjukkan pemeriksaan terhadap kemungkinan penyelesaian sesuai prosedur, sehingga mendapat skor 4. Pilihan D cukup tepat karena mengarahkan kepada petugas terkait dapat membantu menemukan alternatif penyelesaian yang tersedia, tetapi tanggung jawab dalam mencari solusi masih lebih banyak dialihkan kepada petugas lain, sehingga mendapat skor 3. Pilihan B kurang tepat karena menyarankan bantuan keluarga memang dapat menjadi solusi praktis, tetapi belum mempertimbangkan kemungkinan adanya mekanisme pelayanan yang dapat membantu menyelesaikan kendala tersebut, sehingga mendapat skor 2. Pilihan A paling rendah karena hanya meminta masyarakat kembali setelah melengkapi dokumen belum menunjukkan upaya memberikan kemudahan pelayanan dengan mempertimbangkan kondisi masyarakat yang datang dari jarak jauh, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  95,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Anda mendapat keluhan bahwa kegiatan kerja bakti semakin sulit diikuti warga karena waktunya bertepatan dengan jam kerja sebagian besar warga. Di sisi lain, beberapa warga yang lebih banyak berada di rumah menganggap jadwal tersebut sudah menjadi kebiasaan dan tidak perlu diubah. Jika jadwal dipindahkan, Anda khawatir partisipasi kelompok lain justru menurun. Sebagai ketua RT, langkah apa yang akan Anda ambil…',
  NULL,
  '{"A":"Mempertahankan jadwal yang ada karena sudah menjadi kesepakatan warga sebelumnya.","B":"Menentukan jadwal baru berdasarkan waktu yang paling banyak memungkinkan warga untuk hadir.","C":"Membahas kembali jadwal bersama warga dengan mempertimbangkan pola aktivitas kelompok yang berbeda.","D":"Menawarkan beberapa pilihan waktu kepada warga untuk menentukan jadwal yang paling memungkinkan.","E":"Mengumpulkan masukan warga untuk mencari waktu yang dapat mengakomodasi kondisi sebagian besar kelompok."}'::jsonb,
  '{"A":1,"B":3,"C":4,"D":2,"E":5}'::jsonb,
  'E',
  'Menghadapi perbedaan kebutuhan warga dalam menentukan jadwal kerja bakti perlu dilakukan dengan mempertimbangkan kondisi berbagai kelompok agar keputusan yang diambil tetap dapat meningkatkan partisipasi masyarakat. Pilihan E paling tepat karena mengumpulkan masukan warga untuk mencari waktu yang dapat mengakomodasi kondisi sebagian besar kelompok menunjukkan upaya melibatkan masyarakat sekaligus mencari solusi yang dapat diterima oleh berbagai pihak, sehingga mendapat skor 5. Pilihan C juga sangat baik karena membahas kembali jadwal bersama warga dengan mempertimbangkan pola aktivitas yang berbeda dapat menghasilkan keputusan yang lebih inklusif, tetapi prosesnya masih berfokus pada pembahasan dan belum secara langsung menekankan pencarian waktu yang paling dapat mengakomodasi kelompok warga, sehingga mendapat skor 4. Pilihan B cukup tepat karena menentukan jadwal berdasarkan waktu yang memungkinkan sebagian besar warga hadir dapat meningkatkan partisipasi, tetapi belum menunjukkan adanya pelibatan warga dalam proses penentuan jadwal, sehingga mendapat skor 3. Pilihan D kurang tepat karena menawarkan beberapa pilihan waktu memang memberikan kesempatan kepada warga untuk menentukan jadwal, tetapi belum secara jelas mempertimbangkan kebutuhan kelompok warga yang memiliki pola aktivitas berbeda, sehingga mendapat skor 2. Pilihan A paling rendah karena mempertahankan jadwal hanya berdasarkan kesepakatan sebelumnya belum merespons perubahan kondisi warga yang menyebabkan partisipasi semakin sulit, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  96,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Sebagai wali kota, Anda mendapat laporan bahwa beberapa ruas jalan di pusat kota mengalami kemacetan parah setiap akhir pekan. Kondisi tersebut mulai mengganggu aktivitas warga dan membuat waktu tempuh kendaraan meningkat. Setelah berkoordinasi dengan beberapa pihak, diketahui bahwa pola kemacetan berkaitan dengan aktivitas perdagangan, parkir di badan jalan, serta meningkatnya kunjungan ke kawasan tersebut. Anda perlu menentukan langkah awal agar penanganan masalah tidak berjalan sendiri-sendiri antarinstansi. Apa yang Anda lakukan?',
  NULL,
  '{"A":"Meminta dinas perhubungan segera mengatur rekayasa lalu lintas pada ruas yang paling padat.","B":"Mengarahkan instansi terkait menyusun penanganan berdasarkan data lalu lintas dan kondisi aktivitas kawasan.","C":"Mengumpulkan perwakilan instansi yang berkaitan untuk memetakan sumber masalah dan menentukan pembagian peran.","D":"Meminta setiap instansi menangani aspek yang sesuai dengan kewenangannya kemudian melaporkan hasilnya.","E":"Menetapkan langkah penanganan berdasarkan laporan instansi yang memiliki kewenangan utama atas transportasi."}'::jsonb,
  '{"A":3,"B":4,"C":5,"D":2,"E":1}'::jsonb,
  'C',
  'Pilihan C mendapat skor 5 karena sebagai pemangku kepentingan, wali kota tidak hanya mengarahkan satu instansi bekerja, tetapi membangun koordinasi sejak tahap pemetaan masalah sekaligus memperjelas peran masing-masing pihak sehingga penanganan dapat berjalan terpadu. Pilihan B mendapat skor 4 karena sudah mendorong penggunaan data dan keterlibatan instansi terkait, tetapi belum secara jelas membangun pembagian peran dalam penanganan. Pilihan A mendapat skor 3 karena merupakan langkah konkret untuk mengatasi kemacetan, tetapi cakupannya masih berfokus pada aspek lalu lintas. Pilihan D mendapat skor 2 karena memberikan ruang bagi setiap instansi untuk bekerja sesuai kewenangan, tetapi berisiko membuat penanganan berjalan terpisah. Pilihan E mendapat skor 1 karena terlalu bergantung pada satu instansi sehingga kompleksitas masalah dan kontribusi pihak lain kurang diperhatikan.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  97,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Anda sedang bertugas di sebuah klinik ketika seorang pasien datang dengan keluhan yang ternyata berkaitan dengan beberapa kebiasaan sehari-hari. Saat pemeriksaan berlangsung, pasien lebih banyak menjelaskan keluhannya secara singkat dan terlihat terburu-buru untuk segera mendapatkan obat. Anda khawatir informasi yang diperoleh belum cukup untuk menentukan penanganan yang tepat. Apa yang Anda lakukan?',
  NULL,
  '{"A":"Memberikan penanganan awal berdasarkan keluhan utama yang disampaikan pasien.","B":"Mengajukan pertanyaan yang lebih terarah mengenai kondisi pasien sebelum menentukan penanganan.","C":"Menjelaskan kepada pasien bahwa informasi yang lebih lengkap diperlukan agar penanganan dapat disesuaikan.","D":"Meminta pasien menjelaskan kembali keluhannya secara lebih rinci sebelum pemeriksaan dilanjutkan.","E":"Melanjutkan pemeriksaan sambil menggali informasi tambahan yang berkaitan dengan keluhan pasien."}'::jsonb,
  '{"A":2,"B":5,"C":3,"D":4,"E":1}'::jsonb,
  'B',
  'Pilihan B mendapat skor 5 karena dokter secara aktif menggali informasi yang relevan sebelum menentukan penanganan, sehingga keputusan tidak hanya bergantung pada keluhan awal pasien. Pilihan D mendapat skor 4 karena berupaya memperoleh informasi lebih lengkap, tetapi pendekatannya masih lebih umum dan belum menunjukkan pengarahan pada informasi yang paling relevan. Pilihan C cukup karena menjelaskan alasan perlunya informasi tambahan, tetapi belum secara langsung menggali informasi tersebut. Pilihan A dapat menjadi langkah awal dalam kondisi tertentu, tetapi kurang tepat ketika informasi yang tersedia belum memadai. Pilihan E mendapat skor 1 karena pemeriksaan dilanjutkan sambil menggali informasi secara bersamaan, sehingga berisiko membuat informasi penting tidak diperoleh secara sistematis.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  98,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda bekerja dalam sebuah tim yang anggotanya memiliki cara pandang berbeda dalam menyelesaikan pekerjaan. Salah satu rekan sering mengatakan bahwa keputusan yang diambil kelompoknya sudah pasti paling benar karena didasarkan pada prinsip yang mereka pegang. Akibatnya, pendapat dari anggota lain mulai dianggap tidak perlu dipertimbangkan. Anda melihat kondisi ini mulai membuat beberapa anggota enggan menyampaikan pandangannya. Apa sikap yang Anda ambil?',
  NULL,
  '{"A":"Mengingatkan bahwa setiap anggota memiliki hak menyampaikan pandangan sebelum keputusan ditetapkan.","B":"Mengajak tim membahas kembali dasar pengambilan keputusan dengan mempertimbangkan pandangan yang berbeda.","C":"Menghargai keyakinan rekan tersebut selama keputusan akhir tetap dapat diterima oleh seluruh anggota.","D":"Menyampaikan pandangan yang berbeda secara terbuka agar anggota lain tetap memiliki ruang untuk berpendapat.","E":"Membiarkan kelompok menentukan keputusan sendiri selama pekerjaan tetap dapat diselesaikan."}'::jsonb,
  '{"A":4,"B":5,"C":3,"D":2,"E":1}'::jsonb,
  'B',
  'Pilihan B mendapat skor 5 karena mendorong tim untuk kembali pada proses pengambilan keputusan yang terbuka dengan mempertimbangkan beragam pandangan, sehingga tidak ada satu kelompok yang merasa memiliki kebenaran secara eksklusif. Sikap ini mencerminkan keterbukaan, penghargaan terhadap perbedaan, dan kemampuan mencegah munculnya polarisasi dalam kelompok. Pilihan A mendapat skor 4 karena sudah menjaga hak setiap anggota untuk berpendapat, tetapi belum secara langsung mendorong tim mengevaluasi cara pengambilan keputusan. Pilihan C cukup baik karena tetap menghargai keyakinan seseorang, tetapi persoalan utama berupa dominasi satu pandangan belum disentuh. Pilihan D menunjukkan keberanian menyampaikan perbedaan, tetapi pendekatan tersebut belum tentu mendorong proses dialog yang konstruktif. Pilihan E mendapat skor 1 karena membiarkan dominasi kelompok berlangsung sehingga ruang bagi pandangan berbeda semakin terbatas.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  99,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda menjadi guru yang sedang membahas suatu peristiwa sejarah yang memiliki berbagai sudut pandang. Dalam diskusi kelas, beberapa siswa beranggapan bahwa hanya satu versi yang layak dipercaya dan menganggap sudut pandang lain sebagai bentuk pembenaran terhadap pihak tertentu. Diskusi mulai berubah menjadi saling menyalahkan, padahal materi tersebut seharusnya membantu siswa memahami peristiwa secara lebih kritis. Apa yang Anda lakukan?',
  NULL,
  '{"A":"Mengarahkan siswa untuk menggunakan sumber yang lebih beragam sebelum menarik kesimpulan.","B":"Menjelaskan kembali versi sejarah yang paling banyak digunakan dalam pembelajaran.","C":"Menghentikan diskusi agar perbedaan pandangan tidak berkembang menjadi perdebatan.","D":"Meminta siswa mempertahankan pendapat masing-masing berdasarkan sumber yang mereka gunakan.","E":"Mengajak siswa membandingkan beberapa sumber dan melihat alasan munculnya perbedaan penafsiran."}'::jsonb,
  '{"A":4,"B":2,"C":1,"D":3,"E":5}'::jsonb,
  'E',
  'Pilihan E mendapat skor 5 karena mengajak siswa memahami perbedaan penafsiran melalui perbandingan sumber, sehingga mereka tidak terbiasa menerima satu pandangan secara mutlak dan dapat melihat suatu persoalan secara lebih kritis. Pilihan A mendapat skor 4 karena mendorong penggunaan sumber yang beragam, tetapi belum secara eksplisit mengajak siswa memahami mengapa perbedaan penafsiran dapat muncul. Pilihan D cukup karena melatih siswa mempertanggungjawabkan pendapat berdasarkan sumber, tetapi jika tidak disertai proses membandingkan perspektif, diskusi masih berpotensi menjadi pertentangan antarposisi. Pilihan B kurang tepat karena terlalu menekankan satu versi sebagai rujukan utama. Pilihan C paling rendah karena menghentikan ruang dialog justru membuat siswa kehilangan kesempatan untuk belajar memahami perbedaan secara kritis.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  100,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda bekerja sebagai dokter di sebuah klinik dan mendapati seorang pasien meminta agar penanganannya hanya dilakukan oleh tenaga kesehatan yang memiliki latar belakang agama tertentu. Pasien beralasan bahwa ia merasa lebih nyaman dengan kelompok tersebut dan meragukan kemampuan tenaga kesehatan yang memiliki latar belakang agama berbeda. Sementara itu, seluruh tenaga kesehatan yang bertugas memiliki kompetensi sesuai bidangnya. Apa yang Anda lakukan?',
  NULL,
  '{"A":"Menghormati preferensi pasien selama masih tersedia tenaga kesehatan yang sesuai dengan permintaannya.","B":"Menjelaskan bahwa seluruh tenaga kesehatan yang bertugas memiliki kompetensi sesuai kebutuhan pasien.","C":"Meminta pasien mengikuti prosedur pelayanan yang berlaku agar penanganan dapat diberikan sesuai ketentuan.","D":"Membantu pasien memahami bahwa kualitas penanganan ditentukan oleh kompetensi dan kebutuhan medisnya.","E":"Menyerahkan keputusan kepada pasien karena setiap orang berhak menentukan tenaga kesehatan yang dipercayainya."}'::jsonb,
  '{"A":3,"B":4,"C":2,"D":5,"E":1}'::jsonb,
  'D',
  'Menghadapi perbedaan keyakinan dalam pelayanan perlu dilakukan dengan menghormati keberagaman sekaligus mengarahkan pasien untuk menilai tenaga kesehatan berdasarkan kompetensi dan kebutuhan medis. Pilihan D paling tepat karena membantu pasien memahami bahwa kualitas penanganan seharusnya didasarkan pada kompetensi tenaga kesehatan dan kebutuhan medis, bukan latar belakang agama, sehingga mendapat skor 5. Pilihan B juga sangat baik karena menjelaskan bahwa seluruh tenaga kesehatan memiliki kompetensi sesuai kebutuhan pasien dapat meluruskan keraguan pasien secara objektif, tetapi belum secara langsung mengarahkan pasien untuk tidak menjadikan perbedaan agama sebagai dasar dalam menilai tenaga kesehatan, sehingga mendapat skor 4. Pilihan A cukup tepat karena menghormati kenyamanan pasien merupakan bagian dari upaya memberikan pelayanan yang baik, tetapi tetap mengakomodasi preferensi berdasarkan agama sehingga belum membantu mengurangi prasangka terhadap tenaga kesehatan dengan latar belakang berbeda, sehingga mendapat skor 3. Pilihan C kurang tepat karena mengikuti prosedur pelayanan memang penting, tetapi respons tersebut belum menyentuh persoalan prasangka pasien terhadap tenaga kesehatan berdasarkan latar belakang agama, sehingga mendapat skor 2. Pilihan E paling rendah karena menyerahkan sepenuhnya keputusan kepada pasien dapat membiarkan anggapan bahwa tenaga kesehatan dengan agama tertentu lebih layak dipercaya tetap berkembang, sehingga kurang mencerminkan sikap menghargai keberagaman dan menolak diskriminasi, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  101,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda bekerja sebagai pegawai di sebuah instansi pemerintah. Di lingkungan tempat tinggal Anda sedang berlangsung aksi demonstrasi yang menyampaikan kritik terhadap kebijakan pemerintah. Beberapa rekan kerja menganggap peserta aksi sebagai kelompok yang harus dijauhi dan mulai menyebarkan pesan di grup percakapan yang menyudutkan seluruh peserta demonstrasi. Sikap Anda adalah....',
  NULL,
  '{"A":"mengingatkan rekan kerja agar tidak menyebarkan informasi yang dapat memperkeruh suasana","B":"menyampaikan bahwa masyarakat memiliki hak menyampaikan pendapat selama dilakukan sesuai ketentuan","C":"memilih tidak terlibat dalam pembahasan agar perbedaan pandangan tidak menimbulkan konflik","D":"mengajak rekan kerja membedakan kritik terhadap kebijakan dengan tindakan yang melanggar ketertiban","E":"mengingatkan rekan kerja untuk menghargai hak menyampaikan pendapat serta tidak menggeneralisasi peserta aksi berdasarkan perbedaan pandangan"}'::jsonb,
  '{"A":3,"B":4,"C":2,"D":5,"E":1}'::jsonb,
  'D',
  'Menghadapi perbedaan pandangan terkait aksi demonstrasi perlu dilakukan dengan menghargai hak menyampaikan pendapat sekaligus mencegah munculnya prasangka dan generalisasi terhadap kelompok tertentu. Pilihan D paling tepat karena mengajak rekan kerja membedakan antara kritik terhadap kebijakan dan tindakan yang melanggar ketertiban dapat membantu membangun pemahaman yang lebih objektif serta mencegah seluruh peserta aksi dipandang secara negatif, sehingga mendapat skor 5. Pilihan B juga sangat baik karena menyampaikan bahwa masyarakat memiliki hak menyampaikan pendapat selama dilakukan sesuai ketentuan dapat mengingatkan rekan kerja mengenai pentingnya menghormati kebebasan berpendapat, tetapi belum secara langsung menanggapi kecenderungan menggeneralisasi peserta demonstrasi, sehingga mendapat skor 4. Pilihan A cukup tepat karena mengingatkan rekan kerja agar tidak menyebarkan informasi yang dapat memperkeruh suasana dapat mencegah penyebaran pesan yang berpotensi menimbulkan konflik, tetapi belum memberikan pemahaman mengenai bagaimana menyikapi perbedaan pandangan secara tepat, sehingga mendapat skor 3. Pilihan C kurang tepat karena memilih tidak terlibat memang dapat menghindarkan diri dari perdebatan, tetapi tidak membantu meluruskan pandangan rekan kerja yang mulai menyudutkan seluruh peserta demonstrasi, sehingga mendapat skor 2. Pilihan E paling rendah karena meskipun menghargai hak menyampaikan pendapat merupakan sikap yang baik, pilihan ini terlalu berfokus pada mengingatkan dan belum secara langsung membuka pemahaman rekan kerja mengenai perbedaan antara kritik, aksi damai, dan tindakan yang melanggar ketertiban, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  102,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda bekerja sebagai petugas di sebuah perusahaan jasa dan mengetahui bahwa salah satu pelanggan menolak bekerja sama dengan karyawan tertentu karena menganggap cara berbicara dan kebiasaannya berbeda dari lingkungan yang biasa ia temui. Pelanggan tersebut meminta dilayani oleh karyawan lain meskipun karyawan yang ditolak memiliki kemampuan dan kewenangan yang sama. Apa yang Anda lakukan?',
  NULL,
  '{"A":"Mengalihkan pelayanan kepada karyawan lain agar situasi tidak berkembang menjadi perselisihan.","B":"Menjelaskan bahwa seluruh karyawan memiliki standar kerja yang sama dan berhak menjalankan tugasnya.","C":"Menghargai pilihan pelanggan selama kebutuhan pelayanan tetap dapat dipenuhi oleh karyawan lain.","D":"Mengajak pelanggan membicarakan kendalanya agar persoalan tidak berkembang menjadi penilaian terhadap kelompok tertentu.","E":"Meminta atasan menentukan karyawan yang paling tepat untuk melanjutkan pelayanan tersebut."}'::jsonb,
  '{"A":2,"B":4,"C":3,"D":5,"E":1}'::jsonb,
  'D',
  'Pilihan D mendapat skor 5 karena berupaya memahami persoalan sekaligus mencegah perbedaan karakter atau kebiasaan berkembang menjadi penilaian negatif terhadap kelompok tertentu. Pendekatan dialogis dapat menjaga hubungan dengan pelanggan sekaligus mempertahankan lingkungan kerja yang inklusif. Pilihan B mendapat skor 4 karena menegaskan kesetaraan standar dan kewenangan karyawan, tetapi belum menggali alasan di balik sikap pelanggan. Pilihan C cukup karena tetap mempertimbangkan kenyamanan pelanggan, tetapi berisiko membuat perlakuan berbeda terhadap karyawan menjadi sesuatu yang dianggap wajar. Pilihan A dapat meredakan situasi dalam jangka pendek, tetapi berpotensi memperkuat prasangka pelanggan. Pilihan E mendapat skor 1 karena menyerahkan persoalan kepada atasan tanpa berupaya memahami atau mengatasi sikap yang menjadi sumber masalah.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  103,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Setelah pemilihan kepala daerah, warga di sebuah kelurahan mulai terbagi berdasarkan pilihan politik. Beberapa warga bahkan lebih memilih bekerja sama dengan orang yang dianggap memiliki pilihan yang sama. Jika kondisi tersebut terus berkembang, tindakan yang paling tepat Anda lakukan sebagai pengurus lingkungan adalah...',
  NULL,
  '{"A":"Mengingatkan warga agar tidak membawa pilihan politik ke dalam kegiatan bersama","B":"Mempertemukan warga dalam forum untuk membahas kepentingan lingkungan bersama","C":"Memberikan ruang kepada setiap kelompok untuk menjalankan kegiatan sesuai pilihannya","D":"Meminta warga menghormati pilihan politik masing-masing dalam setiap kegiatan","E":"Membatasi pembahasan politik dalam kegiatan kemasyarakatan."}'::jsonb,
  '{"A":4,"B":5,"C":2,"D":3,"E":1}'::jsonb,
  'B',
  'Menghadapi perbedaan pilihan politik di lingkungan masyarakat perlu dilakukan dengan menjaga hubungan antarwarga dan menguatkan kepentingan bersama. Pilihan B paling tepat karena mempertemukan warga dalam forum bersama dapat membuka komunikasi antarkelompok, mengurangi sekat akibat perbedaan pilihan politik, serta membangun kembali kerja sama berdasarkan kepentingan lingkungan, sehingga mendapat skor 5. Pilihan A juga tepat karena mengingatkan warga untuk memisahkan pilihan politik dari kegiatan bersama dapat mencegah perbedaan semakin memengaruhi hubungan sosial, sehingga mendapat skor 4. Pilihan D cukup baik karena menghormati pilihan politik masing-masing dapat menjaga hubungan antarwarga, tetapi belum secara aktif mengatasi kecenderungan warga untuk hanya bekerja sama dengan kelompok yang sejalan, sehingga mendapat skor 3. Pilihan C kurang tepat karena membiarkan setiap kelompok menjalankan kegiatan sendiri justru dapat memperkuat sekat berdasarkan pilihan politik, sehingga mendapat skor 2. Pilihan E paling rendah karena membatasi pembahasan politik tidak menyelesaikan masalah utama berupa renggangnya hubungan dan kerja sama antarwarga, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  104,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Dalam sebuah kegiatan kerja bakti, seorang warga meminta agar warga dengan pandangan keagamaan berbeda tidak dilibatkan dalam kepengurusan karena dianggap kurang memahami nilai-nilai yang dianut masyarakat setempat. Sebagai pengurus lingkungan, tindakan yang paling tepat Anda lakukan adalah..',
  NULL,
  '{"A":"Menghargai pandangan warga tersebut sambil tetap melibatkan warga lain dalam kegiatan sesuai kesepakatan Bersama","B":"Menjelaskan bahwa kepengurusan kegiatan sebaiknya ditentukan berdasarkan kemampuan dan kesediaan warga untuk berkontribusi","C":"Mengadakan pembahasan bersama warga untuk menentukan kriteria kepengurusan yang dapat diterima oleh seluruh pihak","D":"Meminta warga tersebut menerima keberadaan warga dengan pandangan berbeda demi menjaga hubungan baik di lingkungan","E":"Memberikan kesempatan kepada warga yang memiliki pandangan berbeda untuk membantu kegiatan pada bagian yang dianggap sesuai"}'::jsonb,
  '{"A":3,"B":5,"C":4,"D":2,"E":1}'::jsonb,
  'B',
  'Menghadapi perbedaan pandangan keagamaan dalam kehidupan masyarakat perlu dilakukan dengan menjaga kesetaraan kesempatan dan mencegah perbedaan keyakinan menjadi dasar pembatasan partisipasi warga. Pilihan B paling tepat karena menentukan kepengurusan berdasarkan kemampuan dan kesediaan berkontribusi membuat proses lebih objektif serta memastikan setiap warga memiliki kesempatan yang sama untuk terlibat, sehingga mendapat skor 5. Pilihan C juga baik karena pembahasan bersama dapat membangun kesepakatan mengenai kriteria kepengurusan, tetapi hasilnya masih bergantung pada pandangan yang berkembang dalam forum, sehingga mendapat skor 4. Pilihan A cukup tepat karena tetap melibatkan warga dalam kegiatan dan menghargai pandangan yang ada, tetapi belum secara tegas mengatasi penggunaan perbedaan pandangan keagamaan sebagai pertimbangan dalam kepengurusan, sehingga mendapat skor 3. Pilihan D kurang tepat karena sekadar meminta warga menerima perbedaan belum memberikan solusi terhadap persoalan pembatasan kesempatan dalam kepengurusan, sehingga mendapat skor 2. Pilihan E paling rendah karena membatasi keterlibatan warga berdasarkan bagian kegiatan yang dianggap sesuai justru dapat mempertahankan perlakuan berbeda berdasarkan pandangan keagamaan, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  105,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Anda ditugaskan membantu pemerintah daerah mengelola program pelestarian kesenian tradisional. Dalam pelaksanaannya, sebagian besar peserta adalah orang tua karena minat generasi muda cukup rendah. Beberapa pengurus mengusulkan agar kegiatan tetap dilakukan dengan cara lama karena dianggap paling sesuai dengan tradisi. Sebagai bagian dari tim, tindakan yang paling tepat Anda lakukan adalah....',
  NULL,
  '{"A":"mempertahankan cara pelaksanaan yang selama ini digunakan karena merupakan bagian dari kebiasaan masyarakat setempat","B":"mengusulkan agar kegiatan tetap menggunakan cara lama dengan menambah kegiatan pendukung yang menarik bagi generasi muda","C":"menyampaikan kepada pengurus bahwa rendahnya minat generasi muda perlu menjadi pertimbangan dalam pelaksanaan kegiatan","D":"mengajak pengurus mengevaluasi kegiatan untuk menentukan bagian yang dapat disesuaikan dengan kondisi generasi muda","E":"mengajak pengurus dan generasi muda menyepakati bentuk kegiatan yang tetap menjaga nilai tradisi sekaligus sesuai dengan minat generasi muda"}'::jsonb,
  '{"A":1,"B":2,"C":3,"D":4,"E":5}'::jsonb,
  'E',
  'Menghadapi rendahnya minat generasi muda terhadap kesenian tradisional perlu dilakukan dengan tetap menghargai nilai budaya sekaligus menyesuaikan pelaksanaannya dengan kondisi masyarakat yang terus berkembang. Pilihan E paling tepat karena mengajak pengurus dan generasi muda menyepakati bentuk kegiatan yang tetap menjaga nilai tradisi sekaligus sesuai dengan minat generasi muda dapat menciptakan pelestarian budaya yang lebih inklusif dan berkelanjutan, sehingga mendapat skor 5. Pilihan D juga sangat baik karena mengajak pengurus mengevaluasi kegiatan untuk menentukan bagian yang dapat disesuaikan dengan kondisi generasi muda menunjukkan upaya beradaptasi terhadap perubahan, tetapi belum secara langsung melibatkan generasi muda dalam menentukan bentuk kegiatan, sehingga mendapat skor 4. Pilihan C cukup tepat karena menyampaikan bahwa rendahnya minat generasi muda perlu menjadi pertimbangan dapat mendorong pengurus memperhatikan kondisi tersebut, tetapi belum menawarkan langkah konkret untuk menyesuaikan kegiatan, sehingga mendapat skor 3. Pilihan B kurang tepat karena tetap mempertahankan cara lama dan hanya menambahkan kegiatan pendukung belum tentu mampu mengatasi rendahnya minat generasi muda terhadap kegiatan utama, sehingga mendapat skor 2. Pilihan A paling rendah karena mempertahankan seluruh cara pelaksanaan berdasarkan kebiasaan sebelumnya kurang mempertimbangkan perubahan minat dan kebutuhan generasi muda, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  106,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Dinas tempat Anda bekerja membuat konten mengenai budaya lokal untuk media digital. Salah satu konten mendapat banyak perhatian karena dikemas dengan gaya modern, tetapi beberapa tokoh masyarakat menilai penyajiannya kurang menggambarkan makna budaya yang sebenarnya. Sebagai anggota tim, tindakan yang paling tepat adalah....',
  NULL,
  '{"A":"Mempertahankan konten tersebut karena respons masyarakat menunjukkan cara tersebut efektif","B":"Menghapus konten agar tidak menimbulkan perbedaan pandangan di masyarakat","C":"Meminta tokoh masyarakat memberikan masukan sebelum konten budaya berikutnya dibuat","D":"Memperbaiki konten dengan tetap mempertahankan unsur kreatif yang menarik bagi masyarakat","E":"Membuat konten baru dengan melibatkan pihak yang memahami budaya dan tim kreatif"}'::jsonb,
  '{"A":2,"B":1,"C":3,"D":4,"E":5}'::jsonb,
  'E',
  'Mengelola konten budaya untuk media digital perlu mempertahankan daya tarik penyajian sekaligus memastikan makna budaya yang disampaikan tetap sesuai dengan pemahaman masyarakat yang memiliki pengetahuan mengenai budaya tersebut. Pilihan E paling tepat karena melibatkan pihak yang memahami budaya dan tim kreatif secara bersama-sama dapat menghasilkan konten yang menarik sekaligus lebih akurat dalam menyampaikan nilai budaya, sehingga mendapat skor 5. Pilihan D juga sangat baik karena memperbaiki konten dengan tetap mempertahankan unsur kreatif dapat menjaga daya tarik sekaligus memperbaiki kekurangan dalam penyampaian makna budaya, sehingga mendapat skor 4. Pilihan C cukup tepat karena meminta masukan dari tokoh masyarakat dapat membantu meningkatkan ketepatan konten berikutnya, tetapi pelibatan tersebut baru sebatas pemberian masukan dan belum mengintegrasikan proses kreatif sejak awal, sehingga mendapat skor 3. Pilihan A kurang tepat karena banyaknya respons masyarakat belum tentu menunjukkan bahwa isi budaya telah disampaikan dengan benar, sehingga mempertahankan konten begitu saja dapat membuat kekeliruan makna tetap berlanjut, sehingga mendapat skor 2. Pilihan B paling rendah karena menghapus konten hanya untuk menghindari perbedaan pandangan tidak menyelesaikan persoalan kualitas penyampaian budaya dan justru menghilangkan kesempatan untuk memperbaikinya, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  107,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Pemerintah daerah akan mengadakan festival budaya yang semakin banyak menarik wisatawan. Beberapa panitia ingin menambah unsur hiburan modern agar acara lebih menarik, sementara sebagian masyarakat khawatir nilai budaya dalam festival menjadi sekadar tontonan. Sebagai anggota panitia, tindakan yang paling tepat adalah....',
  NULL,
  '{"A":"Mempertahankan seluruh rangkaian tradisional agar karakter festival tetap terjaga","B":"Menambahkan hiburan modern selama tetap mendapat persetujuan panitia","C":"Meminta masyarakat menentukan seluruh rangkaian acara agar tidak terjadi perbedaan pendapat","D":"Mengutamakan unsur budaya dalam acara dan menempatkan hiburan modern sebagai pendukung","E":"Melibatkan pelaku budaya dan masyarakat dalam menentukan bagian yang dapat dikembangkan secara kreatif"}'::jsonb,
  '{"A":3,"B":2,"C":1,"D":4,"E":5}'::jsonb,
  'E',
  'Mengembangkan festival budaya yang semakin menarik perhatian wisatawan perlu dilakukan dengan menjaga nilai budaya sekaligus membuka ruang pengembangan agar acara tetap relevan dan menarik. Pilihan E paling tepat karena melibatkan pelaku budaya dan masyarakat dalam menentukan bagian yang dapat dikembangkan secara kreatif dapat menjaga keaslian budaya sekaligus memberi ruang inovasi sesuai kebutuhan festival, sehingga mendapat skor 5. Pilihan D juga sangat baik karena menempatkan unsur budaya sebagai bagian utama dan hiburan modern sebagai pendukung, sehingga keseimbangan antara pelestarian dan pengembangan tetap terjaga, sehingga mendapat skor 4. Pilihan A cukup tepat karena mempertahankan seluruh rangkaian tradisional dapat menjaga karakter festival, tetapi kurang memberikan ruang untuk menyesuaikan acara dengan perkembangan dan kebutuhan pengunjung, sehingga mendapat skor 3. Pilihan B kurang tepat karena penambahan hiburan modern hanya berdasarkan persetujuan panitia belum mempertimbangkan pandangan pelaku budaya dan masyarakat yang memahami nilai dari festival tersebut, sehingga mendapat skor 2. Pilihan C paling rendah karena menyerahkan seluruh penentuan acara kepada masyarakat dapat membuat proses pengembangan kurang fleksibel dan tidak secara langsung menyelesaikan kebutuhan untuk menyeimbangkan pelestarian budaya dengan kreativitas, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  108,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Sebagai anggota tim kelurahan, Anda mengikuti musyawarah mengenai penataan lingkungan. Dalam diskusi, usulan warga yang memiliki kedudukan ekonomi lebih tinggi cenderung lebih cepat diterima, sedangkan usulan warga lainnya sering diabaikan. Sikap yang paling tepat Anda lakukan adalah...',
  NULL,
  '{"A":"mengingatkan peserta agar setiap usulan dipertimbangkan berdasarkan kepentingan masyarakat","B":"meminta pimpinan rapat memberikan kesempatan yang sama kepada seluruh peserta","C":"menyampaikan bahwa status sosial seharusnya tidak menentukan diterima atau tidaknya sebuah usulan","D":"mengusulkan kriteria penilaian yang sama agar setiap usulan dapat dipertimbangkan secara objektif","E":"memberikan kesempatan kepada warga yang jarang didengar untuk menjelaskan usulannya lebih lanjut"}'::jsonb,
  '{"A":4,"B":3,"C":2,"D":5,"E":1}'::jsonb,
  'D',
  'Dalam musyawarah yang melibatkan warga dengan latar belakang sosial berbeda, setiap usulan perlu dinilai berdasarkan kepentingan dan manfaatnya bagi masyarakat, bukan berdasarkan status sosial pihak yang menyampaikan. Pilihan D paling tepat karena mengusulkan kriteria penilaian yang sama dapat membuat setiap usulan dipertimbangkan secara objektif dan mencegah kedudukan ekonomi memengaruhi proses pengambilan keputusan, sehingga mendapat skor 5. Pilihan A juga tepat karena mengingatkan peserta agar mempertimbangkan kepentingan masyarakat dapat membantu mengurangi kecenderungan mengutamakan usulan dari kelompok tertentu, sehingga mendapat skor 4. Pilihan B cukup baik karena memberikan kesempatan yang sama kepada seluruh peserta dapat menciptakan proses musyawarah yang lebih adil, tetapi belum memastikan bahwa usulan yang disampaikan nantinya dinilai secara objektif, sehingga mendapat skor 3. Pilihan C kurang tepat karena hanya menyampaikan bahwa status sosial seharusnya tidak menjadi dasar penilaian, tetapi belum menawarkan langkah konkret untuk memperbaiki mekanisme pengambilan keputusan, sehingga mendapat skor 2. Pilihan E paling rendah karena hanya memberikan kesempatan tambahan kepada warga yang jarang didengar, sementara persoalan utamanya terletak pada adanya kecenderungan usulan dinilai berdasarkan status sosial, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  109,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Anda ditugaskan membantu kegiatan pelayanan masyarakat di daerah yang masih mengenal pembagian sosial berdasarkan kasta. Dalam kegiatan tersebut, beberapa warga menganggap orang dari kasta tertentu lebih pantas menjadi koordinator karena sudah menjadi kebiasaan setempat. Padahal, warga lain memiliki kemampuan yang sesuai untuk posisi tersebut. Apa tindakan yang paling tepat Anda lakukan?',
  NULL,
  '{"A":"Mengikuti kebiasaan masyarakat agar kegiatan berjalan sesuai dengan aturan yang berlaku.","B":"Meminta tokoh masyarakat menentukan orang yang dianggap paling sesuai berdasarkan kebiasaan setempat.","C":"Mengingatkan panitia agar mempertimbangkan kemampuan setiap warga dalam pembagian peran.","D":"Mengajak panitia menyusun kriteria kepemimpinan berdasarkan kemampuan dan kebutuhan kegiatan.","E":"Mendorong pembagian peran yang terbuka berdasarkan kompetensi sekaligus membangun pemahaman bahwa setiap warga berhak berkontribusi."}'::jsonb,
  '{"A":1,"B":2,"C":3,"D":4,"E":5}'::jsonb,
  'E',
  'Dalam lingkungan masyarakat yang memiliki pembagian sosial berdasarkan kasta, perbedaan latar belakang tetap perlu dihargai, tetapi pembagian peran dalam kegiatan bersama sebaiknya didasarkan pada kemampuan dan kebutuhan kegiatan. Pilihan E paling tepat karena mendorong pembagian peran berdasarkan kompetensi sekaligus membangun pemahaman bahwa setiap warga memiliki kesempatan untuk berkontribusi, sehingga mendapat skor 5. Pilihan D juga sangat baik karena menyusun kriteria kepemimpinan berdasarkan kemampuan dan kebutuhan kegiatan dapat membuat pembagian peran lebih objektif, tetapi belum secara langsung membangun pemahaman mengenai kesempatan yang setara bagi setiap warga, sehingga mendapat skor 4. Pilihan C cukup tepat karena mengingatkan panitia untuk mempertimbangkan kemampuan setiap warga dapat mencegah pembagian peran hanya berdasarkan kasta, tetapi belum memberikan mekanisme yang jelas untuk menentukan pembagian peran secara objektif, sehingga mendapat skor 3. Pilihan B kurang tepat karena menyerahkan penentuan kepada tokoh masyarakat berdasarkan kebiasaan setempat berpotensi mempertahankan pola pembagian peran berdasarkan kasta, sehingga mendapat skor 2. Pilihan A paling rendah karena mengikuti kebiasaan yang ada justru dapat mempertahankan pembatasan kesempatan berdasarkan kasta dan mengabaikan kemampuan warga lain yang sebenarnya sesuai untuk menjalankan peran tersebut, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-38',
  110,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Anda menjadi koordinator kegiatan pelatihan bagi masyarakat. Dalam menentukan peserta yang akan dilibatkan sebagai fasilitator, beberapa anggota tim beranggapan bahwa peserta yang berusia lebih muda akan lebih mudah menerima metode baru, sedangkan peserta yang lebih tua dianggap kurang mampu beradaptasi. Anda mengetahui bahwa beberapa peserta senior justru memiliki pengalaman yang relevan dengan materi pelatihan. Tindakan yang paling tepat Anda lakukan adalah...',
  NULL,
  '{"A":"mengikuti pertimbangan tim karena peserta yang lebih muda dianggap lebih mudah diarahkan","B":"meminta peserta senior diberi kesempatan apabila masih tersedia tempat dalam kegiatan","C":"mengingatkan tim agar mempertimbangkan kemampuan setiap peserta dalam menentukan fasilitator","D":"menyusun kriteria fasilitator berdasarkan pengalaman dan kemampuan yang sesuai dengan kebutuhan kegiatan","E":"mengajak tim mengevaluasi calon fasilitator berdasarkan kompetensi dan pengalaman, sehingga usia tidak menjadi dasar untuk membatasi kesempatan seseorang"}'::jsonb,
  '{"A":1,"B":2,"C":3,"D":4,"E":5}'::jsonb,
  'E',
  'Dalam menentukan peran dalam kegiatan bersama, perbedaan usia sebaiknya tidak dijadikan dasar untuk menilai kemampuan seseorang. Pilihan E paling tepat karena mengajak tim mengevaluasi calon fasilitator berdasarkan kompetensi dan pengalaman dapat mencegah stereotip usia memengaruhi keputusan sekaligus memastikan orang yang memiliki kemampuan relevan tetap memperoleh kesempatan, sehingga mendapat skor 5. Pilihan D juga sangat baik karena menyusun kriteria berdasarkan pengalaman dan kemampuan membuat proses pemilihan lebih objektif, tetapi belum secara langsung mengatasi anggapan bahwa peserta yang lebih tua kurang mampu beradaptasi, sehingga mendapat skor 4. Pilihan C cukup tepat karena mengingatkan tim untuk mempertimbangkan kemampuan setiap peserta dapat mengurangi penilaian berdasarkan usia, tetapi belum memberikan langkah yang lebih konkret dalam memastikan proses pemilihan berlangsung objektif, sehingga mendapat skor 3. Pilihan B kurang tepat karena memberikan kesempatan kepada peserta senior hanya apabila masih tersedia tempat membuat keterlibatan mereka tetap bergantung pada sisa kesempatan, bukan pada kompetensi yang dimiliki, sehingga mendapat skor 2. Pilihan A paling rendah karena menerima anggapan bahwa peserta yang lebih muda lebih mudah diarahkan berarti menjadikan usia sebagai dasar penilaian kemampuan dan dapat membatasi kesempatan peserta senior yang sebenarnya memiliki pengalaman relevan, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  gambar_url = EXCLUDED.gambar_url,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  pembahasan_gambar = EXCLUDED.pembahasan_gambar,
  topik = EXCLUDED.topik,
  status = 'published';

COMMIT;