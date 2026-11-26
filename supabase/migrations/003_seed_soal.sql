-- SQL Migration: Buat bucket soal-img dan Seed 129 Soal SKD CPNS Lengkap
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
(
  'part-28',
  1,
  'TWK',
  'UUD 1945',
  'sedang',
  'Pasal 28B ayat (2) UUD 1945 menjamin hak anak untuk tumbuh dan berkembang serta memperoleh perlindungan dari kekerasan dan diskriminasi. Penerapan ketentuan tersebut yang paling tepat dalam kehidupan sehari-hari adalah ...',
  NULL,
  '{"A":"Orang tua membiasakan pola asuh yang menghargai pilihan anak tanpa tekanan berlebihan.","B":"Anak mengikuti kegiatan pendidikan yang mendukung pengembangan minat dan bakatnya.","C":"Sekolah membangun sistem pembelajaran yang menjamin keamanan dan perlindungan seluruh peserta didik.","D":"Masyarakat membangun lingkungan sosial yang adil dan aman bagi seluruh anggota masyarakat.","E":"Pemerintah mendorong peningkatan kualitas pendidikan untuk mendukung masa depan anak."}'::jsonb,
  'C',
  '* **Penjelasan:**
  Pasal 28B ayat (2) UUD 1945 secara tegas menekankan hak anak untuk tumbuh dan berkembang serta memperoleh perlindungan dari kekerasan dan diskriminasi. Oleh karena itu, implementasi yang paling tepat harus bersifat langsung, konkret, dan secara spesifik melindungi anak dari ancaman tersebut dalam kehidupan sehari-hari.
  * **Opsi C paling tepat** karena menunjukkan peran sekolah sebagai lingkungan utama anak dalam menyediakan sistem pembelajaran yang aman dan melindungi peserta didik dari kekerasan maupun perlakuan diskriminatif, sehingga hak anak terlindungi secara nyata.
  * **Opsi A** mencerminkan pola asuh yang baik, namun fokus pada kebebasan dan kenyamanan psikologis anak tanpa penekanan langsung pada aspek perlindungan dari kekerasan dan diskriminasi.
  * **Opsi B** berkaitan dengan pengembangan minat dan bakat yang mendukung tumbuh kembang anak, tetapi tidak menekankan perlindungan.
  * **Opsi D** menggambarkan nilai keadilan dan keamanan sosial secara umum, namun terlalu luas dan tidak spesifik pada perlindungan anak.
  * **Opsi E** bersifat kebijakan makro dan tidak menunjukkan penerapan langsung dalam kehidupan sehari-hari anak.',
  NULL,
  'published'
),
(
  'part-28',
  2,
  'TWK',
  'UUD 1945',
  'sedang',
  'Berdasarkan pasal 14 ayat 2 UUD 1945 Presiden memiliki kewenangan memberikan amnesti dan abolisi dengan tujuan yang berbeda. Penerapan yang paling tepat untuk membedakan kedua kewenangan tersebut adalah ...',
  NULL,
  '{"A":"Amnesti menghapus akibat hukum pidana seseorang, sedangkan abolisi menghentikan proses penuntutan pidana.","B":"Amnesti dan abolisi sama-sama diberikan setelah adanya putusan pengadilan berkekuatan hukum tetap.","C":"Amnesti diberikan pada tahap pemeriksaan perkara, sedangkan abolisi diberikan setelah putusan dijatuhkan.","D":"Amnesti menghapus kesalahan pelaku, sedangkan abolisi memulihkan hak dan kedudukan hukum.","E":"Amnesti dan abolisi diberikan melalui putusan pengadilan atas permohonan terpidana."}'::jsonb,
  'A',
  '* **Penjelasan:**
  Dalam sistem hukum Indonesia, amnesti dan abolisi merupakan hak prerogatif Presiden yang diberikan dengan pertimbangan DPR dalam konteks kepentingan negara dan kemanusiaan, serta memiliki tujuan dan akibat hukum yang berbeda:
  * **Amnesti:** Diberikan untuk menghapus akibat hukum pidana yang telah dijatuhkan kepada seseorang, sehingga status hukum terpidana tidak lagi dibebani akibat pidana tersebut.
  * **Abolisi:** Diberikan untuk menghentikan proses penuntutan pidana sebelum perkara diputus oleh pengadilan, sehingga proses hukum tidak dilanjutkan ke tahap putusan.
  * **Analisis Opsi Lain:** Opsi B dan C keliru karena menempatkan abolisi pada tahap setelah putusan, padahal abolisi justru diberikan sebelum putusan dijatuhkan. Opsi D salah memahami akibat hukum dari kedua kewenangan tersebut, sedangkan opsi E tidak tepat karena amnesti dan abolisi merupakan kewenangan Presiden, bukan hasil putusan pengadilan.',
  NULL,
  'published'
),
(
  'part-28',
  3,
  'TWK',
  'NKRI & Integrasi',
  'sedang',
  'Perhatikan pernyataan berikut ini!
1) Menjaga keutuhan wilayah NKRI dengan mengamankan perbatasan darat dan laut.
2) Memandang wilayah darat, laut, dan udara sebagai satu kesatuan wilayah negara.
3) Mengembangkan kebijakan daerah kepulauan sesuai potensi dan karakteristik lokal.
4) Mengelola sumber daya laut sebagai kekayaan nasional untuk kepentingan seluruh rakyat.
5) Melestarikan budaya maritim sebagai bagian dari identitas bangsa Indonesia.
6) Meningkatkan kesejahteraan masyarakat pesisir melalui program pembangunan daerah.

Manakah yang merupakan bentuk implementasi Pasal 25A UUD 1945 tentang NKRI sebagai negara kepulauan (negara Nusantara)?',
  NULL,
  '{"A":"1, 3, dan 6","B":"2, 3, dan 5","C":"1, 2, dan 4","D":"3, 4, dan 6","E":"2, 5, dan 6"}'::jsonb,
  'C',
  '* **Penjelasan:**
  Pasal 25A UUD 1945 menegaskan bahwa *Negara Kesatuan Republik Indonesia adalah sebuah negara kepulauan yang berciri Nusantara dengan wilayah yang batas-batas dan hak-haknya ditetapkan dengan undang-undang*. Seluruh wilayah darat, laut, dan udara dipandang sebagai satu kesatuan yang utuh, termasuk kekayaan alam di dalamnya, serta dikelola untuk kepentingan nasional:
  * **Pernyataan (1)** mencerminkan upaya menjaga keutuhan dan kedaulatan wilayah NKRI sebagai negara kepulauan.
  * **Pernyataan (2)** secara langsung menegaskan inti Pasal 25A, yaitu memandang wilayah darat, laut, dan udara sebagai satu kesatuan wilayah negara.
  * **Pernyataan (4)** menunjukkan pengelolaan sumber daya laut sebagai kekayaan nasional yang dimanfaatkan untuk kepentingan seluruh rakyat Indonesia.
  * **Pernyataan (3), (5), dan (6)** bernilai positif, namun lebih menekankan aspek pembangunan daerah, pelestarian budaya, dan kesejahteraan lokal, sehingga tidak secara langsung mencerminkan esensi Pasal 25A tentang kesatuan wilayah Nusantara.',
  NULL,
  'published'
),
(
  'part-28',
  4,
  'TWK',
  'Pancasila',
  'sedang',
  'Pancasila berkedudukan sebagai paradigma pembangunan nasional yang menjadi kerangka acuan dalam merancang dan melaksanakan pembangunan di berbagai bidang. Sikap yang paling tepat mencerminkan kedudukan tersebut adalah ...',
  NULL,
  '{"A":"Menyusun kebijakan pembangunan yang mendorong pertumbuhan ekonomi agar daya saing nasional meningkat.","B":"Menjalankan program pembangunan secara berkelanjutan dengan menyesuaikan kebutuhan masyarakat.","C":"Menempatkan keberhasilan pembangunan fisik sebagai ukuran utama kemajuan bangsa.","D":"Mengarahkan pembangunan agar berlandaskan nilai keadilan sosial dan kesejahteraan seluruh rakyat.","E":"Mendorong partisipasi masyarakat dalam pembangunan sesuai peran dan kapasitas masing-masing."}'::jsonb,
  'D',
  '* **Penjelasan:**
  Pancasila sebagai paradigma pembangunan berarti bahwa seluruh arah dan kebijakan pembangunan nasional harus berlandaskan nilai-nilai Pancasila sebagai kerangka dasar, bukan semata-mata pada pertimbangan teknis, ekonomi, atau kepentingan sektoral. Dalam konteks ini, pembangunan tidak hanya diukur dari pertumbuhan atau keberhasilan fisik, tetapi dari sejauh mana pembangunan tersebut mampu mewujudkan keadilan sosial dan kesejahteraan bagi seluruh rakyat.
  * **Opsi D paling tepat** karena secara langsung menempatkan nilai keadilan sosial dan kesejahteraan rakyat sebagai orientasi utama pembangunan, sesuai dengan fungsi Pancasila sebagai paradigma pembangunan nasional.
  * **Opsi A** menekankan pertumbuhan dan daya saing yang penting, tetapi lebih bersifat tujuan ekonomi.
  * **Opsi B** menyoroti keberlanjutan dan kebutuhan masyarakat, namun masih berada pada tataran pendekatan kebijakan.
  * **Opsi C** terlalu sempit karena menjadikan pembangunan fisik sebagai ukuran utama kemajuan bangsa.
  * **Opsi E** menekankan partisipasi masyarakat yang merupakan mekanisme pelaksanaan, bukan kerangka nilai pembangunan.',
  NULL,
  'published'
),
(
  'part-28',
  5,
  'TWK',
  'Pancasila',
  'sedang',
  'Butir sila ke-5 Pancasila yang berbunyi "Suka memberi pertolongan kepada orang lain agar dapat berdiri sendiri" paling tepat tercermin dalam sikap berikut ...',
  NULL,
  '{"A":"Memberikan bantuan sosial kepada masyarakat kurang mampu untuk meringankan beban hidup sehari-hari.","B":"Menyalurkan bantuan dana kepada kelompok rentan agar kebutuhan dasarnya dapat terpenuhi.","C":"Menggalang donasi bersama sebagai bentuk tanggung jawab sosial terhadap sesama yang membutuhkan.","D":"Membantu masyarakat yang membutuhkan melalui program bantuan kemanusiaan secara berkala.","E":"Memberikan bantuan disertai pelatihan keterampilan dan pendampingan agar penerima mampu mandiri."}'::jsonb,
  'E',
  '* **Penjelasan:**
  Butir sila ke-5 Pancasila menegaskan bahwa pertolongan kepada sesama harus berorientasi pada **kemandirian** (*agar dapat berdiri sendiri*), sehingga bantuan tidak berhenti pada pemenuhan kebutuhan sesaat, melainkan memberdayakan penerima agar mampu berdiri sendiri.
  * **Opsi E paling tepat** karena menggabungkan bantuan dengan pelatihan keterampilan dan pendampingan, yang secara langsung membangun kapasitas dan kemandirian penerima sesuai tujuan keadilan sosial.
  * **Opsi A dan B** bernilai positif karena membantu meringankan beban dan memenuhi kebutuhan dasar, namun sifatnya masih konsumtif dan berdampak jangka pendek.
  * **Opsi C** juga baik karena menekankan tanggung jawab sosial, tetapi fokusnya pada penggalangan bantuan tanpa jaminan adanya proses pemberdayaan menuju kemandirian.
  * **Opsi D** menunjukkan kepedulian yang berkelanjutan, namun jika tidak disertai pemberdayaan, berisiko menumbuhkan ketergantungan.',
  NULL,
  'published'
),
(
  'part-28',
  6,
  'TWK',
  'Pancasila',
  'sedang',
  'Perhatikan pernyataan berikut ini!
1) Memperlakukan setiap orang secara setara tanpa membedakan latar belakang apa pun.
2) Menumbuhkan sikap empati dalam berinteraksi dengan sesama di lingkungan masyarakat.
3) Mengedepankan kepentingan bersama demi menjaga stabilitas sosial.
4) Menghargai martabat dan hak setiap manusia secara adil dan beradab.
5) Menyesuaikan kebijakan sosial agar sejalan dengan nilai dan norma masyarakat setempat.
6) Menolak segala bentuk perlakuan tidak adil terhadap individu atau kelompok tertentu.

Manakah yang paling mencerminkan manfaat penerapan sila ke-2 Pancasila dalam mencegah sikap diskriminatif?',
  NULL,
  '{"A":"1, 2, dan 3","B":"2, 3, dan 5","C":"1, 4, dan 6","D":"1, 4, dan 5","E":"3, 5, dan 6"}'::jsonb,
  'C',
  '* **Penjelasan:**
  Sila ke-2 Pancasila menegaskan pengakuan terhadap martabat manusia yang setara serta perlakuan yang adil dan beradab tanpa diskriminasi. Manfaat penerapan sila ini dalam kehidupan sosial adalah mencegah perlakuan tidak adil terhadap individu atau kelompok tertentu:
  * **Pernyataan (1)** menunjukkan perlakuan setara tanpa membeda-bedakan latar belakang.
  * **Pernyataan (4)** menegaskan penghargaan terhadap martabat dan hak asasi manusia secara adil dan beradab.
  * **Pernyataan (6)** secara langsung menolak segala bentuk perlakuan tidak adil terhadap individu atau kelompok tertentu.
  * **Pernyataan (2) dan (3)** bernilai positif karena mendukung harmoni sosial, namun tidak secara langsung menargetkan pencegahan diskriminasi.
  * **Pernyataan (5)** tampak baik, namun penyesuaian kebijakan terhadap norma kelompok tertentu justru berpotensi membuka ruang diskriminasi jika tidak dikontrol oleh prinsip kemanusiaan yang adil dan beradab.',
  NULL,
  'published'
),
(
  'part-28',
  7,
  'TWK',
  'Pancasila',
  'sedang',
  'Peringatan 1 Juni sebagai Hari Lahir Pancasila tidak hanya bersifat seremonial, tetapi memiliki makna penting bagi kehidupan berbangsa di tengah keberagaman. Sikap yang paling tepat dalam memaknai peringatan tersebut adalah ...',
  NULL,
  '{"A":"Mengikuti upacara peringatan sebagai bentuk penghormatan terhadap Pancasila dan sejarah bangsa.","B":"Menjadikan nilai-nilai Pancasila sebagai pedoman bersikap dalam menyikapi perbedaan di masyarakat.","C":"Menghafalkan rumusan Pancasila agar tidak melupakan jati diri bangsa.","D":"Menjaga ketertiban sosial demi menciptakan suasana kehidupan yang aman dan harmonis.","E":"Menghargai simbol-simbol negara sebagai wujud rasa cinta tanah air terhadap bangsa Indonesia."}'::jsonb,
  'B',
  '* **Penjelasan:**
  Peringatan 1 Juni sebagai Hari Lahir Pancasila memiliki makna penting sebagai momentum untuk meneguhkan kembali Pancasila sebagai pedoman hidup dalam kehidupan berbangsa, terutama di tengah keberagaman masyarakat Indonesia. Makna tersebut tidak cukup diwujudkan melalui kegiatan simbolik atau seremonial semata, melainkan melalui pengamalan nilai Pancasila dalam sikap dan perilaku sehari-hari.
  * **Opsi B paling tepat** karena menekankan penerapan nilai-nilai Pancasila sebagai pedoman bersikap dalam menyikapi perbedaan di masyarakat, yang merupakan tantangan nyata kehidupan berbangsa dewasa ini.
  * **Opsi A** bernilai positif karena menunjukkan penghormatan terhadap sejarah bangsa, namun cenderung bersifat seremonial.
  * **Opsi C** berkaitan dengan pemahaman kognitif tanpa menjamin pengamalan nilai.
  * **Opsi D** mencerminkan sikap menjaga ketertiban, namun lebih berfungsi sebagai dampak lanjutan, bukan inti pemaknaan Hari Lahir Pancasila.
  * **Opsi E** menunjukkan rasa cinta tanah air melalui penghargaan simbol negara, tetapi masih bersifat simbolik.',
  NULL,
  'published'
),
(
  'part-28',
  8,
  'TWK',
  'TWK Umum',
  'sedang',
  'Peristiwa Rengasdengklok mencerminkan dinamika pemikiran para tokoh bangsa menjelang Proklamasi Kemerdekaan. Makna paling tepat dari peristiwa tersebut bagi proses kemerdekaan Indonesia adalah ...',
  NULL,
  '{"A":"Munculnya perbedaan cara pandang yang mendorong percepatan pengambilan keputusan penting bangsa.","B":"Terjadinya perdebatan antar generasi yang memperkaya strategi perjuangan menuju kemerdekaan.","C":"Dorongan kuat golongan muda agar proklamasi segera dilakukan karena situasi politik global.","D":"Dinamika perbedaan strategi perjuangan yang tetap diarahkan pada tujuan kemerdekaan nasional.","E":"Proses pendewasaan sikap politik para tokoh bangsa dalam menghadapi situasi yang mendesak."}'::jsonb,
  'D',
  '* **Penjelasan:**
  Peristiwa Rengasdengklok mencerminkan perbedaan pandangan dan strategi perjuangan antara golongan muda dan golongan tua dalam menyikapi momentum kemerdekaan Indonesia yang sangat mendesak. Golongan muda mendorong percepatan proklamasi di luar pengaruh Jepang, sementara golongan tua mempertimbangkan aspek politis, hukum, dan strategi militer. Seluruh dinamika tersebut tetap berlandaskan pada tujuan yang sama, yaitu mewujudkan kemerdekaan nasional.
  * **Opsi D paling tepat** karena secara utuh menangkap esensi tersebut, yakni adanya perbedaan strategi perjuangan yang tetap diarahkan pada satu tujuan kemerdekaan nasional.
  * **Opsi A** benar karena menunjukkan adanya perbedaan cara pandang, tetapi terlalu menekankan aspek percepatan keputusan tanpa menggambarkan kesatuan tujuan perjuangan.
  * **Opsi B** fokusnya lebih pada dinamika internal generasi dan belum menyentuh makna strategis nasional.
  * **Opsi C** bersifat deskriptif terhadap dorongan golongan muda (menggambarkan alur peristiwa, bukan makna filosofis utamanya).
  * **Opsi E** bersifat interpretatif umum dan kurang menyentuh substansi historis dari peristiwa tersebut.',
  NULL,
  'published'
),
(
  'part-28',
  9,
  'TWK',
  'TWK Umum',
  'sedang',
  'Filosofi pendidikan Taman Siswa menekankan pendidikan yang memerdekakan serta membentuk karakter kebangsaan. Dalam konteks perbaikan pendidikan Indonesia saat ini, aspek yang paling mendesak untuk dibenahi agar sejalan dengan semangat tersebut adalah ...',
  NULL,
  '{"A":"Penguatan pendidikan karakter dan kemandirian peserta didik dalam proses pembelajaran.","B":"Peningkatan standar akademik agar lulusan mampu bersaing di tingkat global.","C":"Penyesuaian kurikulum nasional dengan kebutuhan industri dan dunia kerja.","D":"Pemerataan sarana dan prasarana pendidikan untuk mengurangi kesenjangan antardaerah.","E":"Optimalisasi pemanfaatan teknologi pembelajaran untuk meningkatkan efisiensi pendidikan."}'::jsonb,
  'A',
  '* **Penjelasan:**
  Filosofi pendidikan Taman Siswa (Ki Hadjar Dewantara) menempatkan pendidikan sebagai sarana pembebasan manusia (*pendidikan yang memerdekakan*) yang bertujuan membentuk pribadi yang berkarakter, mandiri, berbudi pekerti luhur, dan berjiwa kebangsaan, bukan sekadar mengejar capaian akademik atau kebutuhan pragmatis pasar.
  * **Opsi A paling tepat** karena secara langsung menekankan penguatan pendidikan karakter dan kemandirian peserta didik dalam proses pembelajaran, yang merupakan inti dari semangat Taman Siswa.
  * **Opsi B** berfokus pada hasil kognitif dan daya saing global.
  * **Opsi C** berisiko mereduksi esensi luhur pendidikan menjadi sekadar alat ekonomi dan tenaga kerja industri.
  * **Opsi D** penting untuk keadilan akses sarana fisik, namun lebih menyentuh aspek struktural fasilitas, bukan esensi kurikulum pendidikan yang memerdekakan jiwa peserta didik.
  * **Opsi E** hanya merupakan instrumen alat bantu teknologi pendukung.',
  NULL,
  'published'
),
(
  'part-28',
  10,
  'TWK',
  'Bhinneka Tunggal Ika',
  'sedang',
  'Semboyan Bhinneka Tunggal Ika membawa perubahan cara pandang bangsa Indonesia terhadap keberagaman. Perbedaan paling mendasar antara kondisi sebelum dan sesudah pemaknaan semboyan tersebut adalah ...',
  NULL,
  '{"A":"Perbedaan yang sebelumnya dikelola secara terbatas kini diakui sebagai bagian dari kehidupan berbangsa.","B":"Perbedaan yang sebelumnya dihindari kini diberi ruang agar setiap kelompok dapat mengekspresikan diri.","C":"Keberagaman yang semula dianggap sensitif kini disesuaikan dengan kepentingan sosial yang lebih luas.","D":"Perbedaan yang dahulu dipandang sebagai masalah kini diatur agar tidak mengganggu ketertiban umum.","E":"Keberagaman yang dahulu berpotensi memicu gesekan kini diarahkan untuk memperkuat persatuan bangsa."}'::jsonb,
  'E',
  '* **Penjelasan:**
  Makna utama semboyan *Bhinneka Tunggal Ika* terletak pada pergeseran paradigma bangsa Indonesia terhadap keberagaman, yaitu dari sesuatu yang berpotensi memecah belah dan memicu friksi/konflik antarsuku, menjadi aset kekayaan dan kekuatan yang justru memperkokoh integrasi dan persatuan nasional.
  * **Opsi E paling tepat** karena secara jelas dan komprehensif menggambarkan pergeseran cara pandang tersebut: keberagaman yang dahulu rentan menimbulkan gesekan kini dimaknai dan diarahkan untuk memperkuat persatuan bangsa.
  * **Opsi A** hanya menekankan pengakuan terhadap perbedaan, namun belum menegaskan arah persatuan.
  * **Opsi B** fokus pada kebebasan ekspresi kelompok, bukan integrasi nasional.
  * **Opsi C dan D** bernuansa administratif/ketertiban belaka, bukan pemaknaan perbedaan sebagai modalitas pemersatu bangsa.',
  NULL,
  'published'
),
(
  'part-28',
  12,
  'TWK',
  'NKRI & Integrasi',
  'sedang',
  'Ancaman spionase dapat membahayakan kedaulatan negara karena menyasar informasi strategis. Sikap yang paling tepat untuk mencegah ancaman tersebut adalah ...',
  NULL,
  '{"A":"Menerapkan prinsip kehati-hatian dalam berbagi informasi agar tidak menimbulkan kecurigaan pihak lain.","B":"Menjaga etika profesional dalam bekerja supaya data negara tetap digunakan secara bertanggung jawab.","C":"Membatasi akses informasi strategis secara ketat sesuai kewenangan dan prosedur yang berlaku.","D":"Mengedepankan keterbukaan informasi sebagai bentuk transparansi dan akuntabilitas publik.","E":"Memperkuat koordinasi antarindividu dan instansi agar stabilitas nasional tetap terjaga."}'::jsonb,
  'C',
  '* **Penjelasan:**
  Ancaman spionase berfokus pada pencurian rahasia intelijen dan data intelijen/keamanan negara oleh pihak asing atau pihak yang tidak berhak. Oleh karena itu, langkah mitigasi yang paling efektif dan tepat sasaran adalah sistem pengamanan dokumen dan pembatasan akses informasi sensitif.
  * **Opsi C paling tepat** karena secara langsung menekankan pembatasan akses informasi strategis secara ketat berdasarkan kewenangan dan prosedur operasional standar resmi (*need to know basis*), yang merupakan pilar utama kontra-spionase.
  * **Opsi A** lebih berfokus pada persepsi kecurigaan orang lain, bukan pengamanan data itu sendiri.
  * **Opsi B** bersifat etika umum, namun tanpa kontrol akses ketat, kebocoran tetap bisa terjadi.
  * **Opsi D** justru berbahaya dalam konteks kerahasiaan pertahanan negara karena keterbukaan publik memiliki pengecualian mutlak pada informasi strategis/rahasia negara.
  * **Opsi E** terlalu umum dan tidak spesifik menyasar perlindungan data strategis.',
  NULL,
  'published'
),
(
  'part-28',
  13,
  'TWK',
  'TWK Umum',
  'sedang',
  'Peristiwa Sumpah Pemuda 1928 menandai perubahan penting dalam arah perjuangan nasional Indonesia. Perubahan saat ini yang paling mendasar yang ditunjukkan oleh peristiwa tersebut adalah ...',
  NULL,
  '{"A":"Perjuangan yang semula bersifat kedaerahan mulai diarahkan pada cita-cita nasional bersama.","B":"Organisasi pemuda semakin aktif menyusun strategi perlawanan terhadap penjajahan.","C":"Pemuda Indonesia mulai menyatukan kekuatan untuk memperkuat gerakan politik nasional.","D":"Kesadaran pemuda terhadap pentingnya pendidikan dan pergerakan sosial semakin meningkat.","E":"Perlawanan terhadap penjajahan dilakukan secara lebih terbuka dan terkoordinasi."}'::jsonb,
  'A',
  '* **Penjelasan:**
  Peristiwa Sumpah Pemuda 28 Oktober 1928 merupakan tonggak revolusi mental dan orientasi pergerakan nasional bangsa Indonesia. Sebelum tahun 1928, perjuangan masih bersifat partikularistik dan etnosentris (kedaerahan seperti Jong Java, Jong Sumatranen Bond, Jong Ambon). Melalui ikrar satu tanah air, satu bangsa, dan menjunjung bahasa persatuan bahasa Indonesia, para pemuda melebur batas-batas kedaerahan tersebut ke dalam satu identitas kebangsaan yang utuh.
  * **Opsi A paling tepat** karena menangkap esensi perubahan fundamental tersebut, yakni beralihnya perjuangan lokal/kedaerahan menuju visi cita-cita nasional bersama.
  * **Opsi B, C, dan E** merupakan implikasi atau langkah teknis berikutnya, bukan hakikat perubahan mendasarnya.
  * **Opsi D** lebih merepresentasikan era Kebangkitan Nasional 1908 (Budi Utomo), bukan ikrar persatuan 1928.',
  NULL,
  'published'
),
(
  'part-28',
  14,
  'TWK',
  'NKRI & Integrasi',
  'sedang',
  'Dalam konteks Indonesia sebagai negara hukum, sikap yang paling tepat mencerminkan nasionalisme yang berorientasi pada persatuan bangsa melalui penegakan hukum adalah ...',
  NULL,
  '{"A":"Mendukung kebijakan pemerintah sepanjang ditujukan untuk menjaga keutuhan dan stabilitas negara.","B":"Mematuhi hukum yang berlaku serta menyelesaikan perbedaan melalui mekanisme konstitusional.","C":"Mengutamakan kepentingan nasional dengan menempatkan stabilitas sebagai prioritas dalam situasi tertentu.","D":"Menerapkan hukum secara bijaksana dengan mempertimbangkan kondisi sosial masyarakat.","E":"Menjaga ketertiban umum dengan mendorong kesamaan pandangan hukum di tengah masyarakat."}'::jsonb,
  'B',
  '* **Penjelasan:**
  Dalam konsep negara hukum (*rechstaat*), integrasi dan persatuan bangsa dicapai melalui supremasi hukum yang adil, bukan dengan pemaksaan kekuasaan atau stabilitas semu. Nasionalisme hukum menuntut kesadaran bahwa segala bentuk pertentangan kepentingan harus disalurkan dan diputus melalui jalur hukum yang sah dan konstitusional.
  * **Opsi B paling tepat** karena memadukan dua pilar penting: ketaatan pada norma hukum positif dan komitmen menyelesaikan setiap perselisihan melalui mekanisme konstitusi yang demokratis.
  * **Opsi A** bersifat pasif dan mengabaikan fungsi kontrol kritis warga negara terhadap kebijakan yang mungkin bertentangan dengan hukum.
  * **Opsi C** berisiko membenarkan tindakan otoriter/di luar hukum atas nama "stabilitas sementara".
  * **Opsi D** berisiko memicu ketidakpastian hukum (*legal uncertainty*) jika hukum diubah-ubah sesuai situasi sosial sesaat.
  * **Opsi E** menuntut penyeragaman pandangan yang bertentangan dengan prinsip negara demokrasi majemuk.',
  NULL,
  'published'
),
(
  'part-28',
  15,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Perhatikan beberapa sikap berikut!
1) Menghormati perbedaan latar belakang sosial dan budaya dalam kehidupan bermasyarakat.
2) Mengutamakan keharmonisan lingkungan dengan menyesuaikan diri pada kebiasaan mayoritas.
3) Berperan aktif membangun kegiatan ekonomi swasta untuk kepentingan masyarakat desa.
4) Menjaga ketertiban sosial dengan membatasi keterlibatan pada isu-isu yang berpotensi sensitif.
5) Menunjukkan empati dan solidaritas kepada kelompok lain yang menghadapi kesulitan sosial.
6) Menjalin hubungan sosial secara terbuka tanpa membedakan latar belakang kelompok.

Manakah pernyataan diatas yang merupakan sikap nasionalisme di bidang sosial?',
  NULL,
  '{"A":"1, 2, dan 6","B":"2, 3, dan 5","C":"3, 4, dan 6","D":"1, 3, dan 5","E":"1, 5, dan 6"}'::jsonb,
  'E',
  '* **Penjelasan:**
  Nasionalisme di bidang sosial bertujuan merajut kohesi sosial, solidaritas kemanusiaan, serta sikap inklusif antarkelompok masyarakat yang majemuk:
  * **Pernyataan (1)** mencerminkan penghormatan terhadap keberagaman latar belakang sosial budaya.
  * **Pernyataan (5)** memperlihatkan kepedulian nyata, empati, dan solidaritas sosial bagi sesama anak bangsa.
  * **Pernyataan (6)** menegaskan pergaulan sosial yang terbuka dan anti-diskriminasi.
  * **Pernyataan (2)** kurang tepat karena penyeragaman kehendak mayoritas berisiko menyingkirkan hak minoritas.
  * **Pernyataan (3)** masuk dalam ranah nasionalisme bidang ekonomi.
  * **Pernyataan (4)** menunjukkan sikap apatis terhadap dialog sosial yang konstruktif.',
  NULL,
  'published'
),
(
  'part-28',
  16,
  'TWK',
  'NKRI & Integrasi',
  'sedang',
  'Di tengah arus globalisasi yang semakin kuat, generasi muda Indonesia dihadapkan pada tantangan menjaga jati diri bangsa. Dampak paling utama jika generasi muda tetap berpegang teguh pada nasionalisme adalah ...',
  NULL,
  '{"A":"Terbentuknya generasi muda yang adaptif terhadap budaya global dan aktif mengikuti perkembangan internasional.","B":"Terjaganya identitas dan kepentingan nasional Indonesia di tengah pengaruh global yang semakin luas.","C":"Meningkatnya kemampuan generasi muda menyaring pengaruh global yang dianggap relevan dengan kebutuhan zaman.","D":"Berkembangnya sikap terbuka generasi muda dalam menerima nilai universal demi kemajuan bangsa.","E":"Meningkatnya daya saing generasi muda Indonesia melalui penguasaan standar global dan teknologi modern."}'::jsonb,
  'B',
  '* **Penjelasan:**
  Nasionalisme berperan sebagai benteng pertahanan ideologis dan jati diri bangsa (*filter budaya*). Arus globalisasi membawa penetrasi budaya luar yang masif, sehingga tujuan utama dan paling mendasar dari berpegang teguh pada nasionalisme adalah agar bangsa ini tidak kehilangan arah, kepribadian nasional (*national identity*), serta tetap memprioritaskan kedaulatan dan kepentingan nasional Indonesia.
  * **Opsi B paling tepat** karena mencakup inti hakiki eksistensi bangsa: terjaganya identitas kepribadian bangsa dan pengutamaan kepentingan nasional.
  * **Opsi A, D, dan E** lebih merupakan konsekuensi modernisasi dan adaptasi zaman, bukan tujuan utama dari nasionalisme itu sendiri.
  * **Opsi C** hanya merupakan cara/instrumen penunjang, bukan dampak substansialnya.',
  NULL,
  'published'
),
(
  'part-28',
  17,
  'TWK',
  'Bela Negara',
  'sedang',
  'Undang-Undang Nomor 3 Tahun 2002 tentang Pertahanan Negara menegaskan bahwa sistem pertahanan Indonesia bersifat semesta dan melibatkan seluruh warga negara. Ketentuan tersebut menunjukkan bahwa bela negara dimaknai sebagai ...',
  NULL,
  '{"A":"Keterlibatan warga negara dalam kegiatan pertahanan yang bersifat militer sesuai arahan negara.","B":"Kewajiban warga negara mengikuti pelatihan pertahanan fisik secara berkala.","C":"Peran aktif seluruh warga negara dalam menjaga kedaulatan dan keutuhan negara sesuai fungsi masing-masing.","D":"Bentuk kepatuhan warga negara terhadap kebijakan pertahanan yang ditetapkan pemerintah.","E":"Sikap kesediaan warga negara untuk mendukung upaya pertahanan negara secara moral."}'::jsonb,
  'C',
  '* **Penjelasan:**
  Berdasarkan UU No. 3 Tahun 2002, Sistem Pertahanan Semesta (Sishanneg/Sishankamrata) melibatkan segenap komponen bangsa yang terdiri atas Komponen Utama (TNI), Komponen Cadangan, dan Komponen Pendukung (seluruh warga negara, SDA, SDB, dan sarana prasarana). Bela negara bagi warga negara tidak terbatas pada angkat senjata atau latihan kemiliteran fisik, melainkan keterlibatan nyata warga negara dalam pengabdian sesuai profesi dan peran fungsionalnya masing-masing demi kedaulatan NKRI.
  * **Opsi C paling tepat** karena merangkum konsep keikutsertaan semesta yang mencakup seluruh warga negara sesuai profesi dan fungsinya di masyarakat.
  * **Opsi A dan B** menyempitkan bela negara menjadi wajib militer/latihan fisik saja.
  * **Opsi D dan E** pasif dan belum menunjukkan keaktifan nyata warga negara dalam mempertahankan kelangsungan hidup bangsa.',
  NULL,
  'published'
),
(
  'part-28',
  18,
  'TWK',
  'Bela Negara',
  'sedang',
  'Sejak awal kemerdekaan, para pendahulu bangsa menempatkan bela negara sebagai amanat penting. Alasan utama bela negara diperlukan untuk menjaga eksistensi Indonesia adalah ...',
  NULL,
  '{"A":"Membentuk kesiapan warga negara agar mampu menghadapi berbagai ancaman fisik dari luar negeri.","B":"Membangun kekuatan pertahanan negara agar memiliki posisi tawar yang kuat di tingkat internasional.","C":"Menumbuhkan kesadaran dan partisipasi seluruh warga negara dalam menjaga keberlangsungan negara.","D":"Menyesuaikan kebijakan pertahanan nasional dengan perkembangan situasi politik global yang dinamis.","E":"Menjaga loyalitas warga negara terhadap pemerintah sebagai simbol kekuasaan negara yang sah."}'::jsonb,
  'C',
  '* **Penjelasan:**
  Eksistensi dan bertahannya suatu negara di dunia tidak hanya ditentukan oleh senjata canggih atau kekuatan militer semata, melainkan fondasi terkuatnya ada pada *kolektivitas kesadaran berbangsa* dan komitmen bersama seluruh rakyatnya untuk mempertahankan negaranya dari keruntuhan. Amanat para pendiri bangsa menekankan bahwa kemerdekaan Indonesia diraih dan dipertahankan melalui partisipasi semesta seluruh rakyat Indonesia.
  * **Opsi C paling tepat** karena menempatkan kesadaran dan keikutsertaan partisipatif warga negara sebagai modalitas utama menjaga keberlangsungan hidup negara.
  * **Opsi A dan B** terlalu berorientasi pada pertahanan militer konvensional/eksternal.
  * **Opsi E** salah kaprah karena loyalitas bela negara ditujukan kepada bangsa dan negara, bukan semata kepada rezim pemerintahan yang berkuasa.',
  NULL,
  'published'
),
(
  'part-28',
  19,
  'TWK',
  'Bela Negara',
  'sedang',
  'Globalisasi membuka peluang kemajuan di berbagai bidang. Dalam perspektif bela negara, sikap paling tepat dalam memanfaatkan dampak positif globalisasi adalah ...',
  NULL,
  '{"A":"Mengikuti perkembangan global untuk meningkatkan kualitas sumber daya manusia nasional.","B":"Mengadopsi praktik global yang dinilai maju guna mempercepat modernisasi bangsa.","C":"Memanfaatkan kemajuan global sebagai sarana penguatan daya saing Indonesia di dunia.","D":"Mengintegrasikan kemajuan global dengan kepentingan nasional dan nilai kebangsaan.","E":"Mengoptimalkan keterbukaan global agar Indonesia mampu beradaptasi secara cepat."}'::jsonb,
  'D',
  '* **Penjelasan:**
  Dalam paradigma bela negara kontemporer (ancaman nirmiliter/asimetris), menyikapi kemajuan global bukanlah dengan menutup diri, melainkan menyaring (*filtering*) dan mengintegrasikan sains, teknologi, dan inovasi global agar selaras dengan ideologi Pancasila serta diabdikan sepenuhnya bagi kemakmuran dan kepentingan nasional Indonesia.
  * **Opsi D paling tepat** karena secara komprehensif mengaitkan kemajuan global dengan dua jangkar utama bela negara: kepentingan nasional dan nilai-nilai luhur kebangsaan.
  * **Opsi A dan C** baik untuk daya saing, namun belum menegaskan filter nilai kebangsaan.
  * **Opsi B dan E** membuka peluang westernisasi/hegemoni asing apabila adopsi kemajuan dilakukan tanpa pijakan nilai lokal.',
  NULL,
  'published'
),
(
  'part-28',
  20,
  'TWK',
  'Bela Negara',
  'sedang',
  'Keikutsertaan warga negara dalam pemilu merupakan salah satu wujud cinta tanah air. Makna paling mendasar dari partisipasi tersebut bagi kehidupan berbangsa dan bernegara adalah ...',
  NULL,
  '{"A":"Melaksanakan hak dan tanggung jawab warga negara demi menjaga keberlangsungan negara.","B":"Menunjukkan kebebasan warga negara dalam menentukan pilihan politik secara pribadi.","C":"Menyalurkan aspirasi politik agar kepentingan individu dapat terwakili oleh negara.","D":"Mendukung stabilitas pemerintahan agar roda kekuasaan berjalan tanpa gangguan.","E":"Mematuhi mekanisme pemilu sebagai bentuk kepatuhan terhadap sistem ketatanegaraan."}'::jsonb,
  'A',
  '* **Penjelasan:**
  Pemilihan umum adalah instrumen kedaulatan rakyat dalam negara demokrasi untuk menentukan arah kepemimpinan dan suksesi kekuasaan secara damai dan berkesinambungan. Menggunakan hak suara dalam pemilu adalah wujud nyata bela negara dan cinta tanah air karena menjaga legitimasi serta keberlangsungan sistem pemerintahan negara.
  * **Opsi A paling tepat** karena mencakup hakikat seimbang antara hak demokratis dan tanggung jawab moral warga negara untuk menjamin kesinambungan NKRI.
  * **Opsi B dan C** terlalu menitikberatkan pada aspek kebebasan individual.
  * **Opsi E** hanya melihat dari sisi ketaatan administratif formal.',
  NULL,
  'published'
),
(
  'part-28',
  21,
  'TWK',
  'NKRI & Integrasi',
  'sedang',
  'Peristiwa bersejarah Proklamasi Kemerdekaan 17 Agustus 1945 mencerminkan kuatnya jiwa kepahlawanan para pendiri bangsa. Sikap berikut yang **kurang mencerminkan** makna jiwa kepahlawanan dari peristiwa tersebut jika diterapkan dalam kehidupan berbangsa saat ini adalah ...',
  NULL,
  '{"A":"Mengutamakan kepentingan bangsa di atas kepentingan pribadi dan golongan.","B":"Berani mengambil keputusan penting demi kepentingan nasional meskipun berisiko.","C":"Menjaga persatuan dan kesatuan bangsa dalam menghadapi berbagai perbedaan.","D":"Menunjukkan keteguhan sikap dalam mempertahankan kepentingan nasional di tengah tekanan.","E":"Mengupayakan keberhasilan kelompok atau institusi agar tujuan bersama tercapai secara efektif."}'::jsonb,
  'E',
  '* **Penjelasan:**
  Jiwa kepahlawanan 1945 didasari oleh kerelaan berkorban tanpa pamrih dan mendahulukan keselamatan serta kedaulatan seluruh bangsa Indonesia melampaui sekat-sekat suku, golongan, maupun kelompok partikular.
  * **Opsi E menjadi jawaban yang dicari (kurang mencerminkan)** karena fokus tujuannya dipersempit hanya pada skala kelompok atau institusi tertentu, yang berpotensi melahirkan primordialisme/ego sektoral jika bertabrakan dengan kepentingan nasional yang lebih luas.
  * **Opsi A, B, C, dan D** semuanya adalah manifestasi otentik dari jiwa kepahlawanan proklamasi kemerdekaan.',
  NULL,
  'published'
),
(
  'part-28',
  22,
  'TWK',
  'TWK Umum',
  'sedang',
  'Mohammad Hatta dikenal menjunjung integritas melalui keselarasan antara prinsip dan tindakan. Dalam situasi kerja sehari-hari, sikap yang paling mencerminkan nilai integritas tersebut adalah ...',
  NULL,
  '{"A":"Bekerja dengan sungguh-sungguh dan konsisten agar hasil kerja memenuhi target yang ditetapkan.","B":"Memprioritaskan tanggung jawab dan kelancaran tugas agar pekerjaan bersama tetap berjalan efektif.","C":"Menjalankan keputusan tim secara tertib dan patuh sebagai bentuk disiplin dalam bekerja.","D":"Berani mengambil langkah paling aman untuk menghindari risiko dan potensi permasalahan kerja.","E":"Menyampaikan hasil pekerjaan sesuai keadaan sebenarnya meskipun berdampak pada diri sendiri."}'::jsonb,
  'E',
  '* **Penjelasan:**
  Bung Hatta adalah teladan kejujuran dan integritas paripurna, di mana prinsip kejujuran pantang dikorbankan demi keuntungan pribadi atau rasa nyaman. Integritas sejati diuji ketika seseorang dihadapkan pada pilihan sulit: mengatakan kebenaran faktual yang berisiko bagi dirinya atau memilih menutup-nutupi kesalahan demi menyelamatkan posisi.
  * **Opsi E paling tepat** karena mencerminkan konsistensi moral tertinggi: keberanian bersikap jujur dan transparan apa adanya meskipun ada konsekuensi pahit bagi diri sendiri.
  * **Opsi A dan B** mencerminkan profesionalisme dan kerja sama, tetapi belum menguji integritas kejujuran moral.
  * **Opsi D** justru bertolak belakang dengan integritas (sikap oportunis mencari zona nyaman).',
  NULL,
  'published'
),
(
  'part-28',
  23,
  'TWK',
  'Pancasila',
  'sedang',
  'Ir. Soekarno menekankan bahwa kepemimpinan harus lahir dari musyawarah yang jujur dan bertanggung jawab demi kepentingan rakyat. Sikap integritas yang paling mencerminkan nilai Sila Keempat Pancasila dalam konteks tersebut adalah ...',
  NULL,
  '{"A":"Mengutamakan keputusan mayoritas meskipun proses diskusi tidak melibatkan semua pihak.","B":"Menyampaikan pendapat secara terbuka dalam musyawarah walaupun berbeda dengan arus utama.","C":"Menjalankan hasil musyawarah selama tidak merugikan posisi pribadi dalam kepemimpinan.","D":"Mengikuti keputusan pimpinan sebagai bentuk loyalitas agar stabilitas tetap terjaga.","E":"Menyesuaikan pendapat dengan situasi forum demi tercapainya kesepakatan cepat."}'::jsonb,
  'B',
  '* **Penjelasan:**
  Sila Keempat Pancasila mengajarkan *musyawarah mufakat yang dipimpin oleh hikmat kebijaksanaan*. Dalam musyawarah yang berintegritas, setiap orang wajib menyampaikan kebenaran dan aspirasi demi kebaikan bersama secara jujur, bukan bersikap asal bapak senang (*yes-man*) atau sekadar terbawa arus suara mayoritas (*groupthink*).
  * **Opsi B paling tepat** karena memperlihatkan integritas moral dan intelektual dalam forum musyawarah: berani menyuarakan pandangan yang benar secara santun dan terbuka kendati berbeda dari arus umum.
  * **Opsi A** mengabaikan asas inklusivitas musyawarah.
  * **Opsi C** menunjukkan motivasi pamrih/kepentingan pribadi.
  * **Opsi E** pragmatis dan menggadaikan objektivitas demi kesepakatan instan.',
  NULL,
  'published'
),
(
  'part-28',
  24,
  'TWK',
  'TWK Umum',
  'sedang',
  'Seorang pejabat struktural mengetahui bahwa keputusan yang akan ditetapkan telah sesuai prosedur formal, namun sebagian data pendukungnya belum sepenuhnya akurat. Di sisi lain, keputusan tersebut dibutuhkan segera agar program tetap berjalan. Sikap yang paling mencerminkan integritas adalah ...',
  NULL,
  '{"A":"Menetapkan keputusan sambil memperbaiki data pendukung secara bertahap agar program tidak terhambat.","B":"Mengedepankan keberlanjutan program dengan mempertimbangkan urgensi kebutuhan masyarakat.","C":"Menunda penetapan keputusan sampai data diverifikasi secara menyeluruh sesuai ketentuan.","D":"Menyesuaikan kelengkapan data dengan kondisi lapangan agar kebijakan dapat segera diterapkan.","E":"Mengonsultasikan keputusan tersebut kepada pihak terkait untuk memperoleh dukungan bersama."}'::jsonb,
  'C',
  '* **Penjelasan:**
  Prinsip dasar tata kelola pemerintahan yang baik (*good governance*) dan integritas birokrasi menuntut bahwa setiap produk hukum dan keputusan pejabat publik harus berpijak pada kebenaran fakta dan akurasi data (*evidence-based policy*). Menetapkan kebijakan dengan data fiktif atau belum akurat merupakan pelanggaran prinsip akuntabilitas dan berisiko menimbulkan kerugian negara atau maladministrasi di kemudian hari.
  * **Opsi C paling tepat** karena menunjukkan kehati-hatian, kejujuran faktual, dan kepatuhan mutlak pada asas akuntabilitas hukum dengan menunda keputusan hingga data valid terverifikasi.
  * **Opsi A dan B** mengorbankan integritas data demi alasan pragmatisme kecepatan program.
  * **Opsi D** berbahaya karena membuka celah manipulasi kelengkapan data.',
  NULL,
  'published'
),
(
  'part-28',
  25,
  'TWK',
  'TWK Umum',
  'sedang',
  'Perhatikan paragraf berikut!

> (1) Wisata berkelanjutan kini menjadi tren utama dalam industri pariwisata global demi menjaga kelestarian alam serta kekayaan budaya lokal. (2) Konsep ini mengedepankan prinsip minim dampak lingkungan agar keindahan destinasi wisata tetap terjaga bagi generasi mendatang. (3) Selain aspek lingkungan, kesejahteraan ekonomi masyarakat setempat juga menjadi prioritas utama dalam pengembangan kawasan wisata tersebut. (4) Para wisatawan pun kini cenderung lebih memilih pengalaman yang autentik dan edukatif dibandingkan sekadar hiburan masif yang merusak. (5) Pihak pengelola destinasi mulai menerapkan pembatasan jumlah kunjungan harian untuk mencegah kerusakan ekosistem yang berlebihan.

Ide pokok paragraf di atas adalah ...',
  NULL,
  '{"A":"Dampak positif pembatasan jumlah kunjungan harian bagi ekosistem wisata.","B":"Perubahan minat wisatawan global dari hiburan masif ke pengalaman edukatif.","C":"Wisata berkelanjutan sebagai model pariwisata yang menjaga kelestarian dan kesejahteraan.","D":"Prioritas kesejahteraan ekonomi masyarakat lokal dalam industri pariwisata modern.","E":"Penerapan prinsip minimalisasi dampak lingkungan pada destinasi wisata populer."}'::jsonb,
  'C',
  '* **Penjelasan:**
  Paragraf tersebut merupakan paragraf deduktif yang meletakkan ide sentralnya pada kalimat (1), yaitu tren global mengenai konsep *wisata berkelanjutan* yang bertujuan menjaga kelestarian alam serta kekayaan budaya/kesejahteraan lokal. Kalimat (2) hingga (5) berperan sebagai gagasan penjelas (aspek lingkungan, kesejahteraan masyarakat, perilaku wisatawan, dan regulasi kunjungan).
  * **Opsi C paling tepat** karena merangkum secara utuh topik utama (wisata berkelanjutan) dan dua pilar utamanya (kelestarian lingkungan dan kesejahteraan sosial-ekonomi).',
  NULL,
  'published'
),
(
  'part-28',
  26,
  'TWK',
  'TWK Umum',
  'sedang',
  'Perhatikan teks berikut!

> (1) Usaha Mikro, Kecil, dan Menengah (UMKM) memegang peranan vital sebagai tulang punggung perekonomian nasional Indonesia di tengah dinamika pasar global. (2) Sektor ini terbukti memiliki daya tahan yang luar biasa dalam menghadapi berbagai gejolak krisis ekonomi yang pernah terjadi. (3) Selain itu, UMKM memberikan kontribusi besar terhadap penyerapan tenaga kerja sehingga secara signifikan mampu menekan angka pengangguran di berbagai daerah. (4) Pemerintah pun terus berupaya mendorong digitalisasi bagi para pelaku usaha kecil agar mereka dapat memperluas jangkauan pasar hingga ke mancanegara. (5) Kendati demikian, tantangan seperti sulitnya akses permodalan dan standarisasi kualitas produk masih sering menjadi kendala utama dalam pengembangannya. (6) Oleh karena itu, sinergi antara dukungan kebijakan pemerintah dan inovasi pelaku usaha sangat diperlukan untuk mengoptimalkan potensi UMKM demi kemajuan ekonomi bangsa.

Kesimpulan paragraf di atas adalah ...',
  NULL,
  '{"A":"Digitalisasi merupakan satu-satunya solusi bagi pelaku UMKM untuk memperluas jangkauan pasar hingga ke luar negeri.","B":"Perlunya sinergi antara kebijakan pemerintah dan inovasi pelaku usaha untuk memaksimalkan peran UMKM bagi ekonomi nasional.","C":"Daya tahan UMKM dalam menghadapi krisis ekonomi menjadikannya sektor yang paling aman bagi para pencari kerja.","D":"Kendala akses permodalan dan kualitas produk menyebabkan posisi UMKM sebagai tulang punggung ekonomi mulai terancam.","E":"Kontribusi UMKM terhadap penyerapan tenaga kerja menjadikannya prioritas tunggal dalam kebijakan ekonomi pemerintah."}'::jsonb,
  'B',
  '* **Penjelasan:**
  Kesimpulan merupakan intisari menyeluruh yang merefleksikan premis-premis awal (peran strategis UMKM), komplikasi/kendala di tengah paragraf (permodalan dan standarisasi), serta penyelesaian konklusif yang termaktub di kalimat penutup (kalimat 6 yang diawali konjungsi penanda kesimpulan *oleh karena itu*).
  * **Opsi B paling tepat** karena mencerminkan resolusi akhir: urgensi sinergi antara regulasi pemerintah dan inovasi pelaku UMKM dalam mengoptimalkan potensi ekonomi nasional.',
  NULL,
  'published'
),
(
  'part-28',
  27,
  'TWK',
  'NKRI & Integrasi',
  'sedang',
  'Perhatikan teks berikut!

> (1) Pengembangan sumber pangan lokal merupakan strategi kunci untuk memperkuat ketahanan pangan nasional di tengah ketidakpastian iklim global. (2) Indonesia memiliki kekayaan hayati luar biasa, seperti sagu, jagung, dan umbi-umbian, yang potensinya selama ini belum dimanfaatkan secara maksimal. (3) Ketergantungan yang terlalu tinggi terhadap satu jenis komoditas pokok, yakni beras, membuat stabilitas pangan nasional menjadi rentan terhadap fluktuasi harga dunia. (4) Dengan mendiversifikasi konsumsi pangan, masyarakat dapat membantu mengurangi beban impor gandum dan beras yang sering membebani devisa negara. (5) Pemerintah daerah pun perlu menggalakkan promosi konsumsi pangan lokal melalui berbagai festival kuliner dan edukasi gizi di sekolah-sekolah. (6) Melalui langkah integrasi ini, kemandirian pangan Indonesia diharapkan tidak lagi bergantung sepenuhnya pada pasokan dari luar negeri.

Kalimat utama pada paragraf tersebut adalah nomor ...',
  NULL,
  '{"A":"(1)","B":"(2)","C":"(3)","D":"(4)","E":"(6)"}'::jsonb,
  'A',
  '* **Penjelasan:**
  Paragraf di atas berpola **deduktif**, di mana pernyataan umum diletakkan pada kalimat nomor (1) (*Pengembangan sumber pangan lokal merupakan strategi kunci untuk memperkuat ketahanan pangan nasional*). Kalimat-kalimat berikutnya (2 s.d. 6) menyajikan ilustrasi keanekaragaman hayati, bahaya monokonsumsi beras, diversifikasi pangan, serta peran pemerintah daerah sebagai rincian penjelas (*gagasan pendukung*).',
  NULL,
  'published'
),
(
  'part-28',
  28,
  'TWK',
  'Pancasila',
  'sedang',
  'Manakah kalimat di bawah ini yang merupakan kalimat efektif ...',
  NULL,
  '{"A":"Bagi para peserta yang mengikuti ujian diharapkan untuk membawa kartu identitas masing-masing.","B":"Tahap penelitian ini meliputi pengumpulan data, penganalisisan data, dan menyusun laporan akhir.","C":"Meskipun hari sudah larut malam, tetapi para petugas kebersihan tetap semangat bekerja.","D":"Keberhasilan pembangunan nasional bergantung pada kerja sama antara pemerintah dan masyarakat.","E":"Seluruh hadirin semua dimohon untuk segera berdiri karena acara akan dimulai."}'::jsonb,
  'D',
  '* **Penjelasan:**
  * **Opsi D Efektif:** Memiliki struktur gramatikal yang utuh dan jelas: Subjek (*Keberhasilan pembangunan nasional*), Predikat (*bergantung*), Pelengkap (*pada kerja sama antara pemerintah dan masyarakat*), hemat kata, dan tidak ambigu.
  * **Opsi A Salah:** Kerancuan fungsi subjek akibat penggunaan preposisi di awal kalimat (*Bagi para peserta... diharapkan...* kehilangan subjek gramatikal; seharusnya *Peserta ujian diharapkan membawa...*).
  * **Opsi B Salah:** Tidak memenuhi syarat keparalelan bentuk (*paralelisme*): kata *pengumpulan* (nomina/pe-an), *penganalisisan* (nomina/pe-an), namun diikuti *menyusun* (verba aktif me-); seharusnya *penyusunan laporan akhir*.
  * **Opsi C Salah:** Penggunaan konjungsi ganda secara mubazir: *Meskipun... tetapi...* (anak kalimat konsesif tidak boleh diikuti konjungsi pertentangan *tetapi* dalam satu kalimat majemuk).
  * **Opsi E Salah:** Pemborosan kata/pleonasme: kata *seluruh* dan *semua* bermakna jamak kembar yang dipakai bersamaan (*Seluruh hadirin dimohon...*).',
  NULL,
  'published'
),
(
  'part-28',
  29,
  'TWK',
  'TWK Umum',
  'sedang',
  'Perhatikan paragraf berikut!

> (1) Di era transformasi digital, setiap perusahaan harus memiliki strategi pemasaran yang **kreatif** untuk menarik minat konsumen di tengah persaingan yang ketat. (2) Selain itu, ketersediaan tenaga kerja yang **handal** menjadi modal utama dalam menjalankan setiap rencana operasional secara efektif dan efisien. (3) Proses seleksi karyawan dilakukan melalui **analisis** kompetensi yang mendalam guna mendapatkan kandidat yang paling sesuai dengan kebutuhan organisasi. (4) Struktur **hierarki** di dalam organisasi perlu dirancang sesederhana mungkin agar alur pengambilan keputusan menjadi lebih cepat dan tidak berbelit-belit. (5) Pendekatan yang **komprehensif** dalam mengelola sumber daya manusia terbukti mampu meningkatkan produktivitas perusahaan secara signifikan.

Manakah kata bercetak tebal yang **tidak baku** pada paragraf tersebut ...',
  NULL,
  '{"A":"Kreatif (kalimat 1)","B":"Handal (kalimat 2)","C":"Analisis (kalimat 3)","D":"Hierarki (kalimat 4)","E":"Komprehensif (kalimat 5)"}'::jsonb,
  'B',
  '* **Penjelasan:**
  Berdasarkan Kamus Besar Bahasa Indonesia (KBBI):
  * Bentuk baku yang benar adalah **andal** (bukan *handal*). Turunannya adalah *keandalan*, *mengandalkan*, *berkeandalan*.
  * Kata *kreatif* (bukan creatip/kreatip), *analisis* (bukan analisa), *hierarki* (bukan hirarki), dan *komprehensif* (bukan komprehensip) sudah merupakan bentuk kata serapan yang sesuai kaidah ejaan baku bahasa Indonesia.',
  NULL,
  'published'
),
(
  'part-28',
  30,
  'TWK',
  'TWK Umum',
  'sedang',
  'Perhatikan paragraf berikut!

> (1) Industri kelapa sawit merupakan salah satu penyumbang devisa terbesar bagi perekonomian nasional saat ini. (2) Selain menciptakan jutaan lapangan kerja, sektor ini juga mendorong pembangunan infrastruktur di berbagai daerah pelosok. (3) Banyak aktivis lingkungan menyatakan, bahwa pembukaan lahan gambut untuk perluasan kebun memicu pelepasan emisi karbon yang sangat tinggi. (4) Oleh karena itu, pemerintah terus berupaya menerapkan sertifikasi Indonesian Sustainable Palm Oil (ISPO) secara lebih ketat. (5) Langkah strategis ini diharapkan mampu menyeimbangkan antara kepentingan ekonomi negara dan kelestarian ekosistem jangka panjang.

Berdasarkan paragraf di atas, kalimat manakah yang mengandung penggunaan tanda baca yang salah ...',
  NULL,
  '{"A":"Kalimat (1)","B":"Kalimat (2)","C":"Kalimat (3)","D":"Kalimat (4)","E":"Kalimat (5)"}'::jsonb,
  'C',
  '* **Penjelasan:**
  Pada **Kalimat (3)** terdapat kesalahan penggunaan tanda koma (`,`) sebelum kata penghubung *bahwa*:
  > *"Banyak aktivis lingkungan menyatakan, bahwa pembukaan lahan..."*
  
  Menurut Pedoman Umum Ejaan Bahasa Indonesia (PUEBI/EYD):
  * Tanda koma **tidak boleh** digunakan untuk memisahkan unsur predikat (*menyatakan*) dengan klausa objek pengembangannya yang diawali dengan konjungsi penjelas *bahwa*.
  * Kalimat yang benar seharusnya ditulis: *"Banyak aktivis lingkungan menyatakan bahwa pembukaan lahan gambut untuk perluasan kebun memicu pelepasan emisi karbon yang sangat tinggi."*

---

## Bagian 2: Tes Inteligensi Umum (TIU)',
  NULL,
  'published'
),
(
  'part-28',
  31,
  'TIU',
  'Silogisme',
  'sedang',
  'Tidak ada siswa kelas XII IPA yang tergabung dalam klub teater.  
Sebagian anggota klub teater mengikuti lomba pidato tingkat kota.

Kesimpulan yang paling tepat adalah ...',
  NULL,
  '{"A":"Semua siswa kelas XII IPA tidak pernah mengikuti lomba pidato.","B":"Tidak ada peserta lomba pidato yang bersekolah di sekolah tersebut.","C":"Beberapa peserta lomba pidato bukan siswa kelas XII IPA.","D":"Semua peserta lomba pidato berasal dari klub teater.","E":"Siswa kelas XII IPA hanya mengikuti kegiatan akademik."}'::jsonb,
  'C',
  '* **Penjelasan:**
  * **Premis 1:** Tidak ada siswa kelas XII IPA yang tergabung dalam klub teater ($\text{XII IPA} \cap \text{Klub Teater} = \emptyset$). Artinya, seluruh anggota klub teater dipastikan bukan siswa kelas XII IPA.
  * **Premis 2:** Sebagian anggota klub teater mengikuti lomba pidato tingkat kota.
  * **Kesimpulan:** Karena seluruh anggota klub teater bukan siswa kelas XII IPA, maka sebagian anggota klub teater yang mengikuti lomba pidato tersebut pastilah bukan siswa kelas XII IPA.
  * Dengan demikian, kesimpulan yang sah adalah **beberapa peserta lomba pidato bukan siswa kelas XII IPA**.',
  NULL,
  'published'
),
(
  'part-28',
  32,
  'TIU',
  'Silogisme',
  'sedang',
  'Semua siswa yang tidak mengumpulkan tugas tepat waktu mendapatkan peringatan dari wali kelas.  
Tidak semua siswa yang mendapatkan peringatan harus mengikuti kelas tambahan.

Kesimpulan dari kedua premis di atas adalah ...',
  NULL,
  '{"A":"Semua siswa yang tidak mengumpulkan tugas tepat waktu harus mengikuti kelas tambahan.","B":"Sebagian siswa yang mengumpulkan tugas tepat waktu harus mengikuti kelas tambahan.","C":"Tidak ada siswa yang tidak mengumpulkan tugas tepat waktu mengikuti kelas tambahan.","D":"Sebagian siswa yang tidak mengumpulkan tugas tepat waktu tidak mengikuti kelas tambahan.","E":"Semua siswa yang tidak mendapat peringatan tidak mengikuti kelas tambahan."}'::jsonb,
  'D',
  '* **Penjelasan:**
  * **Premis 1:** Semua siswa yang tidak mengumpulkan tugas tepat waktu ($p$) $\rightarrow$ mendapatkan peringatan dari wali kelas ($q$).
  * **Premis 2:** *"Tidak semua siswa yang mendapatkan peringatan harus mengikuti kelas tambahan"* bermakna logis: **Sebagian siswa yang mendapatkan peringatan ($q$) tidak mengikuti kelas tambahan ($r$)**.
  * **Kaidah Silogisme:**
    $$\text{P1: Semua } p \rightarrow q$$
    $$\text{P2: Sebagian } q \rightarrow r$$
    $$\therefore \text{Sebagian } p \rightarrow r$$
  * Maka kesimpulan yang tepat: **Sebagian siswa yang tidak mengumpulkan tugas tepat waktu tidak mengikuti kelas tambahan** (Opsi D).',
  NULL,
  'published'
),
(
  'part-28',
  33,
  'TIU',
  'Silogisme',
  'sedang',
  'Semua mahasiswa yang mengikuti program bimbingan skripsi mendapatkan akses ke ruang konsultasi.  
Tidak ada pemegang akses ruang konsultasi yang diperbolehkan masuk tanpa kartu identitas resmi.

Kesimpulan dari kedua premis di atas adalah ...',
  NULL,
  '{"A":"Beberapa mahasiswa tanpa kartu identitas resmi tetap dapat masuk ke ruang konsultasi.","B":"Sebagian mahasiswa yang tidak mengikuti program bimbingan skripsi juga mendapatkan akses ruang konsultasi.","C":"Tidak ada mahasiswa program bimbingan skripsi yang dapat masuk ke ruang konsultasi.","D":"Semua mahasiswa yang mengikuti program bimbingan skripsi tidak mungkin masuk tanpa kartu identitas resmi.","E":"Semua mahasiswa yang memiliki kartu identitas resmi pasti mengikuti program bimbingan skripsi."}'::jsonb,
  'D',
  '* **Penjelasan:**
  * **Premis 1:** Semua mahasiswa bimbingan skripsi ($p$) mendapatkan akses ruang konsultasi ($q$) $\implies \forall p \rightarrow q$.
  * **Premis 2:** Tidak ada pemegang akses ruang konsultasi yang boleh masuk tanpa kartu identitas resmi ($r$). Artinya: Semua pemegang akses ruang konsultasi wajib membawa kartu identitas resmi saat masuk $\implies \forall q \rightarrow r$.
  * **Kaidah Silogisme Hipotesis:**
    $$\text{P1: Semua } p \rightarrow q$$
    $$\text{P2: Semua } q \rightarrow r$$
    $$\therefore \text{Semua } p \rightarrow r$$
  * Kesimpulan: **Semua mahasiswa yang mengikuti bimbingan skripsi tidak mungkin masuk tanpa kartu identitas resmi** (Opsi D).',
  NULL,
  'published'
),
(
  'part-28',
  34,
  'TIU',
  'Analogi Kata',
  'sedang',
  '**KONSTITUSI : AMANDEMEN** = ...',
  NULL,
  '{"A":"Undang-undang : DPR","B":"Buku : Edisi","C":"Perjanjian : Adendum","D":"Pidato : Orasi","E":"Laporan : Catatan"}'::jsonb,
  'C',
  '* **Penjelasan:**
  * **Hubungan Analogi:** Hubungan antara *dokumen formal/hukum* dengan *istilah resmi untuk perubahan, perbaikan, atau penambahan klausulnya*.
  * Konstitusi (UUD) secara resmi diubah, diperbaiki, atau ditambahkan pasalnya melalui proses yang disebut **amandemen**.
  * Padanan yang setara adalah **Perjanjian** (kontrak resmi) yang diubah, diperbaiki, atau ditambah klausulnya melalui dokumen resmi yang disebut **adendum**.
  * *Opsi B (Buku : Edisi)* kurang tepat karena edisi merujuk pada versi terbitan cetak, bukan dokumen yuridis klausul perubahan.',
  NULL,
  'published'
),
(
  'part-28',
  35,
  'TIU',
  'Analogi Kata',
  'sedang',
  '**REBOISASI : HUTAN** = ...',
  NULL,
  '{"A":"Abrasi : Pantai","B":"Renovasi : Bangunan","C":"Irigasi : Sawah","D":"Polusi : Udara","E":"Kurasi : Museum"}'::jsonb,
  'B',
  '* **Penjelasan:**
  * **Hubungan Analogi:** Hubungan antara *tindakan pemulihan/perbaikan* terhadap *objek yang diperbaiki/dipulihkan*.
  * **Reboisasi** adalah upaya perbaikan dan penanaman kembali untuk memulihkan kondisi **hutan** yang rusak/gundul.
  * Padanan yang setara adalah **Renovasi**, yaitu upaya perbaikan, pembaruan, dan pemulihan kondisi fisik **bangunan** yang rusak/tua.
  * *Opsi A dan D* merupakan hubungan fenomena perusakan (bukan tindakan perbaikan). *Opsi C (Irigasi)* adalah sistem pengairan rutin, bukan pemulihan kerusakan.',
  NULL,
  'published'
),
(
  'part-28',
  36,
  'TIU',
  'Analogi Kalimat',
  'sedang',
  'Informasi yang diberikan bersifat ambigu dan mendua sehingga sulit dipahami.  
Hubungan ini sama dengan ...',
  NULL,
  '{"A":"Suasana di dalam gua itu terasa sangat sunyi dan senyap.","B":"Dia merasa sangat letih namun tetap terlihat ceria.","C":"Kita harus rajin berlatih agar menjadi mahir.","D":"Ayah membeli koran dan majalah di toko buku.","E":"Laptop digunakan untuk bekerja dan belajar."}'::jsonb,
  'A',
  '* **Penjelasan:**
  * **Pola Hubungan Kalimat:** Penggunaan dua kata yang merupakan **persamaan kata (sinonim)** secara berdampingan dalam satu kalimat untuk menegaskan suatu keadaan (*tautologi/penguatan makna*).
  * Kata *ambigu* dan *mendua* adalah dua kata yang bersinonim (sama-sama bermakna memiliki lebih dari satu arti/tidak jelas).
  * Kalimat pada **Opsi A** memiliki pola yang identik, yaitu menyandingkan dua kata bersinonim: *sunyi* dan *senyap* (sama-sama bermakna hening/tidak ada suara).
  * *Opsi B* merupakan hubungan pertentangan (*namun*). *Opsi C* hubungan sebab-akibat/tujuan (*agar*). *Opsi D & E* penggabungan objek setara (*dan*), bukan sinonim.',
  NULL,
  'published'
),
(
  'part-28',
  37,
  'TIU',
  'Analogi Kalimat',
  'sedang',
  'Seorang pelukis membutuhkan imajinasi dan kuas untuk menghasilkan sebuah lukisan yang indah.  
Hubungan ini sama dengan ...',
  NULL,
  '{"A":"Penjahit memerlukan kain dan benang untuk membuat pakaian yang rapi.","B":"Guru menggunakan buku dan spidol untuk menjelaskan materi di depan kelas.","C":"Penulis memerlukan ide dan komputer untuk menyusun sebuah naskah cerita.","D":"Petani membutuhkan bibit dan cangkul untuk menanam padi di sawah.","E":"Sopir memerlukan bensin dan mobil untuk mengantar penumpang ke tujuan."}'::jsonb,
  'C',
  '* **Penjelasan:**
  * **Pola Hubungan:** Profesi yang membutuhkan kombinasi **unsur abstrak/pemikiran** (*imajinasi*) dan **alat fisik kerja** (*kuas*) untuk menciptakan karya seni/kreatif (*lukisan*).
  * Pada kalimat soal: Pelukis = Profesi kreatif, Imajinasi = Unsur ide nonfisik, Kuas = Instrumen fisik, Lukisan = Karya yang dihasilkan.
  * Padanan yang paling setara adalah **Penulis**, yang memerlukan **ide** (unsur pemikiran nonfisik) dan **komputer** (instrumen fisik) untuk menyusun karya berupa **naskah cerita** (Opsi C).
  * *Opsi A, B, D, dan E* keduanya menggunakan dua alat/bahan fisik (kain & benang, buku & spidol, bibit & cangkul, bensin & mobil), tanpa ada unsur gagasan/ide abstrak.',
  NULL,
  'published'
),
(
  'part-28',
  38,
  'TIU',
  'Berhitung',
  'sedang',
  'Hasil dari operasi hitung berikut adalah:

$$
\frac{7}{8} + 2{,}4 - \frac{3}{5} + 1{,}75 - \frac{9}{10} = \dots
$$',
  NULL,
  '{"A":"$3{,}500$","B":"$3{,}525$","C":"$3{,}725$","D":"$4{,}000$","E":"$4{,}150$"}'::jsonb,
  'B',
  '* **Visual Pembahasan:**

* **Langkah Penyelesaian:**
  * Ubah seluruh pecahan biasa menjadi bilangan desimal:
    * $\frac{7}{8} = 0{,}875$
    * $\frac{3}{5} = 0{,}6$
    * $\frac{9}{10} = 0{,}9$
  * Masukkan ke dalam persamaan:
    $$0{,}875 + 2{,}4 - 0{,}6 + 1{,}75 - 0{,}9$$
  * Kelompokkan operasi penjumlahan dan pengurangan:
    $$(0{,}875 + 2{,}4 + 1{,}75) - (0{,}6 + 0{,}9)$$
    $$= 5{,}025 - 1{,}500 = \mathbf{3{,}525}$$
  * Maka, nilai yang tepat adalah **$3{,}525$** (Opsi B).',
  '/gambar/part28_pembahasan_38.png',
  'published'
),
(
  'part-28',
  39,
  'TIU',
  'Berhitung',
  'sedang',
  'Hasil dari operasi hitung campuran berikut adalah:

$$
\frac{1}{4} \times 0{,}8 - \frac{3}{5} \div \frac{6}{5} + 1 = \dots
$$',
  NULL,
  '{"A":"$1\\frac{2}{5}$","B":"$2\\frac{3}{5}$","C":"$\\frac{7}{10}$","D":"$\\frac{9}{10}$","E":"$\\frac{3}{11}$"}'::jsonb,
  'C',
  '* **Visual Pembahasan:**

* **Langkah Penyelesaian:**
  * Prioritaskan operasi perkalian dan pembagian terlebih dahulu:
    1. **Perkalian:**
       $$\frac{1}{4} \times 0{,}8 = \frac{1}{4} \times \frac{8}{10} = \frac{8}{40} = \frac{1}{5}$$
    2. **Pembagian:**
       $$\frac{3}{5} \div \frac{6}{5} = \frac{3}{5} \times \frac{5}{6} = \frac{15}{30} = \frac{1}{2}$$
  * Lanjutkan ke operasi pengurangan dan penjumlahan dengan menyamakan penyebut (KPK dari 5 dan 2 adalah 10):
    $$\frac{1}{5} - \frac{1}{2} + 1 = \frac{2}{10} - \frac{5}{10} + \frac{10}{10}$$
    $$= \frac{2 - 5 + 10}{10} = \mathbf{\frac{7}{10}}$$
  * Maka, hasil akhirnya adalah **$\frac{7}{10}$** (Opsi C).',
  '/gambar/part28_pembahasan_39.png',
  'published'
),
(
  'part-28',
  40,
  'TIU',
  'Berhitung',
  'sedang',
  'Hasil dari:

$$
\frac{0{,}8 \div 4}{1{,}6} \div \frac{0{,}9}{45} = \dots
$$',
  NULL,
  '{"A":"$3$","B":"$4{,}25$","C":"$5$","D":"$6{,}25$","E":"$6{,}5$"}'::jsonb,
  'D',
  '* **Visual Pembahasan:**

* **Langkah Penyelesaian:**
  * Selesaikan bagian pembilang pada suku pertama:
    $$0{,}8 \div 4 = 0{,}2$$
  * Persamaan menjadi:
    $$\frac{0{,}2}{1{,}6} \div \frac{0{,}9}{45}$$
  * Ubah pembagian antar pecahan menjadi perkalian terbalik:
    $$\frac{0{,}2}{1{,}6} \times \frac{45}{0{,}9}$$
  * Sederhanakan masing-masing pecahan:
    * $\frac{0{,}2}{1{,}6} = \frac{2}{16} = \frac{1}{8}$
    * $\frac{45}{0{,}9} = \frac{450}{9} = 50$
  * Kalikan kedua hasil:
    $$\frac{1}{8} \times 50 = \frac{50}{8} = \frac{25}{4} = \mathbf{6{,}25}$$
  * Maka, nilai yang tepat adalah **$6{,}25$** (Opsi D).',
  '/gambar/part28_pembahasan_40.png',
  'published'
),
(
  'part-28',
  41,
  'TIU',
  'Perbandingan Kuantitatif',
  'sedang',
  'Jika $R = -3$

| $X$ | $Y$ |
| :---: | :---: |
| $R + 6 \times 2 - 3$ | $4 \times 3 + R + 1$ |

Manakah hubungan yang benar antara kuantitas $X$ dan $Y$ berdasarkan informasi yang diberikan ...',
  NULL,
  '{"A":"$3X > 2Y$","B":"$5X < 3Y$","C":"$5X = 3Y$","D":"$3X < Y$","E":"$3X > 5Y$"}'::jsonb,
  'C',
  '* **Visual Pembahasan & Uji Opsi:**

* **Langkah Penyelesaian:**
  * Substitusikan nilai $R = -3$ ke dalam kuantitas $X$ dan $Y$:
    * **Kuantitas $X$:**
      $$X = R + 6 \times 2 - 3 = (-3) + 12 - 3 = 6$$
    * **Kuantitas $Y$:**
      $$Y = 4 \times 3 + R + 1 = 12 + (-3) + 1 = 10$$
  * Diperoleh perbandingan nilai:
    $$X : Y = 6 : 10 = 3 : 5 \implies 5X = 3Y$$
  * **Uji Setiap Opsi Jawaban:**
    * **Opsi A (SALAH):** $3X > 2Y \implies 3(6) > 2(10) \iff 18 > 20$
    * **Opsi B (SALAH):** $5X < 3Y \implies 5(6) < 3(10) \iff 30 < 30$
    * **Opsi C (BENAR):** $5X = 3Y \implies 5(6) = 3(10) \iff 30 = 30$
    * **Opsi D (SALAH):** $3X < Y \implies 3(6) < 10 \iff 18 < 10$
    * **Opsi E (SALAH):** $3X > 5Y \implies 3(6) > 5(10) \iff 18 > 50$
  * Maka, hubungan yang tepat adalah **$5X = 3Y$** (Opsi C).',
  '/gambar/part28_pembahasan_41.png',
  'published'
),
(
  'part-28',
  42,
  'TIU',
  'Perbandingan Kuantitatif',
  'sedang',
  'Diketahui nilai $x = \frac{3}{2}$ dan $y = -1$.

| $A$ | $B$ |
| :---: | :---: |
| $2(2x - y)$ | $2x + 3y$ |

Manakah hubungan yang benar antara kuantitas $A$ dan $B$ berikut berdasarkan informasi yang diberikan ...',
  NULL,
  '{"A":"$A < B$","B":"$A = 8B$","C":"$A - 8 > B$","D":"$4A = B^2$","E":"$A > 4B$"}'::jsonb,
  'E',
  '* **Visual Pembahasan & Uji Opsi:**

* **Langkah Penyelesaian:**
  * Hitung nilai kuantitas $A$:
    $$A = 2(2x - y) = 4x - 2y$$
    $$A = 4\left(\frac{3}{2}\right) - 2(-1) = 6 + 2 = \mathbf{8}$$
  * Hitung nilai kuantitas $B$:
    $$B = 2x + 3y = 2\left(\frac{3}{2}\right) + 3(-1) = 3 - 3 = \mathbf{0}$$
  * **Uji Setiap Opsi Jawaban:**
    * **Opsi A (SALAH):** $A < B \implies 8 < 0$
    * **Opsi B (SALAH):** $A = 8B \implies 8 = 8(0) = 0$
    * **Opsi C (SALAH):** $A - 8 > B \implies 8 - 8 > 0 \iff 0 > 0$
    * **Opsi D (SALAH):** $4A = B^2 \implies 4(8) = 0^2 \iff 32 = 0$
    * **Opsi E (BENAR):** $A > 4B \implies 8 > 4(0) \iff 8 > 0$
  * Maka, hubungan yang tepat adalah **$A > 4B$** (Opsi E).',
  '/gambar/part28_pembahasan_42.png',
  'published'
),
(
  'part-28',
  43,
  'TIU',
  'Perbandingan Kuantitatif',
  'sedang',
  'Diketahui informasi kuantitas berikut:

| $A$ | $B$ |
| :---: | :---: |
| Bu Ijah memiliki persediaan kaos $3\frac{1}{2}$ kodi, kemudian terjual sebanyak 25 potong. | 9 potong |

Manakah hubungan yang benar antara $A$ dan $B$?',
  NULL,
  '{"A":"$\\frac{1}{5}A > B$","B":"$A < 3B$","C":"Hubungan $A$ dan $B$ tidak dapat ditentukan","D":"$A = 5B$","E":"$2A < B$"}'::jsonb,
  'D',
  '* **Visual Pembahasan & Uji Opsi:**

* **Langkah Penyelesaian:**
  * Konversi satuan kodi ke potong ($1\text{ kodi} = 20\text{ potong}$):
    * Persediaan awal kaos Bu Ijah:
      $$3\frac{1}{2}\text{ kodi} = \frac{7}{2} \times 20 = 70\text{ potong}$$
    * Sisa kaos setelah terjual 25 potong:
      $$A = 70 - 25 = \mathbf{45\text{ potong}}$$
  * Nilai $B$ yang diketahui:
    $$B = \mathbf{9\text{ potong}}$$
  * Bandingkan nilai $A$ dan $B$:
    $$A : B = 45 : 9 = 5 : 1 \implies A = 5B$$
  * **Uji Setiap Opsi Jawaban:**
    * **Opsi A (SALAH):** $\frac{1}{5}A > B \implies \frac{1}{5}(45) > 9 \iff 9 > 9$
    * **Opsi B (SALAH):** $A < 3B \implies 45 < 3(9) \iff 45 < 27$
    * **Opsi D (BENAR):** $A = 5B \implies 45 = 5(9) \iff 45 = 45$
    * **Opsi E (SALAH):** $2A < B \implies 2(45) < 9 \iff 90 < 9$
  * Maka, hubungan yang tepat adalah **$A = 5B$** (Opsi D).',
  '/gambar/part28_pembahasan_43.png',
  'published'
),
(
  'part-28',
  44,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Sebuah kafe sedang mengadakan promo akhir pekan. Dita memesan 3 paket minuman spesial dengan harga Rp28.000 per paket. Setelah itu, ia memutuskan menambah 5 paket lagi. Kasir memberitahukan bahwa pembelian tersebut mendapatkan potongan harga sebesar 15% dari total transaksi. Berapa total yang harus dibayar Dita setelah potongan harga?',
  NULL,
  '{"A":"Rp170.600","B":"Rp176.000","C":"Rp189.500","D":"Rp190.400","E":"Rp192.500"}'::jsonb,
  'D',
  '* **Langkah Penyelesaian:**
  * **Total paket yang dipesan:**
    $$3 + 5 = 8\text{ paket}$$
  * **Total harga sebelum diskon:**
    $$8 \times \text{Rp}28.000 = \text{Rp}224.000$$
  * **Besar diskon (15%):**
    $$15\% \times \text{Rp}224.000 = \frac{15}{100} \times 224.000 = \text{Rp}33.600$$
  * **Total yang harus dibayar setelah diskon:**
    $$\text{Rp}224.000 - \text{Rp}33.600 = \mathbf{\text{Rp}190.400}$$
    *(Atau langsung dihitung: $85\% \times \text{Rp}224.000 = 0{,}85 \times 224.000 = \mathbf{\text{Rp}190.400}$)*
  * Maka, biaya yang harus dibayar Dita adalah **Rp190.400** (Opsi D).',
  NULL,
  'published'
),
(
  'part-28',
  45,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Sebuah papan reklame berbentuk persegi panjang memiliki panjang 6 meter dan tinggi 3 meter. Untuk mengecat seluruh permukaannya diperlukan 3 liter cat. Di lokasi lain terdapat papan reklame kedua dengan panjang 9 meter dan tinggi 4 meter. Jika jenis dan kualitas cat yang digunakan sama, berapa liter cat yang diperlukan untuk mengecat papan reklame kedua tersebut?',
  NULL,
  '{"A":"6 liter","B":"6,5 liter","C":"7 liter","D":"8 liter","E":"8,2 liter"}'::jsonb,
  'A',
  '* **Visual Perbandingan Senilai:**

* **Langkah Penyelesaian:**
  * **Hitung luas papan reklame pertama ($L_1$):**
    $$L_1 = \text{panjang} \times \text{tinggi} = 6\text{ m} \times 3\text{ m} = 18\text{ m}^2$$
    *Kebutuhan cat:* $18\text{ m}^2 \rightarrow 3\text{ liter}$ (atau $1\text{ liter}$ cat dapat mengecat $\frac{18}{3} = 6\text{ m}^2$).
  * **Hitung luas papan reklame kedua ($L_2$):**
    $$L_2 = \text{panjang} \times \text{tinggi} = 9\text{ m} \times 4\text{ m} = 36\text{ m}^2$$
  * **Gunakan perbandingan senilai:**
    $$\frac{L_1}{L_2} = \frac{\text{kebutuhan cat}_1}{\text{kebutuhan cat}_2}$$
    $$\frac{18}{36} = \frac{3}{x}$$
    $$\frac{1}{2} = \frac{3}{x} \implies x = 2 \times 3 = \mathbf{6\text{ liter}}$$
  * Maka, cat yang diperlukan untuk mengecat papan reklame kedua adalah **6 liter** (Opsi A).',
  '/gambar/part28_pembahasan_45.png',
  'published'
),
(
  'part-28',
  46,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Di sebuah peternakan, terdapat 18 sapi yang dapat menghabiskan persediaan jerami dalam 17 hari. Kemudian jumlah sapi ditambah 6 ekor. Jika persediaan jerami tetap sama, maka jerami tersebut akan habis dalam berapa hari?',
  NULL,
  '{"A":"10 hari","B":"11 hari","C":"12 hari","D":"13 hari","E":"14 hari"}'::jsonb,
  'D',
  '* **Visual Pembahasan & Trik Cepat:**

* **Langkah Penyelesaian:**
  * Identifikasi variabel:
    * Kondisi 1: $18\text{ sapi} \rightarrow 17\text{ hari}$
    * Kondisi 2: $18 + 6 = 24\text{ sapi} \rightarrow x\text{ hari}$
  * Jumlah hewan dan waktu habisnya pakan merupakan hubungan **perbandingan berbalik nilai** (semakin banyak sapi, waktu pakan habis semakin cepat):
    $$x = \frac{\text{sapi}_1 \times \text{hari}_1}{\text{sapi}_2}$$
    $$x = \frac{18 \times 17}{24}$$
    $$x = \frac{3 \times 17}{4} = \frac{51}{4} = 12{,}75\text{ hari}$$
  * Karena pakan akan habis di hari ke-13 (dibulatkan ke atas untuk satuan hari pemakaian):
    $$x \approx \mathbf{13\text{ hari}}$$
  * Maka, jerami tersebut akan habis dalam **13 hari** (Opsi D).',
  '/gambar/part28_pembahasan_46.png',
  'published'
),
(
  'part-28',
  47,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Seorang kurir ekspedisi mengantarkan paket dari Gudang X ke Kota Y yang berjarak 300 km. Pada 3 jam pertama, ia melaju dengan kecepatan rata-rata 50 km/jam. Setelah itu, ia berhenti untuk makan selama 30 menit. Selanjutnya, ia melanjutkan perjalanan dengan kecepatan rata-rata 75 km/jam hingga tiba di tujuan. Berapa lama total waktu perjalanan kurir tersebut, termasuk waktu berhenti?',
  NULL,
  '{"A":"5 jam","B":"5,5 jam","C":"6 jam","D":"6,5 jam","E":"7 jam"}'::jsonb,
  'B',
  '* **Langkah Penyelesaian:**
  * **Tahap 1 (Sebelum Berhenti):**
    * Kecepatan awal ($v_1$) = $50\text{ km/jam}$
    * Waktu tempuh ($t_1$) = $3\text{ jam}$
    * Jarak tempuh ($s_1$) = $v_1 \times t_1 = 50 \times 3 = 150\text{ km}$
  * **Tahap 2 (Waktu Istirahat/Berhenti):**
    * $t_{\text{henti}} = 30\text{ menit} = 0{,}5\text{ jam}$
  * **Tahap 3 (Setelah Berhenti hingga Tujuan):**
    * Sisa jarak ($s_2$) = $300\text{ km} - 150\text{ km} = 150\text{ km}$
    * Kecepatan kedua ($v_2$) = $75\text{ km/jam}$
    * Waktu tempuh sisa ($t_2$) = $\frac{s_2}{v_2} = \frac{150}{75} = 2\text{ jam}$
  * **Total waktu perjalanan (termasuk istirahat):**
    $$t_{\text{total}} = t_1 + t_{\text{henti}} + t_2 = 3 + 0{,}5 + 2 = \mathbf{5{,}5\text{ jam}}$$
  * Maka, total waktu perjalanan kurir tersebut adalah **5,5 jam** (Opsi B).',
  NULL,
  'published'
),
(
  'part-28',
  48,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Sebuah percetakan mampu mencetak 1.800 buku dalam waktu 30 hari dengan 12 karyawan. Setelah bekerja selama 20 hari, percetakan tersebut menambah 6 karyawan agar pesanan selesai lebih cepat. Berapa total hari yang dibutuhkan untuk menyelesaikan pencetakan 1.800 buku tersebut?',
  NULL,
  '{"A":"26 hari","B":"27 hari","C":"28 hari","D":"29 hari","E":"30 hari"}'::jsonb,
  'B',
  '* **Visual Tabel Beban Kerja (Al Faiz Batako):**

* **Langkah Penyelesaian:**
  * Gunakan konsep total beban kerja ($\text{Beban Kerja} = \text{Tenaga} \times \text{Waktu}$):
    * Total beban kerja rencana:
      $$12\text{ karyawan} \times 30\text{ hari} = 360\text{ hari-orang}$$
    * Beban kerja yang sudah selesai selama 20 hari pertama:
      $$12\text{ karyawan} \times 20\text{ hari} = 240\text{ hari-orang}$$
    * Sisa beban kerja:
      $$360 - 240 = 120\text{ hari-orang}$$
  * Menambah 6 karyawan, sehingga total karyawan menjadi:
    $$12 + 6 = 18\text{ karyawan}$$
  * Hitung sisa hari ($x$) yang dibutuhkan oleh 18 karyawan:
    $$18 \times x = 120$$
    $$x = \frac{120}{18} = 6{,}67\text{ hari} \approx \mathbf{7\text{ hari}}$$
  * **Total hari yang dibutuhkan:**
    $$\text{Total Hari} = 20\text{ hari} + 7\text{ hari} = \mathbf{27\text{ hari}}$$
  * Maka, total waktu penyelesaian pencetakan adalah **27 hari** (Opsi B).',
  '/gambar/part28_pembahasan_48.png',
  'published'
),
(
  'part-28',
  49,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Seorang kurir mengantar paket selama 5 jam dengan kecepatan rata-rata 36 km/jam. Ia ingin menempuh jarak yang sama hanya dalam waktu 3 jam. Berapakah tambahan kecepatan yang harus dicapai kurir tersebut?',
  NULL,
  '{"A":"15 km/jam","B":"21 km/jam","C":"24 km/jam","D":"30 km/jam","E":"60 km/jam"}'::jsonb,
  'C',
  '* **Visual Pembahasan & Trik Cepat:**

* **Langkah Penyelesaian:**
  * **Cara 1: Menghitung Jarak Tempuh ($s$)**
    * Jarak tempuh:
      $$s = v_1 \times t_1 = 36\text{ km/jam} \times 5\text{ jam} = 180\text{ km}$$
    * Kecepatan baru agar sampai dalam 3 jam ($v_2$):
      $$v_2 = \frac{s}{t_2} = \frac{180\text{ km}}{3\text{ jam}} = 60\text{ km/jam}$$
    * Tambahan kecepatan yang diperlukan:
      $$\Delta v = v_2 - v_1 = 60 - 36 = \mathbf{24\text{ km/jam}}$$
  * **Cara 2: Perbandingan Berbalik Nilai**
    $$v_2 = \frac{36 \times 5}{3} = 60\text{ km/jam}$$
    $$\Delta v = 60 - 36 = \mathbf{24\text{ km/jam}}$$
  * Maka, tambahan kecepatan yang harus dicapai adalah **24 km/jam** (Opsi C).',
  '/gambar/part28_pembahasan_49.png',
  'published'
),
(
  'part-28',
  50,
  'TIU',
  'Deret Angka',
  'sedang',
  'Tentukan nilai bilangan pertama yang hilang dari barisan deret berikut:

$$
\dots,\ 1,\ 6,\ -6,\ -1,\ 1
$$',
  NULL,
  '{"A":"$-6$","B":"$-3$","C":"$-1$","D":"$0$","E":"$1$"}'::jsonb,
  'C',
  '* **Visual Pola Panah Deret:**

* **Langkah Penyelesaian & Pola Deret:**
  * Amati pola keteraturan antar suku dari depan ke belakang:
    * Suku ke-2 ke suku ke-3: $1 \mathbf{\ + 5\ } = 6$
    * Suku ke-3 ke suku ke-4: $6 \mathbf{\ \times (-1)\ } = -6$
    * Suku ke-4 ke suku ke-5: $-6 \mathbf{\ + 5\ } = -1$
    * Suku ke-5 ke suku ke-6: $-1 \mathbf{\ \times (-1)\ } = 1$
  * Terlihat pola operasi yang berulang secara bergantian:
    $$\dots \xrightarrow{\times (-1)} \dots \xrightarrow{+ 5} \dots \xrightarrow{\times (-1)} \dots \xrightarrow{+ 5} \dots \xrightarrow{\times (-1)} \dots$$
  * Operasi dari suku pertama ($x$) menuju suku kedua ($1$) adalah $\mathbf{\times (-1)}$:
    $$x \times (-1) = 1 \implies x = \frac{1}{-1} = \mathbf{-1}$$
  * Maka, bilangan pertama yang mengisi tanda titik-titik adalah **$-1$** (Opsi C).',
  '/gambar/part28_pembahasan_50.png',
  'published'
),
(
  'part-28',
  51,
  'TIU',
  'Deret Angka',
  'sedang',
  'Tentukan bilangan yang hilang dari barisan deret berikut:

$$
240,\ 120,\ 40,\ \dots,\ 2,\ \frac{1}{3}
$$',
  NULL,
  '{"A":"30","B":"20","C":"10","D":"8","E":"6"}'::jsonb,
  'C',
  '* **Visual Pola Panah Pembagian Deret:**

* **Langkah Penyelesaian & Pola Deret:**
  * Amati pola operasi pembagian bertingkat yang terus bertambah $+1$ pada pembaginya:
    * Suku 1 ke Suku 2: $240 \div \mathbf{2} = 120$
    * Suku 2 ke Suku 3: $120 \div \mathbf{3} = 40$
    * Suku 3 ke Suku 4: $40 \div \mathbf{4} = \mathbf{10}$
    * Suku 4 ke Suku 5: $10 \div \mathbf{5} = 2$
    * Suku 5 ke Suku 6: $2 \div \mathbf{6} = \frac{2}{6} = \frac{1}{3}$
  * Pola pembagian urut: $\div 2,\ \div 3,\ \div 4,\ \div 5,\ \div 6$.
  * Maka bilangan yang tepat untuk mengisi titik-titik adalah **10** (Opsi C).',
  '/gambar/part28_pembahasan_51.png',
  'published'
),
(
  'part-28',
  52,
  'TIU',
  'Deret Angka',
  'sedang',
  'Tentukan bilangan berikutnya dari barisan deret berikut:

$$
1,\ 7,\ 4,\ 28,\ 23,\ 161,\ \dots
$$',
  NULL,
  '{"A":"82","B":"98","C":"112","D":"126","E":"154"}'::jsonb,
  'E',
  '* **Visual Pola Operasi Deret:**

* **Langkah Penyelesaian & Pola Deret:**
  * Deret ini memiliki pola operasi dua langkah yang bergantian: **perkalian tetap $\times 7$** diselingi **pengurangan bilangan ganjil bertingkat**:
    * $1 \times \mathbf{7} = 7$
    * $7 - \mathbf{3} = 4$
    * $4 \times \mathbf{7} = 28$
    * $28 - \mathbf{5} = 23$
    * $23 \times \mathbf{7} = 161$
    * $161 - \mathbf{7} = \mathbf{154}$
  * Pola pengurang bertambah 2: $-3,\ -5,\ -7$.
  * Maka nilai suku berikutnya adalah **154** (Opsi E).',
  '/gambar/part28_pembahasan_52.png',
  'published'
),
(
  'part-28',
  53,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Bu Rina menyusun 6 buku pelajaran di rak secara vertikal. Buku tersebut adalah buku Matematika, Bahasa Indonesia, IPA, IPS, Bahasa Inggris, dan PPKn.
* Buku Matematika berada tepat di bawah IPA dan di atas buku Bahasa Indonesia.
* Buku IPA berada di bawah IPS.
* Buku Bahasa Indonesia berada di atas buku Bahasa Inggris yang berada di posisi kedua dari bawah.
* Buku PPKn berada di posisi paling bawah.

Urutkan susunan buku dari yang paling atas ke paling bawah!',
  NULL,
  '{"A":"Bahasa Indonesia - IPS - IPA - Matematika - Bahasa Inggris - PPKn","B":"IPS - IPA - Matematika - Bahasa Indonesia - Bahasa Inggris - PPKn","C":"PPKn - Bahasa Inggris - Matematika - Bahasa Indonesia - IPS - IPA","D":"IPA - Matematika - Bahasa Indonesia - IPS - Bahasa Inggris - PPKn","E":"IPA - IPS - Bahasa Indonesia - Bahasa Inggris - Matematika - PPKn"}'::jsonb,
  'B',
  '* **Visual Diagram Susunan Rak Buku:**

* **Langkah Penyelesaian:**
  * Jumlah total buku = 6 buku (posisi 1 teratas s.d. 6 terbawah):
    1. *"Buku PPKn berada di posisi paling bawah"* $\implies$ Posisi 6: **PPKn**.
    2. *"Buku Bahasa Inggris berada di posisi kedua dari bawah"* $\implies$ Posisi 5: **Bahasa Inggris**.
    3. *"Buku Bahasa Indonesia berada di atas buku Bahasa Inggris"* $\implies$ Posisi 4: **Bahasa Indonesia**.
    4. *"Buku Matematika berada tepat di bawah IPA dan di atas Bahasa Indonesia"* $\implies$ Posisi 3: **Matematika**, Posisi 2: **IPA**.
    5. *"Buku IPA berada di bawah IPS"* $\implies$ Posisi 1 (paling atas): **IPS**.
  * **Susunan vertikal dari atas ke bawah:**
    $$\text{IPS} \rightarrow \text{IPA} \rightarrow \text{Matematika} \rightarrow \text{Bahasa Indonesia} \rightarrow \text{Bahasa Inggris} \rightarrow \text{PPKn}$$
  * Maka urutan yang benar adalah opsi **B**.',
  '/gambar/part28_pembahasan_53.png',
  'published'
),
(
  'part-28',
  54,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Delapan orang A, B, C, D, P, Q, R, dan S duduk dalam dua baris yang masing-masing terdiri atas empat kursi.
* P menempati kursi paling ujung kiri di baris depan.
* D duduk tepat di belakang P dan B duduk tepat di belakang Q.
* S berada tepat di sebelah kanan P dan di depan A.
* C duduk di antara S dan Q dengan Q berada di kursi paling ujung kanan pada baris depan.

Berdasarkan informasi tersebut, di manakah posisi R?',
  NULL,
  '{"A":"Di sebelah kanan D","B":"Tepat di sebelah kiri C","C":"Di samping B","D":"Berhadapan dengan A","E":"Tidak dapat ditentukan"}'::jsonb,
  'C',
  '* **Visual Denah Tempat Duduk 2 Baris:**

* **Langkah Penyelesaian:**
  * Buat denah matriks $2 \times 4$ (Baris Depan dan Baris Belakang):
    * **Baris Depan:**
      * P di ujung kiri depan $\implies$ Kolom 1.
      * S di kanan P $\implies$ Kolom 2.
      * Q di ujung kanan depan $\implies$ Kolom 4.
      * C di antara S dan Q $\implies$ Kolom 3.
      * *Susunan Baris Depan:* $[\text{P},\ \text{S},\ \text{C},\ \text{Q}]$.
    * **Baris Belakang:**
      * D tepat di belakang P $\implies$ Kolom 1.
      * S di depan A $\implies$ A tepat di belakang S $\implies$ Kolom 2.
      * B tepat di belakang Q $\implies$ Kolom 4.
      * Sisa satu kursi di baris belakang (Kolom 3) otomatis diisi oleh **R** (berada tepat di belakang C).
      * *Susunan Baris Belakang:* $[\text{D},\ \text{A},\ \mathbf{R},\ \text{B}]$.

  | Posisi | Kolom 1 (Kiri) | Kolom 2 | Kolom 3 | Kolom 4 (Kanan) |
  | :--- | :---: | :---: | :---: | :---: |
  | **Baris Depan** | P | S | C | Q |
  | **Baris Belakang** | D | A | **R** | B |

  * **Analisis Posisi R:**
    * R duduk di baris belakang pada kolom ke-3 (di antara A dan B).
    * Posisi R tepat **di samping B** (dan di sebelah kanan A, serta di belakang C).
  * Maka, pernyataan yang benar adalah **Di samping B** (Opsi C).',
  '/gambar/part28_pembahasan_54.png',
  'published'
),
(
  'part-28',
  55,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Seorang pengemudi berangkat dari kota S menuju kota tujuan akhir kota Z. Dari kota S, ia dapat memilih dua jalur awal, yaitu melalui kota T atau kota U. Kota T terhubung dengan kota V, yang langsung terhubung ke kota Z. Sementara itu, kota U terhubung dengan kota Y dan R, yang keduanya juga memiliki akses langsung ke kota Z. Jika pengemudi memilih jalur melalui kota T, berapa banyak kota yang akan dilalui sebelum sampai di kota Z?',
  NULL,
  '{"A":"3","B":"4","C":"5","D":"6","E":"7"}'::jsonb,
  'A',
  '* **Visual Diagram Graf Rute Kota:**

* **Langkah Penyelesaian:**
  * Petakan alur graf rute perjalanan:
    * Jalur 1 (via T): $\text{S} \rightarrow \text{T} \rightarrow \text{V} \rightarrow \text{Z}$
    * Jalur 2 (via U): $\text{S} \rightarrow \text{U} \rightarrow \text{Y} \rightarrow \text{Z}$ atau $\text{S} \rightarrow \text{U} \rightarrow \text{R} \rightarrow \text{Z}$
  * Jika memilih rute melalui kota T, runtutan perjalanannya adalah:
    $$\mathbf{S} \rightarrow \mathbf{T} \rightarrow \mathbf{V} \rightarrow \text{Z}$$
  * Kota yang dilalui **sebelum sampai di kota Z** adalah kota **S, T, dan V** (sebanyak **3 kota**).
  * Maka jawaban yang tepat adalah **3** (Opsi A).',
  '/gambar/part28_pembahasan_55.png',
  'published'
),
(
  'part-28',
  56,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Perhatikan tabel berikut!

| Nama | Paket Reguler | Paket Kilat |
| :---: | :---: | :---: |
| Aldi | 45 | 29 |
| Bagas | 50 | 20 |
| Caca | 38 | 42 |
| Damar | 25 | 40 |
| Erika | 60 | 18 |
| Faris | 40 | 35 |

Tabel di atas menyajikan data sebuah perusahaan ekspedisi yang mencatat jumlah paket yang berhasil dikirim oleh 6 kurir dalam satu minggu. Adapun syarat yang memenuhi standar kinerja perusahaan adalah:
* Mengirim **minimal 35 paket reguler**, dan
* Mengirim **minimal 25 paket kilat**.

Berdasarkan data tersebut, tentukan tiga kurir dengan total pengiriman terbanyak yang memenuhi standar kinerja!',
  NULL,
  '{"A":"Caca, Aldi, Erika","B":"Aldi, Bagas, Faris","C":"Caca, Faris, Aldi","D":"Faris, Caca, Bagas","E":"Aldi, Faris, Damar"}'::jsonb,
  'C',
  '* **Visual Tabel Evaluasi Kinerja:**

* **Langkah Penyelesaian:**
  * **Uji Syarat Standar Kinerja ($\text{Reguler} \ge 35$ DAN $\text{Kilat} \ge 25$):**
    1. **Aldi:** Reguler $= 45\ (\ge 35)$, Kilat $= 29\ (\ge 25) \implies$ **MEMENUHI**.
       $$\text{Total} = 45 + 29 = \mathbf{74\text{ paket}}$$
    2. **Bagas:** Reguler $= 50\ (\ge 35)$, Kilat $= 20\ (< 25) \implies$ **TIDAK MEMENUHI**.
    3. **Caca:** Reguler $= 38\ (\ge 35)$, Kilat $= 42\ (\ge 25) \implies$ **MEMENUHI**.
       $$\text{Total} = 38 + 42 = \mathbf{80\text{ paket}}$$
    4. **Damar:** Reguler $= 25\ (< 35)$, Kilat $= 40\ (\ge 25) \implies$ **TIDAK MEMENUHI**.
    5. **Erika:** Reguler $= 60\ (\ge 35)$, Kilat $= 18\ (< 25) \implies$ **TIDAK MEMENUHI**.
    6. **Faris:** Reguler $= 40\ (\ge 35)$, Kilat $= 35\ (\ge 25) \implies$ **MEMENUHI**.
       $$\text{Total} = 40 + 35 = \mathbf{75\text{ paket}}$$
  * Kurir yang lolos standar kinerja hanya ada 3 orang, yaitu **Caca (80), Faris (75), dan Aldi (74)**.
  * Urutan 3 kurir pengiriman terbanyak adalah **Caca, Faris, Aldi** (Opsi C).',
  '/gambar/part28_pembahasan_56.png',
  'published'
),
(
  'part-28',
  57,
  'TIU',
  'Figural',
  'sedang',
  'Perhatikan pola serial 5 bingkai berurutan dan tentukan gambar ke-(3)!',
  '/gambar/part28_soal_57.png',
  '{"A":"A","B":"B","C":"C","D":"D","E":"E"}'::jsonb,
  'E',
  '* **Visual Pembahasan Beranotasi:**

* **Analisis Pola Transformasi:**
  1. **Objek Besar di Tengah (Tanaman/Cabang):** Jumlah daun/cabangnya bertambah 1 di setiap bingkai:
     * Bingkai (1) = 3 helai
     * Bingkai (2) = 4 helai
     * **Bingkai (3) = 5 helai daun**
     * Bingkai (4) = 6 helai
     * Bingkai (5) = 7 helai
  2. **Objek Sudut Kanan Atas (Tanda Merah - Persegi & Segitiga):** Berputar sebesar $90^\circ$ **searah jarum jam** (*clockwise*) pada setiap langkah.
  3. **Objek Sudut Kiri Atas (Tanda Biru - Simbol Bulat):** Berubah motif setiap **2 gambar sekali**:
     * Bingkai (1) & (2) = motif roda/lingkaran jeruji
     * **Bingkai (3) & (4) = motif bunga 4 kelopak melingkar**
     * Bingkai (5) = motif baling-baling
  4. **Objek Garis di Bawah (Tanda Hijau):** Berganti bentuk berselang-seling:
     * Bingkai (1) = garis zig-zag
     * Bingkai (2) = garis bergelombang
     * **Bingkai (3) = garis zig-zag**
  * Konfigurasi yang memenuhi keempat kriteria tersebut adalah **Opsi E**.',
  '/gambar/part28_pembahasan_57.png',
  'published'
),
(
  'part-28',
  58,
  'TIU',
  'Figural',
  'sedang',
  'Perhatikan serial gambar (1) hingga (4) untuk menentukan kelanjutan gambar ke-(5)!',
  '/gambar/part28_soal_58.png',
  '{"A":"A","B":"B","C":"C","D":"D","E":"E"}'::jsonb,
  'D',
  '* **Visual Pembahasan Beranotasi:**

* **Analisis Pola Transformasi:**
  Setiap bingkai terbagi menjadi 4 kuadran dengan aturan gerak masing-masing:
  1. **Kuadran Kiri Atas (Tanda Merah):** Objek berputar sebesar $90^\circ$ **searah jarum jam** (*clockwise*).
  2. **Kuadran Kiri Bawah (Tanda Biru):** Objek berputar sebesar $90^\circ$ **berlawanan arah jarum jam** (*counter-clockwise*).
  3. **Kuadran Kanan Atas (Tanda Hijau):** Objek berputar sebesar $90^\circ$ **searah jarum jam** (*clockwise*).
  4. **Kuadran Kanan Bawah (Tanda Kuning):** Objek berubah bentuk setiap **2 gambar sekali** (bingkai 1-2 bentuk A, bingkai 3-4 bentuk B, maka bingkai 5 kembali berubah).
  * Dengan menerapkan perputaran dan perubahan pada gambar (4) menuju gambar (5), diperoleh susunan yang tepat pada **Opsi D**.',
  '/gambar/part28_pembahasan_58.png',
  'published'
),
(
  'part-28',
  59,
  'TIU',
  'Figural',
  'sedang',
  'Perhatikan gambar analogi berikut:

Diberikan analogi:
$$\text{Gambar (1)} : \text{Gambar (2)} = \text{Gambar (3)} : \text{Gambar (4)}$$',
  '/gambar/part28_soal_59.png',
  '{"A":"A","B":"B","C":"C","D":"D","E":"E"}'::jsonb,
  'A',
  '* **Analisis Pola Transformasi:**
  * Hubungan perubahan dari Gambar (1) ke Gambar (2) adalah **pencerminan secara vertikal (sumbu horizontal / dibalik atas-bawah)**.
  * Bentuk lingkaran busur di kuadran atas pada Gambar (1) terbalik posisinya ke bagian bawah pada Gambar (2), dan sebaliknya lingkaran di bagian bawah Gambar (1) terpantul ke atas pada Gambar (2).
  * Karena yang dicari adalah Gambar (3) dengan Gambar (4) yang diketahui, kita menerapkan inversi aturan pencerminan yang sama pada Gambar (4).
  * Membalik Gambar (4) secara vertikal menghasilkan susunan bangun poligon hitam yang identik dengan **Opsi A**.',
  NULL,
  'published'
),
(
  'part-28',
  60,
  'TIU',
  'Figural',
  'sedang',
  'Perhatikan gambar berikut!

Diberikan hubungan analogi bangun datar:
\text{Gambar (1)} : \text{Gambar (2)} = \text{Gambar (3)} : \text{Gambar (4)}',
  '/gambar/part28_soal_60.png',
  '{"A":"A","B":"B","C":"C","D":"D","E":"E"}'::jsonb,
  'E',
  '* **Analisis Pola Transformasi:**
  * **Kaidah Analogi:** Pola perubahan dari Gambar (1) ke Gambar (2) sama persis dengan pola transformasi dari Gambar (3) ke Gambar (4).
  * **Analisis Gambar (3) ke Gambar (4):**
    1. Bangun utama pada Gambar (3) diputar sebesar ^\circ$ **berlawanan arah jarum jam** (*counter-clockwise*).
    2. Objek kecil berwarna hitam (di luar bingkai utama yang dilingkari warna merah) **berubah warna menjadi putih** dan posisinya ikut berputar bersama orientasi bangun sehingga menghasilkan Gambar (4).
  * **Penerapan pada Gambar (1) ke Gambar (2):**
    1. Gambar (1) memiliki bingkai kotak miring dengan ornamen di dalamnya serta sebuah kotak hitam kecil di sisi kanan luar.
    2. Putar Gambar (1) sebesar ^\circ$ berlawanan arah jarum jam: kotak kecil yang semula di sebelah kanan akan berpindah ke posisi atas.
    3. Ubah warna kotak kecil hitam tersebut menjadi **putih**.
  * Konfigurasi yang terbentuk dengan tepat adalah **Opsi E**.',
  '/gambar/part28_pembahasan_60.png',
  'published'
),
(
  'part-28',
  61,
  'TIU',
  'Figural',
  'sedang',
  'Carilah gambar yang berbeda dari kelompok gambar berikut!',
  '/gambar/part28_soal_61.png',
  '{"A":"Gambar A","B":"Gambar B","C":"Gambar C","D":"Gambar D","E":"Gambar E"}'::jsonb,
  'E',
  '* **Analisis Pola Transformasi:**
  * Perhatikan karakteristik jumlah cabang atau helai pada objek bagian tengah dan objek luar (yang dilingkari warna merah):
    * **Gambar A:** Objek tengah memiliki 4 cabang, objek luar memiliki 5 cabang.
    * **Gambar B:** Objek tengah memiliki 4 cabang, objek luar memiliki 5 cabang.
    * **Gambar C:** Objek tengah memiliki 4 cabang, objek luar memiliki 5 cabang.
    * **Gambar D:** Objek tengah memiliki 4 cabang, objek luar memiliki 5 cabang.
    * **Gambar E:** Objek tengah memiliki **3 cabang**, sedangkan objek luar memiliki **6 cabang**.
  * Karena seluruh opsi A, B, C, dan D konsisten dengan pola $4 \text{ cabang (tengah)} : 5 \text{ cabang (luar)}$, maka **Gambar E** merupakan gambar yang paling berbeda (tidak mengikuti pola kelompok).',
  '/gambar/part28_pembahasan_61.png',
  'published'
),
(
  'part-28',
  62,
  'TIU',
  'Figural',
  'sedang',
  'Carilah gambar yang berbeda di antara pilihan gambar berikut!',
  '/gambar/part28_soal_62.png',
  '{"A":"Gambar A","B":"Gambar B","C":"Gambar C","D":"Gambar D","E":"Gambar E"}'::jsonb,
  'D',
  '* **Analisis Pola Transformasi:**
  * Perhatikan bentuk dan orientasi kurva/kelopak baling-baling pada setiap gambar:
    * Pada gambar A, B, C, dan E, semua elemen baling-baling/kelopak dapat saling berimpit bila diputar (memiliki orientasi rotasi dan lekukan yang kongruen).
    * Pada **Gambar D**, elemen kelopak yang ditandai dengan lingkaran merah memiliki bentuk kurva/arah lengkungan yang terbalik (refleksi/cermin), bukan hasil rotasi bidang datar.
  * Oleh karena itu, objek yang tidak sesuai dengan pola rotasi kelompoknya adalah **Gambar D**.',
  '/gambar/part28_pembahasan_62.png',
  'published'
),
(
  'part-28',
  63,
  'TIU',
  'Figural',
  'sedang',
  'Tentukan gambar yang tepat untuk mengisi kotak kosong bertanda tanya (?) pada matriks 3x3 berikut!',
  '/gambar/part28_soal_63.png',
  '{"A":"A","B":"B","C":"C","D":"D","E":"E"}'::jsonb,
  'C',
  '* **Analisis Pola Transformasi:**
  * Analisis pergerakan setiap elemen secara horizontal (per baris dari kiri ke kanan):
    1. **Elemen Pusat (Bintang Tengah):** Posisinya tetap dan tidak mengalami perubahan apapun di setiap kotak.
    2. **Elemen Merah (Bintang di Sudut Luar):** Bergeser mengelilingi bingkai kotak sejauh 1 sudut secara **berlawanan arah jarum jam** (*counter-clockwise*).
    3. **Elemen Biru (Panah Lengkung):** Bergeser sudut demi sudut **berlawanan arah jarum jam** (*counter-clockwise*) sekaligus mengalami rotasi sebesar $90^\circ$ berlawanan arah jarum jam di setiap langkah.
  * **Penerapan pada Baris Ketiga:**
    * Kotak ke-1: Bintang luar di sudut tertentu, panah lengkung menghadap posisi awal.
    * Kotak ke-2: Bintang luar bergeser satu sudut berlawanan jarum jam; panah bergeser dan berputar $90^\circ$.
    * Kotak ke-3 (Jawaban): Bintang luar bergeser lagi 1 sudut berlawanan arah jarum jam, dan panah biru bergeser ke sudut berikutnya serta berputar $90^\circ$.
  * Susunan yang dihasilkan sangat tepat diwakili oleh **Opsi C**.',
  '/gambar/part28_pembahasan_63.png',
  'published'
),
(
  'part-28',
  64,
  'TIU',
  'Figural',
  'sedang',
  'Tentukan gambar yang tepat untuk melengkapi kotak matriks 3x3 berikut!',
  '/gambar/part28_soal_64.png',
  '{"A":"A","B":"B","C":"C","D":"D","E":"E"}'::jsonb,
  'B',
  '* **Analisis Pola Transformasi:**
  * Analisis pergerakan elemen per baris (horizontal dari kiri ke kanan):
    1. **Siklus Warna Objek (Merah, Kuning, Hijau, Biru, Oranye):**
       * Setiap titik/elemen warna mengalami pergeseran teratur mengelilingi posisi-posisi bingkai sebesar 1 langkah **berlawanan arah jarum jam** (*counter-clockwise*).
    2. **Elemen Garis/Kotak Vertikal Bagian Dalam:**
       * Garis vertikal di bagian tengah berpindah posisi secara konsisten antar kolom.
  * Dengan melanjutkan pola pergeseran warna satu langkah berikutnya pada baris ketiga, konfigurasi posisi titik-titik warna dan garis vertikal yang tepat adalah **Opsi B**.',
  '/gambar/part28_pembahasan_64.png',
  'published'
),
(
  'part-28',
  65,
  'TIU',
  'Figural',
  'sedang',
  'Tentukan gambar yang tepat untuk mengisi kotak kosong pada matriks 3x3 berikut!',
  '/gambar/part28_soal_65.png',
  '{"A":"A","B":"B","C":"C","D":"D","E":"E"}'::jsonb,
  'A',
  '* **Analisis Pola Transformasi:**
  * Analisis pergerakan elemen matriks secara horizontal (per baris dari kiri ke kanan):
    1. **Objek Merah (Segitiga / Garis Diagonal Sudut):**
       * Mengalami pergeseran sudut mengelilingi bingkai **searah jarum jam** (*clockwise*) dan berotasi sebesar ^\circ$.
    2. **Objek Biru (Segitiga / Garis Arsiran Diagonal Sudut):**
       * Mengalami pergeseran sudut mengelilingi bingkai **searah jarum jam** (*clockwise*) dan berotasi sebesar ^\circ$.
  * **Penerapan pada Baris Ketiga Menuju Kotak Kosong:**
    * Objek merah bergeser ke sudut berikutnya dan berputar ^\circ$.
    * Objek biru bergeser ke sudut berikutnya dan berputar ^\circ$.
  * Hasil kombinasi posisi dan orientasi arsiran segitiga diagonal tersebut secara akurat ditunjukkan oleh **Opsi A**.',
  '/gambar/part28_pembahasan_65.png',
  'published'
),
(
  'part-27',
  1,
  'TWK',
  'Pancasila',
  'sedang',
  'Pancasila berkedudukan sebagai cita-cita dan tujuan bangsa Indonesia. Makna kedudukan tersebut tercermin dalam pernyataan berikut, kecuali ...',
  NULL,
  '{"A":"Menjadi arah ideal yang ingin diwujudkan dalam kehidupan berbangsa dan bernegara.","B":"Menjadi gambaran masyarakat adil dan makmur yang hendak dicapai bersama.","C":"Menjadi sumber hukum formal yang secara langsung mengatur sanksi pidana.","D":"Menjadi tolok ukur keberhasilan pembangunan nasional di berbagai bidang.","E":"Menjadi pedoman jangka panjang dalam perumusan kebijakan negara."}'::jsonb,
  'C',
  '* **Penjelasan:**
  Kedudukan Pancasila sebagai cita-cita dan tujuan bangsa menunjukkan bahwa Pancasila berfungsi sebagai arah ideal dan gambaran kondisi yang ingin diwujudkan dalam kehidupan berbangsa dan bernegara. Dalam kedudukan ini, Pancasila menjadi tujuan bersama dalam membangun masyarakat yang adil, makmur, dan berkeadaban.

  Opsi C tidak tepat karena pengaturan sanksi pidana merupakan ranah hukum positif yang diatur dalam peraturan perundang-undangan, bukan langsung oleh Pancasila sebagai cita-cita bangsa.

  * Opsi A sesuai karena menegaskan Pancasila sebagai arah ideal bangsa.
  * Opsi B mencerminkan tujuan akhir yang ingin dicapai negara.
  * Opsi D tepat karena pembangunan nasional seharusnya diukur berdasarkan kesesuaiannya dengan nilai Pancasila.
  * Opsi E juga benar karena kebijakan negara idealnya dirumuskan untuk mencapai tujuan nasional yang berlandaskan Pancasila.',
  NULL,
  'published'
),
(
  'part-27',
  2,
  'TWK',
  'Pancasila',
  'sedang',
  'Dalam kehidupan bermasyarakat, pengamalan butir Pancasila sila ke-2 "mengembangkan sikap tidak semena-mena terhadap orang lain" paling tepat tercermin melalui sikap ...',
  NULL,
  '{"A":"Menjaga hubungan sosial agar tetap harmonis dan terhindar dari konflik terbuka.","B":"Menyesuaikan perilaku dengan norma lingkungan demi terciptanya ketertiban bersama.","C":"Menunjukkan sikap sopan dan santun dalam setiap bentuk interaksi sosial.","D":"Memperlakukan setiap orang secara adil dengan memperhatikan hak dan kewajiban masing-masing.","E":"Menghindari perbedaan pendapat agar suasana masyarakat tetap aman dan kondusif."}'::jsonb,
  'D',
  '* **Penjelasan:**
  Butir pengamalan Pancasila sila ke-2 menekankan penghormatan terhadap martabat manusia dengan cara tidak bersikap sewenang-wenang serta mempertimbangkan hak dan kewajiban setiap individu. Prinsip ini menuntut keadilan dalam memperlakukan orang lain, terutama saat terdapat perbedaan kepentingan.

  Opsi D paling tepat karena secara langsung menegaskan perlakuan adil yang disertai pertimbangan hak dan kewajiban, sehingga mencegah tindakan sewenang-wenang dan mencerminkan kemanusiaan yang beradab.

  * Opsi A berfokus pada suasana rukun, bukan perlindungan hak ketika terjadi ketimpangan.
  * Opsi B kepatuhan norma belum tentu menjamin tidak adanya kesewenang-wenangan.
  * Opsi C etika kesopanan belum cukup saat berhadapan dengan persoalan keadilan.
  * Opsi E menghindari perbedaan pendapat justru dapat mengabaikan hak bersuara.',
  NULL,
  'published'
),
(
  'part-27',
  3,
  'TWK',
  'Pancasila',
  'sedang',
  'Dalam sistem ketatanegaraan Indonesia, hubungan antara Pancasila dan UUD 1945 tercermin dalam kedudukan dan fungsinya sebagai dasar penyelenggaraan negara, yaitu ...',
  NULL,
  '{"A":"Pancasila berfungsi sebagai landasan filosofis kehidupan berbangsa, sedangkan UUD 1945 mengatur penyelenggaraan pemerintahan.","B":"Pancasila menjadi sumber nilai fundamental yang melandasi pembentukan dan isi norma dalam UUD 1945.","C":"Pancasila berfungsi sebagai pedoman etika sosial masyarakat, sedangkan UUD 1945 menjadi acuan hukum negara.","D":"Pancasila menjadi dasar kesepakatan politik nasional, sementara UUD 1945 merupakan hasil kompromi sejarah bangsa.","E":"Pancasila berfungsi sebagai identitas ideologis bangsa yang bersifat kultural, sedangkan UUD 1945 diposisikan sebagai dokumen hukum administratif negara."}'::jsonb,
  'B',
  '* **Penjelasan:**
  Hubungan antara Pancasila dan UUD 1945 dalam sistem ketatanegaraan Indonesia bersifat normatif dan hierarkis, di mana Pancasila berkedudukan sebagai dasar negara dan sumber dari segala sumber hukum sehingga seluruh peraturan perundang-undangan termasuk UUD 1945 harus bersumber dan tidak boleh bertentangan dengan nilai-nilai Pancasila. UUD 1945 merupakan perwujudan yuridis nilai-nilai Pancasila dalam penyelenggaraan negara.

  Opsi B paling tepat karena secara jelas dan utuh menunjukkan bahwa Pancasila menjadi sumber nilai fundamental yang melandasi pembentukan serta isi norma dalam UUD 1945.',
  NULL,
  'published'
),
(
  'part-27',
  4,
  'TWK',
  'Pancasila',
  'sedang',
  'Perhatikan pernyataan-pernyataan berikut!

1. Undang-undang dapat dibentuk selama disepakati oleh pemerintah dan DPR.
2. Norma hukum sah berlaku apabila sesuai dengan aspirasi mayoritas masyarakat.
3. Peraturan daerah tidak boleh bertentangan dengan nilai-nilai Pancasila.
4. Pengujian peraturan perundang-undangan dilakukan berdasarkan nilai dasar Pancasila.
5. Kebijakan pemerintah dapat berubah mengikuti dinamika sosial dan politik nasional.
6. Setiap peraturan hukum wajib tunduk pada nilai dasar Pancasila.

Manakah pernyataan yang menunjukkan Pancasila sebagai sumber dari segala sumber hukum?',
  NULL,
  '{"A":"1, 2, dan 5","B":"1, 3, dan 6","C":"2, 4, dan 5","D":"3, 4, dan 6","E":"2, 3, dan 4"}'::jsonb,
  'D',
  '* **Penjelasan:**
  Pancasila sebagai sumber dari segala sumber hukum berarti seluruh peraturan perundang-undangan harus bersumber, diuji, dan tidak boleh bertentangan dengan nilai-nilai Pancasila.

  * Pernyataan (3) menegaskan bahwa peraturan daerah tidak boleh bertentangan dengan Pancasila.
  * Pernyataan (4) menunjukkan bahwa Pancasila digunakan sebagai dasar dalam pengujian peraturan perundang-undangan.
  * Pernyataan (6) secara tegas menyatakan kewajiban seluruh peraturan hukum untuk tunduk pada nilai dasar Pancasila.',
  NULL,
  'published'
),
(
  'part-27',
  5,
  'TWK',
  'UUD 1945',
  'sedang',
  'Dalam kehidupan sehari-hari, putusan Mahkamah Konstitusi dapat dirasakan langsung oleh masyarakat. Contoh implementasi kewenangan Mahkamah Konstitusi yang paling tepat adalah ...',
  NULL,
  '{"A":"Pemerintah segera merevisi undang-undang setelah dinyatakan bertentangan dengan UUD 1945.","B":"Warga tetap menaati undang-undang meskipun menilai aturan tersebut kurang adil.","C":"Aparat penegak hukum menyesuaikan kebijakan teknis sesuai arahan kementerian.","D":"Masyarakat menyampaikan kritik terhadap undang-undang melalui media sosial.","E":"DPR membentuk undang-undang baru berdasarkan aspirasi kelompok tertentu."}'::jsonb,
  'A',
  '* **Penjelasan:**
  Mahkamah Konstitusi memiliki kewenangan menguji undang-undang terhadap UUD 1945 dan setiap putusannya bersifat *final and binding* (final dan mengikat). Implementasi kewenangan tersebut paling tepat ditunjukkan pada opsi A, yaitu ketika pemerintah segera menindaklanjuti putusan Mahkamah Konstitusi dengan merevisi undang-undang yang dinyatakan inkonstitusional (bertentangan dengan UUD 1945).',
  NULL,
  'published'
),
(
  'part-27',
  6,
  'TWK',
  'UUD 1945',
  'sedang',
  'Pemerintah daerah menyelenggarakan festival budaya lokal dengan melibatkan generasi muda agar tradisi daerah tetap lestari di tengah arus budaya global. Berdasarkan Pasal 32 ayat (2) UUD NRI Tahun 1945, kebijakan tersebut paling tepat mencerminkan ...',
  NULL,
  '{"A":"Upaya negara membatasi pengaruh budaya asing terhadap kebudayaan nasional.","B":"Peran pemerintah daerah mempertahankan identitas budaya lokal masyarakat.","C":"Hak masyarakat mengekspresikan kebudayaan daerah secara bebas dan terbuka.","D":"Strategi pemerintah memperkuat persatuan bangsa melalui kegiatan kebudayaan.","E":"Tanggung jawab negara mengembangkan kebudayaan daerah sebagai bagian budaya nasional."}'::jsonb,
  'E',
  '* **Penjelasan:**
  Pasal 32 UUD NRI 1945 mengatur pemajuan kebudayaan nasional dan penghormatan terhadap kekayaan budaya daerah. Opsi E paling tepat karena secara langsung menempatkan negara sebagai pihak yang bertanggung jawab memelihara, melestarikan, dan mengembangkan kebudayaan daerah sebagai bagian integral dari kebudayaan nasional.',
  NULL,
  'published'
),
(
  'part-27',
  7,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Perhatikan pernyataan-pernyataan berikut!

1. Warga negara menerima hasil pemilihan umum yang sah meskipun pilihannya tidak memenangkan pemilu.
2. Tokoh politik menyampaikan kritik terhadap kebijakan pemerintah melalui mekanisme konstitusional.
3. Partai politik mengutamakan kepentingan bangsa di atas kepentingan kelompok dan golongan.
4. Masyarakat aktif mengikuti dinamika politik nasional melalui berbagai media informasi.
5. Penyelenggara pemilihan umum menjalankan tugas secara jujur, adil, dan independen.
6. Elite politik memanfaatkan isu identitas untuk memperkuat dukungan politik.

Perilaku yang paling mencerminkan nasionalisme di bidang politik ditunjukkan oleh pernyataan ...',
  NULL,
  '{"A":"1, 2, dan 3","B":"1, 2, dan 5","C":"1, 3, dan 5","D":"2, 4, dan 6","E":"3, 5, dan 6"}'::jsonb,
  'C',
  '* **Penjelasan:**
  Nasionalisme di bidang politik menekankan sikap mengutamakan persatuan bangsa, kepentingan nasional, dan integritas demokrasi:

  * (1) Menerima hasil pemilu sah mencerminkan kedewasaan berdemokrasi demi menjaga stabilitas persatuan bangsa.
  * (3) Partai politik mengutamakan kepentingan bangsa di atas kepentingan golongan.
  * (5) Penyelenggara pemilu berlaku jujur, adil, dan independen untuk menjaga legitimasi dan persatuan bangsa.',
  NULL,
  'published'
),
(
  'part-27',
  8,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Kemajuan bangsa tidak hanya ditentukan oleh kemajuan teknologi dan sumber daya alam, tetapi juga oleh sikap nasionalisme warga negaranya. Sikap yang paling mencerminkan nasionalisme yang mendorong kemajuan bangsa adalah ...',
  NULL,
  '{"A":"Mengembangkan kemampuan diri agar mampu beradaptasi dengan persaingan global.","B":"Mematuhi aturan yang berlaku demi menjaga stabilitas dan ketertiban sosial.","C":"Mengarahkan keahlian dan potensi pribadi untuk berkontribusi bagi kepentingan bangsa.","D":"Mengikuti perubahan zaman agar tidak tertinggal dari negara lain.","E":"Menyesuaikan sikap dengan lingkungan sosial untuk menjaga keharmonisan masyarakat."}'::jsonb,
  'C',
  '* **Penjelasan:**
  Nasionalisme yang mendorong kemajuan adalah nasionalisme produktif, yaitu kesadaran untuk mendedikasikan dan mengarahkan keahlian serta potensi diri agar memberi manfaat konkret bagi kepentingan bangsa dan pembangunan kolektif.',
  NULL,
  'published'
),
(
  'part-27',
  9,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Dalam kehidupan berbangsa, menjaga penggunaan bahasa Indonesia yang baik dan benar di ruang publik sering dikaitkan dengan sikap nasionalisme karena ...',
  NULL,
  '{"A":"Menunjukkan sikap menghargai budaya bangsa dalam interaksi sosial sehari-hari.","B":"Membantu menciptakan keteraturan komunikasi di tengah keberagaman masyarakat.","C":"Mempermudah komunikasi lintas daerah dalam berbagai aktivitas publik.","D":"Menguatkan jati diri bangsa yang menjadi fondasi persatuan nasional.","E":"Mendukung kelancaran adaptasi masyarakat terhadap dinamika sosial modern."}'::jsonb,
  'D',
  '* **Penjelasan:**
  Bahasa Indonesia bukan sekadar alat komunikasi fungsional, melainkan lambang identitas dan jati diri bangsa yang menjadi perekat pemersatu di tengah keberagaman suku dan budaya nusantara.',
  NULL,
  'published'
),
(
  'part-27',
  10,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Peristiwa Sumpah Pemuda 1928 menegaskan komitmen pemuda untuk mengesampingkan kepentingan kedaerahan demi persatuan bangsa. Sikap berikut mencerminkan nilai nasionalisme yang relevan dengan semangat Sumpah Pemuda, kecuali ...',
  NULL,
  '{"A":"Mengembangkan sikap saling menghormati antarbudaya dalam kehidupan bermasyarakat.","B":"Menempatkan persatuan dan kepentingan bangsa di atas kepentingan kelompok atau golongan.","C":"Menumbuhkan rasa bangga terhadap pencapaian dan kemajuan bangsa di berbagai bidang.","D":"Menjaga stabilitas sosial dengan mengelola perbedaan pandangan secara bijak.","E":"Mengutamakan kesepakatan mayoritas sebagai dasar menjaga persatuan dalam kehidupan berbangsa."}'::jsonb,
  'E',
  '* **Penjelasan:**
  Semangat Sumpah Pemuda bersifat inklusif dan merangkul seluruh keberagaman suku dan daerah tanpa meminggirkan kelompok minoritas. Membangun persatuan semata-mata atas dominasi suara mayoritas berpotensi mengabaikan keadilan dan keberagaman bangsa.',
  NULL,
  'published'
),
(
  'part-27',
  11,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Di tengah tantangan global dan beragamnya kepentingan individu, urgensi utama patriotisme atau jiwa kepahlawanan bagi kemajuan bangsa adalah ...',
  NULL,
  '{"A":"Mengutamakan kepentingan bangsa di atas kepentingan pribadi dengan mengarahkan potensi individu bagi tujuan nasional.","B":"Membentuk warga negara berdaya saing tinggi agar mampu mengharumkan nama bangsa di tingkat global.","C":"Menumbuhkan kepatuhan bersama terhadap aturan negara demi menjaga stabilitas kehidupan nasional.","D":"Meningkatkan kesiapan masyarakat menghadapi perubahan global tanpa kehilangan daya saing bangsa.","E":"Memperkuat keharmonisan sosial agar perbedaan kepentingan tidak berkembang menjadi konflik terbuka."}'::jsonb,
  'A',
  '* **Penjelasan:**
  Urgensi utama jiwa patriotisme/kepahlawanan adalah kesediaan untuk rela berkorban dan mengarahkan segenap potensi diri demi tujuan bersama bangsa, meletakkan kepentingan nasional di atas kepentingan pribadi.',
  NULL,
  'published'
),
(
  'part-27',
  12,
  'TWK',
  'Bela Negara',
  'sedang',
  'Bela negara nonfisik dapat diwujudkan melalui perilaku sederhana dalam kehidupan sehari-hari. Sikap yang paling tepat mencerminkan upaya bela negara tersebut adalah ...',
  NULL,
  '{"A":"Menyesuaikan perilaku dengan norma lingkungan agar tercipta kehidupan sosial yang tertib.","B":"Menjalankan aturan lalu lintas dengan tertib sebagai bentuk disiplin pribadi.","C":"Terlibat aktif membantu kegiatan lingkungan yang mendukung kepentingan bersama.","D":"Mengikuti perkembangan zaman agar mampu beradaptasi dengan perubahan sosial.","E":"Menjaga hubungan baik dengan sesama warga untuk menciptakan suasana rukun."}'::jsonb,
  'C',
  '* **Penjelasan:**
  Bela negara nonfisik ditekankan pada kontribusi aktif yang memperkuat ketahanan sosial, kepedulian bersama, dan kegotongroyongan di lingkungan masyarakat guna menunjang ketahanan nasional.',
  NULL,
  'published'
),
(
  'part-27',
  13,
  'TWK',
  'Bela Negara',
  'sedang',
  'Perhatikan pernyataan-pernyataan berikut ini!

1. Warga menjaga kebersihan lingkungan demi kenyamanan dan estetika rumah.
2. Masyarakat aktif menjaga kelestarian sumber air di wilayah tempat tinggal.
3. Aparatur pemerintah menegakkan aturan lingkungan secara konsisten dan adil.
4. Individu mengurangi penggunaan energi demi menghemat pengeluaran keluarga.
5. Tokoh masyarakat mengajak warga menjaga lingkungan sebagai tanggung jawab bersama.
6. Warga memanfaatkan sumber daya alam semaksimal mungkin untuk kepentingan ekonomi.

Manfaat utama penerapan bela negara dalam bidang lingkungan hidup ditunjukkan oleh perilaku ...',
  NULL,
  '{"A":"1, 2, dan 4","B":"1, 3, dan 5","C":"2, 4, dan 6","D":"3, 4, dan 6","E":"2, 3, dan 5"}'::jsonb,
  'E',
  '* **Penjelasan:**
  Bela negara di bidang lingkungan bertujuan menjaga kelestarian aset sumber daya alam bagi kepentingan publik dan masa depan bangsa:

  * (2) Melestarikan sumber daya air demi ketahanan lingkungan.
  * (3) Penegakan hukum lingkungan yang adil oleh aparatur.
  * (5) Pembangunan kesadaran kolektif untuk memelihara lingkungan hidup.',
  NULL,
  'published'
),
(
  'part-27',
  14,
  'TWK',
  'Bela Negara',
  'sedang',
  'Pada masa pandemi nasional, berbagai kebijakan pembatasan diterapkan untuk melindungi keselamatan bersama. Sikap bela negara yang paling relevan untuk diterapkan dari peristiwa tersebut dalam kehidupan berbangsa adalah ...',
  NULL,
  '{"A":"Kesediaan warga negara menyesuaikan kepentingan pribadi demi kepentingan bersama.","B":"Kepatuhan masyarakat terhadap kebijakan pemerintah dalam situasi darurat.","C":"Partisipasi warga dalam mengikuti imbauan pemerintah sesuai kemampuan masing-masing.","D":"Kepercayaan masyarakat kepada pemerintah sebagai pengambil kebijakan.","E":"Ketertiban sosial yang tercipta karena adanya pengawasan aparat negara."}'::jsonb,
  'A',
  '* **Penjelasan:**
  Esensi dasar dari bela negara adalah kerelaan berkorban, yaitu kesediaan individu untuk membatasi atau menyesuaikan kepentingan pribadi demi keselamatan serta ketahanan bangsa secara kolektif.',
  NULL,
  'published'
),
(
  'part-27',
  15,
  'TWK',
  'TWK Umum',
  'sedang',
  'Dalam kehidupan ekonomi sehari-hari, pilihan konsumsi masyarakat dapat memengaruhi kemandirian dan daya saing bangsa. Sikap yang paling tepat mencerminkan cinta tanah air di bidang ekonomi adalah ...',
  NULL,
  '{"A":"Memilih produk yang diminati masyarakat luas agar perputaran ekonomi tetap terjaga.","B":"Menggunakan produk dalam negeri secara sadar sebagai dukungan terhadap ekonomi nasional.","C":"Memprioritaskan produk berkualitas dengan harga terjangkau demi efisiensi ekonomi keluarga.","D":"Menyesuaikan pola konsumsi dengan perkembangan pasar agar tetap kompetitif.","E":"Mengutamakan produk yang mudah diakses untuk menunjang kelancaran aktivitas ekonomi."}'::jsonb,
  'B',
  '* **Penjelasan:**
  Cinta tanah air di bidang ekonomi diwujudkan melalui keberpihakan sadar terhadap produk dalam negeri guna mendukung UMKM, industri lokal, dan kemandirian ekonomi nasional.',
  NULL,
  'published'
),
(
  'part-27',
  16,
  'TWK',
  'TWK Umum',
  'sedang',
  'Organisasi pergerakan nasional berperan penting dalam menumbuhkan kesadaran persatuan demi tercapainya kemerdekaan Indonesia. Sikap generasi muda yang paling tepat mencerminkan nilai tersebut dalam kehidupan saat ini adalah ...',
  NULL,
  '{"A":"Aktif berorganisasi untuk berkontribusi dalam berbagai kegiatan bersama secara konsisten.","B":"Menjadikan tujuan bersama organisasi sebagai landasan utama dalam setiap pengambilan keputusan.","C":"Menghargai perbedaan pendapat agar dinamika organisasi tetap berjalan secara sehat.","D":"Menjalankan kegiatan organisasi sesuai aturan yang disepakati secara tertib dan disiplin.","E":"Mengikuti organisasi yang mampu menyalurkan aspirasi anggota secara terbuka dan adil."}'::jsonb,
  'B',
  '* **Penjelasan:**
  Semangat organisasi pergerakan nasional adalah meredam ego kelompok/kedaerahan demi tujuan kolektif bangsa. Maka, menempatkan visi dan tujuan bersama di atas kepentingan pribadi/kelompok saat mengambil keputusan adalah cerminan nilai utamanya.',
  NULL,
  'published'
),
(
  'part-27',
  17,
  'TWK',
  'TWK Umum',
  'sedang',
  'BPUPKI dibentuk sebagai forum perumusan dasar dan arah negara Indonesia merdeka melalui musyawarah para wakil bangsa. Dalam konteks kehidupan berbangsa saat ini, makna utama peran BPUPKI tercermin pada pergeseran dari ...',
  NULL,
  '{"A":"Perjuangan fisik melawan penjajahan menuju perumusan sistem ketatanegaraan yang demokratis.","B":"Perlawanan rakyat secara spontan menuju perencanaan negara yang berbasis konstitusi.","C":"Kepemimpinan tokoh pergerakan menuju dominasi pemerintah dalam pengambilan keputusan.","D":"Perjuangan politik tertutup menuju partisipasi publik dalam kehidupan bernegara.","E":"Aspirasi kelompok tertentu menuju kesepakatan nasional yang mengikat seluruh bangsa."}'::jsonb,
  'E',
  '* **Penjelasan:**
  Makna esensial dari musyawarah BPUPKI adalah pergeseran dari berbagai aspirasi primordial/golongan menuju konsensus dan kesepakatan nasional yang mengikat seluruh tumpah darah Indonesia.',
  NULL,
  'published'
),
(
  'part-27',
  18,
  'TWK',
  'TWK Umum',
  'sedang',
  'Kongres Pemuda I dan II berperan penting dalam menumbuhkan kesadaran kebangsaan di kalangan pemuda Indonesia. Makna utama kedua kongres tersebut bagi kehidupan berbangsa saat ini tercermin pada sikap ...',
  NULL,
  '{"A":"Membangun kerja sama antarkelompok pemuda untuk memperkuat solidaritas sosial.","B":"Menjaga keberagaman latar belakang pemuda sebagai ciri khas kehidupan bangsa.","C":"Mengembangkan aktivitas kepemudaan sebagai sarana partisipasi sosial masyarakat.","D":"Menegaskan komitmen persatuan bangsa di atas kepentingan kedaerahan dan golongan.","E":"Menghargai perbedaan pandangan dalam organisasi pemuda secara demokratis."}'::jsonb,
  'D',
  '* **Penjelasan:**
  Puncak Kongres Pemuda adalah pengikrar sumpah pemersatu yang menempatkan kesatuan tanah air, bangsa, dan bahasa di atas sekat-sekat kesukuan atau daerah.',
  NULL,
  'published'
),
(
  'part-27',
  19,
  'TWK',
  'TWK Umum',
  'sedang',
  'Perjuangan Indische Partij dalam menentang diskriminasi dan memperjuangkan persamaan derajat memberi pengaruh penting bagi generasi muda Indonesia. Dampak paling utama dari nilai perjuangan tersebut dalam kehidupan berbangsa saat ini adalah ...',
  NULL,
  '{"A":"Tumbuhnya keberanian generasi muda menyuarakan keadilan dan kesetaraan secara bertanggung jawab.","B":"Meningkatnya sikap kritis generasi muda terhadap kebijakan pemerintah di berbagai bidang.","C":"Menguatnya kepedulian generasi muda terhadap kelompok yang mengalami ketidakadilan sosial.","D":"Bertambahnya partisipasi generasi muda dalam aktivitas sosial dan organisasi kemasyarakatan.","E":"Terbentuknya solidaritas generasi muda dalam menghadapi berbagai persoalan sosial bersama."}'::jsonb,
  'A',
  '* **Penjelasan:**
  Indische Partij meletakkan dasar perjuangan kesetaraan dan antidiskriminasi, yang menginspirasi generasi muda untuk berani bersuara membela keadilan dan kesetaraan hak di ruang publik.',
  NULL,
  'published'
),
(
  'part-27',
  20,
  'TWK',
  'Bhinneka Tunggal Ika',
  'sedang',
  'Melemahnya semangat Bhinneka Tunggal Ika di kalangan generasi muda dapat menimbulkan dampak negatif bagi kehidupan berbangsa. Dampak yang paling berbahaya bagi persatuan nasional adalah ...',
  NULL,
  '{"A":"Munculnya sikap menutup diri dan menolak bergaul dengan kelompok yang berbeda latar belakang.","B":"Berkurangnya minat generasi muda untuk mengikuti kegiatan sosial di lingkungan sekitar.","C":"Semakin kuatnya sikap mementingkan diri sendiri dalam kehidupan sehari-hari.","D":"Menurunnya perhatian generasi muda terhadap isu kebangsaan karena lebih tertarik budaya luar.","E":"Meningkatnya sikap tidak peduli terhadap masalah sosial yang tidak menyangkut kepentingan pribadi."}'::jsonb,
  'A',
  '* **Penjelasan:**
  Sikap eksklusif, menutup diri, dan menolak interaksi antarkelompok berbeda secara langsung menyulut polarisasi, prasangka antarsuku/agama, dan disintegrasi bangsa.',
  NULL,
  'published'
),
(
  'part-27',
  21,
  'TWK',
  'NKRI & Integrasi',
  'sedang',
  'Dalam pelaksanaan otonomi daerah, Wawasan Nusantara berperan sebagai pedoman dalam penyusunan kebijakan pemerintahan. Peran Wawasan Nusantara yang paling tepat dalam konteks tersebut adalah ...',
  NULL,
  '{"A":"Memberi kesempatan daerah menyusun kebijakan sesuai kebutuhan dan kondisi wilayahnya.","B":"Mendorong daerah mengembangkan potensi lokal demi peningkatan kesejahteraan masyarakat.","C":"Memperkuat hubungan kerja antara pemerintah pusat dan daerah dalam pembangunan.","D":"Menumbuhkan keterlibatan daerah dalam melaksanakan dan mendukung program nasional.","E":"Menjadi landasan agar kebijakan daerah tetap mengutamakan kepentingan nasional dan persatuan."}'::jsonb,
  'E',
  '* **Penjelasan:**
  Wawasan Nusantara memandang seluruh kepulauan Indonesia sebagai satu kesatuan utuh. Dalam otonomi daerah, konsep ini menjamin agar desentralisasi tidak berujung pada egosentrisme kedaerahan yang merusak kepentingan persatuan nasional.',
  NULL,
  'published'
),
(
  'part-27',
  22,
  'TWK',
  'TWK Umum',
  'sedang',
  'Di era globalisasi, generasi muda menghadapi tekanan nilai dan pengaruh lingkungan yang semakin beragam. Keteladanan perjuangan Cut Nyak Dien paling relevan untuk menjaga integritas generasi muda dalam kondisi tersebut adalah ...',
  NULL,
  '{"A":"Tetap menjalankan tanggung jawab meskipun arus perubahan berlangsung cepat.","B":"Menjaga komitmen pribadi agar tidak tertinggal dalam persaingan global.","C":"Berani bersikap dan bertindak benar meskipun mendapat tekanan dari pengaruh global.","D":"Mengembangkan kemampuan diri agar mampu beradaptasi dengan tuntutan zaman.","E":"Menyesuaikan diri dengan norma global selama tidak melanggar aturan hukum."}'::jsonb,
  'C',
  '* **Penjelasan:**
  Keteladanan Cut Nyak Dien adalah keteguhan moral dan keberanian tanpa kompromi dalam memegang teguh prinsip kebenaran di bawah tekanan situasi yang sangat berat.',
  NULL,
  'published'
),
(
  'part-27',
  23,
  'TWK',
  'TWK Umum',
  'sedang',
  'Dr. Cipto Mangunkusumo adalah tokoh pergerakan nasional yang dikenal kritis, rasional, dan berani menyuarakan kebenaran terhadap ketidakadilan kolonial. Di era media sosial dan arus informasi yang cepat saat ini, sikap generasi muda yang paling mencerminkan integritas sesuai keteladanan Dr. Cipto adalah ...',
  NULL,
  '{"A":"Menyampaikan pendapat secara terbuka dengan mempertimbangkan situasi sosial yang berkembang.","B":"Menjaga sikap kritis sambil tetap mengutamakan ketenangan dan stabilitas ruang publik.","C":"Menyesuaikan cara menyampaikan pendapat agar tidak menimbulkan perdebatan berkepanjangan.","D":"Menyuarakan pandangan berdasarkan fakta dan penalaran secara bertanggung jawab meskipun ada tekanan.","E":"Mengatur partisipasi dalam diskusi publik secara bijak demi menjaga keharmonisan bersama."}'::jsonb,
  'D',
  '* **Penjelasan:**
  Integritas intelektual Dr. Cipto tercermin dari keberanian menyuarakan kebenaran berdasarkan analisis rasional dan data valid secara bertanggung jawab, tanpa takut menghadapi risiko tekanan sekitar.',
  NULL,
  'published'
),
(
  'part-27',
  24,
  'TWK',
  'TWK Umum',
  'sedang',
  'Seorang anggota tim pelaksana kegiatan menemukan bahwa salah satu rekan belum memenuhi kriteria kehadiran yang telah disepakati bersama. Sementara itu, kegiatan sudah mendekati tahap penilaian akhir dan hasil kerja tim dinilai cukup baik. Sikap yang paling mencerminkan integritas adalah ...',
  NULL,
  '{"A":"Memberikan kelonggaran kehadiran dengan mempertimbangkan kontribusi rekan tersebut selama kegiatan.","B":"Menyampaikan kondisi kehadiran sesuai fakta dan ketentuan yang berlaku meskipun berpotensi menimbulkan ketidaknyamanan.","C":"Menyelesaikan seluruh rangkaian kegiatan terlebih dahulu lalu membahas kekurangan pada tahap evaluasi akhir.","D":"Menjaga keharmonisan tim dengan tidak memperbesar persoalan yang dapat mengganggu kerja sama.","E":"Menyesuaikan penilaian secara proporsional agar hasil akhir tetap mencerminkan kinerja tim secara umum."}'::jsonb,
  'B',
  '* **Penjelasan:**
  Integritas adalah komitmen pada kebenaran dan kepatuhan pada aturan main yang telah disepakati, bukan mengorbankan transparansi demi kenyamanan relasional sesaat.',
  NULL,
  'published'
),
(
  'part-27',
  25,
  'TWK',
  'TWK Umum',
  'sedang',
  '(1) Jam tangan pintar atau smartwatch kini telah bertransformasi dari sekadar aksesori menjadi asisten pribadi yang serbaguna bagi masyarakat modern. (2) Perangkat ini dilengkapi dengan berbagai sensor canggih untuk memantau aktivitas fisik, seperti detak jantung dan jumlah langkah kaki pengguna secara real-time. (3) Selain fungsi kebugaran, smartwatch juga memudahkan komunikasi dengan menampilkan notifikasi pesan dan panggilan langsung di pergelangan tangan tanpa harus membuka ponsel. (4) Fitur kesehatan yang lebih mendalam, seperti analisis kualitas tidur dan pemantauan tingkat stres, kini juga menjadi standar utama pada berbagai model terbaru. (5) Desainnya yang variatif dan modern memungkinkan pengguna untuk mempersonalisasi tampilan sesuai dengan selera maupun kebutuhan gaya hidup sehari-hari.

Gagasan utama paragraf di atas adalah ...',
  NULL,
  '{"A":"Penggunaan sensor canggih pada smartwatch untuk memantau detak jantung.","B":"Kemudahan komunikasi melalui notifikasi pesan di pergelangan tangan pengguna.","C":"Transformasi smartwatch sebagai asisten pribadi serbaguna bagi masyarakat modern.","D":"Pentingnya mempersonalisasi desain jam tangan pintar sesuai selera gaya hidup.","E":"Perkembangan fitur analisis kualitas tidur dan pemantauan tingkat stres pada gawai."}'::jsonb,
  'C',
  '* **Penjelasan:**
  Gagasan utama terletak pada kalimat deduktif nomor (1) yang menyatakan perubahan jam tangan pintar menjadi asisten serbaguna, sementara kalimat-kalimat selanjutnya menjelaskan fungsi serbaguna tersebut secara mendalam.',
  NULL,
  'published'
),
(
  'part-27',
  26,
  'TWK',
  'TWK Umum',
  'sedang',
  '(1) Bencana tanah longsor sering melanda wilayah pegunungan di Indonesia, terutama saat memasuki puncak musim penghujan dengan intensitas tinggi. (2) Faktor pemicu utamanya adalah kondisi tanah yang labil serta kemiringan lereng yang sangat curam di kawasan tersebut. (3) Aktivitas manusia, seperti penebangan hutan secara liar dan pengalihan fungsi lahan di area resapan air, turut memperbesar risiko terjadinya longsor. (4) Dampak yang ditimbulkan bencana ini sangat masif, mulai dari kerusakan infrastruktur jalan hingga hilangnya pemukiman warga. (5) Upaya mitigasi seperti penanaman pohon berakar kuat dan pembuatan terasering harus terus digalakkan untuk mengurangi potensi kerugian. (6) Selain itu, edukasi mengenai tanda-tanda awal longsor sangat penting diberikan kepada masyarakat yang tinggal di zona merah.

Kalimat utama pada paragraf tersebut adalah nomor ...',
  NULL,
  '{"A":"(1)","B":"(2)","C":"(3)","D":"(4)","E":"(5)"}'::jsonb,
  'A',
  '* **Penjelasan:**
  Kalimat (1) memuat topik umum mengenai peristiwa bencana tanah longsor di kawasan pegunungan Indonesia, yang kemudian diperinci oleh penyebab, dampak, dan mitigasi pada kalimat-kalimat berikutnya.',
  NULL,
  'published'
),
(
  'part-27',
  27,
  'TWK',
  'TWK Umum',
  'sedang',
  '(1) Tren belanja baju secara daring telah mengalami pergeseran signifikan seiring dengan masifnya perkembangan platform lokapasar atau e-commerce. (2) Konsumen kini lebih memilih berbelanja melalui aplikasi karena dianggap lebih praktis dan efisien dari segi waktu. (3) Kehadiran berbagai promo menarik, flash sale, hingga voucer gratis ongkos kirim menjadi daya tarik utama yang memicu frekuensi belanja masyarakat. (4) Tidak hanya itu, fitur live shopping di media sosial memungkinkan pembeli berinteraksi langsung dengan penjual untuk memastikan kualitas barang sebelum membeli. (5) Namun, kemudahan ini juga memicu kekhawatiran akan pola hidup impulsif dan konsumtif yang berlebihan di kalangan masyarakat. (6) Oleh sebab itu, evolusi belanja digital ini memberikan kemudahan luar biasa sekaligus menuntut kebijakan konsumen dalam mengelola keinginan dan pengeluaran.

Kesimpulan paragraf di atas adalah ...',
  NULL,
  '{"A":"Fitur live shopping dan promo gratis ongkos kirim merupakan faktor utama yang mengubah cara masyarakat dalam membeli pakaian.","B":"Masyarakat modern lebih menyukai belanja baju melalui aplikasi e-commerce karena lebih praktis dibandingkan belanja secara konvensional.","C":"Pergeseran tren belanja baju ke arah digital menawarkan kemudahan yang besar, tetapi perlu dibarengi dengan sikap bijak dalam berbelanja.","D":"Pola hidup impulsif dan konsumtif di kalangan generasi muda merupakan dampak negatif dari perkembangan teknologi belanja daring.","E":"Perkembangan platform lokapasar telah berhasil meningkatkan frekuensi belanja baju masyarakat melalui berbagai fitur interaktif."}'::jsonb,
  'C',
  '* **Penjelasan:**
  Kesimpulan yang tepat harus merangkum tesis awal (kemudahan belanja digital) dan antitesis/peringatannya (ancaman konsumerisme) sebagaimana ditegaskan pada kalimat simpulan (6).',
  NULL,
  'published'
),
(
  'part-27',
  28,
  'TWK',
  'NKRI & Integrasi',
  'sedang',
  '(1) Internet of Things (IoT) merupakan sebuah konsep di mana berbagai objek fisik terhubung ke jaringan internet untuk saling bertukar data secara otomatis. (2) Teknologi ini memungkinkan integrasi antara dunia nyata dan sistem komputer guna meningkatkan efisiensi di berbagai sektor kehidupan. (3) Demi untuk meningkatkan produktivitas, para pengusaha-pengusaha banyak mulai menerapkan sistem IoT pada lini produksi mereka. (4) Penggunaan sensor pintar pada peralatan industri menjadi salah satu bukti nyata kemajuan teknologi di era digital. (5) Meskipun demikian, tantangan mengenai privasi data tetap menjadi perhatian utama bagi para pengembang sistem tersebut.

Kalimat tidak efektif pada paragraf tersebut ditunjukkan oleh nomor ...',
  NULL,
  '{"A":"(1)","B":"(2)","C":"(3)","D":"(4)","E":"(5)"}'::jsonb,
  'C',
  '* **Penjelasan:**
  Kalimat (3) mengandung pleonasme / pemborosan kata ganda:

  * Penggunaan *"Demi untuk"* (cukup gunakan salah satu: *demi* atau *untuk*).
  * Penggunaan *"para pengusaha-pengusaha"* (kata *para* sudah menyatakan jamak, sehingga tidak perlu kata ulang).',
  NULL,
  'published'
),
(
  'part-27',
  29,
  'TWK',
  'TWK Umum',
  'sedang',
  '(1) Pembangunan hunian berbasis tahan gempa merupakan solusi cerdas untuk meminimalkan risiko jatuhnya korban jiwa di wilayah rawan tektonik. (2) Material yang digunakan biasanya memiliki bobot ringan namun mempunyai tingkat elastisitas yang tinggi terhadap guncangan. (3) Fondasi bangunan pun didesain secara khusus agar mampu meredam getaran yang merambat dari dalam tanah. (4) Segala aspek teknis mulai dari sambungan antarbalok hingga rangka atap harus diperhitungkan secara seksama oleh para ahli konstruksi. (5) Hal ini bertujuan agar struktur bangunan tetap kokoh dan tidak mudah roboh saat terjadi pergeseran lempeng bumi. (6) Dengan menerapkan teknologi ini, masyarakat dapat merasa lebih aman meskipun tinggal di daerah yang memiliki aktivitas seismik aktif.

Manakah kata tidak baku yang terdapat pada paragraf tersebut ...',
  NULL,
  '{"A":"Risiko","B":"Fondasi","C":"Antarbalok","D":"Seksama","E":"Roboh"}'::jsonb,
  'D',
  '* **Penjelasan:**
  Kata yang tidak baku adalah **seksama**. Menurut Kamus Besar Bahasa Indonesia (KBBI), bentuk bakunya adalah **saksama** (artinya cermat, teliti).',
  NULL,
  'published'
),
(
  'part-27',
  30,
  'TWK',
  'TWK Umum',
  'sedang',
  'Manakah kalimat di bawah ini yang SALAH dalam penggunaan tanda bacanya ...',
  NULL,
  '{"A":"Prof. Dr. Andi Hakim, M.H., bertindak sebagai narasumber utama dalam seminar hukum tersebut.","B":"Rencana pemindahan ibu kota terus dimatangkan, sedangkan proses pembangunan infrastruktur dasarnya sudah mulai berjalan.","C":"Walaupun sudah diperingatkan berkali-kali, masih banyak pengendara yang nekat menerobos jalur khusus busway.","D":"Peserta pendaftaran CPNS wajib mengunggah berkas administrasi berupa: pasfoto, fotokopi KTP, dan ijazah terakhir.","E":"\"Saya yakin,\" kata ketua panitia, \"bahwa acara besok akan berjalan dengan lancar.\""}'::jsonb,
  'D',
  '* **Penjelasan:**
  Tanda titik dua (`:`) tidak digunakan jika perincian tersebut merupakan pelengkap dari kalimat yang diawali relator/kata kerja perinci seperti *adalah*, *berupa*, *meliputi*. Bentuk yang tepat: *"berkas administrasi berupa pasfoto, fotokopi KTP, dan ijazah terakhir."*',
  NULL,
  'published'
),
(
  'part-27',
  31,
  'TIU',
  'Silogisme',
  'sedang',
  '* Tidak ada pegawai divisi keuangan yang tergabung dalam tim pemasaran.
* Beberapa anggota tim pemasaran mengikuti pelatihan kepemimpinan.

Kesimpulan yang paling tepat adalah ...',
  NULL,
  '{"A":"Semua pegawai divisi keuangan tidak pernah mengikuti pelatihan kepemimpinan.","B":"Semua peserta pelatihan kepemimpinan berasal dari tim pemasaran.","C":"Beberapa peserta pelatihan kepemimpinan bukan pegawai divisi keuangan.","D":"Tidak ada peserta pelatihan kepemimpinan yang bekerja di perusahaan tersebut.","E":"Pegawai divisi keuangan hanya bekerja di bagian administrasi."}'::jsonb,
  'C',
  '* **Penjelasan:**
  Sebagian orang yang ikut pelatihan kepemimpinan adalah anggota tim pemasaran. Karena seluruh anggota tim pemasaran bukan pegawai divisi keuangan, maka dipastikan peserta pelatihan tersebut (yang berasal dari tim pemasaran) bukan pegawai divisi keuangan.',
  NULL,
  'published'
),
(
  'part-27',
  32,
  'TIU',
  'Silogisme',
  'sedang',
  '* Semua karyawan yang terlambat masuk kerja mendapatkan teguran dari manajer.
* Tidak semua karyawan yang mendapatkan teguran dari manajer dipotong insentifnya.

Kesimpulan dari kedua premis di atas adalah ...',
  NULL,
  '{"A":"Semua karyawan yang terlambat masuk kerja dipotong insentifnya.","B":"Sebagian karyawan yang terlambat masuk kerja dipotong insentifnya.","C":"Tidak ada karyawan yang terlambat masuk kerja dipotong insentifnya.","D":"Sebagian karyawan yang terlambat masuk kerja tidak dipotong insentifnya.","E":"Semua karyawan yang tidak terlambat masuk kerja tidak dipotong insentifnya."}'::jsonb,
  'D',
  '* **Penjelasan:**
  * Premis 1: Semua $p \rightarrow q$ (Terlambat $\rightarrow$ Ditegur).
  * Premis 2: Sebagian $q \rightarrow r$ (Ditegur $\rightarrow$ Tidak dipotong insentifnya).
  * Kesimpulan: Sebagian $p \rightarrow r$ (Sebagian karyawan yang terlambat masuk kerja tidak dipotong insentifnya).',
  NULL,
  'published'
),
(
  'part-27',
  33,
  'TIU',
  'Silogisme',
  'sedang',
  '* Semua peserta yang mendaftar kelas "Intensive UTBK" mendapatkan modul.
* Tidak ada penerima modul yang boleh mengakses kelas tanpa akun resmi.

Kesimpulan dari kedua premis di atas adalah ...',
  NULL,
  '{"A":"Semua peserta yang mendaftar kelas \"Intensive UTBK\" tidak mungkin mengakses kelas tanpa akun resmi.","B":"Sebagian peserta yang tidak mendaftar kelas \"Intensive UTBK\" juga mendapatkan modul.","C":"Tidak ada peserta kelas \"Intensive UTBK\" yang dapat mengakses kelas.","D":"Beberapa peserta tanpa akun resmi tetap bisa mengakses kelas.","E":"Semua peserta yang memiliki akun resmi pasti mendaftar kelas \"Intensive UTBK\"."}'::jsonb,
  'A',
  '* **Penjelasan:**
  * P1: Semua yang mendaftar Intensive UTBK $\rightarrow$ Mendapat modul.
  * P2: Semua yang mendapat modul $\rightarrow$ Wajib memakai akun resmi (tidak boleh tanpa akun resmi).
  * Kesimpulan: Semua peserta yang mendaftar Intensive UTBK tidak mungkin mengakses kelas tanpa akun resmi.',
  NULL,
  'published'
),
(
  'part-27',
  34,
  'TIU',
  'Analogi Kata',
  'sedang',
  '**KOMPAS : ARAH** = ...',
  NULL,
  '{"A":"Kamera : Film","B":"Jam : Menit","C":"Termometer : Suhu","D":"Arloji : Detik","E":"Penggaris : Garis"}'::jsonb,
  'C',
  '* **Penjelasan:**
  Hubungan fungsi alat dan objek yang diukur/ditunjukkan: Kompas adalah alat penunjuk arah, sebagaimana Termometer adalah alat penunjuk/pengukur suhu.',
  NULL,
  'published'
),
(
  'part-27',
  35,
  'TIU',
  'Analogi Kata',
  'sedang',
  '**BETON : SEMEN** = ...',
  NULL,
  '{"A":"Lem : Kayu","B":"Kain : Kapas","C":"Meja : Kursi","D":"Pintal : Benang","E":"Batu : Bata"}'::jsonb,
  'B',
  '* **Penjelasan:**
  Hubungan produk dan bahan baku utamanya: Beton dibuat dengan bahan dasar semen, sebagaimana Kain dibuat dengan bahan dasar kapas.',
  NULL,
  'published'
),
(
  'part-27',
  36,
  'TIU',
  'Analogi Kalimat',
  'sedang',
  'Sepeda memerlukan rantai dan pedal agar dapat dikayuh dengan baik.
Hubungan ini sama dengan ...',
  NULL,
  '{"A":"Guru menggunakan buku dan papan tulis saat mengajar di depan kelas.","B":"Lampu membutuhkan listrik dan bohlam agar dapat memancarkan cahaya","C":"Hutan memiliki banyak pohon dan semak sebagai paru-paru dunia.","D":"Kita harus rajin makan dan minum saat berbuka puasa.","E":"Kamera digunakan oleh fotografer untuk memotret dan merekam video."}'::jsonb,
  'B',
  '* **Penjelasan:**
  Hubungan fungsional/kebutuhan mutlak: Agar sepeda dapat berfungsi (dikayuh dengan baik), sepeda mutlak memerlukan rantai dan pedal. Hubungan yang setara adalah lampu, di mana agar lampu dapat memancarkan cahaya, ia mutlak membutuhkan listrik dan bohlam.',
  NULL,
  'published'
),
(
  'part-27',
  37,
  'TIU',
  'Analogi Kalimat',
  'sedang',
  'Pembangunan bendungan berfungsi untuk menyediakan cadangan air dan mencegah terjadinya banjir.

Hubungan ini sama dengan ...',
  NULL,
  '{"A":"Menabung di bank merupakan cara yang masih dilakukan oleh banyak generasi muda.","B":"Olahraga dengan intensitas tinggi tidak disarankan untuk dilakukan setiap hari.","C":"Cara untuk mendapatkan nilai yang memuaskan adalah belajar dengan giat.","D":"Pemasangan alarm bertujuan untuk memberikan peringatan dan mencegah pencurian.","E":"Penggunaan kosmetik setiap hari berbahaya apabila tidak disertai dengan cara membersihkannya dengan benar."}'::jsonb,
  'D',
  '* **Penjelasan:**
  Hubungan suatu objek dengan dua fungsi/manfaat simultan (memberikan sesuatu yang positif dan mencegah bahaya): Bendungan menyediakan cadangan air dan mencegah banjir $\Leftrightarrow$ Alarm memberikan peringatan dan mencegah pencurian.',
  NULL,
  'published'
),
(
  'part-27',
  38,
  'TIU',
  'Berhitung',
  'sedang',
  'Hitunglah nilai dari:

$$
5 + \left(2\frac{1}{4} - \frac{3}{8}\right) \times 16 = \dots
$$',
  NULL,
  '{"A":"30","B":"33","C":"35","D":"39","E":"41"}'::jsonb,
  'C',
  '* **Langkah Penyelesaian:**

  $$
  5 + \left(2\frac{1}{4} - \frac{3}{8}\right) \times 16 = 5 + \left(\frac{9}{4} - \frac{3}{8}\right) \times 16
  $$

  Samakan penyebut di dalam kurung:

  $$
  = 5 + \left(\frac{18}{8} - \frac{3}{8}\right) \times 16
  $$

  $$
  = 5 + \left(\frac{15}{8}\right) \times 16
  $$

  Lakukan perkalian terlebih dahulu:

  $$
  = 5 + 15 \times 2 = 5 + 30 = 35
  $$',
  NULL,
  'published'
),
(
  'part-27',
  39,
  'TIU',
  'Berhitung',
  'sedang',
  'Hitunglah nilai dari:

$$
\left(1{,}25 + 2\frac{1}{5}\right) \times 6 - \left(\frac{3}{4} \times 8{,}4\right) = \dots
$$',
  NULL,
  '{"A":"14,4","B":"15,5","C":"20,4","D":"25,6","E":"30,3"}'::jsonb,
  'A',
  '* **Langkah Penyelesaian:**
  Ubah pecahan campuran ke bentuk desimal ($2\frac{1}{5} = 2{,}2$):

  $$
  (1{,}25 + 2{,}2) \times 6 - \left(\frac{3}{4} \times 8{,}4\right)
  $$

  Hitung perkalian pada bagian kanan:

  $$
  \frac{3}{4} \times 8{,}4 = 3 \times 2{,}1 = 6{,}3
  $$

  Hitung penjumlahan pada kurung kiri:

  $$
  3{,}45 \times 6 - 6{,}3 = 20{,}7 - 6{,}3 = 14{,}4
  $$',
  NULL,
  'published'
),
(
  'part-27',
  40,
  'TIU',
  'Berhitung',
  'sedang',
  'Hitunglah nilai dari:

$$
\frac{1}{3} \left(4{,}8 - 1\frac{1}{2}\right) + \left(2\frac{1}{4} \times 0{,}8\right) = \dots
$$',
  NULL,
  '{"A":"1,9","B":"2,1","C":"2,5","D":"2,9","E":"3,1"}'::jsonb,
  'D',
  '* **Langkah Penyelesaian:**
  Ubah pecahan ke bentuk desimal ($1\frac{1}{2} = 1{,}5$ dan $2\frac{1}{4} = \frac{9}{4}$):

  $$
  \frac{1}{3} (4{,}8 - 1{,}5) + \left(\frac{9}{4} \times 0{,}8\right)
  $$

  $$
  = \frac{1}{3} (3{,}3) + \left(\frac{9}{4} \times \frac{8}{10}\right)
  $$

  $$
  = 1{,}1 + \left(\frac{18}{10}\right)
  $$

  $$
  = \frac{11}{10} + \frac{18}{10} = \frac{29}{10} = 2{,}9
  $$',
  NULL,
  'published'
),
(
  'part-27',
  41,
  'TIU',
  'Perbandingan Kuantitatif',
  'sedang',
  'Diketahui nilai $x = -1$ dan $y = 3$.

| $A$ | $B$ |
| :---: | :---: |
| $y - 2x - 3$ | $2y - 4x$ |

Manakah hubungan yang benar antara kuantitas $A$ dan $B$ berikut berdasarkan informasi yang diberikan ...',
  NULL,
  '{"A":"$2A < B$","B":"$A = B$","C":"Hubungan $A$ dan $B$ tidak dapat ditentukan","D":"$A > B$","E":"$3A > 2B$"}'::jsonb,
  'A',
  '* **Langkah Penyelesaian:**
  * Hitung kuantitas $A$:
    $$A = y - 2x - 3 = 3 - 2(-1) - 3 = 3 + 2 - 3 = 2$$
  * Hitung kuantitas $B$:
    $$B = 2y - 4x = 2(3) - 4(-1) = 6 + 4 = 10$$
  * Uji setiap pilihan jawaban:
    * **Opsi A (BENAR):** $2A < B \implies 2(2) < 10 \iff 4 < 10$
    * **Opsi B (SALAH):** $A = B \implies 2 = 10$
    * **Opsi D (SALAH):** $A > B \implies 2 > 10$
    * **Opsi E (SALAH):** $3A > 2B \implies 3(2) > 2(10) \iff 6 > 20$',
  NULL,
  'published'
),
(
  'part-27',
  42,
  'TIU',
  'Perbandingan Kuantitatif',
  'sedang',
  'Diketahui nilai $P = -4$,

| $A$ | $B$ |
| :---: | :---: |
| $-12 - 2P \times 4$ | $-5P \times 5 \times 3$ |

Manakah hubungan yang benar antara kuantitas $A$ dan $B$ berikut berdasarkan informasi yang diberikan ...',
  NULL,
  '{"A":"$A > B$","B":"$2A > B$","C":"Hubungan $A$ dan $B$ tidak dapat ditentukan","D":"$3A = 2B$","E":"$3A < 2B$"}'::jsonb,
  'E',
  '* **Langkah Penyelesaian:**
  * Hitung kuantitas $A$:
    $$A = -12 - 2(-4) \times 4 = -12 - (-8) \times 4 = -12 - (-32) = -12 + 32 = 20$$
  * Hitung kuantitas $B$:
    $$B = -5(-4) \times 5 \times 3 = 20 \times 15 = 300$$
  * Uji pilihan jawaban:
    * **Opsi A (SALAH):** $A > B \implies 20 > 300$
    * **Opsi B (SALAH):** $2A > B \implies 2(20) > 300 \iff 40 > 300$
    * **Opsi D (SALAH):** $3A = 2B \implies 3(20) = 2(300) \iff 60 = 600$
    * **Opsi E (BENAR):** $3A < 2B \implies 3(20) < 2(300) \iff 60 < 600$',
  NULL,
  'published'
),
(
  'part-27',
  43,
  'TIU',
  'Perbandingan Kuantitatif',
  'sedang',
  'Diketahui:

| $x$ | $y$ |
| :---: | :---: |
| $\frac{8}{4} + 6 \times 2 - \frac{8}{2}$ | $\frac{4}{5} \times 25 + 18 \div 3$ |

Manakah hubungan yang benar antara kuantitas $x$ dan $y$ berikut berdasarkan informasi yang diberikan ...',
  NULL,
  '{"A":"$3x < 2y$","B":"$4x < y$","C":"Hubungan $x$ dan $y$ tidak dapat ditentukan","D":"$3x > 2y$","E":"$2x > 3y$"}'::jsonb,
  'A',
  '* **Langkah Penyelesaian:**
  * Hitung nilai $x$:
    $$x = \frac{8}{4} + 6 \times 2 - \frac{8}{2} = 2 + 12 - 4 = 10$$
  * Hitung nilai $y$:
    $$y = \frac{4}{5} \times 25 + 18 \div 3 = 4 \times 5 + 6 = 20 + 6 = 26$$
  * Rasio $x : y = 10 : 26 = 5 : 13$
  * Uji pilihan jawaban:
    * **Opsi A (BENAR):** $3x < 2y \implies 3(10) < 2(26) \iff 30 < 52$ (atau $3(5) < 2(13) \iff 15 < 26$)
    * **Opsi B (SALAH):** $4x < y \implies 4(5) < 13 \iff 20 < 13$
    * **Opsi D (SALAH):** $3x > 2y \implies 3(5) > 2(13) \iff 15 > 26$
    * **Opsi E (SALAH):** $2x > 3y \implies 2(5) > 3(13) \iff 10 > 39$',
  NULL,
  'published'
),
(
  'part-27',
  44,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Sebuah tempat parkir menetapkan tarif sebesar Rp6.000,00 untuk 2 jam pertama dan Rp2.500,00 untuk setiap 1 jam berikutnya. Jika kendaraan Andi parkir selama 7 jam, maka total biaya parkir yang harus dibayarkan adalah ...',
  NULL,
  '{"A":"Rp16.000,00","B":"Rp17.500,00","C":"Rp18.500,00","D":"Rp19.000,00","E":"Rp20.500,00"}'::jsonb,
  'C',
  '* **Langkah Penyelesaian:**
  * Biaya 2 jam pertama = $\text{Rp}6.000{,}00$
  * Total durasi parkir = 7 jam
  * Sisa waktu parkir = $7 - 2 = 5\text{ jam}$
  * Biaya 5 jam berikutnya:
    $$5 \times \text{Rp}2.500{,}00 = \text{Rp}12.500{,}00$$
  * Total biaya parkir:
    $$\text{Rp}6.000{,}00 + \text{Rp}12.500{,}00 = \text{Rp}18.500{,}00$$',
  NULL,
  'published'
),
(
  'part-27',
  45,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Sekelompok gajah menghabiskan satu gudang stok pakan. Dengan 4 ekor gajah, stok pakan tersebut habis dalam waktu 30 hari.

| $A$ | $B$ |
| :---: | :---: |
| Waktu yang diperlukan jika jumlah gajah bertambah menjadi 6 ekor untuk menghabiskan stok pakan yang sama (hari) | 22 |

Tentukanlah hubungan antara $A$ dan $B$ yang benar ...',
  NULL,
  '{"A":"$2A = B$","B":"$2A < B$","C":"$3A > 2B$","D":"$4A < 3B$","E":"$2A > 3B$"}'::jsonb,
  'C',
  '* **Langkah Penyelesaian:**
  * Ini merupakan masalah **perbandingan berbalik nilai**:

    $$\text{Banyak Gajah} \times \text{Waktu} = \text{Konstanta}$$

    $$4 \times 30 = 6 \times A$$

    $$A = \frac{4 \times 30}{6} = 4 \times 5 = 20\text{ hari}$$

  * Nilai $B = 22$. Rasio $A : B = 20 : 22 = 10 : 11$.
  * Uji pilihan jawaban:
    * **Opsi A (SALAH):** $2A = B \implies 2(10) = 11 \iff 20 = 11$
    * **Opsi B (SALAH):** $2A < B \implies 2(10) < 11 \iff 20 < 11$
    * **Opsi C (BENAR):** $3A > 2B \implies 3(10) > 2(11) \iff 30 > 22$ (atau $3(20) > 2(22) \iff 60 > 44$)
    * **Opsi D (SALAH):** $4A < 3B \implies 4(10) < 3(11) \iff 40 < 33$
    * **Opsi E (SALAH):** $2A > 3B \implies 2(10) > 3(11) \iff 20 > 33$',
  NULL,
  'published'
),
(
  'part-27',
  46,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Sebuah mesin dapat menyelesaikan 24 unit produk dalam waktu 3 jam secara efektif. Mesin tersebut kemudian bekerja selama 7,5 jam, namun 30 menit pertama digunakan untuk pemanasan sehingga belum menghasilkan produk. Jika kecepatan kerja mesin tetap, berapa jumlah unit produk yang dapat diselesaikan mesin tersebut?',
  NULL,
  '{"A":"48 unit","B":"54 unit","C":"56 unit","D":"60 unit","E":"62 unit"}'::jsonb,
  'C',
  '* **Langkah Penyelesaian:**
  * Waktu kerja efektif = $7{,}5\text{ jam} - 30\text{ menit} = 7{,}5 - 0{,}5 = 7\text{ jam}$.
  * Menggunakan **perbandingan senilai**:

    $$\frac{\text{Produk}_1}{\text{Produk}_2} = \frac{\text{Waktu}_1}{\text{Waktu}_2}$$

    $$\frac{24}{x} = \frac{3}{7}$$

    $$\frac{8}{x} = \frac{1}{7} \implies x = 8 \times 7 = 56\text{ unit}$$',
  NULL,
  'published'
),
(
  'part-27',
  47,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Sebuah proyek perbaikan jalan direncanakan selesai dalam 90 hari oleh 40 pekerja. Pada hari kerja ke-19, sebanyak 8 pekerja harus dipindahkan ke proyek lain. Dengan produktivitas pekerja tetap sama, berapa tambahan hari yang diperlukan agar proyek tersebut dapat diselesaikan?',
  NULL,
  '{"A":"12 hari","B":"15 hari","C":"18 hari","D":"20 hari","E":"24 hari"}'::jsonb,
  'C',
  '* **Langkah Penyelesaian:**
  * Total beban kerja rencana:
    $$\text{Tenaga} \times \text{Waktu} = 40 \times 90 = 3600\text{ hari-orang}$$
  * Telah dikerjakan selama 18 hari penuh oleh 40 orang:
    $$40 \times 18 = 720\text{ hari-orang}$$
  * Sisa beban kerja:
    $$3600 - 720 = 2880\text{ hari-orang}$$
  * Sisa tenaga kerja setelah 8 orang pindah:
    $$40 - 8 = 32\text{ orang}$$
  * Waktu yang dibutuhkan sisa pekerja untuk menyelesaikan sisa proyek:
    $$\text{Waktu riil} = \frac{2880}{32} = 90\text{ hari}$$
  * Sisa hari menurut jadwal awal:
    $$90 - 18 = 72\text{ hari}$$
  * Tambahan hari ($h$):
    $$h = 90 - 72 = 18\text{ hari}$$',
  NULL,
  'published'
),
(
  'part-27',
  48,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Andi merencanakan perjalanan sejauh 350 km yang harus selesai dalam waktu 5 jam. Di tengah perjalanan, Andi ingin mampir di rumah sahabatnya selama 90 menit. Agar tetap tiba tepat waktu, berapa kecepatan rata-rata kendaraan Andi saat berjalan?',
  NULL,
  '{"A":"80 km/jam","B":"85 km/jam","C":"90 km/jam","D":"100 km/jam","E":"105 km/jam"}'::jsonb,
  'D',
  '* **Langkah Penyelesaian:**
  * Waktu total yang direncanakan = $5\text{ jam} = 300\text{ menit}$.
  * Kecepatan rencana tanpa istirahat:
    $$v_{\text{awal}} = \frac{350}{5} = 70\text{ km/jam}$$
  * Waktu efektif berjalan setelah istirahat:
    $$t_{\text{efektif}} = 300 - 90 = 210\text{ menit} = \frac{210}{60}\text{ jam} = 3{,}5\text{ jam}$$
  * Kecepatan yang diperlukan:
    $$v = \frac{350\text{ km}}{3{,}5\text{ jam}} = 100\text{ km/jam}$$',
  NULL,
  'published'
),
(
  'part-27',
  49,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Sebanyak 6 pekerja dapat membangun 3 rumah dalam waktu 15 hari. Berapa banyak rumah yang dapat dibangun oleh 9 pekerja dalam waktu 20 hari, dengan tingkat produktivitas yang sama?',
  NULL,
  '{"A":"5 rumah","B":"6 rumah","C":"7 rumah","D":"8 rumah","E":"9 rumah"}'::jsonb,
  'B',
  '* **Langkah Penyelesaian:**
  * Hubungan pekerja ($P$), waktu ($W$), dan hasil ($H$):

    $$\frac{P_1 \times W_1}{H_1} = \frac{P_2 \times W_2}{H_2}$$

    $$\frac{6 \times 15}{3} = \frac{9 \times 20}{x}$$

    $$\frac{90}{3} = \frac{180}{x}$$

    $$30 = \frac{180}{x} \implies x = \frac{180}{30} = 6\text{ rumah}$$',
  NULL,
  'published'
),
(
  'part-27',
  50,
  'TIU',
  'Deret Angka',
  'sedang',
  'Tentukan bilangan berikutnya dari deret:

$$
16,\ 12,\ 60,\ 55,\ 275,\ \dots
$$',
  NULL,
  '{"A":"271","B":"270","C":"269","D":"268","E":"267"}'::jsonb,
  'C',
  '* **Pola Deret:**
  * $16 - 4 = 12$
  * $12 \times 5 = 60$
  * $60 - 5 = 55$
  * $55 \times 5 = 275$
  * $275 - 6 = \mathbf{269}$
* Operasi pola bergantian: $-4$, $\times 5$, $-5$, $\times 5$, $-6$.',
  NULL,
  'published'
),
(
  'part-27',
  51,
  'TIU',
  'Deret Angka',
  'sedang',
  'Tentukan bilangan berikutnya dari deret:

$$
2,\ 5,\ 10,\ 17,\ 26,\ 37,\ \dots
$$',
  NULL,
  '{"A":"48","B":"49","C":"50","D":"51","E":"52"}'::jsonb,
  'C',
  '* **Pola Deret:**
  * $2 + 3 = 5$
  * $5 + 5 = 10$
  * $10 + 7 = 17$
  * $17 + 9 = 26$
  * $26 + 11 = 37$
  * $37 + 13 = \mathbf{50}$
* Pola penambahan selalu bertambah bilangan ganjil berurutan ($+3, +5, +7, +9, +11, +13$). Alternatif pola: $n^2 + 1$ untuk $n = 1, 2, 3, 4, 5, 6, 7 \implies 7^2 + 1 = 50$.',
  NULL,
  'published'
),
(
  'part-27',
  52,
  'TIU',
  'Deret Angka',
  'sedang',
  'Tentukan nilai yang hilang dari deret:

$$
120,\ 24,\ 6,\ \dots,\ 1,\ 1
$$',
  NULL,
  '{"A":"1","B":"2","C":"3","D":"4","E":"5"}'::jsonb,
  'B',
  '* **Pola Deret:**
  * $120 \div 5 = 24$
  * $24 \div 4 = 6$
  * $6 \div 3 = \mathbf{2}$
  * $2 \div 2 = 1$
  * $1 \div 1 = 1$
* Pola pembagian mundur dari $5, 4, 3, 2, 1$.',
  NULL,
  'published'
),
(
  'part-27',
  53,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Perhatikan tabel hasil ujian berikut:

| Nama | Nilai | Waktu Mengerjakan (Menit) |
| :--- | :---: | :---: |
| Aziz | 84 | 70 |
| Deza | 90 | 80 |
| Erlan | 84 | 65 |
| Rafi | 75 | 60 |

Tentukan urutan peserta berdasarkan nilai tertinggi ke terendah. Jika terdapat nilai yang sama, maka urutkan berdasarkan waktu mengerjakan yang lebih cepat terlebih dahulu.',
  NULL,
  '{"A":"Deza – Aziz – Erlan – Rafi","B":"Deza – Erlan – Aziz – Rafi","C":"Erlan – Deza – Aziz – Rafi","D":"Deza – Erlan – Rafi – Aziz","E":"Erlan – Aziz – Deza – Rafi"}'::jsonb,
  'B',
  '* **Penjelasan:**
  1. Nilai tertinggi peringkat 1: Deza (90).
  2. Nilai 84 ada dua orang (Aziz dan Erlan). Waktu pengerjaan Erlan (65 menit) lebih cepat dari Aziz (70 menit), sehingga Erlan menempati urutan ke-2 dan Aziz ke-3.
  3. Nilai terendah peringkat 4: Rafi (75).
  * **Urutan lengkap:** Deza – Erlan – Aziz – Rafi.',
  NULL,
  'published'
),
(
  'part-27',
  54,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Affan, Miko, Raza, Haikal, Fella, Syifa, Lova, dan Salma sedang berdiskusi dalam sebuah rapat dan duduk mengelilingi meja bundar.

1. Affan duduk tepat di sebelah kiri Miko.
2. Fella duduk berhadapan dengan Affan.
3. Raza duduk di antara Haikal dan Syifa.
4. Lova duduk dua kursi dari Miko (ada satu orang di antara mereka).

Siapakah yang duduk berhadapan dengan Raza?',
  NULL,
  '{"A":"Affan","B":"Salma","C":"Fella","D":"Lova","E":"Miko"}'::jsonb,
  'B',
  '* **Penjelasan:**
  * Terdapat 8 posisi kursi mengelilingi meja bundar.
  * Tetapkan posisi Affan di selatan (bawah) dan Miko di tenggara (sehingga Affan tepat di kiri pandangan keluar meja).
  * Fella duduk tepat berhadapan dengan Affan $\rightarrow$ Fella di utara (atas).
  * Lova berada dua kursi dari Miko $\rightarrow$ Lova berada di timur laut.
  * Raza berada di antara Haikal dan Syifa $\rightarrow$ kelompok tiga kursi berurutan di sisi barat (Raza di posisi barat murni, diapit Syifa dan Haikal).
  * Kursi yang tersisa tepat berhadapan dengan Raza (arah timur) adalah milik **Salma**.',
  NULL,
  'published'
),
(
  'part-27',
  55,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Dalam sebuah keluarga, ayah, ibu, serta dua anaknya Philo dan Nico masing-masing menyukai olahraga. Ayah menyukai semua olahraga yang menggunakan bola. Ibu menyukai renang dan olahraga atletik. Philo menyukai olahraga renang, futsal, dan badminton. Sedangkan Nico menyukai badminton dan basket. Berdasarkan informasi tersebut, siapa saja yang menyukai olahraga futsal?',
  NULL,
  '{"A":"Ayah dan Philo","B":"Nico dan Philo","C":"Ayah dan Nico","D":"Ibu dan Philo","E":"Ibu dan Nico"}'::jsonb,
  'A',
  '* **Penjelasan:**
  * Olahraga futsal adalah jenis olahraga beregu yang menggunakan bola. Oleh karena Ayah menyukai semua olahraga yang memakai bola, Ayah menyukai futsal.
  * Philo secara eksplisit disebutkan menyukai futsal.
  * Nico hanya menyukai badminton dan basket.
  * Jadi, yang menyukai futsal adalah **Ayah dan Philo**.',
  NULL,
  'published'
),
(
  'part-27',
  56,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Seorang pegawai bernama Raka ingin pergi dari Kota P menuju Kota Z.
* Dari Kota P, Raka dapat menuju Kota Q atau Kota R.
* Jika Raka memilih menuju Kota Q, ia dapat melanjutkan ke Kota S atau Kota T.
* Dari Kota S, Raka dapat menuju Kota W, sedangkan dari Kota T, Raka dapat menuju Kota U.
* Kota W terhubung ke Kota V, dan Kota V terhubung langsung ke Kota Z. Sementara itu, Kota U terhubung langsung ke Kota Z.
* Jika Raka memilih menuju Kota R, ia dapat melanjutkan ke Kota X atau Kota Y. Kota X terhubung ke Kota V, sedangkan Kota Y terhubung langsung ke Kota Z.

Jika Raka harus singgah terlebih dahulu di Kota V sebelum menuju Kota Z dan memilih rute dengan jumlah kota paling sedikit, rute manakah yang dapat ia tempuh?',
  NULL,
  '{"A":"P - R - Y - Z","B":"P - R - X - V - Z","C":"P - Q - S - W - V - Z","D":"P - Q - T - U - Z","E":"R - X - V - Z"}'::jsonb,
  'B',
  '* **Penjelasan:**
  Daftar semua rute yang melalui Kota V dari Kota P ke Kota Z:
  1. Rute via Q: P - Q - S - W - V - Z (melewati 6 kota).
  2. Rute via R: P - R - X - V - Z (melewati 5 kota).
  * Rute dengan jumlah kota paling sedikit dan melalui Kota V adalah **P - R - X - V - Z**.',
  NULL,
  'published'
),
(
  'part-27',
  57,
  'TIU',
  'Figural',
  'sedang',
  'Perhatikan gambar pola serial 4 bingkai berurutan dan tentukan gambar ke-(5)!

* **Pola yang Diketahui:**
  * Kotak persegi bagian kiri-atas (terdiri atas 4 elemen: lingkaran putih, matriks titik-titik, bentuk setengah lingkaran, dan ring lingkaran) **bersifat tetap dan posisinya tidak berubah** dari gambar (1) sampai (4).
  * Objek-objek yang berada di sisi bawah dan sisi kanan saling bergeser secara siklik berlawanan arah jarum jam (*counter-clockwise*).
* Berdasarkan pola tersebut, gambar yang tepat untuk posisi ke-(5) adalah:',
  '/gambar/part27_soal_57.png',
  '{"A":"Gambar A","B":"Gambar B","C":"Gambar C","D":"Gambar D","E":"Gambar E"}'::jsonb,
  'A',
  '* **Visual Pembahasan:**

* **Penjelasan:**
  * Sisi kiri-atas tetap mempertahankan pola 4 elemen yang statis.
  * Pergeseran elemen tepi bawah dan tepi kanan 1 langkah berlawanan arah jarum jam menghasilkan susunan bentuk yang identik dengan opsi **A**.',
  '/gambar/part27_pembahasan_57.png',
  'published'
),
(
  'part-27',
  58,
  'TIU',
  'Figural',
  'sedang',
  'Perhatikan serial gambar (1) hingga (5) untuk menentukan kelanjutan gambar (6)!

* Terdapat 4 objek di dalam setiap bingkai yang membentuk pola lompat/selang-seling antara suku ganjil (1, 3, 5) dan suku genap (2, 4, 6):
  * **Objek 1 (kiri atas):** Berputar berlawanan arah jarum jam sebesar $90^\circ$ dan perubahan warnanya bergantian (hitam/putih).
  * **Objek 2 (kanan atas):** Memiliki pola perubahan warna hitam/putih.
  * **Objek 3 (kiri bawah):** Mengikuti rotasi dan siklus perubahan warna.
  * **Objek 4 (kanan bawah):** Berputar searah jarum jam sebesar $90^\circ$ serta berubah warna pada setiap langkahnya.

Tentukan gambar ke-(6) yang tepat!',
  '/gambar/part27_soal_58.png',
  '{"A":"Gambar A","B":"Gambar B","C":"Gambar C","D":"Gambar D","E":"Gambar E"}'::jsonb,
  'E',
  '* **Visual Pembahasan:**

* **Penjelasan:**
  * Gambar (6) berpatokan dari pola suku genap (2) dan (4).
  * Objek kiri atas (lidah api putih) diputar $90^\circ$ berlawanan arah jarum jam menjadi menghadap ke bawah dengan warna putih.
  * Objek kanan atas tetap berwarna hitam.
  * Objek kiri bawah diputar searah jarum jam $90^\circ$ dan berubah menjadi hitam.
  * Objek kanan bawah berubah warna menjadi putih.
  * Kombinasi lengkap tersebut tepat berada pada opsi **E**.',
  '/gambar/part27_pembahasan_58.png',
  'published'
),
(
  'part-27',
  59,
  'TIU',
  'Figural',
  'sedang',
  'Perhatikan gambar analogi bentuk berikut:

Diberikan analogi bentuk:

$$
\text{Gambar (1)} : \text{Gambar (2)} = \text{Gambar (3)} : \text{Gambar (4)}
$$

* **Pola Transformasi Gambar (3) ke Gambar (4):**
  * Objek utama (tengah-kanan): Dicerminkan secara horizontal (sumbu vertikal/balik kiri-kanan).
  * Objek atas-kiri: Sebagian objeknya berkurang $\frac{1}{2}$ bagian kanannya.
  * Objek tengah-kiri: Diputar sebesar $90^\circ$ searah jarum jam.
  * Objek bawah-kiri: Bentuk dan orientasinya tetap statis.

Berdasarkan aturan analogi yang sama dari gambar (1) ke gambar (2), manakah gambar yang mengisi tanda tanya (?) ...',
  '/gambar/part27_soal_59.png',
  '{"A":"A","B":"B","C":"C","D":"D","E":"E"}'::jsonb,
  'C',
  '* **Visual Pembahasan:**

* **Penjelasan:**
  * Bunga mekar dicerminkan horizontal (kelopak dan daun berbalik arah).
  * Susunan tumpukan segitiga di atas kiri berkurang separuh bagian kanannya sehingga membentuk separuh deret segitiga.
  * Bentuk tangga di tengah kiri diputar $90^\circ$ searah jarum jam.
  * Bentuk wajik/berlian hitam di kiri bawah tetap tidak berubah.
  * Bentuk yang memenuhi keempat karakteristik ini adalah **C**.',
  '/gambar/part27_pembahasan_59.png',
  'published'
),
(
  'part-27',
  60,
  'TIU',
  'Figural',
  'sedang',
  'Perhatikan gambar analogi bingkai berikut:

Diberikan pasangan analogi bingkai:

$$
\text{Gambar (1)} : \text{Gambar (2)} = \text{Gambar (3)} : \text{Gambar (4)}
$$

Untuk mencari Gambar (3) dari Gambar (4), kita membalik arah transformasinya (sebagaimana pola Gambar (2) ke Gambar (1)):
* **Objek 1 (tumbuhan/pohon):** Dicerminkan secara horizontal.
* **Objek 2 (bintang/persegi):** Elemen luar berpindah ke sudut kiri bawah dan membesar, sedangkan elemen bintang tetap di kanan atas.
* **Objek 3 (bentuk bebas):** Mengalami pembalikan warna (putih menjadi hitam solid).

Manakah gambar yang tepat untuk mengisi posisi tanda tanya (?) pada Gambar (3)?',
  '/gambar/part27_soal_60.png',
  '{"A":"A","B":"B","C":"C","D":"D","E":"E"}'::jsonb,
  'B',
  '* **Visual Pembahasan:**

* **Penjelasan:**
  * Pohon kelapa tegak lurus dengan daun menghadap ke kiri dicerminkan.
  * Objek kotak luar pindah ke sudut kiri bawah sebagai kotak putih kosong.
  * Objek bercak di kanan bawah berubah warna menjadi hitam penuh.
  * Gambar yang tepat memenuhi aturan ini adalah opsi **B**.',
  '/gambar/part27_pembahasan_60.png',
  'published'
),
(
  'part-27',
  61,
  'TIU',
  'Figural',
  'sedang',
  'Perhatikan kelima gambar pada opsi A, B, C, D, dan E! Manakah gambar yang **paling berbeda (tidak sekelompok)** dari yang lainnya?',
  '/gambar/part27_soal_61.png',
  '{"A":"Gambar A","B":"Gambar B","C":"Gambar C","D":"Gambar D","E":"Gambar E"}'::jsonb,
  'D',
  '* **Visual Pembahasan:**

* **Penjelasan:**
  * Semua opsi (A, B, C, E) memiliki variasi 4 sub-pola kuadran yang sama dan hanya mengalami translasi posisi atau rotasi.
  * Pada gambar **D**, terdapat satu bentuk objek kelopak/geometri yang secara intrinsik berbeda orientasi lengkungannya dan tidak dapat diperoleh dari rotasi atau refleksi elemen dasar gambar lainnya.',
  '/gambar/part27_pembahasan_61.png',
  'published'
),
(
  'part-27',
  62,
  'TIU',
  'Figural',
  'sedang',
  'Perhatikan kelima gambar pada opsi A, B, C, D, dan E! Manakah gambar yang berbeda polanya dari yang lain?',
  '/gambar/part27_soal_62.png',
  '{"A":"Gambar A","B":"Gambar B","C":"Gambar C","D":"Gambar D","E":"Gambar E"}'::jsonb,
  'C',
  '* **Visual Pembahasan:**

* **Penjelasan:**
  * Objek gambar pada opsi A, B, D, dan E merupakan bangun yang kongruen dan identik satu sama lain melalui **rotasi 2D** pada bidang datar:
    * Opsi B didapat dengan memutar opsi A sebesar $90^\circ$.
    * Opsi D didapat dengan memutar sebesar $180^\circ$.
    * Opsi E didapat dengan memutar sebesar $270^\circ$.
  * Pada opsi **C**, panah lengkung dan orientasi elemen bintang luar tidak dapat dihasilkan dari rotasi biasa (memerlukan pencerminan/refleksi terbalik). Maka objek yang tidak sama adalah **C**.',
  '/gambar/part27_pembahasan_62.png',
  'published'
),
(
  'part-27',
  63,
  'TIU',
  'Figural',
  'sedang',
  'Perhatikan matriks figural berukuran $3 \times 3$ berikut! Setiap kotak berisi 4 simbol unik yang terbagi menjadi kelompok-kelompok tertentu:

* Objek yang ditandai memiliki kelompok rotasi:
  * Kelompok objek yang sama pada sel tertentu mengalami rotasi bersama sebesar $90^\circ$ searah jarum jam.
  * Kelompok lainnya mengalami rotasi bersama sebesar $90^\circ$ berlawanan arah jarum jam.
* Tentukan gambar yang tepat untuk menggantikan tanda tanya (?) pada baris ke-3 kolom ke-2!',
  '/gambar/part27_soal_63.png',
  '{"A":"A","B":"B","C":"C","D":"D","E":"E"}'::jsonb,
  'C',
  '* **Visual Pembahasan:**

* **Penjelasan:**
  * Elemen pada baris ketiga kolom kedua merupakan rotasi dari kelompok bentuk kapsul/segitiga/jamur/organik.
  * Melalui rotasi $90^\circ$ berlawanan arah jarum jam dari bentuk pasangannya, posisi segitiga berada di pojok kiri atas, kapsul di pojok kiri bawah, dan jamur hitam berada di kanan bawah.
  * Gambar yang paling tepat adalah **C**.',
  '/gambar/part27_pembahasan_63.png',
  'published'
),
(
  'part-27',
  64,
  'TIU',
  'Figural',
  'sedang',
  'Perhatikan pola baris demi baris pada matriks $3 \times 3$:

* **Aturan Gerak per Langkah Horisontal:**
  * Setiap objek di **kolom 1** bergeser 1 langkah ke **bawah** secara bersiklus.
  * Dua objek di **kolom 2** bergeser 1 langkah ke **bawah** (saling bertukar tempat).
  * Setiap objek di **kolom 3** bergeser 1 langkah ke **atas** secara bersiklus.

Terapkan aturan gerak tersebut dari baris ke-3 kolom ke-1 menuju baris ke-3 kolom ke-2 (?)!',
  '/gambar/part27_soal_64.png',
  '{"A":"A","B":"B","C":"C","D":"D","E":"E"}'::jsonb,
  'B',
  '* **Visual Pembahasan:**

* **Penjelasan:**
  * Menggeser elemen-elemen di kolom 1 ke bawah, menukar posisi elemen kolom 2 ke bawah, serta menaikkan elemen kolom 3 ke atas menghasilkan konfigurasi gambar persis pada opsi **B**.',
  '/gambar/part27_pembahasan_64.png',
  'published'
),
(
  'part-27',
  65,
  'TIU',
  'Figural',
  'sedang',
  'Perhatikan matriks $3 \times 3$ yang memuat ornamen busur lingkaran berpusat:

* **Aturan Gerak per Baris:**
  * Busur lingkaran konsentris di area tertentu berputar sebesar $90^\circ$ searah jarum jam (*clockwise*).
  * Busur lingkaran di area sudut lainnya berputar sebesar $90^\circ$ berlawanan arah jarum jam (*counter-clockwise*).
  * Simbol tanda silang ($X$) dan segitiga kecil di sudut tetap berada pada posisi dasarnya.

Tentukan gambar yang tepat untuk mengisi posisi tanda tanya (?) pada baris ke-3 kolom ke-2!',
  '/gambar/part27_soal_65.png',
  '{"A":"A","B":"B","C":"C","D":"D","E":"E"}'::jsonb,
  'D',
  '* **Visual Pembahasan:**

* **Penjelasan:**
  * Melakukan rotasi sebesar $90^\circ$ searah jarum jam pada busur lingkaran bertingkat di kanan atas serta rotasi $90^\circ$ berlawanan arah jarum jam pada busur lingkaran di kiri bawah menghasilkan bukaan celah lingkaran yang menghadap ke bawah dan ke kanan.
  * Konfigurasi yang tepat sesuai kunci pembahasan adalah opsi **D**.',
  '/gambar/part27_pembahasan_65.png',
  'published'
)
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
