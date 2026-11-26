-- Migration 011: Seed 1096 Soal SKD CPNS dari Sumber Web
-- TWK: 236 soal, TIU: 565 soal, TKP: 295 soal
-- Termasuk 126 soal figural bergambar + 7 soal figural teks.

-- Hapus soal web lama jika ada (idempotent)
DELETE FROM exam_questions WHERE question_id IN (SELECT id FROM questions WHERE sumber = 'web');
DELETE FROM attempt_answers WHERE question_id IN (SELECT id FROM questions WHERE sumber = 'web');
DELETE FROM questions WHERE sumber = 'web';

INSERT INTO questions (
  sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, kunci, pembahasan, pembahasan_gambar, skor_tkp, status
)
VALUES
(
  'web',
  1,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Sekelompok warga dari berbagai suku bergotong royong membersihkan lingkungan dan menolak meneruskan kabar provokatif yang memecah belah antarkelompok. Sikap ini paling tepat disebut...',
  NULL,
  '{"A":"Individualisme","B":"Nasionalisme","C":"Separatisme","D":"Primordialisme","E":"Chauvinisme"}'::jsonb,
  'B',
  'Mengutamakan persatuan dan kepentingan bangsa di atas golongan adalah nasionalisme. Chauvinisme berarti bangga berlebihan sambil merendahkan bangsa lain.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  2,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Organisasi modern pertama yang menandai Kebangkitan Nasional pada 20 Mei 1908 adalah...',
  NULL,
  '{"A":"Budi Utomo","B":"Taman Siswa","C":"Indische Partij","D":"Partai Nasional Indonesia","E":"Muhammadiyah"}'::jsonb,
  'A',
  'Budi Utomo berdiri 20 Mei 1908 dan harinya diperingati sebagai Hari Kebangkitan Nasional.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  3,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Kongres Pemuda II yang melahirkan Sumpah Pemuda berlangsung pada...',
  NULL,
  '{"A":"18 Agustus 1945","B":"17 Agustus 1945","C":"28 Oktober 1928","D":"20 Mei 1908","E":"1 Juni 1945"}'::jsonb,
  'C',
  'Sumpah Pemuda diikrarkan 28 Oktober 1928: satu tanah air, satu bangsa, satu bahasa persatuan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  4,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Seorang relawan menembus arus banjir untuk mengevakuasi warga di daerah lain tanpa bayaran, meski keselamatannya sendiri terancam. Semangat yang paling menonjol adalah....',
  NULL,
  '{"A":"Cinta tanah air semata","B":"Etnosentrisme","C":"Patriotisme","D":"Chauvinisme","E":"Primordialisme"}'::jsonb,
  'C',
  'Patriotisme adalah semangat rela berkorban dan berani demi bangsa dan sesama warga negara.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  5,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Seorang tokoh berkata, "Bangsa kita paling unggul di dunia, jadi tidak perlu belajar apa pun dari bangsa lain." Sikap ini paling tepat disebut....',
  NULL,
  '{"A":"Cinta tanah air","B":"Bela negara","C":"Nasionalisme","D":"Chauvinisme","E":"Patriotisme"}'::jsonb,
  'D',
  'Merasa bangsa sendiri paling unggul dan menutup diri dari bangsa lain adalah chauvinisme. Nasionalisme yang sehat tetap terbuka belajar dari luar.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  6,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Seorang pelatih tim nasional hanya memilih pemain dari satu suku karena yakin suku itu paling layak membela Indonesia, padahal ada pemain lain yang lebih berprestasi. Keyakinan ini paling tepat dikritik sebagai....',
  NULL,
  '{"A":"patriotisme yang sehat karena berorientasi pada kemenangan","B":"internasionalisme karena melampaui kepentingan daerah","C":"realisme kompetitif yang wajar dalam olahraga","D":"meritokrasi karena kesetiaan dinilai dari asal-usul","E":"etnosentrisme yang bertentangan dengan nasionalisme inklusif"}'::jsonb,
  'E',
  'Menilai kelayakan membela bangsa dari suku adalah etnosentrisme. Nasionalisme Indonesia inklusif dan menilai warga dari kemampuan, bukan asal-usul.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  7,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Sebuah ajakan di media sosial menuntut warga keturunan asing disingkirkan dari jabatan publik demi kemurnian bangsa. Penilaian yang paling tepat adalah....',
  NULL,
  '{"A":"sah, karena menjaga kemurnian identitas adalah tujuan nasionalisme","B":"keliru, karena nasionalisme Indonesia menjamin kesamaan hak semua warga negara","C":"sah, selama ajakan disampaikan dengan sopan dan damai","D":"sah, karena jabatan publik sebaiknya dipegang kelompok mayoritas","E":"keliru hanya bila ajakan itu disertai kekerasan fisik"}'::jsonb,
  'B',
  'Semua warga negara memiliki kedudukan yang sama. Ajakan diskriminatif tetap keliru walaupun disampaikan damai atau tanpa kekerasan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  8,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Seorang ASN pengadaan memilih produk dalam negeri yang spesifikasinya tidak memenuhi kebutuhan layanan dan harganya jauh lebih mahal, dengan alasan cinta produk sendiri. Sikap ini paling tepat dinilai sebagai....',
  NULL,
  '{"A":"nasionalisme ideal, karena pengorbanan anggaran adalah bukti cinta tanah air","B":"pelanggaran nasionalisme, karena produk impor selalu lebih unggul","C":"nasionalisme yang tidak rasional, karena produk dalam negeri tetap harus memenuhi spesifikasi, harga wajar, dan akuntabilitas","D":"sikap netral yang tidak berkaitan dengan nasionalisme","E":"patriotisme yang patut dicontoh seluruh ASN pengadaan"}'::jsonb,
  'C',
  'Keberpihakan pada produk dalam negeri sah bila memenuhi kebutuhan dan harga wajar. Tanpa itu, ia merugikan keuangan negara dan layanan publik.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  9,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Proklamasi 17 Agustus 1945 adalah awal perjuangan mewujudkan masyarakat yang maju, sejahtera, dan bebas dari ketertinggalan. Sikap generasi penerus yang paling selaras dengan cita-cita itu adalah....',
  NULL,
  '{"A":"meningkatkan prestasi akademik pribadi untuk bersaing secara global","B":"berkontribusi meningkatkan kualitas pendidikan dan kesejahteraan masyarakat","C":"melestarikan kebudayaan daerah sebagai bagian identitas nasional","D":"mengikuti upacara bendera secara rutin dengan khidmat","E":"mengembangkan kemampuan bela diri untuk menghadapi ancaman terhadap bangsa"}'::jsonb,
  'B',
  'Kata kunci soal: sejahtera dan bebas ketertinggalan. Yang paling langsung adalah kontribusi bagi pendidikan dan kesejahteraan masyarakat.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  10,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Sutan Sjahrir menjabat Perdana Menteri pada awal kemerdekaan dan memimpin diplomasi dengan Belanda. Jasanya yang paling tepat dikaitkan dengan....',
  NULL,
  '{"A":"Persetujuan Renville yang menetapkan garis Van Mook","B":"penyelenggaraan Konferensi Asia Afrika di Bandung","C":"perundingan yang menghasilkan pengakuan de facto Belanda atas Jawa, Madura, dan Sumatra","D":"Perjanjian Roem-Royen yang membuka jalan kembalinya pemerintahan ke Yogyakarta","E":"penyerahan kedaulatan melalui Konferensi Meja Bundar"}'::jsonb,
  'C',
  'Perundingan Linggarjati pada masa Sjahrir mengakui secara de facto Jawa, Madura, dan Sumatra.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  11,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Prasasti Yupa yang menjadi bukti kerajaan Hindu tertua di Indonesia berasal dari kerajaan...',
  NULL,
  '{"A":"Tarumanegara","B":"Kutai","C":"Sriwijaya","D":"Mataram Kuno","E":"Majapahit"}'::jsonb,
  'B',
  'Prasasti Yupa ditemukan di Kalimantan Timur dan menyebut Raja Mulawarman dari Kerajaan Kutai.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  12,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Tokoh Majapahit yang bersumpah menyatukan Nusantara melalui Sumpah Palapa adalah...',
  NULL,
  '{"A":"Hayam Wuruk","B":"Gajah Mada","C":"Mpu Prapanca","D":"Mpu Tantular","E":"Raden Wijaya"}'::jsonb,
  'B',
  'Sumpah Palapa diucapkan Mahapatih Gajah Mada pada masa pemerintahan Hayam Wuruk.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  13,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Presiden Soeharto menyatakan berhenti pada 21 Mei 1998 dan digantikan oleh...',
  NULL,
  '{"A":"Try Sutrisno","B":"B.J. Habibie","C":"Abdurrahman Wahid","D":"Megawati Soekarnoputri","E":"Harmoko"}'::jsonb,
  'B',
  'Wakil Presiden B.J. Habibie dilantik menjadi presiden setelah Soeharto mundur.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  14,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Rumusan ikrar ketiga Sumpah Pemuda 28 Oktober 1928 yang benar adalah....',
  NULL,
  '{"A":"berbahasa satu, yaitu bahasa Indonesia","B":"menjunjung bahasa persatuan, bahasa Indonesia","C":"menjunjung bahasa kesatuan, yaitu bahasa Indonesia","D":"menjunjung bahasa persatuan, bahasa Melayu","E":"menjunjung bahasa ibu, bahasa Indonesia"}'::jsonb,
  'B',
  'Teks aslinya: "mendjoendjoeng bahasa persatoean, bahasa Indonesia". Ikrar pertama "bertumpah darah satu" dan kedua "berbangsa satu"; hanya ikrar ketiga yang memakai kata menjunjung.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  15,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Konsep naskah Proklamasi Kemerdekaan Indonesia ditulis tangan oleh... dan diketik oleh....',
  NULL,
  '{"A":"Mohammad Hatta; Soekarni","B":"Soekarno; Sayuti Melik","C":"Ahmad Soebardjo; Sayuti Melik","D":"Soekarno; B.M. Diah","E":"Mohammad Hatta; Sayuti Melik"}'::jsonb,
  'B',
  'Konsep ditulis tangan Soekarno di rumah Laksamana Maeda (Hatta dan Soebardjo ikut menyusun gagasan), lalu diketik Sayuti Melik dengan perubahan seperlunya.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  16,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Organisasi yang dikenal sebagai partai politik pertama di Hindia Belanda dengan semboyan "Hindia untuk orang Hindia" adalah....',
  NULL,
  '{"A":"Budi Utomo","B":"Sarekat Islam","C":"Indische Partij","D":"Perhimpunan Indonesia","E":"Partai Nasional Indonesia"}'::jsonb,
  'C',
  'Indische Partij (1912) didirikan Tiga Serangkai: E.F.E. Douwes Dekker, Cipto Mangunkusumo, dan Suwardi Suryaningrat (Ki Hajar Dewantara).',
  NULL,
  NULL,
  'published'
),
(
  'web',
  17,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Gagasan politik luar negeri "mendayung di antara dua karang" disampaikan oleh... pada tahun....',
  NULL,
  '{"A":"Mohammad Hatta; 1948","B":"Soekarno; 1955","C":"Sutan Sjahrir; 1946","D":"Mohammad Hatta; 1955","E":"Soekarno; 1948"}'::jsonb,
  'A',
  'Hatta menyampaikannya pada 1948 di hadapan BP KNIP sebagai dasar politik luar negeri bebas aktif.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  18,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Sebuah gerakan daring menyerukan agar seluruh kerja sama dengan pihak asing diputus dan setiap orang yang memakai produk luar negeri disebut pengkhianat bangsa, dengan dalih membela kepentingan nasional. Menurut nilai nasionalisme Indonesia, gerakan itu....',
  NULL,
  '{"A":"sejalan dengan nasionalisme, karena kemandirian bangsa hanya terwujud jika seluruh hubungan dengan pihak asing diputus","B":"mengarah pada chauvinisme, karena nasionalisme Indonesia tetap menghargai kerja sama setara yang saling menguntungkan","C":"sejalan dengan nasionalisme, karena kesetiaan pada bangsa diukur dari penolakan terhadap segala hal dari luar negeri","D":"bertentangan dengan nasionalisme, karena mendahulukan produk dalam negeri bukan bagian dari nilai kebangsaan","E":"berada di luar wilayah nasionalisme, karena kerja sama dan pilihan produk hanyalah urusan pribadi setiap warga"}'::jsonb,
  'B',
  'Nasionalisme Indonesia bersifat terbuka: mencintai bangsa tanpa memusuhi bangsa lain (selaras sila ke-2 dan ke-3). Menuduh pengkhianat dan memutus semua hubungan adalah chauvinisme. Mendahulukan produk dalam negeri sendiri tidak dilarang, jadi opsi 4 keliru.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  19,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Pada penutupan Kongres Pemuda II tanggal 28 Oktober 1928, lagu "Indonesia Raya" pertama kali diperdengarkan di hadapan peserta kongres oleh W.R. Supratman dengan cara....',
  NULL,
  '{"A":"dinyanyikan bersama oleh seluruh peserta kongres dengan teks lengkap","B":"dimainkan secara instrumental dengan biola tanpa dinyanyikan syairnya","C":"dinyanyikan paduan suara pelajar dengan iringan piano","D":"diputar dari piringan hitam rekaman yang dibawa dari Bandung","E":"dinyanyikan sendiri oleh Supratman tanpa iringan alat musik apa pun"}'::jsonb,
  'B',
  'Supratman memperdengarkannya lewat gesekan biola tanpa syair, antara lain karena pengawasan ketat aparat kolonial terhadap kongres.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  20,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Deklarasi Djuanda tanggal 13 Desember 1957 menegaskan bahwa....',
  NULL,
  '{"A":"laut di antara dan di sekitar pulau-pulau Indonesia adalah bagian dari wilayah kedaulatan Indonesia, bukan laut bebas","B":"Indonesia berhak atas seluruh kekayaan alam di dasar laut hingga 200 mil dari garis pangkal kepulauan","C":"lebar laut wilayah Indonesia ditetapkan hanya tiga mil dari garis pantai setiap pulau besar maupun kecil","D":"Indonesia menguasai seluruh landas kontinen yang terbentang di kawasan Asia Tenggara hingga Samudra Pasifik","E":"pelayaran kapal asing di perairan antarpulau dilarang sepenuhnya dalam keadaan apa pun, termasuk lintas damai"}'::jsonb,
  'A',
  'Deklarasi Djuanda melahirkan asas negara kepulauan: laut antarpulau satu kesatuan wilayah. Diakui dunia lewat UNCLOS 1982 (diratifikasi UU No. 17/1985). Opsi 3 adalah aturan lama (Ordonansi 1939); ZEE 200 mil baru lahir dalam rezim UNCLOS.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  21,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Wawasan Nusantara adalah....',
  NULL,
  '{"A":"cara pandang bangsa Indonesia mengenai diri dan lingkungannya berdasarkan Pancasila dan UUD NRI 1945","B":"cara pandang bangsa Indonesia mengenai lingkungan global berdasarkan kepentingan ekonomi nasional","C":"cara pandang pemerintah terhadap wilayah laut berdasarkan hukum internasional","D":"cara pandang bangsa Indonesia mengenai kekuatan militernya berdasarkan Pancasila","E":"cara pandang bangsa Indonesia mengenai diri dan lingkungannya berdasarkan Sumpah Pemuda"}'::jsonb,
  'A',
  'Wawasan Nusantara: cara pandang bangsa tentang diri dan lingkungannya berlandaskan Pancasila dan UUD NRI 1945.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  22,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Ikrar kedua Sumpah Pemuda 28 Oktober 1928 berbunyi....',
  NULL,
  '{"A":"Kami putra dan putri Indonesia mengaku berbangsa satu, bangsa Indonesia","B":"Kami putra dan putri Indonesia mengaku bertanah air satu, tanah air Indonesia","C":"Kami putra dan putri Indonesia mengaku berbangsa satu, yaitu bangsa Melayu","D":"Kami putra dan putri Indonesia menjunjung bangsa persatuan, bangsa Indonesia","E":"Kami putra dan putri Indonesia berbangsa satu, bertanah air satu, dan berbahasa satu"}'::jsonb,
  'A',
  'Ikrar pertama bertumpah darah satu, kedua berbangsa satu, ketiga menjunjung bahasa persatuan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  23,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Tujuan negara pada alinea keempat Pembukaan UUD NRI 1945 adalah....',
  NULL,
  '{"A":"melindungi segenap bangsa dan seluruh tumpah darah Indonesia, memajukan kesejahteraan umum, mencerdaskan kehidupan bangsa, dan ikut melaksanakan ketertiban dunia","B":"melindungi segenap bangsa dan seluruh tumpah darah Indonesia, memajukan kesejahteraan umum, mencerdaskan kehidupan bangsa, dan ikut menjaga stabilitas kawasan Asia Tenggara","C":"melindungi segenap bangsa dan seluruh tumpah darah Indonesia, memajukan perekonomian nasional, mencerdaskan kehidupan bangsa, dan ikut melaksanakan ketertiban dunia","D":"melindungi segenap bangsa dan seluruh tumpah darah Indonesia, memajukan kesejahteraan umum, mencerdaskan kehidupan bangsa, dan menjadi pemimpin dunia","E":"mempertahankan kemerdekaan, memajukan kesejahteraan umum, mencerdaskan kehidupan bangsa, dan ikut melaksanakan ketertiban dunia"}'::jsonb,
  'A',
  'Empat tujuan negara pada alinea keempat tersusun persis seperti opsi pertama.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  24,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Tiga tuntutan rakyat (Tritura) pada 1966 adalah...',
  NULL,
  '{"A":"Bubarkan PKI, bersihkan kabinet dari unsur PKI, turunkan harga","B":"Bubarkan DPR, ganti presiden, naikkan upah","C":"Cabut Supersemar, bubarkan ABRI, turunkan pajak","D":"Adakan pemilu, bubarkan MPRS, turunkan harga","E":"Bubarkan PKI, adakan referendum, naikkan gaji"}'::jsonb,
  'A',
  'Tritura: bubarkan PKI, bersihkan kabinet dari unsur PKI, dan turunkan harga.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  25,
  'TWK',
  'Nasionalisme',
  'sedang',
  'Sistem Tanam Paksa (Cultuurstelsel) mulai diterapkan pada 1830 atas gagasan...',
  NULL,
  '{"A":"Daendels","B":"Raffles","C":"Van den Bosch","D":"Van Deventer","E":"Coen"}'::jsonb,
  'C',
  'Gubernur Jenderal Johannes van den Bosch menerapkan Tanam Paksa pada 1830. Van Deventer dikenal lewat Politik Etis.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  26,
  'TWK',
  'Integritas',
  'sedang',
  'Haji Agus Salim dikenal sebagai diplomat ulung yang menguasai banyak bahasa asing dan mewakili Indonesia di berbagai forum internasional. Ketika berkumpul dengan para diplomat Eropa yang berpenampilan necis, ia justru mengenakan jas sederhana dengan jahitan di beberapa bagian. Selama menjabat, ia beberapa kali berpindah rumah kontrakan sederhana bersama keluarganya.
Nilai integritas Haji Agus Salim yang patut diteladani adalah...',
  NULL,
  '{"A":"Menguasai banyak bahasa asing untuk kepentingan pergaulan dengan diplomat internasional","B":"Menyesuaikan gaya berpakaian dengan kebiasaan para diplomat di negara Eropa","C":"Mengutamakan kenyamanan pribadi dalam menjalankan berbagai tugas kenegaraan yang penting","D":"Menonjolkan penampilan berbeda agar mudah dikenali oleh diplomat negara lain","E":"Menjaga kesederhanaan hidup meski mengemban jabatan tinggi dalam pemerintahan negara"}'::jsonb,
  'E',
  'Godaan: gengsi di antara diplomat Eropa dan jabatan tinggi. Sikap tokoh: tetap sederhana. Menguasai bahasa asing benar tentang tokoh tapi itu kompetensi, bukan integritas.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  27,
  'TWK',
  'Integritas',
  'sedang',
  'Mohammad Hatta mengetahui lebih dahulu rencana kebijakan pemotongan nilai uang yang akan diumumkan pemerintah. Meski demikian, ia tidak memberitahukan hal itu kepada keluarganya maupun kerabat dekatnya. Akibatnya, tabungan istrinya yang lama dikumpulkan untuk membeli sebuah mesin jahit menjadi tidak lagi mencukupi.
Nilai integritas Mohammad Hatta yang tercermin dari peristiwa tersebut adalah...',
  NULL,
  '{"A":"Memanfaatkan informasi jabatan untuk melindungi kepentingan keuangan keluarganya sendiri","B":"Menunda pembelian barang karena harganya dianggap terlalu mahal pada saat itu","C":"Mempercayakan seluruh urusan keuangan rumah tangga kepada sang istri","D":"Menjaga kerahasiaan kebijakan negara meski merugikan kepentingan pribadi keluarganya","E":"Mengutamakan penghematan belanja rumah tangga sebagai gaya hidup keluarganya"}'::jsonb,
  'D',
  'Kata meski demikian menandai godaan: menyelamatkan keluarga. Hatta memilih menjaga kerahasiaan kebijakan negara. Opsi a melanggar amanah, b, c, dan e tidak sesuai inti kisah.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  28,
  'TWK',
  'Integritas',
  'sedang',
  'Manakah pemberian berikut yang paling jelas wajib dilaporkan sebagai gratifikasi?',
  NULL,
  '{"A":"Honor resmi sebagai narasumber seminar sesuai ketentuan instansi dan disetujui atasan","B":"Tunjangan kinerja yang diterima sesuai peraturan","C":"Uang hari raya dari penyedia barang yang sedang berkontrak dengan unit tempat Anda bekerja","D":"Hadiah ulang tahun dari orang tua kandung Anda","E":"Hadiah pernikahan dalam batas wajar dari sepupu Anda yang tidak berurusan dengan jabatan Anda"}'::jsonb,
  'C',
  'Gratifikasi wajib lapor bila berhubungan dengan jabatan dan berpotensi memengaruhi keputusan. Penyedia yang sedang berkontrak jelas punya kepentingan. Yang lain adalah penghasilan sah atau hubungan keluarga tanpa kaitan jabatan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  29,
  'TWK',
  'Integritas',
  'sedang',
  'Manakah pasangan kasus dan nilai antikorupsi yang TEPAT?',
  NULL,
  '{"A":"Melaporkan penyimpangan atasan walau berisiko dimutasi: Berani","B":"Menolak titipan berkas dari kerabat pejabat: Peduli","C":"Hidup sesuai penghasilan resmi meski rekan hidup mewah: Disiplin","D":"Menyelesaikan tugas dengan kemampuan sendiri tanpa menyalin hasil rekan: Adil","E":"Menyelesaikan laporan sebelum tenggat: Peduli"}'::jsonb,
  'A',
  'Menolak titipan = Adil. Mengerjakan sendiri = Mandiri. Hidup sesuai penghasilan = Sederhana. Menyelesaikan sebelum tenggat = Disiplin.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  30,
  'TWK',
  'Integritas',
  'sedang',
  'Anda menetapkan pemenang lelang, lalu sadar pemenangnya perusahaan milik adik kandung Anda. Tidak ada uang berpindah tangan dan Anda tidak mengatur spesifikasi. Masalah utama dalam kasus ini adalah....',
  NULL,
  '{"A":"pemerasan jabatan terhadap peserta lelang lain","B":"suap pasif karena ada hubungan keluarga","C":"penggelapan dalam jabatan atas dokumen lelang","D":"konflik kepentingan yang mengharuskan Anda mundur dari penetapan dan melapor","E":"gratifikasi karena ada keuntungan bagi keluarga"}'::jsonb,
  'D',
  'Tanpa pemberian atau permintaan imbalan, masalahnya konflik kepentingan. Pejabat wajib mendeklarasikannya dan tidak ikut memutuskan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  31,
  'TWK',
  'Integritas',
  'sedang',
  'Atasan memerintahkan secara lisan agar izin usaha diterbitkan tanpa verifikasi lapangan demi mengejar target. Tindakan ASN yang paling tepat adalah....',
  NULL,
  '{"A":"meminta perintah tertulis lalu menjalankannya agar tanggung jawab berpindah","B":"menjalankan sambil mencatat keberatan di buku pribadi","C":"meneruskan perintah itu kepada bawahan untuk dilaksanakan","D":"menolak melewati verifikasi, menjelaskan dasar aturannya, dan menawarkan percepatan yang tetap sesuai prosedur","E":"menjalankan karena perintah atasan adalah dasar tindakan"}'::jsonb,
  'D',
  'Perintah yang melanggar aturan tidak boleh dijalankan. Perintah tertulis atau catatan pribadi tidak menghapus pelanggaran.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  32,
  'TWK',
  'Integritas',
  'sedang',
  'Anda menemukan rekan mengubah angka laporan agar kinerja unit tampak mencapai target, dan atasan mengetahuinya tetapi membiarkan. Langkah yang paling tepat adalah....',
  NULL,
  '{"A":"meminta rekan memperbaikinya sendiri lalu menunggu sebulan","B":"menghubungi media agar atasan tertekan untuk bertindak","C":"mengoreksi angka di sistem rekan secara diam-diam","D":"melapor ke inspektorat atau kanal pengaduan instansi dengan bukti yang dapat diverifikasi","E":"membiarkan karena atasan sudah mengetahuinya"}'::jsonb,
  'D',
  'Jalur resmi disertai bukti melindungi pelapor dan memungkinkan penindakan. Mengoreksi diam-diam atau membocorkan ke media melewati mekanisme yang sah.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  33,
  'TWK',
  'Integritas',
  'sedang',
  'Anda menemukan kesalahan input yang membuat kerabat Anda tercatat sebagai penerima bantuan sosial padahal belum tentu berhak. Tindakan yang paling tepat adalah....',
  NULL,
  '{"A":"menunggu sampai ada warga yang mengajukan keberatan","B":"melaporkan kesalahan dan hubungan kekerabatan agar verifikasi dilakukan pihak lain","C":"membiarkannya karena kerabat memang hidup sederhana","D":"mencoret nama kerabat tanpa memberi tahu siapa pun","E":"memperbaiki sendiri datanya agar cepat selesai"}'::jsonb,
  'B',
  'Memegang data yang menyangkut kerabat adalah konflik kepentingan. Deklarasikan, lalu biarkan pihak independen memverifikasi.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  34,
  'TWK',
  'Integritas',
  'sedang',
  'Anda menemukan indikasi pemalsuan kuitansi oleh rekan setingkat. Atasan langsung Anda bersahabat karib dengan rekan itu. Langkah yang paling tepat adalah....',
  NULL,
  '{"A":"mengumpulkan bukti lalu melapor ke unit pengawasan internal, karena atasan langsung berpotensi memiliki konflik kepentingan","B":"meminta pegawai yang lebih senior menyampaikan laporan agar identitas Anda terlindungi","C":"mengumpulkan bukti lalu menyampaikannya kepada atasan langsung terlebih dahulu karena itu jalur hierarki yang lazim","D":"melapor langsung ke aparat penegak hukum tanpa mengumpulkan bukti terlebih dahulu","E":"menegur rekan secara pribadi dan memberinya waktu satu bulan memperbaiki sebelum melapor"}'::jsonb,
  'A',
  'Bila atasan langsung berpotensi berkonflik kepentingan, laporan disampaikan ke pengawas internal beserta bukti. Menegur dulu atau melapor tanpa bukti melemahkan penanganan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  35,
  'TWK',
  'Integritas',
  'sedang',
  'Kepala seksi meminta Anda memberi tahu kerabatnya jadwal dan syarat lelang yang baru dibahas di rapat internal dan belum diumumkan, dengan dalih "toh nanti diumumkan juga". Tindakan yang paling tepat...',
  NULL,
  '{"A":"Menolak membocorkan, menjelaskan bahwa informasi belum publik, dan melaporkan bila permintaan berulang","B":"Memberi tahu garis besarnya saja, karena rincian teknis baru dibahas dan masih bisa berubah","C":"Menyarankan kerabat memantau pengumuman resmi sambil memberi petunjuk waktu perkiraan rilisnya","D":"Menolak membocorkan, lalu mencatat permintaan itu untuk dilaporkan setelah lelang selesai","E":"Menolak secara lisan dan meminta kepala seksi menyampaikannya sendiri kepada kerabatnya"}'::jsonb,
  'A',
  'Informasi internal sebelum diumumkan tidak boleh dibagikan; alasan "toh nanti diumumkan" adalah jebakan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  36,
  'TWK',
  'Integritas',
  'sedang',
  'Hasil seleksi internal menempatkan Anda di peringkat atas karena kesalahan input panitia. Tindakan Anda...',
  NULL,
  '{"A":"Menyampaikan kesalahan itu kepada panitia agar dikoreksi","B":"Menunggu hasil final dan baru menyampaikan bila ada pihak lain yang mempersoalkannya","C":"Mengikuti tahap berikutnya sambil menyampaikan kekeliruan kepada atasan langsung saja","D":"Menyampaikan kekeliruan itu kepada panitia setelah pengumuman akhir agar proses tidak terganggu","E":"Menyampaikannya kepada peserta lain agar mereka yang mengajukan keberatan"}'::jsonb,
  'A',
  'Jujur meski merugikan diri sendiri.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  37,
  'TWK',
  'Integritas',
  'sedang',
  'Atasan meminta Anda tidak melaporkan selisih kas Rp500.000 karena "akan dibereskan minggu depan". Anda tahu ia jujur dan sedang kesulitan keluarga. Tindakan paling tepat...',
  NULL,
  '{"A":"Mencatat dan melaporkan sesuai prosedur sambil tetap bersikap empati kepada atasan","B":"Memberi atasan batas waktu satu minggu lalu melaporkan bila selisih belum dibereskan","C":"Mencatat selisih dalam catatan sendiri dan melaporkannya bersama pemeriksaan kas bulanan","D":"Menyampaikan kepada atasannya lagi secara lisan dan menunggu arahan sebelum mencatat","E":"Membantu menutup selisih dengan uang pribadi sambil meminta atasan mencatat utangnya"}'::jsonb,
  'A',
  'Empati boleh, tetapi kewajiban melapor dan prosedur tidak boleh ditawar, sebesar apa pun nominalnya.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  38,
  'TWK',
  'Integritas',
  'sedang',
  'Manakah yang BUKAN gratifikasi yang wajib dilaporkan?',
  NULL,
  '{"A":"Ponsel dari rekanan saat Anda dipromosikan","B":"Voucher belanja dari pemohon izin setelah izin terbit","C":"Honor narasumber yang sah sesuai ketentuan instansi dan disetujui atasan","D":"Tiket wisata gratis dari kontraktor","E":"Uang saku dari penyedia jasa di luar ketentuan resmi"}'::jsonb,
  'C',
  'Honor sah sesuai ketentuan dan tercatat bukan gratifikasi; pemberian yang terkait jabatan dan tidak sah wajib dilaporkan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  39,
  'TWK',
  'Integritas',
  'sedang',
  'Anda menemukan penyalahgunaan wewenang oleh pimpinan lembaga lain yang tidak berada di bawah pengawasan lembaga Anda. Tindakan paling tepat...',
  NULL,
  '{"A":"Melapor lewat kanal lembaga pengawas yang berwenang disertai bukti","B":"Menyampaikan temuan kepada pimpinan lembaga Anda agar diteruskan secara informal ke pimpinan itu","C":"Melapor ke lembaga pengawas tanpa bukti karena pembuktian menjadi tugas pemeriksa","D":"Menghubungi pimpinan tersebut secara pribadi dan memberi peringatan sebelum dilaporkan","E":"Mengumpulkan bukti dan menyimpannya sampai pimpinan itu berganti agar tidak berbenturan"}'::jsonb,
  'A',
  'Tidak berwenang mengawasi bukan berarti harus diam; laporkan ke pihak yang berwenang.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  40,
  'TWK',
  'Integritas',
  'sedang',
  'Anda menerima undangan seminar berbayar dari perusahaan yang sedang ikut tender di unit Anda. Sikap paling tepat...',
  NULL,
  '{"A":"Menolak dan melaporkan undangan sesuai ketentuan gratifikasi dan benturan kepentingan","B":"Hadir dengan biaya sendiri dan menyampaikan kehadiran itu kepada atasan sebelum tender selesai","C":"Menolak undangan tetapi tidak melaporkannya karena tidak ada barang yang diterima","D":"Hadir sebagai pengamat dan melapor setelah tender selesai agar tidak menghambat proses","E":"Mengirim rekan dari unit lain dan melaporkan undangan itu hanya jika diminta"}'::jsonb,
  'A',
  'Fasilitas dari pihak ber-tender berpotensi gratifikasi dan benturan kepentingan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  41,
  'TWK',
  'Integritas',
  'sedang',
  'Perilaku "memegang teguh ideologi Pancasila, UUD 1945, dan setia pada NKRI serta pemerintahan yang sah; menjaga nama baik sesama ASN, pimpinan, instansi, dan negara; menjaga rahasia jabatan dan negara" termasuk nilai BerAKHLAK....',
  NULL,
  '{"A":"Akuntabel","B":"Harmonis","C":"Loyal","D":"Adaptif","E":"Kolaboratif"}'::jsonb,
  'C',
  'Rumusan tersebut adalah panduan perilaku nilai Loyal. Jebakan: "menjaga rahasia jabatan" terdengar seperti Akuntabel, padahal berada pada panduan Loyal.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  42,
  'TWK',
  'Integritas',
  'sedang',
  'Seorang ASN membagikan ulang (share) video kampanye salah satu calon kepala daerah di akun media sosial pribadinya tanpa tambahan komentar apa pun. Menurut prinsip netralitas ASN, tindakan itu....',
  NULL,
  '{"A":"tidak melanggar, karena akun pribadi berada di luar urusan kedinasan dan tidak membawa nama instansi","B":"melanggar netralitas, karena membagikan konten kampanye menunjukkan keberpihakan walau tanpa komentar","C":"tidak melanggar, karena ia tidak menambahkan ajakan memilih maupun komentar pribadi apa pun","D":"melanggar apabila ia mencantumkan jabatan dan nama instansi pada profil akun media sosial tersebut","E":"melanggar apabila unggahan dilakukan pada jam kerja dan memakai perangkat milik instansi"}'::jsonb,
  'B',
  'ASN dilarang menunjukkan keberpihakan, termasuk menyukai, mengomentari, atau membagikan konten kampanye di media sosial, baik di jam kerja maupun akun pribadi.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  43,
  'TWK',
  'Integritas',
  'sedang',
  'Anda anggota tim penilai seleksi jabatan, dan salah satu peserta adalah sahabat dekat Anda. Seluruh penilaian memakai rubrik yang objektif. Tindakan paling tepat adalah....',
  NULL,
  '{"A":"tetap menilai karena rubrik objektif sudah menghilangkan peluang keberpihakan","B":"menyatakan hubungan itu kepada ketua tim dan tidak menilai peserta tersebut","C":"tetap menilai tetapi memberi nilai paling rendah agar tidak dituduh memihak","D":"menilai bersama anggota lain agar tindakan Anda saling diawasi","E":"meminta peserta itu mengundurkan diri agar tidak menimbulkan masalah"}'::jsonb,
  'B',
  'Benturan kepentingan diselesaikan dengan deklarasi dan tidak ikut memutuskan. Memberi nilai rendah sengaja pun bentuk bias.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  44,
  'TWK',
  'Integritas',
  'sedang',
  'Seorang ASN menerima bingkisan dari warga yang pernah dilayaninya, tanpa diminta dan tanpa perjanjian apa pun. Menurut ketentuan gratifikasi dalam UU Tipikor, tindakan yang tepat adalah....',
  NULL,
  '{"A":"melaporkan kepada KPK paling lambat 14 hari kerja sejak diterima","B":"melaporkan kepada KPK paling lambat 30 hari kerja sejak diterima","C":"melaporkan kepada KPK paling lambat 30 hari kalender sejak diterima","D":"melaporkan kepada KPK paling lambat 60 hari kerja sejak diterima","E":"melaporkan setelah ada pihak yang mempersoalkan penerimaan tersebut"}'::jsonb,
  'B',
  'Gratifikasi yang berhubungan dengan jabatan wajib dilaporkan kepada KPK paling lambat 30 hari kerja sejak diterima (Pasal 12C UU 20/2001).',
  NULL,
  NULL,
  'published'
),
(
  'web',
  45,
  'TWK',
  'Integritas',
  'sedang',
  'Seorang pegawai yang ikut terlibat pengaturan tender mengakui perbuatannya, bukan pelaku utama, dan bersedia membuka peran pihak lain. Status yang paling tepat untuknya adalah....',
  NULL,
  '{"A":"whistleblower (saksi pelapor)","B":"justice collaborator","C":"saksi mahkota (crown witness)","D":"saksi ahli yang meringankan terdakwa","E":"saksi korban yang dirugikan"}'::jsonb,
  'B',
  'Justice collaborator adalah pelaku yang mengakui perbuatan, bukan pelaku utama, dan bekerja sama membuka pelaku lain. Whistleblower bukan pelaku dalam kejahatan yang dilaporkannya.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  46,
  'TWK',
  'Integritas',
  'sedang',
  'Pelaku korupsi berkata, "Ini hanya pinjaman sementara, nanti saya kembalikan." Dalam teori segitiga kecurangan (fraud triangle), pernyataan itu merupakan unsur....',
  NULL,
  '{"A":"tekanan atau kebutuhan","B":"kesempatan atau peluang","C":"rasionalisasi","D":"kapabilitas pelaku","E":"arogansi pelaku"}'::jsonb,
  'C',
  'Fraud triangle: tekanan, kesempatan, rasionalisasi. Membenarkan perbuatan dengan alasan pinjaman adalah rasionalisasi.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  47,
  'TWK',
  'Integritas',
  'sedang',
  'Seorang ASN menerima bingkisan berharga dari pihak yang pernah dilayani instansinya. Barang sudah dikirim ke rumahnya sehingga tidak sempat ditolak. Menurut ketentuan pemberantasan korupsi, penerima gratifikasi wajib melaporkannya kepada KPK paling lambat....',
  NULL,
  '{"A":"tujuh hari kerja sejak gratifikasi diterima","B":"empat belas hari kalender sejak gratifikasi diterima","C":"tiga puluh hari kerja sejak gratifikasi diterima","D":"tiga puluh hari kalender sejak gratifikasi diterima","E":"empat puluh lima hari kerja sejak gratifikasi diterima"}'::jsonb,
  'C',
  'UU Tipikor Pasal 12C: lapor ke KPK paling lambat 30 hari kerja sejak gratifikasi diterima. Jebakan: satuan hari kerja vs kalender.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  48,
  'TWK',
  'Integritas',
  'sedang',
  'Setelah aturan layanan perizinan berubah, seorang ASN tanpa menunggu perintah menyusun alur kerja baru, mengujinya pada sebagian layanan, lalu menyempurnakannya dari masukan pengguna. Perilaku ini paling mencerminkan nilai BerAKHLAK....',
  NULL,
  '{"A":"Kompeten","B":"Adaptif","C":"Kolaboratif","D":"Akuntabel","E":"Harmonis"}'::jsonb,
  'B',
  'Adaptif: cepat menyesuaikan diri terhadap perubahan, inovatif, dan proaktif. Kompeten berfokus meningkatkan kapabilitas diri.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  49,
  'TWK',
  'Integritas',
  'sedang',
  'Bendahara menawarkan Anda "uang lelah" dari sisa anggaran perjalanan dinas yang sebenarnya tidak pernah dilaksanakan, asalkan Anda ikut menandatangani laporan pertanggungjawaban. Tindakan yang paling sesuai dengan nilai integritas adalah....',
  NULL,
  '{"A":"menolak uang itu, tidak menandatangani laporan, dan melaporkannya lewat saluran pengaduan resmi","B":"menolak uang itu, tetapi tetap menandatangani laporan karena tanda tangan hanya urusan administrasi","C":"menerima uang itu lalu menyetorkannya kembali ke kas negara setelah laporan ditandatangani","D":"menolak uang itu dan menegur bendahara secara pribadi tanpa melapor kepada pihak lain","E":"menandatangani laporan dan menyimpan salinannya sebagai bukti bahwa Anda hanya mengikuti arahan"}'::jsonb,
  'A',
  'Menandatangani laporan fiktif berarti ikut memalsukan pertanggungjawaban. Menegur saja tidak menghentikan penyimpangan; menyetor setelah menandatangani tetap keliru.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  50,
  'TWK',
  'Integritas',
  'sedang',
  'Seorang pegawai ikut terlibat dalam kasus pengadaan fiktif, tetapi bersedia mengungkap pelaku utama, mengembalikan hasil kejahatan, dan membuka jaringan perkara. Dalam sistem hukum pidana, posisinya paling tepat disebut....',
  NULL,
  '{"A":"Kompeten, karena menekankan peningkatan kapabilitas diri dan pembelajaran","B":"Adaptif, karena menunjukkan penyesuaian cepat, inovasi, dan sikap proaktif","C":"Kolaboratif, karena menekankan kerja sama lintas pihak menyelesaikan tugas","D":"Akuntabel, karena menekankan tanggung jawab penuh atas hasil kerja","E":"Harmonis, karena menekankan hubungan kerja yang kondusif dengan semua pihak"}'::jsonb,
  'B',
  'Justice collaborator adalah pelaku yang bekerja sama membongkar perkara. Whistleblower bukan pelaku; saksi mahkota adalah terdakwa yang bersaksi atas terdakwa lain dalam perkara terpisah.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  51,
  'TWK',
  'Integritas',
  'sedang',
  'Dalam Putusan Mahkamah Konstitusi Nomor 121/PUU-XXII/2024, pembentuk undang-undang diperintahkan membentuk....',
  NULL,
  '{"A":"menolak uang itu, tidak menandatangani laporan, dan melapor lewat saluran pengaduan resmi","B":"Badan Kepegawaian Negara sebagai satu-satunya pengawas sistem merit ASN, paling lama satu tahun sejak putusan diucapkan","C":"dewan kehormatan ASN di bawah Menteri PANRB untuk mengawasi sistem merit, paling lama dua tahun sejak putusan diucapkan","D":"pengadilan khusus ASN untuk mengadili pelanggaran netralitas, paling lama lima tahun sejak putusan diucapkan","E":"komisi pengawas ASN yang anggotanya dipilih langsung oleh Presiden, paling lama tiga tahun sejak putusan diucapkan"}'::jsonb,
  'A',
  'Putusan 16 Oktober 2025: pengawasan sistem merit harus oleh lembaga independen, dibentuk paling lama dua tahun. MK menilai perlu pemisahan pembuat, pelaksana, dan pengawas kebijakan agar tidak ada benturan kepentingan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  52,
  'TWK',
  'Integritas',
  'sedang',
  'Rumah seorang pejabat searah dengan sekolah anaknya dan kantornya. Ia memakai mobil dinas mengantar anak ke sekolah tiap pagi tanpa menambah jarak tempuh maupun biaya bahan bakar. Menurut nilai integritas dan pengelolaan barang milik negara, tindakan itu....',
  NULL,
  '{"A":"dapat dibenarkan karena tidak ada kerugian negara yang nyata dan biaya tidak bertambah","B":"tidak dapat dibenarkan, karena barang milik negara hanya dipakai untuk kepentingan dinas","C":"dapat dibenarkan asalkan atasan langsung mengetahui dan tidak berkeberatan","D":"tidak dapat dibenarkan hanya apabila bahan bakar dibayar dari anggaran kantor","E":"dapat dibenarkan apabila pejabat mengganti biaya bahan bakar dengan uang pribadi"}'::jsonb,
  'B',
  'Integritas menuntut konsisten walau tanpa kerugian nyata: aset negara untuk kepentingan dinas. Izin atasan atau mengganti biaya tidak mengubah sifat pemakaian pribadi.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  53,
  'TWK',
  'Integritas',
  'sedang',
  'Dua pejabat dan rekanan secara diam-diam bersepakat menaikkan harga pengadaan agar ketiganya memperoleh keuntungan. Perbuatan itu paling tepat disebut....',
  NULL,
  '{"A":"kolusi, yaitu permufakatan melawan hukum antar-penyelenggara negara atau dengan pihak lain yang merugikan negara","B":"nepotisme, yaitu perbuatan menguntungkan keluarga dan/atau kroni secara melawan hukum oleh penyelenggara negara","C":"gratifikasi, yaitu pemberian dalam arti luas yang berhubungan dengan jabatan dan tugas penerimanya","D":"konflik kepentingan, yaitu keadaan ketika kepentingan pribadi memengaruhi keputusan jabatan seorang pejabat","E":"pungutan liar, yaitu pemungutan biaya tanpa dasar hukum oleh petugas layanan kepada warga"}'::jsonb,
  'A',
  'Kolusi = permufakatan melawan hukum yang merugikan negara.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  54,
  'TWK',
  'Integritas',
  'sedang',
  'Perilaku "menghargai setiap orang apa pun latar belakangnya, suka menolong orang lain, dan membangun lingkungan kerja yang kondusif" merupakan panduan perilaku nilai BerAKHLAK....',
  NULL,
  '{"A":"Harmonis","B":"Kolaboratif","C":"Berorientasi Pelayanan","D":"Loyal","E":"Adaptif"}'::jsonb,
  'A',
  'Itu panduan perilaku Harmonis. Kolaboratif menekankan kontribusi berbagai pihak dan nilai tambah bersama.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  55,
  'TWK',
  'Integritas',
  'sedang',
  'Asas netralitas dalam penyelenggaraan manajemen ASN berarti setiap pegawai ASN....',
  NULL,
  '{"A":"tidak berpihak dari segala pengaruh mana pun dan tidak memihak kepentingan siapa pun","B":"tidak berpihak dari pengaruh partai politik tertentu dan memihak kepentingan negara","C":"tidak memihak kepentingan pribadi, tetapi boleh memihak kepentingan pimpinan","D":"tidak ikut kampanye, tetapi boleh menyatakan dukungan di media sosial","E":"tidak memihak kepada kepentingan siapa pun kecuali kepentingan atasan langsung"}'::jsonb,
  'A',
  'Netralitas: tidak berpihak dari segala bentuk pengaruh dan tidak memihak kepentingan siapa pun.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  56,
  'TWK',
  'Integritas',
  'sedang',
  'Perilaku "memberi kesempatan kepada berbagai pihak untuk berkontribusi, terbuka dalam bekerja sama untuk menghasilkan nilai tambah, dan menggerakkan pemanfaatan berbagai sumber daya untuk tujuan bersama" termasuk nilai BerAKHLAK....',
  NULL,
  '{"A":"Kolaboratif","B":"Harmonis","C":"Berorientasi Pelayanan","D":"Adaptif","E":"Akuntabel"}'::jsonb,
  'A',
  'Itu panduan perilaku Kolaboratif.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  57,
  'TWK',
  'Integritas',
  'sedang',
  'Perilaku "menggunakan kekayaan dan barang milik negara secara bertanggung jawab, efektif, dan efisien" termasuk nilai BerAKHLAK....',
  NULL,
  '{"A":"Akuntabel","B":"Berorientasi Pelayanan","C":"Kolaboratif","D":"Harmonis","E":"Adaptif"}'::jsonb,
  'A',
  'Itu panduan perilaku Akuntabel.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  58,
  'TWK',
  'Integritas',
  'sedang',
  'Menurut ketentuan tindak pidana korupsi, gratifikasi kepada pegawai negeri dianggap pemberian suap apabila....',
  NULL,
  '{"A":"berhubungan dengan jabatannya dan berlawanan dengan kewajiban atau tugasnya","B":"berhubungan dengan jabatannya dan bernilai lebih dari sepuluh juta rupiah","C":"berhubungan dengan jabatannya tetapi sejalan dengan kewajiban atau tugasnya","D":"diterima pada jam kerja dan tidak dilaporkan kepada atasan langsung","E":"diberikan oleh pihak yang sedang mengajukan permohonan layanan kepada instansinya"}'::jsonb,
  'A',
  'Pasal 12B: gratifikasi dianggap suap bila berhubungan dengan jabatan dan berlawanan dengan kewajiban atau tugas.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  59,
  'TWK',
  'Integritas',
  'sedang',
  'Perilaku "meningkatkan kompetensi diri untuk menjawab tantangan yang selalu berubah, membantu orang lain belajar, dan melaksanakan tugas dengan kualitas terbaik" termasuk nilai BerAKHLAK....',
  NULL,
  '{"A":"Kompeten","B":"Adaptif","C":"Akuntabel","D":"Kolaboratif","E":"Harmonis"}'::jsonb,
  'A',
  'Itu panduan perilaku Kompeten.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  60,
  'TWK',
  'Integritas',
  'sedang',
  'Perilaku "cepat menyesuaikan diri menghadapi perubahan, terus berinovasi dan mengembangkan kreativitas, serta bertindak proaktif" termasuk nilai BerAKHLAK....',
  NULL,
  '{"A":"Adaptif","B":"Kompeten","C":"Kolaboratif","D":"Berorientasi Pelayanan","E":"Akuntabel"}'::jsonb,
  'A',
  'Itu panduan perilaku Adaptif.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  61,
  'TWK',
  'Integritas',
  'sedang',
  'Seorang kepala dinas menempatkan keponakannya pada jabatan strategis tanpa seleksi, padahal ada pegawai yang lebih kompeten. Perbuatan itu paling tepat disebut....',
  NULL,
  '{"A":"nepotisme, yaitu perbuatan penyelenggara negara yang melawan hukum menguntungkan keluarganya dan/atau kroninya di atas kepentingan bangsa","B":"kolusi, yaitu permufakatan atau kerja sama melawan hukum antar-penyelenggara negara atau dengan pihak lain yang merugikan negara","C":"gratifikasi, yaitu pemberian dalam arti luas yang berhubungan dengan jabatan penerimanya dan bertentangan dengan tugasnya","D":"pungutan liar, yaitu pemungutan biaya tanpa dasar hukum oleh petugas layanan kepada warga yang dilayaninya","E":"konflik kepentingan, yaitu keadaan ketika pejabat mengambil keputusan tanpa memberi tahu atasan mengenai hubungannya"}'::jsonb,
  'A',
  'UU 28/1999: nepotisme = menguntungkan keluarga dan/atau kroni secara melawan hukum.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  62,
  'TWK',
  'Integritas',
  'sedang',
  'Perilaku "menjaga nama baik sesama ASN, pimpinan, instansi, dan negara serta menjaga rahasia jabatan dan negara" termasuk nilai BerAKHLAK....',
  NULL,
  '{"A":"Loyal","B":"Akuntabel","C":"Harmonis","D":"Kompeten","E":"Kolaboratif"}'::jsonb,
  'A',
  'Itu panduan perilaku Loyal, di samping setia pada Pancasila, UUD 1945, NKRI, dan pemerintah yang sah.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  63,
  'TWK',
  'Bela Negara',
  'sedang',
  'Bela negara tidak selalu diwujudkan melalui kegiatan yang bersifat fisik atau kemiliteran. Setiap warga negara dapat berkontribusi sesuai profesi dan kemampuannya. Perhatikan perilaku berikut.
1. Mengikuti pelatihan dasar kemiliteran di resimen mahasiswa kampusnya
2. Membayar pajak tepat waktu sesuai ketentuan peraturan perundang-undangan
3. Ikut bertempur mempertahankan wilayah perbatasan dari serangan pasukan asing
4. Menyebarkan literasi digital untuk menangkal berita bohong di masyarakat
5. Mendaftar menjadi prajurit melalui seleksi penerimaan Tentara Nasional Indonesia
Perilaku yang mencerminkan bela negara secara nonfisik ditunjukkan oleh nomor...',
  NULL,
  '{"A":"4 dan 5","B":"2 dan 4","C":"1 dan 3","D":"3 dan 5","E":"1 dan 2"}'::jsonb,
  'B',
  'Nonfisik adalah peran sipil sesuai profesi: membayar pajak (2) dan literasi digital (4). Nomor 1, 3, dan 5 berciri militer, jadi fisik.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  64,
  'TWK',
  'Bela Negara',
  'sedang',
  'Perhatikan perilaku berikut.
1. Membersihkan sungai di lingkungan tempat tinggal bersama warga
2. Mengikuti latihan komponen cadangan
3. Mengikuti operasi militer di wilayah perbatasan
4. Mengajar anak-anak di daerah tertinggal secara sukarela
Perilaku bela negara nonfisik ditunjukkan oleh nomor...',
  NULL,
  '{"A":"1 dan 2","B":"3 dan 4","C":"2 dan 3","D":"2 dan 4","E":"1 dan 4"}'::jsonb,
  'E',
  'Menjaga lingkungan (1) dan mengajar (4) adalah peran sipil nonfisik. Latihan komponen cadangan (2) dan operasi militer (3) berciri militer, jadi fisik.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  65,
  'TWK',
  'Bela Negara',
  'sedang',
  'Setiap negara memiliki keterbatasan sumber daya dan teknologi sehingga membutuhkan kerja sama internasional. Alasan mendasar kerja sama tersebut adalah....',
  NULL,
  '{"A":"Memenuhi kebutuhan melalui pertukaran potensi antarnegara","B":"Meningkatkan ketergantungan terhadap negara yang lebih maju","C":"Meningkatkan pengaruh politik dalam hubungan internasional","D":"Memperluas pasar produk untuk memperoleh keuntungan ekonomi","E":"Memperkuat dominasi ekonomi dalam perdagangan global"}'::jsonb,
  'A',
  'Karena tiap negara terbatas, kebutuhan dipenuhi lewat pertukaran potensi. Dominasi dan ketergantungan bukan alasan dasar.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  66,
  'TWK',
  'Bela Negara',
  'sedang',
  'Indonesia memperoleh tawaran kerja sama pertahanan dari suatu negara. Kerja sama tersebut memberikan keuntungan strategis, tetapi berpotensi menempatkan Indonesia pada posisi yang berseberangan dengan negara lain. Pertimbangan yang paling sesuai dengan politik luar negeri Indonesia adalah....',
  NULL,
  '{"A":"Menerima selama negara mitra memiliki kekuatan ekonomi yang lebih besar","B":"Menyerahkan keputusan kepada organisasi regional agar tidak menimbulkan konflik","C":"Mengkaji kerja sama berdasarkan kepentingan nasional dan prinsip bebas aktif","D":"Menolak karena Indonesia tidak boleh bekerja sama di bidang pertahanan","E":"Menerima karena memberikan keuntungan strategis bagi pertahanan"}'::jsonb,
  'C',
  'Politik luar negeri bebas aktif: setiap kerja sama dikaji berdasarkan kepentingan nasional. Menerima langsung, menolak total, atau menyerahkan keputusan ke pihak lain tidak tepat.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  67,
  'TWK',
  'Bela Negara',
  'sedang',
  'Pemerintah memutuskan tidak bergabung dengan pakta militer blok mana pun, tetapi aktif menjadi mediator perdamaian dunia. Sikap ini mencerminkan politik luar negeri....',
  NULL,
  '{"A":"Isolasi","B":"Netralitas mutlak","C":"Satu blok","D":"Ekspansi","E":"Bebas aktif"}'::jsonb,
  'E',
  'Bebas: tidak memihak blok. Aktif: ikut menciptakan perdamaian dunia.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  68,
  'TWK',
  'Bela Negara',
  'sedang',
  'Perilaku berikut yang BUKAN cerminan bela negara adalah...',
  NULL,
  '{"A":"Mematuhi aturan lalu lintas","B":"Menjaga fasilitas umum","C":"Menggunakan jabatan untuk menekan warga memilih calon tertentu","D":"Mengikuti kegiatan penanggulangan bencana","E":"Memverifikasi informasi sebelum membagikan"}'::jsonb,
  'C',
  'Penyalahgunaan jabatan merusak demokrasi dan kepentingan bersama.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  69,
  'TWK',
  'Bela Negara',
  'sedang',
  'Serangan siber melumpuhkan server layanan kependudukan secara nasional. Dalam kerangka pertahanan negara, ancaman ini paling tepat digolongkan sebagai....',
  NULL,
  '{"A":"ancaman militer yang hanya boleh ditangani TNI","B":"ancaman nonmiliter, dengan lembaga pemerintah di luar bidang pertahanan sebagai unsur utama penanganan","C":"ancaman militer, karena melumpuhkan infrastruktur negara","D":"gangguan teknis biasa tanpa kaitan dengan pertahanan","E":"ancaman nonmiliter yang sepenuhnya menjadi urusan swasta"}'::jsonb,
  'B',
  'Ancaman nonmiliter dihadapi terutama oleh lembaga di luar bidang pertahanan sesuai sifat ancamannya. Unsur lain, termasuk TNI, dapat mendukung.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  70,
  'TWK',
  'Bela Negara',
  'sedang',
  'Seorang pegawai mengunggah foto instalasi vital negara beserta koordinat dan denah penjagaannya sebagai konten wisata. Penilaian yang paling tepat adalah....',
  NULL,
  '{"A":"tidak bermasalah karena informasi di internet bersifat bebas","B":"bermasalah hanya bila diunggah oleh orang asing","C":"melemahkan bela negara, karena membuka informasi sensitif sehingga niat baik tidak menghapus risikonya","D":"bermasalah hanya jika terbukti ada pihak yang menyalahgunakan","E":"bela negara, karena mempromosikan kebanggaan nasional"}'::jsonb,
  'C',
  'Informasi sensitif pertahanan tidak boleh disebarkan. Risiko timbul saat diunggah, bukan menunggu terbukti disalahgunakan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  71,
  'TWK',
  'Bela Negara',
  'sedang',
  'Sebuah komunitas mengirim relawan ke daerah bencana tanpa koordinasi dengan BPBD, sehingga bantuan menumpuk dan jalur terhambat. Evaluasi yang paling tepat adalah....',
  NULL,
  '{"A":"niat sudah benar, tetapi pelaksanaannya harus terkoordinasi dengan otoritas agar efektif","B":"sudah ideal karena kecepatan lebih penting daripada koordinasi","C":"bela negara tidak boleh dilakukan warga sipil","D":"bukan bela negara karena tidak terjadi perang","E":"tindakan salah total karena tanpa komando militer"}'::jsonb,
  'A',
  'Bela negara mencakup kontribusi sipil, tetapi dampaknya bergantung pada koordinasi dengan pihak berwenang.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  72,
  'TWK',
  'Bela Negara',
  'sedang',
  'Sebuah kementerian menyimpan seluruh data strategisnya pada satu penyedia layanan awan asing demi efisiensi biaya. Penilaian yang paling tepat dari sisi ketahanan dan kedaulatan data adalah....',
  NULL,
  '{"A":"tidak berkaitan dengan pertahanan karena hanya urusan teknis TI","B":"aman, karena penyedia besar memiliki sistem keamanan lebih baik daripada instansi pemerintah","C":"aman, selama kontraknya memuat klausul harga yang kompetitif","D":"berisiko, sehingga data strategis perlu disimpan dengan kendali dan cadangan yang berada di bawah yurisdiksi nasional","E":"berisiko, sehingga seluruh layanan digital pemerintah sebaiknya dihentikan"}'::jsonb,
  'D',
  'Data strategis perlu dikendalikan dan dicadangkan di bawah yurisdiksi nasional. Menghentikan layanan digital berlebihan, dan efisiensi biaya bukan ukuran keamanan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  73,
  'TWK',
  'Bela Negara',
  'sedang',
  'Menjelang pemilu, ujaran kebencian meningkat, sementara pembatasan konten yang berlebihan dikhawatirkan membungkam kritik. Kebijakan yang paling tepat adalah....',
  NULL,
  '{"A":"meningkatkan literasi digital dan menegakkan hukum secara terukur terhadap ujaran kebencian, sambil menjamin kritik yang sah","B":"memperkuat pengendalian melalui lembaga negara dan pengawasan masyarakat","C":"memperketat pengawasan konten melalui regulasi dan sanksi tegas bagi seluruh pelanggar","D":"mengutamakan kebebasan berekspresi dan menyerahkan pengendalian pada tanggung jawab pengguna","E":"mendorong platform menyaring konten secara mandiri dan mengurangi peran pengawasan negara"}'::jsonb,
  'A',
  'Ancaman persatuan dan kebebasan sama-sama harus dijaga. Edukasi digabung penegakan hukum yang proporsional menjawab keduanya.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  74,
  'TWK',
  'Bela Negara',
  'sedang',
  'ASN bidang TIK menemukan celah yang membuat data kependudukan dapat diakses publik. Langkah yang paling mencerminkan bela negara di ranah siber...',
  NULL,
  '{"A":"Melapor segera kepada pimpinan dan tim keamanan siber tanpa menyebarkan detail celah","B":"Menguji celah itu secukupnya untuk memastikan cakupan datanya, lalu melapor ke pimpinan","C":"Menunggu jadwal audit keamanan berkala agar temuan dilaporkan bersama temuan lain","D":"Menutup celah sendiri dengan akses administratornya lalu melapor setelah selesai","E":"Memberi peringatan di grup pesan kantor lengkap dengan cara kerja celah agar semua waspada"}'::jsonb,
  'A',
  'Melapor lewat jalur resmi melindungi data tanpa memperbesar risiko.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  75,
  'TWK',
  'Bela Negara',
  'sedang',
  'Manakah contoh bela negara nonfisik yang paling nyata bagi ASN?',
  NULL,
  '{"A":"Menjalankan tugas jujur, melayani adil, dan melawan hoaks","B":"Mengikuti pelatihan kedisiplinan semi-militer secara rutin di luar jam kerja","C":"Memakai produk dalam negeri dan menghindari seluruh produk buatan luar negeri","D":"Mengunggah konten kebanggaan nasional di media sosial secara konsisten","E":"Merahasiakan seluruh informasi kantor dari masyarakat demi keamanan negara"}'::jsonb,
  'A',
  'Bela negara ASN diwujudkan lewat kerja berintegritas dan layanan publik.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  76,
  'TWK',
  'Bela Negara',
  'sedang',
  'Dua desa berebut air irigasi dan saling memblokade jalan. Pendekatan yang paling sesuai semangat bela negara...',
  NULL,
  '{"A":"Memfasilitasi musyawarah dengan data debit air dan melibatkan pemerintah daerah","B":"Memfasilitasi musyawarah tetapi memutuskan pembagian air berdasarkan jumlah penduduk desa saja","C":"Menempatkan petugas di lokasi blokade agar jalan dibuka dulu, pembagian air dibahas kemudian","D":"Meminta kedua desa berunding sendiri dan pemerintah daerah hanya mencatat hasilnya","E":"Menetapkan jadwal giliran air secara sepihak oleh dinas tanpa mendengar kedua desa"}'::jsonb,
  'A',
  'Persatuan dijaga lewat musyawarah berbasis data, bukan adu kekuatan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  77,
  'TWK',
  'Bela Negara',
  'sedang',
  'Akun palsu meniru instansi Anda dan menyebarkan informasi menyesatkan. Langkah paling sesuai peran ASN...',
  NULL,
  '{"A":"Melapor ke platform dan tim humas atau keamanan siber, lalu mengklarifikasi lewat kanal resmi","B":"Melapor ke platform dan mengklarifikasi langsung di kolom komentar akun palsu itu","C":"Mengklarifikasi lewat kanal resmi dan menunggu platform menindak tanpa melapor","D":"Melapor ke tim humas lalu meminta karyawan membagikan klarifikasi dari akun pribadi masing-masing","E":"Mengunggah peringatan penipuan di akun pribadi beserta tangkapan layar akun palsu"}'::jsonb,
  'A',
  'Klarifikasi resmi dan pelaporan memutus disinformasi tanpa menambah kegaduhan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  78,
  'TWK',
  'Bela Negara',
  'sedang',
  'Warga negara yang telah dilatih dan disiapkan untuk dikerahkan melalui mobilisasi guna memperbesar kekuatan dan kemampuan komponen utama disebut....',
  NULL,
  '{"A":"komponen utama","B":"komponen cadangan","C":"komponen pendukung","D":"komponen nirmiliter","E":"komponen dasar"}'::jsonb,
  'B',
  'Menurut UU Pengelolaan Sumber Daya Nasional untuk Pertahanan Negara, komponen cadangan disiapkan untuk dikerahkan melalui mobilisasi memperbesar kekuatan komponen utama (TNI). Komponen pendukung meningkatkan kekuatan komponen utama dan cadangan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  79,
  'TWK',
  'Bela Negara',
  'sedang',
  'Gatra alamiah (trigatra) dalam konsep Ketahanan Nasional terdiri atas....',
  NULL,
  '{"A":"ideologi, politik, dan ekonomi","B":"geografi, demografi, dan sumber kekayaan alam","C":"ekonomi, sosial budaya, dan pertahanan keamanan","D":"geografi, politik, dan sumber kekayaan alam","E":"demografi, ideologi, dan sosial budaya"}'::jsonb,
  'B',
  'Trigatra: geografi, demografi, sumber kekayaan alam. Pancagatra: ideologi, politik, ekonomi, sosial budaya, pertahanan keamanan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  80,
  'TWK',
  'Bela Negara',
  'sedang',
  'Pasal 27 ayat (3) dan Pasal 30 ayat (1) UUD NRI 1945 sama-sama menegaskan bahwa pembelaan dan pertahanan negara merupakan....',
  NULL,
  '{"A":"kewajiban TNI dan Polri, sedangkan warga sipil bersifat sukarela","B":"hak sekaligus kewajiban setiap warga negara","C":"kewajiban warga negara yang memenuhi syarat usia militer","D":"hak warga negara yang dapat dilepaskan secara tertulis","E":"kewajiban yang baru timbul ketika negara dinyatakan dalam keadaan perang"}'::jsonb,
  'B',
  'Kedua pasal memakai rumusan "berhak dan wajib": setiap warga negara memiliki hak sekaligus kewajiban ikut serta, dalam keadaan damai maupun perang.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  81,
  'TWK',
  'Bela Negara',
  'sedang',
  'Suatu pihak memadukan penempatan pasukan terbatas di wilayah sengketa, serangan siber ke layanan publik, kampanye disinformasi masif, dan tekanan ekonomi secara terkoordinasi tanpa menyatakan perang. Ancaman semacam ini paling tepat digolongkan sebagai ancaman....',
  NULL,
  '{"A":"militer","B":"nirmiliter","C":"hibrida","D":"konvensional","E":"ideologis"}'::jsonb,
  'C',
  'Ancaman hibrida memadukan sarana militer dan nirmiliter secara terkoordinasi. Jika tanpa unsur militer, barulah nirmiliter.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  82,
  'TWK',
  'Bela Negara',
  'sedang',
  'Setelah banjir bandang memutus akses beberapa wilayah, TNI dikerahkan membuka jalan, mengevakuasi warga, dan mendistribusikan logistik atas permintaan pemerintah. Pengerahan itu termasuk....',
  NULL,
  '{"A":"operasi militer untuk perang","B":"operasi militer selain perang","C":"mobilisasi komponen cadangan","D":"operasi intelijen strategis","E":"pemberlakuan keadaan darurat militer"}'::jsonb,
  'B',
  'Membantu menanggulangi akibat bencana alam adalah operasi militer selain perang (OMSP) menurut UU TNI.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  83,
  'TWK',
  'Bela Negara',
  'sedang',
  'Berikut adalah nilai dasar bela negara, KECUALI....',
  NULL,
  '{"A":"cinta tanah air dan bangga terhadap bangsa sendiri","B":"sadar berbangsa dan bernegara serta memahami haknya","C":"yakin Pancasila sebagai ideologi negara yang final","D":"rela berkorban untuk bangsa dan negara sewaktu diperlukan","E":"memiliki loyalitas penuh kepada pimpinan instansi"}'::jsonb,
  'E',
  'Lima nilai dasar: cinta tanah air, sadar berbangsa dan bernegara, yakin Pancasila sebagai ideologi, rela berkorban, dan memiliki kemampuan awal bela negara. Loyalitas kepada pimpinan instansi bukan nilai dasar bela negara.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  84,
  'TWK',
  'Bela Negara',
  'sedang',
  'Pasal 30 ayat (2) UUD NRI 1945 menyatakan usaha pertahanan dan keamanan negara dilaksanakan melalui sistem....',
  NULL,
  '{"A":"pertahanan dan keamanan rakyat semesta oleh TNI dan Polri sebagai kekuatan utama, dan rakyat sebagai kekuatan pendukung","B":"pertahanan dan keamanan rakyat semesta oleh rakyat sebagai kekuatan utama, dan TNI serta Polri sebagai kekuatan pendukung","C":"pertahanan militer profesional oleh TNI sebagai satu-satunya kekuatan, dengan rakyat sebagai komponen cadangan","D":"keamanan dan ketertiban oleh Polri sebagai kekuatan utama, dan TNI sebagai kekuatan pendukung","E":"pertahanan dan keamanan nasional terpadu di bawah kendali langsung Presiden tanpa peran rakyat"}'::jsonb,
  'A',
  'Bunyi Pasal 30 ayat (2): sistem pertahanan dan keamanan rakyat semesta oleh TNI dan Polri sebagai kekuatan utama, rakyat sebagai kekuatan pendukung. Opsi 2 menukar peran.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  85,
  'TWK',
  'Bela Negara',
  'sedang',
  'Di grup warga beredar video hasil rekayasa kecerdasan buatan yang seolah memperlihatkan tokoh daerah menghina suku tertentu dan memicu kemarahan. Tindakan yang paling sesuai dengan nilai bela negara di ruang digital adalah....',
  NULL,
  '{"A":"tidak meneruskan video, mengklarifikasi di grup dengan sumber resmi, dan melapor ke platform serta kanal aduan","B":"tidak meneruskan video dan melaporkannya ke platform tanpa menanggapi apa pun di grup warga tersebut","C":"menanggapi dengan video rekayasa tandingan agar pelaku merasakan sendiri dampaknya di grup warga","D":"menelusuri identitas pembuat video lalu mengumumkan data pribadinya agar pelaku merasa dipermalukan","E":"meneruskan video disertai peringatan \"belum tentu benar\" agar warga lain ikut berhati-hati"}'::jsonb,
  'A',
  'Menghentikan rantai penyebaran, meluruskan, dan memakai jalur resmi. Meneruskan dengan peringatan tetap memperluas sebaran; doxing dan hoaks tandingan melanggar hukum.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  86,
  'TWK',
  'Bela Negara',
  'sedang',
  'Pasal 27 ayat (3) UUD NRI 1945 menyatakan bahwa....',
  NULL,
  '{"A":"setiap warga negara berhak dan wajib ikut serta dalam upaya pembelaan negara","B":"setiap warga negara wajib mengikuti wajib militer dalam upaya pembelaan negara","C":"setiap warga negara berhak, tetapi tidak wajib, ikut serta dalam upaya pembelaan negara","D":"setiap warga negara wajib ikut serta dalam usaha pertahanan dan keamanan negara","E":"setiap penduduk berhak dan wajib ikut serta dalam upaya pembelaan negara"}'::jsonb,
  'A',
  'Pasal 27 ayat (3) memakai frasa "upaya pembelaan negara" dan subjek "warga negara". Opsi 4 mengacu Pasal 30 ayat (1); opsi 5 memakai subjek penduduk.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  87,
  'TWK',
  'Bela Negara',
  'sedang',
  'Menurut Undang-Undang Pertahanan Negara, upaya bela negara diwujudkan melalui....',
  NULL,
  '{"A":"pendidikan kewarganegaraan, pelatihan dasar kemiliteran secara wajib, pengabdian sebagai prajurit TNI secara sukarela atau wajib, dan pengabdian sesuai dengan profesi","B":"pendidikan kewarganegaraan, pelatihan dasar kemiliteran secara sukarela, pengabdian sebagai prajurit TNI secara wajib, dan pengabdian sesuai dengan profesi","C":"pendidikan kewarganegaraan, pelatihan dasar kemiliteran secara wajib, pengabdian sebagai prajurit TNI secara sukarela, dan pengabdian sebagai komponen cadangan","D":"pendidikan pancasila, pelatihan dasar kemiliteran secara wajib, pengabdian sebagai prajurit TNI secara sukarela atau wajib, dan pengabdian sesuai dengan profesi","E":"pendidikan kewarganegaraan, pelatihan bela negara secara wajib, pengabdian sebagai prajurit TNI secara wajib, dan pengabdian sesuai dengan profesi"}'::jsonb,
  'A',
  'UU 3/2002 Pasal 9 ayat (2): empat bentuk yang rumusannya persis seperti opsi pertama.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  88,
  'TWK',
  'Bela Negara',
  'sedang',
  'Menurut Undang-Undang Pertahanan Negara, pertahanan negara adalah segala usaha untuk....',
  NULL,
  '{"A":"mempertahankan kedaulatan negara, keutuhan wilayah NKRI, dan keselamatan bangsa dari ancaman dan gangguan terhadap keutuhan bangsa dan negara","B":"mempertahankan kedaulatan negara, keutuhan wilayah NKRI, dan keselamatan segenap bangsa dari ancaman militer negara lain semata","C":"mempertahankan kedaulatan negara dan keutuhan wilayah NKRI dengan TNI sebagai satu-satunya komponen yang berperan","D":"menjaga ketertiban umum, keutuhan wilayah NKRI, dan keselamatan segenap bangsa dari gangguan yang datang dari dalam negeri","E":"mempertahankan kedaulatan negara, keutuhan wilayah NKRI, dan kepentingan ekonomi nasional dari ancaman yang datang dari luar negeri"}'::jsonb,
  'A',
  'Definisi UU 3/2002 mencakup ancaman dan gangguan, bukan hanya ancaman militer.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  89,
  'TWK',
  'Bela Negara',
  'sedang',
  'Seorang dokter bertugas di puskesmas wilayah perbatasan dan melayani warga dengan sungguh-sungguh. Menurut Undang-Undang Pertahanan Negara, tindakannya termasuk upaya bela negara dalam bentuk....',
  NULL,
  '{"A":"pengabdian sesuai dengan profesi","B":"pendidikan kewarganegaraan","C":"pelatihan dasar kemiliteran secara wajib","D":"pengabdian sebagai prajurit TNI secara sukarela","E":"pengabdian sebagai komponen cadangan"}'::jsonb,
  'A',
  'Pasal 9 ayat (2) huruf d: pengabdian sesuai dengan profesi.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  90,
  'TWK',
  'Pancasila',
  'sedang',
  'Menghormati teman yang beribadah menurut keyakinan berbeda merupakan pengamalan sila ke...',
  NULL,
  '{"A":"Kelima","B":"Ketiga","C":"Keempat","D":"Pertama","E":"Kedua"}'::jsonb,
  'D',
  'Toleransi dan kebebasan beribadah adalah inti sila pertama, Ketuhanan Yang Maha Esa.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  91,
  'TWK',
  'Pancasila',
  'sedang',
  'Nilai dasarnya tetap, tetapi penjabarannya menyesuaikan zaman. Ini menunjukkan Pancasila sebagai ideologi...',
  NULL,
  '{"A":"Terbuka","B":"Tertutup","C":"Liberal","D":"Totaliter","E":"Komunis"}'::jsonb,
  'A',
  'Ideologi terbuka: nilai dasar tetap, nilai instrumental dan praksis berkembang.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  92,
  'TWK',
  'Pancasila',
  'sedang',
  'Badan yang bersidang pada 29 Mei sampai 1 Juni 1945 untuk membahas rumusan dasar negara adalah...',
  NULL,
  '{"A":"BPUPKI","B":"Chuo Sangi In","C":"Panitia Sembilan","D":"Jawa Hokokai","E":"PPKI"}'::jsonb,
  'A',
  'BPUPKI bersidang pertama pada 29 Mei sampai 1 Juni 1945. Panitia Sembilan baru bekerja pada 22 Juni 1945.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  93,
  'TWK',
  'Pancasila',
  'sedang',
  'Rapat RW menetapkan jadwal ronda setelah semua warga menyampaikan pendapat dan keputusan diambil dengan mufakat. Ini mencerminkan sila...',
  NULL,
  '{"A":"Ke-4","B":"Ke-2","C":"Ke-5","D":"Ke-3","E":"Ke-1"}'::jsonb,
  'A',
  'Musyawarah mufakat adalah pengamalan sila kerakyatan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  94,
  'TWK',
  'Pancasila',
  'sedang',
  'Panitia bantuan membagikan sembako hanya kepada kerabat dekat dan mengabaikan warga yang berhak. Nilai yang dilanggar adalah sila...',
  NULL,
  '{"A":"Ke-2","B":"Ke-5","C":"Ke-3","D":"Ke-1","E":"Ke-4"}'::jsonb,
  'B',
  'Keadilan sosial berarti bantuan diberikan adil kepada yang berhak.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  95,
  'TWK',
  'Pancasila',
  'sedang',
  'Kepala desa memutuskan alokasi dana desa sendirian tanpa forum musyawarah, namun hasilnya dirasakan merata oleh warga. Dari sudut Pancasila, penilaian yang paling tepat adalah....',
  NULL,
  '{"A":"sesuai sila ke-5 sepenuhnya karena hasil merata sehingga proses tidak penting","B":"sesuai sila ke-4 karena kepala desa adalah wakil rakyat","C":"menyimpang dari sila ke-3 karena warga menjadi terpecah","D":"tetap menyimpang dari sila ke-4, karena proses musyawarah adalah bagian dari nilai itu sendiri","E":"sesuai sila ke-2 karena warga diperlakukan manusiawi"}'::jsonb,
  'D',
  'Sila ke-4 menilai cara pengambilan keputusan, bukan hanya hasil. Hasil yang baik tidak menggantikan musyawarah.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  96,
  'TWK',
  'Pancasila',
  'sedang',
  'Perda pengaturan jam operasional pasar ditinjau ulang tiap lima tahun mengikuti kebutuhan zaman. Dalam kerangka nilai Pancasila, perda ini paling tepat tergolong....',
  NULL,
  '{"A":"nilai praksis, karena diterapkan langsung di pasar","B":"nilai ideal yang bersifat abadi","C":"nilai dasar, karena menyangkut kehidupan sehari-hari","D":"nilai instrumental, karena menjabarkan nilai dasar dan dapat disesuaikan dengan zaman","E":"bukan nilai, karena sekadar urusan teknis"}'::jsonb,
  'D',
  'Peraturan perundang-undangan adalah nilai instrumental. Nilai praksis adalah pengamalan nyata, sedangkan nilai dasar bersifat tetap.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  97,
  'TWK',
  'Pancasila',
  'sedang',
  'Mayoritas warga bermusyawarah dan memutuskan menolak berdirinya rumah ibadah kelompok minoritas yang persyaratan administrasinya lengkap. Sikap ASN yang paling tepat adalah....',
  NULL,
  '{"A":"menjelaskan bahwa hak beribadah dijamin konstitusi dan tidak dapat dibatalkan oleh suara mayoritas, lalu memfasilitasi penyelesaian sesuai aturan","B":"mengikuti hasil musyawarah karena itu pengamalan sila ke-4","C":"memihak minoritas dan mengabaikan keberatan warga","D":"menyarankan kelompok minoritas mencari lokasi di luar kota","E":"menunda keputusan tanpa batas waktu sampai situasi reda"}'::jsonb,
  'A',
  'Musyawarah tidak dapat meniadakan hak konstitusional. ASN memfasilitasi penyelesaian sesuai aturan dan tetap mendengar warga.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  98,
  'TWK',
  'Pancasila',
  'sedang',
  'Bantuan sosial dibagi dalam jumlah sama kepada seluruh keluarga, termasuk yang berpenghasilan tinggi, dengan alasan semua warga setara. Dari sudut sila ke-5, pembagian ini....',
  NULL,
  '{"A":"kurang tepat, karena keadilan sosial menuntut pemberian sesuai kebutuhan, bukan sama rata","B":"paling adil karena semua mendapat jumlah yang sama","C":"tepat selama dibagikan secara terbuka","D":"tidak berkaitan dengan keadilan sosial","E":"melanggar sila ke-3 karena menimbulkan kecemburuan"}'::jsonb,
  'A',
  'Keadilan sosial bersifat proporsional terhadap kebutuhan. Sama rata dapat menjadi tidak adil bagi yang membutuhkan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  99,
  'TWK',
  'Pancasila',
  'sedang',
  'Contoh berikut yang BUKAN pengamalan sila ke-2 adalah....?',
  NULL,
  '{"A":"menegakkan aturan sama rata dengan hukuman yang merendahkan martabat pelanggar","B":"menghormati hak orang lain menyampaikan pendapat","C":"menjenguk tetangga berbeda keyakinan yang sedang sakit","D":"menolak perlakuan sewenang-wenang terhadap pekerja","E":"menolong korban kecelakaan tanpa memandang asal-usulnya"}'::jsonb,
  'A',
  'Sila ke-2 menuntut perlakuan adil dan beradab. Penegakan aturan pun tidak boleh merendahkan martabat manusia.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  100,
  'TWK',
  'Pancasila',
  'sedang',
  'Pemda mempercepat pembangunan bendungan, namun sebagian warga terdampak menolak nilai ganti rugi. Tindakan pejabat yang paling tepat adalah....',
  NULL,
  '{"A":"menaikkan ganti rugi hanya bagi warga yang paling vokal agar penolakan reda","B":"melanjutkan musyawarah ganti rugi yang layak sesuai aturan, sambil menyiapkan mekanisme hukum bila terjadi sengketa","C":"menunda proyek sampai seluruh warga terdampak menyatakan setuju","D":"menyerahkan penyelesaian sepenuhnya kepada kontraktor agar pemda tidak terlibat","E":"melanjutkan pembangunan karena kepentingan umum didahulukan atas kepentingan perorangan"}'::jsonb,
  'B',
  'Kepentingan umum tidak menghapus hak warga atas ganti rugi yang layak. Musyawarah dan mekanisme hukum menjaga keadilan bagi semua pihak.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  101,
  'TWK',
  'Pancasila',
  'sedang',
  'Lurah memutuskan penggunaan dana kelurahan sepihak tanpa mendengar warga. Sila yang paling langsung diabaikan adalah...',
  NULL,
  '{"A":"Sila ke-1","B":"Sila ke-2","C":"Sila ke-3","D":"Sila ke-4","E":"Sila ke-5"}'::jsonb,
  'D',
  'Keputusan tanpa musyawarah mengabaikan nilai sila ke-4.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  102,
  'TWK',
  'Pancasila',
  'sedang',
  'Pemda membagi bantuan hanya ke kelompok pendukung kepala daerah. Sila yang paling langsung dilanggar...',
  NULL,
  '{"A":"Sila ke-1","B":"Sila ke-2","C":"Sila ke-3","D":"Sila ke-4","E":"Sila ke-5"}'::jsonb,
  'E',
  'Keadilan sosial bagi seluruh rakyat dilanggar oleh pembagian yang diskriminatif.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  103,
  'TWK',
  'Pancasila',
  'sedang',
  'Pemerintah kabupaten menyusun rencana pembangunan lewat musyawarah dengan perwakilan petani, nelayan, perempuan, dan penyandang disabilitas, lalu memprioritaskan desa yang paling tertinggal. Dua nilai Pancasila yang paling tampak adalah....',
  NULL,
  '{"A":"sila ke-1 dan sila ke-2","B":"sila ke-2 dan sila ke-3","C":"sila ke-3 dan sila ke-5","D":"sila ke-4 dan sila ke-5","E":"sila ke-1 dan sila ke-4"}'::jsonb,
  'D',
  'Musyawarah melibatkan banyak pihak (sila ke-4) dan prioritas bagi yang tertinggal (sila ke-5, keadilan sosial).',
  NULL,
  NULL,
  'published'
),
(
  'web',
  104,
  'TWK',
  'Pancasila',
  'sedang',
  'Dalam susunan sila-sila Pancasila yang bersifat hierarkis piramidal, sila kedua....',
  NULL,
  '{"A":"dijiwai sila pertama serta meliputi dan menjiwai sila ketiga, keempat, dan kelima","B":"menjiwai sila pertama serta dijiwai sila ketiga, keempat, dan kelima","C":"dijiwai sila kelima serta meliputi dan menjiwai sila pertama, ketiga, dan keempat","D":"sejajar dengan sila pertama dan tidak saling meliputi dengan sila yang lain","E":"dijiwai sila ketiga serta meliputi dan menjiwai sila keempat dan kelima"}'::jsonb,
  'A',
  'Dalam hierarki piramidal, sila di atas meliputi dan menjiwai sila di bawahnya: sila 1 menjiwai sila 2, sila 2 menjiwai sila 3, 4, dan 5, dan seterusnya.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  105,
  'TWK',
  'Pancasila',
  'sedang',
  'Dalam rapat warga, usulan relokasi pasar diputuskan lewat pemungutan suara setelah perdebatan singkat, padahal sebagian peserta belum sempat menyampaikan pendapat. Menurut nilai sila keempat, proses itu....',
  NULL,
  '{"A":"tepat, karena suara terbanyak merupakan prinsip utama dari sila keempat","B":"kurang tepat, karena pemungutan suara ditempuh sebelum upaya mufakat melalui musyawarah maksimal","C":"tepat, karena waktu rapat terbatas dan hasil hitungannya sah secara administratif","D":"kurang tepat, karena keputusan harus diambil oleh pemimpin rapat setelah mendengar seluruh usulan peserta","E":"kurang tepat, karena sila keempat tidak membolehkan pemungutan suara dalam bentuk apa pun"}'::jsonb,
  'B',
  'Sila ke-4 mengutamakan musyawarah untuk mufakat. Pemungutan suara adalah jalan terakhir setelah upaya mufakat ditempuh dengan sungguh-sungguh dan semua pihak diberi kesempatan bicara.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  106,
  'TWK',
  'Pancasila',
  'sedang',
  'Perubahan rumusan sila pertama dari "Ketuhanan dengan kewajiban menjalankan syariat Islam bagi pemeluk-pemeluknya" menjadi "Ketuhanan Yang Maha Esa" ditetapkan pada....',
  NULL,
  '{"A":"sidang BPUPKI tanggal 1 Juni 1945","B":"penandatanganan Piagam Jakarta tanggal 22 Juni 1945","C":"sidang PPKI tanggal 18 Agustus 1945","D":"pembacaan Proklamasi tanggal 17 Agustus 1945","E":"Dekrit Presiden tanggal 5 Juli 1959"}'::jsonb,
  'C',
  'Rumusan Piagam Jakarta (22 Juni 1945) diubah menjadi "Ketuhanan Yang Maha Esa" pada sidang PPKI 18 Agustus 1945 saat UUD 1945 disahkan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  107,
  'TWK',
  'Pancasila',
  'sedang',
  'Atasan menjadwalkan rapat penting pada hari Jumat pukul 11.30 sampai 13.00. Beberapa pegawai beragama Islam keberatan karena bersamaan dengan salat Jumat. Sikap yang paling sesuai dengan sila pertama adalah....',
  NULL,
  '{"A":"tetap menjalankan rapat karena urusan kedinasan lebih penting dari kegiatan keagamaan","B":"menggeser jadwal ke waktu yang tidak bersinggungan dengan ibadah wajib para pegawai","C":"menjalankan rapat tetapi mengizinkan pegawai yang keberatan hadir terlambat tanpa catatan","D":"menjadwalkan rapat terpisah bagi pegawai yang keberatan pada hari lain","E":"meminta pegawai yang keberatan mengirim wakil untuk menghadiri rapat tersebut"}'::jsonb,
  'B',
  'Sila ke-1 menuntut penghormatan kebebasan beribadah. Solusi terbaik menghindari benturan jadwal bagi semua pegawai, bukan memisahkan atau menomorduakan yang beribadah.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  108,
  'TWK',
  'Pancasila',
  'sedang',
  'Pemerintah daerah menyediakan jalur afirmasi penerimaan murid baru bagi keluarga kurang mampu agar mereka memperoleh kesempatan belajar yang layak. Kebijakan ini paling selaras dengan nilai....',
  NULL,
  '{"A":"sila kedua, karena yang ditekankan adalah memperlakukan setiap orang secara persis sama tanpa pengecualian","B":"sila kelima, karena keadilan sosial menghendaki pemerataan kesempatan bagi mereka yang kurang beruntung","C":"sila ketiga, karena tujuannya menyatukan seluruh daerah dalam satu sistem","D":"sila keempat, karena kebijakan itu lahir dari musyawarah wakil rakyat","E":"sila pertama, karena membantu sesama merupakan perintah agama"}'::jsonb,
  'B',
  'Keadilan sosial berarti pemerataan kesempatan dan perlakuan adil secara proporsional, bukan perlakuan identik.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  109,
  'TWK',
  'Pancasila',
  'sedang',
  'Urutan lima dasar negara yang diusulkan Ir. Soekarno dalam pidato 1 Juni 1945 di sidang BPUPKI adalah....',
  NULL,
  '{"A":"Kebangsaan Indonesia; Internasionalisme; Mufakat atau demokrasi; Kesejahteraan sosial; Ketuhanan","B":"Ketuhanan; Kebangsaan Indonesia; Perikemanusiaan; Mufakat atau demokrasi; Kesejahteraan sosial","C":"Kebangsaan Indonesia; Mufakat atau demokrasi; Internasionalisme; Ketuhanan; Kesejahteraan sosial","D":"Peri kebangsaan; Peri kemanusiaan; Peri ketuhanan; Peri kerakyatan; Kesejahteraan rakyat","E":"Ketuhanan Yang Maha Esa; Kemanusiaan; Persatuan; Kerakyatan; Keadilan sosial"}'::jsonb,
  'A',
  'Opsi 4 rumusan Muhammad Yamin (29 Mei 1945); opsi 5 rumusan final (18 Agustus 1945).',
  NULL,
  NULL,
  'published'
),
(
  'web',
  110,
  'TWK',
  'Pancasila',
  'sedang',
  'Pancasila disebut ideologi terbuka. Pernyataan yang paling tepat tentang makna keterbukaan itu adalah....',
  NULL,
  '{"A":"nilai dasarnya tetap, sedangkan nilai instrumentalnya dapat dikembangkan sesuai zaman","B":"seluruh sila dapat diubah rumusannya jika disetujui oleh mayoritas rakyat Indonesia","C":"nilai dari ideologi lain boleh menggantikan sila tertentu bila dinilai lebih bermanfaat","D":"tafsir Pancasila diserahkan sepenuhnya kepada masing-masing kelompok masyarakat","E":"Pembukaan UUD dapat diganti tanpa mengubah dasar negara yang sudah disepakati"}'::jsonb,
  'A',
  'Keterbukaan hanya pada nilai instrumental dan praksis (UU, kebijakan); nilai dasar bersifat tetap.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  111,
  'TWK',
  'Pancasila',
  'sedang',
  'Sila kelima Pancasila berbunyi....',
  NULL,
  '{"A":"Keadilan sosial bagi seluruh rakyat Indonesia","B":"Keadilan sosial bagi seluruh warga negara Indonesia","C":"Keadilan sosial bagi seluruh penduduk Indonesia","D":"Kesejahteraan sosial bagi seluruh rakyat Indonesia","E":"Keadilan sosial bagi seluruh bangsa Indonesia"}'::jsonb,
  'A',
  'Rumusan resmi: Keadilan sosial bagi seluruh rakyat Indonesia.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  112,
  'TWK',
  'Pancasila',
  'sedang',
  'Sila keempat Pancasila berbunyi....',
  NULL,
  '{"A":"Kerakyatan yang dipimpin oleh hikmat kebijaksanaan dalam permusyawaratan/perwakilan","B":"Kerakyatan yang dipimpin oleh hikmat kebijaksanaan dalam permusyawaratan dan pemungutan suara","C":"Kedaulatan rakyat yang dipimpin oleh hikmat kebijaksanaan dalam permusyawaratan/perwakilan","D":"Kerakyatan yang dipimpin oleh kebijaksanaan dalam permusyawaratan/perwakilan","E":"Kerakyatan yang dipimpin oleh hikmat kebijaksanaan dalam musyawarah untuk mufakat"}'::jsonb,
  'A',
  'Pengecoh mengganti satu unsur: pemungutan suara, kedaulatan, hilangnya kata hikmat, atau musyawarah untuk mufakat.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  113,
  'TWK',
  'Pancasila',
  'sedang',
  'Sikap yang paling mencerminkan nilai sila ketiga Pancasila adalah....',
  NULL,
  '{"A":"mengutamakan kepentingan bangsa di atas golongan tanpa meniadakan identitas daerah","B":"mengutamakan kepentingan daerah di atas kepentingan bangsa agar identitas daerah terjaga","C":"menghilangkan identitas daerah demi mempercepat persatuan seluruh bangsa","D":"mengutamakan kepentingan golongan sendiri selama tidak merugikan golongan lain","E":"menyerahkan urusan persatuan kepada aparat keamanan dan tokoh masyarakat"}'::jsonb,
  'A',
  'Persatuan Indonesia: kepentingan bangsa didahulukan, keberagaman tetap dihormati.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  114,
  'TWK',
  'Pancasila',
  'sedang',
  'Sila kedua Pancasila berbunyi....',
  NULL,
  '{"A":"Kemanusiaan yang adil dan beradab","B":"Kemanusiaan yang adil dan bermartabat","C":"Perikemanusiaan yang adil dan beradab","D":"Kemanusiaan yang beradab dan berkeadilan","E":"Kemanusiaan yang adil dan berbudaya"}'::jsonb,
  'A',
  'Rumusan resmi: Kemanusiaan yang adil dan beradab.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  115,
  'TWK',
  'Pancasila',
  'sedang',
  'Rumusan Pancasila yang sah sebagai dasar negara tercantum dalam....',
  NULL,
  '{"A":"alinea keempat Pembukaan UUD NRI 1945","B":"alinea ketiga Pembukaan UUD NRI 1945","C":"alinea kedua Pembukaan UUD NRI 1945","D":"Pasal 1 Batang Tubuh UUD NRI 1945","E":"Penjelasan UUD NRI 1945"}'::jsonb,
  'A',
  'Pancasila sebagai dasar negara dirumuskan dalam alinea keempat Pembukaan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  116,
  'TWK',
  'UUD 1945',
  'sedang',
  'Pasal 33 ayat (1) UUD NRI Tahun 1945 mengatur perekonomian berdasarkan asas kekeluargaan. Dalam menghadapi persaingan ekonomi modern, prinsip utama yang harus tetap dipertahankan Indonesia adalah....',
  NULL,
  '{"A":"Menyerahkan pengelolaan kegiatan ekonomi kepada pemerintah secara menyeluruh","B":"Mendorong persaingan usaha sebagai dasar peningkatan pertumbuhan ekonomi nasional","C":"Mengutamakan kepentingan bersama melalui kerja sama dan pemerataan kesejahteraan ekonomi","D":"Memberikan kebebasan kepada individu untuk mengembangkan usaha demi memperoleh keuntungan","E":"Memberikan kesempatan kepada setiap individu untuk menguasai sumber daya ekonomi"}'::jsonb,
  'C',
  'Asas kekeluargaan = usaha bersama, kepentingan bersama, pemerataan. Opsi individualistik, serba pemerintah, dan serba persaingan tidak sesuai.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  117,
  'TWK',
  'UUD 1945',
  'sedang',
  'Pemerintah menyatakan air, tanah, dan kekayaan alam di dalam bumi dikuasai negara untuk sebesar-besar kemakmuran rakyat. Ketentuan ini terdapat pada....',
  NULL,
  '{"A":"Pasal 27 ayat (2)","B":"Pasal 33 ayat (3)","C":"Pasal 33 ayat (1)","D":"Pasal 34 ayat (1)","E":"Pasal 33 ayat (2)"}'::jsonb,
  'B',
  'Ayat 1 asas kekeluargaan, ayat 2 cabang produksi penting, ayat 3 bumi, air, dan kekayaan alam dikuasai negara.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  118,
  'TWK',
  'UUD 1945',
  'sedang',
  'Bentuk badan usaha yang paling mencerminkan asas kekeluargaan menurut Pasal 33 ayat (1) UUD 1945 adalah....',
  NULL,
  '{"A":"Perseroan terbatas","B":"Firma","C":"Persekutuan komanditer (CV)","D":"Usaha perseorangan","E":"Koperasi"}'::jsonb,
  'E',
  'Koperasi dipandang paling sesuai dengan usaha bersama atas asas kekeluargaan: anggota adalah pemilik sekaligus pengguna.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  119,
  'TWK',
  'UUD 1945',
  'sedang',
  'Presiden dan DPR membahas sebuah rancangan undang-undang. Setelah memperoleh persetujuan bersama, rancangan tersebut belum ditandatangani Presiden hingga melewati 30 hari. Berdasarkan UUD NRI Tahun 1945, keadaan tersebut berarti....',
  NULL,
  '{"A":"MPR mengambil alih pengesahan karena Presiden tidak menjalankan kewenangannya","B":"Rancangan harus diajukan kembali dalam persidangan DPR berikutnya","C":"Rancangan tetap sah menjadi undang-undang dan wajib diundangkan","D":"Rancangan otomatis gugur karena belum memperoleh pengesahan Presiden","E":"DPR dapat mengesahkan rancangan tersebut tanpa melibatkan Presiden"}'::jsonb,
  'C',
  'Pasal 20 ayat 5: sudah disetujui bersama lalu 30 hari tidak disahkan Presiden, RUU sah menjadi UU dan wajib diundangkan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  120,
  'TWK',
  'UUD 1945',
  'sedang',
  'Mahkamah Agung mengadili perkara pada tingkat kasasi sekaligus melakukan pengujian terhadap peraturan di bawah undang-undang yang dianggap bertentangan dengan undang-undang. Peran tersebut menunjukkan bahwa badan yudikatif berfungsi....',
  NULL,
  '{"A":"Menjalankan kekuasaan kehakiman melalui penyelesaian perkara dan pengujian hukum","B":"Memastikan pelaksanaan pemerintahan berjalan sesuai kebijakan nasional","C":"Mengendalikan lembaga eksekutif agar seluruh kebijakan sesuai kepentingan rakyat","D":"Membentuk norma hukum baru sebagai pelengkap kekosongan hukum","E":"Mengawasi lembaga legislatif dalam membentuk undang-undang yang berlaku"}'::jsonb,
  'A',
  'Kasasi dan pengujian peraturan adalah penyelesaian perkara dan pengujian hukum: kekuasaan kehakiman. Yudikatif tidak membentuk norma baru atau mengendalikan lembaga lain.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  121,
  'TWK',
  'UUD 1945',
  'sedang',
  'Presiden menetapkan peraturan pemerintah sebagai tindak lanjut dari undang-undang yang telah berlaku. Tindakan tersebut menunjukkan hubungan antara fungsi....',
  NULL,
  '{"A":"Yudikatif sebagai pembentuk norma hukum dan eksekutif sebagai penguji pelaksanaannya","B":"Legislatif sebagai pembentuk undang-undang dan eksekutif sebagai pelaksana ketentuan undang-undang","C":"Yudikatif sebagai penguji undang-undang dan legislatif sebagai pelaksana putusan pengadilan","D":"Legislatif sebagai pengawas dan yudikatif sebagai pelaksana kebijakan berdasarkan undang-undang","E":"Eksekutif sebagai pembentuk undang-undang dan legislatif sebagai pelaksana kebijakan pemerintah"}'::jsonb,
  'B',
  'Pasal 5 ayat 2: Presiden menetapkan PP untuk menjalankan UU. DPR membentuk UU, Presiden melaksanakannya.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  122,
  'TWK',
  'UUD 1945',
  'sedang',
  'Sebuah undang-undang diduga bertentangan dengan UUD NRI Tahun 1945. Pihak yang berkepentingan mengajukan pengujian agar dapat dinilai kesesuaiannya dengan konstitusi. Peran yang dijalankan dalam kasus tersebut merupakan fungsi....',
  NULL,
  '{"A":"Legislatif dalam memastikan produk hukum tetap sesuai kebutuhan masyarakat","B":"Eksekutif melalui kewenangan mengoreksi substansi undang-undang yang berlaku","C":"Eksekutif dalam mengendalikan pelaksanaan undang-undang yang dianggap bermasalah","D":"Yudikatif melalui pengujian konstitusionalitas undang-undang terhadap UUD","E":"Legislatif melalui evaluasi terhadap undang-undang yang telah dibentuk bersama"}'::jsonb,
  'D',
  'Pengujian UU terhadap UUD dilakukan Mahkamah Konstitusi (Pasal 24C), lembaga yudikatif.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  123,
  'TWK',
  'UUD 1945',
  'sedang',
  'Seorang warga merasa dirugikan oleh peraturan daerah yang diduga bertentangan dengan undang-undang. Lembaga yang berwenang menguji peraturan tersebut adalah....',
  NULL,
  '{"A":"Mahkamah Konstitusi","B":"Komisi Yudisial","C":"Mahkamah Agung","D":"Dewan Perwakilan Daerah","E":"DPRD provinsi"}'::jsonb,
  'C',
  'Peraturan di bawah UU diuji terhadap UU oleh Mahkamah Agung (Pasal 24A).',
  NULL,
  NULL,
  'published'
),
(
  'web',
  124,
  'TWK',
  'UUD 1945',
  'sedang',
  'Dua lembaga negara yang kewenangannya diberikan UUD 1945 berselisih mengenai batas kewenangan masing-masing. Lembaga yang berwenang memutus sengketa tersebut adalah....',
  NULL,
  '{"A":"Mahkamah Konstitusi","B":"Komisi Yudisial","C":"Majelis Permusyawaratan Rakyat","D":"Mahkamah Agung","E":"Dewan Perwakilan Rakyat"}'::jsonb,
  'A',
  'Pasal 24C ayat 1: MK memutus sengketa kewenangan lembaga negara yang kewenangannya diberikan UUD.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  125,
  'TWK',
  'UUD 1945',
  'sedang',
  'Ketentuan bahwa kedaulatan berada di tangan rakyat dan dilaksanakan menurut UUD terdapat pada...',
  NULL,
  '{"A":"Pasal 6A","B":"Pasal 1 ayat (3)","C":"Pasal 1 ayat (2)","D":"Pasal 28","E":"Pasal 2 ayat (1)"}'::jsonb,
  'C',
  'Pasal 1 ayat (2) tentang kedaulatan rakyat. Ayat (3) menyatakan Indonesia negara hukum.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  126,
  'TWK',
  'UUD 1945',
  'sedang',
  'Menurut Pasal 7 UUD 1945, Presiden dan Wakil Presiden memegang jabatan selama lima tahun dan sesudahnya dapat dipilih kembali untuk...',
  NULL,
  '{"A":"Dua kali masa jabatan","B":"Tiga kali masa jabatan","C":"Lima kali masa jabatan","D":"Satu kali masa jabatan","E":"Tanpa batas masa jabatan"}'::jsonb,
  'D',
  'Setelah amandemen, cuma untuk satu kali masa jabatan pada jabatan yang sama.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  127,
  'TWK',
  'UUD 1945',
  'sedang',
  'Sebuah Peraturan Pemerintah dinilai bertentangan dengan undang-undang. Lembaga yang berwenang mengujinya, dan lembaga yang berwenang menguji undang-undang terhadap UUD 1945, secara berurutan adalah....',
  NULL,
  '{"A":"Mahkamah Agung; Mahkamah Agung","B":"Mahkamah Konstitusi; Mahkamah Agung","C":"Mahkamah Agung; Mahkamah Konstitusi","D":"Komisi Yudisial; Mahkamah Konstitusi","E":"Mahkamah Konstitusi; Mahkamah Konstitusi"}'::jsonb,
  'C',
  'MA menguji peraturan di bawah undang-undang terhadap undang-undang. MK menguji undang-undang terhadap UUD 1945.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  128,
  'TWK',
  'UUD 1945',
  'sedang',
  'Dalam keadaan darurat negara dapat membatasi sejumlah hak warga. Hak yang tidak dapat dikurangi dalam keadaan apa pun adalah....',
  NULL,
  '{"A":"hak memperoleh informasi","B":"hak memperoleh pekerjaan yang layak","C":"hak atas kemerdekaan pikiran dan hati nurani","D":"hak berserikat","E":"hak berkumpul secara damai"}'::jsonb,
  'C',
  'Pasal 28I ayat 1 UUD 1945 menyebut hak yang tidak dapat dikurangi, antara lain hak hidup, bebas dari penyiksaan, dan kemerdekaan pikiran dan hati nurani.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  129,
  'TWK',
  'UUD 1945',
  'sedang',
  'Pemerintah membatasi unjuk rasa di sekitar rumah sakit demi akses ambulans, melalui peraturan dan secara proporsional. Pembatasan ini....',
  NULL,
  '{"A":"sah selama pejabat menyatakannya secara lisan","B":"melanggar HAM karena hanya MK yang boleh membatasi","C":"sah, karena negara bebas membatasi hak apa pun yang dianggap perlu","D":"sah, karena HAM boleh dibatasi lewat undang-undang untuk menjamin hak orang lain dan ketertiban umum secara proporsional","E":"melanggar HAM karena hak berkumpul bersifat mutlak"}'::jsonb,
  'D',
  'Pasal 28J membolehkan pembatasan hak lewat undang-undang untuk menjamin hak orang lain dan ketertiban umum. Pembatasan harus proporsional.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  130,
  'TWK',
  'UUD 1945',
  'sedang',
  'Presiden menerbitkan Perppu karena hal ihwal kegentingan yang memaksa. Pernyataan yang paling tepat tentang Perppu tersebut adalah....',
  NULL,
  '{"A":"harus diajukan ke DPR pada persidangan berikutnya, dan bila tidak disetujui harus dicabut","B":"hanya dapat diuji oleh Mahkamah Agung karena bukan undang-undang","C":"harus mendapat persetujuan MPR sebelum dapat diberlakukan","D":"otomatis menjadi undang-undang setelah enam puluh hari berlaku","E":"berlaku tetap tanpa persetujuan DPR karena Presiden memegang kekuasaan pemerintahan"}'::jsonb,
  'A',
  'Pasal 22 UUD 1945: Perppu harus mendapat persetujuan DPR pada persidangan berikutnya. Jika ditolak, Perppu harus dicabut.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  131,
  'TWK',
  'UUD 1945',
  'sedang',
  'Presiden dapat memberikan grasi dengan berbagai pertimbangan, kecuali....',
  NULL,
  '{"A":"sikap dan perilaku terpidana selama menjalani masa pidana","B":"kondisi kesehatan terpidana yang tidak memungkinkan menjalani pidana","C":"terpidana masih mengajukan kasasi atas putusan yang menjeratnya","D":"kepentingan negara berdasarkan pertimbangan khusus terhadap terpidana","E":"pertimbangan kemanusiaan dengan tetap memperhatikan rasa keadilan"}'::jsonb,
  'C',
  'Grasi hanya untuk putusan yang sudah berkekuatan hukum tetap. Selama kasasi berjalan, grasi belum dapat diajukan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  132,
  'TWK',
  'UUD 1945',
  'sedang',
  'Presiden memberi amnesti kepada sekelompok orang yang terlibat tindak pidana politik tertentu dan abolisi kepada seorang tersangka yang perkaranya masih pada tahap penuntutan. Pernyataan yang paling tepat adalah....',
  NULL,
  '{"A":"keduanya diberikan tanpa pertimbangan lembaga lain karena hak prerogatif Presiden","B":"keduanya mensyaratkan pertimbangan Mahkamah Agung karena menyangkut perkara pidana","C":"amnesti menghapus akibat hukum pidana, abolisi menghentikan penuntutan, dan keduanya dengan pertimbangan DPR","D":"abolisi menghapus status bersalah terpidana, amnesti mengurangi lama pidana","E":"amnesti hanya dapat diberikan setelah putusan berkekuatan hukum tetap, abolisi sebelum penuntutan"}'::jsonb,
  'C',
  'Pasal 14 ayat 2: amnesti dan abolisi dengan pertimbangan DPR. Amnesti menghapus akibat hukum pidana, abolisi menghentikan proses penuntutan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  133,
  'TWK',
  'UUD 1945',
  'sedang',
  'Seorang warga sempat ditahan, lalu dinyatakan tidak bersalah, tetapi nama baiknya telanjur tercemar. Ia memohon pemulihan harkat dan martabatnya kepada Presiden. Hak Presiden yang digunakan dan lembaga pemberi pertimbangannya adalah....',
  NULL,
  '{"A":"grasi, dengan pertimbangan Mahkamah Agung","B":"amnesti, dengan pertimbangan DPR","C":"rehabilitasi, dengan pertimbangan Mahkamah Agung","D":"rehabilitasi, dengan pertimbangan DPR","E":"abolisi, dengan pertimbangan DPR"}'::jsonb,
  'C',
  'Rehabilitasi memulihkan kedudukan dan nama baik, dengan pertimbangan MA. Pasangan MA adalah grasi dan rehabilitasi.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  134,
  'TWK',
  'UUD 1945',
  'sedang',
  'Seorang terpidana dijatuhi penjara satu tahun yang telah berkekuatan hukum tetap, lalu mengajukan grasi. Penilaian yang paling tepat adalah....',
  NULL,
  '{"A":"dapat diterima karena semua putusan berkekuatan hukum tetap dapat dimintakan grasi","B":"dapat diterima, tetapi harus diajukan oleh jaksa penuntut umum","C":"ditolak karena grasi hanya dapat diajukan paling lama satu tahun sejak putusan","D":"tidak memenuhi syarat karena grasi hanya untuk pidana mati, seumur hidup, atau penjara paling rendah dua tahun","E":"ditolak karena grasi hanya untuk putusan yang belum berkekuatan hukum tetap"}'::jsonb,
  'D',
  'Putusan yang dapat digrasi: pidana mati, penjara seumur hidup, atau penjara paling rendah 2 tahun. Batas satu tahun sudah dihapus MK (Putusan 107/PUU-XIII/2015).',
  NULL,
  NULL,
  'published'
),
(
  'web',
  135,
  'TWK',
  'UUD 1945',
  'sedang',
  'Presiden mengabulkan grasi dengan mengubah pidana mati seorang terpidana menjadi penjara seumur hidup. Akibat hukum yang paling tepat adalah....',
  NULL,
  '{"A":"seluruh akibat hukum pidana terhapus seperti pada amnesti","B":"terpidana harus dibebaskan dalam waktu satu tahun","C":"putusan dan status bersalah tetap ada, hanya pelaksanaan pidananya yang berubah","D":"putusan pengadilan dibatalkan sehingga terpidana dianggap tidak bersalah","E":"perkara diperiksa ulang melalui peninjauan kembali"}'::jsonb,
  'C',
  'Grasi mengubah, meringankan, mengurangi, atau menghapus pelaksanaan pidana. Putusan pengadilan dan status bersalah tidak hilang.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  136,
  'TWK',
  'UUD 1945',
  'sedang',
  'Pasal 33 ayat (3) UUD 1945 menyatakan bumi, air, dan kekayaan alam dikuasai negara untuk kemakmuran rakyat. Pernyataan yang paling tepat tentang pelibatan swasta adalah....',
  NULL,
  '{"A":"dimungkinkan asalkan seluruh keuntungan diserahkan kepada pemerintah daerah","B":"dilarang mutlak karena sumber daya alam hanya boleh dikelola BUMN","C":"dimungkinkan hanya bila swasta berasal dari daerah penghasil","D":"bebas sepenuhnya selama swasta membayar pajak","E":"dimungkinkan selama penguasaan tetap pada negara dan hasilnya diarahkan bagi kemakmuran rakyat"}'::jsonb,
  'E',
  'Penguasaan oleh negara tidak berarti hanya dikelola BUMN. Swasta boleh terlibat selama negara menguasai dan hasilnya untuk kemakmuran rakyat.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  137,
  'TWK',
  'UUD 1945',
  'sedang',
  'Lembaga yang menerima pengaduan masyarakat tentang maladministrasi pelayanan publik adalah...',
  NULL,
  '{"A":"Komnas HAM","B":"KPK","C":"Ombudsman RI","D":"Bawaslu","E":"Mahkamah Agung"}'::jsonb,
  'C',
  'Ombudsman RI mengawasi penyelenggaraan pelayanan publik dan menangani maladministrasi.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  138,
  'TWK',
  'UUD 1945',
  'sedang',
  'Perda melarang kegiatan usaha tertentu secara total dan bertentangan dengan UU. Upaya hukum yang tepat...',
  NULL,
  '{"A":"Uji materi perda ke Mahkamah Agung","B":"Uji materi perda ke Mahkamah Konstitusi","C":"Gugat ke PTUN atas UU","D":"Meminta DPR membatalkan perda","E":"Mengabaikan perda"}'::jsonb,
  'A',
  'Perda di bawah UU diuji ke MA; UU terhadap UUD diuji ke MK.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  139,
  'TWK',
  'UUD 1945',
  'sedang',
  'Dinas sosial mengunggah daftar lengkap penerima bantuan beserta alamat dan nomor induk kependudukan di papan pengumuman terbuka. Hak konstitusional yang paling terdampak adalah....',
  NULL,
  '{"A":"hak memperoleh informasi menurut Pasal 28F","B":"hak atas rasa aman dari ancaman perang menurut Pasal 30","C":"perlindungan diri pribadi, keluarga, dan harta benda menurut Pasal 28G ayat (1)","D":"hak beragama menurut Pasal 29 ayat (2)","E":"hak mengembangkan diri melalui pemenuhan kebutuhan dasar menurut Pasal 28C ayat (1)"}'::jsonb,
  'C',
  'Data pribadi masuk perlindungan diri pribadi (Pasal 28G ayat 1). Keterbukaan informasi (Pasal 28F) tidak berarti membuka data pribadi.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  140,
  'TWK',
  'UUD 1945',
  'sedang',
  'DPR tidak menyetujui rancangan APBN yang diajukan Presiden. Akibat menurut Pasal 23 ayat (3) UUD 1945 adalah....',
  NULL,
  '{"A":"pemerintah menjalankan APBN tahun lalu","B":"pemerintah menunda semua belanja sampai ada kesepakatan","C":"Presiden menetapkan APBN dengan Perppu","D":"MPR mengesahkan APBN sementara","E":"Mahkamah Konstitusi memutus APBN yang berlaku"}'::jsonb,
  'A',
  'Jika DPR tidak menyetujui, pemerintah menjalankan APBN tahun yang lalu. Contoh pasal yang sering diuji dalam bentuk akibat hukum.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  141,
  'TWK',
  'UUD 1945',
  'sedang',
  'Rancangan undang-undang telah disetujui bersama oleh DPR dan Presiden, tetapi Presiden tidak mengesahkannya dalam waktu tiga puluh hari sejak persetujuan itu. Akibat hukum yang paling tepat adalah....',
  NULL,
  '{"A":"rancangan itu gugur dan harus diajukan ulang pada masa sidang DPR yang sama setelah dibahas kembali","B":"rancangan itu sah menjadi undang-undang dan wajib diundangkan sebagaimana mestinya","C":"rancangan itu dikembalikan kepada DPR untuk dibahas ulang mulai dari awal","D":"rancangan itu baru berlaku setelah mendapat persetujuan dari Mahkamah Konstitusi","E":"rancangan itu ditangguhkan sampai Presiden bersedia untuk mengesahkannya"}'::jsonb,
  'B',
  'Pasal 20 ayat (5) UUD NRI 1945: RUU yang telah disetujui bersama tetapi tidak disahkan Presiden dalam 30 hari sah menjadi UU dan wajib diundangkan. Jebakan: larangan diajukan lagi pada masa sidang yang sama (Pasal 20 ayat 3) berlaku bagi RUU yang TIDAK mendapat persetujuan bersama.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  142,
  'TWK',
  'UUD 1945',
  'sedang',
  'Urutan proses pemberhentian Presiden dalam masa jabatannya karena dugaan pelanggaran hukum yang paling tepat menurut UUD NRI 1945 adalah....',
  NULL,
  '{"A":"DPR langsung mengusulkan kepada MPR, lalu MK memeriksa pendapat DPR dan MPR memutus","B":"DPR menyatakan pendapat, MK memutus pendapat itu, DPR mengusulkan ke MPR, lalu MPR memutus","C":"DPR menyatakan pendapat, MPR memutus, lalu MK mengesahkan putusan MPR sebagai putusan akhir","D":"MK memeriksa dugaan pelanggaran atas inisiatif sendiri, lalu MPR memutus tanpa melalui DPR","E":"DPR menyatakan pendapat, MA memutus pendapat itu, DPR mengusulkan ke MPR, lalu MPR memutus"}'::jsonb,
  'B',
  'Pasal 7B: DPR menyatakan pendapat, MK memeriksa dan memutus pendapat itu, DPR mengusulkan kepada MPR, lalu MPR memutus dalam rapat paripurna. MK memutus pendapat DPR, bukan MA, dan MPR memutus paling akhir.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  143,
  'TWK',
  'UUD 1945',
  'sedang',
  'Seorang kepala dinas menerbitkan pungutan baru yang dinilai bermanfaat bagi masyarakat, disetujui tokoh masyarakat, dan sejalan dengan visi kepala daerah, tetapi belum ada dasar peraturannya. Menurut prinsip negara hukum, pungutan tersebut....',
  NULL,
  '{"A":"sah, karena persetujuan tokoh masyarakat sudah mencerminkan kehendak rakyat di daerah itu dan tidak perlu dasar lain","B":"belum sah, karena tindakan pemerintahan harus bersandar pada kewenangan yang diatur peraturan","C":"sah, karena manfaat bagi masyarakat merupakan dasar kewenangan yang sudah mencukupi","D":"sah untuk sementara waktu, sampai ada keberatan resmi yang diajukan oleh masyarakat","E":"sah, karena sejalan dengan visi kepala daerah sebagai pemegang kekuasaan pemerintahan"}'::jsonb,
  'B',
  'Pasal 1 ayat (3): Indonesia negara hukum. Asas legalitas menuntut setiap tindakan pemerintah berdasarkan peraturan perundang-undangan. Manfaat, dukungan, dan visi pimpinan bukan sumber kewenangan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  144,
  'TWK',
  'UUD 1945',
  'sedang',
  'DPR menggunakan hak untuk menyelidiki pelaksanaan suatu undang-undang dan/atau kebijakan pemerintah yang diduga bertentangan dengan peraturan perundang-undangan. Hak yang digunakan adalah hak....',
  NULL,
  '{"A":"interpelasi","B":"angket","C":"menyatakan pendapat","D":"anggaran","E":"imunitas"}'::jsonb,
  'B',
  'Angket = penyelidikan. Interpelasi = meminta keterangan tentang kebijakan penting. Menyatakan pendapat = sikap DPR atas kebijakan atau dugaan pelanggaran.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  145,
  'TWK',
  'UUD 1945',
  'sedang',
  'Menurut Pasal 6A ayat (3) UUD NRI 1945, pasangan calon Presiden dan Wakil Presiden terpilih apabila memperoleh....',
  NULL,
  '{"A":"lebih dari 50% suara dengan sedikitnya 20% suara di setiap provinsi yang tersebar di lebih dari separuh jumlah provinsi","B":"lebih dari 50% suara dengan sedikitnya 25% suara di setiap provinsi yang tersebar di lebih dari separuh jumlah provinsi","C":"lebih dari 50% suara dengan sedikitnya 20% suara di setiap provinsi yang tersebar di lebih dari dua pertiga jumlah provinsi","D":"lebih dari 40% suara dengan sedikitnya 20% suara di setiap provinsi yang tersebar di lebih dari separuh jumlah provinsi","E":"lebih dari 50% suara dengan sedikitnya 20% suara di setiap provinsi yang tersebar di sekurang-kurangnya sepertiga provinsi"}'::jsonb,
  'A',
  'Pasal 6A ayat (3): lebih dari 50% suara dengan sedikitnya 20% di setiap provinsi, tersebar di lebih dari separuh jumlah provinsi.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  146,
  'TWK',
  'UUD 1945',
  'sedang',
  'Presiden menandatangani perjanjian internasional yang menimbulkan akibat luas dan mendasar bagi kehidupan rakyat serta mengharuskan perubahan sebuah undang-undang. Menurut Pasal 11 UUD NRI 1945, perjanjian itu....',
  NULL,
  '{"A":"cukup dengan pertimbangan Mahkamah Agung karena menyangkut hukum nasional","B":"harus dengan persetujuan DPR karena berakibat luas dan mengubah undang-undang","C":"cukup dengan persetujuan MPR karena menyangkut dasar negara","D":"cukup ditetapkan dengan Peraturan Presiden karena Presiden memegang kekuasaan pemerintahan","E":"wajib mendapat pertimbangan DPD terlebih dahulu sebelum diberlakukan"}'::jsonb,
  'B',
  'Pasal 11 ayat (2): perjanjian internasional yang berakibat luas dan mendasar, membebani keuangan negara, dan/atau mengharuskan perubahan atau pembentukan UU memerlukan persetujuan DPR.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  147,
  'TWK',
  'UUD 1945',
  'sedang',
  'Sembilan hakim konstitusi diajukan masing-masing tiga orang oleh....',
  NULL,
  '{"A":"Mahkamah Agung, DPR, dan Presiden","B":"Mahkamah Agung, DPR, dan DPD","C":"Mahkamah Agung, Komisi Yudisial, dan Presiden","D":"DPR, DPD, dan Presiden","E":"Mahkamah Agung, MPR, dan Presiden"}'::jsonb,
  'A',
  'Pasal 24C ayat (3): tiga hakim konstitusi diajukan MA, tiga oleh DPR, dan tiga oleh Presiden, lalu ditetapkan Presiden.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  148,
  'TWK',
  'UUD 1945',
  'sedang',
  'Pemerintah membatasi unggahan ujaran kebencian terhadap kelompok tertentu melalui undang-undang. Dasar konstitusional yang paling tepat bagi pembatasan hak berekspresi tersebut adalah....',
  NULL,
  '{"A":"Pasal 28E ayat (3) UUD NRI 1945","B":"Pasal 28I ayat (1) UUD NRI 1945","C":"Pasal 28J ayat (1) UUD NRI 1945","D":"Pasal 28J ayat (2) UUD NRI 1945","E":"Pasal 28F UUD NRI 1945"}'::jsonb,
  'D',
  'Pasal 28J ayat (2): pembatasan HAM dengan undang-undang untuk menjamin hak orang lain dan memenuhi tuntutan keadilan, moral, nilai agama, keamanan, dan ketertiban umum. Ayat (1) hanya kewajiban menghormati HAM orang lain; 28E(3) justru menjamin kebebasan berpendapat.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  149,
  'TWK',
  'UUD 1945',
  'sedang',
  'Seseorang dituntut atas perbuatan yang saat dilakukan belum dinyatakan sebagai tindak pidana oleh peraturan mana pun. UUD NRI 1945 melarang hal ini sebagai hak yang tidak dapat dikurangi dalam keadaan apa pun, yaitu hak untuk tidak dituntut atas dasar hukum yang berlaku surut, tercantum dalam....',
  NULL,
  '{"A":"Pasal 28D ayat (1)","B":"Pasal 28G ayat (1)","C":"Pasal 28I ayat (1)","D":"Pasal 28H ayat (2)","E":"Pasal 27 ayat (1)"}'::jsonb,
  'C',
  'Pasal 28I ayat (1) memuat hak yang tidak dapat dikurangi, termasuk hak tidak dituntut atas dasar hukum yang berlaku surut. Pasal 28D ayat (1) tentang kepastian hukum yang adil lebih umum.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  150,
  'TWK',
  'UUD 1945',
  'sedang',
  'Dua permohonan diajukan: (1) pengujian pasal dalam undang-undang tentang KUHAP terhadap UUD NRI 1945; (2) pengujian sebuah Peraturan Pemerintah terhadap undang-undang. Lembaga yang berwenang menguji masing-masing adalah....',
  NULL,
  '{"A":"(1) Mahkamah Agung; (2) Mahkamah Konstitusi","B":"(1) Mahkamah Konstitusi; (2) Mahkamah Konstitusi","C":"(1) Mahkamah Konstitusi; (2) Mahkamah Agung","D":"(1) Mahkamah Agung; (2) Mahkamah Agung","E":"(1) Mahkamah Konstitusi; (2) Komisi Yudisial"}'::jsonb,
  'C',
  'UU terhadap UUD diuji MK (Pasal 24C); peraturan di bawah UU terhadap UU diuji MA (Pasal 24A). Komisi Yudisial tidak menguji peraturan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  151,
  'TWK',
  'UUD 1945',
  'sedang',
  'Pasal 28B ayat (2) UUD NRI 1945 menyatakan bahwa setiap anak berhak atas....',
  NULL,
  '{"A":"kelangsungan hidup, tumbuh, dan berkembang serta atas perlindungan dari kekerasan dan diskriminasi","B":"kelangsungan hidup, tumbuh, dan berkembang serta atas perlindungan dari eksploitasi dan perdagangan anak","C":"kelangsungan hidup dan tumbuh kembang serta atas pendidikan dasar tanpa biaya dari pemerintah","D":"kelangsungan hidup, tumbuh, dan berkembang serta atas pengasuhan oleh kedua orang tuanya","E":"perlindungan dari eksploitasi serta atas jaminan sosial dari pemerintah bagi setiap anak"}'::jsonb,
  'A',
  'Bunyi Pasal 28B ayat (2): kelangsungan hidup, tumbuh, dan berkembang serta perlindungan dari kekerasan dan diskriminasi.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  152,
  'TWK',
  'UUD 1945',
  'sedang',
  'Menurut Pasal 20A ayat (1) UUD NRI 1945, Dewan Perwakilan Rakyat memiliki fungsi....',
  NULL,
  '{"A":"legislasi, anggaran, dan pengawasan","B":"legislasi, anggaran, dan representasi","C":"legislasi, anggaran, dan peradilan","D":"legislasi, pengawasan, dan pertimbangan","E":"anggaran, pengawasan, dan pemerintahan"}'::jsonb,
  'A',
  'Fungsi DPR: legislasi, anggaran, dan pengawasan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  153,
  'TWK',
  'UUD 1945',
  'sedang',
  'Seorang mahasiswa hukum menelaah Pasal 27 ayat (1) UUD NRI 1945 tentang kedudukan warga negara. Prinsip yang secara utuh terkandung dalam pasal tersebut adalah....',
  NULL,
  '{"A":"persamaan kedudukan warga negara di dalam hukum dan pemerintahan disertai kewajiban menjunjung hukum dan pemerintahan itu","B":"kesetaraan perlakuan warga negara di dalam hukum dan pemerintahan disertai hak untuk menafsirkan hukum dan pemerintahan itu","C":"kesamaan hak warga negara dalam bidang hukum dan pemerintahan disertai kewajiban membayar pajak kepada negara","D":"kesederajatan status warga negara di hadapan hukum dan pemerintahan disertai kewajiban membela negara","E":"keseimbangan posisi warga negara dalam sistem hukum dan pemerintahan disertai kewajiban menjaga ketertiban umum"}'::jsonb,
  'A',
  'Pasal 27 ayat (1): segala warga negara bersamaan kedudukannya di dalam hukum dan pemerintahan dan wajib menjunjung hukum dan pemerintahan itu dengan tidak ada kecualinya. Unsur kewajiban menjunjung hukum menjadi pembeda.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  154,
  'TWK',
  'UUD 1945',
  'sedang',
  'Salah satu wewenang Mahkamah Konstitusi menurut UUD NRI 1945 adalah....',
  NULL,
  '{"A":"menguji undang-undang terhadap Undang-Undang Dasar","B":"menguji peraturan daerah terhadap undang-undang","C":"menguji peraturan pemerintah terhadap undang-undang","D":"meninjau ulang undang-undang yang telah disahkan Presiden","E":"mengevaluasi undang-undang berdasarkan kebutuhan masyarakat"}'::jsonb,
  'A',
  'Pasal 24C ayat (1): MK menguji undang-undang terhadap UUD. Pengujian peraturan di bawah undang-undang terhadap undang-undang adalah wewenang Mahkamah Agung.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  155,
  'TWK',
  'UUD 1945',
  'sedang',
  'Menurut Pasal 18B ayat (2) UUD NRI 1945, negara mengakui dan menghormati kesatuan masyarakat hukum adat beserta hak tradisionalnya....',
  NULL,
  '{"A":"sepanjang masih hidup dan sesuai dengan perkembangan masyarakat dan prinsip Negara Kesatuan Republik Indonesia, yang diatur dalam undang-undang","B":"sepanjang masih hidup dan tidak bertentangan dengan peraturan perundang-undangan, yang diatur dalam peraturan daerah","C":"sepanjang masih hidup dan sesuai dengan prinsip Negara Kesatuan Republik Indonesia, yang diatur dalam peraturan pemerintah","D":"sepanjang masih hidup dan telah ditetapkan dengan keputusan kepala daerah setempat, yang diatur dalam undang-undang","E":"sepanjang masih hidup dan sesuai dengan perkembangan zaman dan kepentingan pembangunan nasional, yang diatur dalam undang-undang"}'::jsonb,
  'A',
  'Pasal 18B ayat (2) memuat tiga unsur: masih hidup, sesuai perkembangan masyarakat dan prinsip NKRI, serta diatur dalam undang-undang.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  156,
  'TWK',
  'UUD 1945',
  'sedang',
  'Pasal 29 ayat (2) UUD NRI 1945 menyatakan bahwa negara menjamin....',
  NULL,
  '{"A":"kemerdekaan tiap-tiap penduduk untuk memeluk agamanya masing-masing dan beribadat menurut agama dan kepercayaannya itu","B":"kemerdekaan tiap-tiap warga negara untuk memeluk agama yang terdaftar dan beribadat menurut agamanya itu","C":"kebebasan tiap-tiap penduduk untuk beribadat tanpa pembatasan apa pun dalam keadaan apa pun","D":"kemerdekaan tiap-tiap penduduk memeluk satu agama resmi dan beribadat menurut ketentuan pemerintah","E":"kemerdekaan tiap-tiap penduduk untuk memeluk agamanya dan beribadat selama tidak mengganggu kegiatan kedinasan"}'::jsonb,
  'A',
  'Bunyi Pasal 29 ayat (2): jaminan bagi tiap-tiap penduduk memeluk agamanya masing-masing dan beribadat menurut agama dan kepercayaannya.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  157,
  'TWK',
  'UUD 1945',
  'sedang',
  'Pasal 33 ayat (3) UUD NRI 1945 menyatakan bahwa bumi, air, dan kekayaan alam yang terkandung di dalamnya....',
  NULL,
  '{"A":"dikuasai oleh negara dan dipergunakan untuk sebesar-besar kemakmuran rakyat","B":"dimiliki oleh negara dan dikelola untuk kemakmuran rakyat sebesar mungkin","C":"dikuasai oleh negara dan dipergunakan untuk sebesar-besar pendapatan negara","D":"dikuasai oleh pemerintah daerah dan dipergunakan untuk kemakmuran daerah","E":"dikelola oleh badan usaha dan hasilnya dibagikan kepada seluruh rakyat"}'::jsonb,
  'A',
  'Kata kunci: dikuasai (bukan dimiliki) oleh negara dan untuk sebesar-besar kemakmuran rakyat.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  158,
  'TWK',
  'UUD 1945',
  'sedang',
  'Pasal 31 ayat (2) UUD NRI 1945 mengatur bahwa....',
  NULL,
  '{"A":"setiap warga negara wajib mengikuti pendidikan dasar dan pemerintah wajib membiayainya","B":"setiap warga negara berhak mendapat pendidikan dasar dan orang tua wajib membiayainya","C":"setiap penduduk wajib mengikuti pendidikan menengah dan pemerintah wajib membiayainya","D":"setiap warga negara wajib mengikuti pendidikan dasar dan pemerintah daerah wajib membiayainya","E":"setiap warga negara berhak mengikuti pendidikan dasar dan masyarakat wajib membiayainya"}'::jsonb,
  'A',
  'Ayat (1) mengatur hak mendapat pendidikan; ayat (2) mewajibkan warga mengikuti pendidikan dasar dan pemerintah membiayainya.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  159,
  'TWK',
  'UUD 1945',
  'sedang',
  'Menurut Pasal 6A ayat (1) UUD NRI 1945, Presiden dan Wakil Presiden....',
  NULL,
  '{"A":"dipilih dalam satu pasangan secara langsung oleh rakyat","B":"dipilih dalam satu pasangan oleh Majelis Permusyawaratan Rakyat","C":"dipilih secara langsung oleh rakyat, masing-masing secara terpisah","D":"dipilih dalam satu pasangan oleh anggota DPR dan DPD","E":"ditetapkan dalam satu pasangan oleh partai politik pemenang pemilu"}'::jsonb,
  'A',
  'Pasal 6A ayat (1): dipilih dalam satu pasangan secara langsung oleh rakyat.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  160,
  'TWK',
  'UUD 1945',
  'sedang',
  'Pasal 22E ayat (1) UUD NRI 1945 mengatur bahwa pemilihan umum dilaksanakan....',
  NULL,
  '{"A":"secara langsung, umum, bebas, rahasia, jujur, dan adil setiap lima tahun sekali","B":"secara langsung, umum, bebas, rahasia, jujur, dan adil setiap empat tahun sekali","C":"secara umum, bebas, rahasia, jujur, dan adil setiap lima tahun sekali","D":"secara langsung, umum, bebas, rahasia, transparan, dan akuntabel setiap lima tahun sekali","E":"secara langsung, umum, bebas, tertutup, jujur, dan adil setiap lima tahun sekali"}'::jsonb,
  'A',
  'Asas pemilu: langsung, umum, bebas, rahasia, jujur, dan adil; dilaksanakan setiap lima tahun sekali.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  161,
  'TWK',
  'UUD 1945',
  'sedang',
  'Pasal 30 ayat (1) UUD NRI 1945 menyatakan bahwa....',
  NULL,
  '{"A":"tiap-tiap warga negara berhak dan wajib ikut serta dalam usaha pertahanan dan keamanan negara","B":"tiap-tiap warga negara berhak dan wajib ikut serta dalam upaya pembelaan negara","C":"tiap-tiap warga negara wajib mengikuti wajib militer dalam usaha pertahanan dan keamanan negara","D":"tiap-tiap penduduk berhak dan wajib ikut serta dalam usaha pertahanan dan keamanan negara","E":"tiap-tiap warga negara berhak ikut serta dalam usaha pertahanan dan keamanan negara melalui TNI"}'::jsonb,
  'A',
  'Pasal 30 ayat (1) memakai frasa "usaha pertahanan dan keamanan negara"; frasa "upaya pembelaan negara" ada pada Pasal 27 ayat (3).',
  NULL,
  NULL,
  'published'
),
(
  'web',
  162,
  'TWK',
  'UUD 1945',
  'sedang',
  'Mahkamah Agung berwenang mengadili pada tingkat kasasi dan....',
  NULL,
  '{"A":"menguji peraturan perundang-undangan di bawah undang-undang terhadap undang-undang","B":"menguji undang-undang terhadap Undang-Undang Dasar","C":"menguji peraturan perundang-undangan di bawah Undang-Undang Dasar terhadap Undang-Undang Dasar","D":"memutus sengketa kewenangan lembaga negara yang kewenangannya diberikan UUD","E":"memutus perselisihan tentang hasil pemilihan umum"}'::jsonb,
  'A',
  'Pasal 24A ayat (1): MA menguji peraturan di bawah undang-undang terhadap undang-undang.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  163,
  'TWK',
  'UUD 1945',
  'sedang',
  'Pasal 28D ayat (1) UUD NRI 1945 menyatakan bahwa setiap orang berhak atas....',
  NULL,
  '{"A":"pengakuan, jaminan, perlindungan, dan kepastian hukum yang adil serta perlakuan yang sama di hadapan hukum","B":"pengakuan, jaminan, dan perlindungan hukum yang cepat serta perlakuan yang setara menurut hukum","C":"pengakuan, jaminan, perlindungan, dan kepastian hukum yang adil serta perlakuan khusus di hadapan hukum","D":"pengakuan dan perlindungan hukum yang adil serta perlakuan yang sama dalam pemerintahan","E":"jaminan dan kepastian hukum yang adil serta perlakuan yang sama di hadapan pengadilan"}'::jsonb,
  'A',
  'Rumusan lengkap: pengakuan, jaminan, perlindungan, dan kepastian hukum yang adil serta perlakuan yang sama di hadapan hukum.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  164,
  'TWK',
  'UUD 1945',
  'sedang',
  'Pasal 1 ayat (2) UUD NRI 1945 menyatakan bahwa kedaulatan....',
  NULL,
  '{"A":"berada di tangan rakyat dan dilaksanakan menurut Undang-Undang Dasar","B":"berada di tangan Majelis Permusyawaratan Rakyat dan dilaksanakan menurut Undang-Undang Dasar","C":"berada di tangan rakyat dan dilaksanakan sepenuhnya oleh Majelis Permusyawaratan Rakyat","D":"berada di tangan rakyat dan dilaksanakan menurut undang-undang","E":"berada di tangan rakyat dan dilaksanakan oleh Dewan Perwakilan Rakyat"}'::jsonb,
  'A',
  'Setelah perubahan UUD, kedaulatan di tangan rakyat dan dilaksanakan menurut Undang-Undang Dasar, bukan sepenuhnya oleh MPR.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  165,
  'TWK',
  'UUD 1945',
  'sedang',
  'Salah satu wewenang Mahkamah Konstitusi menurut UUD NRI 1945 adalah memutus....',
  NULL,
  '{"A":"pembubaran partai politik","B":"pendaftaran partai politik","C":"sengketa internal partai politik","D":"pengesahan partai politik","E":"verifikasi partai politik"}'::jsonb,
  'A',
  'Pasal 24C ayat (1): MK memutus pembubaran partai politik.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  166,
  'TWK',
  'UUD 1945',
  'sedang',
  'Pasal 32 ayat (1) UUD NRI 1945 menyatakan bahwa negara memajukan kebudayaan nasional Indonesia....',
  NULL,
  '{"A":"di tengah peradaban dunia dengan menjamin kebebasan masyarakat memelihara dan mengembangkan nilai-nilai budayanya","B":"di tengah peradaban dunia dengan menyeragamkan nilai-nilai budaya masyarakat menjadi satu budaya nasional","C":"di tengah peradaban dunia dengan melindungi seluruh budaya asing yang masuk ke Indonesia","D":"di atas peradaban dunia dengan menjamin kebebasan masyarakat memelihara nilai-nilai budaya daerahnya saja","E":"di tengah peradaban dunia dengan menjamin kebebasan pemerintah daerah mengatur nilai-nilai budaya masyarakat"}'::jsonb,
  'A',
  'Negara memajukan kebudayaan nasional di tengah peradaban dunia dan menjamin kebebasan masyarakat memelihara dan mengembangkan nilai budayanya.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  167,
  'TWK',
  'UUD 1945',
  'sedang',
  'Menurut Pasal 3 ayat (1) UUD NRI 1945, Majelis Permusyawaratan Rakyat berwenang....',
  NULL,
  '{"A":"mengubah dan menetapkan Undang-Undang Dasar","B":"mengubah dan menafsirkan Undang-Undang Dasar","C":"menetapkan dan menafsirkan Undang-Undang Dasar","D":"mengubah dan mengesahkan undang-undang","E":"menetapkan dan menguji Undang-Undang Dasar"}'::jsonb,
  'A',
  'Pasal 3 ayat (1): MPR berwenang mengubah dan menetapkan UUD.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  168,
  'TWK',
  'UUD 1945',
  'sedang',
  'Menurut Pasal 7 UUD NRI 1945, Presiden dan Wakil Presiden memegang jabatan selama....',
  NULL,
  '{"A":"lima tahun dan sesudahnya dapat dipilih kembali dalam jabatan yang sama paling banyak satu kali masa jabatan","B":"lima tahun dan sesudahnya dapat dipilih kembali dalam jabatan yang sama paling banyak dua kali masa jabatan","C":"empat tahun dan sesudahnya dapat dipilih kembali dalam jabatan yang sama paling banyak satu kali masa jabatan","D":"lima tahun dan sesudahnya tidak dapat dipilih kembali dalam jabatan yang sama","E":"lima tahun dan sesudahnya dapat dipilih kembali dalam jabatan yang sama tanpa batas masa jabatan"}'::jsonb,
  'A',
  'Pasal 7: lima tahun, dapat dipilih kembali hanya untuk satu kali masa jabatan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  169,
  'TWK',
  'UUD 1945',
  'sedang',
  'Pasal 23A UUD NRI 1945 menyatakan bahwa pajak dan pungutan lain yang bersifat memaksa untuk keperluan negara....',
  NULL,
  '{"A":"diatur dengan undang-undang","B":"diatur dengan peraturan pemerintah","C":"diatur dengan peraturan daerah","D":"diatur dengan keputusan menteri keuangan","E":"diatur dengan undang-undang setelah mendapat pertimbangan DPD saja"}'::jsonb,
  'A',
  'Pungutan yang bersifat memaksa harus berdasar undang-undang (legalitas).',
  NULL,
  NULL,
  'published'
),
(
  'web',
  170,
  'TWK',
  'UUD 1945',
  'sedang',
  'Pasal 1 ayat (3) UUD NRI 1945 menyatakan Indonesia adalah negara hukum. Makna yang paling tepat adalah....',
  NULL,
  '{"A":"kekuasaan penyelenggara negara dibatasi hukum dan setiap tindakan pemerintah harus berdasar hukum","B":"tindakan pemerintah dibenarkan selama bermanfaat bagi masyarakat dan diterima banyak pihak","C":"hukum berlaku bagi warga negara, sedangkan pejabat tunduk pada kebijakan pimpinan","D":"penyelenggara negara boleh menyimpang dari hukum dalam keadaan mendesak tanpa pertanggungjawaban","E":"hukum hanya diterapkan oleh lembaga peradilan dan tidak mengikat lembaga pemerintahan"}'::jsonb,
  'A',
  'Asas legalitas dan pembatasan kekuasaan oleh hukum.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  171,
  'TWK',
  'UUD 1945',
  'sedang',
  'Pasal 35 UUD NRI 1945 menyatakan bahwa Bendera Negara Indonesia ialah....',
  NULL,
  '{"A":"Sang Merah Putih","B":"Sang Saka Merah Putih","C":"Sang Dwiwarna","D":"Sang Saka Dwiwarna","E":"Merah Putih Kemerdekaan"}'::jsonb,
  'A',
  'Bunyi Pasal 35: Bendera Negara Indonesia ialah Sang Merah Putih.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  172,
  'TWK',
  'UUD 1945',
  'sedang',
  'Lembaga yang bertugas mengawasi tahapan penyelenggaraan pemilu adalah...',
  NULL,
  '{"A":"KPU","B":"Bawaslu","C":"DKPP","D":"MK","E":"KPI"}'::jsonb,
  'B',
  'KPU menyelenggarakan, Bawaslu mengawasi, dan DKPP memeriksa pelanggaran kode etik penyelenggara pemilu.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  173,
  'TWK',
  'NKRI & Integrasi',
  'sedang',
  'Gubernur selaku wakil pemerintah pusat melaksanakan urusan pusat yang dilimpahkan kepadanya, dan dananya berasal dari APBN. Asas yang digunakan adalah....',
  NULL,
  '{"A":"federalisme","B":"dekonsentrasi","C":"otonomi khusus","D":"tugas pembantuan","E":"desentralisasi"}'::jsonb,
  'B',
  'Pelimpahan wewenang pusat kepada gubernur sebagai wakil pusat disebut dekonsentrasi. Desentralisasi adalah penyerahan urusan kepada daerah otonom.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  174,
  'TWK',
  'NKRI & Integrasi',
  'sedang',
  'Pemerintah pusat menugaskan kabupaten membangun irigasi tersier dengan dana dari pusat, dan kabupaten mempertanggungjawabkannya kepada pusat. Asas yang digunakan adalah....',
  NULL,
  '{"A":"tugas pembantuan","B":"desentralisasi","C":"dekonsentrasi","D":"sentralisasi","E":"otonomi daerah luas"}'::jsonb,
  'A',
  'Penugasan dari pusat kepada daerah untuk urusan tertentu, disertai pembiayaan dan pertanggungjawaban kepada pusat, adalah tugas pembantuan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  175,
  'TWK',
  'NKRI & Integrasi',
  'sedang',
  'Menurut UU Pemerintahan Daerah, urusan pemerintahan absolut yang tidak dapat diserahkan kepada daerah adalah....',
  NULL,
  '{"A":"ketertiban umum dan ketenteraman masyarakat","B":"perumahan rakyat dan kawasan permukiman","C":"politik luar negeri","D":"kesehatan masyarakat","E":"pendidikan menengah"}'::jsonb,
  'C',
  'Urusan absolut: politik luar negeri, pertahanan, keamanan, yustisi, moneter dan fiskal nasional, serta agama. Ketertiban umum termasuk urusan konkuren.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  176,
  'TWK',
  'NKRI & Integrasi',
  'sedang',
  'Dua daerah bertetangga berselisih soal pengelolaan sungai lintas wilayah yang menyebabkan banjir di salah satunya. Langkah yang paling tepat adalah....',
  NULL,
  '{"A":"daerah yang dirugikan menuntut ganti rugi sebelum berunding","B":"menyerahkan keputusan kepada kelompok masyarakat yang paling terdampak","C":"daerah hulu menghentikan seluruh aktivitas yang berkaitan dengan sungai","D":"pemerintah provinsi atau pusat memfasilitasi kerja sama dan koordinasi pengelolaan terpadu lintas daerah","E":"masing-masing daerah membuat peraturan sendiri untuk melindungi wilayahnya"}'::jsonb,
  'D',
  'Urusan lintas daerah memerlukan koordinasi oleh tingkat pemerintahan yang lebih tinggi dalam kerangka negara kesatuan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  177,
  'TWK',
  'NKRI & Integrasi',
  'sedang',
  'ASEAN didirikan pada 8 Agustus 1967 melalui Deklarasi...',
  NULL,
  '{"A":"Jakarta","B":"Manila","C":"Bangkok","D":"Bandung","E":"Kuala Lumpur"}'::jsonb,
  'C',
  'Deklarasi Bangkok melahirkan ASEAN dengan lima pendiri: Indonesia, Malaysia, Filipina, Singapura, Thailand.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  178,
  'TWK',
  'NKRI & Integrasi',
  'sedang',
  'Konferensi Asia Afrika 1955 di Bandung menghasilkan...',
  NULL,
  '{"A":"Piagam ASEAN","B":"Dasasila Bandung","C":"Deklarasi Djuanda","D":"Piagam PBB","E":"Perjanjian Renville"}'::jsonb,
  'B',
  'Dasasila Bandung memuat sepuluh prinsip kerja sama dan perdamaian bangsa Asia dan Afrika.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  179,
  'TWK',
  'NKRI & Integrasi',
  'sedang',
  'Urusan pemerintahan konkuren yang termasuk urusan wajib berkaitan dengan pelayanan dasar menurut UU Pemerintahan Daerah adalah....',
  NULL,
  '{"A":"administrasi kependudukan dan pencatatan sipil di daerah","B":"ketenteraman, ketertiban umum, dan pelindungan masyarakat","C":"koperasi, usaha kecil, dan menengah serta penanaman modal daerah","D":"pemberdayaan perempuan dan pelindungan anak di daerah","E":"komunikasi dan informatika serta persandian di daerah"}'::jsonb,
  'B',
  'Urusan wajib pelayanan dasar: pendidikan, kesehatan, pekerjaan umum dan penataan ruang, perumahan rakyat dan kawasan permukiman, ketenteraman-ketertiban umum-pelindungan masyarakat, dan sosial. Opsi lain termasuk urusan wajib nonpelayanan dasar.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  180,
  'TWK',
  'NKRI & Integrasi',
  'sedang',
  'Dampak utama Deklarasi Djuanda 13 Desember 1957 bagi wilayah Indonesia adalah....',
  NULL,
  '{"A":"laut teritorial ditetapkan sejauh 3 mil dari garis pantai tiap pulau, sehingga laut antarpulau tetap menjadi laut bebas","B":"laut antarpulau menjadi perairan nasional dengan laut teritorial 12 mil dari garis pangkal kepulauan","C":"zona ekonomi eksklusif ditetapkan sejauh 200 mil dari garis pangkal kepulauan di seluruh perairan nasional","D":"laut antarpulau menjadi laut bebas yang dapat dilalui semua kapal asing tanpa izin dan tanpa pengawasan","E":"laut teritorial ditetapkan sejauh 12 mil dari garis pantai masing-masing pulau, bukan dari garis pangkal kepulauan"}'::jsonb,
  'B',
  'Ordonansi 1939 memberi laut teritorial 3 mil dari garis pantai tiap pulau, sehingga laut antarpulau terbuka. Deklarasi Djuanda menarik garis pangkal lurus kepulauan dan laut teritorial 12 mil dari garis itu.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  181,
  'TWK',
  'NKRI & Integrasi',
  'sedang',
  'Kekhususan Daerah Istimewa Yogyakarta yang membedakannya dari provinsi lain menurut Undang-Undang Nomor 13 Tahun 2012 adalah....',
  NULL,
  '{"A":"Gubernur dan Wakil Gubernur dijabat Sultan dan Adipati Paku Alam yang bertakhta, tanpa pemilihan","B":"adanya partai politik lokal yang dapat mengikuti pemilihan anggota DPRD provinsi dan kabupaten/kota","C":"adanya Wali Nanggroe sebagai pemimpin adat dan pemersatu yang dilembagakan oleh undang-undang","D":"adanya Majelis Rakyat sebagai representasi kultural orang asli di tingkat provinsi","E":"kewenangan memungut seluruh pajak daerah tanpa pembagian hasil dengan Pemerintah Pusat"}'::jsonb,
  'A',
  'Opsi 2 dan 3 kekhususan Aceh; opsi 4 Majelis Rakyat Papua.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  182,
  'TWK',
  'NKRI & Integrasi',
  'sedang',
  'Prinsip "ancaman terhadap satu wilayah NKRI adalah ancaman terhadap seluruh wilayah dan bangsa" paling tepat diwujudkan dalam tindakan....',
  NULL,
  '{"A":"mengajukan protes diplomatik dan meningkatkan patroli atas klaim sepihak negara lain terhadap pulau terluar tak berpenghuni","B":"memusatkan anggaran pertahanan pada pulau berpenduduk padat karena dianggap lebih bernilai strategis bagi negara","C":"menugaskan pemerintah kabupaten terdekat menangani klaim negara lain atas pulau terluar yang berada di wilayahnya","D":"menyatakan klaim negara lain belum perlu direspons karena pulau tersebut dinilai tidak bernilai ekonomi","E":"membatasi respons pada pembangunan fasilitas wisata di pulau terluar agar klaim negara lain terbantahkan"}'::jsonb,
  'A',
  'Wawasan kebangsaan memandang NKRI satu kesatuan: kedaulatan atas pulau terluar yang kecil sekalipun wajib dibela lewat jalur diplomasi dan kehadiran negara.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  183,
  'TWK',
  'NKRI & Integrasi',
  'sedang',
  'Pasal 25A UUD NRI 1945 menegaskan bahwa Negara Kesatuan Republik Indonesia adalah....',
  NULL,
  '{"A":"negara kepulauan yang berciri Nusantara dengan wilayah yang batas-batas dan hak-haknya ditetapkan dengan undang-undang","B":"negara maritim yang berciri Nusantara dengan wilayah yang batas-batas dan hak-haknya ditetapkan dengan undang-undang","C":"negara kepulauan yang berciri Nusantara dengan wilayah yang batas-batas dan hak-haknya ditetapkan dengan peraturan pemerintah","D":"negara kepulauan yang berciri bahari dengan wilayah yang batas-batas dan hak-haknya ditetapkan dengan undang-undang","E":"negara kesatuan yang berciri Nusantara dengan wilayah yang batas-batasnya ditetapkan dengan keputusan Presiden"}'::jsonb,
  'A',
  'Pasal 25A: negara kepulauan yang berciri Nusantara; batas dan hak wilayah ditetapkan dengan undang-undang.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  184,
  'TWK',
  'NKRI & Integrasi',
  'sedang',
  'Sekelompok orang mengusulkan agar bentuk negara diubah menjadi federal melalui perubahan UUD. Menurut Pasal 37 ayat (5) UUD NRI 1945, usulan itu....',
  NULL,
  '{"A":"tidak dapat dilakukan karena bentuk Negara Kesatuan Republik Indonesia tidak dapat dilakukan perubahan","B":"dapat dilakukan bila disetujui seluruh provinsi dalam sidang MPR yang dihadiri semua anggota","C":"dapat dilakukan melalui referendum nasional yang diikuti seluruh warga negara yang berhak memilih","D":"dapat dilakukan bila disetujui dua pertiga anggota MPR yang hadir dalam sidang paripurna","E":"dapat dilakukan melalui putusan Mahkamah Konstitusi atas permohonan masyarakat luas"}'::jsonb,
  'A',
  'Pasal 37 ayat (5): khusus bentuk NKRI tidak dapat dilakukan perubahan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  185,
  'TWK',
  'NKRI & Integrasi',
  'sedang',
  'Menurut Pasal 18 ayat (5) UUD NRI 1945, pemerintahan daerah menjalankan otonomi seluas-luasnya....',
  NULL,
  '{"A":"kecuali urusan pemerintahan yang oleh undang-undang ditentukan sebagai urusan Pemerintah Pusat","B":"kecuali urusan pemerintahan yang oleh peraturan daerah ditentukan sebagai urusan provinsi","C":"dan seluruh urusan pemerintahan diserahkan kepada daerah tanpa kecuali","D":"kecuali urusan pemerintahan yang oleh Presiden ditentukan sebagai urusan Pemerintah Pusat","E":"dengan seluruh urusan pemerintahan ditentukan oleh peraturan pemerintah"}'::jsonb,
  'A',
  'Otonomi seluas-luasnya, kecuali urusan yang oleh undang-undang ditentukan sebagai urusan Pemerintah Pusat.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  186,
  'TWK',
  'NKRI & Integrasi',
  'sedang',
  'Pasal 18B ayat (1) UUD NRI 1945 menyatakan bahwa negara mengakui dan menghormati satuan pemerintahan daerah yang bersifat khusus atau bersifat istimewa....',
  NULL,
  '{"A":"yang diatur dengan undang-undang","B":"yang diatur dengan peraturan pemerintah","C":"yang ditetapkan dengan keputusan Presiden","D":"yang diatur dengan peraturan daerah provinsi","E":"yang diatur dengan undang-undang setelah disetujui pemerintah daerah"}'::jsonb,
  'A',
  'Pasal 18B ayat (1): daerah khusus atau istimewa diatur dengan undang-undang.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  187,
  'TWK',
  'NKRI & Integrasi',
  'sedang',
  'Gubernur dan wakil gubernur yang dijabat oleh Sultan dan Adipati Paku Alam berlaku di...',
  NULL,
  '{"A":"Aceh","B":"Papua","C":"DKI Jakarta","D":"DI Yogyakarta","E":"Bali"}'::jsonb,
  'D',
  'Keistimewaan DIY diatur dalam UU 13/2012 dan didasarkan pada Pasal 18B UUD 1945.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  188,
  'TWK',
  'Bhinneka Tunggal Ika',
  'sedang',
  'Pemerintah hendak memperkuat persatuan dengan meniadakan seluruh bahasa daerah dari pembelajaran karena dianggap menghambat. Dari semangat Bhinneka Tunggal Ika, kebijakan ini....',
  NULL,
  '{"A":"tepat, karena bahasa daerah tidak berguna bagi kemajuan bangsa","B":"keliru, karena bahasa Indonesia tidak perlu diajarkan","C":"tepat, karena persatuan hanya tercapai bila semua sama","D":"keliru, karena persatuan dibangun dengan merawat keragaman, bukan menyeragamkannya","E":"tepat, asalkan bahasa Indonesia tetap dilestarikan"}'::jsonb,
  'D',
  'Bhinneka Tunggal Ika menyatukan dalam keragaman. Bahasa Indonesia sebagai bahasa persatuan berjalan bersama pelestarian bahasa daerah.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  189,
  'TWK',
  'Bhinneka Tunggal Ika',
  'sedang',
  'Seorang warga mendiamkan perundungan terhadap tetangga dari kelompok minoritas dengan alasan tidak mau ikut campur, meski ia sendiri tidak ikut merundung. Sikap ini paling tepat dinilai sebagai....',
  NULL,
  '{"A":"toleransi pasif yang belum cukup, karena kebinekaan menuntut keberpihakan pada perlindungan hak setiap warga","B":"intoleransi aktif yang setara dengan perundungnya","C":"sikap yang sesuai nasionalisme karena menjaga ketertiban","D":"toleransi sejati karena ia tidak melakukan kekerasan","E":"netralitas ideal bagi setiap warga"}'::jsonb,
  'A',
  'Tidak menyakiti belum berarti melindungi. Kehidupan berbineka menuntut kepedulian agar hak semua warga terjamin.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  190,
  'TWK',
  'Bhinneka Tunggal Ika',
  'sedang',
  'Panitia beasiswa menyediakan kuota khusus bagi pelajar wilayah 3T karena akses pendidikan di sana timpang. Kebijakan ini paling tepat dinilai sebagai....',
  NULL,
  '{"A":"diskriminasi karena membedakan warga berdasarkan daerah asal","B":"kebijakan yang harus berlaku selamanya tanpa evaluasi","C":"tidak sah karena beasiswa hanya boleh berdasarkan nilai","D":"tindakan afirmatif sementara demi kesetaraan, sepanjang kriterianya jelas dan dievaluasi","E":"pelanggaran sila ke-3 karena memecah bangsa"}'::jsonb,
  'D',
  'Afirmasi bertujuan mengejar ketertinggalan agar kesempatan setara. Ia perlu kriteria jelas dan evaluasi berkala.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  191,
  'TWK',
  'Bhinneka Tunggal Ika',
  'sedang',
  'Kepala sekolah negeri mewajibkan semua siswa mengikuti doa bersama menurut satu agama setiap pagi. Koreksi yang paling tepat adalah....',
  NULL,
  '{"A":"meminta siswa minoritas menyesuaikan diri demi keseragaman","B":"menghapus seluruh kegiatan keagamaan di sekolah demi netralitas","C":"mempertahankan kebijakan karena sebagian besar siswa seagama","D":"menyediakan doa menurut keyakinan masing-masing secara bergantian atau hening, tanpa memaksa ritual satu agama","E":"menjadikan doa opsional dengan siswa lain diminta keluar kelas saat doa berlangsung"}'::jsonb,
  'D',
  'Sekolah negeri melayani semua keyakinan. Solusinya akomodatif tanpa memaksa ritual satu agama dan tanpa mengisolasi siswa.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  192,
  'TWK',
  'Bhinneka Tunggal Ika',
  'sedang',
  'Sebuah kota merayakan keberagaman, tetapi sebagian warga merasa acaranya hanya menampilkan budaya mayoritas. Kebijakan yang paling tepat bagi panitia adalah....',
  NULL,
  '{"A":"menampilkan satu budaya paling populer agar acara lebih meriah","B":"menyerahkan seluruh pengaturan kepada penyelenggara komersial","C":"membatasi acara pada seni daerah asli kota saja","D":"membuat acara terpisah untuk tiap kelompok tanpa titik temu","E":"melibatkan perwakilan berbagai komunitas dalam perencanaan dan penyajian acara"}'::jsonb,
  'E',
  'Keberagaman dirayakan bersama bila setiap komunitas ikut menentukan isi acara.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  193,
  'TWK',
  'Bhinneka Tunggal Ika',
  'sedang',
  'Semboyan "Bhinneka Tunggal Ika tan hana dharma mangrwa" dalam Kakawin Sutasoma karya Mpu Tantular, bagian "tan hana dharma mangrwa", bermakna....',
  NULL,
  '{"A":"tidak ada kebenaran yang mendua","B":"tidak ada perbedaan di antara pemeluk dharma","C":"tidak ada kebenaran selain dharma penguasa","D":"tidak ada dharma yang boleh berbeda satu sama lain","E":"tidak ada perpecahan di dalam sebuah kerajaan"}'::jsonb,
  'A',
  '"Tan hana dharma mangrwa" berarti tidak ada kebenaran yang mendua: kebenaran itu satu meski jalan dan wujudnya beragam.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  194,
  'TWK',
  'Bhinneka Tunggal Ika',
  'sedang',
  'Jumlah bulu pada sayap, ekor, pangkal ekor, dan leher Garuda Pancasila secara berurutan adalah....',
  NULL,
  '{"A":"17, 8, 19, 45","B":"17, 8, 45, 19","C":"8, 17, 19, 45","D":"17, 19, 8, 45","E":"45, 8, 19, 17"}'::jsonb,
  'A',
  'Sayap 17, ekor 8, pangkal ekor 19, leher 45, melambangkan 17-8-1945.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  195,
  'TWK',
  'Bhinneka Tunggal Ika',
  'sedang',
  'Kelompok warga minoritas mengajukan izin mendirikan rumah ibadah dan telah memenuhi seluruh persyaratan peraturan. Sebagian warga sekitar keberatan dan mengancam mengerahkan massa. Sebagai pejabat berwenang, sikap yang paling sesuai dengan nilai Bhinneka Tunggal Ika dan negara hukum adalah....',
  NULL,
  '{"A":"memperlambat proses izin sampai seluruh warga sekitar setuju agar tidak timbul keributan di lingkungan","B":"menerbitkan izin sesuai ketentuan sambil memfasilitasi dialog dengan warga yang keberatan dan menjaga ketertiban","C":"menerbitkan izin dan menyatakan keberatan warga di luar kewenangan pejabat untuk didengar karena tidak berdasar hukum","D":"menolak izin demi ketertiban, lalu menawarkan lokasi pengganti di luar kawasan permukiman warga setempat","E":"menyerahkan keputusan kepada pemuka masyarakat sekitar dan mengikuti apa pun hasil keputusan mereka"}'::jsonb,
  'B',
  'Hak beribadah dijamin konstitusi; pejabat menegakkan hukum, tetap mendengar keberatan lewat dialog, dan tidak tunduk pada ancaman massa.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  196,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  'Kalimat yang seluruhnya menggunakan kata baku adalah...',
  NULL,
  '{"A":"Rapat membahas risiko dan aktifitas proyek.","B":"Rapat membahas resiko dan aktivitas proyek.","C":"Rapat membahas risiko dan aktivitas proyek.","D":"Rapat membahas resiko dan aktifitas proyek.","E":"Rapat membahas resiko dan aktivitas projek."}'::jsonb,
  'C',
  'Bentuk baku: risiko, aktivitas, proyek.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  197,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  'Kata yang baku adalah...',
  NULL,
  '{"A":"Analisa","B":"Praktek","C":"Nafas","D":"Izin","E":"Ijin"}'::jsonb,
  'D',
  'Bentuk baku: analisis, praktik, izin, napas.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  198,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  'Kalimat yang penulisannya benar adalah...',
  NULL,
  '{"A":"Dokumen itu diambil di-meja kerja.","B":"Dokumen itu di ambil dimeja kerja.","C":"Dokumen itu diambil di meja kerja.","D":"Dokumen itu diambil dimeja kerja.","E":"Dokumen itu di ambil di meja kerja."}'::jsonb,
  'C',
  'Awalan di- serangkai dengan kata kerja (diambil). Kata depan di dipisah (di meja).',
  NULL,
  NULL,
  'published'
),
(
  'web',
  199,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  'Kalimat yang efektif adalah...',
  NULL,
  '{"A":"Banyak para peserta hadir.","B":"Agar supaya lancar, rapat dimulai.","C":"Naik ke atas panggung sekarang juga.","D":"Hadirin dimohon berdiri.","E":"Para hadirin sekalian dimohon berdiri."}'::jsonb,
  'D',
  'Pilihan lain mengandung pleonasme: para hadirin sekalian, agar supaya, banyak para, naik ke atas.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  200,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  'Bentuk baku yang tepat adalah...',
  NULL,
  '{"A":"Hipotesa","B":"Hipotesis","C":"Hipotesiz","D":"Hypotesis","E":"Hipotese"}'::jsonb,
  'B',
  'Bentuk baku: hipotesis, bukan hipotesa.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  201,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  'Paragraf yang kalimat utamanya berada di akhir disebut paragraf...',
  NULL,
  '{"A":"Induktif","B":"Deduktif","C":"Campuran","D":"Deskriptif","E":"Naratif"}'::jsonb,
  'A',
  'Induktif: kalimat utama di akhir. Deduktif: di awal.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  202,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  '(1) Banjir tahunan di kota itu dipicu sampah yang menyumbat saluran air. (2) Selain itu, banyak bangunan berdiri di daerah resapan. (3) Kondisi tersebut membuat air hujan tidak terserap. (4) Misalnya, hujan dua jam saja sudah menggenangi jalan utama.
Kalimat utama paragraf tersebut terdapat pada kalimat nomor...',
  NULL,
  '{"A":"1","B":"2","C":"3","D":"4","E":"Tidak ada kalimat utama"}'::jsonb,
  'A',
  'Kalimat 2, 3, 4 diawali selain itu, kondisi tersebut, dan misalnya: penjelas. Kalimat 1 umum dan berdiri sendiri: kalimat utama.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  203,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  '(1) Banjir tahunan di kota itu dipicu sampah yang menyumbat saluran air. (2) Selain itu, banyak bangunan berdiri di daerah resapan. (3) Kondisi tersebut membuat air hujan tidak terserap. (4) Misalnya, hujan dua jam saja sudah menggenangi jalan utama.
Ide pokok paragraf tersebut adalah...',
  NULL,
  '{"A":"Cara mengatasi banjir di kota","B":"Dampak banjir bagi warga","C":"Penyebab banjir tahunan di kota","D":"Sejarah banjir kota","E":"Pentingnya membangun saluran baru"}'::jsonb,
  'C',
  'Ide pokok berupa gagasan singkat dari kalimat utama: penyebab banjir tahunan. Pilihan lain berupa saran atau hal yang tidak dibahas.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  204,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  '(1) Setiap pagi Rina menyiapkan bekal sendiri. (2) Ia juga mencuci pakaian dan merapikan kamarnya tanpa disuruh. (3) Sore hari ia membantu ibu menyiram tanaman. (4) Dengan demikian, Rina adalah anak yang mandiri.
Paragraf tersebut termasuk paragraf...',
  NULL,
  '{"A":"Naratif","B":"Induktif","C":"Deduktif","D":"Ineratif","E":"Campuran"}'::jsonb,
  'B',
  'Kalimat utama berada di akhir, diawali dengan demikian: induktif.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  205,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  'Pulau Jawa adalah pulau terpadat di Indonesia. Hampir separuh penduduk Indonesia tinggal di sana. Kepadatan itu terlihat dari ramainya kota besar seperti Jakarta dan Surabaya.
Paragraf tersebut termasuk paragraf...',
  NULL,
  '{"A":"Campuran","B":"Ineratif","C":"Induktif","D":"Deduktif","E":"Argumentasi"}'::jsonb,
  'D',
  'Kalimat pertama bersifat umum dan kalimat berikutnya merinci: deduktif.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  206,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  '(1) Membaca buku penting bagi pengembangan wawasan. (2) Dari buku kita memperoleh pengetahuan baru, melatih kosakata, dan belajar berpikir kritis. (3) Singkatnya, membaca buku sangat penting untuk menambah wawasan.
Jenis paragraf tersebut adalah...',
  NULL,
  '{"A":"Ineratif","B":"Campuran","C":"Induktif","D":"Deduktif","E":"Deskriptif"}'::jsonb,
  'B',
  'Kalimat akhir mengulang gagasan kalimat awal dengan kata berbeda: campuran.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  207,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  'Paragraf yang kalimat utamanya berada di tengah, setelah ilustrasi, disebut paragraf...',
  NULL,
  '{"A":"Naratif","B":"Induktif","C":"Campuran","D":"Ineratif","E":"Deduktif"}'::jsonb,
  'D',
  'Ineratif: kalimat utama di tengah paragraf.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  208,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  'Kalimat berikut yang paling mungkin menjadi kalimat penjelas adalah...',
  NULL,
  '{"A":"Korupsi merusak sendi kehidupan bernegara.","B":"Lingkungan bersih menjadikan warga sehat.","C":"Kebiasaan membaca perlu ditanamkan sejak dini.","D":"Pendidikan adalah kunci kemajuan bangsa.","E":"Misalnya, anak yang membaca 15 menit tiap hari menguasai lebih banyak kosakata."}'::jsonb,
  'E',
  'Kalimat berawalan misalnya memberi contoh dan tidak berdiri sendiri: penjelas. Yang lain umum dan bisa berdiri sendiri.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  209,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  'Kata yang paling sering menandai kalimat simpulan pada paragraf induktif adalah...',
  NULL,
  '{"A":"Dengan demikian","B":"Sebaliknya","C":"Selain itu","D":"Misalnya","E":"Bahkan"}'::jsonb,
  'A',
  'Dengan demikian, jadi, oleh karena itu, dan oleh sebab itu menandai simpulan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  210,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  'Sepanjang 2025, jumlah pengguna layanan administrasi daring di kota X naik dua kali lipat. Waktu pengurusan dokumen turun dari tiga hari menjadi satu hari. Pengaduan warga terkait antrean juga menurun.
Simpulan yang tepat adalah...',
  NULL,
  '{"A":"Pengaduan warga turun hanya karena antrean berkurang","B":"Pemerintah kota harus menambah loket tatap muka","C":"Seluruh warga pasti puas dengan layanan daring","D":"Penggunaan layanan administrasi daring meningkat dan mempercepat pengurusan dokumen","E":"Layanan daring merupakan satu-satunya solusi antrean"}'::jsonb,
  'D',
  'Simpulan merangkum penggunaan naik dan layanan lebih cepat. Pilihan lain memakai kata mutlak (satu-satunya, seluruh, pasti, hanya) atau berisi saran.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  211,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  'Pilihan simpulan yang kemungkinan besar salah adalah yang...',
  NULL,
  '{"A":"Memakai kata merupakan atau menunjukkan","B":"Memakai kata dipicu atau disebabkan","C":"Sejalan dengan isi bacaan","D":"Memakai kata hanya, pasti, atau seluruh","E":"Mencakup semua informasi penting"}'::jsonb,
  'D',
  'Kata mutlak (hanya, pasti, seluruh, satu-satunya) adalah ciri jawaban jebakan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  212,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  'Simpulan paragraf yang benar bersifat...',
  NULL,
  '{"A":"Menambah gagasan baru di luar bacaan","B":"Berisi saran atau solusi bagi pembaca","C":"Bertentangan dengan sebagian isi bacaan","D":"Mengulang persis satu kalimat bacaan","E":"Merangkum semua informasi penting dan sejalan dengan isi"}'::jsonb,
  'E',
  'Simpulan harus mencakup semua informasi penting, tidak menambah hal baru, dan sejalan dengan isi.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  213,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  'Penulisan di dan ke yang benar terdapat pada kalimat...',
  NULL,
  '{"A":"Surat itu di kirim kekantor pusat.","B":"Surat itu di-kirim ke kantor pusat.","C":"Surat itu di kirim ke kantor pusat.","D":"Surat itu dikirim kekantor pusat.","E":"Surat itu dikirim ke kantor pusat."}'::jsonb,
  'E',
  'Dikirim: awalan di- melekat pada kata kerja. Ke kantor pusat: kata depan tempat, dipisah.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  214,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  'Penulisan huruf kapital yang tepat adalah...',
  NULL,
  '{"A":"Kemarin gubernur Sulawesi Selatan meresmikan jembatan.","B":"Kemarin Gubernur Sulawesi Selatan meresmikan jembatan.","C":"Kemarin gubernur itu Meresmikan jembatan.","D":"Kemarin Gubernur itu meresmikan jembatan.","E":"Kemarin gubernur Sulawesi Selatan Meresmikan jembatan."}'::jsonb,
  'B',
  'Jabatan diikuti nama tempat atau orang ditulis kapital: Gubernur Sulawesi Selatan. Bila berdiri sendiri: gubernur itu.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  215,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  'Penulisan partikel pun yang benar adalah...',
  NULL,
  '{"A":"Sayapun ikut rapat.","B":"Meski pun lelah, ia tetap bekerja.","C":"Bagaimana pun juga, rapat dimulai.","D":"Saya pun ikut rapat.","E":"Walau pun hujan, ia tetap datang."}'::jsonb,
  'D',
  'Pun dipisah pada umumnya (saya pun). Walaupun, meskipun, dan bagaimanapun ditulis serangkai.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  216,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  'Kalimat dengan penggunaan tanda koma yang tepat adalah...',
  NULL,
  '{"A":"Acara, ditunda karena hujan.","B":"Karena hujan acara ditunda.","C":"Karena, hujan acara ditunda.","D":"Karena hujan, acara ditunda.","E":"Acara ditunda, karena hujan."}'::jsonb,
  'D',
  'Anak kalimat yang mendahului induk diberi koma. Bila induk lebih dulu, tidak memakai koma.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  217,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  'Penggunaan tanda titik dua yang tepat adalah...',
  NULL,
  '{"A":"Acara itu yaitu: lomba dan bazar.","B":"Peserta meliputi: guru, siswa, dan staf.","C":"Kegiatan seperti: lomba dan bazar.","D":"Kami membutuhkan tiga hal: dana, waktu, dan tenaga.","E":"Bahan yang dibawa antara lain: buku dan pena."}'::jsonb,
  'D',
  'Titik dua dipakai setelah pernyataan lengkap yang diikuti rincian. Tidak dipakai setelah meliputi, antara lain, yaitu, seperti.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  218,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  'Kalimat yang efektif adalah...',
  NULL,
  '{"A":"Para hadirin sekalian dimohon tenang.","B":"Banyak warga menghadiri kerja bakti.","C":"Agar supaya lancar, rapat dimulai tepat waktu.","D":"Banyak para warga menghadiri kerja bakti.","E":"Naik ke atas panggung, ia berpidato."}'::jsonb,
  'B',
  'Pilihan lain boros: banyak para, naik ke atas, agar supaya, para hadirin sekalian.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  219,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  'Perbaikan yang tepat untuk kalimat "Dalam rapat itu membahas anggaran tahunan" adalah...',
  NULL,
  '{"A":"Dalam rapat itu yang membahas anggaran tahunan.","B":"Dalam rapat itu, membahas anggaran tahunan.","C":"Di dalam rapat itu membahas anggaran tahunan.","D":"Rapat itu membahas anggaran tahunan.","E":"Pada rapat itu membahas anggaran tahunan."}'::jsonb,
  'D',
  'Subjek didahului kata depan (dalam), sehingga kalimat tidak bersubjek. Buang kata depan: Rapat itu membahas anggaran tahunan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  220,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  'Kalimat yang bentuk katanya sejajar adalah...',
  NULL,
  '{"A":"Panitia menyusun, pelaksana, dan evaluasi.","B":"Panitia menyusun, pelaksanaan, dan dievaluasi.","C":"Panitia menyusun, melaksanakan, dan mengevaluasi program.","D":"Panitia menyusun, dilaksanakan, dan mengevaluasi.","E":"Panitia penyusunan, melaksanakan, dan evaluasi program."}'::jsonb,
  'C',
  'Ketiga kata kerja aktif sejajar: menyusun, melaksanakan, mengevaluasi.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  221,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  'Kalimat yang tidak logis adalah...',
  NULL,
  '{"A":"Waktu dan tempat kami persilakan.","B":"Ibu Kepala Sekolah kami persilakan memberi arahan.","C":"Bapak Ahmad kami persilakan menyampaikan sambutan.","D":"Para tamu kami persilakan duduk.","E":"Bapak Ketua kami persilakan membuka acara."}'::jsonb,
  'A',
  'Yang dipersilakan adalah orang, bukan waktu dan tempat.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  222,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  'Kalimat yang mengandung keterangan berlebihan adalah...',
  NULL,
  '{"A":"Harga bahan pokok sedang naik.","B":"Harga bahan pokok naik setiap tiga bulan sekali.","C":"Harga bahan pokok naik sejak Mei.","D":"Harga bahan pokok naik tiap tiga bulan.","E":"Harga bahan pokok naik pada bulan ini."}'::jsonb,
  'B',
  'Setiap dan sekali bermakna sama, pilih salah satu: tiap tiga bulan atau tiga bulan sekali.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  223,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  'Kalimat yang tidak efektif karena memakai dua kata bermakna sama adalah...',
  NULL,
  '{"A":"Ia belajar demi kelulusan.","B":"Ia belajar agar lulus ujian.","C":"Ia belajar supaya lulus ujian.","D":"Ia belajar agar supaya lulus ujian.","E":"Ia belajar untuk lulus ujian."}'::jsonb,
  'D',
  'Agar supaya bermakna sama, cukup satu.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  224,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  'Warga kampung bergantian membawa makanan dan menolong keluarga yang rumahnya terbakar tanpa diminta. Nilai yang dominan pada kutipan tersebut adalah...',
  NULL,
  '{"A":"Nilai moral","B":"Nilai sosial","C":"Nilai pendidikan","D":"Nilai budaya","E":"Nilai agama"}'::jsonb,
  'B',
  'Banyak orang saling membantu: interaksi antartokoh dalam masyarakat, nilai sosial.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  225,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  'Rudi menimbang lama, lalu mengembalikan dompet yang ditemukannya meski ia sangat membutuhkan uang itu. Nilai yang dominan adalah...',
  NULL,
  '{"A":"Nilai moral","B":"Nilai agama","C":"Nilai budaya","D":"Nilai sosial","E":"Nilai pendidikan"}'::jsonb,
  'A',
  'Pergulatan batin satu tokoh untuk berbuat jujur: nilai moral.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  226,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  'Setiap menjelang magrib, Nenek mengajak cucunya bersyukur dan berdoa atas hasil panen. Nilai yang dominan adalah...',
  NULL,
  '{"A":"Nilai sosial","B":"Nilai moral","C":"Nilai pendidikan","D":"Nilai budaya","E":"Nilai agama"}'::jsonb,
  'E',
  'Bersyukur dan berdoa adalah ajaran keagamaan: nilai agama.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  227,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  'Para pemuda mengenakan pakaian adat dan menggelar upacara adat setiap panen raya. Nilai yang dominan adalah...',
  NULL,
  '{"A":"Nilai pendidikan","B":"Nilai agama","C":"Nilai moral","D":"Nilai sosial","E":"Nilai budaya"}'::jsonb,
  'E',
  'Pakaian dan upacara adat: nilai budaya.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  228,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  'Meski kehabisan biaya, Sari belajar tiap malam dan pantang menyerah mengejar beasiswa. Nilai yang dominan adalah...',
  NULL,
  '{"A":"Nilai moral","B":"Nilai sosial","C":"Nilai budaya","D":"Nilai agama","E":"Nilai pendidikan"}'::jsonb,
  'E',
  'Semangat belajar dan pantang menyerah: nilai pendidikan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  229,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  'Kutipan cerpen yang menampilkan pergulatan batin seorang tokoh untuk berbuat benar menunjukkan nilai...',
  NULL,
  '{"A":"Pendidikan","B":"Budaya","C":"Sosial","D":"Agama","E":"Moral"}'::jsonb,
  'E',
  'Nilai moral menyoroti sikap batin satu tokoh. Nilai sosial menyoroti interaksi antartokoh.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  230,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  'Ejaan baku yang benar adalah...',
  NULL,
  '{"A":"Resiko","B":"Risiko","C":"Rizico","D":"Risco","E":"Risiko-nya"}'::jsonb,
  'B',
  'KBBI membakukan risiko, bukan resiko.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  231,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  'Rangkaian kata berikut yang seluruhnya baku adalah....',
  NULL,
  '{"A":"analisa, apotik, resiko","B":"analisis, apotek, risiko","C":"analisis, apotik, risiko","D":"analisa, apotek, risiko","E":"analisis, apotek, resiko"}'::jsonb,
  'B',
  'Bentuk baku: analisis, apotek, risiko. Setiap pengecoh hanya salah pada satu atau dua kata.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  232,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  'Kalimat dengan penulisan awalan di- dan kata depan di yang tepat adalah....',
  NULL,
  '{"A":"Surat itu di tandatangani oleh Kepala Dinas di ruang rapat.","B":"Surat itu ditandatangani oleh Kepala Dinas diruang rapat.","C":"Surat itu ditandatangani oleh Kepala Dinas di ruang rapat.","D":"Surat itu di tanda tangani oleh Kepala Dinas di ruang rapat.","E":"Surat itu ditandatangani oleh Kepala Dinas di ruangrapat."}'::jsonb,
  'C',
  '"Ditandatangani" ditulis serangkai karena di- adalah awalan pada kata kerja, sedangkan "di ruang rapat" memakai kata depan yang dipisah.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  233,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  'Kalimat yang efektif adalah....',
  NULL,
  '{"A":"Adalah merupakan kewajiban setiap ASN untuk menjaga netralitas.","B":"Menjaga netralitas merupakan kewajiban setiap ASN.","C":"Kewajiban setiap ASN adalah untuk menjaga netralitas daripada ASN itu sendiri.","D":"Setiap ASN-ASN wajib untuk menjaga netralitasnya.","E":"Netralitas wajib dijaga oleh setiap ASN yang dimana berstatus pegawai."}'::jsonb,
  'B',
  'Opsi lain memuat pemborosan (adalah merupakan), pengulangan jamak (ASN-ASN), dan kesalahan kata hubung (yang dimana).',
  NULL,
  NULL,
  'published'
),
(
  'web',
  234,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  'Kalimat dengan penggunaan tanda baca dan huruf kapital yang tepat adalah....',
  NULL,
  '{"A":"Pak Rudi berkata, \"dokumen itu harus diserahkan hari ini\".","B":"Pak Rudi berkata \"Dokumen itu harus diserahkan hari ini.\"","C":"Pak Rudi berkata, \"Dokumen itu harus diserahkan hari ini.\"","D":"Pak Rudi berkata: \"Dokumen itu harus, diserahkan hari ini.\"","E":"Pak Rudi berkata, \"Dokumen itu harus diserahkan hari ini\"."}'::jsonb,
  'C',
  'Petikan langsung didahului koma, diawali huruf kapital, dan tanda titik berada di dalam tanda petik.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  235,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  'Rangkaian kata berimbuhan yang seluruhnya baku adalah....',
  NULL,
  '{"A":"mempengaruhi, menyosialisasikan, menyukseskan","B":"memengaruhi, mensosialisasikan, menyukseskan","C":"memengaruhi, menyosialisasikan, menyukseskan","D":"memengaruhi, menyosialisasikan, mensukseskan","E":"mempengaruhi, mensosialisasikan, mensukseskan"}'::jsonb,
  'C',
  'Konsonan awal p, s, t, k luluh: memengaruhi, menyosialisasikan, menyukseskan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  236,
  'TWK',
  'Bahasa Indonesia',
  'sedang',
  'Pasal 36 UUD NRI 1945 menyatakan bahwa....',
  NULL,
  '{"A":"bahasa negara ialah Bahasa Indonesia","B":"bahasa nasional ialah Bahasa Indonesia","C":"bahasa persatuan ialah Bahasa Indonesia","D":"bahasa resmi negara ialah Bahasa Indonesia dan bahasa daerah","E":"bahasa negara ialah Bahasa Melayu"}'::jsonb,
  'A',
  'Pasal 36: Bahasa Negara ialah Bahasa Indonesia. Istilah bahasa persatuan berasal dari Sumpah Pemuda.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  237,
  'TIU',
  'Analogi',
  'sedang',
  'KOMPOR: MEMASAK =...',
  NULL,
  '{"A":"Pena: menulis","B":"Buku: perpustakaan","C":"Hujan: payung","D":"Beras: nasi","E":"Dokter: pasien"}'::jsonb,
  'A',
  'Hubungannya alat dan fungsinya: kompor dipakai untuk memasak, pena dipakai untuk menulis.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  238,
  'TIU',
  'Analogi',
  'sedang',
  'API: PANAS = ES:...',
  NULL,
  '{"A":"mencair","B":"minum","C":"dingin","D":"air","E":"kulkas"}'::jsonb,
  'C',
  'Hubungan ciri atau sifat: api bersifat panas, es bersifat dingin. Pilihan lain cuma sama topik, bukan sama hubungan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  239,
  'TIU',
  'Analogi',
  'sedang',
  'PETANI: SAWAH = NELAYAN:...',
  NULL,
  '{"A":"pantai","B":"ikan","C":"perahu","D":"laut","E":"jaring"}'::jsonb,
  'D',
  'Hubungan pelaku dan tempat kerja: petani bekerja di sawah, nelayan bekerja di laut. Perahu dan jaring adalah alat, bukan tempat.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  240,
  'TIU',
  'Analogi',
  'sedang',
  'BENIH: POHON = TELUR:...',
  NULL,
  '{"A":"kuning","B":"ayam","C":"cangkang","D":"induk","E":"sarang"}'::jsonb,
  'B',
  'Hubungan tahap tumbuh: benih tumbuh menjadi pohon, telur menetas menjadi ayam. Kuning dan cangkang cuma bagian telur.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  241,
  'TIU',
  'Analogi',
  'sedang',
  'DOKTER: STETOSKOP =...',
  NULL,
  '{"A":"Polisi: penjara","B":"Pilot: bandara","C":"Guru: sekolah","D":"Petani: cangkul","E":"Nelayan: laut"}'::jsonb,
  'D',
  'Hubungan profesi dan alat kerjanya: dokter memakai stetoskop, petani memakai cangkul.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  242,
  'TIU',
  'Analogi',
  'sedang',
  'HARIMAU: KARNIVORA =...',
  NULL,
  '{"A":"Sapi: herbivora","B":"Kucing: mengeong","C":"Sapi: daging","D":"Ikan: akuarium","E":"Ayam: kandang"}'::jsonb,
  'A',
  'Hubungan hewan dan jenis makanannya: harimau pemakan daging, sapi pemakan tumbuhan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  243,
  'TIU',
  'Analogi',
  'sedang',
  'DINGIN: BEKU = PANAS:...',
  NULL,
  '{"A":"Mendidih","B":"Matahari","C":"Kompor","D":"Hangat","E":"Api"}'::jsonb,
  'A',
  'Hubungan tingkatan: beku adalah puncak dingin, mendidih adalah puncak panas.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  244,
  'TIU',
  'Analogi',
  'sedang',
  'Dokter: Pasien = Guru:...',
  NULL,
  '{"A":"Sekolah","B":"Murid","C":"Buku","D":"Kelas","E":"Ujian"}'::jsonb,
  'B',
  'Hubungan: pihak yang melayani dan pihak yang dilayani.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  245,
  'TIU',
  'Analogi',
  'sedang',
  'Panas: Dingin = Terang:...',
  NULL,
  '{"A":"Lampu","B":"Siang","C":"Gelap","D":"Redup","E":"Matahari"}'::jsonb,
  'C',
  'Hubungan antonim.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  246,
  'TIU',
  'Silogisme',
  'sedang',
  'Semua pegawai yang disiplin mendapat penghargaan. Sebagian pegawai kantor ini disiplin. Kesimpulan yang pasti benar adalah...',
  NULL,
  '{"A":"Semua pegawai kantor ini mendapat penghargaan","B":"Semua yang mendapat penghargaan adalah pegawai kantor ini","C":"Tidak ada pegawai kantor ini yang mendapat penghargaan","D":"Sebagian pegawai kantor ini tidak mendapat penghargaan","E":"Sebagian pegawai kantor ini mendapat penghargaan"}'::jsonb,
  'E',
  'Sebagian yang disiplin pasti mendapat penghargaan (semua yang disiplin mendapat penghargaan), jadi sebagian pegawai kantor ini mendapat penghargaan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  247,
  'TIU',
  'Silogisme',
  'sedang',
  'Semua pegawai teladan jujur. Semua yang jujur dipercaya atasan. Kesimpulan yang pasti benar adalah...',
  NULL,
  '{"A":"Semua yang dipercaya atasan adalah pegawai teladan","B":"Tidak ada pegawai teladan yang dipercaya atasan","C":"Sebagian pegawai teladan tidak dipercaya atasan","D":"Sebagian yang dipercaya atasan bukan pegawai teladan","E":"Semua pegawai teladan dipercaya atasan"}'::jsonb,
  'E',
  'teladan → jujur → dipercaya
Rantai nyambung: semua teladan dipercaya
Semua yang dipercaya adalah teladan
dibalik!',
  NULL,
  NULL,
  'published'
),
(
  'web',
  248,
  'TIU',
  'Silogisme',
  'sedang',
  'Tidak ada pegawai malas yang naik pangkat. Semua pegawai berprestasi naik pangkat. Kesimpulan yang tepat adalah...',
  NULL,
  '{"A":"Tidak ada pegawai berprestasi yang malas","B":"Semua pegawai malas berprestasi","C":"Sebagian pegawai berprestasi malas","D":"Semua pegawai berprestasi malas","E":"Tidak dapat disimpulkan"}'::jsonb,
  'A',
  'berprestasi ⊂ naik pangkat
malas ✗ naik pangkat
Komplek berprestasi masuk komplek naik pangkat, yang temboknya tidak nyambung ke malas
Jadi tidak ada berprestasi yang malas',
  NULL,
  NULL,
  'published'
),
(
  'web',
  249,
  'TIU',
  'Silogisme',
  'sedang',
  'Sebagian peserta tes adalah lulusan SMA. Sebagian lulusan SMA adalah atlet. Kesimpulan yang tepat adalah...',
  NULL,
  '{"A":"Sebagian peserta tes adalah atlet","B":"Tidak dapat disimpulkan","C":"Sebagian atlet bukan peserta tes","D":"Tidak ada peserta tes yang atlet","E":"Semua peserta tes adalah atlet"}'::jsonb,
  'B',
  'peserta ∩ SMA = ada
SMA ∩ atlet = ada
Dua tamu beda komplek belum tentu orang yang sama
Peserta ∩ atlet =? tidak dapat disimpulkan',
  NULL,
  NULL,
  'published'
),
(
  'web',
  250,
  'TIU',
  'Silogisme',
  'sedang',
  'Jika hujan deras, maka jalan banjir. Ternyata jalan tidak banjir. Kesimpulannya...',
  NULL,
  '{"A":"Hujan tidak deras","B":"Hujan deras dan jalan banjir","C":"Mungkin hujan deras","D":"Hujan deras","E":"Tidak dapat disimpulkan"}'::jsonb,
  'A',
  'hujan deras → banjir
banjir = TIDAK
Kontraposisi: tidak banjir → tidak hujan deras
Mungkin hujan deras
akibat gagal = sebab pasti gagal',
  NULL,
  NULL,
  'published'
),
(
  'web',
  251,
  'TIU',
  'Silogisme',
  'sedang',
  'Jika Dina belajar, maka Dina lulus. Ternyata Dina lulus. Kesimpulannya...',
  NULL,
  '{"A":"Dina pasti tidak lulus tanpa belajar","B":"Dina tidak belajar","C":"Dina belajar","D":"Tidak dapat disimpulkan","E":"Dina belajar keras"}'::jsonb,
  'D',
  'belajar → lulus
lulus = YA
Lulus bisa karena sebab lain (remedial, beruntung)
Dina belajar
mengakui akibat, jebakan!
tidak dapat disimpulkan',
  NULL,
  NULL,
  'published'
),
(
  'web',
  252,
  'TIU',
  'Silogisme',
  'sedang',
  'Jika anggaran disetujui, maka proyek dimulai. Jika proyek dimulai, maka tenaga kerja terserap. Pernyataan yang pasti benar adalah...',
  NULL,
  '{"A":"Anggaran disetujui dan tenaga kerja tidak terserap","B":"Jika tenaga kerja terserap, maka anggaran disetujui","C":"Jika anggaran tidak disetujui, maka tenaga kerja tidak terserap","D":"Proyek dimulai tanpa persetujuan anggaran","E":"Jika anggaran disetujui, maka tenaga kerja terserap"}'::jsonb,
  'E',
  'anggaran → proyek
proyek → tenaga kerja
Sambung kayak kereta: anggaran → tenaga kerja
arah dibalik
tidak berlaku',
  NULL,
  NULL,
  'published'
),
(
  'web',
  253,
  'TIU',
  'Silogisme',
  'sedang',
  'Ingkaran dari pernyataan "Semua pegawai hadir tepat waktu" adalah...',
  NULL,
  '{"A":"Semua pegawai terlambat","B":"Tidak ada pegawai yang hadir tepat waktu","C":"Sebagian pegawai hadir tepat waktu","D":"Ada pegawai yang tidak hadir tepat waktu","E":"Semua pegawai tidak hadir tepat waktu"}'::jsonb,
  'D',
  'Semua tidak hadir tepat waktu
terlalu ekstrem
Lawan "semua" cukup 1 pengecualian:
ada yang tidak',
  NULL,
  NULL,
  'published'
),
(
  'web',
  254,
  'TIU',
  'Silogisme',
  'sedang',
  'Ingkaran dari "Jika harga naik, maka permintaan turun" adalah...',
  NULL,
  '{"A":"Jika harga tidak naik, maka permintaan tidak turun","B":"Jika harga turun, maka permintaan naik","C":"Harga tidak naik atau permintaan turun","D":"Harga naik dan permintaan tidak turun","E":"Harga naik atau permintaan tidak turun"}'::jsonb,
  'D',
  'Ingkaran (jika P maka Q) = P dan bukan Q
P = harga naik
Q = permintaan turun
Janji "jika... maka..." gagal kalau P terjadi tapi Q tidak',
  NULL,
  NULL,
  'published'
),
(
  'web',
  255,
  'TIU',
  'Silogisme',
  'sedang',
  'Tidak ada pegawai honorer yang memiliki NIP. Tidak ada yang memiliki NIP yang bekerja paruh waktu. Kesimpulan yang tepat adalah...',
  NULL,
  '{"A":"Semua pegawai honorer bekerja paruh waktu","B":"Sebagian pegawai honorer bekerja paruh waktu","C":"Tidak ada pegawai honorer yang bekerja paruh waktu","D":"Tidak dapat disimpulkan","E":"Sebagian pegawai honorer tidak bekerja paruh waktu"}'::jsonb,
  'D',
  'honorer ✗ NIP
NIP ✗ paruh waktu
Dua "tidak": tembok ketemu tembok, tidak ada jembatan
tidak dapat disimpulkan',
  NULL,
  NULL,
  'published'
),
(
  'web',
  256,
  'TIU',
  'Silogisme',
  'sedang',
  'Setiap ASN yang melanggar disiplin dikenai sanksi. Rudi seorang ASN dan tidak dikenai sanksi. Kesimpulannya...',
  NULL,
  '{"A":"Rudi bukan ASN","B":"Tidak dapat disimpulkan","C":"Rudi melanggar disiplin","D":"Rudi tidak melanggar disiplin","E":"Rudi melanggar disiplin tetapi lolos"}'::jsonb,
  'D',
  'ASN langgar → sanksi
Rudi: sanksi = TIDAK
Kontraposisi: tidak sanksi → tidak langgar
Rudi bukan ASN
di soal Rudi ASN!',
  NULL,
  NULL,
  'published'
),
(
  'web',
  257,
  'TIU',
  'Silogisme',
  'sedang',
  'Pernyataan yang ekuivalen dengan "Jika hujan turun, maka tanah basah" adalah...',
  NULL,
  '{"A":"Jika tanah basah, maka hujan turun","B":"Jika tanah tidak basah, maka hujan tidak turun","C":"Jika hujan tidak turun, maka tanah tidak basah","D":"Hujan turun dan tanah tidak basah","E":"Hujan tidak turun dan tanah basah"}'::jsonb,
  'B',
  'P = hujan turun, Q = tanah basah P → Q sama dengan kontraposisi ¬Q → ¬P
jika tanah tidak basah, maka hujan tidak turun
jika tanah basah maka hujan turun
konvers
jika tidak hujan maka tidak basah
invers
hujan dan tidak basah
ingkaran',
  NULL,
  NULL,
  'published'
),
(
  'web',
  258,
  'TIU',
  'Silogisme',
  'sedang',
  'Konvers dari "Jika Rani rajin, maka Rani lulus" adalah...',
  NULL,
  '{"A":"Jika Rani tidak rajin, maka Rani tidak lulus","B":"Rani rajin dan tidak lulus","C":"Jika Rani tidak lulus, maka Rani tidak rajin","D":"Jika Rani lulus, maka Rani rajin","E":"Rani tidak rajin atau lulus"}'::jsonb,
  'D',
  'Konvers = tukar posisi aja P → Q jadi Q → P
jika lulus, maka rajin
jika tidak rajin, maka tidak lulus
invers
jika tidak lulus, maka tidak rajin
kontraposisi',
  NULL,
  NULL,
  'published'
),
(
  'web',
  259,
  'TIU',
  'Silogisme',
  'sedang',
  '"Tidak benar bahwa Andi pintar dan rajin" ekuivalen dengan...',
  NULL,
  '{"A":"Andi tidak pintar saja","B":"Andi tidak pintar atau tidak rajin","C":"Andi pintar atau rajin","D":"Andi pintar tetapi tidak rajin","E":"Andi tidak pintar dan tidak rajin"}'::jsonb,
  'B',
  'Ingkaran "dan" (De Morgan) Tukar dan → atau, lawankan tiap bagian
tidak pintar atau tidak rajin
tidak pintar dan tidak rajin
itu ingkaran "atau"',
  NULL,
  NULL,
  'published'
),
(
  'web',
  260,
  'TIU',
  'Silogisme',
  'sedang',
  'Pegawai mendapat bonus hanya jika ia disiplin. Budi mendapat bonus. Kesimpulannya...',
  NULL,
  '{"A":"Budi mungkin tidak disiplin","B":"Tidak dapat disimpulkan","C":"Budi tidak disiplin","D":"Budi disiplin","E":"Semua yang disiplin mendapat bonus"}'::jsonb,
  'D',
  '"Hanya jika": bonus → disiplin Budi bonus → Budi disiplin
Semua yang disiplin bisa bonus
dibalik, belum tentu',
  NULL,
  NULL,
  'published'
),
(
  'web',
  261,
  'TIU',
  'Silogisme',
  'sedang',
  'Auditor eksternal wajib menyerahkan laporan analisis kepatuhan keuangan triwulan. Tidak ada orang yang menyerahkan laporan analisis kepatuhan keuangan triwulan yang dibebaskan dari kewajiban memaparkan hasil temuan di depan dewan pengawas. Sebagian pegawai baru di Biro Keuangan ditugaskan menjadi auditor eksternal. Kesimpulan yang tepat adalah...',
  NULL,
  '{"A":"Sebagian pegawai baru di Biro Keuangan wajib memaparkan hasil temuan di depan dewan pengawas.","B":"Tidak ada auditor eksternal yang merupakan pegawai baru di Biro Keuangan.","C":"Sebagian yang memaparkan hasil temuan di depan dewan pengawas adalah pegawai baru di Biro Keuangan.","D":"Orang yang wajib memaparkan hasil temuan adalah pegawai baru di Biro Keuangan.","E":"Pegawai baru di Biro Keuangan wajib memaparkan hasil temuan di depan dewan pengawas."}'::jsonb,
  'A',
  'P1: auditor eksternal → wajib menyerahkan laporan
P2: tidak ada penyerah laporan yang dibebaskan memaparkan
negatif ketemu negatif jadi positif: semua penyerah laporan wajib memaparkan
P3: sebagian pegawai baru = auditor eksternal
Rantai: pegawai baru (sebagian) → auditor → penyerah laporan → wajib memaparkan
A. Pegawai baru wajib memaparkan
P3 cuma sebagian, jangan loncat ke semua
C dan E. dibalik
yang memaparkan bisa auditor lain juga
D. Tidak ada auditor yang pegawai baru
melawan P3
B. Sebagian pegawai baru wajib memaparkan',
  NULL,
  NULL,
  'published'
),
(
  'web',
  262,
  'TIU',
  'Silogisme',
  'sedang',
  'Jika target serapan anggaran dinas tercapai di atas 95%, maka alokasi dana insentif daerah untuk tahun depan akan dinaikkan. Jika alokasi dana insentif daerah untuk tahun depan dinaikkan, maka program pembangunan infrastruktur desa dapat dipercepat atau kuota beasiswa daerah ditambah. Program pembangunan infrastruktur desa tidak dapat dipercepat dan kuota beasiswa daerah tidak ditambah. Kesimpulan yang tepat adalah...',
  NULL,
  '{"A":"Alokasi dana insentif daerah untuk tahun depan tetap dinaikkan secara bertahap.","B":"Target serapan anggaran dinas tidak tercapai di atas 95%.","C":"Target serapan anggaran dinas tercapai di atas 95% namun dana insentif tetap naik.","D":"Pembangunan infrastruktur desa dialihkan ke tahun anggaran berikutnya.","E":"Kuota beasiswa daerah ditambahkan melalui skema anggaran perubahan."}'::jsonb,
  'B',
  'P = target serapan di atas 95%, Q = insentif naik, R = infrastruktur dipercepat, S = beasiswa ditambah
P1: P → Q
P2: Q → (R atau S)
P3: ¬R dan ¬S
¬R dan ¬S = ingkaran (R atau S) (De Morgan), jadi P3 melawan akibat P2
Kontraposisi P2: ¬(R atau S) → ¬Q
Kontraposisi P1: ¬Q → ¬P
Rantai: ¬(R atau S) → ¬Q → ¬P
A, C, D, E. P, Q, S, R
semuanya melawan ¬P, ¬Q, ¬S, ¬R
B. Target serapan tidak tercapai di atas 95%',
  NULL,
  NULL,
  'published'
),
(
  'web',
  263,
  'TIU',
  'Silogisme',
  'sedang',
  'Jika seorang pranata komputer tidak memperbarui sertifikat keamanan siber secara berkala, maka ia tidak diizinkan mengelola server database utama instansi. Jika seorang pranata komputer tidak diizinkan mengelola server database utama instansi, maka ia wajib mengikuti kelas pendampingan teknis khusus di akhir pekan. Hari ini, Dani yang berprofesi sebagai pranata komputer dinyatakan tidak wajib mengikuti kelas pendampingan teknis khusus di akhir pekan. Kesimpulan yang sah adalah...',
  NULL,
  '{"A":"Dani tidak memperbarui sertifikat keamanan siber secara berkala.","B":"Dani telah memperbarui sertifikat keamanan siber secara berkala.","C":"Server database utama instansi sedang mengalami gangguan teknis keamanan.","D":"Dani tidak diizinkan mengelola server database utama instansi.","E":"Dani diizinkan mengelola server database utama instansi namun belum memperbarui sertifikat keamanan."}'::jsonb,
  'B',
  'P = memperbarui sertifikat, Q = diizinkan kelola server, R = wajib ikut kelas
P1: ¬P → ¬Q
P2: ¬Q → R
P3: Dani ¬R
Lawankan akibat P2: ¬R → Q (Dani diizinkan)
Lawankan akibat P1: Q → P (Dani memperbarui)
Rantai: ¬R → Q → P
A. diizinkan tapi belum memperbarui
belum memperbarui = ¬P, padahal ¬P → ¬Q
B dan D. kebalikan hasil rantai
E. gangguan teknis
pengetahuan di luar premis
C. Dani telah memperbarui sertifikat',
  NULL,
  NULL,
  'published'
),
(
  'web',
  264,
  'TIU',
  'Silogisme',
  'sedang',
  'Premis 1: Instansi pemerintah yang menerapkan zonasi integritas, bebas dari pungutan liar. Premis 2: Beberapa unit pelaksana teknis daerah adalah instansi pemerintah yang menerapkan zonasi integritas. Diberikan kesimpulan: (1) Semua unit pelaksana teknis daerah bebas dari pungutan liar. (2) Beberapa unit pelaksana teknis daerah bebas dari pungutan liar. Tentukan pernyataan yang benar!',
  NULL,
  '{"A":"Hanya kesimpulan (1) yang tepat.","B":"Hanya kesimpulan (2) yang tepat.","C":"Kesimpulan (1) atau (2) dapat dipilih secara bebas.","D":"Baik kesimpulan (1) maupun (2) tidak ada yang tepat.","E":"Kesimpulan (1) dan (2) tidak relevan dengan pernyataan."}'::jsonb,
  'B',
  'P1: semua instansi zonasi integritas bebas pungli
P2: beberapa UPTD = instansi zonasi integritas
Gambar: (UPTD sebagian (zonasi integritas (bebas pungli)))
Cuma UPTD di irisan zonasi yang pasti bebas pungli
(1) Semua UPTD bebas pungli
UPTD di luar irisan tidak diketahui statusnya
(2) Beberapa UPTD bebas pungli: pasti
Sebagian + semua: kesimpulan ikut sebagian
B. Hanya kesimpulan (2) yang tepat',
  NULL,
  NULL,
  'published'
),
(
  'web',
  265,
  'TIU',
  'Silogisme',
  'sedang',
  'Semua ASN wajib netral. Budi adalah ASN. Kesimpulan yang tepat...',
  NULL,
  '{"A":"Budi tidak wajib netral","B":"Budi wajib netral","C":"Sebagian ASN tidak netral","D":"Budi bukan ASN yang baik","E":"Tidak ada kesimpulan"}'::jsonb,
  'B',
  'Premis umum berlaku untuk Budi sebagai bagian dari ASN.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  266,
  'TIU',
  'Silogisme',
  'sedang',
  'Sebagian pegawai adalah atlet. Semua atlet disiplin. Kesimpulan...',
  NULL,
  '{"A":"Semua pegawai disiplin","B":"Sebagian pegawai disiplin","C":"Tidak ada pegawai disiplin","D":"Semua atlet pegawai","E":"Sebagian atlet tidak disiplin"}'::jsonb,
  'B',
  'Pegawai yang atlet pasti disiplin.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  267,
  'TIU',
  'Silogisme',
  'sedang',
  'Semua ikan bernapas dengan insang. Paus tidak bernapas dengan insang. Kesimpulan...',
  NULL,
  '{"A":"Paus adalah ikan","B":"Paus bukan ikan","C":"Sebagian paus ikan","D":"Semua ikan paus","E":"Tidak ada kesimpulan"}'::jsonb,
  'B',
  'Modus tollens: tidak berinsang berarti bukan ikan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  268,
  'TIU',
  'Silogisme',
  'sedang',
  'Sebagian mahasiswa adalah aktivis. Tidak ada aktivis yang apatis. Kesimpulan yang pasti benar...',
  NULL,
  '{"A":"Semua mahasiswa tidak apatis","B":"Sebagian mahasiswa tidak apatis","C":"Tidak ada mahasiswa apatis","D":"Semua aktivis adalah mahasiswa","E":"Sebagian aktivis apatis"}'::jsonb,
  'B',
  'Mahasiswa yang aktivis pasti tidak apatis, tetapi hanya sebagian mahasiswa.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  269,
  'TIU',
  'Silogisme',
  'sedang',
  'Semua ASN wajib netral. Sebagian pegawai kontrak bukan ASN. Kesimpulan yang pasti benar...',
  NULL,
  '{"A":"Semua pegawai kontrak tidak netral","B":"Sebagian pegawai kontrak wajib netral","C":"Tidak ada kesimpulan pasti tentang kewajiban netral pegawai kontrak","D":"Semua pegawai wajib netral","E":"Pegawai kontrak boleh tidak netral"}'::jsonb,
  'C',
  'Premis hanya mengatur ASN; status netral pegawai kontrak tidak dapat dipastikan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  270,
  'TIU',
  'Silogisme',
  'sedang',
  'Tidak ada pegawai teladan yang terlambat. Sebagian pegawai senior terlambat. Kesimpulan yang pasti benar...',
  NULL,
  '{"A":"Semua pegawai senior teladan","B":"Sebagian pegawai senior bukan pegawai teladan","C":"Tidak ada pegawai senior yang teladan","D":"Semua pegawai teladan senior","E":"Sebagian pegawai teladan terlambat"}'::jsonb,
  'B',
  'Pegawai senior yang terlambat pasti bukan pegawai teladan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  271,
  'TIU',
  'Silogisme',
  'sedang',
  'Jika anggaran disetujui, proyek dimulai. Proyek tidak dimulai. Kesimpulan...',
  NULL,
  '{"A":"Anggaran disetujui","B":"Anggaran tidak disetujui","C":"Proyek selesai","D":"Anggaran mungkin disetujui","E":"Tidak ada kesimpulan"}'::jsonb,
  'B',
  'Kontraposisi: bukan dimulai berarti bukan disetujui.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  272,
  'TIU',
  'Silogisme',
  'sedang',
  'Semua perawat memakai masker. Sebagian orang yang memakai masker adalah mahasiswa. Kesimpulan yang pasti benar...',
  NULL,
  '{"A":"Sebagian perawat adalah mahasiswa","B":"Semua mahasiswa memakai masker","C":"Hubungan antara perawat dan mahasiswa tidak dapat dipastikan","D":"Tidak ada perawat yang mahasiswa","E":"Semua perawat adalah mahasiswa"}'::jsonb,
  'C',
  'Dua kelompok bagian dari pemakai masker belum tentu beririsan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  273,
  'TIU',
  'Silogisme',
  'sedang',
  'Jika hujan turun, jalan basah. Jalan basah. Kesimpulan yang tepat...',
  NULL,
  '{"A":"Hujan turun","B":"Hujan tidak turun","C":"Tidak dapat disimpulkan apakah hujan turun","D":"Jalan kering","E":"Hujan pasti turun besok"}'::jsonb,
  'C',
  'Menegaskan akibat tidak membuktikan sebab: jalan bisa basah karena hal lain.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  274,
  'TIU',
  'Silogisme',
  'sedang',
  'Semua ASN jujur wajib melapor. Sebagian pegawai tidak melapor. Kesimpulan yang pasti benar...',
  NULL,
  '{"A":"Sebagian pegawai itu bukan ASN jujur","B":"Semua pegawai bukan ASN","C":"Pegawai itu semua ASN jujur","D":"Tidak ada pegawai melapor","E":"Tidak dapat disimpulkan"}'::jsonb,
  'A',
  'Yang tidak melapor pasti bukan ASN jujur (kontraposisi).',
  NULL,
  NULL,
  'published'
),
(
  'web',
  275,
  'TIU',
  'Silogisme',
  'sedang',
  'Jika lulus ujian maka dapat sertifikat. Rina tidak dapat sertifikat. Kesimpulan...',
  NULL,
  '{"A":"Rina lulus","B":"Rina tidak lulus","C":"Tidak dapat disimpulkan","D":"Rina curang","E":"Ujian dibatalkan"}'::jsonb,
  'B',
  'Kontraposisi: tidak dapat sertifikat berarti tidak lulus.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  276,
  'TIU',
  'Silogisme',
  'sedang',
  'Semua auditor jujur. Tidak ada orang jujur yang menerima suap. Sebagian pegawai adalah auditor. Kesimpulan yang pasti benar...',
  NULL,
  '{"A":"Semua pegawai tidak menerima suap","B":"Sebagian pegawai tidak menerima suap","C":"Tidak ada pegawai menerima suap","D":"Semua yang tidak menerima suap adalah auditor","E":"Sebagian auditor menerima suap"}'::jsonb,
  'B',
  'Auditor pasti jujur sehingga tidak menerima suap, tetapi hanya sebagian pegawai yang auditor.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  277,
  'TIU',
  'Silogisme',
  'sedang',
  'Jika harga naik maka permintaan turun. Jika permintaan turun maka produksi dikurangi. Produksi tidak dikurangi. Kesimpulan yang pasti benar adalah....',
  NULL,
  '{"A":"Harga tidak naik","B":"Harga naik dan permintaan turun","C":"Permintaan turun tetapi harga tidak naik","D":"Produksi berkurang karena harga turun","E":"Tidak dapat disimpulkan"}'::jsonb,
  'A',
  'Kontraposisi berantai: produksi tidak dikurangi, maka permintaan tidak turun, maka harga tidak naik.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  278,
  'TIU',
  'Silogisme',
  'sedang',
  'Sebagian dosen adalah peneliti. Tidak ada peneliti yang malas. Semua orang yang tidak malas mendapat penghargaan. Kesimpulan yang pasti benar adalah....',
  NULL,
  '{"A":"Semua dosen mendapat penghargaan","B":"Sebagian dosen mendapat penghargaan","C":"Sebagian dosen malas","D":"Semua peneliti adalah dosen","E":"Tidak ada dosen yang mendapat penghargaan"}'::jsonb,
  'B',
  'Dosen yang peneliti tidak malas, sehingga mendapat penghargaan. Yang pasti hanya sebagian dosen.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  279,
  'TIU',
  'Silogisme',
  'sedang',
  'Semua pejabat yang mengikuti seleksi lulus verifikasi. Sebagian peserta seleksi bukan pejabat. Tidak ada orang yang lulus verifikasi mendapat teguran. Pak Dedi adalah pejabat yang mengikuti seleksi. Kesimpulan yang pasti benar adalah....',
  NULL,
  '{"A":"Pak Dedi tidak mendapat teguran","B":"Pak Dedi mendapat teguran","C":"Semua peserta seleksi tidak mendapat teguran","D":"Sebagian pejabat tidak lulus verifikasi","E":"Tidak dapat disimpulkan"}'::jsonb,
  'A',
  'Pak Dedi pejabat peserta seleksi, maka lulus verifikasi, maka tidak mendapat teguran. Semua peserta belum pasti karena status peserta nonpejabat tidak diketahui.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  280,
  'TIU',
  'Silogisme',
  'sedang',
  'Tidak semua pegawai honorer berstatus PPPK. Semua PPPK memperoleh tunjangan. Kesimpulan yang pasti benar adalah....',
  NULL,
  '{"A":"Sebagian pegawai honorer tidak memperoleh tunjangan","B":"Sebagian pegawai honorer bukan PPPK","C":"Semua pegawai honorer tidak memperoleh tunjangan","D":"Semua PPPK adalah pegawai honorer","E":"Tidak ada pegawai honorer yang berstatus PPPK"}'::jsonb,
  'B',
  '"Tidak semua" berarti sebagian honorer bukan PPPK. Kita tidak tahu apakah yang bukan PPPK memperoleh tunjangan atau tidak.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  281,
  'TIU',
  'Silogisme',
  'sedang',
  'Semua pegawai bersertifikasi dapat ditugaskan pada proyek. Sebagian pegawai tidak dapat ditugaskan pada proyek. Kesimpulan yang pasti benar adalah....',
  NULL,
  '{"A":"Semua pegawai bersertifikasi","B":"Sebagian pegawai bersertifikasi tidak dapat ditugaskan","C":"Tidak ada pegawai yang bersertifikasi","D":"Sebagian pegawai tidak bersertifikasi","E":"Tidak dapat ditarik kesimpulan"}'::jsonb,
  'D',
  'Kontraposisi: yang tidak dapat ditugaskan pasti tidak bersertifikasi, maka sebagian pegawai tidak bersertifikasi.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  282,
  'TIU',
  'Silogisme',
  'sedang',
  'Jika hujan deras maka sungai meluap. Jika sungai meluap maka jalan ditutup. Jalan tidak ditutup. Kesimpulan yang pasti benar dan paling lengkap adalah....',
  NULL,
  '{"A":"Sungai tidak meluap","B":"Tidak hujan deras","C":"Sungai tidak meluap dan tidak hujan deras","D":"Sungai meluap tetapi tidak hujan deras","E":"Hujan deras tetapi sungai tidak meluap"}'::jsonb,
  'C',
  'Jalan tidak ditutup → sungai tidak meluap → tidak hujan deras. Opsi 1 dan 2 benar tetapi belum lengkap.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  283,
  'TIU',
  'Silogisme',
  'sedang',
  'Semua dokumen rahasia disimpan di lemari besi. Sebagian dokumen di lemari besi adalah dokumen keuangan. Kesimpulan yang pasti benar adalah....',
  NULL,
  '{"A":"Sebagian dokumen keuangan adalah dokumen rahasia","B":"Semua dokumen keuangan disimpan di lemari besi","C":"Sebagian dokumen keuangan disimpan di lemari besi","D":"Tidak ada dokumen keuangan yang rahasia","E":"Semua dokumen di lemari besi adalah dokumen rahasia"}'::jsonb,
  'C',
  'Kesimpulan langsung dari premis kedua. Hubungan dokumen keuangan dengan dokumen rahasia tidak ditentukan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  284,
  'TIU',
  'Silogisme',
  'sedang',
  'Setiap peserta yang lolos seleksi adalah pelamar jalur reguler atau jalur afirmasi. Tidak ada pelamar jalur afirmasi yang gagal tes kesehatan. Budi lolos seleksi dan gagal tes kesehatan. Kesimpulan yang pasti benar adalah....',
  NULL,
  '{"A":"Budi pelamar jalur afirmasi","B":"Budi pelamar jalur reguler","C":"Budi pelamar jalur reguler dan afirmasi","D":"Budi bukan pelamar jalur reguler","E":"Tidak dapat ditarik kesimpulan"}'::jsonb,
  'B',
  'Budi gagal tes kesehatan sehingga bukan pelamar afirmasi; karena lolos, ia pasti pelamar jalur reguler.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  285,
  'TIU',
  'Silogisme',
  'sedang',
  'Tidak ada ASN yang boleh berkampanye. Sebagian warga desa adalah ASN. Kesimpulan yang pasti benar adalah....',
  NULL,
  '{"A":"Semua warga desa tidak boleh berkampanye","B":"Sebagian warga desa boleh berkampanye","C":"Sebagian warga desa tidak boleh berkampanye","D":"Sebagian warga desa bukan ASN","E":"Semua ASN adalah warga desa"}'::jsonb,
  'C',
  'Warga desa yang ASN tidak boleh berkampanye, jadi sebagian warga desa tidak boleh berkampanye. Opsi 1 terlalu luas.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  286,
  'TIU',
  'Analitis',
  'sedang',
  'Ani, Budi, Cici, dan Dedi duduk berjajar dalam satu baris. Ani di ujung kiri. Budi tidak duduk di sebelah Ani. Cici duduk tepat di sebelah kanan Budi. Siapa yang duduk di ujung kanan?',
  NULL,
  '{"A":"Budi","B":"Cici","C":"Ani","D":"Dedi","E":"Tidak dapat ditentukan"}'::jsonb,
  'B',
  '1. Gambar 4 kotak. Ani di ujung kiri: isi kotak 1.
2. Budi tidak di sebelah Ani, jadi Budi bukan kotak 2. Kalau Budi di kotak 4, Cici (tepat di kanannya) tidak punya tempat. Jadi Budi di kotak 3.
3. Cici tepat di kanan Budi: kotak 4. Sisanya Dedi di kotak 2.
[gambar]
Ujung kanan: Cici',
  NULL,
  NULL,
  'published'
),
(
  'web',
  287,
  'TIU',
  'Analitis',
  'sedang',
  'Empat orang (P, Q, R, S) duduk berderet. Q di ujung kiri. S tepat di sebelah kanan Q. P tidak duduk di ujung. R tepat di sebelah kanan P. Siapa di ujung kanan?',
  NULL,
  '{"A":"P","B":"Tidak dapat ditentukan","C":"S","D":"R","E":"Q"}'::jsonb,
  'D',
  '1. Q di ujung kiri: kotak 1. S tepat di kanan Q: kotak 2.
2. Sisa kotak 3 dan 4. P tidak boleh di ujung, jadi P di kotak 3. R tepat di kanan P: kotak 4.
[gambar]
Ujung kanan: R',
  NULL,
  NULL,
  'published'
),
(
  'web',
  288,
  'TIU',
  'Analitis',
  'sedang',
  'Ani berkata: Budi berbohong. Budi berkata: Cici berbohong. Cici berkata: Ani dan Budi berbohong. Siapa yang jujur?',
  NULL,
  '{"A":"Cici","B":"Ani","C":"Budi","D":"Tidak ada","E":"Ani dan Cici"}'::jsonb,
  'C',
  '1. Misalkan satu orang jujur, lalu uji akibatnya pada ucapan lain.

Misal jujur | Akibat | Hasil
Ani | Budi bohong, lalu ucapan Budi salah, jadi Cici jujur. Tapi Cici bilang Ani bohong | ✗
Cici | Ani dan Budi bohong. Ani bohong berarti Budi jujur, bertabrakan | ✗
Budi | Cici bohong dan Ani bohong. Ucapan Cici (Ani dan Budi bohong) memang salah, cocok | ✓

Hanya satu skenario yang konsisten: Budi jujur.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  289,
  'TIU',
  'Analitis',
  'sedang',
  'Lima pegawai (Andi, Bela, Candra, Dewi, dan Eka) mendapat jadwal piket pada hari yang berbeda dari Senin sampai Jumat. Andi tidak piket pada hari Kamis. Dewi piket tepat sehari setelah Bela. Candra piket lebih awal daripada Andi. Eka piket tepat sehari setelah Candra.
Pernyataan yang pasti benar berdasarkan informasi tersebut adalah...',
  NULL,
  '{"A":"Candra piket tepat sehari sebelum Eka","B":"Eka piket tepat sehari setelah Dewi","C":"Eka piket pada hari Jumat","D":"Dewi piket pada hari Jumat","E":"Bela piket lebih awal daripada Andi"}'::jsonb,
  'A',
  '1. Tulis petunjuk: ① Andi tidak piket pada hari Kamis. ② Dewi piket tepat sehari setelah Bela. ③ Candra piket lebih awal daripada Andi. ④ Eka piket tepat sehari setelah Candra.
2. Tarik garis hari dan isi dari yang pasti. Ada 3 susunan sah:
[gambar]
3. Uji tiap opsi (cari yang benar di SEMUA susunan):
A. Bela piket lebih awal daripada Andi → hanya benar di susunan ②,③, belum pasti
B. Dewi piket pada hari Jumat → hanya benar di susunan ①, belum pasti
C. Eka piket tepat sehari setelah Dewi → salah di semua susunan, tidak mungkin benar
D. Candra piket tepat sehari sebelum Eka → benar di semua susunan, pasti benar
E. Eka piket pada hari Jumat → salah di semua susunan, tidak mungkin benar',
  NULL,
  NULL,
  'published'
),
(
  'web',
  290,
  'TIU',
  'Analitis',
  'sedang',
  'Lima pegawai (Gani, Hesti, Irma, Joko, dan Kiki) mendapat jadwal piket pada hari yang berbeda dari Senin sampai Jumat. Gani piket tepat sehari setelah Kiki. Joko piket pada hari Jumat. Hesti tidak piket pada hari Jumat. Gani tidak piket pada hari Jumat. Hesti piket tepat sehari sebelum Joko.
Pernyataan yang TIDAK MUNGKIN benar berdasarkan informasi tersebut adalah...',
  NULL,
  '{"A":"Kiki piket tepat sehari setelah Irma","B":"Hesti piket tepat sehari sebelum Gani","C":"Kiki piket pada hari Selasa","D":"Irma piket lebih awal daripada Hesti","E":"Kiki piket tepat sehari sebelum Gani"}'::jsonb,
  'B',
  '1. Tulis petunjuk: ① Gani piket tepat sehari setelah Kiki. ② Joko piket pada hari Jumat. ③ Hesti tidak piket pada hari Jumat. ④ Gani tidak piket pada hari Jumat. ⑤ Hesti piket tepat sehari sebelum Joko.
2. Tarik garis hari dan isi dari yang pasti. Ada 2 susunan sah:
[gambar]
3. Uji tiap opsi (cari yang tidak benar di SATU PUN susunan):
A. Kiki piket pada hari Selasa → hanya benar di susunan ②, belum pasti
B. Hesti piket tepat sehari sebelum Gani → salah di semua susunan, tidak mungkin benar
C. Kiki piket tepat sehari setelah Irma → hanya benar di susunan ②, belum pasti
D. Kiki piket tepat sehari sebelum Gani → benar di semua susunan, pasti benar
E. Irma piket lebih awal daripada Hesti → benar di semua susunan, pasti benar',
  NULL,
  NULL,
  'published'
),
(
  'web',
  291,
  'TIU',
  'Analitis',
  'sedang',
  'Lima pegawai (Fajar, Gita, Hana, Indra, dan Joni) mendapat jadwal piket pada hari yang berbeda dari Senin sampai Jumat. Joni piket lebih awal daripada Indra. Indra piket pada hari Kamis. Hana piket tepat sehari sebelum Gita.
Pernyataan yang pasti benar berdasarkan informasi tersebut adalah...',
  NULL,
  '{"A":"Gita piket pada hari Jumat","B":"Fajar piket tepat sehari setelah Indra","C":"Hana piket pada hari Selasa","D":"Indra piket tepat sehari sebelum Joni","E":"Gita piket tepat sehari sebelum Indra"}'::jsonb,
  'B',
  '1. Tulis petunjuk: ① Joni piket lebih awal daripada Indra. ② Indra piket pada hari Kamis. ③ Hana piket tepat sehari sebelum Gita.
2. Tarik garis hari dan isi dari yang pasti. Ada 2 susunan sah:
[gambar]
3. Uji tiap opsi (cari yang benar di SEMUA susunan):
A. Hana piket pada hari Selasa → hanya benar di susunan ②, belum pasti
B. Gita piket tepat sehari sebelum Indra → hanya benar di susunan ②, belum pasti
C. Indra piket tepat sehari sebelum Joni → salah di semua susunan, tidak mungkin benar
D. Gita piket pada hari Jumat → salah di semua susunan, tidak mungkin benar
E. Fajar piket tepat sehari setelah Indra → benar di semua susunan, pasti benar',
  NULL,
  NULL,
  'published'
),
(
  'web',
  292,
  'TIU',
  'Analitis',
  'sedang',
  'Lima pegawai (Andi, Bela, Candra, Dewi, dan Eka) mendapat jadwal piket pada hari yang berbeda dari Senin sampai Jumat. Bela dan Andi piket dengan jeda minimal satu hari. Candra piket tepat sehari sebelum Eka. Andi piket tepat sehari sebelum Candra. Andi piket lebih awal daripada Eka. Dewi dan Andi piket dengan jeda minimal satu hari.
Pernyataan yang TIDAK MUNGKIN benar berdasarkan informasi tersebut adalah...',
  NULL,
  '{"A":"Eka piket lebih awal daripada Bela","B":"Dewi piket lebih awal daripada Bela","C":"Eka piket tepat sehari setelah Candra","D":"Dewi piket pada hari Jumat","E":"Candra piket tepat sehari setelah Bela"}'::jsonb,
  'E',
  '1. Tulis petunjuk: ① Bela dan Andi piket dengan jeda minimal satu hari. ② Candra piket tepat sehari sebelum Eka. ③ Andi piket tepat sehari sebelum Candra. ④ Andi piket lebih awal daripada Eka. ⑤ Dewi dan Andi piket dengan jeda minimal satu hari.
2. Tarik garis hari dan isi dari yang pasti. Ada 2 susunan sah:
[gambar]
3. Uji tiap opsi (cari yang tidak benar di SATU PUN susunan):
A. Candra piket tepat sehari setelah Bela → salah di semua susunan, tidak mungkin benar
B. Dewi piket lebih awal daripada Bela → hanya benar di susunan ②, belum pasti
C. Dewi piket pada hari Jumat → hanya benar di susunan ①, belum pasti
D. Eka piket lebih awal daripada Bela → benar di semua susunan, pasti benar
E. Eka piket tepat sehari setelah Candra → benar di semua susunan, pasti benar',
  NULL,
  NULL,
  'published'
),
(
  'web',
  293,
  'TIU',
  'Analitis',
  'sedang',
  'Lima pegawai (Gani, Hesti, Irma, Joko, dan Kiki) mendapat jadwal piket pada hari yang berbeda dari Senin sampai Jumat. Irma piket tepat sehari sebelum Joko. Hesti piket tepat sehari sebelum Irma. Irma piket pada hari Kamis.
Pernyataan yang pasti benar adalah...
I. Kiki piket tepat sehari sebelum Gani
II. Joko piket tepat sehari sebelum Gani
III. Kiki piket lebih awal daripada Joko',
  NULL,
  '{"A":"III saja","B":"I dan II","C":"II dan III","D":"I saja","E":"I, II, dan III"}'::jsonb,
  'A',
  '1. Tulis petunjuk: ① Irma piket tepat sehari sebelum Joko. ② Hesti piket tepat sehari sebelum Irma. ③ Irma piket pada hari Kamis.
2. Garis hari, semua susunan sah:
[gambar]
3. Centang tiap pernyataan di tiap susunan. Satu ✗ saja berarti tidak pasti:

Pernyataan | ① | ② | Hasil
I | ✗ | ✓ | mungkin saja
II | ✗ | ✗ | salah
III | ✓ | ✓ | pasti

4. Yang pasti benar semua kolom: III saja',
  NULL,
  NULL,
  'published'
),
(
  'web',
  294,
  'TIU',
  'Analitis',
  'sedang',
  'Lima pegawai (Fajar, Gita, Hana, Indra, dan Joni) mendapat jadwal piket pada hari yang berbeda dari Senin sampai Jumat. Joni piket pada hari Selasa. Hana piket pada hari Jumat. Indra tidak piket pada hari Selasa. Joni piket tepat sehari sebelum Fajar.
Pernyataan yang pasti benar adalah...
I. Gita piket dua hari sebelum Indra
II. Indra piket pada hari Senin
III. Fajar piket pada hari Rabu',
  NULL,
  '{"A":"I dan II","B":"II dan III","C":"III saja","D":"I, II, dan III","E":"I saja"}'::jsonb,
  'C',
  '1. Tulis petunjuk: ① Joni piket pada hari Selasa. ② Hana piket pada hari Jumat. ③ Indra tidak piket pada hari Selasa. ④ Joni piket tepat sehari sebelum Fajar.
2. Garis hari, semua susunan sah:
[gambar]
3. Centang tiap pernyataan di tiap susunan. Satu ✗ saja berarti tidak pasti:

Pernyataan | ① | ② | Hasil
I | ✗ | ✗ | salah
II | ✗ | ✓ | mungkin saja
III | ✓ | ✓ | pasti

4. Yang pasti benar semua kolom: III saja',
  NULL,
  NULL,
  'published'
),
(
  'web',
  295,
  'TIU',
  'Analitis',
  'sedang',
  'Empat peserta pelatihan, yaitu Gani, Hesti, Irma, dan Joko, berasal dari kota yang berbeda (Medan, Solo, Kupang, Ambon) dan datang dengan moda yang berbeda (pesawat, kereta, kapal, bus). Irma datang menggunakan kereta. Peserta yang berasal dari Ambon datang menggunakan kapal. Irma berasal dari Medan. Peserta yang berasal dari Solo tidak menggunakan kereta. Hesti datang menggunakan kapal. Joko bukan berasal dari Kupang. Gani tidak menggunakan bus. Pasangan peserta, kota asal, dan moda transportasi yang tepat adalah...',
  NULL,
  '{"A":"Irma – Solo – kereta","B":"Irma – Kupang – kapal","C":"Hesti – Medan – kereta","D":"Irma – Medan – kereta","E":"Irma – Medan – kapal"}'::jsonb,
  'D',
  '1. Tulis petunjuk: ① Irma datang menggunakan kereta. ② Peserta yang berasal dari Ambon datang menggunakan kapal. ③ Irma berasal dari Medan. ④ Peserta yang berasal dari Solo tidak menggunakan kereta. ⑤ Hesti datang menggunakan kapal. ⑥ Joko bukan berasal dari Kupang. ⑦ Gani tidak menggunakan bus.
2. Buat tabel centang dan silang (peserta × kota, peserta × moda). Isi yang pasti dulu, coret yang gugur. Petunjuk "peserta dari kota X naik Y" disimpan sebagai pasangan kota–moda sampai orangnya ketemu.
3. Tarik garis peserta → kota → moda:
[gambar]
Hasil akhir:
Gani – Kupang – pesawat
Hesti – Ambon – kapal
Irma – Medan – kereta
Joko – Solo – bus
Opsi jebakan memakai satu atau dua data yang benar, tapi bertabrakan dengan petunjuk lain.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  296,
  'TIU',
  'Analitis',
  'sedang',
  'Empat peserta pelatihan, yaitu Lina, Maman, Nina, dan Oka, berasal dari kota yang berbeda (Padang, Bogor, Manado, Dili) dan datang dengan moda yang berbeda (pesawat, kereta, kapal, bus). Peserta yang berasal dari Dili tidak menggunakan kapal. Peserta yang berasal dari Manado tidak menggunakan kapal. Maman bukan berasal dari Dili. Nina berasal dari Dili. Peserta yang berasal dari Bogor datang menggunakan kapal. Maman bukan berasal dari Dili dan tidak menggunakan kereta. Maman datang menggunakan bus. Lina datang menggunakan kereta. Peserta yang berasal dari Padang tidak menggunakan kereta. Nina bukan berasal dari Bogor. Pasangan peserta, kota asal, dan moda transportasi yang tepat adalah...',
  NULL,
  '{"A":"Oka – Bogor – kapal","B":"Nina – Dili – kapal","C":"Nina – Dili – kereta","D":"Lina – Dili – pesawat","E":"Oka – Bogor – kereta"}'::jsonb,
  'A',
  '1. Tulis petunjuk: ① Peserta yang berasal dari Dili tidak menggunakan kapal. ② Peserta yang berasal dari Manado tidak menggunakan kapal. ③ Maman bukan berasal dari Dili. ④ Nina berasal dari Dili. ⑤ Peserta yang berasal dari Bogor datang menggunakan kapal. ⑥ Maman bukan berasal dari Dili dan tidak menggunakan kereta. ⑦ Maman datang menggunakan bus. ⑧ Lina datang menggunakan kereta. ⑨ Peserta yang berasal dari Padang tidak menggunakan kereta. ⑩ Nina bukan berasal dari Bogor.
2. Buat tabel centang dan silang (peserta × kota, peserta × moda). Isi yang pasti dulu, coret yang gugur. Petunjuk "peserta dari kota X naik Y" disimpan sebagai pasangan kota–moda sampai orangnya ketemu.
3. Tarik garis peserta → kota → moda:
[gambar]
Hasil akhir:
Lina – Manado – kereta
Maman – Padang – bus
Nina – Dili – pesawat
Oka – Bogor – kapal
Opsi jebakan memakai satu atau dua data yang benar, tapi bertabrakan dengan petunjuk lain.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  297,
  'TIU',
  'Analitis',
  'sedang',
  'Empat peserta pelatihan, yaitu Putri, Raka, Sari, dan Teguh, berasal dari kota yang berbeda (Aceh, Malang, Ternate, Jambi) dan datang dengan moda yang berbeda (pesawat, kereta, kapal, bus). Peserta yang berasal dari Jambi tidak menggunakan kereta. Peserta yang berasal dari Ternate datang menggunakan kapal. Putri bukan berasal dari Malang dan tidak menggunakan bus. Sari bukan berasal dari Malang dan tidak menggunakan kapal. Sari bukan berasal dari Malang dan tidak menggunakan pesawat. Teguh berasal dari Malang. Sari tidak menggunakan pesawat. Putri datang menggunakan kereta. Peserta yang berasal dari Aceh tidak menggunakan pesawat. Pasangan peserta, kota asal, dan moda transportasi yang tepat adalah...',
  NULL,
  '{"A":"Teguh – Aceh – kapal","B":"Putri – Aceh – pesawat","C":"Putri – Aceh – kereta","D":"Putri – Aceh – bus","E":"Teguh – Ternate – kapal"}'::jsonb,
  'C',
  '1. Tulis petunjuk: ① Peserta yang berasal dari Jambi tidak menggunakan kereta. ② Peserta yang berasal dari Ternate datang menggunakan kapal. ③ Putri bukan berasal dari Malang dan tidak menggunakan bus. ④ Sari bukan berasal dari Malang dan tidak menggunakan kapal. ⑤ Sari bukan berasal dari Malang dan tidak menggunakan pesawat. ⑥ Teguh berasal dari Malang. ⑦ Sari tidak menggunakan pesawat. ⑧ Putri datang menggunakan kereta. ⑨ Peserta yang berasal dari Aceh tidak menggunakan pesawat.
2. Buat tabel centang dan silang (peserta × kota, peserta × moda). Isi yang pasti dulu, coret yang gugur. Petunjuk "peserta dari kota X naik Y" disimpan sebagai pasangan kota–moda sampai orangnya ketemu.
3. Tarik garis peserta → kota → moda:
[gambar]
Hasil akhir:
Putri – Aceh – kereta
Raka – Ternate – kapal
Sari – Jambi – bus
Teguh – Malang – pesawat
Opsi jebakan memakai satu atau dua data yang benar, tapi bertabrakan dengan petunjuk lain.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  298,
  'TIU',
  'Analitis',
  'sedang',
  'Delapan orang (Ayu, Bayu, Citra, Dika, Eko, Fitri, Gita, dan Hadi) duduk mengelilingi sebuah meja bundar dengan jarak antarkursi yang sama. Fitri duduk satu kursi setelah Dika searah jarum jam. Fitri tidak duduk bersebelahan dengan Eko. Citra tidak duduk bersebelahan dengan Dika. Hadi duduk satu kursi setelah Ayu searah jarum jam. Bayu duduk bersebelahan dengan Dika. Ayu tidak duduk bersebelahan dengan Citra. Bayu tidak duduk bersebelahan dengan Ayu. Ayu duduk bersebelahan dengan Gita. Dika duduk satu kursi setelah Bayu searah jarum jam. Citra tidak duduk bersebelahan dengan Gita. Ayu duduk berhadapan dengan Fitri.
Orang yang duduk berhadapan dengan Citra adalah...',
  NULL,
  '{"A":"Ayu","B":"Eko","C":"Bayu","D":"Hadi","E":"Fitri"}'::jsonb,
  'D',
  '1. Gambar lingkaran, nomori kursi 1 sampai 8 searah jarum jam. Berhadapan = selisih 4 kursi (1↔5, 2↔6, 3↔7, 4↔8).
2. Isi dulu petunjuk yang pasti (berhadapan, satu kursi setelah). Petunjuk "tidak bersebelahan" dipakai belakangan buat menyaring.
[gambar]
3. Citra di kursi 6, garis merah lewat tengah ke kursi 2: Hadi
Opsi lain duduk 1 atau 3 kursi dari Citra, jadi menggoda tapi bukan berhadapan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  299,
  'TIU',
  'Analitis',
  'sedang',
  'Delapan orang (Ayu, Bayu, Citra, Dika, Eko, Fitri, Gita, dan Hadi) duduk mengelilingi sebuah meja bundar dengan jarak antarkursi yang sama. Ayu duduk satu kursi setelah Gita searah jarum jam. Dika tidak duduk bersebelahan dengan Gita. Gita duduk satu kursi setelah Bayu searah jarum jam. Dika duduk bersebelahan dengan Hadi. Gita tidak duduk bersebelahan dengan Citra. Bayu duduk bersebelahan dengan Citra. Eko duduk satu kursi setelah Fitri searah jarum jam. Gita duduk bersebelahan dengan Bayu. Citra duduk bersebelahan dengan Bayu. Dika duduk bersebelahan dengan Ayu.
Orang yang duduk berhadapan dengan Eko adalah...',
  NULL,
  '{"A":"Fitri","B":"Dika","C":"Gita","D":"Ayu","E":"Citra"}'::jsonb,
  'D',
  '1. Gambar lingkaran, nomori kursi 1 sampai 8 searah jarum jam. Berhadapan = selisih 4 kursi (1↔5, 2↔6, 3↔7, 4↔8).
2. Isi dulu petunjuk yang pasti (berhadapan, satu kursi setelah). Petunjuk "tidak bersebelahan" dipakai belakangan buat menyaring.
[gambar]
3. Eko di kursi 5, garis merah lewat tengah ke kursi 1: Ayu
Opsi lain duduk 1 atau 3 kursi dari Eko, jadi menggoda tapi bukan berhadapan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  300,
  'TIU',
  'Analitis',
  'sedang',
  'Delapan orang (Ayu, Bayu, Citra, Dika, Eko, Fitri, Gita, dan Hadi) duduk mengelilingi sebuah meja bundar dengan jarak antarkursi yang sama. Bayu duduk berhadapan dengan Ayu. Dika tidak duduk bersebelahan dengan Bayu. Ayu tidak duduk bersebelahan dengan Hadi. Fitri duduk berhadapan dengan Eko. Gita duduk berhadapan dengan Dika.
Orang yang duduk berhadapan dengan Hadi adalah...',
  NULL,
  '{"A":"Fitri","B":"Eko","C":"Ayu","D":"Citra","E":"Bayu"}'::jsonb,
  'D',
  '1. Gambar lingkaran, nomori kursi 1 sampai 8 searah jarum jam. Berhadapan = selisih 4 kursi (1↔5, 2↔6, 3↔7, 4↔8).
2. Isi dulu petunjuk yang pasti (berhadapan, satu kursi setelah). Petunjuk "tidak bersebelahan" dipakai belakangan buat menyaring.
[gambar]
3. Hadi di kursi 4, garis merah lewat tengah ke kursi 8: Citra
Opsi lain duduk 1 atau 3 kursi dari Hadi, jadi menggoda tapi bukan berhadapan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  301,
  'TIU',
  'Analitis',
  'sedang',
  'Delapan orang (Aldi, Bunga, Cahyo, Dinda, Erwin, Fani, Galih, dan Hesti) duduk dalam dua baris yang berhadapan, masing-masing empat orang. Baris 1 menghadap ke selatan dan Baris 2 menghadap ke utara, sehingga kanan dan kiri dihitung menurut arah hadap orang itu. Setiap orang berhadapan dengan tepat satu orang di baris seberang. Galih duduk di Baris 1. Cahyo duduk berhadapan dengan Hesti. Bunga duduk di ujung barat barisnya. Cahyo duduk di Baris 1. Bunga tidak duduk bersebelahan dengan Fani. Dinda duduk di ujung timur barisnya. Aldi duduk di ujung barat barisnya.
Orang yang duduk berhadapan dengan Bunga adalah...',
  NULL,
  '{"A":"Dinda","B":"Hesti","C":"Cahyo","D":"Erwin","E":"Aldi"}'::jsonb,
  'E',
  '1. Tulis petunjuk: ① Galih duduk di Baris 1. ② Cahyo duduk berhadapan dengan Hesti. ③ Bunga duduk di ujung barat barisnya. ④ Cahyo duduk di Baris 1. ⑤ Bunga tidak duduk bersebelahan dengan Fani. ⑥ Dinda duduk di ujung timur barisnya. ⑦ Aldi duduk di ujung barat barisnya.
2. Gambar dua baris dan tandai arah hadapnya. Kanan itu menurut arah hadap orangnya, bukan menurut gambar. Garis putus-putus = berhadapan.
[gambar]
3. Bunga di Baris 1 kursi 1. Garis merah lurus ke seberang: Aldi. Orang di kiri atau kanan seberang itu menggoda tapi bukan berhadapan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  302,
  'TIU',
  'Analitis',
  'sedang',
  'Delapan orang (Aldi, Bunga, Cahyo, Dinda, Erwin, Fani, Galih, dan Hesti) duduk dalam dua baris yang berhadapan, masing-masing empat orang. Baris 1 menghadap ke selatan dan Baris 2 menghadap ke utara, sehingga kanan dan kiri dihitung menurut arah hadap orang itu. Setiap orang berhadapan dengan tepat satu orang di baris seberang. Bunga duduk tepat di sebelah kanan Cahyo. Cahyo tidak duduk bersebelahan dengan Fani. Fani tidak duduk bersebelahan dengan Erwin. Fani duduk di Baris 2. Hesti duduk di ujung barat barisnya.
Orang yang duduk tepat di sebelah kanan Cahyo adalah...',
  NULL,
  '{"A":"Fani","B":"Erwin","C":"Aldi","D":"Dinda","E":"Bunga"}'::jsonb,
  'E',
  '1. Tulis petunjuk: ① Bunga duduk tepat di sebelah kanan Cahyo. ② Cahyo tidak duduk bersebelahan dengan Fani. ③ Fani tidak duduk bersebelahan dengan Erwin. ④ Fani duduk di Baris 2. ⑤ Hesti duduk di ujung barat barisnya.
2. Gambar dua baris dan tandai arah hadapnya. Kanan itu menurut arah hadap orangnya, bukan menurut gambar. Garis putus-putus = berhadapan.
[gambar]
3. Cahyo menghadap Selatan, jadi kanannya ke BARAT (kiri di gambar): Bunga. Jebakan: sisi sebaliknya adalah kirinya, bukan kanannya.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  303,
  'TIU',
  'Analitis',
  'sedang',
  'Delapan orang (Aldi, Bunga, Cahyo, Dinda, Erwin, Fani, Galih, dan Hesti) duduk dalam dua baris yang berhadapan, masing-masing empat orang. Baris 1 menghadap ke selatan dan Baris 2 menghadap ke utara, sehingga kanan dan kiri dihitung menurut arah hadap orang itu. Setiap orang berhadapan dengan tepat satu orang di baris seberang. Aldi tidak duduk bersebelahan dengan Bunga. Galih duduk di Baris 2. Bunga duduk berhadapan dengan Aldi. Aldi duduk tepat di sebelah kanan Hesti. Erwin tidak duduk bersebelahan dengan Cahyo.
Orang yang duduk berhadapan dengan Aldi adalah...',
  NULL,
  '{"A":"Hesti","B":"Bunga","C":"Dinda","D":"Erwin","E":"Cahyo"}'::jsonb,
  'B',
  '1. Tulis petunjuk: ① Aldi tidak duduk bersebelahan dengan Bunga. ② Galih duduk di Baris 2. ③ Bunga duduk berhadapan dengan Aldi. ④ Aldi duduk tepat di sebelah kanan Hesti. ⑤ Erwin tidak duduk bersebelahan dengan Cahyo.
2. Gambar dua baris dan tandai arah hadapnya. Kanan itu menurut arah hadap orangnya, bukan menurut gambar. Garis putus-putus = berhadapan.
[gambar]
3. Aldi di Baris 1 kursi 1. Garis merah lurus ke seberang: Bunga. Orang di kiri atau kanan seberang itu menggoda tapi bukan berhadapan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  304,
  'TIU',
  'Analitis',
  'sedang',
  'Delapan orang (Aldi, Bunga, Cahyo, Dinda, Erwin, Fani, Galih, dan Hesti) duduk dalam dua baris yang berhadapan, masing-masing empat orang. Baris 1 menghadap ke selatan dan Baris 2 menghadap ke utara, sehingga kanan dan kiri dihitung menurut arah hadap orang itu. Setiap orang berhadapan dengan tepat satu orang di baris seberang. Cahyo duduk bersebelahan dengan Fani. Erwin duduk di ujung timur barisnya. Dinda duduk bersebelahan dengan Cahyo. Hesti tidak duduk bersebelahan dengan Bunga. Fani duduk di ujung barat barisnya. Hesti tidak duduk bersebelahan dengan Galih. Cahyo duduk di Baris 1.
Orang yang duduk tepat di sebelah kanan Dinda adalah...',
  NULL,
  '{"A":"Cahyo","B":"Galih","C":"Hesti","D":"Erwin","E":"Bunga"}'::jsonb,
  'A',
  '1. Tulis petunjuk: ① Cahyo duduk bersebelahan dengan Fani. ② Erwin duduk di ujung timur barisnya. ③ Dinda duduk bersebelahan dengan Cahyo. ④ Hesti tidak duduk bersebelahan dengan Bunga. ⑤ Fani duduk di ujung barat barisnya. ⑥ Hesti tidak duduk bersebelahan dengan Galih. ⑦ Cahyo duduk di Baris 1.
2. Gambar dua baris dan tandai arah hadapnya. Kanan itu menurut arah hadap orangnya, bukan menurut gambar. Garis putus-putus = berhadapan.
[gambar]
3. Dinda menghadap Selatan, jadi kanannya ke BARAT (kiri di gambar): Cahyo. Jebakan: sisi sebaliknya (Hesti) adalah kirinya, bukan kanannya.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  305,
  'TIU',
  'Analitis',
  'sedang',
  'Enam pegawai (Dani, Eva, Fikri, Gina, Hendra, dan Intan) akan dibagi ke dalam dua tim, Tim 1 dan Tim 2, masing-masing beranggotakan tiga orang. Aturan pembagian:
① Jika Fikri di Tim 1, maka Gina harus di Tim 2.
② Hendra dan Gina tidak boleh satu tim.
③ Eva dan Gina tidak boleh satu tim.
Susunan tim yang memenuhi semua aturan adalah...',
  NULL,
  '{"A":"Tim 1: Dani, Fikri, Hendra; Tim 2: Eva, Gina, Intan","B":"Tim 1: Fikri, Gina, Intan; Tim 2: Dani, Eva, Hendra","C":"Tim 1: Eva, Hendra, Intan; Tim 2: Dani, Fikri, Gina","D":"Tim 1: Gina, Hendra, Intan; Tim 2: Dani, Eva, Fikri","E":"Tim 1: Dani, Gina, Hendra; Tim 2: Eva, Fikri, Intan"}'::jsonb,
  'C',
  '1. Tulis aturan: ① Jika Fikri di Tim 1, maka Gina harus di Tim 2. ② Hendra dan Gina tidak boleh satu tim. ③ Eva dan Gina tidak boleh satu tim.
2. Uji tiap opsi terhadap tiap aturan. Satu ✗ saja langsung gugur:

Opsi | ① | ② | ③
A | ✓ | ✗ | ✓
B | ✗ | ✓ | ✓
C | ✓ | ✓ | ✗
D | ✓ | ✓ | ✓
E | ✓ | ✗ | ✓

3. Yang lolos semua aturan: D
[gambar]
Setiap opsi jebakan memenuhi hampir semua aturan, tapi melanggar tepat satu.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  306,
  'TIU',
  'Analitis',
  'sedang',
  'Enam pegawai (Dani, Eva, Fikri, Gina, Hendra, dan Intan) akan dibagi ke dalam dua tim, Tim 1 dan Tim 2, masing-masing beranggotakan tiga orang. Aturan pembagian:
① Jika Intan di Tim 1, maka Eva harus di Tim 2.
② Jika Hendra di Tim 1, maka Fikri harus di Tim 2.
③ Jika Hendra di Tim 1, maka Intan harus di Tim 2.
④ Jika Intan di Tim 1, maka Dani harus di Tim 2.
⑤ Fikri dan Dani tidak boleh satu tim.
Susunan tim yang memenuhi semua aturan adalah...',
  NULL,
  '{"A":"Tim 1: Eva, Fikri, Intan; Tim 2: Dani, Gina, Hendra","B":"Tim 1: Dani, Fikri, Gina; Tim 2: Eva, Hendra, Intan","C":"Tim 1: Dani, Eva, Gina; Tim 2: Fikri, Hendra, Intan","D":"Tim 1: Dani, Gina, Intan; Tim 2: Eva, Fikri, Hendra","E":"Tim 1: Eva, Fikri, Hendra; Tim 2: Dani, Gina, Intan"}'::jsonb,
  'C',
  '1. Tulis aturan: ① Jika Intan di Tim 1, maka Eva harus di Tim 2. ② Jika Hendra di Tim 1, maka Fikri harus di Tim 2. ③ Jika Hendra di Tim 1, maka Intan harus di Tim 2. ④ Jika Intan di Tim 1, maka Dani harus di Tim 2. ⑤ Fikri dan Dani tidak boleh satu tim.
2. Uji tiap opsi terhadap tiap aturan. Satu ✗ saja langsung gugur:

Opsi | ① | ② | ③ | ④ | ⑤
A | ✗ | ✓ | ✓ | ✓ | ✓
B | ✓ | ✗ | ✓ | ✓ | ✓
C | ✓ | ✓ | ✓ | ✗ | ✓
D | ✓ | ✓ | ✓ | ✓ | ✗
E | ✓ | ✓ | ✓ | ✓ | ✓

3. Yang lolos semua aturan: E
[gambar]
Setiap opsi jebakan memenuhi hampir semua aturan, tapi melanggar tepat satu.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  307,
  'TIU',
  'Analitis',
  'sedang',
  'Enam pegawai (Dani, Eva, Fikri, Gina, Hendra, dan Intan) akan dibagi ke dalam dua tim, Tim 1 dan Tim 2, masing-masing beranggotakan tiga orang. Aturan pembagian:
① Intan dan Fikri tidak boleh satu tim.
② Hendra dan Fikri harus satu tim.
③ Jika Fikri di Tim 1, maka Hendra harus di Tim 2.
Susunan tim yang memenuhi semua aturan adalah...',
  NULL,
  '{"A":"Tim 1: Dani, Eva, Gina; Tim 2: Fikri, Hendra, Intan","B":"Tim 1: Dani, Gina, Intan; Tim 2: Eva, Fikri, Hendra","C":"Tim 1: Dani, Eva, Fikri; Tim 2: Gina, Hendra, Intan","D":"Tim 1: Gina, Hendra, Intan; Tim 2: Dani, Eva, Fikri","E":"Tim 1: Fikri, Gina, Hendra; Tim 2: Dani, Eva, Intan"}'::jsonb,
  'B',
  '1. Tulis aturan: ① Intan dan Fikri tidak boleh satu tim. ② Hendra dan Fikri harus satu tim. ③ Jika Fikri di Tim 1, maka Hendra harus di Tim 2.
2. Uji tiap opsi terhadap tiap aturan. Satu ✗ saja langsung gugur:

Opsi | ① | ② | ③
A | ✓ | ✓ | ✗
B | ✓ | ✓ | ✓
C | ✓ | ✗ | ✓
D | ✗ | ✓ | ✓
E | ✓ | ✗ | ✓

3. Yang lolos semua aturan: B
[gambar]
Setiap opsi jebakan memenuhi hampir semua aturan, tapi melanggar tepat satu.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  308,
  'TIU',
  'Analitis',
  'sedang',
  'Enam pegawai (Dani, Eva, Fikri, Gina, Hendra, dan Intan) akan dibagi ke dalam dua tim, Tim 1 dan Tim 2, masing-masing beranggotakan tiga orang. Aturan pembagian:
① Hendra dan Intan harus satu tim.
② Intan dan Gina tidak boleh satu tim.
③ Gina dan Dani harus satu tim.
Jika Gina berada di Tim 1, pernyataan yang pasti benar adalah...',
  NULL,
  '{"A":"Dani dan Fikri tidak berada dalam satu tim","B":"Dani dan Hendra berada dalam satu tim","C":"Hendra berada di Tim 2","D":"Fikri dan Intan berada dalam satu tim","E":"Hendra dan Intan tidak berada dalam satu tim"}'::jsonb,
  'C',
  '1. Tulis aturan: ① Hendra dan Intan harus satu tim. ② Intan dan Gina tidak boleh satu tim. ③ Gina dan Dani harus satu tim.
2. Tempatkan Gina di Tim 1, lalu isi sisa anggota yang masih sah menurut semua aturan. Ada 2 susunan:
[gambar]
3. Uji tiap opsi (cari yang benar di SEMUA susunan):
A. Dani dan Fikri tidak berada dalam satu tim hanya benar di sebagian susunan
B. Fikri dan Intan berada dalam satu tim hanya benar di sebagian susunan
C. Hendra berada di Tim 2 benar di semua susunan, pasti benar
D. Hendra dan Intan tidak berada dalam satu tim salah di semua susunan
E. Dani dan Hendra berada dalam satu tim salah di semua susunan',
  NULL,
  NULL,
  'published'
),
(
  'web',
  309,
  'TIU',
  'Analitis',
  'sedang',
  'Enam pegawai (Dani, Eva, Fikri, Gina, Hendra, dan Intan) akan dibagi ke dalam dua tim, Tim 1 dan Tim 2, masing-masing beranggotakan tiga orang. Aturan pembagian:
① Dani dan Intan tidak boleh satu tim.
② Gina dan Intan harus satu tim.
③ Intan dan Eva tidak boleh satu tim.
Jika Gina berada di Tim 1, pernyataan yang pasti benar adalah...',
  NULL,
  '{"A":"Hendra dan Intan berada dalam satu tim","B":"Fikri dan Hendra berada dalam satu tim","C":"Dani dan Hendra berada dalam satu tim","D":"Dani dan Intan berada dalam satu tim","E":"Intan berada di Tim 1"}'::jsonb,
  'E',
  '1. Tulis aturan: ① Dani dan Intan tidak boleh satu tim. ② Gina dan Intan harus satu tim. ③ Intan dan Eva tidak boleh satu tim.
2. Tempatkan Gina di Tim 1, lalu isi sisa anggota yang masih sah menurut semua aturan. Ada 2 susunan:
[gambar]
3. Uji tiap opsi (cari yang benar di SEMUA susunan):
A. Intan berada di Tim 1 benar di semua susunan, pasti benar
B. Hendra dan Intan berada dalam satu tim hanya benar di sebagian susunan
C. Dani dan Hendra berada dalam satu tim hanya benar di sebagian susunan
D. Dani dan Intan berada dalam satu tim salah di semua susunan
E. Fikri dan Hendra berada dalam satu tim salah di semua susunan',
  NULL,
  NULL,
  'published'
),
(
  'web',
  310,
  'TIU',
  'Analitis',
  'sedang',
  'Empat orang A, B, C, dan D berlomba lari. A finis sebelum B. C finis setelah B. D finis sebelum A. Siapa yang finis paling akhir?',
  NULL,
  '{"A":"Tidak dapat ditentukan","B":"A","C":"C","D":"B","E":"D"}'::jsonb,
  'C',
  '1. Ubah tiap petunjuk jadi panah urutan (kiri = lebih dulu): A → B, B → C, D → A.
[gambar]
Sambung jadi satu garis: D, A, B, C. Paling akhir: C',
  NULL,
  NULL,
  'published'
),
(
  'web',
  311,
  'TIU',
  'Analitis',
  'sedang',
  'Rina, Sari, dan Tuti memakai baju merah, biru, dan hijau (masing-masing satu warna). Rina tidak memakai merah. Sari tidak memakai biru maupun merah. Siapa yang memakai baju merah?',
  NULL,
  '{"A":"Rina atau Tuti","B":"Sari","C":"Tuti","D":"Tidak dapat ditentukan","E":"Rina"}'::jsonb,
  'C',
  '1. Buat tabel orang × warna. Silang yang dilarang, lalu isi yang tersisa.

| Merah | Biru | Hijau
Rina | ✗ | ✓ | ✗
Sari | ✗ | ✗ | ✓
Tuti | ✓ | ✗ | ✗

Sari tidak merah dan tidak biru, jadi hijau. Rina tidak merah dan hijau sudah terpakai, jadi biru. Sisa merah untuk Tuti.
Yang memakai merah: Tuti',
  NULL,
  NULL,
  'published'
),
(
  'web',
  312,
  'TIU',
  'Analitis',
  'sedang',
  'Tiga laporan X, Y, Z diserahkan berurutan. X sebelum Y. Z tepat setelah X. Y bukan yang pertama. Urutan yang benar...',
  NULL,
  '{"A":"Z, X, Y","B":"X, Y, Z","C":"Y, X, Z","D":"X, Z, Y","E":"Z, Y, X"}'::jsonb,
  'D',
  'Z tepat setelah X berarti X lalu Z, dan Y sesudahnya.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  313,
  'TIU',
  'Analitis',
  'sedang',
  'Jika hujan, rapat ditunda. Rapat tidak ditunda. Kesimpulan yang tepat...',
  NULL,
  '{"A":"Hujan turun","B":"Tidak hujan","C":"Mungkin hujan","D":"Rapat dilaksanakan besok","E":"Tidak ada kesimpulan"}'::jsonb,
  'B',
  'Kontraposisi: bukan ditunda berarti bukan hujan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  314,
  'TIU',
  'Analitis',
  'sedang',
  'Budi lebih tinggi dari Ani. Citra lebih pendek dari Ani. Dedi lebih tinggi dari Budi. Urutan dari tertinggi...',
  NULL,
  '{"A":"Dedi, Budi, Ani, Citra","B":"Budi, Dedi, Ani, Citra","C":"Dedi, Ani, Budi, Citra","D":"Ani, Budi, Dedi, Citra","E":"Dedi, Budi, Citra, Ani"}'::jsonb,
  'A',
  'Dedi > Budi > Ani > Citra.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  315,
  'TIU',
  'Analitis',
  'sedang',
  'Lima rapat A, B, C, D, E satu per hari Senin sampai Jumat. A sebelum C. B tepat sehari setelah A. D pada Jumat. E bukan Senin. Rapat pada hari Selasa adalah...',
  NULL,
  '{"A":"A","B":"B","C":"C","D":"D","E":"E"}'::jsonb,
  'B',
  'Hanya A di Senin dan B di Selasa yang memenuhi semua syarat.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  316,
  'TIU',
  'Analitis',
  'sedang',
  'Lima orang P, Q, R, S, T duduk berjajar. P di ujung kiri, T di ujung kanan. R tepat di sebelah kiri S. Q berada di antara P dan R. Orang yang duduk di tengah (posisi ketiga)...',
  NULL,
  '{"A":"P","B":"Q","C":"R","D":"S","E":"T"}'::jsonb,
  'C',
  'Susunan: P, Q, R, S, T. Posisi ketiga adalah R.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  317,
  'TIU',
  'Analitis',
  'sedang',
  'P, Q, R, S, T diurutkan tinggi badan. P lebih tinggi dari Q, R lebih pendek dari S, Q lebih tinggi dari S, T paling pendek. Urutan terpendek ke-2...',
  NULL,
  '{"A":"P","B":"Q","C":"R","D":"S","E":"T"}'::jsonb,
  'C',
  'Urutan tertinggi: P, Q, S, R, T. Terpendek ke-2 adalah R.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  318,
  'TIU',
  'Analitis',
  'sedang',
  'Lima tamu A-E duduk melingkar. A di sebelah B, C tidak di sebelah A, D di antara C dan E. Siapa duduk di sebelah C selain D?',
  NULL,
  '{"A":"A","B":"B","C":"E","D":"Tidak dapat dipastikan","E":"D"}'::jsonb,
  'B',
  'Urutan melingkar: A, B, C, D, E; tetangga C adalah B dan D.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  319,
  'TIU',
  'Analitis',
  'sedang',
  'P, Q, R, S, T duduk berderet. P di ujung kiri. R tepat di kanan Q. T tepat di kiri Q. S tidak bersebelahan dengan P. Siapa duduk di posisi tengah (ketiga dari kiri)?',
  NULL,
  '{"A":"P","B":"T","C":"Q","D":"R","E":"S"}'::jsonb,
  'C',
  'Blok T-Q-R harus di posisi 2 sampai 4 agar S tidak di samping P, sehingga urutan P, T, Q, R, S.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  320,
  'TIU',
  'Analitis',
  'sedang',
  'Lima petugas (A, B, C, D, E) masing-masing piket satu hari berbeda, Senin sampai Jumat. (1) A piket sebelum B dengan selang paling sedikit satu hari. (2) C piket tepat sehari setelah D. (3) E tidak piket pada hari Senin maupun Jumat. (4) B tidak piket pada hari Jumat. Petugas yang piket pada hari Kamis adalah....',
  NULL,
  '{"A":"A","B":"B","C":"C","D":"D","E":"E"}'::jsonb,
  'D',
  'Bila C tepat setelah D dan B bukan Jumat, uji tiap kemungkinan: A Senin, E Selasa, B Rabu, D Kamis, C Jumat. Hanya susunan ini yang memenuhi semua syarat.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  321,
  'TIU',
  'Analitis',
  'sedang',
  'Enam berkas (P, Q, R, S, T, U) diproses satu per satu secara berurutan. (1) Q diproses sebelum R dengan tepat satu berkas di antara keduanya. (2) R diproses sebelum S. (3) S langsung diikuti oleh T. (4) U diproses sebelum Q. (5) P tidak diproses pertama maupun terakhir. Berkas yang diproses ketiga adalah....',
  NULL,
  '{"A":"P","B":"Q","C":"R","D":"S","E":"U"}'::jsonb,
  'A',
  'U sebelum Q, Q-?-R, R sebelum S-T. Susunannya U, Q, P, R, S, T. Berkas ketiga adalah P.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  322,
  'TIU',
  'Analitis',
  'sedang',
  'Perhatikan tabel anggaran (dalam miliar rupiah) berikut!
Dinas | Pagu 2025 | Realisasi 2025 | Pagu 2026 | Realisasi 2026
A | 80 | 60 | 90 | 72
B | 50 | 45 | 60 | 51
C | 120 | 90 | 140 | 119
D | 40 | 36 | 50 | 35
(1) Dinas B memiliki persentase realisasi terhadap pagu 2026 tertinggi secara tunggal.
(2) Total realisasi keempat dinas pada 2026 lebih dari 80% total pagu 2026.
(3) Kenaikan realisasi Dinas C dari 2025 ke 2026 lebih besar daripada jumlah kenaikan realisasi Dinas A dan Dinas B.
Pernyataan BENAR jika pasti benar menurut informasi yang diberikan; selain itu SALAH.',
  NULL,
  '{"A":"(1) Salah, (2) Salah, (3) Benar","B":"(1) Benar, (2) Salah, (3) Salah","C":"(1) Benar, (2) Salah, (3) Benar","D":"(1) Salah, (2) Benar, (3) Salah","E":"(1) Salah, (2) Benar, (3) Benar"}'::jsonb,
  'E',
  '(1) Salah: B = 85% dan C = 85%, kembar. (2) Benar: 277/340 = 81.5%. (3) Benar: C naik 29, A naik 12 dan B naik 6 (jumlah 18).',
  NULL,
  NULL,
  'published'
),
(
  'web',
  323,
  'TIU',
  'Analitis',
  'sedang',
  'Lima pegawai, yaitu P, Q, R, S, dan T, masing-masing mengambil cuti tepat satu hari berbeda pada Senin sampai Jumat. Q cuti sebelum R. S tidak cuti pada hari Senin maupun Jumat. T cuti tepat sehari setelah P. R tidak cuti pada hari Rabu.
(1) Hari Senin dipakai oleh P atau Q.
(2) R cuti pada hari Jumat.
(3) Hari Jumat dipakai oleh R atau T.
Pernyataan BENAR jika pasti benar menurut informasi yang diberikan; selain itu SALAH.',
  NULL,
  '{"A":"(1) Salah, (2) Salah, (3) Benar","B":"(1) Salah, (2) Benar, (3) Benar","C":"(1) Benar, (2) Salah, (3) Salah","D":"(1) Salah, (2) Benar, (3) Salah","E":"(1) Benar, (2) Salah, (3) Benar"}'::jsonb,
  'E',
  'Ada lima susunan yang memenuhi syarat. (1) Benar: Senin selalu P atau Q. (2) Salah: pada satu susunan R cuti Selasa. (3) Benar: Jumat selalu R atau T.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  324,
  'TIU',
  'Analitis',
  'sedang',
  'Aturan layanan: jika dokumen lengkap maka dokumen diproses; jika dokumen diproses maka nomor registrasi terbit; nomor registrasi terbit hanya jika verifikasi lulus. Dokumen Z tidak mendapat nomor registrasi.
(1) Dokumen Z tidak diproses.
(2) Dokumen Z tidak lengkap.
(3) Verifikasi dokumen Z tidak lulus.
Pernyataan BENAR jika pasti benar menurut informasi yang diberikan; selain itu SALAH.',
  NULL,
  '{"A":"(1) Salah, (2) Salah, (3) Benar","B":"(1) Salah, (2) Benar, (3) Benar","C":"(1) Benar, (2) Salah, (3) Salah","D":"(1) Salah, (2) Benar, (3) Salah","E":"(1) Benar, (2) Benar, (3) Salah"}'::jsonb,
  'E',
  'Tidak ada nomor → tidak diproses (1 benar) → tidak lengkap (2 benar). "Nomor terbit hanya jika verifikasi lulus" berarti nomor → lulus; tidak adanya nomor tidak menentukan hasil verifikasi, jadi (3) salah.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  325,
  'TIU',
  'Analitis',
  'sedang',
  'Perhatikan tabel jumlah pengaduan per kanal berikut!
Kanal | K1 | K2 | K3 | K4
Loket | 120 | 100 | 90 | 80
Aplikasi | 60 | 90 | 130 | 170
Telepon | 40 | 40 | 35 | 30
(1) Selisih pengaduan aplikasi dan loket pada K4 lebih dari tiga kali selisihnya pada K3.
(2) Total pengaduan seluruh kanal tertinggi terjadi pada K4.
(3) Pengaduan lewat telepon menurun pada setiap kuartal.
Pernyataan BENAR jika pasti benar menurut informasi yang diberikan; selain itu SALAH.',
  NULL,
  '{"A":"(1) Salah, (2) Salah, (3) Salah","B":"(1) Benar, (2) Salah, (3) Salah","C":"(1) Benar, (2) Salah, (3) Benar","D":"(1) Salah, (2) Benar, (3) Benar","E":"(1) Salah, (2) Benar, (3) Salah"}'::jsonb,
  'E',
  '(1) Salah: selisih K4 = 90, selisih K3 = 40, tiga kali = 120. (2) Benar: total [220, 230, 255, 280]. (3) Salah: K1 ke K2 tetap 40.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  326,
  'TIU',
  'Analitis',
  'sedang',
  'Empat peserta, yaitu A, B, C, dan D, menempati peringkat 1 sampai 4 tanpa peringkat kembar pada sebuah seleksi. A berperingkat lebih baik daripada B. C tidak berperingkat 1. D berperingkat tepat satu tingkat di bawah A.
(1) A berperingkat 1.
(2) B berperingkat 4.
(3) C berperingkat 2.
Pernyataan BENAR jika pasti benar menurut informasi yang diberikan; selain itu SALAH.',
  NULL,
  '{"A":"(1) Salah, (2) Salah, (3) Salah","B":"(1) Salah, (2) Benar, (3) Benar","C":"(1) Benar, (2) Salah, (3) Benar","D":"(1) Salah, (2) Benar, (3) Salah","E":"(1) Benar, (2) Salah, (3) Salah"}'::jsonb,
  'E',
  'Hanya ada dua susunan: A1-D2-B3-C4 atau A1-D2-C3-B4. (1) Benar. (2) Salah: B bisa peringkat 3. (3) Salah: C selalu peringkat 3 atau 4.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  327,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Sebuah sekolah membagikan susu gratis setiap pagi kepada siswanya. Setelah enam bulan, jumlah siswa yang izin sakit menurun. Guru menilai susu membuat daya tahan tubuh siswa meningkat. Pembagian susu dinilai sebagai sebab menurunnya jumlah siswa yang sakit.
Pernyataan berikut yang MEMPERLEMAH paragraf di atas adalah...',
  NULL,
  '{"A":"Biaya pembelian susu itu ditanggung sepenuhnya oleh komite","B":"Susu itu dibagikan setiap pukul tujuh sebelum pelajaran mulai","C":"Sekolah memperbaiki saluran air bersih pada waktu yang sama","D":"Rasa susu yang dibagikan itu disukai oleh hampir semua siswa","E":"Sekolah lain di kota itu belum membagikan susu secara gratis"}'::jsonb,
  'C',
  'Kesimpulannya susu menyebabkan siswa lebih jarang sakit. Perbaikan saluran air bersih menawarkan penyebab lain, jadi susu tidak lagi bisa disebut satu-satunya sebab. Pilihan lain membahas rasa, jam, sekolah lain, dan biaya.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  328,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Sebuah desa memasang jaring pengaman di sepanjang tepi sungai. Dalam setahun, jumlah anak yang jatuh ke sungai menurun. Perangkat desa menilai jaring menghalangi anak mendekat ke tepi. Pemasangan jaring dinilai berhasil menekan angka kecelakaan anak.
Pernyataan berikut yang MEMPERKUAT paragraf di atas adalah...',
  NULL,
  '{"A":"Desa sebelah tanpa jaring tidak mengalami penurunan serupa","B":"Warga desa merasa lebih tenang setelah jaring itu dipasang","C":"Jaring pengaman itu dipasang bergotong royong oleh warga","D":"Biaya pembelian jaring diambil dari dana desa tahun lalu","E":"Jaring pengaman itu berwarna hijau dan terbuat dari nilon"}'::jsonb,
  'A',
  'Desa sebelah tanpa jaring adalah kelompok pembanding: penurunan tidak terjadi di mana-mana, jadi jaring memang berperan. Pilihan lain tidak menyentuh bukti dan kesimpulan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  329,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Sebuah perusahaan mewajibkan senam pagi 10 menit bagi pegawainya. Tiga bulan kemudian jumlah pegawai yang izin sakit turun 30 persen. Manajer menyimpulkan senam pagi menurunkan angka sakit pegawai.
Pernyataan berikut yang MEMPERLEMAH paragraf di atas adalah...',
  NULL,
  '{"A":"Mayoritas pegawai menyukai senam pagi","B":"Senam dipimpin oleh instruktur profesional","C":"Biaya senam ditanggung perusahaan","D":"Pada periode yang sama perusahaan membagikan vitamin dan memperbaiki ventilasi gedung","E":"Senam pagi dilakukan di halaman kantor"}'::jsonb,
  'D',
  'Vitamin dan ventilasi adalah penyebab lain yang bisa menurunkan angka sakit, jadi senam tidak lagi pasti sebabnya.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  330,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Sebuah kota memperluas jalur sepeda. Setahun kemudian pengguna sepeda untuk berangkat kerja naik 25 persen. Dinas Perhubungan menyimpulkan perluasan jalur sepeda mendorong warga bersepeda ke tempat kerja.
Pernyataan berikut yang MEMPERKUAT paragraf di atas adalah...',
  NULL,
  '{"A":"Harga sepeda turun di kota itu","B":"Banyak warga menyukai olahraga bersepeda","C":"Biaya perluasan jalur berasal dari anggaran daerah","D":"Kenaikan terbesar terjadi di kawasan yang jalurnya diperluas, sedangkan di kawasan tanpa perluasan tidak berubah","E":"Jalur sepeda dibangun oleh kontraktor lokal"}'::jsonb,
  'D',
  'Kawasan tanpa perluasan jalur sebagai pembanding menutup penjelasan lain. Harga sepeda turun justru penyebab lain (melemahkan).',
  NULL,
  NULL,
  'published'
),
(
  'web',
  331,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Survei daring terhadap 200 pembaca sebuah majalah kebugaran menunjukkan 90 persen responden rutin berolahraga. Peneliti menyimpulkan sebagian besar penduduk kota itu rutin berolahraga.
Pernyataan berikut yang MEMPERLEMAH paragraf di atas adalah...',
  NULL,
  '{"A":"Majalah itu terbit tiap bulan","B":"Pertanyaan survei berjumlah sepuluh butir","C":"Responden hanya pembaca majalah kebugaran, bukan wakil seluruh penduduk kota","D":"Peneliti berpengalaman sepuluh tahun","E":"Survei dilakukan selama dua minggu"}'::jsonb,
  'C',
  'Sampel bias: pembaca majalah kebugaran tidak mewakili seluruh penduduk, jadi lompatan ke seluruh kota tidak sah.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  332,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Seorang peneliti menyimpulkan bahwa sebagian besar warga kota menyukai angkutan umum berdasarkan survei terhadap 500 warga.
Pernyataan berikut yang MEMPERKUAT paragraf di atas adalah...',
  NULL,
  '{"A":"Responden dibayar untuk mengisi survei","B":"Survei hanya diisi oleh penumpang kereta","C":"Survei berlangsung satu hari","D":"Survei dilakukan di dua stasiun besar","E":"Responden dipilih secara acak dari seluruh kecamatan di kota"}'::jsonb,
  'E',
  'Sampel acak dari seluruh kecamatan mewakili seluruh warga, jadi kesimpulan lebih kuat. Pilihan lain membuat sampel bias.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  333,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Sebuah kantor mengadakan pelatihan daring bagi pegawainya. Dalam tiga bulan, jumlah laporan yang selesai tepat waktu naik. Kepala kantor menyimpulkan pelatihan daring meningkatkan ketepatan waktu laporan.
Pernyataan berikut yang MEMPERLEMAH paragraf di atas adalah...',
  NULL,
  '{"A":"Pada periode yang sama semua unit memakai aplikasi pelaporan baru yang mempercepat pekerjaan","B":"Pelatihan diumumkan lewat surel kantor","C":"Kantor sebelah tanpa pelatihan ketepatan laporannya tetap","D":"Peserta pelatihan paling banyak menyelesaikan laporan tepat waktu","E":"Pelatihan berlaku untuk semua pegawai"}'::jsonb,
  'A',
  'Aplikasi pelaporan baru adalah penyebab lain. Dua pilihan pertama tepat sasaran tetapi arahnya terbalik: keduanya MEMPERKUAT.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  334,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Pemerintah daerah berencana melarang kendaraan pribadi memasuki pusat kota pada akhir pekan untuk mengurangi kemacetan.
Pernyataan berikut yang MEMPERLEMAH rencana tersebut adalah...',
  NULL,
  '{"A":"Angkutan umum ke pusat kota akan ditambah","B":"Larangan serupa berhasil di kota lain","C":"Sebagian besar kemacetan akhir pekan disebabkan angkutan umum dan kendaraan logistik, bukan kendaraan pribadi","D":"Sebagian warga mendukung larangan itu","E":"Parkir di pusat kota disediakan gratis"}'::jsonb,
  'C',
  'Kalau penyebab kemacetan bukan kendaraan pribadi, larangan tidak menyentuh akar masalah. Angkutan tambahan dan keberhasilan kota lain justru memperkuat.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  335,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Setelah klinik keliling mengunjungi sebuah desa, jumlah warga yang terjangkit demam turun. Kepala puskesmas menyimpulkan klinik keliling menurunkan kasus demam.
Pernyataan berikut yang MEMPERKUAT paragraf di atas adalah...',
  NULL,
  '{"A":"Petugas klinik keliling bersikap ramah","B":"Obat dari klinik keliling diberikan gratis","C":"Di desa tetangga yang tidak dikunjungi klinik keliling, kasus demam tidak berubah pada periode yang sama","D":"Klinik keliling beroperasi sehari dalam seminggu","E":"Warga desa senang dengan klinik keliling"}'::jsonb,
  'C',
  'Desa tetangga tanpa klinik tidak berubah: pembanding yang menutup penjelasan lain.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  336,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Sebuah sekolah mewajibkan siswa membawa bekal dari rumah. Satu semester kemudian nilai rata-rata ujian naik. Kepala sekolah menyimpulkan kewajiban bekal meningkatkan prestasi siswa.
Pernyataan berikut yang MEMPERLEMAH paragraf di atas adalah...',
  NULL,
  '{"A":"Orang tua mendukung kewajiban itu","B":"Siswa membawa bekal dalam kotak makan","C":"Pada semester yang sama sekolah mengganti metode belajar dan menambah jam les","D":"Bekal siswa lebih sehat dibanding jajanan","E":"Sekolah memiliki kantin yang bersih"}'::jsonb,
  'C',
  'Metode belajar baru dan jam les adalah penyebab lain naiknya nilai.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  337,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Pada paragraf argumen empat kalimat (peristiwa, bukti, penilaian pelaku, kesimpulan), kalimat yang wajib dibaca teliti adalah...',
  NULL,
  '{"A":"Bukti dan kesimpulan","B":"Peristiwa dan kesimpulan","C":"Seluruh kalimat sama penting","D":"Peristiwa dan penilaian pelaku","E":"Bukti dan penilaian pelaku"}'::jsonb,
  'A',
  'Cukup baca bukti (kalimat 2) dan kesimpulan (kalimat 4). Peristiwa dan penilaian pelaku bisa dilewati.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  338,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Pilihan jawaban yang benar pada soal memperkuat atau memperlemah harus menyentuh...',
  NULL,
  '{"A":"Biaya pelaksanaan","B":"Peristiwa awal di paragraf","C":"Waktu pelaksanaan","D":"Rasa atau opini pelaku","E":"Jarak antara bukti dan kesimpulan"}'::jsonb,
  'E',
  'Jawaban selalu menyentuh jarak antara bukti dan kesimpulan. Hal lain pasti salah sekalipun benar.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  339,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Jebakan nomor satu pada soal penguatan dan pelemahan argumen adalah...',
  NULL,
  '{"A":"Pilihan yang paling panjang","B":"Pilihan yang berisi angka","C":"Pilihan yang diawali kata namun","D":"Pilihan yang tepat sasaran tetapi arahnya terbalik","E":"Paragraf yang terlalu panjang"}'::jsonb,
  'D',
  'Opsi yang menguatkan padahal diminta melemahkan (atau sebaliknya). Bacalah perintah lebih dulu.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  340,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Pernyataan yang menawarkan penyebab lain terhadap suatu akibat umumnya...',
  NULL,
  '{"A":"Menjadi kesimpulan baru","B":"Tidak berpengaruh sama sekali","C":"Mengulang bukti","D":"Memperlemah kesimpulan sebab-akibat","E":"Memperkuat kesimpulan sebab-akibat"}'::jsonb,
  'D',
  'Penyebab lain membuka celah: akibat bisa aja bukan karena sebab yang disimpulkan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  341,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Pemerintah kota menyediakan bus sekolah gratis untuk mengurangi kemacetan pada jam berangkat sekolah.
Pernyataan berikut yang MEMPERKUAT rencana tersebut adalah...',
  NULL,
  '{"A":"Bus mulai beroperasi pukul enam pagi","B":"Biaya bus ditanggung anggaran daerah","C":"Bus sekolah itu dicat berwarna kuning","D":"Pengemudi bus sudah mengikuti pelatihan","E":"Sebagian besar kemacetan pagi berasal dari mobil pribadi yang mengantar siswa ke sekolah"}'::jsonb,
  'E',
  'Kalau penyebab utama macet adalah mobil pengantar siswa, bus sekolah menyentuh akar masalah. Warna, pelatihan, biaya, dan jam operasi adalah hal lain.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  342,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Sebuah sekolah meluncurkan aplikasi perpustakaan digital. Tiga bulan kemudian jumlah peminjaman buku naik. Kepala perpustakaan menyimpulkan aplikasi itu meningkatkan minat baca siswa.
Pernyataan berikut yang MEMPERLEMAH paragraf di atas adalah...',
  NULL,
  '{"A":"Tampilan aplikasi dinilai menarik","B":"Aplikasi tersedia di ponsel dan komputer","C":"Pada periode yang sama guru mewajibkan siswa membaca buku untuk tugas semua mata pelajaran","D":"Aplikasi itu dapat diunduh gratis","E":"Aplikasi dikembangkan oleh alumni sekolah"}'::jsonb,
  'C',
  'Kewajiban membaca dari guru adalah penyebab lain naiknya peminjaman. Opsi lain tidak menyentuh hubungan aplikasi dengan minat baca.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  343,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Warga yang rutin berolahraga di pusat kebugaran memiliki tingkat stres lebih rendah daripada warga yang tidak. Seorang peneliti menyimpulkan bahwa berolahraga di pusat kebugaran menurunkan stres.
Pernyataan berikut yang MEMPERLEMAH paragraf di atas adalah...',
  NULL,
  '{"A":"Alat di pusat kebugaran itu selalu baru","B":"Pelatih di pusat kebugaran itu bersertifikat","C":"Biaya keanggotaan pusat kebugaran cukup mahal","D":"Orang yang tingkat stresnya rendah cenderung lebih bersemangat dan lebih mudah rutin berolahraga","E":"Pusat kebugaran buka mulai pukul lima pagi"}'::jsonb,
  'D',
  'Arah sebab bisa terbalik: stres rendah membuat orang rutin berolahraga. Ini membuka celah pada kesimpulan sebab-akibat.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  344,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Kota A berhasil menurunkan polusi udara dengan menerapkan sistem ganjil-genap bagi kendaraan pribadi. Dinas lingkungan Kota B menyimpulkan penerapan sistem yang sama akan menurunkan polusi di Kota B.
Pernyataan berikut yang MEMPERLEMAH paragraf di atas adalah...',
  NULL,
  '{"A":"Sumber polusi utama di Kota B adalah asap pabrik, bukan kendaraan pribadi","B":"Kota B memiliki jumlah penduduk yang besar","C":"Kota A dan Kota B sama-sama berada di tepi pantai","D":"Sistem ganjil-genap diumumkan lewat televisi","E":"Warga Kota B menyukai kendaraan pribadi"}'::jsonb,
  'A',
  'Kalau sumber polusi Kota B bukan kendaraan pribadi, kebijakan yang berhasil di Kota A tidak menyentuh masalah di Kota B. Kedua kota berbeda pada hal yang penting.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  345,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Kota A berhasil mengurangi sampah plastik dengan melarang kantong plastik di pasar dan toko. Kota B berencana melarang hal yang sama dan pemerintahnya menyimpulkan rencana itu akan berhasil.
Pernyataan berikut yang MEMPERKUAT paragraf di atas adalah...',
  NULL,
  '{"A":"Wali kota Kota B baru dilantik tahun ini","B":"Kota B lebih luas daripada Kota A","C":"Kota A dan Kota B memiliki jumlah penduduk, pola belanja, dan jenis sampah plastik yang hampir sama","D":"Pasar di Kota B ramai pada akhir pekan","E":"Kota A terletak di pulau yang berbeda"}'::jsonb,
  'C',
  'Kesamaan pada hal yang penting menjembatani lompatan dari Kota A ke Kota B. Analogi menjadi kuat kalau dua hal setara.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  346,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Sebuah produsen minuman menyatakan minumannya menyehatkan karena penelitian menunjukkan konsumennya jarang sakit. Pihak produsen menyimpulkan minuman itu meningkatkan kesehatan.
Pernyataan berikut yang MEMPERLEMAH paragraf di atas adalah...',
  NULL,
  '{"A":"Harga minuman lebih murah daripada pesaing","B":"Kemasan minuman terbuat dari kaca","C":"Minuman itu dijual di seluruh kota","D":"Penelitian itu dibiayai dan dilakukan sendiri oleh produsen tanpa kelompok pembanding","E":"Minuman itu tersedia dalam tiga rasa"}'::jsonb,
  'D',
  'Sumber yang berkepentingan dan tanpa pembanding mempersoalkan cara bukti diambil. Rasa, kemasan, dan harga adalah hal lain.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  347,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Rata-rata nilai ujian sebuah kelas naik dari 70 menjadi 75 setelah guru memakai metode belajar baru. Guru menyimpulkan metode baru meningkatkan kemampuan seluruh siswa di kelas itu.
Pernyataan berikut yang MEMPERLEMAH paragraf di atas adalah...',
  NULL,
  '{"A":"Metode baru dipakai dua kali seminggu","B":"Kenaikan rata-rata hanya berasal dari tiga siswa, sedangkan nilai siswa lain tidak berubah","C":"Ujian dilaksanakan di ruang kelas","D":"Guru memperoleh metode itu dari pelatihan","E":"Siswa senang dengan metode baru"}'::jsonb,
  'B',
  'Kesimpulannya tentang seluruh siswa, tapi cuma tiga siswa yang naik. Bukti tidak mewakili kesimpulan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  348,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Sebuah restoran mengganti piring plastik dengan piring daun. Sebulan kemudian jumlah pelanggan bertambah. Pemilik menyimpulkan piring daun menarik pelanggan baru.
Pernyataan berikut yang MEMPERKUAT paragraf di atas adalah...',
  NULL,
  '{"A":"Pada bulan yang sama restoran memasang iklan besar di jalan utama","B":"Sebagian besar pelanggan baru mengaku datang karena restoran kini ramah lingkungan","C":"Restoran itu berdiri sejak lima tahun lalu","D":"Piring daun lebih murah daripada piring plastik","E":"Pada bulan yang sama restoran sebelah tutup"}'::jsonb,
  'B',
  'Pengakuan pelanggan menghubungkan piring daun dengan kedatangan mereka. Restoran sebelah tutup dan iklan besar adalah penyebab lain, jadi justru MEMPERLEMAH: jebakan arah.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  349,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Desa di tepi sungai akan membangun tanggul untuk mencegah banjir pada musim hujan.
Pernyataan berikut yang MEMPERLEMAH rencana tersebut adalah...',
  NULL,
  '{"A":"Biaya tanggul diambil dari dana desa","B":"Tanggul itu dicat putih","C":"Tanggul dibangun dari beton bertulang","D":"Tanggul itu justru mengalihkan aliran air ke permukiman di hilir","E":"Pembangunan tanggul dilakukan secara gotong royong"}'::jsonb,
  'D',
  'Efek samping yang memindahkan banjir ke tempat lain membuat rencana tidak menyelesaikan masalah. Bahan, pelaksana, warna, dan biaya adalah hal lain.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  350,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Sebuah sekolah berencana menggeser jam masuk menjadi lebih siang untuk mengurangi siswa yang mengantuk di kelas.
Pernyataan berikut yang MEMPERKUAT rencana tersebut adalah...',
  NULL,
  '{"A":"Orang tua siswa bekerja mulai pukul tujuh","B":"Sekolah memiliki lapangan yang luas","C":"Jam pulang sekolah akan diundur satu jam","D":"Guru berangkat lebih pagi daripada siswa","E":"Di sekolah yang lebih dulu menggeser jam masuk, siswa tidur lebih lama dan keluhan mengantuk berkurang"}'::jsonb,
  'E',
  'Bukti dari sekolah serupa menunjukkan solusi menyentuh akar masalah dan berhasil. Opsi lain tidak membahas rasa kantuk.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  351,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Urutan pengerjaan soal memperkuat atau memperlemah argumen yang paling tepat adalah...',
  NULL,
  '{"A":"Hitung jumlah kata tiap pilihan, lalu pilih yang terpanjang","B":"Pilih opsi yang mengulang isi paragraf","C":"Garis bawahi perintah, tandai bukti dan kesimpulan, cari celahnya, lalu uji tiap opsi","D":"Baca semua pilihan, pilih yang terasa benar, lalu baca perintah","E":"Baca paragraf penuh, hafalkan, lalu cocokkan dengan pilihan"}'::jsonb,
  'C',
  'Empat langkah: perintah, bukti dan kesimpulan, celah, terus uji opsi.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  352,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Harga cabai turun setelah pemerintah menggelar operasi pasar. Kepala dinas menyimpulkan operasi pasar menurunkan harga cabai.
Pernyataan berikut yang MEMPERKUAT paragraf di atas adalah...',
  NULL,
  '{"A":"Cabai dijual dalam kemasan satu kilogram","B":"Petugas operasi pasar berseragam","C":"Operasi pasar digelar di lima pasar","D":"Pada periode yang sama pasokan cabai dari petani tidak berubah dan tidak ada panen raya","E":"Operasi pasar digelar setiap hari Sabtu"}'::jsonb,
  'D',
  'Menutup penjelasan lain (pasokan dan panen raya tidak berubah) membuat operasi pasar menjadi penjelasan yang paling mungkin.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  353,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Setelah mengikuti pelatihan khusus, tim A memenangi lomba tahun ini. Pelatih menyimpulkan pelatihan itu membuat tim A lebih unggul.
Pernyataan berikut yang MEMPERLEMAH paragraf di atas adalah...',
  NULL,
  '{"A":"Lomba diadakan di gedung olahraga","B":"Pelatihan dipimpin pelatih nasional","C":"Lawan yang dihadapi tahun ini jauh lebih lemah daripada lawan tahun lalu","D":"Anggota tim A berjumlah lima orang","E":"Pelatihan berlangsung selama dua minggu"}'::jsonb,
  'C',
  'Pembanding tidak setara: kemenangan bisa karena lawan lemah, bukan karena pelatihan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  354,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Mahasiswa yang bekerja paruh waktu rata-rata lulus lebih cepat. Seorang dosen menyimpulkan bahwa bekerja paruh waktu mempercepat kelulusan.
Pernyataan berikut yang MEMPERLEMAH paragraf di atas adalah...',
  NULL,
  '{"A":"Kampus menyediakan lowongan kerja paruh waktu","B":"Pekerjaan paruh waktu umumnya berupa kerja kafe","C":"Mahasiswa bekerja paruh waktu sekitar empat jam sehari","D":"Upah pekerjaan paruh waktu relatif kecil","E":"Mahasiswa dengan kemampuan akademik tinggi lebih mudah mendapat pekerjaan paruh waktu dan memang lulus cepat"}'::jsonb,
  'E',
  'Faktor ketiga (kemampuan akademik) bisa menjelaskan keduanya, jadi bekerja paruh waktu belum tentu penyebab lulus cepat.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  355,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Pada paragraf argumen tentang jaring pengaman di tepi sungai, opsi "Jaring itu berwarna hijau dan terbuat dari nilon" termasuk tipe...',
  NULL,
  '{"A":"Tepat sasaran dan searah","B":"Mengulang isi paragraf","C":"Hal lain yang salah walau benar","D":"Tepat sasaran tetapi arah terbalik","E":"Kesimpulan baru"}'::jsonb,
  'C',
  'Warna dan bahan tidak menyentuh jarak antara bukti dan kesimpulan: hal lain, salah walau benar.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  356,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Setelah tarif parkir di pusat kota dinaikkan, jumlah kendaraan yang masuk turun. Dinas Perhubungan menyimpulkan kenaikan tarif parkir mengurangi kendaraan di pusat kota.
Pernyataan berikut yang MEMPERLEMAH paragraf di atas adalah...',
  NULL,
  '{"A":"Petugas parkir memakai rompi baru","B":"Pada periode yang sama dua jalan utama menuju pusat kota ditutup untuk perbaikan","C":"Tarif parkir dinaikkan mulai awal bulan","D":"Kenaikan tarif diumumkan lewat surat edaran","E":"Lahan parkir di pusat kota luas"}'::jsonb,
  'B',
  'Penutupan jalan adalah penyebab lain turunnya kendaraan. Opsi lain cuma hal teknis yang tidak menyentuh celah.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  357,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Kalimat "Guru menilai susu membuat daya tahan tubuh siswa meningkat" pada soal susu gratis berfungsi sebagai...',
  NULL,
  '{"A":"Dugaan pelaku yang boleh dilewati","B":"Perintah soal","C":"Bukti yang wajib dibaca teliti","D":"Pilihan jawaban","E":"Kesimpulan yang diuji"}'::jsonb,
  'A',
  'Itu penilaian atau dugaan pelaku (kalimat 3), cukup dilewati. Yang dibaca adalah bukti (kalimat 2) dan kesimpulan (kalimat 4).',
  NULL,
  NULL,
  'published'
),
(
  'web',
  358,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Pernyataan yang menunjukkan bahwa bukti diambil dari kelompok yang tidak sebanding dengan kelompok pembanding umumnya...',
  NULL,
  '{"A":"Menjadi kesimpulan baru","B":"Memperlemah kesimpulan","C":"Mengulang bukti","D":"Tidak berpengaruh","E":"Memperkuat kesimpulan"}'::jsonb,
  'B',
  'Bukti tidak sebanding membuka celah, jadi memperlemah. Kelompok pembanding yang sebanding justru memperkuat.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  359,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Setelah CCTV dipasang di Kota X, angka kejahatan turun, sehingga disimpulkan CCTV menurunkan kejahatan. Pernyataan yang paling melemahkan...',
  NULL,
  '{"A":"Warga puas dengan CCTV","B":"Pada periode yang sama jumlah patroli polisi digandakan","C":"CCTV dibeli dari produsen dalam negeri","D":"Biaya CCTV lebih murah dari perkiraan","E":"Kota Y juga memasang CCTV"}'::jsonb,
  'B',
  'Penyebab lain yang bersamaan melemahkan hubungan sebab-akibat.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  360,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Survei di satu sekolah menunjukkan siswa yang sarapan nilainya lebih tinggi, sehingga disimpulkan sarapan meningkatkan nilai. Kelemahan paling mendasar...',
  NULL,
  '{"A":"Faktor lain mungkin memengaruhi keduanya","B":"Menu sarapan setiap siswa tidak dirinci secara lengkap dalam laporan survei tersebut","C":"Survei dilakukan oleh guru yang mengajar di sekolah tersebut sendiri","D":"Sekolah tersebut berada di kota yang cukup besar dan padat penduduk","E":"Nilai siswa tidak diumumkan secara terbuka kepada publik umum"}'::jsonb,
  'A',
  'Korelasi belum tentu sebab-akibat.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  361,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Kota dengan lebih banyak toko es krim juga punya angka tenggelam lebih tinggi, sehingga disimpulkan es krim menyebabkan tenggelam. Kesalahan penalaran yang paling tepat...',
  NULL,
  '{"A":"Menganggap korelasi sebagai sebab tanpa memperhitungkan faktor ketiga seperti cuaca panas","B":"Datanya terlalu sedikit","C":"Es krim tidak berbahaya","D":"Kota tidak dapat dibandingkan","E":"Pejabatnya tidak ahli"}'::jsonb,
  'A',
  'Cuaca panas menaikkan kedua hal tersebut.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  362,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  '"Semua pelatihan digital gagal karena Pak Ali ikut dan nilainya turun." Kelemahan penalaran...',
  NULL,
  '{"A":"Generalisasi dari satu kasus","B":"Datanya terlalu banyak","C":"Pak Ali tidak ahli","D":"Pelatihan murah","E":"Tidak ada kelemahan"}'::jsonb,
  'A',
  'Satu kasus tidak cukup untuk menyimpulkan semua.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  363,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Pegawai yang rutin sarapan berkinerja lebih baik, sehingga disimpulkan sarapan meningkatkan kinerja. Pernyataan yang paling melemahkan...',
  NULL,
  '{"A":"Sebagian pegawai tidak suka sarapan","B":"Pegawai yang sarapan umumnya tidur cukup dan berolahraga, yang juga meningkatkan kinerja","C":"Sarapan harganya murah","D":"Studi hanya dilakukan di satu kota","E":"Sarapan menyehatkan tubuh"}'::jsonb,
  'B',
  'Faktor pengganggu melemahkan klaim sebab-akibat.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  364,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Setelah jam kerja fleksibel diterapkan, produktivitas naik 10%. Pernyataan yang paling menguatkan bahwa kebijakan itulah penyebabnya...',
  NULL,
  '{"A":"Pada periode sama target kerja dilonggarkan","B":"Unit pembanding tanpa jam fleksibel tidak mengalami kenaikan, dengan kondisi lain relatif sama","C":"Pegawai menyukai kebijakan itu","D":"Kebijakan itu populer di instansi lain","E":"Gaji naik dalam jumlah sama"}'::jsonb,
  'B',
  'Kelompok pembanding menguatkan hubungan sebab-akibat.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  365,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  '"Sejak aplikasi X dipakai, antrean di loket turun 30%. Karena itu, aplikasi X adalah penyebab turunnya antrean." Pernyataan yang paling memperlemah kesimpulan tersebut adalah....',
  NULL,
  '{"A":"Pada periode yang sama, jam layanan loket dipersingkat sehingga jumlah pemohon yang dilayani menurun","B":"Pengguna aplikasi X berasal dari berbagai kelompok umur dan tingkat pendidikan","C":"Aplikasi X dinilai mudah digunakan oleh sebagian besar pemohon yang mencobanya","D":"Biaya pengembangan aplikasi X lebih rendah dari anggaran yang telah disediakan","E":"Aplikasi sejenis juga telah dipakai oleh beberapa instansi pelayanan di daerah lain"}'::jsonb,
  'A',
  'Penyebab alternatif (jam layanan dipersingkat) menjelaskan turunnya antrean tanpa aplikasi, sehingga melemahkan klaim sebab-akibat.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  366,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  '"Setelah pelatihan literasi digital diadakan, laporan penipuan daring di daerah kita turun. Maka pelatihan itu menurunkan penipuan daring." Pernyataan yang paling memperkuat kesimpulan tersebut adalah....',
  NULL,
  '{"A":"Di daerah serupa yang tidak mengadakan pelatihan, laporan penipuan daring tidak turun pada periode yang sama","B":"Peserta pelatihan menyatakan puas terhadap materi dan narasumber yang dihadirkan","C":"Jumlah peserta pelatihan melebihi target yang telah ditetapkan oleh panitia","D":"Anggaran pelatihan terserap seluruhnya sesuai rencana kegiatan yang disusun","E":"Pelatihan serupa juga pernah diadakan di beberapa daerah lain oleh instansi berbeda"}'::jsonb,
  'A',
  'Pembanding tanpa pelatihan yang tidak mengalami penurunan mengisolasi pengaruh pelatihan, sehingga paling kuat mendukung sebab-akibat.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  367,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Sebuah kafe kampus memberi diskon kopi setiap Jumat selama satu bulan. Pada periode yang sama, jumlah pengunjung hari Jumat naik 40% dibandingkan rata-rata bulan sebelumnya. Pengelola menyimpulkan bahwa diskon kopi adalah faktor utama yang menyebabkan kenaikan pengunjung.
Manakah informasi berikut yang MELEMAHKAN paragraf di atas?',
  NULL,
  '{"A":"Beberapa pengunjung memesan kopi susu karena dianggap lebih manis.","B":"Diskon kopi itu ditanggung bersama oleh pemasok biji kopi.","C":"Barista kafe memakai seragam baru sejak awal bulan.","D":"Pada bulan yang sama kampus mengadakan ujian akhir sehingga mahasiswa lebih lama berada di area kampus.","E":"Kafe itu memiliki dua puluh meja dengan kursi kayu."}'::jsonb,
  'D',
  'Ujian akhir adalah penyebab lain kenaikan pengunjung, jadi diskon tidak lagi menjadi satu-satunya penyebab. Pilihan lain tidak menyentuh hubungan diskon dan jumlah pengunjung.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  368,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Sebuah perpustakaan sekolah memperpanjang jam buka hingga pukul empat sore. Satu bulan kemudian, jumlah siswa peminjam buku naik 30%. Kepala perpustakaan menyimpulkan bahwa perpanjangan jam buka menyebabkan naiknya jumlah peminjam.
Manakah informasi berikut yang MEMPERKUAT paragraf di atas?',
  NULL,
  '{"A":"Petugas perpustakaan mengenakan seragam batik setiap Jumat.","B":"Perpustakaan itu memiliki rak buku berwarna cokelat tua.","C":"Perpanjangan jam buka diumumkan melalui papan pengumuman.","D":"Sebagian siswa menyukai buku cerita bergambar.","E":"Perpustakaan di sekolah lain yang jam bukanya tidak berubah tidak mengalami kenaikan peminjam pada bulan yang sama."}'::jsonb,
  'E',
  'Sekolah pembanding tanpa perpanjangan jam buka tidak mengalami kenaikan, sehingga perpanjangan jam memang berperan. Pilihan lain tidak menyentuh hubungan jam buka dan jumlah peminjam.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  369,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Sebuah kelurahan memasang lampu jalan di seluruh gang. Tiga bulan kemudian, laporan pencurian turun 50%. Lurah menyimpulkan bahwa pemasangan lampu jalan adalah penyebab utama turunnya pencurian.
Manakah informasi berikut yang MELEMAHKAN paragraf di atas?',
  NULL,
  '{"A":"Sebagian warga merasa lebih tenang saat berjalan malam hari.","B":"Lampu jalan yang dipasang berwarna putih kekuningan.","C":"Pemasangan lampu dikerjakan oleh tenaga warga setempat.","D":"Biaya listrik lampu jalan dibayar dari kas kelurahan.","E":"Pada waktu yang sama kepolisian menambah patroli malam di kelurahan itu."}'::jsonb,
  'E',
  'Patroli tambahan adalah penyebab lain turunnya pencurian, sehingga peran lampu jalan melemah. Pilihan lain tidak berkaitan dengan sebab turunnya pencurian.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  370,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Sebuah puskesmas mengadakan penyuluhan cuci tangan di sebuah desa. Tiga bulan kemudian, kasus diare pada balita di desa itu turun 40%. Kepala puskesmas menyimpulkan bahwa penyuluhan cuci tangan menyebabkan turunnya kasus diare.
Manakah informasi berikut yang MEMPERKUAT paragraf di atas?',
  NULL,
  '{"A":"Puskesmas itu memiliki empat ruang pemeriksaan.","B":"Di desa sebelah dengan kondisi air dan musim yang sama tetapi tanpa penyuluhan, kasus diare balita tidak turun.","C":"Sebagian ibu mencatat materi penyuluhan di buku kecil.","D":"Penyuluh membawa poster dengan gambar tangan berbusa.","E":"Penyuluhan dilaksanakan di balai desa pada pagi hari."}'::jsonb,
  'B',
  'Desa pembanding tanpa penyuluhan dengan kondisi sama tidak mengalami penurunan, sehingga penyuluhan memang berperan. Pilihan lain tidak menyentuh sebab turunnya diare.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  371,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Sebuah sekolah menerapkan aplikasi belajar daring bagi siswa kelas IX. Satu semester kemudian, nilai rata-rata matematika naik 12 poin. Kepala sekolah menyimpulkan bahwa aplikasi belajar adalah faktor utama yang menaikkan nilai tersebut.
Manakah informasi berikut yang MELEMAHKAN paragraf di atas?',
  NULL,
  '{"A":"Aplikasi itu dikembangkan oleh perusahaan lokal.","B":"Pada semester yang sama guru memberikan jam pelajaran tambahan gratis setiap sore bagi seluruh siswa kelas IX.","C":"Sekolah membeli lisensi aplikasi dengan harga paket tahunan.","D":"Sebagian siswa mengaku tampilan aplikasi cukup menarik.","E":"Aplikasi belajar itu dapat dibuka melalui telepon genggam."}'::jsonb,
  'B',
  'Jam pelajaran tambahan menawarkan penyebab lain naiknya nilai, sehingga aplikasi bukan satu-satunya penyebab. Pilihan lain hanya membahas aplikasi tanpa menyentuh sebab kenaikan nilai.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  372,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Sebuah pabrik menyelenggarakan pelatihan keselamatan kerja bagi pekerjanya. Enam bulan kemudian, jumlah kecelakaan kerja turun 35%. Manajer menyimpulkan bahwa pelatihan keselamatan kerja menyebabkan turunnya kecelakaan kerja.
Manakah informasi berikut yang MEMPERKUAT paragraf di atas?',
  NULL,
  '{"A":"Pekerja menerima sertifikat setelah mengikuti pelatihan.","B":"Selama periode itu jumlah pekerja, jam kerja, dan jenis mesin yang dipakai tidak berubah dari sebelumnya.","C":"Pelatihan diselenggarakan di aula pabrik selama dua hari.","D":"Pabrik itu memproduksi suku cadang kendaraan.","E":"Instruktur pelatihan berasal dari lembaga di ibu kota."}'::jsonb,
  'B',
  'Kondisi lain yang tidak berubah menutup penjelasan alternatif, sehingga turunnya kecelakaan lebih mungkin karena pelatihan. Pilihan lain tidak menyentuh hubungan pelatihan dan kecelakaan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  373,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Dinas kesehatan membagikan kelambu gratis kepada seluruh warga sebuah kecamatan. Enam bulan kemudian, jumlah kasus malaria turun 45%. Dinas menyimpulkan bahwa pembagian kelambu adalah penyebab utama turunnya kasus malaria.
Manakah informasi berikut yang MELEMAHKAN paragraf di atas?',
  NULL,
  '{"A":"Kelambu yang dibagikan berukuran untuk dua orang dewasa.","B":"Sebagian warga menyimpan kelambu itu di lemari saat siang hari.","C":"Kelambu itu dibeli dari produsen dalam negeri.","D":"Pada periode yang sama musim kemarau panjang membuat populasi nyamuk di seluruh wilayah itu menurun drastis.","E":"Pembagian kelambu dilakukan di balai kecamatan."}'::jsonb,
  'D',
  'Turunnya populasi nyamuk akibat kemarau adalah penyebab lain turunnya malaria, sehingga peran kelambu melemah. Pilihan lain tidak berkaitan dengan sebab turunnya kasus.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  374,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Sebuah kota menerapkan hari tanpa kendaraan bermotor setiap Minggu pagi. Empat bulan kemudian, kadar polusi udara di pusat kota turun 20%. Pemerintah kota menyimpulkan bahwa hari tanpa kendaraan menyebabkan turunnya polusi udara.
Manakah informasi berikut yang MEMPERKUAT paragraf di atas?',
  NULL,
  '{"A":"Pemerintah kota memasang spanduk di sepuluh titik jalan.","B":"Banyak warga berolahraga di jalan pada Minggu pagi.","C":"Hari tanpa kendaraan diadakan di sepanjang jalan utama kota.","D":"Kota tetangga dengan ukuran dan musim yang sama tetapi tanpa program itu tidak mengalami penurunan polusi.","E":"Kota itu memiliki dua stasiun pengukur kualitas udara."}'::jsonb,
  'D',
  'Kota pembanding tanpa program tidak mengalami penurunan, sehingga program memang berperan. Pilihan lain tidak menyentuh hubungan program dan turunnya polusi.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  375,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Sebuah toko daring memberlakukan gratis ongkos kirim selama dua minggu. Pada periode itu, penjualan naik 35% dibandingkan dua minggu sebelumnya. Manajer menyimpulkan bahwa gratis ongkos kirim adalah penyebab utama kenaikan penjualan.
Manakah informasi berikut yang MELEMAHKAN paragraf di atas?',
  NULL,
  '{"A":"Gratis ongkos kirim diumumkan lewat media sosial toko.","B":"Pada waktu yang sama toko ikut serta dalam festival belanja nasional yang diiklankan secara luas.","C":"Toko memiliki gudang berukuran cukup besar di pinggir kota.","D":"Biaya ongkos kirim ditanggung toko dari margin penjualan.","E":"Sebagian pembeli memilih pengiriman reguler yang lebih lambat."}'::jsonb,
  'B',
  'Festival belanja nasional adalah penyebab lain naiknya penjualan, sehingga gratis ongkos kirim tidak lagi menjadi satu-satunya sebab. Pilihan lain tidak menyentuh sebab kenaikan penjualan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  376,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Seorang guru menerapkan metode belajar berbasis proyek di kelasnya. Satu semester kemudian, nilai praktik siswa kelas itu naik 15 poin. Guru menyimpulkan bahwa metode berbasis proyek menyebabkan naiknya nilai praktik.
Manakah informasi berikut yang MEMPERKUAT paragraf di atas?',
  NULL,
  '{"A":"Kelas paralel dengan kemampuan awal setara yang diajar tanpa metode berbasis proyek nilai praktiknya tidak naik.","B":"Hasil proyek dipajang di ruang kelas.","C":"Guru itu telah mengajar di sekolah tersebut selama lima tahun.","D":"Proyek dikerjakan siswa secara berkelompok setiap bulan.","E":"Sebagian siswa mengaku proyek itu menyenangkan."}'::jsonb,
  'A',
  'Kelas pembanding dengan kemampuan awal setara tanpa metode proyek tidak naik, sehingga metode memang berperan. Pilihan lain tidak menyentuh hubungan metode dan nilai.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  377,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Sebuah kantor menerapkan jam kerja fleksibel bagi seluruh pegawai. Tiga bulan kemudian, jumlah keterlambatan pegawai turun 60%. Bagian kepegawaian menyimpulkan bahwa jam kerja fleksibel adalah penyebab utama turunnya keterlambatan.
Manakah informasi berikut yang MELEMAHKAN paragraf di atas?',
  NULL,
  '{"A":"Kantor itu terdiri dari empat lantai dan satu aula.","B":"Jam kerja fleksibel diatur melalui surat edaran pimpinan.","C":"Pada bulan yang sama jalan tol baru dibuka sehingga waktu tempuh pegawai ke kantor menjadi jauh lebih singkat.","D":"Sebagian pegawai memilih tetap masuk pada jam yang sama.","E":"Absensi pegawai dicatat melalui mesin sidik jari."}'::jsonb,
  'C',
  'Jalan tol baru adalah penyebab lain berkurangnya keterlambatan, sehingga jam fleksibel tidak lagi menjadi satu-satunya sebab. Pilihan lain tidak menyentuh sebab turunnya keterlambatan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  378,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Sebuah koperasi memperkenalkan aplikasi pembayaran digital kepada anggotanya. Tiga bulan kemudian, jumlah transaksi anggota naik 50%. Pengurus menyimpulkan bahwa aplikasi pembayaran digital menyebabkan naiknya jumlah transaksi.
Manakah informasi berikut yang MEMPERKUAT paragraf di atas?',
  NULL,
  '{"A":"Logo aplikasi berwarna biru muda dan putih.","B":"Aplikasi itu dapat diunduh secara gratis oleh anggota.","C":"Koperasi itu memiliki seratus lima puluh anggota aktif.","D":"Pengurus memasang tulisan promosi di kantor koperasi.","E":"Anggota yang tidak memakai aplikasi itu tidak mengalami kenaikan transaksi pada periode yang sama."}'::jsonb,
  'E',
  'Anggota pembanding yang tidak memakai aplikasi tidak mengalami kenaikan, sehingga aplikasi memang berperan. Pilihan lain tidak menyentuh hubungan aplikasi dan transaksi.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  379,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Seorang petani memakai pupuk organik merek baru pada sawahnya. Pada musim panen berikutnya, hasil panen naik 20%. Petani menyimpulkan bahwa pupuk organik merek baru adalah penyebab utama naiknya hasil panen.
Manakah informasi berikut yang MELEMAHKAN paragraf di atas?',
  NULL,
  '{"A":"Pupuk organik itu dijual dalam kemasan karung lima puluh kilogram.","B":"Petani membeli pupuk dari koperasi desa.","C":"Petani lain di desa itu kurang mengenal merek tersebut.","D":"Pupuk itu ditebar pada pagi hari sebelum jam delapan.","E":"Curah hujan musim itu lebih baik dari biasanya, dan sawah tetangga yang memakai pupuk lama juga panen lebih banyak."}'::jsonb,
  'E',
  'Curah hujan yang baik dan panen tetangga yang juga naik menunjukkan penyebab lain, sehingga pupuk tidak lagi menjadi satu-satunya sebab. Pilihan lain tidak menyentuh sebab naiknya hasil panen.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  380,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Seorang peternak memberi pakan fermentasi pada sapi-sapinya. Dua bulan kemudian, bobot rata-rata sapi naik 18 kilogram. Peternak menyimpulkan bahwa pakan fermentasi menyebabkan naiknya bobot sapi.
Manakah informasi berikut yang MEMPERKUAT paragraf di atas?',
  NULL,
  '{"A":"Pakan fermentasi dibuat dari campuran dedak dan jerami.","B":"Peternak memberi pakan dua kali sehari.","C":"Sapi-sapi lain di kandang yang sama tetapi tetap diberi pakan lama tidak mengalami kenaikan bobot yang berarti.","D":"Peternak membeli sapi dari pasar hewan di kecamatan.","E":"Kandang sapi itu terletak di dekat sawah."}'::jsonb,
  'C',
  'Sapi pembanding di kandang yang sama dengan pakan lama tidak naik bobotnya, sehingga pakan fermentasi memang berperan. Pilihan lain tidak menyentuh hubungan pakan dan bobot.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  381,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Sebuah restoran mengganti seluruh daftar menunya. Dua bulan kemudian, ulasan positif pelanggan naik dua kali lipat. Pemilik restoran menyimpulkan bahwa menu baru adalah penyebab utama naiknya ulasan positif.
Manakah informasi berikut yang MELEMAHKAN paragraf di atas?',
  NULL,
  '{"A":"Menu baru dicetak pada kertas bertekstur dengan gambar berwarna.","B":"Sebagian pelanggan memesan menu yang sama seperti sebelumnya.","C":"Harga menu baru tertera dalam satuan ribu rupiah.","D":"Pada waktu yang sama restoran mengganti seluruh koki dan pelayan dengan tim yang lebih berpengalaman.","E":"Restoran itu buka setiap hari sejak pukul sepuluh pagi."}'::jsonb,
  'D',
  'Pergantian koki dan pelayan adalah penyebab lain naiknya ulasan positif, sehingga menu baru bukan satu-satunya sebab. Pilihan lain tidak menyentuh sebab naiknya ulasan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  382,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Sebuah kelurahan menjalankan program pemilahan sampah rumah tangga. Enam bulan kemudian, volume sampah yang dikirim ke tempat pembuangan akhir turun 25%. Lurah menyimpulkan bahwa program pemilahan sampah menyebabkan turunnya volume sampah.
Manakah informasi berikut yang MEMPERKUAT paragraf di atas?',
  NULL,
  '{"A":"Program itu diumumkan melalui pengeras suara masjid.","B":"Selama periode itu jumlah penduduk dan kegiatan ekonomi di kelurahan tersebut tidak berubah.","C":"Tempat sampah pilah dicat dengan tiga warna berbeda.","D":"Petugas kebersihan mengangkut sampah setiap pagi.","E":"Sebagian warga menyukai kegiatan kerja bakti bulanan."}'::jsonb,
  'B',
  'Jumlah penduduk dan kegiatan ekonomi yang tidak berubah menutup penjelasan alternatif, sehingga turunnya sampah lebih mungkin karena program. Pilihan lain tidak menyentuh hubungan program dan volume sampah.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  383,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Sebuah taman kota menambah dua wahana permainan baru. Satu bulan kemudian, jumlah pengunjung naik 70% dibanding bulan sebelumnya. Pengelola menyimpulkan bahwa wahana baru adalah penyebab utama naiknya jumlah pengunjung.
Manakah informasi berikut yang MELEMAHKAN paragraf di atas?',
  NULL,
  '{"A":"Tiket masuk taman dijual melalui loket di pintu utama.","B":"Dua wahana baru dibeli dari pemasok luar kota.","C":"Bulan tersebut bertepatan dengan libur sekolah panjang sehingga banyak keluarga mencari tempat rekreasi.","D":"Taman itu memiliki area parkir yang cukup luas.","E":"Wahana baru dicat dengan warna-warna cerah."}'::jsonb,
  'C',
  'Libur sekolah panjang adalah penyebab lain naiknya pengunjung, sehingga wahana baru tidak lagi menjadi satu-satunya sebab. Pilihan lain tidak berkaitan dengan sebab naiknya pengunjung.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  384,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Sebuah sekolah membentuk klub membaca yang rutin bertemu seminggu sekali. Satu semester kemudian, skor literasi anggota klub naik 20 poin. Kepala sekolah menyimpulkan bahwa kegiatan klub membaca menyebabkan naiknya skor literasi.
Manakah informasi berikut yang MEMPERKUAT paragraf di atas?',
  NULL,
  '{"A":"Klub membaca bertemu di ruang perpustakaan setiap Kamis.","B":"Sebagian anggota klub berasal dari kelas yang sama.","C":"Anggota klub mendapat gelang bertuliskan nama klub.","D":"Siswa yang tidak ikut klub dengan kemampuan awal yang setara skor literasinya tidak naik.","E":"Pembina klub adalah guru bahasa Indonesia."}'::jsonb,
  'D',
  'Siswa pembanding dengan kemampuan awal setara yang tidak ikut klub tidak naik skornya, sehingga klub memang berperan. Pilihan lain tidak menyentuh hubungan klub dan skor literasi.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  385,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Sebuah dinas meluncurkan aplikasi pengaduan layanan. Tiga bulan kemudian, jumlah keluhan yang masuk turun 40%. Kepala dinas menyimpulkan bahwa aplikasi itu meningkatkan kualitas layanan.
Manakah informasi berikut yang MELEMAHKAN kesimpulan di atas?',
  NULL,
  '{"A":"Aplikasi dikembangkan oleh vendor lokal melalui pengadaan terbuka.","B":"Pengaduan lewat loket dan telepon dihentikan, dan pengaduan di aplikasi mewajibkan pengisian formulir panjang yang membuat banyak warga mengurungkan niat.","C":"Jumlah pengunduh aplikasi pada bulan pertama melampaui target.","D":"Aplikasi tersedia di sistem Android dan iOS.","E":"Sebagian pegawai dilatih menggunakan aplikasi sebelum diluncurkan."}'::jsonb,
  'B',
  'Keluhan turun bisa karena warga sulit mengadu, bukan karena layanan membaik. Opsi lain tidak berhubungan dengan sebab turunnya keluhan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  386,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Sebuah SMA melarang penggunaan ponsel selama jam pelajaran. Satu semester kemudian, rata-rata nilai ujian siswa naik 8 poin. Kepala sekolah menyimpulkan bahwa larangan ponsel menyebabkan naiknya nilai.
Manakah informasi berikut yang MEMPERKUAT kesimpulan di atas?',
  NULL,
  '{"A":"Larangan diumumkan melalui surat edaran kepada orang tua.","B":"Sekolah lain yang setara dan tidak memberlakukan larangan, pada periode yang sama, nilai ujian siswanya tidak berubah berarti.","C":"Sebagian guru mengaku lebih nyaman mengajar.","D":"Siswa menyimpan ponselnya di loker yang disediakan sekolah.","E":"Nilai ujian tahun lalu juga dicatat dalam laporan kepala sekolah."}'::jsonb,
  'B',
  'Pembanding tanpa perlakuan yang tidak berubah menyingkirkan penjelasan lain, sehingga memperkuat hubungan sebab-akibat.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  387,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Sebuah kota menambah jumlah patroli polisi di jalan raya. Enam bulan kemudian, kasus kejahatan jalanan turun 25%. Wali kota menyimpulkan bahwa penambahan patroli menyebabkan turunnya kejahatan.
Manakah informasi berikut yang MELEMAHKAN kesimpulan di atas?',
  NULL,
  '{"A":"Penurunan kejahatan sudah berlangsung sejak sebelum patroli ditambah dan terjadi pula di kota tetangga yang tidak menambah patroli.","B":"Patroli tambahan dilakukan pada malam hari.","C":"Anggaran patroli bersumber dari pendapatan asli daerah.","D":"Polisi yang bertugas telah mengikuti pelatihan khusus.","E":"Warga menyambut baik penambahan patroli."}'::jsonb,
  'A',
  'Tren turun yang sudah ada sebelumnya dan terjadi juga tanpa perlakuan menunjukkan penyebab lain.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  388,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Hasil pemantauan menunjukkan pegawai yang rutin mengikuti pelatihan daring memiliki skor kinerja lebih tinggi daripada yang jarang mengikuti. Manajer menyimpulkan bahwa pelatihan daring meningkatkan kinerja.
Manakah informasi berikut yang MEMPERKUAT kesimpulan di atas?',
  NULL,
  '{"A":"Pelatihan daring tersedia selama dua puluh empat jam.","B":"Pegawai berkinerja tinggi lebih sering diberi izin mengikuti pelatihan.","C":"Pada kelompok pegawai yang skor kinerja awalnya sama, yang dipilih acak untuk ikut pelatihan skornya naik lebih tinggi daripada yang tidak ikut.","D":"Pelatihan daring diselenggarakan oleh lembaga yang sudah terakreditasi.","E":"Sebagian besar pegawai mengikuti pelatihan di luar jam kerja."}'::jsonb,
  'C',
  'Penugasan acak pada kelompok yang setara awalnya memisahkan efek pelatihan; opsi 2 justru menunjukkan kemungkinan sebab terbalik.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  389,
  'TIU',
  'Logika & Penalaran',
  'sedang',
  'Sebuah dinas perhubungan mengganti bahan bakar armada bus menjadi biodiesel. Setahun kemudian, total emisi karbon armada turun 12%. Dinas menyimpulkan bahwa penggantian bahan bakar adalah penyebab turunnya emisi.
Manakah informasi berikut yang MELEMAHKAN kesimpulan di atas?',
  NULL,
  '{"A":"Biodiesel dipasok oleh badan usaha milik negara.","B":"Pada tahun yang sama beberapa trayek ditutup sehingga total jarak tempuh armada berkurang sekitar 15%.","C":"Bus yang dipakai berkapasitas lima puluh penumpang.","D":"Pengemudi mendapat pelatihan mengemudi hemat energi.","E":"Biodiesel yang digunakan berasal dari kelapa sawit."}'::jsonb,
  'B',
  'Berkurangnya jarak tempuh sendiri dapat menurunkan emisi lebih besar daripada 12%, sehingga bahan bakar belum tentu penyebabnya. Pelatihan hemat energi (opsi 4) mengusulkan penyebab lain tetapi tanpa besaran, jadi paling lemah dibanding opsi 2.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  390,
  'TIU',
  'Berhitung',
  'sedang',
  'Hasil dari 25% x 360 + 3/4 x 80 adalah...',
  NULL,
  '{"A":"140","B":"150","C":"160","D":"170","E":"180"}'::jsonb,
  'B',
  '25% x 360 = 90 dan 3/4 x 80 = 60. Jumlahnya 150.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  391,
  'TIU',
  'Berhitung',
  'sedang',
  'Hasil dari 48 × 25 adalah...',
  NULL,
  '{"A":"1.000","B":"1.100","C":"1.150","D":"1.200","E":"1.250"}'::jsonb,
  'D',
  'Kali 25 = bagi 4 terus kali 100: 48 ÷ 4 = 12, terus 12 × 100 = 1.200.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  392,
  'TIU',
  'Berhitung',
  'sedang',
  'Hasil dari 3/4 ÷ 3/8 adalah...',
  NULL,
  '{"A":"1/2","B":"1","C":"3/2","D":"2","E":"9/32"}'::jsonb,
  'D',
  'Bagi pecahan = kali kebalikan: 3/4 × 8/3 = 2.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  393,
  'TIU',
  'Berhitung',
  'sedang',
  'Angka satuan dari 7¹³ adalah...',
  NULL,
  '{"A":"1","B":"3","C":"5","D":"7","E":"9"}'::jsonb,
  'D',
  'Satuan pangkat 7 berpola 7, 9, 3, 1 (ulang tiap 4). 13 dibagi 4 bersisa 1, jadi satuannya 7.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  394,
  'TIU',
  'Berhitung',
  'sedang',
  'Nilai dari 8 + 6 × 3² ÷ 2 adalah...',
  NULL,
  '{"A":"27","B":"35","C":"63","D":"72","E":"81"}'::jsonb,
  'B',
  'Pangkat dulu: 3² = 9. Terus 6 × 9 ÷ 2 = 27. Terakhir 8 + 27 = 35.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  395,
  'TIU',
  'Berhitung',
  'sedang',
  'Hasil dari 37 × 99 adalah...',
  NULL,
  '{"A":"3.553","B":"3.563","C":"3.663","D":"3.673","E":"3.700"}'::jsonb,
  'C',
  'Kali 99 = kali 100 dikurangi satu kali: 3.700 − 37 = 3.663.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  396,
  'TIU',
  'Berhitung',
  'sedang',
  'Pasangan pembagian yang menunjukkan nilai yang sama adalah...',
  NULL,
  '{"A":"135 ÷ 225 sama dengan 180 ÷ 300","B":"180 ÷ 270 sama dengan 210 ÷ 300","C":"144 ÷ 216 sama dengan 160 ÷ 250","D":"160 ÷ 240 sama dengan 200 ÷ 280","E":"175 ÷ 250 sama dengan 210 ÷ 280"}'::jsonb,
  'A',
  'Coretan cepat Sederhanakan tiap pembagian, lalu bandingkan bentuk paling sederhananya
A. 144 ÷ 216 = 2/3 dan 160 ÷ 250 = 16/25 beda
B. 160 ÷ 240 = 2/3 dan 200 ÷ 280 = 5/7 beda
C. 180 ÷ 270 = 2/3 dan 210 ÷ 300 = 7/10 beda
D. 135 ÷ 225 = 3/5 dan 180 ÷ 300 = 3/5 → sama
E. 175 ÷ 250 = 7/10 dan 210 ÷ 280 = 3/4 beda
Cek kali silang: 135 × 300 = 40.500 dan 225 × 180 = 40.500 ✓
Cocok di satu sisi belum cukup: dua-duanya harus sama setelah disederhanakan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  397,
  'TIU',
  'Berhitung',
  'sedang',
  'Pasangan pembagian yang menunjukkan nilai yang sama adalah...',
  NULL,
  '{"A":"120 ÷ 150 sama dengan 144 ÷ 175","B":"56 ÷ 72 sama dengan 49 ÷ 63","C":"84 ÷ 126 sama dengan 90 ÷ 140","D":"96 ÷ 144 sama dengan 105 ÷ 150","E":"90 ÷ 210 sama dengan 120 ÷ 270"}'::jsonb,
  'B',
  'Coretan cepat Sederhanakan tiap pembagian, lalu bandingkan bentuk paling sederhananya
A. 84 ÷ 126 = 2/3 dan 90 ÷ 140 = 9/14 beda
B. 96 ÷ 144 = 2/3 dan 105 ÷ 150 = 7/10 beda
C. 56 ÷ 72 = 7/9 dan 49 ÷ 63 = 7/9 → sama
D. 120 ÷ 150 = 4/5 dan 144 ÷ 175 = 144/175 beda
E. 90 ÷ 210 = 3/7 dan 120 ÷ 270 = 4/9 beda
Cek kali silang: 56 × 63 = 3.528 dan 72 × 49 = 3.528 ✓
Cocok di satu sisi belum cukup: dua-duanya harus sama setelah disederhanakan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  398,
  'TIU',
  'Berhitung',
  'sedang',
  'Pasangan pembagian yang menunjukkan nilai yang sama adalah...',
  NULL,
  '{"A":"126 ÷ 210 sama dengan 150 ÷ 260","B":"108 ÷ 162 sama dengan 120 ÷ 175","C":"63 ÷ 84 sama dengan 80 ÷ 100","D":"75 ÷ 125 sama dengan 96 ÷ 160","E":"54 ÷ 90 sama dengan 72 ÷ 130"}'::jsonb,
  'D',
  'Coretan cepat Sederhanakan tiap pembagian, lalu bandingkan bentuk paling sederhananya
A. 63 ÷ 84 = 3/4 dan 80 ÷ 100 = 4/5 beda
B. 75 ÷ 125 = 3/5 dan 96 ÷ 160 = 3/5 → sama
C. 108 ÷ 162 = 2/3 dan 120 ÷ 175 = 24/35 beda
D. 126 ÷ 210 = 3/5 dan 150 ÷ 260 = 15/26 beda
E. 54 ÷ 90 = 3/5 dan 72 ÷ 130 = 36/65 beda
Cek kali silang: 75 × 160 = 12.000 dan 125 × 96 = 12.000 ✓
Cocok di satu sisi belum cukup: dua-duanya harus sama setelah disederhanakan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  399,
  'TIU',
  'Berhitung',
  'sedang',
  'Pasangan pembagian yang menunjukkan nilai yang sama adalah...',
  NULL,
  '{"A":"96 ÷ 128 sama dengan 135 ÷ 190","B":"105 ÷ 175 sama dengan 90 ÷ 140","C":"132 ÷ 198 sama dengan 140 ÷ 200","D":"225 ÷ 375 sama dengan 150 ÷ 260","E":"144 ÷ 180 sama dengan 168 ÷ 210"}'::jsonb,
  'E',
  'Coretan cepat Sederhanakan tiap pembagian, lalu bandingkan bentuk paling sederhananya
A. 132 ÷ 198 = 2/3 dan 140 ÷ 200 = 7/10 beda
B. 225 ÷ 375 = 3/5 dan 150 ÷ 260 = 15/26 beda
C. 105 ÷ 175 = 3/5 dan 90 ÷ 140 = 9/14 beda
D. 96 ÷ 128 = 3/4 dan 135 ÷ 190 = 27/38 beda
E. 144 ÷ 180 = 4/5 dan 168 ÷ 210 = 4/5 → sama
Cek kali silang: 144 × 210 = 30.240 dan 180 × 168 = 30.240 ✓
Cocok di satu sisi belum cukup: dua-duanya harus sama setelah disederhanakan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  400,
  'TIU',
  'Berhitung',
  'sedang',
  'Pasangan pembagian yang menunjukkan nilai yang sama adalah...',
  NULL,
  '{"A":"88 ÷ 121 sama dengan 96 ÷ 140","B":"150 ÷ 225 sama dengan 120 ÷ 200","C":"126 ÷ 189 sama dengan 160 ÷ 240","D":"91 ÷ 130 sama dengan 77 ÷ 105","E":"204 ÷ 255 sama dengan 160 ÷ 210"}'::jsonb,
  'C',
  'Coretan cepat Sederhanakan tiap pembagian, lalu bandingkan bentuk paling sederhananya
A. 126 ÷ 189 = 2/3 dan 160 ÷ 240 = 2/3 → sama
B. 91 ÷ 130 = 7/10 dan 77 ÷ 105 = 11/15 beda
C. 150 ÷ 225 = 2/3 dan 120 ÷ 200 = 3/5 beda
D. 88 ÷ 121 = 8/11 dan 96 ÷ 140 = 24/35 beda
E. 204 ÷ 255 = 4/5 dan 160 ÷ 210 = 16/21 beda
Cek kali silang: 126 × 240 = 30.240 dan 189 × 160 = 30.240 ✓
Cocok di satu sisi belum cukup: dua-duanya harus sama setelah disederhanakan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  401,
  'TIU',
  'Berhitung',
  'sedang',
  'Pasangan pembagian yang menunjukkan nilai yang sama adalah...',
  NULL,
  '{"A":"136 ÷ 170 sama dengan 120 ÷ 160","B":"98 ÷ 126 sama dengan 63 ÷ 81","C":"110 ÷ 165 sama dengan 120 ÷ 170","D":"84 ÷ 140 sama dengan 105 ÷ 165","E":"250 ÷ 350 sama dengan 180 ÷ 270"}'::jsonb,
  'B',
  'Coretan cepat Sederhanakan tiap pembagian, lalu bandingkan bentuk paling sederhananya
A. 110 ÷ 165 = 2/3 dan 120 ÷ 170 = 12/17 beda
B. 84 ÷ 140 = 3/5 dan 105 ÷ 165 = 7/11 beda
C. 98 ÷ 126 = 7/9 dan 63 ÷ 81 = 7/9 → sama
D. 136 ÷ 170 = 4/5 dan 120 ÷ 160 = 3/4 beda
E. 250 ÷ 350 = 5/7 dan 180 ÷ 270 = 2/3 beda
Cek kali silang: 98 × 81 = 7.938 dan 126 × 63 = 7.938 ✓
Cocok di satu sisi belum cukup: dua-duanya harus sama setelah disederhanakan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  402,
  'TIU',
  'Berhitung',
  'sedang',
  'Pasangan perkalian yang menunjukkan nilai yang sama adalah...',
  NULL,
  '{"A":"210 × 180 sama dengan 270 × 140","B":"165 × 220 sama dengan 180 × 200","C":"140 × 280 sama dengan 160 × 250","D":"195 × 200 sama dengan 210 × 180","E":"125 × 320 sama dengan 150 × 260"}'::jsonb,
  'A',
  'Coretan cepat Coret satu nol tiap angka: 21 × 18 dan 27 × 14
Rasio silang: a × b = c × d berarti a: c = d: b
A. 210 × 180 = 37.800 dan 270 × 140 = 37.800 → sama
B. 165 × 220 = 36.300 dan 180 × 200 = 36.000 beda
C. 140 × 280 = 39.200 dan 160 × 250 = 40.000 beda
D. 195 × 200 = 39.000 dan 210 × 180 = 37.800 beda
E. 125 × 320 = 40.000 dan 150 × 260 = 39.000 beda
Cek rasio silang pilihan A: 210: 270 = 7: 9 dan 140: 180 = 7: 9 ✓
Jangan mengalikan keempat angka satu per satu kalau rasio silang bisa langsung dicek.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  403,
  'TIU',
  'Berhitung',
  'sedang',
  'Pasangan perkalian yang menunjukkan nilai yang sama adalah...',
  NULL,
  '{"A":"160 × 225 sama dengan 180 × 210","B":"135 × 240 sama dengan 150 × 220","C":"120 × 350 sama dengan 140 × 300","D":"175 × 280 sama dengan 200 × 250","E":"144 × 250 sama dengan 160 × 230"}'::jsonb,
  'C',
  'Coretan cepat Coret satu nol tiap angka: 12 × 35 dan 14 × 30
Rasio silang: a × b = c × d berarti a: c = d: b
A. 160 × 225 = 36.000 dan 180 × 210 = 37.800 beda
B. 135 × 240 = 32.400 dan 150 × 220 = 33.000 beda
C. 120 × 350 = 42.000 dan 140 × 300 = 42.000 → sama
D. 175 × 280 = 49.000 dan 200 × 250 = 50.000 beda
E. 144 × 250 = 36.000 dan 160 × 230 = 36.800 beda
Cek rasio silang pilihan C: 120: 140 = 6: 7 dan 300: 350 = 6: 7 ✓
Jangan mengalikan keempat angka satu per satu kalau rasio silang bisa langsung dicek.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  404,
  'TIU',
  'Berhitung',
  'sedang',
  'Pasangan perkalian yang menunjukkan nilai yang sama adalah...',
  NULL,
  '{"A":"130 × 240 sama dengan 150 × 220","B":"240 × 150 sama dengan 250 × 140","C":"225 × 160 sama dengan 200 × 190","D":"180 × 125 sama dengan 150 × 160","E":"150 × 420 sama dengan 180 × 350"}'::jsonb,
  'E',
  'Coretan cepat Coret satu nol tiap angka: 15 × 42 dan 18 × 35
Rasio silang: a × b = c × d berarti a: c = d: b
A. 130 × 240 = 31.200 dan 150 × 220 = 33.000 beda
B. 240 × 150 = 36.000 dan 250 × 140 = 35.000 beda
C. 225 × 160 = 36.000 dan 200 × 190 = 38.000 beda
D. 180 × 125 = 22.500 dan 150 × 160 = 24.000 beda
E. 150 × 420 = 63.000 dan 180 × 350 = 63.000 → sama
Cek rasio silang pilihan E: 150: 180 = 5: 6 dan 350: 420 = 5: 6 ✓
Jangan mengalikan keempat angka satu per satu kalau rasio silang bisa langsung dicek.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  405,
  'TIU',
  'Berhitung',
  'sedang',
  'Pasangan perkalian yang menunjukkan nilai yang sama adalah...',
  NULL,
  '{"A":"48 × 125 sama dengan 60 × 110","B":"36 × 250 sama dengan 45 × 200","C":"72 × 150 sama dengan 90 × 130","D":"64 × 175 sama dengan 80 × 150","E":"84 × 125 sama dengan 105 × 110"}'::jsonb,
  'B',
  'Coretan cepat Rasio silang: a × b = c × d berarti a: c = d: b
A. 48 × 125 = 6.000 dan 60 × 110 = 6.600 beda
B. 36 × 250 = 9.000 dan 45 × 200 = 9.000 → sama
C. 72 × 150 = 10.800 dan 90 × 130 = 11.700 beda
D. 64 × 175 = 11.200 dan 80 × 150 = 12.000 beda
E. 84 × 125 = 10.500 dan 105 × 110 = 11.550 beda
Cek rasio silang pilihan B: 36: 45 = 4: 5 dan 200: 250 = 4: 5 ✓
Jangan mengalikan keempat angka satu per satu kalau rasio silang bisa langsung dicek.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  406,
  'TIU',
  'Berhitung',
  'sedang',
  'Pasangan perkalian yang menunjukkan nilai yang sama adalah...',
  NULL,
  '{"A":"140 × 360 sama dengan 180 × 290","B":"320 × 150 sama dengan 400 × 130","C":"250 × 168 sama dengan 300 × 150","D":"160 × 630 sama dengan 210 × 480","E":"280 × 450 sama dengan 350 × 350"}'::jsonb,
  'D',
  'Coretan cepat Coret satu nol tiap angka: 16 × 63 dan 21 × 48
Rasio silang: a × b = c × d berarti a: c = d: b
A. 140 × 360 = 50.400 dan 180 × 290 = 52.200 beda
B. 320 × 150 = 48.000 dan 400 × 130 = 52.000 beda
C. 250 × 168 = 42.000 dan 300 × 150 = 45.000 beda
D. 160 × 630 = 100.800 dan 210 × 480 = 100.800 → sama
E. 280 × 450 = 126.000 dan 350 × 350 = 122.500 beda
Cek rasio silang pilihan D: 160: 210 = 16: 21 dan 480: 630 = 16: 21 ✓
Jangan mengalikan keempat angka satu per satu kalau rasio silang bisa langsung dicek.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  407,
  'TIU',
  'Berhitung',
  'sedang',
  'Pasangan perkalian yang menunjukkan nilai yang sama adalah...',
  NULL,
  '{"A":"24 × 175 sama dengan 35 × 120","B":"45 × 160 sama dengan 60 × 125","C":"56 × 150 sama dengan 70 × 110","D":"32 × 225 sama dengan 40 × 190","E":"66 × 125 sama dengan 75 × 105"}'::jsonb,
  'A',
  'Coretan cepat Rasio silang: a × b = c × d berarti a: c = d: b
A. 24 × 175 = 4.200 dan 35 × 120 = 4.200 → sama
B. 45 × 160 = 7.200 dan 60 × 125 = 7.500 beda
C. 56 × 150 = 8.400 dan 70 × 110 = 7.700 beda
D. 32 × 225 = 7.200 dan 40 × 190 = 7.600 beda
E. 66 × 125 = 8.250 dan 75 × 105 = 7.875 beda
Cek rasio silang pilihan A: 24: 35 = 24: 35 dan 120: 175 = 24: 35 ✓
Jangan mengalikan keempat angka satu per satu kalau rasio silang bisa langsung dicek.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  408,
  'TIU',
  'Berhitung',
  'sedang',
  'Hasil dari 15% x 240 - 1/5 x 90 adalah...',
  NULL,
  '{"A":"16","B":"18","C":"20","D":"22","E":"24"}'::jsonb,
  'B',
  '15% x 240 = 36 dan 1/5 x 90 = 18. Selisihnya 18.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  409,
  'TIU',
  'Berhitung',
  'sedang',
  'Hasil dari 0,25 x 48 + 3,5 x 4 adalah...',
  NULL,
  '{"A":"24","B":"25","C":"26","D":"27","E":"28"}'::jsonb,
  'C',
  '0,25 x 48 = 12 dan 3,5 x 4 = 14. Jumlahnya 26.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  410,
  'TIU',
  'Berhitung',
  'sedang',
  'Hasil dari 1 2 + 6 ÷ 9 − 1 6 adalah....',
  NULL,
  '{"A":"0,33","B":"0,66","C":"1,00","D":"1,33","E":"1,66"}'::jsonb,
  'C',
  'Coretan cepat Bagi dulu: 6 ÷ 9 = 6/9 = 2 3
1 2 + 2 3 − 1 6
Samakan penyebut 6: 3 6 + 4 6 − 1 6
= 6 6 = 1,00
Rumus: bagi dulu, baru tambah dan kurang
jangan menjumlahkan ½ + 6 lebih dulu',
  NULL,
  NULL,
  'published'
),
(
  'web',
  411,
  'TIU',
  'Berhitung',
  'sedang',
  'Hasil dari 1 2 + 3 4 × 2 ÷ 0,5 adalah....',
  NULL,
  '{"A":"1","B":"1,5","C":"2,5","D":"3,5","E":"4,5"}'::jsonb,
  'D',
  'Coretan cepat Kali dan bagi dulu, dari kiri
3 4 × 2 = 3 2
÷ 0,5 sama dengan × 2: 3 2 × 2 = 3
1 2 + 3 = 3 1 2 = 3,5
Rumus: ÷ 0,5 = × 2
jangan tambah ½ + ¾ dulu',
  NULL,
  NULL,
  'published'
),
(
  'web',
  412,
  'TIU',
  'Berhitung',
  'sedang',
  'Hasil dari 3 + 1 1 2 − 1 4 adalah....',
  NULL,
  '{"A":"2,5","B":"3","C":"4,25","D":"5","E":"6,25"}'::jsonb,
  'C',
  'Coretan cepat Pisahkan bulat dan pecahan
Bulat: 3 + 1 = 4
Pecahan: 1 2 − 1 4 = 2 4 − 1 4 = 1 4
4 1 4 = 4 + 0,25 = 4,25
Rumus: campuran: bulat sendiri, pecahan sendiri
jangan baca 1½ sebagai 1 × ½',
  NULL,
  NULL,
  'published'
),
(
  'web',
  413,
  'TIU',
  'Berhitung',
  'sedang',
  'Hasil dari 2 1 3 + 1 1 2 − 5 6 adalah....',
  NULL,
  '{"A":"2","B":"2,5","C":"3","D":"3,5","E":"4"}'::jsonb,
  'C',
  'Coretan cepat Ubah ke pecahan biasa: 2 1 3 = 7 3, 1 1 2 = 3 2
Penyebut 6: 14 6 + 9 6 − 5 6
= 18 6 = 3
Cara lain: bulat 3, pecahan 1 3 + 1 2 − 5 6 = 0
Rumus: campuran ke biasa: bulat × penyebut + pembilang',
  NULL,
  NULL,
  'published'
),
(
  'web',
  414,
  'TIU',
  'Berhitung',
  'sedang',
  'Hasil dari 4 ÷ 1 2 + 3 4 × 8 − 1,5 adalah....',
  NULL,
  '{"A":"10,5","B":"11","C":"12","D":"12,5","E":"13,5"}'::jsonb,
  'D',
  'Coretan cepat 4 ÷ 1 2 = 4 × 2 = 8
3 4 × 8 = 6
8 + 6 − 1,5
= 14 − 1,5 = 12,5
Rumus: bagi pecahan = kali kebalikan',
  NULL,
  NULL,
  'published'
),
(
  'web',
  415,
  'TIU',
  'Berhitung',
  'sedang',
  'Hasil dari 1 1 4 × 2 5 + 0,5 ÷ 1 4 adalah....',
  NULL,
  '{"A":"2","B":"2,5","C":"3","D":"3,5","E":"4"}'::jsonb,
  'B',
  'Coretan cepat 1 1 4 = 5 4
5 4 × 2 5 = 10 20 = 1 2
0,5 ÷ 1 4 = 1 2 × 4 = 2
1 2 + 2 = 2,5
Rumus: coret silang sebelum dikali: 5 dengan 5, 2 dengan 4',
  NULL,
  NULL,
  'published'
),
(
  'web',
  416,
  'TIU',
  'Berhitung',
  'sedang',
  'Hasil dari 2 3 + 3 ÷ 4 − 1 3 adalah....',
  NULL,
  '{"A":"11 12","B":"1","C":"13 12","D":"5 4","E":"4 3"}'::jsonb,
  'C',
  'Coretan cepat 3 ÷ 4 = 3 4
2 3 + 3 4 − 1 3
Penyebut 12: 8 12 + 9 12 − 4 12
= 13 12
Rumus: penyebut 3 dan 4, KPK-nya 12',
  NULL,
  NULL,
  'published'
),
(
  'web',
  417,
  'TIU',
  'Berhitung',
  'sedang',
  'Hasil dari 0,75 + 2 1 2 ÷ 2 − 1 4 adalah....',
  NULL,
  '{"A":"1,5","B":"1,75","C":"2","D":"2,25","E":"2,5"}'::jsonb,
  'B',
  'Coretan cepat Semua ke desimal: 0,75 + 2,5 ÷ 2 − 0,25
2,5 ÷ 2 = 1,25
0,75 + 1,25 − 0,25
= 2 − 0,25 = 1,75
Rumus: campur desimal dan pecahan: seragamkan dulu',
  NULL,
  NULL,
  'published'
),
(
  'web',
  418,
  'TIU',
  'Berhitung',
  'sedang',
  'Hasil dari (3 4 − 1 3) × 12 + 2 ÷ 4 adalah....',
  NULL,
  '{"A":"4,5","B":"5","C":"5,5","D":"6","E":"6,5"}'::jsonb,
  'C',
  'Coretan cepat Kurung dulu: 3 4 − 1 3 = 9 12 − 4 12 = 5 12
5 12 × 12 = 5
2 ÷ 4 = 0,5
5 + 0,5 = 5,5
Rumus: urutan: kurung, kali bagi, tambah kurang',
  NULL,
  NULL,
  'published'
),
(
  'web',
  419,
  'TIU',
  'Berhitung',
  'sedang',
  'Hasil dari 2 1 2 × 1 1 5 ÷ 0,5 adalah....',
  NULL,
  '{"A":"3","B":"4,5","C":"6","D":"7,5","E":"9"}'::jsonb,
  'C',
  'Coretan cepat 2 1 2 = 5 2 dan 1 1 5 = 6 5
5 2 × 6 5 = 3 (5 dan 5 saling coret, 6 ÷ 2 = 3)
3 ÷ 0,5 = 3 × 2 = 6
Rumus: ubah campuran ke biasa dulu sebelum kali atau bagi
campuran nggak boleh dikali per bagian',
  NULL,
  NULL,
  'published'
),
(
  'web',
  420,
  'TIU',
  'Berhitung',
  'sedang',
  'Hasil dari 6 − 4 ÷ 5 8 × 1 4 adalah....',
  NULL,
  '{"A":"1,6","B":"3,6","C":"4,4","D":"4,6","E":"5,6"}'::jsonb,
  'C',
  'Coretan cepat Kali dan bagi dulu, dari kiri
4 ÷ 5 8 = 4 × 8 5 = 32 5
32 5 × 1 4 = 8 5 = 1,6
6 − 1,6 = 4,4
Rumus: bagi ke kebalikan, terus kali dari kiri
jangan hitung 6 − 4 lebih dulu',
  NULL,
  NULL,
  'published'
),
(
  'web',
  421,
  'TIU',
  'Berhitung',
  'sedang',
  'Hasil dari 3 3 4 ÷ 1 1 2 + 0,5 × 2 5 adalah....',
  NULL,
  '{"A":"2,5","B":"2,7","C":"3","D":"3,2","E":"3,5"}'::jsonb,
  'B',
  'Coretan cepat 3 3 4 = 15 4 dan 1 1 2 = 3 2
15 4 × 2 3 = 30 12 = 2,5
0,5 × 2 5 = 1 2 × 2 5 = 0,2
2,5 + 0,2 = 2,7
Rumus: bagi campuran: ubah ke biasa, balik, kali',
  NULL,
  NULL,
  'published'
),
(
  'web',
  422,
  'TIU',
  'Berhitung',
  'sedang',
  'Tentukan operasi bilangan yang memiliki hasil sama dengan 32 × 175 =....',
  NULL,
  '{"A":"24 × 280","B":"25 × 220","C":"28 × 200","D":"35 × 150","E":"40 × 130"}'::jsonb,
  'C',
  'Coretan cepat Target: 32 × 175 = 5.600
Rumus cepat (faktor geser): satu angka mengecil k kali, pasangannya harus membesar k kali.
A. 24 × 280 = 6.720 beda (lebih besar 1.120)
B. 25 × 220 = 5.500 beda (lebih kecil 100)
C. 28 × 200 = 5.600 → sama
D. 35 × 150 = 5.250 beda (lebih kecil 350)
E. 40 × 130 = 5.200 beda (lebih kecil 400)
Cara kilat tanpa hitung: rasio silang 32: 28 = 8: 7 dan 200: 175 = 8: 7. Sama, berarti opsi C benar.
Jebakan: opsi lain sengaja dibuat selisih kecil (hasil dekat target). Satu angka cocok belum cukup, cek hasil kali atau rasio dua-duanya.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  423,
  'TIU',
  'Berhitung',
  'sedang',
  'Tentukan operasi bilangan yang memiliki hasil sama dengan 24 × 150 =....',
  NULL,
  '{"A":"20 × 180","B":"16 × 200","C":"25 × 140","D":"30 × 110","E":"32 × 120"}'::jsonb,
  'A',
  'Coretan cepat Target: 24 × 150 = 3.600
Rumus cepat (faktor geser): satu angka mengecil k kali, pasangannya harus membesar k kali.
A. 20 × 180 = 3.600 → sama
B. 16 × 200 = 3.200 beda (lebih kecil 400)
C. 25 × 140 = 3.500 beda (lebih kecil 100)
D. 30 × 110 = 3.300 beda (lebih kecil 300)
E. 32 × 120 = 3.840 beda (lebih besar 240)
Cara kilat tanpa hitung: rasio silang 24: 20 = 6: 5 dan 180: 150 = 6: 5. Sama, berarti opsi A benar.
Jebakan: opsi lain sengaja dibuat selisih kecil (hasil dekat target). Satu angka cocok belum cukup, cek hasil kali atau rasio dua-duanya.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  424,
  'TIU',
  'Berhitung',
  'sedang',
  'Tentukan operasi bilangan yang memiliki hasil sama dengan 45 × 160 =....',
  NULL,
  '{"A":"40 × 170","B":"50 × 150","C":"60 × 110","D":"36 × 200","E":"30 × 250"}'::jsonb,
  'D',
  'Coretan cepat Target: 45 × 160 = 7.200
Rumus cepat (faktor geser): satu angka mengecil k kali, pasangannya harus membesar k kali.
A. 40 × 170 = 6.800 beda (lebih kecil 400)
B. 50 × 150 = 7.500 beda (lebih besar 300)
C. 60 × 110 = 6.600 beda (lebih kecil 600)
D. 36 × 200 = 7.200 → sama
E. 30 × 250 = 7.500 beda (lebih besar 300)
Cara kilat tanpa hitung: rasio silang 45: 36 = 5: 4 dan 200: 160 = 5: 4. Sama, berarti opsi D benar.
Jebakan: opsi lain sengaja dibuat selisih kecil (hasil dekat target). Satu angka cocok belum cukup, cek hasil kali atau rasio dua-duanya.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  425,
  'TIU',
  'Berhitung',
  'sedang',
  'Tentukan operasi bilangan yang memiliki hasil sama dengan 56 × 125 =....',
  NULL,
  '{"A":"40 × 180","B":"48 × 150","C":"70 × 110","D":"35 × 200","E":"28 × 260"}'::jsonb,
  'D',
  'Coretan cepat Target: 56 × 125 = 7.000
Rumus cepat (faktor geser): satu angka mengecil k kali, pasangannya harus membesar k kali.
A. 40 × 180 = 7.200 beda (lebih besar 200)
B. 48 × 150 = 7.200 beda (lebih besar 200)
C. 70 × 110 = 7.700 beda (lebih besar 700)
D. 35 × 200 = 7.000 → sama
E. 28 × 260 = 7.280 beda (lebih besar 280)
Cara kilat tanpa hitung: rasio silang 56: 35 = 8: 5 dan 200: 125 = 8: 5. Sama, berarti opsi D benar.
Jebakan: opsi lain sengaja dibuat selisih kecil (hasil dekat target). Satu angka cocok belum cukup, cek hasil kali atau rasio dua-duanya.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  426,
  'TIU',
  'Berhitung',
  'sedang',
  'Tentukan operasi bilangan yang memiliki hasil sama dengan 36 × 250 =....',
  NULL,
  '{"A":"45 × 190","B":"40 × 220","C":"24 × 400","D":"50 × 170","E":"30 × 300"}'::jsonb,
  'E',
  'Coretan cepat Target: 36 × 250 = 9.000
Rumus cepat (faktor geser): satu angka mengecil k kali, pasangannya harus membesar k kali.
A. 45 × 190 = 8.550 beda (lebih kecil 450)
B. 40 × 220 = 8.800 beda (lebih kecil 200)
C. 24 × 400 = 9.600 beda (lebih besar 600)
D. 50 × 170 = 8.500 beda (lebih kecil 500)
E. 30 × 300 = 9.000 → sama
Cara kilat tanpa hitung: rasio silang 36: 30 = 6: 5 dan 300: 250 = 6: 5. Sama, berarti opsi E benar.
Jebakan: opsi lain sengaja dibuat selisih kecil (hasil dekat target). Satu angka cocok belum cukup, cek hasil kali atau rasio dua-duanya.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  427,
  'TIU',
  'Berhitung',
  'sedang',
  '15% dari 240 adalah...',
  NULL,
  '{"A":"32","B":"34","C":"36","D":"38","E":"40"}'::jsonb,
  'C',
  '240 x 15/100 = 36.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  428,
  'TIU',
  'Berhitung',
  'sedang',
  '3/4 + 2/3 =...',
  NULL,
  '{"A":"5/7","B":"17/12","C":"5/12","D":"1 1/6","E":"3/2"}'::jsonb,
  'B',
  '9/12 + 8/12 = 17/12.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  429,
  'TIU',
  'Berhitung',
  'sedang',
  'Dari 250 peserta seleksi, 40% adalah laki-laki. Dari peserta laki-laki itu, 30% lolos tahap administrasi. Banyak peserta laki-laki yang lolos...',
  NULL,
  '{"A":"25","B":"30","C":"35","D":"40","E":"45"}'::jsonb,
  'B',
  '250 x 0,4 = 100; 100 x 0,3 = 30.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  430,
  'TIU',
  'Berhitung',
  'sedang',
  'Jumlah siswa sebuah sekolah naik 20% lalu turun 20% dari jumlah yang baru. Dibanding jumlah awal, jumlah akhir...',
  NULL,
  '{"A":"Sama","B":"Naik 4%","C":"Turun 4%","D":"Turun 2%","E":"Naik 2%"}'::jsonb,
  'C',
  '1,2 x 0,8 = 0,96, jadi turun 4%.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  431,
  'TIU',
  'Berhitung',
  'sedang',
  'Perbandingan jumlah pegawai laki-laki dan perempuan adalah 3: 5. Jika seluruh pegawai 160 orang, selisih keduanya...',
  NULL,
  '{"A":"20","B":"30","C":"40","D":"50","E":"60"}'::jsonb,
  'C',
  '160: 8 = 20 per bagian; selisih 2 bagian = 40.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  432,
  'TIU',
  'Berhitung',
  'sedang',
  'Jika 2x + 3 = 4x - 5, maka nilai 3x adalah...',
  NULL,
  '{"A":"8","B":"10","C":"12","D":"14","E":"16"}'::jsonb,
  'C',
  '2x = 8, x = 4, jadi 3x = 12.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  433,
  'TIU',
  'Berhitung',
  'sedang',
  'Gaji Ani naik 25% menjadi Rp5.000.000. Gaji sebelum kenaikan...',
  NULL,
  '{"A":"Rp3.750.000","B":"Rp4.000.000","C":"Rp4.250.000","D":"Rp3.500.000","E":"Rp4.500.000"}'::jsonb,
  'B',
  '1,25 x gaji lama = 5.000.000, jadi gaji lama 4.000.000 (bukan 5.000.000 dikurangi 25%).',
  NULL,
  NULL,
  'published'
),
(
  'web',
  434,
  'TIU',
  'Berhitung',
  'sedang',
  'Jika 40% dari x sama dengan 25% dari y, maka perbandingan x: y adalah...',
  NULL,
  '{"A":"2: 5","B":"5: 8","C":"8: 5","D":"4: 25","E":"5: 2"}'::jsonb,
  'B',
  '0,4x = 0,25y, x/y = 0,25/0,4 = 5/8.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  435,
  'TIU',
  'Berhitung',
  'sedang',
  'Hasil dari 10 + 6 x 2 pangkat 2: 3 adalah...',
  NULL,
  '{"A":"18","B":"21","C":"24","D":"26","E":"16"}'::jsonb,
  'A',
  'KUPAKA-KABATA: pangkat dulu (2 pangkat 2 = 4), lalu 6 x 4: 3 = 8, terakhir 10 + 8 = 18.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  436,
  'TIU',
  'Berhitung',
  'sedang',
  'Angka satuan dari 3 pangkat 22 adalah...',
  NULL,
  '{"A":"1","B":"3","C":"7","D":"9","E":"2"}'::jsonb,
  'D',
  'Pola satuan 3: 3, 9, 7, 1 (ulang tiap 4). 22 dibagi 4 bersisa 2, jadi satuannya 9.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  437,
  'TIU',
  'Berhitung',
  'sedang',
  '12,5% dari 480 adalah...',
  NULL,
  '{"A":"48","B":"56","C":"60","D":"64","E":"72"}'::jsonb,
  'C',
  '12,5% = 1/8, jadi 480: 8 = 60.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  438,
  'TIU',
  'Berhitung',
  'sedang',
  'Nilai 53 pangkat 2 adalah...',
  NULL,
  '{"A":"2709","B":"2809","C":"2819","D":"2889","E":"2609"}'::jsonb,
  'B',
  'Trik kuadrat 41 sampai 59: (n - 25) | (50 - n) pangkat 2 = 28 | 09 = 2809.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  439,
  'TIU',
  'Berhitung',
  'sedang',
  'Hasil dari 3/4 + 6: 8 - 1/2 adalah...',
  NULL,
  '{"A":"0,5","B":"1","C":"1,25","D":"1,5","E":"2"}'::jsonb,
  'B',
  'Bagi dulu: 6: 8 = 3/4. Lalu 3/4 + 3/4 - 1/2 = 1.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  440,
  'TIU',
  'Berhitung',
  'sedang',
  'Bilangan 4x58 habis dibagi 9. Nilai x adalah...',
  NULL,
  '{"A":"0","B":"1","C":"2","D":"3","E":"4"}'::jsonb,
  'B',
  'Jumlah digit harus kelipatan 9: 4 + x + 5 + 8 = 17 + x, sehingga x = 1 (jumlah 18).',
  NULL,
  NULL,
  'published'
),
(
  'web',
  441,
  'TIU',
  'Berhitung',
  'sedang',
  'Hasil dari 62 pangkat 2 dikurangi 58 pangkat 2 adalah...',
  NULL,
  '{"A":"240","B":"360","C":"480","D":"520","E":"600"}'::jsonb,
  'C',
  'Selisih kuadrat: (62 - 58)(62 + 58) = 4 x 120 = 480.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  442,
  'TIU',
  'Berhitung',
  'sedang',
  'Harga barang dinaikkan 20%, lalu didiskon 20%. Dibanding harga awal, harga akhir...',
  NULL,
  '{"A":"Sama","B":"Naik 4%","C":"Turun 4%","D":"Turun 2%","E":"Naik 2%"}'::jsonb,
  'C',
  '1,2 x 0,8 = 0,96, sehingga turun 4%.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  443,
  'TIU',
  'Berhitung',
  'sedang',
  'Rata-rata 5 bilangan 14. Setelah satu bilangan dihapus, rata-rata 4 bilangan 12. Bilangan yang dihapus...',
  NULL,
  '{"A":"20","B":"22","C":"24","D":"26","E":"18"}'::jsonb,
  'B',
  '70 - 48 = 22.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  444,
  'TIU',
  'Berhitung',
  'sedang',
  'Harga dinaikkan 25% lalu didiskon 20%. Dibanding harga awal, harga akhir...',
  NULL,
  '{"A":"Naik 5%","B":"Turun 5%","C":"Sama","D":"Naik 2%","E":"Turun 2%"}'::jsonb,
  'C',
  '1,25 x 0,8 = 1, jadi sama.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  445,
  'TIU',
  'Berhitung',
  'sedang',
  'A menyelesaikan pekerjaan dalam 6 hari, B dalam 12 hari. Keduanya bekerja bersama 2 hari, lalu A berhenti dan B menyelesaikan sisanya. Total waktu sampai selesai...',
  NULL,
  '{"A":"6 hari","B":"7 hari","C":"8 hari","D":"9 hari","E":"10 hari"}'::jsonb,
  'C',
  'Laju bersama 1/4 per hari, 2 hari = 1/2 selesai. Sisa 1/2 oleh B butuh 6 hari. Total 8 hari.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  446,
  'TIU',
  'Berhitung',
  'sedang',
  'a dan b bilangan positif dengan a: b = 3: 5 dan a kuadrat + b kuadrat = 306. Nilai a + b...',
  NULL,
  '{"A":"16","B":"20","C":"24","D":"28","E":"32"}'::jsonb,
  'C',
  '34k kuadrat = 306 sehingga k = 3; a + b = 8k = 24.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  447,
  'TIU',
  'Berhitung',
  'sedang',
  'Harga barang naik 20%, lalu turun x% sehingga harga akhir 10% di atas harga semula. Nilai x adalah....',
  NULL,
  '{"A":"8 1/3%","B":"9 1/6%","C":"10%","D":"12%","E":"7 1/2%"}'::jsonb,
  'A',
  '1,2 × (1 − x) = 1,1 → 1 − x = 11/12 → x = 1/12 = 8 1/3%. Jebakan: 20% − 10% = 10% terlihat masuk akal tetapi salah karena penurunan dihitung dari harga baru.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  448,
  'TIU',
  'Berhitung',
  'sedang',
  'Tentukan operasi bilangan yang memiliki hasil sama dengan 48 × 225 =....',
  NULL,
  '{"A":"60 × 175","B":"40 × 280","C":"54 × 200","D":"72 × 160","E":"45 × 250"}'::jsonb,
  'C',
  'Coretan cepat Target: 48 × 225 = 10.800
Rumus cepat (faktor geser): satu angka mengecil k kali, pasangannya harus membesar k kali.
A. 60 × 175 = 10.500 beda (lebih kecil 300)
B. 40 × 280 = 11.200 beda (lebih besar 400)
C. 54 × 200 = 10.800 → sama
D. 72 × 160 = 11.520 beda (lebih besar 720)
E. 45 × 250 = 11.250 beda (lebih besar 450)
Cara kilat tanpa hitung: rasio silang 48: 54 = 8: 9 dan 200: 225 = 8: 9. Sama, berarti opsi C benar.
Jebakan: opsi lain sengaja dibuat selisih kecil (hasil dekat target). Satu angka cocok belum cukup, cek hasil kali atau rasio dua-duanya.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  449,
  'TIU',
  'Berhitung',
  'sedang',
  'Tentukan operasi bilangan yang memiliki hasil sama dengan 64 × 150 =....',
  NULL,
  '{"A":"75 × 130","B":"96 × 110","C":"60 × 170","D":"80 × 120","E":"50 × 190"}'::jsonb,
  'D',
  'Coretan cepat Target: 64 × 150 = 9.600
Rumus cepat (faktor geser): satu angka mengecil k kali, pasangannya harus membesar k kali.
A. 75 × 130 = 9.750 beda (lebih besar 150)
B. 96 × 110 = 10.560 beda (lebih besar 960)
C. 60 × 170 = 10.200 beda (lebih besar 600)
D. 80 × 120 = 9.600 → sama
E. 50 × 190 = 9.500 beda (lebih kecil 100)
Cara kilat tanpa hitung: rasio silang 64: 80 = 4: 5 dan 120: 150 = 4: 5. Sama, berarti opsi D benar.
Jebakan: opsi lain sengaja dibuat selisih kecil (hasil dekat target). Satu angka cocok belum cukup, cek hasil kali atau rasio dua-duanya.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  450,
  'TIU',
  'Berhitung',
  'sedang',
  'Tentukan operasi bilangan yang memiliki hasil sama dengan 84 × 125 =....',
  NULL,
  '{"A":"60 × 180","B":"90 × 120","C":"70 × 150","D":"75 × 145","E":"105 × 95"}'::jsonb,
  'C',
  'Coretan cepat Target: 84 × 125 = 10.500
Rumus cepat (faktor geser): satu angka mengecil k kali, pasangannya harus membesar k kali.
A. 60 × 180 = 10.800 beda (lebih besar 300)
B. 90 × 120 = 10.800 beda (lebih besar 300)
C. 70 × 150 = 10.500 → sama
D. 75 × 145 = 10.875 beda (lebih besar 375)
E. 105 × 95 = 9.975 beda (lebih kecil 525)
Cara kilat tanpa hitung: rasio silang 84: 70 = 6: 5 dan 150: 125 = 6: 5. Sama, berarti opsi C benar.
Jebakan: opsi lain sengaja dibuat selisih kecil (hasil dekat target). Satu angka cocok belum cukup, cek hasil kali atau rasio dua-duanya.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  451,
  'TIU',
  'Berhitung',
  'sedang',
  'Sebuah toko membeli barang seharga Rp800.000, memasang label harga 30% di atas modal, lalu memberi diskon 20% saat promo. Persentase keuntungan terhadap modal adalah....',
  NULL,
  '{"A":"10%","B":"6%","C":"4%","D":"5%","E":"8%"}'::jsonb,
  'C',
  'Label 800.000 x 1,3 = 1.040.000; diskon 20% menjadi 832.000; untung 32.000 = 4% dari modal. Jebakan: 30% - 20% = 10% karena diskon dihitung dari harga label.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  452,
  'TIU',
  'Berhitung',
  'sedang',
  'Rata-rata nilai 30 siswa kelas B adalah 68. Setelah 5 siswa dengan nilai rata-rata 80 dipindahkan ke kelas lain, rata-rata nilai siswa yang tersisa di kelas B adalah....',
  NULL,
  '{"A":"65,6","B":"66,0","C":"66,4","D":"67,2","E":"64,8"}'::jsonb,
  'A',
  'Jumlah awal 30 x 68 = 2.040; jumlah yang pindah 5 x 80 = 400; sisa 1.640 untuk 25 siswa = 65,6.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  453,
  'TIU',
  'Berhitung',
  'sedang',
  'Tabungan Rp10.000.000 berbunga majemuk 10% per tahun. Saldo setelah 2 tahun adalah....',
  NULL,
  '{"A":"Rp12.000.000","B":"Rp12.100.000","C":"Rp12.200.000","D":"Rp11.000.000","E":"Rp12.210.000"}'::jsonb,
  'B',
  'Tahun 1: 11.000.000. Tahun 2: 11.000.000 x 1,1 = 12.100.000. Bunga tunggal akan memberi 12.000.000.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  454,
  'TIU',
  'Berhitung',
  'sedang',
  'Hasil dari (987 pangkat 2 - 13 pangkat 2): (987 + 13) adalah....',
  NULL,
  '{"A":"974","B":"986","C":"1.000","D":"961","E":"1.013"}'::jsonb,
  'A',
  'a pangkat 2 - b pangkat 2 = (a - b)(a + b), maka hasilnya a - b = 987 - 13 = 974.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  455,
  'TIU',
  'Berhitung',
  'sedang',
  'Bu Rina mengelola dua toko alat tulis. Ia ingin memastikan jumlah seluruh buku di Toko A sama dengan jumlah seluruh buku di Toko B, meskipun jumlah rak dan buku pada setiap rak berbeda. Pasangan perkalian manakah yang menunjukkan jumlah buku yang sama?',
  NULL,
  '{"A":"100 × 438 = 151 × 298","B":"115 × 306 = 278 × 120","C":"150 × 468 = 351 × 200","D":"165 × 549 = 392 × 227","E":"200 × 525 = 413 × 248"}'::jsonb,
  'C',
  'Hitung kedua sisi: 150 × 468 = 70.200 dan 351 × 200 = 70.200, jadi sama. Cara cepat: cek angka satuan dan perkiraan besarnya dulu. Pilihan lain hasil kedua sisinya berbeda: 165 × 549 = 90.585 ≠ 392 × 227 = 88.984; 200 × 525 = 105.000 ≠ 413 × 248 = 102.424.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  456,
  'TIU',
  'Berhitung',
  'sedang',
  'Pak Andi mengelola dua pusat distribusi barang. Ia ingin memastikan jumlah paket yang diterima setiap pekerja di Pusat A sama dengan di Pusat B, setelah total paket dibagi rata kepada seluruh pekerja. Pasangan pembagian manakah yang menghasilkan nilai yang sama?',
  NULL,
  '{"A":"595 ÷ 425 = 695 ÷ 475","B":"425 ÷ 340 = 140 ÷ 120","C":"275 ÷ 200 = 510 ÷ 360","D":"180 ÷ 100 = 675 ÷ 375","E":"180 ÷ 120 = 255 ÷ 180"}'::jsonb,
  'D',
  'Samakan bentuk paling sederhana: 180 ÷ 100 = 9/5 dan 675 ÷ 375 = 9/5, jadi sama. Cara cepat: bandingkan rasio sederhananya, atau kalikan silang a × d dengan b × c (180 × 375 = 67500 dan 100 × 675 = 67500). Pilihan lain rasio kedua sisinya berbeda.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  457,
  'TIU',
  'Berhitung',
  'sedang',
  'Pak Dedi mengelola dua kebun jeruk. Ia ingin jumlah seluruh jeruk di Kebun A sama dengan Kebun B, meskipun jumlah pohon dan jeruk per pohon berbeda. Pasangan perkalian manakah yang menunjukkan jumlah jeruk yang sama?',
  NULL,
  '{"A":"100 × 439 = 384 × 108","B":"140 × 553 = 120 × 653","C":"130 × 309 = 338 × 122","D":"160 × 258 = 129 × 320","E":"170 × 411 = 124 × 559"}'::jsonb,
  'D',
  'Hitung kedua sisi: 160 × 258 = 41.280 dan 129 × 320 = 41.280, jadi sama. Cara cepat: cek angka satuan dan perkiraan besarnya dulu. Pilihan lain hasil kedua sisinya berbeda: 170 × 411 = 69.870 ≠ 124 × 559 = 69.316; 140 × 553 = 77.420 ≠ 120 × 653 = 78.360.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  458,
  'TIU',
  'Berhitung',
  'sedang',
  'Bu Nina mengelola dua posko bantuan. Ia ingin memastikan jumlah sembako yang diterima setiap keluarga di Posko A sama dengan di Posko B, setelah total sembako dibagi rata. Pasangan pembagian manakah yang menghasilkan nilai yang sama?',
  NULL,
  '{"A":"285 ÷ 190 = 45 ÷ 40","B":"900 ÷ 700 = 555 ÷ 455","C":"300 ÷ 200 = 210 ÷ 140","D":"585 ÷ 455 = 150 ÷ 140","E":"210 ÷ 140 = 215 ÷ 150"}'::jsonb,
  'C',
  'Samakan bentuk paling sederhana: 300 ÷ 200 = 3/2 dan 210 ÷ 140 = 3/2, jadi sama. Cara cepat: bandingkan rasio sederhananya, atau kalikan silang a × d dengan b × c (300 × 140 = 42000 dan 200 × 210 = 42000). Pilihan lain rasio kedua sisinya berbeda.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  459,
  'TIU',
  'Berhitung',
  'sedang',
  'Bu Sari mengatur dua gudang kain. Ia ingin jumlah seluruh gulungan kain di Gudang A sama dengan Gudang B, walaupun jumlah lemari dan gulungan per lemari berbeda. Pasangan perkalian manakah yang menunjukkan jumlah gulungan yang sama?',
  NULL,
  '{"A":"100 × 502 = 271 × 177","B":"200 × 517 = 116 × 887","C":"210 × 429 = 131 × 693","D":"165 × 536 = 330 × 268","E":"115 × 609 = 251 × 285"}'::jsonb,
  'D',
  'Hitung kedua sisi: 165 × 536 = 88.440 dan 330 × 268 = 88.440, jadi sama. Cara cepat: cek angka satuan dan perkiraan besarnya dulu. Pilihan lain hasil kedua sisinya berbeda: 100 × 502 = 50.200 ≠ 271 × 177 = 47.967; 115 × 609 = 70.035 ≠ 251 × 285 = 71.535.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  460,
  'TIU',
  'Berhitung',
  'sedang',
  'Pak Rudi mengelola dua panitia lomba. Ia ingin memastikan jumlah hadiah yang diterima tiap kelompok di Panitia A sama dengan Panitia B, setelah total hadiah dibagi rata. Pasangan pembagian manakah yang menghasilkan nilai yang sama?',
  NULL,
  '{"A":"225 ÷ 180 = 340 ÷ 280","B":"700 ÷ 500 = 575 ÷ 400","C":"600 ÷ 375 = 210 ÷ 150","D":"350 ÷ 280 = 415 ÷ 320","E":"275 ÷ 220 = 325 ÷ 260"}'::jsonb,
  'E',
  'Samakan bentuk paling sederhana: 275 ÷ 220 = 5/4 dan 325 ÷ 260 = 5/4, jadi sama. Cara cepat: bandingkan rasio sederhananya, atau kalikan silang a × d dengan b × c (275 × 260 = 71500 dan 220 × 325 = 71500). Pilihan lain rasio kedua sisinya berbeda.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  461,
  'TIU',
  'Berhitung',
  'sedang',
  'Pak Anto mengelola dua kelas pelatihan. Ia ingin jumlah seluruh modul yang dibagikan di Kelas A sama dengan Kelas B, meski jumlah peserta dan modul per peserta berbeda. Pasangan perkalian manakah yang menunjukkan jumlah modul yang sama?',
  NULL,
  '{"A":"150 × 432 = 115 × 559","B":"180 × 202 = 120 × 303","C":"160 × 185 = 358 × 78","D":"170 × 305 = 115 × 442","E":"100 × 223 = 113 × 191"}'::jsonb,
  'B',
  'Hitung kedua sisi: 180 × 202 = 36.360 dan 120 × 303 = 36.360, jadi sama. Cara cepat: cek angka satuan dan perkiraan besarnya dulu. Pilihan lain hasil kedua sisinya berbeda: 160 × 185 = 29.600 ≠ 358 × 78 = 27.924; 100 × 223 = 22.300 ≠ 113 × 191 = 21.583.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  462,
  'TIU',
  'Berhitung',
  'sedang',
  'Bu Tia mengelola dua unit pelatihan. Ia ingin memastikan jumlah buku panduan yang diterima tiap peserta di Unit A sama dengan Unit B, setelah total buku dibagi rata. Pasangan pembagian manakah yang menghasilkan nilai yang sama?',
  NULL,
  '{"A":"1100 ÷ 800 = 450 ÷ 320","B":"120 ÷ 100 = 300 ÷ 250","C":"375 ÷ 225 = 410 ÷ 255","D":"630 ÷ 350 = 215 ÷ 125","E":"280 ÷ 200 = 670 ÷ 500"}'::jsonb,
  'B',
  'Samakan bentuk paling sederhana: 120 ÷ 100 = 6/5 dan 300 ÷ 250 = 6/5, jadi sama. Cara cepat: bandingkan rasio sederhananya, atau kalikan silang a × d dengan b × c (120 × 250 = 30000 dan 100 × 300 = 30000). Pilihan lain rasio kedua sisinya berbeda.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  463,
  'TIU',
  'Berhitung',
  'sedang',
  'Bu Wati mengelola dua kantin sekolah. Ia ingin jumlah seluruh botol minuman di Kantin A sama dengan Kantin B, meski jumlah kulkas dan botol per kulkas berbeda. Pasangan perkalian manakah yang menunjukkan jumlah botol yang sama?',
  NULL,
  '{"A":"120 × 443 = 265 × 206","B":"135 × 564 = 118 × 633","C":"180 × 198 = 235 × 147","D":"150 × 545 = 128 × 644","E":"165 × 302 = 330 × 151"}'::jsonb,
  'E',
  'Hitung kedua sisi: 165 × 302 = 49.830 dan 330 × 151 = 49.830, jadi sama. Cara cepat: cek angka satuan dan perkiraan besarnya dulu. Pilihan lain hasil kedua sisinya berbeda: 120 × 443 = 53.160 ≠ 265 × 206 = 54.590; 135 × 564 = 76.140 ≠ 118 × 633 = 74.694.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  464,
  'TIU',
  'Berhitung',
  'sedang',
  'Pak Joko mengelola dua koperasi desa. Ia ingin memastikan sisa hasil usaha yang diterima tiap anggota Koperasi A sama dengan Koperasi B, setelah total dibagi rata. Pasangan pembagian manakah yang menghasilkan nilai yang sama?',
  NULL,
  '{"A":"315 ÷ 245 = 195 ÷ 140","B":"405 ÷ 315 = 705 ÷ 560","C":"160 ÷ 100 = 240 ÷ 150","D":"560 ÷ 350 = 610 ÷ 400","E":"935 ÷ 680 = 370 ÷ 280"}'::jsonb,
  'C',
  'Samakan bentuk paling sederhana: 160 ÷ 100 = 8/5 dan 240 ÷ 150 = 8/5, jadi sama. Cara cepat: bandingkan rasio sederhananya, atau kalikan silang a × d dengan b × c (160 × 150 = 24000 dan 100 × 240 = 24000). Pilihan lain rasio kedua sisinya berbeda.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  465,
  'TIU',
  'Berhitung',
  'sedang',
  'Pak Bima mengelola dua gudang pupuk. Ia ingin jumlah seluruh karung di Gudang A sama dengan Gudang B, meski jumlah tumpukan dan karung per tumpukan berbeda. Pasangan perkalian manakah yang menunjukkan jumlah karung yang sama?',
  NULL,
  '{"A":"180 × 331 = 266 × 231","B":"100 × 558 = 330 × 177","C":"100 × 170 = 234 × 76","D":"100 × 289 = 125 × 235","E":"150 × 175 = 175 × 150"}'::jsonb,
  'E',
  'Hitung kedua sisi: 150 × 175 = 26.250 dan 175 × 150 = 26.250, jadi sama. Cara cepat: cek angka satuan dan perkiraan besarnya dulu. Pilihan lain hasil kedua sisinya berbeda: 100 × 289 = 28.900 ≠ 125 × 235 = 29.375; 100 × 170 = 17.000 ≠ 234 × 76 = 17.784.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  466,
  'TIU',
  'Berhitung',
  'sedang',
  'Bu Ratna mengelola dua dapur umum. Ia ingin memastikan jumlah porsi makanan untuk tiap relawan di Dapur A sama dengan Dapur B, setelah total porsi dibagi rata. Pasangan pembagian manakah yang menghasilkan nilai yang sama?',
  NULL,
  '{"A":"250 ÷ 200 = 390 ÷ 320","B":"540 ÷ 450 = 330 ÷ 250","C":"520 ÷ 325 = 385 ÷ 250","D":"210 ÷ 120 = 370 ÷ 220","E":"480 ÷ 400 = 180 ÷ 150"}'::jsonb,
  'E',
  'Samakan bentuk paling sederhana: 480 ÷ 400 = 6/5 dan 180 ÷ 150 = 6/5, jadi sama. Cara cepat: bandingkan rasio sederhananya, atau kalikan silang a × d dengan b × c (480 × 150 = 72000 dan 400 × 180 = 72000). Pilihan lain rasio kedua sisinya berbeda.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  467,
  'TIU',
  'Berhitung',
  'sedang',
  'Bu Lina mengelola dua apotek. Ia ingin jumlah seluruh kotak obat di Apotek A sama dengan Apotek B, meski jumlah laci dan kotak per laci berbeda. Pasangan perkalian manakah yang menunjukkan jumlah kotak yang sama?',
  NULL,
  '{"A":"165 × 198 = 270 × 121","B":"135 × 435 = 127 × 474","C":"170 × 300 = 248 × 201","D":"110 × 373 = 196 × 205","E":"115 × 211 = 129 × 192"}'::jsonb,
  'A',
  'Hitung kedua sisi: 165 × 198 = 32.670 dan 270 × 121 = 32.670, jadi sama. Cara cepat: cek angka satuan dan perkiraan besarnya dulu. Pilihan lain hasil kedua sisinya berbeda: 135 × 435 = 58.725 ≠ 127 × 474 = 60.198; 110 × 373 = 41.030 ≠ 196 × 205 = 40.180.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  468,
  'TIU',
  'Berhitung',
  'sedang',
  'Pak Eko mengelola dua kantor cabang. Ia ingin memastikan jumlah map arsip yang ditangani tiap pegawai di Cabang A sama dengan Cabang B, setelah total map dibagi rata. Pasangan pembagian manakah yang menghasilkan nilai yang sama?',
  NULL,
  '{"A":"680 ÷ 425 = 535 ÷ 325","B":"120 ÷ 90 = 340 ÷ 255","C":"630 ÷ 490 = 685 ÷ 525","D":"180 ÷ 140 = 300 ÷ 210","E":"315 ÷ 225 = 180 ÷ 150"}'::jsonb,
  'B',
  'Samakan bentuk paling sederhana: 120 ÷ 90 = 4/3 dan 340 ÷ 255 = 4/3, jadi sama. Cara cepat: bandingkan rasio sederhananya, atau kalikan silang a × d dengan b × c (120 × 255 = 30600 dan 90 × 340 = 30600). Pilihan lain rasio kedua sisinya berbeda.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  469,
  'TIU',
  'Berhitung',
  'sedang',
  'Pak Hasan mengelola dua toko elektronik. Ia ingin jumlah seluruh kabel di Toko A sama dengan Toko B, meski jumlah kotak dan kabel per kotak berbeda. Pasangan perkalian manakah yang menunjukkan jumlah kabel yang sama?',
  NULL,
  '{"A":"140 × 342 = 279 × 163","B":"210 × 554 = 267 × 439","C":"180 × 270 = 360 × 135","D":"110 × 261 = 173 × 157","E":"140 × 398 = 175 × 334"}'::jsonb,
  'C',
  'Hitung kedua sisi: 180 × 270 = 48.600 dan 360 × 135 = 48.600, jadi sama. Cara cepat: cek angka satuan dan perkiraan besarnya dulu. Pilihan lain hasil kedua sisinya berbeda: 210 × 554 = 116.340 ≠ 267 × 439 = 117.213; 140 × 398 = 55.720 ≠ 175 × 334 = 58.450.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  470,
  'TIU',
  'Berhitung',
  'sedang',
  'Bu Dewi mengelola dua sekolah dasar. Ia ingin memastikan jumlah buku tulis yang diterima tiap siswa di Sekolah A sama dengan Sekolah B, setelah total buku dibagi rata. Pasangan pembagian manakah yang menghasilkan nilai yang sama?',
  NULL,
  '{"A":"595 ÷ 425 = 330 ÷ 225","B":"450 ÷ 375 = 260 ÷ 225","C":"375 ÷ 225 = 190 ÷ 120","D":"440 ÷ 275 = 470 ÷ 275","E":"560 ÷ 400 = 245 ÷ 175"}'::jsonb,
  'E',
  'Samakan bentuk paling sederhana: 560 ÷ 400 = 7/5 dan 245 ÷ 175 = 7/5, jadi sama. Cara cepat: bandingkan rasio sederhananya, atau kalikan silang a × d dengan b × c (560 × 175 = 98000 dan 400 × 245 = 98000). Pilihan lain rasio kedua sisinya berbeda.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  471,
  'TIU',
  'Berhitung',
  'sedang',
  'Bu Maya mengelola dua percetakan. Ia ingin jumlah seluruh lembar kertas di Percetakan A sama dengan Percetakan B, meski jumlah rim dan lembar per rim berbeda. Pasangan perkalian manakah yang menunjukkan jumlah lembar yang sama?',
  NULL,
  '{"A":"160 × 292 = 365 × 128","B":"140 × 259 = 240 × 143","C":"155 × 387 = 107 × 576","D":"125 × 592 = 404 × 189","E":"125 × 221 = 334 × 78"}'::jsonb,
  'A',
  'Hitung kedua sisi: 160 × 292 = 46.720 dan 365 × 128 = 46.720, jadi sama. Cara cepat: cek angka satuan dan perkiraan besarnya dulu. Pilihan lain hasil kedua sisinya berbeda: 140 × 259 = 36.260 ≠ 240 × 143 = 34.320; 155 × 387 = 59.985 ≠ 107 × 576 = 61.632.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  472,
  'TIU',
  'Berhitung',
  'sedang',
  'Pak Fajar mengelola dua kelompok tani. Ia ingin memastikan jumlah bibit yang diterima tiap petani di Kelompok A sama dengan Kelompok B, setelah total bibit dibagi rata. Pasangan pembagian manakah yang menghasilkan nilai yang sama?',
  NULL,
  '{"A":"800 ÷ 500 = 790 ÷ 475","B":"405 ÷ 315 = 765 ÷ 595","C":"225 ÷ 125 = 870 ÷ 500","D":"420 ÷ 300 = 230 ÷ 175","E":"200 ÷ 150 = 210 ÷ 135"}'::jsonb,
  'B',
  'Samakan bentuk paling sederhana: 405 ÷ 315 = 9/7 dan 765 ÷ 595 = 9/7, jadi sama. Cara cepat: bandingkan rasio sederhananya, atau kalikan silang a × d dengan b × c (405 × 595 = 240975 dan 315 × 765 = 240975). Pilihan lain rasio kedua sisinya berbeda.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  473,
  'TIU',
  'Berhitung',
  'sedang',
  'Bu Sinta, pengelola dua dapur Satuan Pelayanan Pemenuhan Gizi, ingin memastikan jumlah seluruh porsi makanan di Dapur A sama dengan Dapur B, meski jumlah gelombang masak dan porsi per gelombang berbeda. Pasangan perkalian manakah yang menunjukkan jumlah yang sama?',
  NULL,
  '{"A":"160 × 537 = 181 × 476","B":"395 × 537 = 542 × 393","C":"270 × 201 = 408 × 134","D":"215 × 327 = 201 × 353","E":"240 × 362 = 160 × 543"}'::jsonb,
  'E',
  'Hitung kedua sisi: 240 × 362 = 86.880 dan 160 × 543 = 86.880. jadi sama. Cara cepat: cek angka satuan dan perkiraan besarnya dulu untuk mencoret pengecoh.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  474,
  'TIU',
  'Berhitung',
  'sedang',
  'Pak Teguh, petugas BPBD, ingin memastikan jumlah paket logistik yang diterima tiap keluarga di Posko A sama dengan Posko B, setelah total paket dibagi rata. Pasangan pembagian manakah yang menghasilkan nilai yang sama?',
  NULL,
  '{"A":"360 ÷ 225 = 640 ÷ 390","B":"150 ÷ 125 = 300 ÷ 240","C":"640 ÷ 400 = 360 ÷ 225","D":"150 ÷ 125 = 270 ÷ 215","E":"385 ÷ 275 = 525 ÷ 365"}'::jsonb,
  'C',
  'Sederhanakan: 640 ÷ 400 = 8/5 dan 360 ÷ 225 = 8/5, jadi sama. Pengecoh hanya berbeda tipis pada salah satu angka.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  475,
  'TIU',
  'Berhitung',
  'sedang',
  'Bu Lestari, kepala dua puskesmas pembantu, ingin jumlah seluruh dosis vaksin di Puskesmas A sama dengan Puskesmas B, meski jumlah kotak dan dosis per kotak berbeda. Pasangan perkalian manakah yang menunjukkan jumlah yang sama?',
  NULL,
  '{"A":"370 × 453 = 333 × 506","B":"210 × 432 = 482 × 191","C":"260 × 264 = 655 × 106","D":"135 × 383 = 193 × 266","E":"300 × 222 = 148 × 450"}'::jsonb,
  'E',
  'Hitung kedua sisi: 300 × 222 = 66.600 dan 148 × 450 = 66.600. jadi sama. Cara cepat: cek angka satuan dan perkiraan besarnya dulu untuk mencoret pengecoh.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  476,
  'TIU',
  'Berhitung',
  'sedang',
  'Pak Raka, pengelola dua balai pelatihan, ingin memastikan jumlah jam latihan yang diterima tiap peserta di Balai A sama dengan Balai B, setelah total jam dibagi rata. Pasangan pembagian manakah yang menghasilkan nilai yang sama?',
  NULL,
  '{"A":"450 ÷ 350 = 270 ÷ 205","B":"225 ÷ 175 = 765 ÷ 605","C":"225 ÷ 175 = 405 ÷ 325","D":"440 ÷ 320 = 880 ÷ 650","E":"520 ÷ 325 = 560 ÷ 350"}'::jsonb,
  'E',
  'Sederhanakan: 520 ÷ 325 = 8/5 dan 560 ÷ 350 = 8/5, jadi sama. Pengecoh hanya berbeda tipis pada salah satu angka.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  477,
  'TIU',
  'Deret Angka',
  'sedang',
  'Tentukan angka berikutnya: 2, 5, 11, 23, 47,...',
  NULL,
  '{"A":"91","B":"93","C":"95","D":"97","E":"99"}'::jsonb,
  'C',
  'Polanya x2 terus +1: 2 jadi 5, 5 jadi 11, 11 jadi 23, 23 jadi 47, maka 47 jadi 95.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  478,
  'TIU',
  'Deret Angka',
  'sedang',
  'Tentukan angka berikutnya: 1, 2, 4, 7, 11, 16,...',
  NULL,
  '{"A":"20","B":"21","C":"22","D":"23","E":"24"}'::jsonb,
  'C',
  'Selisihnya 1, 2, 3, 4, 5, jadi selisih berikutnya 6. 16 + 6 = 22.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  479,
  'TIU',
  'Deret Angka',
  'sedang',
  'Tentukan huruf berikutnya: A, C, F, J,...',
  NULL,
  '{"A":"O","B":"N","C":"Q","D":"R","E":"P"}'::jsonb,
  'A',
  'A=1, C=3, F=6, J=10 (selisih 2, 3, 4). Berikutnya 10 + 5 = 15, yaitu huruf O.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  480,
  'TIU',
  'Deret Angka',
  'sedang',
  'Tentukan angka berikutnya: 2, 5, 4, 8, 6, 11, 8,...',
  NULL,
  '{"A":"12","B":"13","C":"14","D":"15","E":"16"}'::jsonb,
  'C',
  'Pisahkan posisi ganjil (2, 4, 6, 8) dan genap (5, 8, 11,...). Genap naik 3, jadi 11 + 3 = 14.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  481,
  'TIU',
  'Deret Angka',
  'sedang',
  'Tentukan angka berikutnya: 720, 360, 120, 30,...',
  NULL,
  '{"A":"4","B":"5","C":"6","D":"8","E":"10"}'::jsonb,
  'C',
  'Dibagi 2, 3, 4, terus 5: 30 ÷ 5 = 6.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  482,
  'TIU',
  'Deret Angka',
  'sedang',
  'Tentukan angka berikutnya: 5, 6, 8, 11, 15, 20,...',
  NULL,
  '{"A":"24","B":"25","C":"26","D":"27","E":"28"}'::jsonb,
  'C',
  'Selisihnya 1, 2, 3, 4, 5, terus 6. 20 + 6 = 26.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  483,
  'TIU',
  'Deret Angka',
  'sedang',
  'Tentukan angka berikutnya: 3, 6, 12, 24, 48,...',
  NULL,
  '{"A":"84","B":"96","C":"108","D":"72","E":"120"}'::jsonb,
  'B',
  'Setiap suku dikali 2. 48 x 2 = 96.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  484,
  'TIU',
  'Deret Angka',
  'sedang',
  '2, 6, 18, 54,...',
  NULL,
  '{"A":"108","B":"126","C":"162","D":"180","E":"216"}'::jsonb,
  'C',
  'Dikali 3 tiap suku: 54 x 3 = 162.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  485,
  'TIU',
  'Deret Angka',
  'sedang',
  '3, 5, 9, 15, 23,...',
  NULL,
  '{"A":"31","B":"33","C":"35","D":"37","E":"29"}'::jsonb,
  'B',
  'Selisih naik 2,4,6,8, lalu 10: 23 + 10 = 33.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  486,
  'TIU',
  'Deret Angka',
  'sedang',
  '1, 4, 9, 16, 25,...',
  NULL,
  '{"A":"30","B":"34","C":"36","D":"49","E":"32"}'::jsonb,
  'C',
  'Bilangan kuadrat: 6 x 6 = 36.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  487,
  'TIU',
  'Deret Angka',
  'sedang',
  '5, 10, 20, 40,...',
  NULL,
  '{"A":"50","B":"60","C":"80","D":"100","E":"45"}'::jsonb,
  'C',
  'Dikali 2.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  488,
  'TIU',
  'Deret Angka',
  'sedang',
  '100, 95, 85, 70, 50,...',
  NULL,
  '{"A":"35","B":"30","C":"25","D":"20","E":"15"}'::jsonb,
  'C',
  'Selisih -5, -10, -15, -20, lalu -25.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  489,
  'TIU',
  'Deret Angka',
  'sedang',
  '2, 3, 5, 9, 17,...',
  NULL,
  '{"A":"25","B":"31","C":"33","D":"35","E":"29"}'::jsonb,
  'C',
  'Selisih 1, 2, 4, 8, lalu 16: 17 + 16 = 33.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  490,
  'TIU',
  'Deret Angka',
  'sedang',
  '1, 2, 6, 24, 120,...',
  NULL,
  '{"A":"240","B":"480","C":"600","D":"720","E":"840"}'::jsonb,
  'D',
  'Dikali 2, 3, 4, 5, lalu 6: 120 x 6 = 720.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  491,
  'TIU',
  'Deret Angka',
  'sedang',
  '4, 6, 10, 18, 34,...',
  NULL,
  '{"A":"50","B":"58","C":"64","D":"66","E":"68"}'::jsonb,
  'D',
  'Selisih 2, 4, 8, 16, lalu 32: 34 + 32 = 66.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  492,
  'TIU',
  'Deret Angka',
  'sedang',
  '3, 6, 11, 18, 27,...',
  NULL,
  '{"A":"36","B":"37","C":"38","D":"40","E":"42"}'::jsonb,
  'C',
  'Selisih 3, 5, 7, 9, lalu 11: 27 + 11 = 38.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  493,
  'TIU',
  'Deret Angka',
  'sedang',
  '2, 4, 12, 48, 240,...',
  NULL,
  '{"A":"480","B":"720","C":"1200","D":"1440","E":"960"}'::jsonb,
  'D',
  'Rasio 2, 3, 4, 5, lalu 6: 240 x 6 = 1440.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  494,
  'TIU',
  'Deret Angka',
  'sedang',
  '2, 3, 5, 8, 13, 21,...',
  NULL,
  '{"A":"29","B":"31","C":"34","D":"36","E":"42"}'::jsonb,
  'C',
  'Tiap suku adalah jumlah dua suku sebelumnya: 13 + 21 = 34.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  495,
  'TIU',
  'Deret Angka',
  'sedang',
  '3, 7, 16, 35, 74,...',
  NULL,
  '{"A":"151","B":"153","C":"155","D":"157","E":"149"}'::jsonb,
  'A',
  'Pola x2 + 1, + 2, + 3...: 74 x 2 + 3 = 151.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  496,
  'TIU',
  'Deret Angka',
  'sedang',
  '2, 6, 12, 20, 30,...',
  NULL,
  '{"A":"40","B":"42","C":"44","D":"46","E":"48"}'::jsonb,
  'B',
  'Selisih naik 4, 6, 8, 10, 12: 30 + 12 = 42.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  497,
  'TIU',
  'Deret Angka',
  'sedang',
  'Perhatikan pola angka pada kotak berikut!
8 | -5 | 17
2 | 1 | -3
5 | -2 | x
Nilai x yang tepat adalah...',
  NULL,
  '{"A":"5","B":"6","C":"7","D":"8","E":"9"}'::jsonb,
  'C',
  'Baris ke-3 adalah rata-rata baris 1 dan 2: (8+2):2 = 5, (-5+1):2 = -2, jadi x = (17-3):2 = 7.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  498,
  'TIU',
  'Deret Angka',
  'sedang',
  'Perhatikan tabel berikut!
Urutan ke- | Nilai
7 | 61
8 | 55
9 | 49
10 | 43
11 | 37
... |...
Jika berlanjut dengan aturan yang sama, nilai pada urutan ke-40 adalah...',
  NULL,
  '{"A":"-125","B":"-131","C":"-137","D":"-143","E":"-149"}'::jsonb,
  'C',
  'Turun 6 tiap urutan: 61 - 6 x (40 - 7) = 61 - 198 = -137.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  499,
  'TIU',
  'Deret Angka',
  'sedang',
  '3, 4, 7, 12, 19, 28,...',
  NULL,
  '{"A":"37","B":"38","C":"39","D":"40","E":"41"}'::jsonb,
  'C',
  'Selisih 1, 3, 5, 7, 9, lalu 11: 28 + 11 = 39.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  500,
  'TIU',
  'Deret Angka',
  'sedang',
  '2, 6, 12, 20, 30, 42,...',
  NULL,
  '{"A":"54","B":"56","C":"58","D":"52","E":"60"}'::jsonb,
  'B',
  'Pola n(n+1): 7 x 8 = 56.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  501,
  'TIU',
  'Deret Angka',
  'sedang',
  '1, 1, 2, 3, 5, 8,... Suku ke-10 adalah...',
  NULL,
  '{"A":"34","B":"55","C":"89","D":"44","E":"65"}'::jsonb,
  'B',
  'Fibonacci: 1,1,2,3,5,8,13,21,34,55.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  502,
  'TIU',
  'Deret Angka',
  'sedang',
  'Perhatikan deret berikut: 5, 3, 10, 6, 20, 12, 40,... Suku kedelapan deret tersebut adalah....',
  NULL,
  '{"A":"20","B":"24","C":"36","D":"48","E":"30"}'::jsonb,
  'B',
  'Suku ganjil: 5, 10, 20, 40 (dikali 2). Suku genap: 3, 6, 12, lalu 24.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  503,
  'TIU',
  'Deret Angka',
  'sedang',
  'Perhatikan deret berikut: 1, 2, 5, 14, 41,... Suku berikutnya adalah....',
  NULL,
  '{"A":"122","B":"123","C":"121","D":"125","E":"124"}'::jsonb,
  'A',
  'Pola: dikali 3 lalu dikurangi 1. 41 x 3 - 1 = 122.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  504,
  'TIU',
  'Deret Angka',
  'sedang',
  '4, 7, 8, 14, 16, 28, 32,...,....',
  NULL,
  '{"A":"52","B":"56","C":"60","D":"64","E":"48"}'::jsonb,
  'B',
  'Dua deret berselang-seling: 4, 8, 16, 32 (×2) dan 7, 14, 28, (56) (×2). Suku ke-8 = 56.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  505,
  'TIU',
  'Deret Angka',
  'sedang',
  '1, 3, 8, 20, 48,....',
  NULL,
  '{"A":"104","B":"108","C":"112","D":"116","E":"120"}'::jsonb,
  'C',
  'Tiap suku = 2 × suku sebelumnya + 2 pangkat (n−2): 3 = 2×1+1; 8 = 2×3+2; 20 = 2×8+4; 48 = 2×20+8; berikutnya 2×48+16 = 112.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  506,
  'TIU',
  'Deret Angka',
  'sedang',
  '6, 12, 10, 20, 18, 36,....',
  NULL,
  '{"A":"34","B":"38","C":"72","D":"30","E":"40"}'::jsonb,
  'A',
  'Pola berulang: ×2 lalu −2. 36 − 2 = 34.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  507,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan tabel berikut!
URUTAN KE | NILAI
5 | 27
8 | 39
12 | 55
16 | 71
Jika pola pada setiap baris sama, nilai pada suku ke-20 adalah...',
  NULL,
  '{"A":"87","B":"89","C":"91","D":"93","E":"95"}'::jsonb,
  'A',
  'Pengali: 12 ÷ 3 = 4 dan 16 ÷ 4 = 4. b = 27 − 4 × 5 = 7. U₂₀ = 4 × 20 + 7 = 87.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  508,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan tabel berikut!
URUTAN KE | NILAI
4 | 19
7 | 37
11 | 61
15 | 85
Jika pola pada setiap baris sama, nilai pada suku ke-9 adalah...',
  NULL,
  '{"A":"43","B":"46","C":"49","D":"52","E":"55"}'::jsonb,
  'C',
  'Pengali: 18 ÷ 3 = 6 dan 24 ÷ 4 = 6. b = 19 − 24 = −5. U₉ = 6 × 9 − 5 = 49.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  509,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan tabel berikut!
URUTAN KE | NILAI
2 | 11
5 | 20
9 | 32
12 | 41
Nilai pada suku ke-30 adalah...',
  NULL,
  '{"A":"90","B":"93","C":"95","D":"98","E":"100"}'::jsonb,
  'C',
  'Pengali: 9 ÷ 3 = 3. b = 11 − 6 = 5. U₃₀ = 3 × 30 + 5 = 95.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  510,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan tabel berikut!
URUTAN KE | NILAI
3 | 10
6 | 19
10 | 31
14 | 43
Nilai pada suku ke-25 adalah...',
  NULL,
  '{"A":"72","B":"74","C":"76","D":"78","E":"80"}'::jsonb,
  'C',
  'Pengali: 9 ÷ 3 = 3 dan 12 ÷ 4 = 3. b = 10 − 9 = 1. U₂₅ = 75 + 1 = 76.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  511,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan tabel berikut!
URUTAN KE | NILAI
1 | 6
4 | 18
7 | 30
10 | 42
Nilai 98 berada pada urutan ke...',
  NULL,
  '{"A":"22","B":"23","C":"24","D":"25","E":"26"}'::jsonb,
  'C',
  'Pengali: 12 ÷ 3 = 4. b = 6 − 4 = 2. 4n + 2 = 98, n = 24.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  512,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan tabel berikut!
URUTAN KE | NILAI
2 | 9
9 | 30
Jika pola linear, nilai pada urutan ke-6 adalah...',
  NULL,
  '{"A":"18","B":"19","C":"21","D":"24","E":"27"}'::jsonb,
  'C',
  'Pengali: (30 − 9) ÷ (9 − 2) = 3. Loncat dari urutan 2: 9 + 3 × (6 − 2) = 21.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  513,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan tabel berikut!
URUTAN KE | NILAI
1 | 47
3 | 41
6 | 32
10 | 20
Nilai pada suku ke-15 adalah...',
  NULL,
  '{"A":"2","B":"5","C":"8","D":"11","E":"14"}'::jsonb,
  'B',
  'Pengali: −6 ÷ 2 = −3. b = 47 + 3 = 50. U₁₅ = 50 − 45 = 5.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  514,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan tabel berikut!
URUTAN KE | NILAI
3 | 14
8 | 34
Jika pola linear, nilai pada urutan ke-20 adalah...',
  NULL,
  '{"A":"78","B":"80","C":"82","D":"84","E":"86"}'::jsonb,
  'C',
  'Pengali: 20 ÷ 5 = 4. Loncat dari urutan 3: 14 + 4 × 17 = 82.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  515,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan tabel berikut!
URUTAN KE | NILAI
5 | 27
8 | 39
12 | 55
16 | 71
Nilai 127 berada pada urutan ke...',
  NULL,
  '{"A":"28","B":"29","C":"30","D":"31","E":"32"}'::jsonb,
  'C',
  'Rumus Uₙ = 4n + 7. 4n + 7 = 127, 4n = 120, n = 30.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  516,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan tabel berikut!
URUTAN KE | NILAI
1 | 3
2 | 6
3 | 11
4 | 18
Nilai pada suku ke-10 adalah...',
  NULL,
  '{"A":"98","B":"100","C":"102","D":"104","E":"110"}'::jsonb,
  'C',
  'Selisih nilai 3, 5, 7 nggak tetap, selisih tingkat dua 2 jadi a = 1. Kurangi n²: 2, 2, 2, 2. Uₙ = n² + 2, U₁₀ = 102.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  517,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan tabel berikut!
URUTAN KE | NILAI
1 | 3
2 | 9
3 | 19
4 | 33
Nilai pada suku ke-8 adalah...',
  NULL,
  '{"A":"119","B":"127","C":"129","D":"131","E":"135"}'::jsonb,
  'C',
  'Selisih 6, 10, 14, tingkat dua 4 jadi a = 2. Kurangi 2n²: sisa 1. Uₙ = 2n² + 1, U₈ = 129.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  518,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan tabel berikut!
URUTAN KE | NILAI
2 | 13
6 | 29
10 | 45
Nilai 101 berada pada urutan ke...',
  NULL,
  '{"A":"22","B":"24","C":"25","D":"26","E":"Tidak ada pada pola"}'::jsonb,
  'B',
  'Pengali: 16 ÷ 4 = 4. b = 13 − 8 = 5. 4n + 5 = 101, n = 24. Cek: 4 × 24 + 5 = 101, jadi urutan ke-24.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  519,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan tabel berikut!
URUTAN KE | NILAI
3 | 14
6 | 23
10 | 35
15 | 50
Jika pola pada setiap baris sama, maka nilai pada suku ke-18 adalah...',
  NULL,
  '{"A":"59","B":"57","C":"54","D":"62","E":"65"}'::jsonb,
  'A',
  'Selisih urutan 3, 4, 5 dan selisih nilai 9, 12, 15: pengali 9 ÷ 3 = 12 ÷ 4 = 15 ÷ 5 = 3. b = 14 − 3 × 3 = 5. U₁₈ = 3 × 18 + 5 = 59.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  520,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan tabel berikut!
URUTAN KE | NILAI
2 | 17
5 | 38
9 | 66
13 | 94
Jika pola pada setiap baris sama, maka nilai pada suku ke-15 adalah...',
  NULL,
  '{"A":"98","B":"101","C":"105","D":"108","E":"112"}'::jsonb,
  'D',
  'Pengali: 21 ÷ 3 = 7 dan 28 ÷ 4 = 7. b = 17 − 14 = 3. U₁₅ = 7 × 15 + 3 = 108.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  521,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan tabel berikut!
URUTAN KE | NILAI
4 | 26
6 | 36
10 | 56
15 | 81
Jika pola pada setiap baris sama, maka nilai pada suku ke-25 adalah...',
  NULL,
  '{"A":"126","B":"131","C":"136","D":"121","E":"141"}'::jsonb,
  'B',
  'Pengali: 10 ÷ 2 = 5, 20 ÷ 4 = 5, 25 ÷ 5 = 5. b = 26 − 20 = 6. U₂₅ = 5 × 25 + 6 = 131.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  522,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan tabel berikut!
URUTAN KE | NILAI
3 | 7
5 | 13
9 | 25
12 | 34
Jika pola pada setiap baris sama, maka nilai pada suku ke-40 adalah...',
  NULL,
  '{"A":"112","B":"115","C":"120","D":"122","E":"118"}'::jsonb,
  'E',
  'Pengali: 6 ÷ 2 = 3 dan 12 ÷ 4 = 3. b = 7 − 9 = −2. U₄₀ = 3 × 40 − 2 = 118. Jangan lupa b bisa negatif.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  523,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan tabel berikut!
URUTAN KE | NILAI
2 | 88
4 | 80
7 | 68
11 | 52
Jika pola pada setiap baris sama, maka nilai pada suku ke-18 adalah...',
  NULL,
  '{"A":"16","B":"20","C":"24","D":"28","E":"32"}'::jsonb,
  'C',
  'Nilai turun, pengali negatif: −8 ÷ 2 = −4 dan −12 ÷ 3 = −4. b = 88 + 8 = 96. U₁₈ = 96 − 4 × 18 = 24.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  524,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan matriks angka berikut!
3 | 8 | 27
5 | 6 | 33
7 | 4 |?
Angka pengganti tanda tanya (?) adalah...',
  NULL,
  '{"A":"26","B":"28","C":"29","D":"31","E":"34"}'::jsonb,
  'D',
  'Coretan cepat 27 jauh lebih besar dari 3 + 8, jadi curigai KALI
3 × 8 = 24 → 27 − 24 = +3
5 × 6 = 30 → 33 − 30 = +3 ✓ sisa sama, rumus ketemu
Baris?: 7 × 4 = 28 → 28 + 3 = 31
Rumus: kiri × tengah + 3
Sisa yang sama di dua baris = rumus benar. Jangan hitung baris? dulu.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  525,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan matriks angka berikut!
4 | 5 | 21
6 | 3 | 39
8 | 2 |?
Angka pengganti tanda tanya (?) adalah...',
  NULL,
  '{"A":"64","B":"66","C":"68","D":"70","E":"72"}'::jsonb,
  'B',
  'Coretan cepat Angka kiri kecil, hasil besar → curigai PANGKAT 2
4² = 16 → 21 − 16 = 5 = angka tengah ✓
6² = 36 → 39 − 36 = 3 = angka tengah ✓
Baris?: 8² = 64 → 64 + 2 = 66
Rumus: kiri² + tengah
Hafal kuadrat 1 sampai 12: 1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  526,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan matriks angka berikut!
2 | 5 | 29
4 | 3 | 25
6 | 7 |?
Angka pengganti tanda tanya (?) adalah...',
  NULL,
  '{"A":"85","B":"86","C":"91","D":"97","E":"100"}'::jsonb,
  'A',
  'Coretan cepat 2² = 4, 5² = 25 → 4 + 25 = 29 ✓
4² = 16, 3² = 9 → 16 + 9 = 25 ✓
Baris?: 6² = 36, 7² = 49
36 + 49 = 85
Rumus: kiri² + tengah²
Hasil nggak pernah lebih kecil dari kuadrat angka terbesarnya: 85 > 49.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  527,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan matriks angka berikut!
3 | 7 | 11
5 | 6 | 19
7 | 4 |?
Angka pengganti tanda tanya (?) adalah...',
  NULL,
  '{"A":"10","B":"11","C":"13","D":"15","E":"17"}'::jsonb,
  'E',
  'Coretan cepat 3 × 7 = 21 → 21 − 11 = 10 = 3 + 7 ✓
5 × 6 = 30 → 30 − 19 = 11 = 5 + 6 ✓
Selisih hasil kali dan hasil = jumlah dua angkanya
Baris?: 7 × 4 = 28 → 28 − (7 + 4) = 17
Rumus: kiri × tengah − (kiri + tengah)
Kalau sisa (hasil kali − hasil) berubah tiap baris, cek apakah sisanya sama dengan jumlah kiri + tengah.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  528,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan matriks angka berikut!
3 | 2 | 10
5 | 4 | 26
4 | 3 |?
Angka pengganti tanda tanya (?) adalah...',
  NULL,
  '{"A":"15","B":"16","C":"17","D":"19","E":"21"}'::jsonb,
  'C',
  'Coretan cepat Angka tengah kecil tapi hasil besar → ada pangkat di tengah
10 − 2² = 6 = 2 × 3 ✓
26 − 4² = 10 = 2 × 5 ✓
Baris?: 2 × 4 = 8 → 8 + 3² = 8 + 9 = 17
Rumus: 2 × kiri + tengah²
Kurangi dulu kuadrat angka tengah, terus lihat sisanya berhubungan dengan angka kiri.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  529,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan matriks angka berikut!
2 | 3 | 11
4 | 2 | 14
5 | 3 |?
Angka pengganti tanda tanya (?) adalah...',
  NULL,
  '{"A":"20","B":"23","C":"24","D":"26","E":"29"}'::jsonb,
  'B',
  'Coretan cepat 2 × 3 = 6 → 11 − 6 = 5 = 2 + 3 ✓
4 × 2 = 8 → 14 − 8 = 6 = 4 + 2 ✓
Jalan pintas: (kiri + 1) × (tengah + 1) − 1
Baris?: 6 × 4 = 24 → 24 − 1 = 23
Rumus: kiri × tengah + kiri + tengah
Pasangan dengan soal sebelumnya: di sini hasil kali DITAMBAH jumlahnya, bukan dikurangi.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  530,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan matriks angka berikut!
3 | 5 | 4
6 | 2 | 7
18 | 10 |?
Angka pengganti tanda tanya (?) adalah...',
  NULL,
  '{"A":"11","B":"18","C":"24","D":"26","E":"28"}'::jsonb,
  'E',
  'Coretan cepat Baris: 3, 5, 4 → 6, 2, 7 → 18, 10 nggak nyambung ✗
Pindah baca KOLOM (atas ke bawah)
Kolom 1: 3 × 6 = 18 ✓
Kolom 2: 5 × 2 = 10 ✓
Kolom 3: 4 × 7 = 28
Rumus: atas × tengah = bawah (per kolom)
Cek baris 5 detik. Kalau nggak ada pola, langsung pindah ke kolom, jangan dipaksakan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  531,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan matriks angka berikut!
4 | 5 | 7
6 | 9 | 3
10 | 16 |?
Angka pengganti tanda tanya (?) adalah...',
  NULL,
  '{"A":"46","B":"49","C":"52","D":"56","E":"63"}'::jsonb,
  'A',
  'Coretan cepat Baris nggak nyambung → baca KOLOM
Kolom 1: 4² = 16 → 16 − 6 = 10 ✓
Kolom 2: 5² = 25 → 25 − 9 = 16 ✓
Kolom 3: 7² = 49 → 49 − 3 = 46
Rumus: atas² − tengah = bawah (per kolom)
Versi balik: bawah + tengah = atas². Cek dengan 10 + 6 = 16 = 4² ✓.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  532,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan matriks angka berikut!
3 | 4 | 13
2 | 5 | 11
6 |? | 25
Angka pengganti tanda tanya (?) adalah...',
  NULL,
  '{"A":"2","B":"3","C":"4","D":"5","E":"6"}'::jsonb,
  'C',
  'Coretan cepat 3 × 4 = 12 → 13 − 12 = +1
2 × 5 = 10 → 11 − 10 = +1 ✓
Tanda tanya ada di tengah → balik rumusnya:
(25 − 1) ÷ 6 = 24 ÷ 6 = 4
Rumus: kiri × tengah + 1
Tanda tanya nggak selalu di pojok kanan bawah. Balik operasinya: + jadi −, × jadi ÷.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  533,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan matriks angka berikut!
2 | 3 | 5
3 | 5 | 22
4 | 6 |?
Angka pengganti tanda tanya (?) adalah...',
  NULL,
  '{"A":"52","B":"56","C":"57","D":"58","E":"64"}'::jsonb,
  'D',
  'Coretan cepat 2 → 5 dan 3 → 22: lonjakannya besar → curigai PANGKAT 3
2³ = 8 → 8 − 3 = 5 ✓
3³ = 27 → 27 − 5 = 22 ✓
Baris?: 4³ = 64 → 64 − 6 = 58
Rumus: kiri³ − tengah
Hafal pangkat 3: 1, 8, 27, 64, 125, 216.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  534,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan tabel angka berikut!
12 | 8 | 5 | 20
9 | 3 | 4 | 24
15 | 6 | 2 |?
Angka pengganti tanda tanya (?) adalah...',
  NULL,
  '{"A":"14","B":"18","C":"21","D":"24","E":"27"}'::jsonb,
  'B',
  'Coretan cepat Baris 1: 12, 8, 5 → 20
12 − 8 = 4, lalu 4 × 5 = 20 ✓
Baris 2: 9 − 3 = 6, lalu 6 × 4 = 24 ✓ rumus ketemu
Baris?: 15 − 6 = 9, lalu 9 × 2 = 18
Rumus: (kolom 1 − kolom 2) × kolom 3 = kolom 4
Hasil (20) jauh lebih besar dari angka ketiga (5), jadi curigai KALI. Uji di dua baris lengkap dulu.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  535,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan tabel angka berikut!
3 | 4 | 2 | 14
5 | 1 | 3 | 18
6 | 2 | 5 |?
Angka pengganti tanda tanya (?) adalah...',
  NULL,
  '{"A":"35","B":"38","C":"40","D":"42","E":"45"}'::jsonb,
  'C',
  'Coretan cepat Baris 1: 3, 4, 2 → 14
3 + 4 = 7, lalu 7 × 2 = 14 ✓
Baris 2: 5 + 1 = 6, lalu 6 × 3 = 18 ✓ rumus ketemu
Baris?: 6 + 2 = 8, lalu 8 × 5 = 40
Rumus: (kolom 1 + kolom 2) × kolom 3 = kolom 4
Jumlahkan dua angka pertama dulu, baru kali angka ketiga. Uji di dua baris lengkap dulu.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  536,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan tabel angka berikut!
4 | 5 | 3 | 17
6 | 3 | 2 | 16
7 | 4 | 5 |?
Angka pengganti tanda tanya (?) adalah...',
  NULL,
  '{"A":"21","B":"22","C":"23","D":"25","E":"28"}'::jsonb,
  'C',
  'Coretan cepat Baris 1: 4, 5, 3 → 17
4 × 5 = 20, lalu 20 − 3 = 17 ✓
Baris 2: 6 × 3 = 18, lalu 18 − 2 = 16 ✓ rumus ketemu
Baris?: 7 × 4 = 28, lalu 28 − 5 = 23
Rumus: kolom 1 × kolom 2 − kolom 3 = kolom 4
Hasil mendekati hasil kali dua angka pertama, jadi angka ketiga dikurangkan. Uji di dua baris lengkap dulu.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  537,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan tabel angka berikut!
2 | 3 | 4 | 14
5 | 2 | 6 | 17
3 | 4 | 5 |?
Angka pengganti tanda tanya (?) adalah...',
  NULL,
  '{"A":"20","B":"23","C":"27","D":"35","E":"40"}'::jsonb,
  'B',
  'Coretan cepat Baris 1: 2, 3, 4 → 14
3 × 4 = 12, lalu 2 + 12 = 14 ✓
Baris 2: 2 × 6 = 12, lalu 5 + 12 = 17 ✓ rumus ketemu
Baris?: 4 × 5 = 20, lalu 3 + 20 = 23
Rumus: kolom 1 + (kolom 2 × kolom 3) = kolom 4
Jebakan urutan operasi: kali dulu, baru tambah. (3 + 4) × 5 = 35 itu salah. Uji di dua baris lengkap dulu.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  538,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan tabel angka berikut!
12 | 3 | 5 | 9
20 | 4 | 2 | 7
18 | 6 | 8 |?
Angka pengganti tanda tanya (?) adalah...',
  NULL,
  '{"A":"10","B":"11","C":"13","D":"14","E":"26"}'::jsonb,
  'B',
  'Coretan cepat Baris 1: 12, 3, 5 → 9
12 ÷ 3 = 4, lalu 4 + 5 = 9 ✓
Baris 2: 20 ÷ 4 = 5, lalu 5 + 2 = 7 ✓ rumus ketemu
Baris?: 18 ÷ 6 = 3, lalu 3 + 8 = 11
Rumus: (kolom 1 ÷ kolom 2) + kolom 3 = kolom 4
Angka pertama habis dibagi angka kedua di tiap baris, itu tanda pola bagi. Uji di dua baris lengkap dulu.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  539,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan tabel angka berikut!
10 | 4 | 3 | 18
8 | 2 | 5 | 30
14 | 5 |? | 27
Angka pengganti tanda tanya (?) adalah...',
  NULL,
  '{"A":"2","B":"3","C":"4","D":"5","E":"6"}'::jsonb,
  'B',
  'Coretan cepat Baris 1: (10 − 4) × 3 = 6 × 3 = 18 ✓
Baris 2: (8 − 2) × 5 = 6 × 5 = 30 ✓ rumus ketemu
Rumus: (kolom 1 − kolom 2) × kolom 3 = kolom 4
Baris?: (14 − 5) ×? = 27
9 ×? = 27 →? = 27 ÷ 9 = 3
Sel kosong bukan di kolom terakhir: balik operasinya. Kali dibalik jadi bagi.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  540,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan tabel berikut!
KOLOM X | KOLOM Y
a | 23
6 | 38
11 | 63
b | 78
18 | 98
Nilai a + b adalah...',
  NULL,
  '{"A":"17","B":"18","C":"19","D":"20","E":"21"}'::jsonb,
  'A',
  'Coretan cepat Dua baris yang lengkap: (6, 38) dan (11, 63)
Pengali = (63 − 38) ÷ (11 − 6) = 25 ÷ 5 = 5
Tambahan = 38 − 5 × 6 = 8, jadi Y = 5X + 8
a: Y = 23, jadi a = (23 − 8) ÷ 5 = 3
b: Y = 78, jadi b = (78 − 8) ÷ 5 = 14
a + b = 3 + 14 = 17
Uji baris (18, 98): 5 × 18 + 8 = 98 ✓. Pengali juga bisa ditebak dari loncatan: Y loncat 25, X loncat 5.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  541,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan tabel berikut!
KOLOM X | KOLOM Y
2 | 10
5 | 19
a | 28
9 | b
12 | 40
Nilai a + b adalah...',
  NULL,
  '{"A":"36","B":"37","C":"39","D":"41","E":"43"}'::jsonb,
  'C',
  'Coretan cepat Dua baris yang lengkap: (2, 10) dan (5, 19)
Pengali = (19 − 10) ÷ (5 − 2) = 9 ÷ 3 = 3
Tambahan = 10 − 3 × 2 = 4, jadi Y = 3X + 4
a: Y = 28, jadi a = (28 − 4) ÷ 3 = 8
b: X = 9, jadi b = 3 × 9 + 4 = 31
a + b = 8 + 31 = 39
Uji baris (12, 40): 3 × 12 + 4 = 40 ✓. Pengali juga bisa ditebak dari loncatan: Y loncat 9, X loncat 3.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  542,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan tabel berikut!
KOLOM X | KOLOM Y
3 | 9
5 | a
6 | 21
8 | 29
12 | b
Nilai b − a adalah...',
  NULL,
  '{"A":"24","B":"26","C":"28","D":"30","E":"32"}'::jsonb,
  'C',
  'Coretan cepat Dua baris yang lengkap: (6, 21) dan (8, 29)
Pengali = (29 − 21) ÷ (8 − 6) = 8 ÷ 2 = 4
Tambahan = 21 − 4 × 6 = −3, jadi Y = 4X − 3
a: X = 5, jadi a = 4 × 5 − 3 = 17
b: X = 12, jadi b = 4 × 12 − 3 = 45
b − a = 45 − 17 = 28
Uji baris (8, 29): 4 × 8 − 3 = 29 ✓. Pengali juga bisa ditebak dari loncatan: Y loncat 8, X loncat 2.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  543,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan tabel berikut!
KOLOM X | KOLOM Y
4 | 42
a | 38
10 | 30
13 | 24
b | 14
Nilai a + b adalah...',
  NULL,
  '{"A":"22","B":"24","C":"26","D":"28","E":"30"}'::jsonb,
  'B',
  'Coretan cepat Dua baris yang lengkap: (4, 42) dan (10, 30)
Pengali = (30 − 42) ÷ (10 − 4) = −12 ÷ 6 = −2
Tambahan = 42 − (−2) × 4 = 50, jadi Y = −2X + 50
a: Y = 38, jadi a = (38 − 50) ÷ (−2) = 6
b: Y = 14, jadi b = (14 − 50) ÷ (−2) = 18
a + b = 6 + 18 = 24
Uji baris (13, 24): (−2) × 13 + 50 = 24 ✓. Pengali juga bisa ditebak dari loncatan: Y loncat −12, X loncat 6.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  544,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan tabel berikut!
KOLOM X | KOLOM Y
a | 19
4 | 25
7 | 43
b | 61
15 | 91
Nilai a × b adalah...',
  NULL,
  '{"A":"24","B":"28","C":"30","D":"33","E":"36"}'::jsonb,
  'C',
  'Coretan cepat Dua baris yang lengkap: (4, 25) dan (7, 43)
Pengali = (43 − 25) ÷ (7 − 4) = 18 ÷ 3 = 6
Tambahan = 25 − 6 × 4 = 1, jadi Y = 6X + 1
a: Y = 19, jadi a = (19 − 1) ÷ 6 = 3
b: Y = 61, jadi b = (61 − 1) ÷ 6 = 10
a × b = 3 × 10 = 30
Uji baris (15, 91): 6 × 15 + 1 = 91 ✓. Pengali juga bisa ditebak dari loncatan: Y loncat 18, X loncat 3.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  545,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan tabel berikut!
KOLOM X | KOLOM Y
1 | 7
4 | 13
a | 25
11 | b
13 | 31
Nilai a + b adalah...',
  NULL,
  '{"A":"35","B":"36","C":"37","D":"38","E":"39"}'::jsonb,
  'C',
  'Coretan cepat Dua baris yang lengkap: (1, 7) dan (4, 13)
Pengali = (13 − 7) ÷ (4 − 1) = 6 ÷ 3 = 2
Tambahan = 7 − 2 × 1 = 5, jadi Y = 2X + 5
a: Y = 25, jadi a = (25 − 5) ÷ 2 = 10
b: X = 11, jadi b = 2 × 11 + 5 = 27
a + b = 10 + 27 = 37
Uji baris (13, 31): 2 × 13 + 5 = 31 ✓. Pengali juga bisa ditebak dari loncatan: Y loncat 6, X loncat 3.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  546,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan matriks angka berikut!
29 | 41 | 43
31 | 37 |?
47 | 53 | 59
Angka pengganti tanda tanya (?) adalah...',
  NULL,
  '{"A":"60","B":"61","C":"63","D":"65","E":"62"}'::jsonb,
  'B',
  'Coretan cepat Semua kotak berisi bilangan prima, letaknya diacak
Urutkan yang ada: 29, 31, 37, 41, 43, 47, 53, 59
Selisih: 2, 6, 4, 2, 4, 6, 6
Prima sesudah 59 = 61
Pilihan 60, 63, 65, 62 bukan prima
Abaikan posisi baris dan kolom. Urutkan angkanya dulu, baru cari yang bolong.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  547,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan matriks angka berikut!
17 | 31 | 11
23 | 19 | 13
37 | 29 |?
Angka pengganti tanda tanya (?) adalah...',
  NULL,
  '{"A":"39","B":"41","C":"43","D":"47","E":"45"}'::jsonb,
  'B',
  'Coretan cepat Semua kotak berisi bilangan prima, letaknya diacak
Urutkan yang ada: 11, 13, 17, 19, 23, 29, 31, 37
Selisih: 2, 4, 2, 4, 6, 2, 6
Prima sesudah 37 = 41
Pilihan 39, 45 bukan prima
Pilihan 43 dan 47 memang prima, tapi bukan prima yang berurutan (41 terlewat)
Abaikan posisi baris dan kolom. Urutkan angkanya dulu, baru cari yang bolong.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  548,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan matriks angka berikut!
37 | 13 | 23
43 |? | 17
41 | 19 | 31
Angka pengganti tanda tanya (?) adalah...',
  NULL,
  '{"A":"27","B":"29","C":"33","D":"35","E":"39"}'::jsonb,
  'B',
  'Coretan cepat Semua kotak berisi bilangan prima, letaknya diacak
Urutkan yang ada: 13, 17, 19, 23, 31, 37, 41, 43
Selisih: 4, 2, 4, 8, 6, 4, 2
Prima di antara 23 dan 31 = 29
Pilihan 27, 33, 35, 39 bukan prima
Abaikan posisi baris dan kolom. Urutkan angkanya dulu, baru cari yang bolong.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  549,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan matriks angka berikut!
83 | 59 | 73
67 |? | 53
89 | 61 | 79
Angka pengganti tanda tanya (?) adalah...',
  NULL,
  '{"A":"69","B":"71","C":"75","D":"77","E":"81"}'::jsonb,
  'B',
  'Coretan cepat Semua kotak berisi bilangan prima, letaknya diacak
Urutkan yang ada: 53, 59, 61, 67, 73, 79, 83, 89
Selisih: 6, 2, 6, 6, 6, 4, 6
Prima di antara 67 dan 73 = 71
Pilihan 69, 75, 77, 81 bukan prima
Abaikan posisi baris dan kolom. Urutkan angkanya dulu, baru cari yang bolong.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  550,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan matriks angka berikut!
97 | 67 | 83
73 |? | 103
89 | 71 | 79
Angka pengganti tanda tanya (?) adalah...',
  NULL,
  '{"A":"99","B":"101","C":"105","D":"107","E":"109"}'::jsonb,
  'B',
  'Coretan cepat Semua kotak berisi bilangan prima, letaknya diacak
Urutkan yang ada: 67, 71, 73, 79, 83, 89, 97, 103
Selisih: 4, 2, 6, 4, 6, 8, 6
Prima di antara 97 dan 103 = 101
Pilihan 99, 105 bukan prima
Pilihan 107 dan 109 memang prima, tapi bukan prima yang berurutan (101 terlewat)
Abaikan posisi baris dan kolom. Urutkan angkanya dulu, baru cari yang bolong.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  551,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan matriks angka berikut!
11 | 2 | 19
5 |? | 13
17 | 3 | 23
Angka pengganti tanda tanya (?) adalah...',
  NULL,
  '{"A":"6","B":"7","C":"8","D":"9","E":"10"}'::jsonb,
  'B',
  'Coretan cepat Semua kotak berisi bilangan prima, letaknya diacak
Urutkan yang ada: 2, 3, 5, 11, 13, 17, 19, 23
Selisih: 1, 2, 6, 2, 4, 2, 4
Prima di antara 5 dan 11 = 7
Pilihan 6, 8, 9, 10 bukan prima
Abaikan posisi baris dan kolom. Urutkan angkanya dulu, baru cari yang bolong.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  552,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan matriks angka berikut!
5 | 3 | 22
6 | 4 | 32
7 | 2 |?
Angka pengganti tanda tanya (?) adalah....',
  NULL,
  '{"A":"45","B":"47","C":"49","D":"51","E":"43"}'::jsonb,
  'B',
  'Kolom 3 = (kolom 1)² − kolom 2: 25 − 3 = 22; 36 − 4 = 32; 49 − 2 = 47.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  553,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan matriks angka berikut!
3 | 4 | 25
5 | 12 | 169
8 | 15 |?
Angka pengganti tanda tanya (?) adalah....',
  NULL,
  '{"A":"253","B":"273","C":"305","D":"289","E":"233"}'::jsonb,
  'D',
  'Kolom 3 = (kolom 1)² + (kolom 2)²: 9 + 16 = 25; 25 + 144 = 169; 64 + 225 = 289.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  554,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan tabel berikut!
X | 2 | 4 | m | 6 | n
Y | 5 | 29 | 47 | 69 | 95
Jika semua pasangan mengikuti pola yang sama dan X bernilai positif, nilai m + n adalah....',
  NULL,
  '{"A":"10","B":"11","C":"12","D":"13","E":"14"}'::jsonb,
  'C',
  'Dari (2,5), (4,29), (6,69): selisih 24 lalu 40, selisih kedua 16 untuk langkah 2, jadi Y = 2X² − 3. Y = 47 → X = 5; Y = 95 → X = 7. m + n = 12.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  555,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan tabel berikut!
Urutan ke- | 1 | 2 | 3 | 4 | 5
Nilai | 2 | 7 | 14 | 23 | 34
Jika pola berlanjut, nilai pada urutan ke-12 adalah....',
  NULL,
  '{"A":"155","B":"165","C":"167","D":"169","E":"181"}'::jsonb,
  'C',
  'Selisih 5, 7, 9, 11 (selisih kedua 2) sehingga nilai = n² + 2n − 1. Untuk n = 12: 144 + 24 − 1 = 167.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  556,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan tabel berikut!
4 | 9 | 25
49 | 121 | 169
289 | 361 |?
Angka pengganti tanda tanya (?) adalah....',
  NULL,
  '{"A":"441","B":"484","C":"576","D":"529","E":"625"}'::jsonb,
  'D',
  'Semua adalah kuadrat bilangan prima berurutan: 2², 3², 5², 7², 11², 13², 17², 19², 23² = 529. Pengecoh 441, 484, 576 adalah kuadrat bilangan bukan prima.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  557,
  'TIU',
  'Soal Tabel',
  'sedang',
  'Perhatikan matriks angka berikut!
2 | 6 | 16
3 | 12 | 45
4 | 20 |?
Angka pengganti tanda tanya (?) adalah....',
  NULL,
  '{"A":"80","B":"88","C":"96","D":"100","E":"104"}'::jsonb,
  'C',
  'Kolom 3 = kolom 1 × (kolom 1 + kolom 2): 2 × 8 = 16; 3 × 15 = 45; 4 × 24 = 96.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  558,
  'TIU',
  'Perbandingan Kuantitatif',
  'sedang',
  'P = 3/7 dan Q = 4/9. Hubungan P dan Q adalah...',
  NULL,
  '{"A":"Hubungan tidak dapat ditentukan","B":"P sama dengan Q","C":"P lebih kecil dari Q","D":"P lebih besar dari Q","E":"Informasi pada soal tidak cukup untuk menentukan hubungan P dan Q"}'::jsonb,
  'C',
  'Kali silang: 3 x 9 = 27 dan 4 x 7 = 28. Karena 27 lebih kecil dari 28, maka P lebih kecil dari Q.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  559,
  'TIU',
  'Perbandingan Kuantitatif',
  'sedang',
  'P = 15% × 240 dan Q = 40% × 90. Hubungan P dan Q adalah...',
  NULL,
  '{"A":"P lebih besar dari Q","B":"P sama dengan Q","C":"Hubungan tidak dapat ditentukan","D":"P lebih kecil dari Q","E":"Informasi pada soal tidak cukup untuk menentukan hubungan P dan Q"}'::jsonb,
  'B',
  'P = 36 dan Q = 36, jadi sama.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  560,
  'TIU',
  'Perbandingan Kuantitatif',
  'sedang',
  'P = √50 dan Q = 7. Hubungan P dan Q adalah...',
  NULL,
  '{"A":"P lebih kecil dari Q","B":"P lebih besar dari Q","C":"P sama dengan Q","D":"Hubungan tidak dapat ditentukan","E":"Informasi pada soal tidak cukup untuk menentukan hubungan P dan Q"}'::jsonb,
  'B',
  'Kuadratkan keduanya: 50 dan 49. Karena 50 lebih besar, P lebih besar dari Q.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  561,
  'TIU',
  'Perbandingan Kuantitatif',
  'sedang',
  'P = x² dan Q = x, dengan x bilangan real. Hubungan P dan Q adalah...',
  NULL,
  '{"A":"P sama dengan Q","B":"P lebih besar dari Q","C":"Hubungan tidak dapat ditentukan","D":"P lebih kecil dari Q","E":"Informasi pada soal tidak cukup untuk menentukan hubungan P dan Q"}'::jsonb,
  'C',
  'x = 2 membuat P lebih besar, x = 0,5 membuat P lebih kecil, x = 1 membuat sama. Hasilnya berubah-ubah.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  562,
  'TIU',
  'Perbandingan Kuantitatif',
  'sedang',
  'P = 7/8 dan Q = 8/9. Hubungan P dan Q adalah...',
  NULL,
  '{"A":"P lebih besar dari Q","B":"P sama dengan Q","C":"Hubungan tidak dapat ditentukan","D":"P lebih kecil dari Q","E":"Informasi pada soal tidak cukup untuk menentukan hubungan P dan Q"}'::jsonb,
  'D',
  'Sisa dari 1: 1/8 untuk P dan 1/9 untuk Q. Sisa Q lebih kecil, jadi Q lebih dekat ke 1 dan P lebih kecil.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  563,
  'TIU',
  'Perbandingan Kuantitatif',
  'sedang',
  'P = 2¹⁰ dan Q = 10³. Hubungan P dan Q adalah...',
  NULL,
  '{"A":"P lebih besar dari Q","B":"P lebih kecil dari Q","C":"P sama dengan Q","D":"Hubungan tidak dapat ditentukan","E":"Informasi pada soal tidak cukup untuk menentukan hubungan P dan Q"}'::jsonb,
  'A',
  '2¹⁰ = 1.024 dan 10³ = 1.000, jadi P lebih besar.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  564,
  'TIU',
  'Perbandingan Kuantitatif',
  'sedang',
  'P = 25% dari 480 dan Q = 3/8 dari 320. Hubungan P dan Q adalah...',
  NULL,
  '{"A":"P lebih kecil dari Q","B":"P sama dengan Q","C":"Hubungan tidak dapat ditentukan","D":"P lebih besar dari Q","E":"Informasi pada soal tidak cukup untuk menentukan hubungan P dan Q"}'::jsonb,
  'B',
  'P = 120 dan Q = 120, jadi P sama dengan Q.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  565,
  'TIU',
  'Perbandingan Kuantitatif',
  'sedang',
  'P = 0,6 x 85 dan Q = 7/12 x 90. Hubungan P dan Q adalah...',
  NULL,
  '{"A":"P lebih kecil dari Q","B":"Hubungan tidak dapat ditentukan","C":"P lebih besar dari Q","D":"P sama dengan Q","E":"Informasi pada soal tidak cukup untuk menentukan hubungan P dan Q"}'::jsonb,
  'A',
  'P = 51 dan Q = 52,5, jadi P lebih kecil dari Q.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  566,
  'TIU',
  'Perbandingan Kuantitatif',
  'sedang',
  'x = 2 pangkat 5, y = 5 pangkat 2. Hubungan x dan y...',
  NULL,
  '{"A":"x > y","B":"x < y","C":"x = y","D":"Tidak dapat ditentukan","E":"x = 2y"}'::jsonb,
  'A',
  'x = 32, y = 25, jadi x > y.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  567,
  'TIU',
  'Perbandingan Kuantitatif',
  'sedang',
  'Jika 0 < x < 1, bandingkan P = x kuadrat dan Q = x pangkat tiga.',
  NULL,
  '{"A":"P < Q","B":"P > Q","C":"P = Q","D":"Tidak dapat ditentukan","E":"P = 2Q"}'::jsonb,
  'B',
  'Pecahan dipangkatkan makin besar makin kecil, jadi x kuadrat > x pangkat tiga.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  568,
  'TIU',
  'Perbandingan Kuantitatif',
  'sedang',
  'P = 3/7 dan Q = 4/9. Hubungan P dan Q...',
  NULL,
  '{"A":"P > Q","B":"P < Q","C":"P = Q","D":"Tidak dapat ditentukan","E":"P = 2Q"}'::jsonb,
  'B',
  'Silang: 27 < 28, jadi 3/7 < 4/9.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  569,
  'TIU',
  'Perbandingan Kuantitatif',
  'sedang',
  'x = 0,25 dan y = 1/5. Hubungan x dan y...',
  NULL,
  '{"A":"x > y","B":"x < y","C":"x = y","D":"Tidak dapat ditentukan","E":"x = 2y"}'::jsonb,
  'A',
  '1/5 = 0,2 sehingga 0,25 > 0,2.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  570,
  'TIU',
  'Perbandingan Kuantitatif',
  'sedang',
  'x = 2 pangkat 30, y = 3 pangkat 20. Hubungan x dan y...',
  NULL,
  '{"A":"x > y","B":"x < y","C":"x = y","D":"Tidak dapat ditentukan","E":"x = 2y"}'::jsonb,
  'B',
  '2 pangkat 30 = 8 pangkat 10 dan 3 pangkat 20 = 9 pangkat 10, jadi x < y.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  571,
  'TIU',
  'Perbandingan Kuantitatif',
  'sedang',
  'P = 2 pangkat 30 dan Q = 3 pangkat 20. Hubungan P dan Q adalah....',
  NULL,
  '{"A":"P > Q","B":"P < Q","C":"P = Q","D":"Hubungan tidak dapat ditentukan","E":"P = 1,5 Q"}'::jsonb,
  'B',
  'Samakan pangkat: 2^30 = 8^10 dan 3^20 = 9^10. 8^10 < 9^10, jadi P < Q.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  572,
  'TIU',
  'Perbandingan Kuantitatif',
  'sedang',
  'Diketahui a > b > 0. P = (a + 1)/(b + 1) dan Q = a/b. Hubungan P dan Q adalah....',
  NULL,
  '{"A":"P > Q","B":"P < Q","C":"P = Q","D":"Hubungan tidak dapat ditentukan","E":"P = Q + 1"}'::jsonb,
  'B',
  'Kali silang: b(a + 1) = ab + b dan a(b + 1) = ab + a. Karena b < a, maka P < Q.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  573,
  'TIU',
  'Perbandingan Kuantitatif',
  'sedang',
  'Diketahui n bilangan asli. P = n pangkat 2 + n dan Q = 2n. Hubungan P dan Q adalah....',
  NULL,
  '{"A":"P > Q","B":"P < Q","C":"P = Q","D":"Hubungan tidak dapat ditentukan","E":"P = 2Q"}'::jsonb,
  'D',
  'Untuk n = 1, P = 2 dan Q = 2 (sama). Untuk n = 2, P = 6 dan Q = 4 (P lebih besar). Hasil berbeda, sehingga tidak dapat ditentukan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  574,
  'TIU',
  'Perbandingan Kuantitatif',
  'sedang',
  'x = (akar 2 + akar 3) pangkat 2 dan y = 5 + 2 akar 6. Hubungan x dan y adalah....',
  NULL,
  '{"A":"x > y","B":"x < y","C":"x = y","D":"Hubungan tidak dapat ditentukan","E":"x = y + 1"}'::jsonb,
  'C',
  '(akar 2 + akar 3) pangkat 2 = 2 + 3 + 2 akar 6 = 5 + 2 akar 6, jadi x = y.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  575,
  'TIU',
  'Perbandingan Kuantitatif',
  'sedang',
  'Diketahui 0 < a < 1. P = a pangkat 2 dan Q = akar a. Hubungan P dan Q adalah....',
  NULL,
  '{"A":"P > Q","B":"P < Q","C":"P = Q","D":"Hubungan tidak dapat ditentukan","E":"P = 2Q"}'::jsonb,
  'B',
  'Untuk 0 < a < 1 berlaku a pangkat 2 < a < akar a. Contoh a = 0,25: P = 0,0625 dan Q = 0,5.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  576,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Umur ayah 3 kali umur anak, dan selisih umur mereka 24 tahun. Umur ayah adalah...',
  NULL,
  '{"A":"32 tahun","B":"36 tahun","C":"40 tahun","D":"42 tahun","E":"30 tahun"}'::jsonb,
  'B',
  'Selisih = 2 bagian = 24, jadi 1 bagian = 12. Ayah 3 bagian = 36 tahun.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  577,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Pekerja A menyelesaikan suatu pekerjaan dalam 6 hari, pekerja B dalam 3 hari. Jika bekerja bersama, pekerjaan selesai dalam...',
  NULL,
  '{"A":"4,5 hari","B":"2 hari","C":"9 hari","D":"1 hari","E":"3 hari"}'::jsonb,
  'B',
  'Per hari: 1/6 + 1/3 = 1/2 bagian. Jadi selesai dalam 2 hari.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  578,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Andi berangkat pukul 07.00 dengan 60 km/jam. Budi berangkat pukul 08.00 dengan 80 km/jam di jalur sama. Budi menyusul Andi pukul...',
  NULL,
  '{"A":"10.00","B":"10.30","C":"11.00","D":"11.30","E":"12.00"}'::jsonb,
  'C',
  'Andi unggul 60 km. Budi mengejar 20 km/jam, jadi butuh 3 jam setelah 08.00, yaitu pukul 11.00.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  579,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Rata-rata nilai 5 siswa adalah 70. Setelah satu siswa bernilai 82 bergabung, rata-ratanya menjadi...',
  NULL,
  '{"A":"71","B":"72","C":"73","D":"74","E":"76"}'::jsonb,
  'B',
  'Total lama 350, total baru 432, dibagi 6 siswa = 72.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  580,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Pada peta berskala 1: 2.000.000, jarak dua kota 6 cm. Jarak sebenarnya adalah...',
  NULL,
  '{"A":"12 km","B":"60 km","C":"120 km","D":"100 km","E":"1.200 km"}'::jsonb,
  'C',
  '6 × 2.000.000 = 12.000.000 cm = 120 km.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  581,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Sebuah percetakan menghabiskan 24 kg tinta untuk mencetak 6.000 eksemplar buku. Harga tinta Rp85.000,00 tiap kilogram. Biaya tinta yang diperlukan untuk mencetak 15.000 eksemplar buku yang sama adalah... rupiah.',
  NULL,
  '{"A":"5.100.000","B":"3.060.000","C":"2.040.000","D":"1.275.000","E":"816.000"}'::jsonb,
  'A',
  'Makin banyak buku, makin banyak tinta: senilai. B × 6.000 = 24 × 15.000, jadi B = 60 kg. Biaya = 85.000 × 60 = 5.100.000. Jangan berhenti di 60 kg.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  582,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Pada sebuah mesin terdapat dua roda gigi yang saling bertautan. Roda A bermata 48 gigi, sedangkan roda B bermata 16 gigi. Ketika roda A berputar 25 kali, roda B berputar sebanyak... kali.',
  NULL,
  '{"A":"50","B":"60","C":"72","D":"75","E":"80"}'::jsonb,
  'D',
  'Gigi makin sedikit, putaran makin banyak: berbalik nilai. Hasil kali tetap: 16 × B = 48 × 25, jadi B = 3 × 25 = 75.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  583,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Sebuah proyek diselesaikan 12 pekerja dalam 15 hari. Agar proyek selesai dalam 10 hari, banyak pekerja tambahan yang diperlukan adalah... orang.',
  NULL,
  '{"A":"4","B":"6","C":"8","D":"18","E":"20"}'::jsonb,
  'B',
  'Berbalik nilai: 12 × 15 = P × 10, jadi P = 18. Yang ditanya tambahannya: 18 − 12 = 6 orang.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  584,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Mobil berkecepatan 60 km/jam menempuh suatu jarak dalam 4 jam. Bila kecepatannya 80 km/jam, waktu tempuhnya adalah...',
  NULL,
  '{"A":"3 jam","B":"2 jam 30 menit","C":"3 jam 20 menit","D":"5 jam 20 menit","E":"2 jam"}'::jsonb,
  'A',
  'Kecepatan naik, waktu turun: berbalik nilai. 60 × 4 = 80 × t, jadi t = 240 ÷ 80 = 3 jam.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  585,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Sebuah truk berdaya angkut 6 ton memerlukan 20 rit untuk memindahkan pasir. Dengan truk berdaya angkut 8 ton, banyak rit yang diperlukan adalah...',
  NULL,
  '{"A":"12","B":"14","C":"15","D":"16","E":"26"}'::jsonb,
  'C',
  'Daya angkut naik, rit turun: berbalik nilai. 6 × 20 = 8 × r, jadi r = 120 ÷ 8 = 15.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  586,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Sebuah mesin fotokopi menghasilkan 450 lembar dalam 18 menit. Dalam 50 menit, mesin tersebut menghasilkan... lembar.',
  NULL,
  '{"A":"900","B":"1.000","C":"1.125","D":"1.250","E":"1.350"}'::jsonb,
  'D',
  'Makin lama, makin banyak lembar: senilai. 450 ÷ 18 = 25 lembar per menit, jadi 25 × 50 = 1.250.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  587,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Harga tiga buku dan dua pensil adalah Rp34.000, sedangkan harga dua buku dan tiga pensil adalah Rp31.000. Harga satu buku adalah...',
  NULL,
  '{"A":"Rp6.000","B":"Rp9.000","C":"Rp7.000","D":"Rp8.000","E":"Rp10.000"}'::jsonb,
  'D',
  'Coretan cepat Persamaan 1: 3B + 2P = 34.000
Persamaan 2: 2B + 3P = 31.000
Koefisien tertukar, jumlahkan: 5B + 5P = 65.000 → B + P = 13.000
Kurangkan: B − P = 3.000
B = (13.000 + 3.000) ÷ 2 = 8.000, P = 13.000 − 8.000 = 5.000
Jawab: Rp8.000
Cara baku (eliminasi): lihat langkah di materi
Cek: 3 × 8.000 + 2 × 5.000 = 34.000 ✓
Baca yang ditanya: satu barang saja, barang lain, atau jumlah keduanya.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  588,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Harga tiga buku dan dua pensil adalah Rp34.000, sedangkan harga dua buku dan tiga pensil adalah Rp31.000. Harga satu pensil adalah...',
  NULL,
  '{"A":"Rp4.000","B":"Rp4.500","C":"Rp5.000","D":"Rp6.000","E":"Rp5.500"}'::jsonb,
  'C',
  'Coretan cepat Persamaan 1: 3B + 2P = 34.000
Persamaan 2: 2B + 3P = 31.000
Koefisien tertukar, jumlahkan: 5B + 5P = 65.000 → B + P = 13.000
Kurangkan: B − P = 3.000
B = (13.000 + 3.000) ÷ 2 = 8.000, P = 13.000 − 8.000 = 5.000
Jawab: Rp5.000
Cara baku (eliminasi): lihat langkah di materi
Cek: 3 × 8.000 + 2 × 5.000 = 34.000 ✓
Baca yang ditanya: satu barang saja, barang lain, atau jumlah keduanya.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  589,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Dua kemeja dan tiga celana dibeli dengan harga Rp410.000, sedangkan tiga kemeja dan dua celana Rp390.000. Harga satu kemeja dan satu celana adalah...',
  NULL,
  '{"A":"Rp170.000","B":"Rp150.000","C":"Rp165.000","D":"Rp155.000","E":"Rp160.000"}'::jsonb,
  'E',
  'Coretan cepat Persamaan 1: 2K + 3C = 410.000
Persamaan 2: 3K + 2C = 390.000
Koefisien tertukar, jumlahkan: 5K + 5C = 800.000 → K + C = 160.000
Kurangkan: K − C = −20.000
Yang ditanya jumlahnya: K + C = 160.000
Cara baku (eliminasi): lihat langkah di materi
Cek: 2 × 70.000 + 3 × 90.000 = 410.000 ✓
Baca yang ditanya: satu barang saja, barang lain, atau jumlah keduanya.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  590,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Lima pulpen dan dua buku harganya Rp19.000, sedangkan tiga pulpen dan empat buku harganya Rp17.000. Harga satu pulpen adalah...',
  NULL,
  '{"A":"Rp2.000","B":"Rp3.000","C":"Rp3.500","D":"Rp4.000","E":"Rp2.500"}'::jsonb,
  'B',
  'Coretan cepat Persamaan 1: 5P + 2B = 19.000
Persamaan 2: 3P + 4B = 17.000
Buang B: persamaan 1 × 2 dan persamaan 2 × 1
10P + 4B = 38.000
3P + 4B = 17.000
Kurangkan: 7P = 21.000
P = 21.000 ÷ 7 = Rp3.000
Cek: 5 × 3.000 + 2 × 2.000 = 19.000 ✓
Baca yang ditanya: satu barang saja, barang lain, atau jumlah keduanya.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  591,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Dua kilogram beras dan satu kilogram gula harganya Rp38.000, sedangkan satu kilogram beras dan tiga kilogram gula harganya Rp44.000. Harga satu kilogram gula adalah...',
  NULL,
  '{"A":"Rp12.000","B":"Rp8.000","C":"Rp16.000","D":"Rp14.000","E":"Rp10.000"}'::jsonb,
  'E',
  'Coretan cepat Persamaan 1: 2R + 1G = 38.000
Persamaan 2: 1R + 3G = 44.000
Buang R: persamaan 1 × 1 dan persamaan 2 × 2
1G + 2R = 38.000
6G + 2R = 88.000
Kurangkan: 5G = 50.000
G = 50.000 ÷ 5 = Rp10.000
Cek: 2 × 14.000 + 1 × 10.000 = 38.000 ✓
Baca yang ditanya: satu barang saja, barang lain, atau jumlah keduanya.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  592,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Tiga tiket dewasa dan dua tiket anak harganya Rp330.000, sedangkan dua tiket dewasa dan empat tiket anak harganya Rp300.000. Harga satu tiket anak adalah...',
  NULL,
  '{"A":"Rp40.000","B":"Rp25.000","C":"Rp45.000","D":"Rp30.000","E":"Rp35.000"}'::jsonb,
  'D',
  'Coretan cepat Persamaan 1: 3D + 2A = 330.000
Persamaan 2: 2D + 4A = 300.000
Buang D: persamaan 1 × 2 dan persamaan 2 × 3
4A + 6D = 660.000
12A + 6D = 900.000
Kurangkan: 8A = 240.000
A = 240.000 ÷ 8 = Rp30.000
Cek: 3 × 90.000 + 2 × 30.000 = 330.000 ✓
Baca yang ditanya: satu barang saja, barang lain, atau jumlah keduanya.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  593,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Jumlah pekerjaan yang diselesaikan Tim A dan Tim B berbanding 7: 4. Jika selisih pekerjaan mereka 18 tugas, total pekerjaan kedua tim adalah...',
  NULL,
  '{"A":"54 tugas","B":"72 tugas","C":"60 tugas","D":"78 tugas","E":"66 tugas"}'::jsonb,
  'E',
  'Coretan cepat A: B = 7: 4, selisih = 18, yang ditanya total
Pisalkan 1 bagian = x: 7x − 4x = 18
3x = 18 → x = 6
Total = 7x + 4x = 11x = 11 × 6 = 66
Cara kilat: selisih rasio 7 − 4 = 3 bagian = 18, jadi 1 bagian = 6
Pakai selisih rasio (3) untuk mencari 1 bagian, pakai jumlah rasio (11) untuk totalnya.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  594,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Uang Ani dan Budi berbanding 5: 3. Jika selisih uang mereka Rp240.000, jumlah uang keduanya adalah...',
  NULL,
  '{"A":"Rp1.040.000","B":"Rp1.200.000","C":"Rp880.000","D":"Rp960.000","E":"Rp800.000"}'::jsonb,
  'D',
  'Coretan cepat Selisih rasio = 5 − 3 = 2 bagian = Rp240.000
1 bagian = 240.000 ÷ 2 = 120.000
Jumlah rasio = 5 + 3 = 8 bagian
Jumlah uang = 8 × 120.000 = Rp960.000
Jangan memakai 5 + 3 untuk mencari 1 bagian. Itu cuma benar kalau yang diketahui jumlahnya.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  595,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Perbandingan banyak buku di rak A dan rak B adalah 9: 5. Jika jumlah buku di kedua rak 84, selisih banyak buku di kedua rak adalah...',
  NULL,
  '{"A":"24 buku","B":"28 buku","C":"36 buku","D":"20 buku","E":"30 buku"}'::jsonb,
  'A',
  'Coretan cepat Jumlah rasio = 9 + 5 = 14 bagian = 84
1 bagian = 84 ÷ 14 = 6
Selisih rasio = 9 − 5 = 4 bagian
Selisih buku = 4 × 6 = 24
Cek: A = 54, B = 30, 54 − 30 = 24 ✓
Yang diketahui jumlah: bagi dengan jumlah rasio. Yang ditanya selisih: kali dengan selisih rasio.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  596,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Uang tiga orang berbanding 2: 3: 5. Jika selisih uang terbesar dan terkecil Rp90.000, jumlah uang ketiganya adalah...',
  NULL,
  '{"A":"Rp330.000","B":"Rp300.000","C":"Rp240.000","D":"Rp270.000","E":"Rp360.000"}'::jsonb,
  'B',
  'Coretan cepat Terbesar − terkecil = 5 − 2 = 3 bagian = Rp90.000
1 bagian = 90.000 ÷ 3 = 30.000
Jumlah rasio = 2 + 3 + 5 = 10 bagian
Jumlah uang = 10 × 30.000 = Rp300.000
Pada tiga bagian, ambil dua rasio yang selisihnya diketahui, jangan ikut mengurangi yang tengah.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  597,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Kelereng Doni dan Eko berbanding 8: 5. Jika selisih kelereng mereka 21 butir, banyak kelereng Eko adalah...',
  NULL,
  '{"A":"40 butir","B":"56 butir","C":"63 butir","D":"28 butir","E":"35 butir"}'::jsonb,
  'E',
  'Coretan cepat Selisih rasio = 8 − 5 = 3 bagian = 21
1 bagian = 21 ÷ 3 = 7
Eko = 5 bagian = 5 × 7 = 35
Doni = 8 × 7 = 56, selisih 56 − 35 = 21 ✓
Baca yang ditanya: Eko (5 bagian), bukan Doni (56) dan bukan total (91).',
  NULL,
  NULL,
  'published'
),
(
  'web',
  598,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Laporan yang diselesaikan Seksi A dan Seksi B berbanding 7: 3. Jika selisihnya 28 laporan, laporan yang diselesaikan Seksi A adalah...',
  NULL,
  '{"A":"21 laporan","B":"70 laporan","C":"49 laporan","D":"42 laporan","E":"28 laporan"}'::jsonb,
  'C',
  'Coretan cepat Selisih rasio = 7 − 3 = 4 bagian = 28
1 bagian = 28 ÷ 4 = 7
Seksi A = 7 bagian = 7 × 7 = 49
Seksi B = 3 × 7 = 21, selisih 49 − 21 = 28 ✓
70 itu total (10 bagian), bukan Seksi A. Cek yang ditanya sebelum memilih.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  599,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Dari 40 siswa, 25 menyukai matematika, 18 menyukai fisika, dan 8 menyukai keduanya. Siswa yang tidak menyukai keduanya berjumlah...',
  NULL,
  '{"A":"3","B":"5","C":"7","D":"8","E":"10"}'::jsonb,
  'B',
  'Gabungan = 25 + 18 - 8 = 35. Di luar = 40 - 35 = 5.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  600,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Dari 60 pegawai, 35 bisa bahasa Inggris, 28 bisa bahasa Arab, dan 10 bisa keduanya. Pegawai yang hanya bisa bahasa Inggris berjumlah...',
  NULL,
  '{"A":"10","B":"18","C":"25","D":"28","E":"35"}'::jsonb,
  'C',
  'Hanya Inggris = 35 - 10 = 25 (irisan jangan dihitung dua kali).',
  NULL,
  NULL,
  'published'
),
(
  'web',
  601,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Dari 50 peserta, 30 mengikuti lomba catur, 22 mengikuti lomba bulu tangkis, dan 12 mengikuti keduanya. Peserta yang mengikuti paling sedikit satu lomba berjumlah...',
  NULL,
  '{"A":"36","B":"38","C":"40","D":"42","E":"44"}'::jsonb,
  'C',
  'Gabungan = 30 + 22 - 12 = 40.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  602,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Dari 45 warga, 20 ikut ronda, 15 ikut kerja bakti, dan 5 ikut keduanya. Warga yang tidak ikut kegiatan apa pun berjumlah...',
  NULL,
  '{"A":"10","B":"12","C":"15","D":"20","E":"25"}'::jsonb,
  'C',
  'Gabungan = 20 + 15 - 5 = 30. Di luar = 45 - 30 = 15.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  603,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Mobil melaju 60 km/jam selama 2,5 jam. Jarak yang ditempuh...',
  NULL,
  '{"A":"120 km","B":"135 km","C":"150 km","D":"165 km","E":"180 km"}'::jsonb,
  'C',
  'Jarak = 60 x 2,5 = 150 km.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  604,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Andi menyelesaikan pekerjaan dalam 6 hari, Budi dalam 12 hari. Jika bekerja bersama, selesai dalam...',
  NULL,
  '{"A":"3 hari","B":"4 hari","C":"5 hari","D":"8 hari","E":"9 hari"}'::jsonb,
  'B',
  '1/6 + 1/12 = 3/12 = 1/4 per hari, jadi 4 hari.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  605,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Ibu membeli 3 kg apel Rp24.000/kg dan 2 kg jeruk Rp18.000/kg. Total belanja...',
  NULL,
  '{"A":"Rp96.000","B":"Rp108.000","C":"Rp112.000","D":"Rp120.000","E":"Rp90.000"}'::jsonb,
  'B',
  '72.000 + 36.000 = 108.000.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  606,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Rata-rata empat bilangan adalah 12. Tiga di antaranya 10, 12, dan 14. Bilangan keempat...',
  NULL,
  '{"A":"10","B":"11","C":"12","D":"13","E":"14"}'::jsonb,
  'C',
  'Total 48; 48 - 36 = 12.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  607,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Umur ayah 4 kali umur anak. Jumlah umur keduanya 50 tahun. Umur anak...',
  NULL,
  '{"A":"8","B":"10","C":"12","D":"15","E":"20"}'::jsonb,
  'B',
  '5x = 50, x = 10.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  608,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Kelereng A:B = 3:5 dengan total 64. Kelereng A berjumlah...',
  NULL,
  '{"A":"20","B":"24","C":"32","D":"36","E":"40"}'::jsonb,
  'B',
  '64 x 3/8 = 24.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  609,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Kereta melaju 90 km/jam menempuh 270 km. Waktu yang dibutuhkan...',
  NULL,
  '{"A":"2 jam","B":"2,5 jam","C":"3 jam","D":"3,5 jam","E":"4 jam"}'::jsonb,
  'C',
  '270: 90 = 3 jam.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  610,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Gaji Rp4.000.000; 25% ditabung, dari sisanya 40% untuk sewa. Biaya sewa...',
  NULL,
  '{"A":"Rp1.000.000","B":"Rp1.200.000","C":"Rp1.600.000","D":"Rp1.500.000","E":"Rp1.400.000"}'::jsonb,
  'B',
  'Sisa 3.000.000; 40% = 1.200.000.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  611,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Pipa A mengisi tangki dalam 4 jam, pipa B dalam 6 jam. Bersama-sama selesai dalam...',
  NULL,
  '{"A":"2 jam","B":"2 jam 24 menit","C":"2 jam 30 menit","D":"3 jam","E":"5 jam"}'::jsonb,
  'B',
  '1/4 + 1/6 = 5/12 per jam, jadi 12/5 = 2,4 jam = 2 jam 24 menit.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  612,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Pergi 30 km/jam dan pulang 60 km/jam di jalur yang sama. Kecepatan rata-rata seluruh perjalanan...',
  NULL,
  '{"A":"40 km/jam","B":"45 km/jam","C":"50 km/jam","D":"36 km/jam","E":"42 km/jam"}'::jsonb,
  'A',
  '2 x 30 x 60 / (30+60) = 40.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  613,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Umur ayah sekarang 3 kali umur anak. Dua belas tahun lalu umur ayah 7 kali umur anak. Umur anak sekarang...',
  NULL,
  '{"A":"12 tahun","B":"15 tahun","C":"16 tahun","D":"18 tahun","E":"20 tahun"}'::jsonb,
  'D',
  '3x - 12 = 7(x - 12) menghasilkan x = 18.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  614,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Tiga pekerja menyelesaikan proyek dalam 12 hari. Bila dua pekerja dengan kemampuan sama ditambahkan, proyek selesai dalam...',
  NULL,
  '{"A":"6 hari","B":"7,2 hari","C":"7,5 hari","D":"8 hari","E":"9 hari"}'::jsonb,
  'B',
  '3 x 12 = 36 pekerja-hari; 36: 5 = 7,2 hari.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  615,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Rata-rata nilai 8 siswa adalah 70. Setelah satu siswa bergabung, rata-ratanya 72. Nilai siswa tambahan...',
  NULL,
  '{"A":"82","B":"84","C":"86","D":"88","E":"90"}'::jsonb,
  'D',
  'Total awal 560, total akhir 9 x 72 = 648; selisih 88.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  616,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Kereta A berangkat pukul 08.00 dengan 60 km/jam. Kereta B berangkat dari tempat sama pukul 09.00 dengan 90 km/jam. B menyusul A pukul...',
  NULL,
  '{"A":"10.00","B":"10.30","C":"11.00","D":"11.30","E":"12.00"}'::jsonb,
  'C',
  'Pukul 09.00 selisih 60 km; kecepatan relatif 30 km/jam, jadi 2 jam kemudian.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  617,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Perahu menempuh 24 km melawan arus dalam 4 jam dan searah arus dalam 2 jam. Kecepatan arus sungai...',
  NULL,
  '{"A":"2 km/jam","B":"3 km/jam","C":"4 km/jam","D":"6 km/jam","E":"9 km/jam"}'::jsonb,
  'B',
  'Hulu 6, hilir 12 km/jam. Arus = (12 - 6): 2 = 3 km/jam.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  618,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Dua pekerja menyelesaikan proyek dalam 12 hari bila bersama. A sendiri 20 hari. B sendiri...',
  NULL,
  '{"A":"25 hari","B":"30 hari","C":"32 hari","D":"36 hari","E":"40 hari"}'::jsonb,
  'B',
  '1/12 - 1/20 = 1/30.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  619,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Mobil menempuh 180 km: separuh jarak 60 km/jam, sisanya 90 km/jam. Kecepatan rata-rata...',
  NULL,
  '{"A":"72 km/jam","B":"75 km/jam","C":"70 km/jam","D":"78 km/jam","E":"80 km/jam"}'::jsonb,
  'A',
  'Waktu 1,5 + 1 = 2,5 jam; 180: 2,5 = 72.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  620,
  'TIU',
  'Soal Cerita',
  'sedang',
  '20 liter campuran susu berkadar 30% ditambah X liter susu murni hingga berkadar 50%. Nilai X...',
  NULL,
  '{"A":"6 liter","B":"8 liter","C":"10 liter","D":"12 liter","E":"4 liter"}'::jsonb,
  'B',
  '6 + X = 0,5(20 + X) sehingga X = 8.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  621,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Dua kereta berangkat berlawanan arah dari dua kota berjarak 350 km dengan kecepatan 50 dan 70 km/jam. Kereta pertama berangkat 1 jam lebih awal. Mereka bertemu setelah kereta kedua berjalan...',
  NULL,
  '{"A":"2 jam","B":"2,5 jam","C":"3 jam","D":"2 jam 15 menit","E":"3,5 jam"}'::jsonb,
  'B',
  'Sisa jarak 300 km, kecepatan relatif 120 km/jam, jadi 2,5 jam.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  622,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Pekerja A dan B menyelesaikan suatu pekerjaan dalam 12 hari, B dan C dalam 15 hari, A dan C dalam 20 hari. Jika ketiganya bekerja bersama, pekerjaan selesai dalam....',
  NULL,
  '{"A":"8 hari","B":"9 hari","C":"10 hari","D":"11 hari","E":"12 hari"}'::jsonb,
  'C',
  'Jumlahkan laju: 1/12 + 1/15 + 1/20 = 12/60 = 1/5 = 2(A+B+C). Jadi A+B+C = 1/10 → 10 hari.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  623,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Lima tahun lalu umur ayah tiga kali umur anaknya. Lima tahun lagi umur ayah dua kali umur anaknya. Umur anak sekarang adalah....',
  NULL,
  '{"A":"10 tahun","B":"12 tahun","C":"15 tahun","D":"18 tahun","E":"20 tahun"}'::jsonb,
  'C',
  'Ayah a, anak k: a - 5 = 3(k - 5) maka a = 3k - 10; a + 5 = 2(k + 5) maka a = 2k + 5. Jadi k = 15 dan a = 35.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  624,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Keran A mengisi bak penuh dalam 6 jam, keran B dalam 9 jam, sedangkan saluran pembuangan C mengosongkan bak penuh dalam 18 jam. Bila bak kosong dan ketiganya dibuka bersama, bak penuh dalam....',
  NULL,
  '{"A":"4 jam","B":"4,5 jam","C":"5 jam","D":"3,6 jam","E":"6 jam"}'::jsonb,
  'B',
  'Laju: 1/6 + 1/9 - 1/18 = 3/18 + 2/18 - 1/18 = 4/18 = 2/9 per jam, jadi 4,5 jam.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  625,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Sebanyak 40 liter larutan gula berkadar 15%. Air murni yang harus ditambahkan agar kadarnya menjadi 10% adalah....',
  NULL,
  '{"A":"15 liter","B":"18 liter","C":"20 liter","D":"24 liter","E":"25 liter"}'::jsonb,
  'C',
  'Gula tetap 6 liter. Agar 10%, total larutan 60 liter, jadi tambahan air 60 - 40 = 20 liter.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  626,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Kota A dan B berjarak 360 km. Kereta pertama berangkat dari A pukul 06.00 dengan kecepatan 70 km/jam. Kereta kedua berangkat dari B pukul 07.00 menuju A dengan kecepatan 50 km/jam. Kedua kereta bertemu pada pukul....',
  NULL,
  '{"A":"09.15","B":"09.20","C":"09.25","D":"09.30","E":"09.40"}'::jsonb,
  'C',
  'Pukul 07.00 kereta pertama sudah menempuh 70 km, sisa 290 km. Kecepatan dekat 120 km/jam sehingga 290/120 = 2 jam 25 menit. Bertemu 09.25.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  627,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Andi dapat menyelesaikan pekerjaan dalam 12 hari dan Budi dalam 15 hari. Mereka bekerja bergantian, masing-masing satu hari, dimulai dari Andi. Pekerjaan selesai pada hari ke-....',
  NULL,
  '{"A":"13","B":"13,5","C":"14","D":"15","E":"16"}'::jsonb,
  'C',
  'Tiap dua hari: 1/12 + 1/15 = 3/20. Setelah 12 hari: 18/20. Hari ke-13 (Andi): 59/60. Hari ke-14 (Budi) menyelesaikan sisanya.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  628,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Uang Ani: Budi = 3: 5 dan uang Budi: Citra = 2: 3. Jika jumlah uang ketiganya Rp3.100.000, selisih uang Citra dan Ani adalah....',
  NULL,
  '{"A":"Rp800.000","B":"Rp850.000","C":"Rp900.000","D":"Rp950.000","E":"Rp1.000.000"}'::jsonb,
  'C',
  'Samakan Budi: Ani: Budi: Citra = 6: 10: 15 (jumlah 31 bagian). Satu bagian Rp100.000, selisih Citra dan Ani = 9 bagian = Rp900.000.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  629,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Mesin A dapat menyelesaikan satu pesanan cetak dalam 12 jam, sedangkan mesin B dalam 18 jam. Kedua mesin bekerja bersama selama 4 jam, lalu mesin B rusak dan mesin A melanjutkan sendiri sampai selesai. Mesin A bekerja sendirian selama....',
  NULL,
  '{"A":"4 jam 40 menit","B":"5 jam","C":"5 jam 20 menit","D":"5 jam 40 menit","E":"6 jam"}'::jsonb,
  'C',
  'Bersama 4 jam: 4 × (1/12 + 1/18) = 4 × 5/36 = 5/9. Sisa 4/9; waktu mesin A = (4/9): (1/12) = 16/3 jam = 5 jam 20 menit.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  630,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Sebuah proyek saluran air membutuhkan pipa sedikitnya 14 meter.
Jenis | Ukuran | Harga
Pipa Alfa | 2 meter | Rp30.000
Pipa Beta | 3 meter | Rp39.000
Pipa Gama | 4 meter | Rp48.000
Pipa Delta | 6 meter | Rp66.000

Ketentuan:
1. Harus membeli tepat 5 batang.
2. Minimal 1 Pipa Alfa.
3. Pipa Beta maksimal 1 batang.
4. Meter berlebih maksimal 2 meter.
5. Promo: potongan Rp3.000 untuk setiap batang Pipa Alfa, hanya berlaku jika membeli minimal 2 batang Pipa Alfa.
Kombinasi batang yang paling hemat setelah promo adalah...',
  NULL,
  '{"A":"4 batang Pipa Alfa, 1 batang Pipa Delta","B":"3 batang Pipa Alfa, 2 batang Pipa Gama","C":"5 batang Pipa Alfa","D":"1 batang Pipa Alfa, 2 batang Pipa Delta","E":"4 batang Pipa Alfa, 1 batang Pipa Beta"}'::jsonb,
  'A',
  'Saring ketentuan dulu, baru hitung harga dengan promo. A lolos tapi Rp177.000 setelah promo, lebih mahal Rp3.000; jebakannya, ini termurah kalau promo diabaikan; B gugur (total ukuran kurang dari kebutuhan), harga Rp135.000 menggoda tapi tidak sah; C gugur (jumlah batang bukan tepat 5), harga Rp162.000 menggoda tapi tidak sah; D lolos dan termurah: 14 meter, Rp174.000 setelah promo; E gugur (total ukuran kurang dari kebutuhan), harga Rp147.000 menggoda tapi tidak sah.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  631,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Sebuah bengkel membutuhkan cat sedikitnya 20 liter.
Jenis | Ukuran | Harga
Kaleng A | 1 liter | Rp80.000
Kaleng B | 2 liter | Rp135.000
Kaleng C | 5 liter | Rp300.000
Kaleng D | 10 liter | Rp575.000

Ketentuan:
1. Harus membeli tepat 5 kaleng.
2. Minimal 2 Kaleng B.
3. Kaleng C maksimal 1 kaleng.
4. Liter berlebih maksimal 2 liter.
5. Promo: potongan Rp19.000 untuk setiap kaleng Kaleng B, hanya berlaku jika membeli minimal 3 kaleng Kaleng B.
Kombinasi kaleng yang paling hemat setelah promo adalah...',
  NULL,
  '{"A":"3 kaleng Kaleng B, 1 kaleng Kaleng C, 1 kaleng Kaleng D","B":"5 kaleng Kaleng B, 1 kaleng Kaleng D","C":"1 kaleng Kaleng A, 2 kaleng Kaleng B, 1 kaleng Kaleng C, 1 kaleng Kaleng D","D":"2 kaleng Kaleng A, 3 kaleng Kaleng B","E":"3 kaleng Kaleng A, 2 kaleng Kaleng B"}'::jsonb,
  'A',
  'Saring ketentuan dulu, baru hitung harga dengan promo. A lolos dan termurah: 21 liter, Rp1.223.000 setelah promo; B lolos tapi Rp1.225.000 setelah promo, lebih mahal Rp2.000; jebakannya, ini termurah kalau promo diabaikan; C gugur (total ukuran kurang dari kebutuhan), harga Rp508.000 menggoda tapi tidak sah; D gugur (jumlah kaleng bukan tepat 5), harga Rp1.155.000 menggoda tapi tidak sah; E gugur (total ukuran kurang dari kebutuhan), harga Rp510.000 menggoda tapi tidak sah.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  632,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Sebuah studio membutuhkan kabel sedikitnya 22 meter.
Jenis | Ukuran | Harga
Kabel P | 3 meter | Rp27.000
Kabel Q | 4 meter | Rp34.000
Kabel R | 5 meter | Rp40.000
Kabel S | 8 meter | Rp60.000

Ketentuan:
1. Harus membeli tepat 4 gulung.
2. Minimal 1 Kabel S.
3. Kabel P maksimal 1 gulung.
4. Meter berlebih maksimal 1 meter.
5. Promo: potongan Rp3.000 untuk setiap gulung Kabel R, hanya berlaku jika membeli minimal 3 gulung Kabel R.
Kombinasi gulung yang paling hemat setelah promo adalah...',
  NULL,
  '{"A":"3 gulung Kabel Q, 1 gulung Kabel S","B":"1 gulung Kabel P, 2 gulung Kabel Q, 1 gulung Kabel S","C":"1 gulung Kabel P, 1 gulung Kabel Q, 1 gulung Kabel R, 1 gulung Kabel S","D":"3 gulung Kabel R, 1 gulung Kabel S","E":"1 gulung Kabel Q, 2 gulung Kabel R, 1 gulung Kabel S"}'::jsonb,
  'D',
  'Saring ketentuan dulu, baru hitung harga dengan promo. A lolos tapi Rp174.000 setelah promo, lebih mahal Rp3.000; jebakannya, ini termurah kalau promo diabaikan; B gugur (total ukuran kurang dari kebutuhan), harga Rp155.000 menggoda tapi tidak sah; C lolos dan termurah: 23 meter, Rp171.000 setelah promo; D gugur (total ukuran kurang dari kebutuhan), harga Rp161.000 menggoda tapi tidak sah; E gugur (total ukuran kurang dari kebutuhan), harga Rp162.000 menggoda tapi tidak sah.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  633,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Panitia wisata membutuhkan tiket untuk sedikitnya 34 orang.
Jenis | Ukuran | Harga
Tiket Perorangan | 1 orang | Rp50.000
Tiket Keluarga | 4 orang | Rp180.000
Tiket Rombongan | 10 orang | Rp420.000
Tiket Bus | 20 orang | Rp780.000

Ketentuan:
1. Harus membeli tepat 5 tiket.
2. Minimal 1 Tiket Rombongan.
3. Tiket Bus maksimal 1 tiket.
4. Orang berlebih maksimal 2 orang.
5. Promo: potongan Rp4.000 untuk setiap tiket Tiket Rombongan, hanya berlaku jika membeli minimal 2 tiket Tiket Rombongan.
Kombinasi tiket yang paling hemat setelah promo adalah...',
  NULL,
  '{"A":"3 tiket Tiket Perorangan, 1 tiket Tiket Keluarga, 1 tiket Tiket Rombongan","B":"1 tiket Tiket Keluarga, 1 tiket Tiket Rombongan, 1 tiket Tiket Bus","C":"1 tiket Tiket Perorangan, 1 tiket Tiket Keluarga, 3 tiket Tiket Rombongan","D":"2 tiket Tiket Perorangan, 1 tiket Tiket Keluarga, 1 tiket Tiket Rombongan, 1 tiket Tiket Bus","E":"4 tiket Tiket Perorangan, 1 tiket Tiket Rombongan"}'::jsonb,
  'C',
  'Saring ketentuan dulu, baru hitung harga dengan promo. A lolos tapi Rp1.480.000 setelah promo, lebih mahal Rp2.000; jebakannya, ini termurah kalau promo diabaikan; B gugur (total ukuran kurang dari kebutuhan), harga Rp620.000 menggoda tapi tidak sah; C gugur (jumlah tiket bukan tepat 5), harga Rp1.380.000 menggoda tapi tidak sah; D gugur (total ukuran kurang dari kebutuhan), harga Rp750.000 menggoda tapi tidak sah; E lolos dan termurah: 35 orang, Rp1.478.000 setelah promo.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  634,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Sebuah dapur umum membutuhkan beras sedikitnya 34 kilogram.
Jenis | Ukuran | Harga
Karung A | 1 kilogram | Rp14.000
Karung B | 5 kilogram | Rp65.000
Karung C | 10 kilogram | Rp125.000
Karung D | 25 kilogram | Rp300.000

Ketentuan:
1. Harus membeli tepat 5 karung.
2. Minimal 1 Karung B.
3. Karung D maksimal 1 karung.
4. Kilogram berlebih maksimal 2 kilogram.
5. Promo: potongan Rp10.000 untuk setiap karung Karung C, hanya berlaku jika membeli minimal 2 karung Karung C.
Kombinasi karung yang paling hemat setelah promo adalah...',
  NULL,
  '{"A":"1 karung Karung B, 3 karung Karung C","B":"3 karung Karung A, 2 karung Karung B","C":"3 karung Karung B, 2 karung Karung C","D":"1 karung Karung A, 1 karung Karung B, 3 karung Karung C","E":"4 karung Karung A, 1 karung Karung B"}'::jsonb,
  'D',
  'Saring ketentuan dulu, baru hitung harga dengan promo. A lolos tapi Rp425.000 setelah promo, lebih mahal Rp1.000; jebakannya, ini termurah kalau promo diabaikan; B lolos dan termurah: 36 kilogram, Rp424.000 setelah promo; C gugur (total ukuran kurang dari kebutuhan), harga Rp121.000 menggoda tapi tidak sah; D gugur (jumlah karung bukan tepat 5), harga Rp410.000 menggoda tapi tidak sah; E gugur (total ukuran kurang dari kebutuhan), harga Rp172.000 menggoda tapi tidak sah.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  635,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Urutan mengerjakan soal cerita tabel yang paling efisien adalah...',
  NULL,
  '{"A":"Pilih opsi dengan jumlah barang paling sedikit","B":"Pilih opsi yang berisi barang paling besar","C":"Pilih opsi yang berisi barang paling murah","D":"Saring opsi dengan ketentuan lebih dulu, lalu hitung harga hanya untuk opsi yang lolos","E":"Hitung harga semua opsi, lalu cek ketentuan"}'::jsonb,
  'D',
  'Ketentuan murah dicek (hitung cacah), harga mahal dihitung. Saring dulu, hitung belakangan, kayak saringan kasar ke halus.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  636,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Ketentuan "panjang pipa berlebih maksimal 2 meter" dengan kebutuhan 10 meter berarti total panjang pipa harus...',
  NULL,
  '{"A":"Paling banyak 10 meter","B":"Paling sedikit 12 meter","C":"Antara 10 dan 12 meter","D":"Tepat 10 meter","E":"Antara 8 dan 12 meter"}'::jsonb,
  'C',
  'Kebutuhan sedikitnya 10 meter (batas bawah) dan kelebihan maksimal 2 meter (batas atas 12 meter).',
  NULL,
  NULL,
  'published'
),
(
  'web',
  637,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Pada soal cerita tabel, opsi dengan harga paling murah biasanya...',
  NULL,
  '{"A":"Selalu mengandung kemasan terkecil","B":"Sering melanggar salah satu ketentuan, jadi periksa dulu","C":"Tidak perlu dibandingkan","D":"Selalu mengandung kemasan terbesar","E":"Pasti jawaban"}'::jsonb,
  'B',
  'Soal sengaja memasang opsi murah yang gugur di ketentuan, misalnya total ukuran kurang dari kebutuhan. Cek ketentuan dulu.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  638,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Sebuah proyek saluran air membutuhkan pipa sedikitnya 16 meter. Harga: Alfa (2 meter) Rp30.000, Beta (3 meter) Rp39.000, Gama (4 meter) Rp48.000, Delta (6 meter) Rp66.000.
Ketentuan:
1. Harus membeli tepat 5 batang.
2. Minimal 1 batang Alfa.
3. Beta maksimal 1 batang.
4. Meter berlebih maksimal 2 meter.
5. Promo: potongan Rp6.000 untuk setiap batang Gama, hanya berlaku jika membeli minimal 2 batang Gama.
Empat opsi dipertimbangkan:
P: 2 Alfa, 2 Gama, 1 Delta
Q: 3 Alfa, 2 Gama
R: 1 Alfa, 2 Beta, 2 Gama
S: 3 Alfa, 1 Gama, 1 Delta
Opsi paling hemat yang memenuhi semua ketentuan dan selisih biayanya terhadap opsi lolos lainnya adalah...',
  NULL,
  '{"A":"Q, selisih Rp30.000","B":"S, selisih Rp12.000","C":"P, selisih Rp6.000","D":"S, selisih Rp6.000","E":"S, selisih Rp18.000"}'::jsonb,
  'D',
  'Saring dulu. Q gugur: 3×2 + 2×4 = 14 meter, kurang dari 16 (paling murah, Rp174.000, tapi tidak boleh dipilih). R gugur: Beta 2 batang, melanggar maksimal 1 (Rp192.000). P lolos: 4+8+6 = 18 meter, kelebihan tepat 2 meter masih boleh. Biaya 60.000+96.000+66.000 = 222.000, dipotong 2 × 6.000 = Rp210.000. S lolos: 6+4+6 = 16 meter, biaya 90.000+48.000+66.000 = Rp204.000 dan tidak dapat promo karena Gama cuma 1. S lebih hemat Rp6.000. Jebakan: B lupa promo (222.000 − 204.000), E memotong promo sekali saja atau memberi promo ke S, C membalik opsi, A memilih opsi murah yang sudah gugur.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  639,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Kata "sedikitnya", "maksimal", dan "tepat" pada soal tabel berturut-turut bermakna...',
  NULL,
  '{"A":"paling besar, paling kecil, persis","B":"kurang dari, lebih dari, kira-kira","C":"lebih dari, kurang dari, persis","D":"persis, paling kecil, paling besar","E":"paling kecil sama dengan, paling besar sama dengan, persis sama"}'::jsonb,
  'E',
  'Sedikitnya berarti ≥, maksimal berarti ≤, tepat berarti =. Tanda sama dengan ikut diperbolehkan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  640,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Perhatikan tabel berikut!
Kolom X | Kolom Y
m | 27
6 | 31
11 | 51
n | 67
19 | 83
Nilai m + n adalah...',
  NULL,
  '{"A":"18","B":"19","C":"20","D":"21","E":"22"}'::jsonb,
  'C',
  'Dari (6,31), (11,51), (19,83): Y naik 4 tiap X naik 1, jadi Y = 4X + 7. m = 5, n = 15, sehingga m + n = 20.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  641,
  'TIU',
  'Soal Cerita',
  'sedang',
  'Perhatikan tabel harga konsumsi berikut!
Jenis | Satuan | Harga
Nasi kotak | 1 porsi | Rp28.000
Prasmanan | paket isi 10 porsi | Rp240.000
Snack | 1 buah | Rp12.000
Panitia melayani 45 peserta. Tiap peserta mendapat tepat satu porsi makan utama (nasi kotak atau prasmanan; kelebihan porsi maksimal 5) dan tepat satu snack. Paket prasmanan dibeli minimal 2 dan maksimal 3 paket. Biaya terendah yang memenuhi semua ketentuan adalah....',
  NULL,
  '{"A":"Rp1.640.000","B":"Rp1.680.000","C":"Rp1.720.000","D":"Rp1.740.000","E":"Rp1.800.000"}'::jsonb,
  'B',
  '3 paket prasmanan (30 porsi) = 720.000; 15 nasi kotak = 420.000; 45 snack = 540.000; total 1.680.000. Rp1.640.000 memakai 4 paket prasmanan, melanggar batas maksimal 3.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  642,
  'TIU',
  'Kecukupan Data',
  'sedang',
  'Kotak A berisi 24 kelereng merah dan 16 kelereng biru. Berapakah banyak kelereng biru di Kotak B?
Pernyataan (1): Perbandingan kelereng merah dan biru di Kotak B sama dengan di Kotak A.
Pernyataan (2): Kotak B berisi 30 kelereng merah dan seluruhnya berjumlah 50 kelereng.',
  NULL,
  '{"A":"Pernyataan (1) SAJA cukup untuk menjawab pertanyaan, tetapi pernyataan (2) SAJA tidak cukup.","B":"Pernyataan (2) SAJA cukup untuk menjawab pertanyaan, tetapi pernyataan (1) SAJA tidak cukup.","C":"DUA pernyataan BERSAMA-SAMA cukup untuk menjawab pertanyaan, tetapi SATU pernyataan SAJA tidak cukup.","D":"Pernyataan (1) SAJA cukup DAN pernyataan (2) SAJA cukup untuk menjawab pertanyaan.","E":"Pernyataan (1) dan (2) TIDAK cukup untuk menjawab pertanyaan."}'::jsonb,
  'B',
  '(1) cuma memberi rasio 3: 2, biru bisa 20, 40, atau lainnya: tidak cukup. (2) biru = 50 − 30 = 20: cukup. Jawaban B.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  643,
  'TIU',
  'Kecukupan Data',
  'sedang',
  'Berapakah umur Rina sekarang?
Pernyataan (1): Umur Rina 4 tahun lebih tua daripada adiknya.
Pernyataan (2): Jumlah umur Rina dan adiknya 30 tahun.',
  NULL,
  '{"A":"Pernyataan (1) SAJA cukup untuk menjawab pertanyaan, tetapi pernyataan (2) SAJA tidak cukup.","B":"Pernyataan (2) SAJA cukup untuk menjawab pertanyaan, tetapi pernyataan (1) SAJA tidak cukup.","C":"DUA pernyataan BERSAMA-SAMA cukup untuk menjawab pertanyaan, tetapi SATU pernyataan SAJA tidak cukup.","D":"Pernyataan (1) SAJA cukup DAN pernyataan (2) SAJA cukup untuk menjawab pertanyaan.","E":"Pernyataan (1) dan (2) TIDAK cukup untuk menjawab pertanyaan."}'::jsonb,
  'C',
  'Sendirian, masing-masing satu persamaan untuk dua variabel: tidak cukup. Digabung: R + (R − 4) = 30, jadi R = 17. Jawaban C.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  644,
  'TIU',
  'Kecukupan Data',
  'sedang',
  'Berapakah harga sebuah buku?
Pernyataan (1): Harga 3 buku sama dengan Rp45.000.
Pernyataan (2): Harga 5 buku sama dengan Rp75.000.',
  NULL,
  '{"A":"Pernyataan (1) SAJA cukup untuk menjawab pertanyaan, tetapi pernyataan (2) SAJA tidak cukup.","B":"Pernyataan (2) SAJA cukup untuk menjawab pertanyaan, tetapi pernyataan (1) SAJA tidak cukup.","C":"DUA pernyataan BERSAMA-SAMA cukup untuk menjawab pertanyaan, tetapi SATU pernyataan SAJA tidak cukup.","D":"Pernyataan (1) SAJA cukup DAN pernyataan (2) SAJA cukup untuk menjawab pertanyaan.","E":"Pernyataan (1) dan (2) TIDAK cukup untuk menjawab pertanyaan."}'::jsonb,
  'D',
  '(1) memberi 45.000 ÷ 3 = 15.000, cukup. (2) memberi 75.000 ÷ 5 = 15.000, cukup. Masing-masing udah cukup sendirian: D.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  645,
  'TIU',
  'Kecukupan Data',
  'sedang',
  'Berapakah luas persegi panjang ABCD?
Pernyataan (1): Panjangnya 12 cm dan lebarnya 5 cm.
Pernyataan (2): Kelilingnya 34 cm.',
  NULL,
  '{"A":"Pernyataan (1) SAJA cukup untuk menjawab pertanyaan, tetapi pernyataan (2) SAJA tidak cukup.","B":"Pernyataan (2) SAJA cukup untuk menjawab pertanyaan, tetapi pernyataan (1) SAJA tidak cukup.","C":"DUA pernyataan BERSAMA-SAMA cukup untuk menjawab pertanyaan, tetapi SATU pernyataan SAJA tidak cukup.","D":"Pernyataan (1) SAJA cukup DAN pernyataan (2) SAJA cukup untuk menjawab pertanyaan.","E":"Pernyataan (1) dan (2) TIDAK cukup untuk menjawab pertanyaan."}'::jsonb,
  'A',
  '(1) luas = 12 × 5 = 60 cm², cukup. (2) keliling 34 cuma menghasilkan p + l = 17, banyak pasangan p dan l: tidak cukup. Jawaban A.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  646,
  'TIU',
  'Kecukupan Data',
  'sedang',
  'Berapakah nilai x?
Pernyataan (1): x + y = 10.
Pernyataan (2): 2x + 2y = 20.',
  NULL,
  '{"A":"Pernyataan (1) SAJA cukup untuk menjawab pertanyaan, tetapi pernyataan (2) SAJA tidak cukup.","B":"Pernyataan (2) SAJA cukup untuk menjawab pertanyaan, tetapi pernyataan (1) SAJA tidak cukup.","C":"DUA pernyataan BERSAMA-SAMA cukup untuk menjawab pertanyaan, tetapi SATU pernyataan SAJA tidak cukup.","D":"Pernyataan (1) SAJA cukup DAN pernyataan (2) SAJA cukup untuk menjawab pertanyaan.","E":"Pernyataan (1) dan (2) TIDAK cukup untuk menjawab pertanyaan."}'::jsonb,
  'E',
  '(2) hanyalah (1) yang dikali 2, jadi nggak menambah informasi. Dua variabel cuma punya satu persamaan: tidak cukup walau digabung. Jawaban E.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  647,
  'TIU',
  'Kecukupan Data',
  'sedang',
  'Apakah bilangan bulat n habis dibagi 4?
Pernyataan (1): n adalah bilangan genap.
Pernyataan (2): n adalah kelipatan 8.',
  NULL,
  '{"A":"Pernyataan (1) SAJA cukup untuk menjawab pertanyaan, tetapi pernyataan (2) SAJA tidak cukup.","B":"Pernyataan (2) SAJA cukup untuk menjawab pertanyaan, tetapi pernyataan (1) SAJA tidak cukup.","C":"DUA pernyataan BERSAMA-SAMA cukup untuk menjawab pertanyaan, tetapi SATU pernyataan SAJA tidak cukup.","D":"Pernyataan (1) SAJA cukup DAN pernyataan (2) SAJA cukup untuk menjawab pertanyaan.","E":"Pernyataan (1) dan (2) TIDAK cukup untuk menjawab pertanyaan."}'::jsonb,
  'B',
  '(1) 6 nggak habis dibagi 4 tapi 8 habis: hasilnya berubah, tidak cukup. (2) kelipatan 8 pasti habis dibagi 4, selalu ya: cukup. Jawaban B.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  648,
  'TIU',
  'Kecukupan Data',
  'sedang',
  'Berapakah banyak siswa kelas X?
Pernyataan (1): Perbandingan siswa laki-laki dan perempuan 3: 2.
Pernyataan (2): Banyak siswa laki-laki 18 orang.',
  NULL,
  '{"A":"Pernyataan (1) SAJA cukup untuk menjawab pertanyaan, tetapi pernyataan (2) SAJA tidak cukup.","B":"Pernyataan (2) SAJA cukup untuk menjawab pertanyaan, tetapi pernyataan (1) SAJA tidak cukup.","C":"DUA pernyataan BERSAMA-SAMA cukup untuk menjawab pertanyaan, tetapi SATU pernyataan SAJA tidak cukup.","D":"Pernyataan (1) SAJA cukup DAN pernyataan (2) SAJA cukup untuk menjawab pertanyaan.","E":"Pernyataan (1) dan (2) TIDAK cukup untuk menjawab pertanyaan."}'::jsonb,
  'C',
  '(1) rasio aja tidak cukup. (2) laki-laki aja tidak cukup. Digabung: 3 bagian = 18, jadi 1 bagian = 6, perempuan 2 × 6 = 12, total 30. Jawaban C.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  649,
  'TIU',
  'Kecukupan Data',
  'sedang',
  'Berapa umur Ani? (1) Umur Ani dua kali umur Budi. (2) Umur Budi 10 tahun.',
  NULL,
  '{"A":"Pernyataan (1) SAJA cukup, pernyataan (2) SAJA tidak cukup","B":"Pernyataan (2) SAJA cukup, pernyataan (1) SAJA tidak cukup","C":"DUA pernyataan BERSAMA-SAMA cukup, tetapi SATU pernyataan SAJA tidak cukup","D":"Pernyataan (1) SAJA cukup dan pernyataan (2) SAJA cukup","E":"Pernyataan (1) dan (2) tidak cukup"}'::jsonb,
  'C',
  'Butuh keduanya: Budi 10, Ani 20.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  650,
  'TIU',
  'Kecukupan Data',
  'sedang',
  'Berapa nilai x? (1) 2x = 10. (2) x bilangan genap.',
  NULL,
  '{"A":"Pernyataan (1) SAJA cukup, pernyataan (2) SAJA tidak cukup","B":"Pernyataan (2) SAJA cukup, pernyataan (1) SAJA tidak cukup","C":"DUA pernyataan BERSAMA-SAMA cukup, tetapi SATU pernyataan SAJA tidak cukup","D":"Pernyataan (1) SAJA cukup dan pernyataan (2) SAJA cukup","E":"Pernyataan (1) dan (2) tidak cukup"}'::jsonb,
  'A',
  'Dari (1) x = 5 sudah pasti; (2) saja tidak menentukan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  651,
  'TIU',
  'Kecukupan Data',
  'sedang',
  'Apakah Rina lebih tua dari Sinta? (1) Rina lebih muda dari Tono. (2) Tono lebih muda dari Sinta.',
  NULL,
  '{"A":"Pernyataan (1) SAJA cukup, pernyataan (2) SAJA tidak cukup","B":"Pernyataan (2) SAJA cukup, pernyataan (1) SAJA tidak cukup","C":"DUA pernyataan BERSAMA-SAMA cukup, tetapi SATU pernyataan SAJA tidak cukup","D":"Pernyataan (1) SAJA cukup dan pernyataan (2) SAJA cukup","E":"Pernyataan (1) dan (2) tidak cukup"}'::jsonb,
  'C',
  'Gabungan: Rina < Tono < Sinta, sehingga Rina lebih muda. Satu pernyataan saja tidak cukup.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  652,
  'TIU',
  'Kecukupan Data',
  'sedang',
  'Apakah x bilangan genap? (1) x kuadrat adalah bilangan genap. (2) x lebih besar dari 3.',
  NULL,
  '{"A":"Pernyataan (1) SAJA cukup, pernyataan (2) SAJA tidak cukup","B":"Pernyataan (2) SAJA cukup, pernyataan (1) SAJA tidak cukup","C":"DUA pernyataan BERSAMA-SAMA cukup, tetapi SATU pernyataan SAJA tidak cukup","D":"Pernyataan (1) SAJA cukup dan pernyataan (2) SAJA cukup","E":"Pernyataan (1) dan (2) tidak cukup"}'::jsonb,
  'A',
  'Jika x kuadrat genap maka x genap; (2) saja tidak menentukan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  653,
  'TIU',
  'Kecukupan Data',
  'sedang',
  'Berapa harga satu pensil? (1) Harga 3 pensil dan 2 buku Rp17.000. (2) Harga 1 buku Rp4.000.',
  NULL,
  '{"A":"Pernyataan (1) SAJA cukup, pernyataan (2) SAJA tidak cukup","B":"Pernyataan (2) SAJA cukup, pernyataan (1) SAJA tidak cukup","C":"DUA pernyataan BERSAMA-SAMA cukup, tetapi SATU pernyataan SAJA tidak cukup","D":"Pernyataan (1) SAJA cukup dan pernyataan (2) SAJA cukup","E":"Pernyataan (1) dan (2) tidak cukup"}'::jsonb,
  'C',
  'Tiap pernyataan sendiri tidak cukup; bersama: 3p + 8.000 = 17.000, p = 3.000.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  654,
  'TIU',
  'Kecukupan Data',
  'sedang',
  'Apakah x lebih besar dari y? (1) x = 2y. (2) y > 0.',
  NULL,
  '{"A":"Pernyataan (1) SAJA cukup, pernyataan (2) SAJA tidak cukup","B":"Pernyataan (2) SAJA cukup, pernyataan (1) SAJA tidak cukup","C":"DUA pernyataan BERSAMA-SAMA cukup, tetapi SATU pernyataan SAJA tidak cukup","D":"Pernyataan (1) SAJA cukup dan pernyataan (2) SAJA cukup","E":"Pernyataan (1) dan (2) tidak cukup"}'::jsonb,
  'C',
  '(1) saja gagal bila y negatif; (2) saja tanpa hubungan x dan y. Bersama: x = 2y dengan y positif sehingga x > y.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  655,
  'TIU',
  'Kecukupan Data',
  'sedang',
  'Berapa umur Dina sekarang? (1) Lima tahun lalu umur Dina dua kali umur Eka. (2) Umur Eka sekarang 15 tahun.',
  NULL,
  '{"A":"Pernyataan (1) SAJA cukup, pernyataan (2) SAJA tidak cukup","B":"Pernyataan (2) SAJA cukup, pernyataan (1) SAJA tidak cukup","C":"DUA pernyataan BERSAMA-SAMA cukup, tetapi SATU pernyataan SAJA tidak cukup","D":"Pernyataan (1) SAJA cukup dan pernyataan (2) SAJA cukup","E":"Pernyataan (1) dan (2) tidak cukup"}'::jsonb,
  'C',
  'Bersama: Eka lima tahun lalu 10, Dina 20, sekarang 25. Satu pernyataan saja tidak cukup.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  656,
  'TIU',
  'Kecukupan Data',
  'sedang',
  'Berapa nilai p? (1) p pangkat 2 = 16. (2) p + 3 = 7.',
  NULL,
  '{"A":"Pernyataan (1) SAJA cukup, pernyataan (2) SAJA tidak cukup","B":"Pernyataan (2) SAJA cukup, pernyataan (1) SAJA tidak cukup","C":"DUA pernyataan BERSAMA-SAMA cukup, tetapi SATU pernyataan SAJA tidak cukup","D":"Pernyataan (1) SAJA cukup dan pernyataan (2) SAJA cukup","E":"Pernyataan (1) dan (2) tidak cukup"}'::jsonb,
  'B',
  '(1) memberi p = 4 atau -4 (belum pasti); (2) memberi p = 4. Hanya (2) cukup.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  657,
  'TIU',
  'Kecukupan Data',
  'sedang',
  'Apakah m bernilai positif? (1) m pangkat 2 lebih besar dari 0. (2) m pangkat 3 lebih besar dari 0.',
  NULL,
  '{"A":"Pernyataan (1) SAJA cukup, pernyataan (2) SAJA tidak cukup","B":"Pernyataan (2) SAJA cukup, pernyataan (1) SAJA tidak cukup","C":"DUA pernyataan BERSAMA-SAMA cukup, tetapi SATU pernyataan SAJA tidak cukup","D":"Pernyataan (1) SAJA cukup dan pernyataan (2) SAJA cukup","E":"Pernyataan (1) dan (2) tidak cukup"}'::jsonb,
  'B',
  '(1) hanya menyatakan m tidak nol; (2) memastikan m positif.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  658,
  'TIU',
  'Kecukupan Data',
  'sedang',
  'Berapa harga satu buku? (1) 2 buku dan 1 pena Rp11.000. (2) 4 buku dan 2 pena Rp22.000.',
  NULL,
  '{"A":"Pernyataan (1) SAJA cukup, pernyataan (2) SAJA tidak cukup","B":"Pernyataan (2) SAJA cukup, pernyataan (1) SAJA tidak cukup","C":"DUA pernyataan BERSAMA-SAMA cukup, tetapi SATU pernyataan SAJA tidak cukup","D":"Pernyataan (1) SAJA cukup dan pernyataan (2) SAJA cukup","E":"Pernyataan (1) dan (2) tidak cukup"}'::jsonb,
  'E',
  'Pernyataan (2) hanyalah dua kali (1): informasinya sama, tidak cukup menentukan harga buku.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  659,
  'TIU',
  'Kecukupan Data',
  'sedang',
  'Berapa keliling persegi panjang? (1) Luasnya 48 cm persegi. (2) Panjangnya dua kali lebarnya.',
  NULL,
  '{"A":"Pernyataan (1) SAJA cukup, pernyataan (2) SAJA tidak cukup","B":"Pernyataan (2) SAJA cukup, pernyataan (1) SAJA tidak cukup","C":"DUA pernyataan BERSAMA-SAMA cukup, tetapi SATU pernyataan SAJA tidak cukup","D":"Pernyataan (1) SAJA cukup dan pernyataan (2) SAJA cukup","E":"Pernyataan (1) dan (2) tidak cukup"}'::jsonb,
  'C',
  'Bersama: 2l x l = 48 sehingga l dan p dapat dihitung, jadi keliling pasti. Sendiri-sendiri tidak cukup.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  660,
  'TIU',
  'Kecukupan Data',
  'sedang',
  'Berapa nilai x - y? (1) x + y = 10. (2) x pangkat 2 - y pangkat 2 = 40.',
  NULL,
  '{"A":"Pernyataan (1) SAJA cukup, pernyataan (2) SAJA tidak cukup","B":"Pernyataan (2) SAJA cukup, pernyataan (1) SAJA tidak cukup","C":"DUA pernyataan BERSAMA-SAMA cukup, tetapi SATU pernyataan SAJA tidak cukup","D":"Pernyataan (1) SAJA cukup dan pernyataan (2) SAJA cukup","E":"Pernyataan (1) dan (2) tidak cukup"}'::jsonb,
  'C',
  'Bersama: (x - y)(x + y) = 40 dan x + y = 10, sehingga x - y = 4. Sendiri-sendiri tidak cukup.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  661,
  'TIU',
  'Kecukupan Data',
  'sedang',
  'Berapa luas sebuah lingkaran? (1) Kelilingnya 31,4 cm (dengan pi = 3,14). (2) Diameternya 10 cm.',
  NULL,
  '{"A":"Pernyataan (1) SAJA cukup, pernyataan (2) SAJA tidak cukup","B":"Pernyataan (2) SAJA cukup, pernyataan (1) SAJA tidak cukup","C":"DUA pernyataan BERSAMA-SAMA cukup, tetapi SATU pernyataan SAJA tidak cukup","D":"Pernyataan (1) SAJA cukup dan pernyataan (2) SAJA cukup","E":"Pernyataan (1) dan (2) tidak cukup"}'::jsonb,
  'D',
  'Dari (1): d = 10 sehingga r = 5. Dari (2): r = 5 juga. Masing-masing cukup untuk menghitung luas.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  662,
  'TIU',
  'Kecukupan Data',
  'sedang',
  'Berapa nilai y? (1) y pangkat 2 = 9. (2) y pangkat 3 = 27.',
  NULL,
  '{"A":"Pernyataan (1) SAJA cukup, pernyataan (2) SAJA tidak cukup","B":"Pernyataan (2) SAJA cukup, pernyataan (1) SAJA tidak cukup","C":"DUA pernyataan BERSAMA-SAMA cukup, tetapi SATU pernyataan SAJA tidak cukup","D":"Pernyataan (1) SAJA cukup dan pernyataan (2) SAJA cukup","E":"Pernyataan (1) dan (2) tidak cukup"}'::jsonb,
  'B',
  '(1) memberi y = 3 atau -3 (belum pasti). (2) memberi y = 3 saja.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  663,
  'TIU',
  'Kecukupan Data',
  'sedang',
  'Berapa luas segitiga ABC? (1) Alas AB = 8 cm. (2) Sisi AC = 10 cm.',
  NULL,
  '{"A":"Pernyataan (1) SAJA cukup, pernyataan (2) SAJA tidak cukup","B":"Pernyataan (2) SAJA cukup, pernyataan (1) SAJA tidak cukup","C":"DUA pernyataan BERSAMA-SAMA cukup, tetapi SATU pernyataan SAJA tidak cukup","D":"Pernyataan (1) SAJA cukup dan pernyataan (2) SAJA cukup","E":"Pernyataan (1) dan (2) tidak cukup"}'::jsonb,
  'E',
  'Dua sisi tanpa informasi sudut atau tinggi tidak menentukan luas. Bersama pun belum cukup.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  664,
  'TIU',
  'Kecukupan Data',
  'sedang',
  'Berapa nilai x² − y²? (1) x + y = 8. (2) x − y = 3.',
  NULL,
  '{"A":"Pernyataan (1) SAJA cukup, pernyataan (2) SAJA tidak cukup","B":"Pernyataan (2) SAJA cukup, pernyataan (1) SAJA tidak cukup","C":"DUA pernyataan BERSAMA-SAMA cukup, tetapi SATU pernyataan SAJA tidak cukup","D":"Pernyataan (1) SAJA cukup dan pernyataan (2) SAJA cukup","E":"Pernyataan (1) dan (2) tidak cukup"}'::jsonb,
  'C',
  'x² − y² = (x + y)(x − y) = 8 × 3 = 24. Perlu keduanya; satu pernyataan saja tidak menentukan hasil.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  665,
  'TIU',
  'Kecukupan Data',
  'sedang',
  'Berapa umur Sari sekarang? (1) Umur Sari tiga kali umur Rini dan selisih umur mereka 24 tahun. (2) Lima tahun lagi umur Sari dua kali umur Rini.',
  NULL,
  '{"A":"Pernyataan (1) SAJA cukup, pernyataan (2) SAJA tidak cukup","B":"Pernyataan (2) SAJA cukup, pernyataan (1) SAJA tidak cukup","C":"DUA pernyataan BERSAMA-SAMA cukup, tetapi SATU pernyataan SAJA tidak cukup","D":"Pernyataan (1) SAJA cukup dan pernyataan (2) SAJA cukup","E":"Pernyataan (1) dan (2) tidak cukup"}'::jsonb,
  'A',
  '(1): S = 3R dan S − R = 24 sehingga R = 12, S = 36. (2) hanya satu persamaan (S = 2R + 5) dengan dua yang tidak diketahui, jadi tidak cukup.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  666,
  'TIU',
  'Kecukupan Data',
  'sedang',
  'Berapa luas persegi panjang ABCD? (1) Kelilingnya 30 cm. (2) Panjang diagonalnya 13 cm.',
  NULL,
  '{"A":"Pernyataan (1) SAJA cukup, pernyataan (2) SAJA tidak cukup","B":"Pernyataan (2) SAJA cukup, pernyataan (1) SAJA tidak cukup","C":"DUA pernyataan BERSAMA-SAMA cukup, tetapi SATU pernyataan SAJA tidak cukup","D":"Pernyataan (1) SAJA cukup dan pernyataan (2) SAJA cukup","E":"Pernyataan (1) dan (2) tidak cukup"}'::jsonb,
  'C',
  'p + l = 15 dan p² + l² = 169 sehingga 2pl = 225 − 169 = 56, pl = 28. Satu pernyataan saja memberi banyak kemungkinan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  667,
  'TIU',
  'Kecukupan Data',
  'sedang',
  'Apakah ab > 0? (1) a + b > 0. (2) a − b > 0.',
  NULL,
  '{"A":"Pernyataan (1) SAJA cukup, pernyataan (2) SAJA tidak cukup","B":"Pernyataan (2) SAJA cukup, pernyataan (1) SAJA tidak cukup","C":"DUA pernyataan BERSAMA-SAMA cukup, tetapi SATU pernyataan SAJA tidak cukup","D":"Pernyataan (1) SAJA cukup dan pernyataan (2) SAJA cukup","E":"Pernyataan (1) dan (2) tidak cukup"}'::jsonb,
  'E',
  'Bersama: a > |b|, jadi a positif, tetapi b boleh positif atau negatif (a = 3, b = 1 atau a = 3, b = −1). Tanda ab tidak pasti, jadi tidak cukup.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  668,
  'TIU',
  'Kecukupan Data',
  'sedang',
  'Berapa nilai x? (1) 3x + 6 = 21. (2) x² = 25 dan x > 0.',
  NULL,
  '{"A":"Pernyataan (1) SAJA cukup, pernyataan (2) SAJA tidak cukup","B":"Pernyataan (2) SAJA cukup, pernyataan (1) SAJA tidak cukup","C":"DUA pernyataan BERSAMA-SAMA cukup, tetapi SATU pernyataan SAJA tidak cukup","D":"Pernyataan (1) SAJA cukup dan pernyataan (2) SAJA cukup","E":"Pernyataan (1) dan (2) tidak cukup"}'::jsonb,
  'D',
  '(1) x = 5. (2) x = 5 karena x positif. Masing-masing cukup.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  669,
  'TIU',
  'Figural Analogi',
  'sedang',
  'Aturan: warna dibalik, bentuk tetap. ■ menjadi □, maka ● menjadi...',
  NULL,
  '{"A":"◇","B":"■","C":"●","D":"○","E":"△"}'::jsonb,
  'D',
  'Hubungan gambar pertama ke kedua adalah warna hitam menjadi putih dengan bentuk tetap. Terapkan pada lingkaran hitam, hasilnya lingkaran putih.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  670,
  'TIU',
  'Figural Analogi',
  'sedang',
  'Level Mudah
Pilih gambar yang melengkapi analogi ini. [gambar]: [gambar] = [gambar]:?',
  '/gambar/TIU-figanalogi-002.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'C',
  'A ke B: diputar 90° searah jarum jam. Lakukan hal yang sama pada C, hasilnya gambar C. Opsi A salah: gambar C belum diubah sama sekali. Opsi B salah: berupa bayangan cermin, bukan hasil putaran. Opsi D salah: bentuknya berubah, padahal seharusnya tetap. Opsi E salah: bentuknya berubah, padahal seharusnya tetap.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  671,
  'TIU',
  'Figural Analogi',
  'sedang',
  'Level Mudah
Pilih gambar yang melengkapi analogi ini. [gambar]: [gambar] = [gambar]:?',
  '/gambar/TIU-figanalogi-003.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'E',
  'A ke B: dicerminkan kiri-kanan. Lakukan hal yang sama pada C, hasilnya gambar E. Opsi A salah: gambar C belum diubah sama sekali. Opsi B salah: dicerminkan atas-bawah, bukan kiri-kanan. Opsi C salah: diputar 180°, bukan dicerminkan. Opsi D salah: sudut putarnya keliru.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  672,
  'TIU',
  'Figural Analogi',
  'sedang',
  'Level Sedang
Pilih gambar yang melengkapi analogi ini. [gambar]: [gambar] = [gambar]:?',
  '/gambar/TIU-figanalogi-004.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'E',
  'A ke B: berkurang satu. Lakukan hal yang sama pada C, hasilnya gambar E. Opsi A salah: gambar C belum diubah sama sekali. Opsi B salah: jumlahnya keliru. Opsi C salah: warnanya tidak sesuai aturan. Opsi D salah: bentuknya berubah, padahal seharusnya tetap.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  673,
  'TIU',
  'Figural Analogi',
  'sedang',
  'Level Sedang
Pilih gambar yang melengkapi analogi ini. [gambar]: [gambar] = [gambar]:?',
  '/gambar/TIU-figanalogi-005.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'D',
  'A ke B: diputar 90° searah jarum jam. Lakukan hal yang sama pada C, hasilnya gambar D. Opsi A salah: gambar C belum diubah sama sekali. Opsi B salah: bentuknya berubah, padahal seharusnya tetap. Opsi C salah: berupa bayangan cermin, bukan hasil putaran. Opsi E salah: bentuknya berubah, padahal seharusnya tetap.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  674,
  'TIU',
  'Figural Analogi',
  'sedang',
  'Level Sedang
Pilih gambar yang melengkapi analogi ini. [gambar]: [gambar] = [gambar]:?',
  '/gambar/TIU-figanalogi-006.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'E',
  'A ke B: berkurang satu. Lakukan hal yang sama pada C, hasilnya gambar E. Opsi A salah: gambar C belum diubah sama sekali. Opsi B salah: warnanya tidak sesuai aturan. Opsi C salah: bentuknya berubah, padahal seharusnya tetap. Opsi D salah: bentuknya berubah, padahal seharusnya tetap.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  675,
  'TIU',
  'Figural Analogi',
  'sedang',
  'Level Sedang
Pilih gambar yang melengkapi analogi ini. [gambar]: [gambar] = [gambar]:?',
  '/gambar/TIU-figanalogi-007.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'D',
  'A ke B: diputar 90° searah jarum jam. Lakukan hal yang sama pada C, hasilnya gambar D. Opsi A salah: gambar C belum diubah sama sekali. Opsi B salah: bentuknya berubah, padahal seharusnya tetap. Opsi C salah: sudut putarnya keliru. Opsi E salah: bentuknya berubah, padahal seharusnya tetap.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  676,
  'TIU',
  'Figural Analogi',
  'sedang',
  'Level Sulit
Pilih gambar yang melengkapi analogi ini. [gambar]: [gambar] = [gambar]:?',
  '/gambar/TIU-figanalogi-008.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'B',
  'A ke B: bergeser satu sudut searah jarum jam. Lakukan hal yang sama pada C, hasilnya gambar B. Opsi A salah: gambar C belum diubah sama sekali. Opsi C salah: letaknya keliru. Opsi D salah: bentuknya berubah, padahal seharusnya tetap. Opsi E salah: bentuknya berubah, padahal seharusnya tetap.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  677,
  'TIU',
  'Figural Analogi',
  'sedang',
  'Level Sulit
Pilih gambar yang melengkapi analogi ini. [gambar]: [gambar] = [gambar]:?',
  '/gambar/TIU-figanalogi-009.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'B',
  'A ke B: diputar 45° searah jarum jam. Lakukan hal yang sama pada C, hasilnya gambar B. Opsi A salah: gambar C belum diubah sama sekali. Opsi C salah: sudut putarnya keliru. Opsi D salah: bentuknya berubah, padahal seharusnya tetap. Opsi E salah: bentuknya berubah, padahal seharusnya tetap.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  678,
  'TIU',
  'Figural Analogi',
  'sedang',
  'Level Sulit
Pilih gambar yang melengkapi analogi ini. [gambar]: [gambar] = [gambar]:?',
  '/gambar/TIU-figanalogi-010.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'C',
  'A ke B: diputar 90° lalu warnanya dibalik. Lakukan hal yang sama pada C, hasilnya gambar C. Opsi A salah: gambar C belum diubah sama sekali. Opsi B salah: hanya warnanya yang diubah. Opsi D salah: sudut putarnya keliru. Opsi E salah: sudut putarnya keliru.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  679,
  'TIU',
  'Figural Analogi',
  'sedang',
  'Level Sulit
Pilih gambar yang melengkapi analogi ini. [gambar]: [gambar] = [gambar]:?',
  '/gambar/TIU-figanalogi-011.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'E',
  'A ke B: diputar 90° berlawanan jarum jam. Lakukan hal yang sama pada C, hasilnya gambar E. Opsi A salah: gambar C belum diubah sama sekali. Opsi B salah: sudut putarnya keliru. Opsi C salah: sudut putarnya keliru. Opsi D salah: bentuknya berubah, padahal seharusnya tetap.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  680,
  'TIU',
  'Figural Analogi',
  'sedang',
  'Level Sulit
Pilih gambar yang melengkapi analogi ini. [gambar]: [gambar] = [gambar]:?',
  '/gambar/TIU-figanalogi-012.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'D',
  'A ke B: diputar 90° lalu warnanya dibalik. Lakukan hal yang sama pada C, hasilnya gambar D. Opsi A salah: gambar C belum diubah sama sekali. Opsi B salah: hanya warnanya yang diubah. Opsi C salah: bentuknya berubah, padahal seharusnya tetap. Opsi E salah: bentuknya berubah, padahal seharusnya tetap.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  681,
  'TIU',
  'Figural Analogi',
  'sedang',
  'Level Sulit
Pilih gambar yang melengkapi analogi ini. [gambar]: [gambar] = [gambar]:?',
  '/gambar/TIU-figanalogi-013.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'D',
  'A ke B: bertambah satu dan warnanya dibalik. Lakukan hal yang sama pada C, hasilnya gambar D. Opsi A salah: gambar C belum diubah sama sekali. Opsi B salah: hanya warnanya yang diubah. Opsi C salah: sudut putarnya keliru. Opsi E salah: bentuknya berubah, padahal seharusnya tetap.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  682,
  'TIU',
  'Figural Analogi',
  'sedang',
  'Level Sulit
Pilih gambar yang melengkapi analogi ini. [gambar]: [gambar] = [gambar]:?',
  '/gambar/TIU-figanalogi-014.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'A',
  'A ke B: diputar 90° lalu warnanya dibalik. Lakukan hal yang sama pada C, hasilnya gambar A. Opsi B salah: gambar C belum diubah sama sekali. Opsi C salah: hanya warnanya yang diubah. Opsi D salah: sudut putarnya keliru. Opsi E salah: bentuknya berubah, padahal seharusnya tetap.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  683,
  'TIU',
  'Figural Analogi',
  'sedang',
  'Level Sulit
Pilih gambar yang melengkapi analogi ini. [gambar]: [gambar] = [gambar]:?',
  '/gambar/TIU-figanalogi-015.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'D',
  'A ke B: diputar 45° searah jarum jam. Lakukan hal yang sama pada C, hasilnya gambar D. Opsi A salah: gambar C belum diubah sama sekali. Opsi B salah: sudut putarnya keliru. Opsi C salah: ukurannya keliru. Opsi E salah: jumlahnya keliru.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  684,
  'TIU',
  'Figural Analogi',
  'sedang',
  'Level Super sulit
Pilih gambar yang melengkapi analogi ini. [gambar]: [gambar] = [gambar]:?',
  '/gambar/TIU-figanalogi-016.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'D',
  'A ke B: dicerminkan atas-bawah. Lakukan hal yang sama pada C, hasilnya gambar D. Opsi A salah: gambar C belum diubah sama sekali. Opsi B salah: memakai aturan lain (putar 90° searah). Opsi C salah: memakai aturan lain (putar 90° berlawanan). Opsi E salah: memakai aturan lain (putar 180°).',
  NULL,
  NULL,
  'published'
),
(
  'web',
  685,
  'TIU',
  'Figural Analogi',
  'sedang',
  'Level Super sulit
Pilih gambar yang melengkapi analogi ini. [gambar]: [gambar] = [gambar]:?',
  '/gambar/TIU-figanalogi-017.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'A',
  'A ke B: dicerminkan atas-bawah. Lakukan hal yang sama pada C, hasilnya gambar A. Opsi B salah: gambar C belum diubah sama sekali. Opsi C salah: memakai aturan lain (putar 90° searah). Opsi D salah: memakai aturan lain (putar 90° berlawanan). Opsi E salah: memakai aturan lain (putar 180°).',
  NULL,
  NULL,
  'published'
),
(
  'web',
  686,
  'TIU',
  'Figural Analogi',
  'sedang',
  'Level Super sulit
Pilih gambar yang melengkapi analogi ini. [gambar]: [gambar] = [gambar]:?',
  '/gambar/TIU-figanalogi-018.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'D',
  'A ke B: warna naik satu tingkat: putih menjadi abu-abu, abu-abu menjadi hitam, hitam menjadi putih. Lakukan hal yang sama pada C, hasilnya gambar D. Opsi A salah: gambar C belum diubah sama sekali. Opsi B salah: memakai aturan lain (balik warna). Opsi C salah: warna salah satu unsur keliru. Opsi E salah: bentuk salah satu unsur keliru.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  687,
  'TIU',
  'Figural Analogi',
  'sedang',
  'Level Super sulit
Pilih gambar yang melengkapi analogi ini. [gambar]: [gambar] = [gambar]:?',
  '/gambar/TIU-figanalogi-019.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'B',
  'A ke B: warna hitam dan putih dibalik (abu-abu dan arsiran tetap). Lakukan hal yang sama pada C, hasilnya gambar B. Opsi A salah: gambar C belum diubah sama sekali. Opsi C salah: ada satu unsur yang hilang. Opsi D salah: warna salah satu unsur keliru. Opsi E salah: warna salah satu unsur keliru.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  688,
  'TIU',
  'Figural Analogi',
  'sedang',
  'Level Super sulit
Pilih gambar yang melengkapi analogi ini. [gambar]: [gambar] = [gambar]:?',
  '/gambar/TIU-figanalogi-020.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'B',
  'A ke B: dicerminkan kiri-kanan (posisi dan bentuk tiap unsur ikut dicerminkan). Lakukan hal yang sama pada C, hasilnya gambar B. Opsi A salah: gambar C belum diubah sama sekali. Opsi C salah: memakai aturan lain (putar 90° searah). Opsi D salah: memakai aturan lain (putar 90° berlawanan). Opsi E salah: memakai aturan lain (putar 180°).',
  NULL,
  NULL,
  'published'
),
(
  'web',
  689,
  'TIU',
  'Figural Analogi',
  'sedang',
  'Level Super sulit
Pilih gambar yang melengkapi analogi ini. [gambar]: [gambar] = [gambar]:?',
  '/gambar/TIU-figanalogi-021.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'A',
  'A ke B: semua unsur bergeser dua posisi searah jarum jam pada lingkaran, arah tiap unsur tetap. Lakukan hal yang sama pada C, hasilnya gambar A. Opsi B salah: gambar C belum diubah sama sekali. Opsi C salah: posisi salah satu unsur keliru. Opsi D salah: bentuk salah satu unsur keliru. Opsi E salah: warna salah satu unsur keliru.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  690,
  'TIU',
  'Figural Analogi',
  'sedang',
  'Level Super sulit
Pilih gambar yang melengkapi analogi ini. [gambar]: [gambar] = [gambar]:?',
  '/gambar/TIU-figanalogi-022.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'D',
  'A ke B: warna hitam dan putih dibalik (abu-abu dan arsiran tetap). Lakukan hal yang sama pada C, hasilnya gambar D. Opsi A salah: gambar C belum diubah sama sekali. Opsi B salah: memakai aturan lain (warna naik satu tingkat). Opsi C salah: warna salah satu unsur keliru. Opsi E salah: ada satu unsur yang hilang.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  691,
  'TIU',
  'Figural Analogi',
  'sedang',
  'Level Super sulit
Pilih gambar yang melengkapi analogi ini. [gambar]: [gambar] = [gambar]:?',
  '/gambar/TIU-figanalogi-023.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'E',
  'A ke B: tiap unsur mendapat kembaran di posisi seberangnya (kembaran ikut diputar 180°). Lakukan hal yang sama pada C, hasilnya gambar E. Opsi A salah: gambar C belum diubah sama sekali. Opsi B salah: ada satu unsur yang hilang. Opsi C salah: warna salah satu unsur keliru. Opsi D salah: ada satu unsur yang hilang.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  692,
  'TIU',
  'Figural Analogi',
  'sedang',
  'Level Super sulit
Pilih gambar yang melengkapi analogi ini. [gambar]: [gambar] = [gambar]:?',
  '/gambar/TIU-figanalogi-024.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'E',
  'A ke B: diputar 90° berlawanan arah jarum jam. Lakukan hal yang sama pada C, hasilnya gambar E. Opsi A salah: gambar C belum diubah sama sekali. Opsi B salah: memakai aturan lain (putar 90° searah). Opsi C salah: memakai aturan lain (putar 180°). Opsi D salah: memakai aturan lain (cermin kiri-kanan).',
  NULL,
  NULL,
  'published'
),
(
  'web',
  693,
  'TIU',
  'Figural Analogi',
  'sedang',
  'Level Super sulit
Pilih gambar yang melengkapi analogi ini. [gambar]: [gambar] = [gambar]:?',
  '/gambar/TIU-figanalogi-025.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'D',
  'A ke B: semua unsur bergeser dua posisi searah jarum jam pada lingkaran, arah tiap unsur tetap. Lakukan hal yang sama pada C, hasilnya gambar D. Opsi A salah: gambar C belum diubah sama sekali. Opsi B salah: posisi salah satu unsur keliru. Opsi C salah: ada satu unsur yang hilang. Opsi E salah: posisi salah satu unsur keliru.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  694,
  'TIU',
  'Figural Analogi',
  'sedang',
  'Level Super sulit
Pilih gambar yang melengkapi analogi ini. [gambar]: [gambar] = [gambar]:?',
  '/gambar/TIU-figanalogi-026.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'A',
  'A ke B: semua unsur bergeser dua posisi searah jarum jam pada lingkaran, arah tiap unsur tetap. Lakukan hal yang sama pada C, hasilnya gambar A. Opsi B salah: gambar C belum diubah sama sekali. Opsi C salah: arah salah satu unsur keliru. Opsi D salah: arah salah satu unsur keliru. Opsi E salah: posisi salah satu unsur keliru.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  695,
  'TIU',
  'Figural Analogi',
  'sedang',
  'Level Super sulit
Pilih gambar yang melengkapi analogi ini. [gambar]: [gambar] = [gambar]:?',
  '/gambar/TIU-figanalogi-027.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'D',
  'A ke B: warna naik satu tingkat: putih menjadi abu-abu, abu-abu menjadi hitam, hitam menjadi putih. Lakukan hal yang sama pada C, hasilnya gambar D. Opsi A salah: gambar C belum diubah sama sekali. Opsi B salah: memakai aturan lain (balik warna). Opsi C salah: posisi salah satu unsur keliru. Opsi E salah: warna salah satu unsur keliru.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  696,
  'TIU',
  'Figural Analogi',
  'sedang',
  'Level Super sulit
Pilih gambar yang melengkapi analogi ini. [gambar]: [gambar] = [gambar]:?',
  '/gambar/TIU-figanalogi-028.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'C',
  'A ke B: warna naik satu tingkat: putih menjadi abu-abu, abu-abu menjadi hitam, hitam menjadi putih. Lakukan hal yang sama pada C, hasilnya gambar C. Opsi A salah: gambar C belum diubah sama sekali. Opsi B salah: memakai aturan lain (balik warna). Opsi D salah: warna salah satu unsur keliru. Opsi E salah: posisi salah satu unsur keliru.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  697,
  'TIU',
  'Figural Analogi',
  'sedang',
  'Level Super sulit
Pilih gambar yang melengkapi analogi ini. [gambar]: [gambar] = [gambar]:?',
  '/gambar/TIU-figanalogi-029.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'B',
  'A ke B: tiap unsur mendapat kembaran di posisi seberangnya (kembaran ikut diputar 180°). Lakukan hal yang sama pada C, hasilnya gambar B. Opsi A salah: gambar C belum diubah sama sekali. Opsi C salah: memakai aturan lain (hapus unsur putih). Opsi D salah: ada satu unsur yang hilang. Opsi E salah: warna salah satu unsur keliru.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  698,
  'TIU',
  'Figural Analogi',
  'sedang',
  'Level Level dewa
Pilih gambar yang melengkapi analogi ini. [gambar]: [gambar] = [gambar]:?',
  '/gambar/TIU-figanalogi-030.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'A',
  'A ke B: diputar 180°, lalu dicerminkan atas-bawah. Lakukan hal yang sama pada C, hasilnya gambar A. Opsi B salah: gambar C belum diubah sama sekali. Opsi C salah: hanya aturan pertama yang dipakai. Opsi D salah: hanya aturan kedua yang dipakai. Opsi E salah: warna salah satu unsur keliru.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  699,
  'TIU',
  'Figural Analogi',
  'sedang',
  'Level Level dewa
Pilih gambar yang melengkapi analogi ini. [gambar]: [gambar] = [gambar]:?',
  '/gambar/TIU-figanalogi-031.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'B',
  'A ke B: semua unsur bergeser dua posisi searah jarum jam pada lingkaran, arah tiap unsur tetap, lalu dicerminkan kiri-kanan (posisi dan bentuk tiap unsur ikut dicerminkan). Lakukan hal yang sama pada C, hasilnya gambar B. Opsi A salah: gambar C belum diubah sama sekali. Opsi C salah: hanya aturan pertama yang dipakai. Opsi D salah: hanya aturan kedua yang dipakai. Opsi E salah: warna salah satu unsur keliru.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  700,
  'TIU',
  'Figural Analogi',
  'sedang',
  'Level Level dewa
Pilih gambar yang melengkapi analogi ini. [gambar]: [gambar] = [gambar]:?',
  '/gambar/TIU-figanalogi-032.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'A',
  'A ke B: dicerminkan kiri-kanan (posisi dan bentuk tiap unsur ikut dicerminkan), lalu semua unsur putih dihapus. Lakukan hal yang sama pada C, hasilnya gambar A. Opsi B salah: gambar C belum diubah sama sekali. Opsi C salah: hanya aturan pertama yang dipakai. Opsi D salah: hanya aturan kedua yang dipakai. Opsi E salah: ada satu unsur yang hilang.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  701,
  'TIU',
  'Figural Analogi',
  'sedang',
  'Level Level dewa
Pilih gambar yang melengkapi analogi ini. [gambar]: [gambar] = [gambar]:?',
  '/gambar/TIU-figanalogi-033.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'D',
  'A ke B: dicerminkan atas-bawah, lalu warna naik satu tingkat: putih menjadi abu-abu, abu-abu menjadi hitam, hitam menjadi putih. Lakukan hal yang sama pada C, hasilnya gambar D. Opsi A salah: gambar C belum diubah sama sekali. Opsi B salah: hanya aturan pertama yang dipakai. Opsi C salah: hanya aturan kedua yang dipakai. Opsi E salah: warna salah satu unsur keliru.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  702,
  'TIU',
  'Figural Analogi',
  'sedang',
  'Level Level dewa
Pilih gambar yang melengkapi analogi ini. [gambar]: [gambar] = [gambar]:?',
  '/gambar/TIU-figanalogi-034.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'D',
  'A ke B: diputar 180°, lalu dicerminkan atas-bawah. Lakukan hal yang sama pada C, hasilnya gambar D. Opsi A salah: gambar C belum diubah sama sekali. Opsi B salah: hanya aturan pertama yang dipakai. Opsi C salah: hanya aturan kedua yang dipakai. Opsi E salah: arah salah satu unsur keliru.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  703,
  'TIU',
  'Figural Analogi',
  'sedang',
  'Level Level dewa
Pilih gambar yang melengkapi analogi ini. [gambar]: [gambar] = [gambar]:?',
  '/gambar/TIU-figanalogi-035.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'E',
  'A ke B: diputar 180°, lalu warna hitam dan putih dibalik (abu-abu dan arsiran tetap). Lakukan hal yang sama pada C, hasilnya gambar E. Opsi A salah: gambar C belum diubah sama sekali. Opsi B salah: hanya aturan pertama yang dipakai. Opsi C salah: hanya aturan kedua yang dipakai. Opsi D salah: warna salah satu unsur keliru.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  704,
  'TIU',
  'Figural Analogi',
  'sedang',
  'Level Level dewa
Pilih gambar yang melengkapi analogi ini. [gambar]: [gambar] = [gambar]:?',
  '/gambar/TIU-figanalogi-036.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'E',
  'A ke B: diputar 90° berlawanan arah jarum jam, lalu semua unsur bergeser dua posisi searah jarum jam pada lingkaran, arah tiap unsur tetap. Lakukan hal yang sama pada C, hasilnya gambar E. Opsi A salah: gambar C belum diubah sama sekali. Opsi B salah: hanya aturan pertama yang dipakai. Opsi C salah: hanya aturan kedua yang dipakai. Opsi D salah: arah salah satu unsur keliru.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  705,
  'TIU',
  'Figural Analogi',
  'sedang',
  'Level Level dewa
Pilih gambar yang melengkapi analogi ini. [gambar]: [gambar] = [gambar]:?',
  '/gambar/TIU-figanalogi-037.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'E',
  'A ke B: dicerminkan atas-bawah, lalu warna naik satu tingkat: putih menjadi abu-abu, abu-abu menjadi hitam, hitam menjadi putih. Lakukan hal yang sama pada C, hasilnya gambar E. Opsi A salah: gambar C belum diubah sama sekali. Opsi B salah: hanya aturan pertama yang dipakai. Opsi C salah: hanya aturan kedua yang dipakai. Opsi D salah: arah salah satu unsur keliru.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  706,
  'TIU',
  'Figural Analogi',
  'sedang',
  'Level Level dewa
Pilih gambar yang melengkapi analogi ini. [gambar]: [gambar] = [gambar]:?',
  '/gambar/TIU-figanalogi-038.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'A',
  'A ke B: diputar 180°, lalu semua unsur putih dihapus. Lakukan hal yang sama pada C, hasilnya gambar A. Opsi B salah: gambar C belum diubah sama sekali. Opsi C salah: hanya aturan pertama yang dipakai. Opsi D salah: hanya aturan kedua yang dipakai. Opsi E salah: bentuk salah satu unsur keliru.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  707,
  'TIU',
  'Figural Analogi',
  'sedang',
  'Level Level dewa
Pilih gambar yang melengkapi analogi ini. [gambar]: [gambar] = [gambar]:?',
  '/gambar/TIU-figanalogi-039.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'A',
  'A ke B: bentuk menjadi segi-banyak berikutnya: segitiga menjadi persegi, persegi menjadi segilima, segilima menjadi segienam, lalu dicerminkan kiri-kanan (posisi dan bentuk tiap unsur ikut dicerminkan). Lakukan hal yang sama pada C, hasilnya gambar A. Opsi B salah: gambar C belum diubah sama sekali. Opsi C salah: hanya aturan pertama yang dipakai. Opsi D salah: hanya aturan kedua yang dipakai. Opsi E salah: posisi salah satu unsur keliru.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  708,
  'TIU',
  'Figural Analogi',
  'sedang',
  'Level Level dewa
Pilih gambar yang melengkapi analogi ini. [gambar]: [gambar] = [gambar]:?',
  '/gambar/TIU-figanalogi-040.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'D',
  'A ke B: dicerminkan kiri-kanan (posisi dan bentuk tiap unsur ikut dicerminkan), lalu warna hitam dan putih dibalik (abu-abu dan arsiran tetap). Lakukan hal yang sama pada C, hasilnya gambar D. Opsi A salah: gambar C belum diubah sama sekali. Opsi B salah: hanya aturan pertama yang dipakai. Opsi C salah: hanya aturan kedua yang dipakai. Opsi E salah: warna salah satu unsur keliru.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  709,
  'TIU',
  'Figural Analogi',
  'sedang',
  'Level Level dewa
Pilih gambar yang melengkapi analogi ini. [gambar]: [gambar] = [gambar]:?',
  '/gambar/TIU-figanalogi-041.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'D',
  'A ke B: diputar 180°, lalu diputar 90° searah jarum jam (posisi dan arah tiap unsur ikut berputar). Lakukan hal yang sama pada C, hasilnya gambar D. Opsi A salah: gambar C belum diubah sama sekali. Opsi B salah: hanya aturan pertama yang dipakai. Opsi C salah: hanya aturan kedua yang dipakai. Opsi E salah: warna salah satu unsur keliru.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  710,
  'TIU',
  'Figural Analogi',
  'sedang',
  'Level Level dewa
Pilih gambar yang melengkapi analogi ini. [gambar]: [gambar] = [gambar]:?',
  '/gambar/TIU-figanalogi-042.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'D',
  'A ke B: diputar 180°, lalu dicerminkan atas-bawah. Lakukan hal yang sama pada C, hasilnya gambar D. Opsi A salah: gambar C belum diubah sama sekali. Opsi B salah: hanya aturan pertama yang dipakai. Opsi C salah: hanya aturan kedua yang dipakai. Opsi E salah: warna salah satu unsur keliru.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  711,
  'TIU',
  'Figural Analogi',
  'sedang',
  'Level Level dewa
Pilih gambar yang melengkapi analogi ini. [gambar]: [gambar] = [gambar]:?',
  '/gambar/TIU-figanalogi-043.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'B',
  'A ke B: bentuk menjadi segi-banyak berikutnya: segitiga menjadi persegi, persegi menjadi segilima, segilima menjadi segienam, lalu tiap unsur mendapat kembaran di posisi seberangnya (kembaran ikut diputar 180°). Lakukan hal yang sama pada C, hasilnya gambar B. Opsi A salah: gambar C belum diubah sama sekali. Opsi C salah: hanya aturan pertama yang dipakai. Opsi D salah: hanya aturan kedua yang dipakai. Opsi E salah: posisi salah satu unsur keliru.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  712,
  'TIU',
  'Figural Analogi',
  'sedang',
  'Kotak berisi titik di pojok kiri bawah menjadi kotak dengan titik di pojok kiri atas (diputar 90 derajat searah jarum jam). Titik di pojok kanan bawah akan menjadi...',
  NULL,
  '{"A":"Pojok kanan atas","B":"Pojok kiri atas","C":"Pojok kiri bawah","D":"Pojok kanan bawah","E":"Di tengah"}'::jsonb,
  'C',
  'Putar searah jarum jam: kanan bawah pindah ke kiri bawah.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  713,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Perhatikan lima panah berikut: ↑ ↑ → ↑ ↑. Panah yang berbeda adalah panah ke...',
  NULL,
  '{"A":"1","B":"2","C":"3","D":"4","E":"5"}'::jsonb,
  'C',
  'Empat panah mengarah ke atas, cuma panah ketiga yang mengarah ke kanan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  714,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Level Mudah
Mana gambar yang berbeda dari yang lain?',
  '/gambar/TIU-figbeda-002.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'D',
  'Warna: empat gambar putih, satu gambar hitam. Opsi A salah: ciri ini sama dengan kelompok. Opsi B salah: ciri ini sama dengan kelompok. Opsi C salah: ciri ini sama dengan kelompok. Opsi E salah: ciri ini sama dengan kelompok.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  715,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Level Mudah
Mana gambar yang berbeda dari yang lain?',
  '/gambar/TIU-figbeda-003.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'A',
  'Warna: empat gambar putih, satu gambar hitam. Opsi B salah: ciri ini sama dengan kelompok. Opsi C salah: ciri ini sama dengan kelompok. Opsi D salah: ciri ini sama dengan kelompok. Opsi E salah: ciri ini sama dengan kelompok.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  716,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Level Sedang
Mana gambar yang berbeda dari yang lain?',
  '/gambar/TIU-figbeda-004.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'E',
  'Gambar E adalah bayangan cermin, yang lain hanya diputar. Diputar tetap sama, dicerminkan berbeda. Opsi A salah: ciri ini sama dengan kelompok. Opsi B salah: ciri ini sama dengan kelompok. Opsi C salah: ciri ini sama dengan kelompok. Opsi D salah: ciri ini sama dengan kelompok.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  717,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Level Sedang
Mana gambar yang berbeda dari yang lain?',
  '/gambar/TIU-figbeda-005.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'E',
  'Gambar E adalah bayangan cermin, yang lain hanya diputar. Diputar tetap sama, dicerminkan berbeda. Opsi A salah: ciri ini sama dengan kelompok. Opsi B salah: ciri ini sama dengan kelompok. Opsi C salah: ciri ini sama dengan kelompok. Opsi D salah: ciri ini sama dengan kelompok.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  718,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Level Sedang
Mana gambar yang berbeda dari yang lain?',
  '/gambar/TIU-figbeda-006.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'B',
  'Gambar B adalah bayangan cermin, yang lain hanya diputar. Diputar tetap sama, dicerminkan berbeda. Opsi A salah: ciri ini sama dengan kelompok. Opsi C salah: ciri ini sama dengan kelompok. Opsi D salah: ciri ini sama dengan kelompok. Opsi E salah: ciri ini sama dengan kelompok.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  719,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Level Sedang
Mana gambar yang berbeda dari yang lain?',
  '/gambar/TIU-figbeda-007.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'C',
  'Empat gambar adalah bentuk yang sama dan hanya diputar. Gambar C berbeda: berupa bayangan cermin, tidak bisa dicapai hanya dengan memutar. Opsi A salah: ini hanya putaran dari bentuk yang sama. Opsi B salah: ini hanya putaran dari bentuk yang sama. Opsi D salah: ini hanya putaran dari bentuk yang sama. Opsi E salah: ini hanya putaran dari bentuk yang sama.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  720,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Level Sulit
Mana gambar yang berbeda dari yang lain?',
  '/gambar/TIU-figbeda-008.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'C',
  'Posisi titik: empat kotak punya titik di tempat yang sama, satu kotak titiknya pindah. Opsi A salah: ciri ini sama dengan kelompok. Opsi B salah: ciri ini sama dengan kelompok. Opsi D salah: ciri ini sama dengan kelompok. Opsi E salah: ciri ini sama dengan kelompok.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  721,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Level Sulit
Mana gambar yang berbeda dari yang lain?',
  '/gambar/TIU-figbeda-009.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'D',
  'Posisi titik: empat kotak punya titik di tempat yang sama, satu kotak titiknya pindah. Opsi A salah: ciri ini sama dengan kelompok. Opsi B salah: ciri ini sama dengan kelompok. Opsi C salah: ciri ini sama dengan kelompok. Opsi E salah: ciri ini sama dengan kelompok.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  722,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Level Sulit
Mana gambar yang berbeda dari yang lain?',
  '/gambar/TIU-figbeda-010.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'A',
  'Posisi titik: empat kotak punya titik di tempat yang sama, satu kotak titiknya pindah. Opsi B salah: ciri ini sama dengan kelompok. Opsi C salah: ciri ini sama dengan kelompok. Opsi D salah: ciri ini sama dengan kelompok. Opsi E salah: ciri ini sama dengan kelompok.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  723,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Level Sulit
Mana gambar yang berbeda dari yang lain?',
  '/gambar/TIU-figbeda-011.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'A',
  'Empat gambar adalah bentuk yang sama dan hanya diputar. Gambar A berbeda: berupa bayangan cermin, tidak bisa dicapai hanya dengan memutar. Opsi B salah: ini hanya putaran dari bentuk yang sama. Opsi C salah: ini hanya putaran dari bentuk yang sama. Opsi D salah: ini hanya putaran dari bentuk yang sama. Opsi E salah: ini hanya putaran dari bentuk yang sama.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  724,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Level Sulit
Mana gambar yang berbeda dari yang lain?',
  '/gambar/TIU-figbeda-012.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'E',
  'Posisi titik: empat kotak punya titik di tempat yang sama, satu kotak titiknya pindah. Opsi A salah: ciri ini sama dengan kelompok. Opsi B salah: ciri ini sama dengan kelompok. Opsi C salah: ciri ini sama dengan kelompok. Opsi D salah: ciri ini sama dengan kelompok.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  725,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Level Sulit
Mana gambar yang berbeda dari yang lain?',
  '/gambar/TIU-figbeda-013.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'C',
  'Gambar C adalah bayangan cermin, yang lain hanya diputar. Diputar tetap sama, dicerminkan berbeda. Opsi A salah: ciri ini sama dengan kelompok. Opsi B salah: ciri ini sama dengan kelompok. Opsi D salah: ciri ini sama dengan kelompok. Opsi E salah: ciri ini sama dengan kelompok.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  726,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Level Sulit
Mana gambar yang berbeda dari yang lain?',
  '/gambar/TIU-figbeda-014.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'C',
  'Gambar C adalah bayangan cermin, yang lain hanya diputar. Diputar tetap sama, dicerminkan berbeda. Opsi A salah: ciri ini sama dengan kelompok. Opsi B salah: ciri ini sama dengan kelompok. Opsi D salah: ciri ini sama dengan kelompok. Opsi E salah: ciri ini sama dengan kelompok.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  727,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Level Sulit
Mana gambar yang berbeda dari yang lain?',
  '/gambar/TIU-figbeda-015.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'B',
  'Empat gambar adalah bentuk yang sama dan hanya diputar. Gambar B berbeda: berupa bayangan cermin, tidak bisa dicapai hanya dengan memutar. Opsi A salah: ini hanya putaran dari bentuk yang sama. Opsi C salah: ini hanya putaran dari bentuk yang sama. Opsi D salah: ini hanya putaran dari bentuk yang sama. Opsi E salah: ini hanya putaran dari bentuk yang sama.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  728,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Level Super sulit
Mana gambar yang berbeda dari yang lain?',
  '/gambar/TIU-figbeda-016.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'E',
  'Empat gambar adalah susunan yang sama dan hanya diputar. Gambar E adalah bayangan cerminnya: urutan bentuk searah jarum jam terbalik. Diputar tetap sama, dicerminkan berbeda. Opsi A salah: ciri ini sama dengan kelompok. Opsi B salah: ciri ini sama dengan kelompok. Opsi C salah: ciri ini sama dengan kelompok. Opsi D salah: ciri ini sama dengan kelompok.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  729,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Level Super sulit
Mana gambar yang berbeda dari yang lain?',
  '/gambar/TIU-figbeda-017.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'E',
  'Empat gambar adalah bentuk yang sama dan hanya diputar. Gambar E berbeda: berupa bayangan cermin, tidak bisa dicapai hanya dengan memutar. Opsi A salah: ini hanya putaran dari bentuk yang sama. Opsi B salah: ini hanya putaran dari bentuk yang sama. Opsi C salah: ini hanya putaran dari bentuk yang sama. Opsi D salah: ini hanya putaran dari bentuk yang sama.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  730,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Level Super sulit
Mana gambar yang berbeda dari yang lain?',
  '/gambar/TIU-figbeda-018.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'C',
  'Aturan tersembunyi: setiap gambar punya jumlah unsur hitam yang sama. Bentuk, posisi, dan jumlah total unsur berbeda-beda sebagai pengecoh. Gambar C punya jumlah hitam yang berbeda. Opsi A salah: ciri ini sama dengan kelompok. Opsi B salah: ciri ini sama dengan kelompok. Opsi D salah: ciri ini sama dengan kelompok. Opsi E salah: ciri ini sama dengan kelompok.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  731,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Level Super sulit
Mana gambar yang berbeda dari yang lain?',
  '/gambar/TIU-figbeda-019.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'D',
  'Empat gambar adalah bentuk yang sama dan hanya diputar. Gambar D berbeda: berupa bayangan cermin, tidak bisa dicapai hanya dengan memutar. Opsi A salah: ini hanya putaran dari bentuk yang sama. Opsi B salah: ini hanya putaran dari bentuk yang sama. Opsi C salah: ini hanya putaran dari bentuk yang sama. Opsi E salah: ini hanya putaran dari bentuk yang sama.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  732,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Level Super sulit
Mana gambar yang berbeda dari yang lain?',
  '/gambar/TIU-figbeda-020.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'B',
  'Empat gambar adalah susunan yang sama dan hanya diputar. Gambar B adalah bayangan cerminnya: urutan bentuk searah jarum jam terbalik. Diputar tetap sama, dicerminkan berbeda. Opsi A salah: ciri ini sama dengan kelompok. Opsi C salah: ciri ini sama dengan kelompok. Opsi D salah: ciri ini sama dengan kelompok. Opsi E salah: ciri ini sama dengan kelompok.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  733,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Level Super sulit
Mana gambar yang berbeda dari yang lain?',
  '/gambar/TIU-figbeda-021.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'A',
  'Empat gambar adalah susunan yang sama dan hanya diputar. Gambar A adalah bayangan cerminnya: urutan bentuk searah jarum jam terbalik. Diputar tetap sama, dicerminkan berbeda. Opsi B salah: ciri ini sama dengan kelompok. Opsi C salah: ciri ini sama dengan kelompok. Opsi D salah: ciri ini sama dengan kelompok. Opsi E salah: ciri ini sama dengan kelompok.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  734,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Level Super sulit
Mana gambar yang berbeda dari yang lain?',
  '/gambar/TIU-figbeda-022.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'B',
  'Aturan tersembunyi: setiap gambar punya jumlah unsur hitam yang sama. Bentuk, posisi, dan jumlah total unsur berbeda-beda sebagai pengecoh. Gambar B punya jumlah hitam yang berbeda. Opsi A salah: ciri ini sama dengan kelompok. Opsi C salah: ciri ini sama dengan kelompok. Opsi D salah: ciri ini sama dengan kelompok. Opsi E salah: ciri ini sama dengan kelompok.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  735,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Level Super sulit
Mana gambar yang berbeda dari yang lain?',
  '/gambar/TIU-figbeda-023.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'E',
  'Empat gambar adalah bentuk yang sama dan hanya diputar. Gambar E berbeda: berupa bayangan cermin, tidak bisa dicapai hanya dengan memutar. Opsi A salah: ini hanya putaran dari bentuk yang sama. Opsi B salah: ini hanya putaran dari bentuk yang sama. Opsi C salah: ini hanya putaran dari bentuk yang sama. Opsi D salah: ini hanya putaran dari bentuk yang sama.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  736,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Level Super sulit
Mana gambar yang berbeda dari yang lain?',
  '/gambar/TIU-figbeda-024.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'A',
  'Aturan tersembunyi: bentuk di dalam selalu sama dengan bentuk di luar, dan warnanya selalu berlawanan. Gambar A melanggar salah satunya. Opsi B salah: ciri ini sama dengan kelompok. Opsi C salah: ciri ini sama dengan kelompok. Opsi D salah: ciri ini sama dengan kelompok. Opsi E salah: ciri ini sama dengan kelompok.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  737,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Level Super sulit
Mana gambar yang berbeda dari yang lain?',
  '/gambar/TIU-figbeda-025.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'A',
  'Aturan tersembunyi: bentuk di dalam selalu sama dengan bentuk di luar, dan warnanya selalu berlawanan. Gambar A melanggar salah satunya. Opsi B salah: ciri ini sama dengan kelompok. Opsi C salah: ciri ini sama dengan kelompok. Opsi D salah: ciri ini sama dengan kelompok. Opsi E salah: ciri ini sama dengan kelompok.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  738,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Level Super sulit
Mana gambar yang berbeda dari yang lain?',
  '/gambar/TIU-figbeda-026.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'B',
  'Empat gambar adalah susunan yang sama dan hanya diputar. Gambar B adalah bayangan cerminnya: urutan bentuk searah jarum jam terbalik. Diputar tetap sama, dicerminkan berbeda. Opsi A salah: ciri ini sama dengan kelompok. Opsi C salah: ciri ini sama dengan kelompok. Opsi D salah: ciri ini sama dengan kelompok. Opsi E salah: ciri ini sama dengan kelompok.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  739,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Level Super sulit
Mana gambar yang berbeda dari yang lain?',
  '/gambar/TIU-figbeda-027.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'D',
  'Empat gambar adalah bentuk yang sama dan hanya diputar. Gambar D berbeda: kotak hitamnya berpindah tempat. Opsi A salah: ini hanya putaran dari bentuk yang sama. Opsi B salah: ini hanya putaran dari bentuk yang sama. Opsi C salah: ini hanya putaran dari bentuk yang sama. Opsi E salah: ini hanya putaran dari bentuk yang sama.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  740,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Level Super sulit
Mana gambar yang berbeda dari yang lain?',
  '/gambar/TIU-figbeda-028.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'C',
  'Aturan tersembunyi: bentuk di dalam selalu sama dengan bentuk di luar, dan warnanya selalu berlawanan. Gambar C melanggar salah satunya. Opsi A salah: ciri ini sama dengan kelompok. Opsi B salah: ciri ini sama dengan kelompok. Opsi D salah: ciri ini sama dengan kelompok. Opsi E salah: ciri ini sama dengan kelompok.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  741,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Level Super sulit
Mana gambar yang berbeda dari yang lain?',
  '/gambar/TIU-figbeda-029.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'B',
  'Aturan tersembunyi: setiap gambar punya jumlah unsur hitam yang sama. Bentuk, posisi, dan jumlah total unsur berbeda-beda sebagai pengecoh. Gambar B punya jumlah hitam yang berbeda. Opsi A salah: ciri ini sama dengan kelompok. Opsi C salah: ciri ini sama dengan kelompok. Opsi D salah: ciri ini sama dengan kelompok. Opsi E salah: ciri ini sama dengan kelompok.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  742,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Level Level dewa
Mana gambar yang berbeda dari yang lain?',
  '/gambar/TIU-figbeda-030.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'D',
  'Aturan tersembunyi: jumlah unsur hitam sama dengan jumlah unsur putih (abu-abu tidak dihitung). Empat gambar memenuhinya, gambar D tidak. Opsi A salah: ciri ini sama dengan kelompok. Opsi B salah: ciri ini sama dengan kelompok. Opsi C salah: ciri ini sama dengan kelompok. Opsi E salah: ciri ini sama dengan kelompok.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  743,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Level Level dewa
Mana gambar yang berbeda dari yang lain?',
  '/gambar/TIU-figbeda-031.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'B',
  'Aturan tersembunyi: jumlah unsur hitam sama dengan jumlah unsur putih (abu-abu tidak dihitung). Empat gambar memenuhinya, gambar B tidak. Opsi A salah: ciri ini sama dengan kelompok. Opsi C salah: ciri ini sama dengan kelompok. Opsi D salah: ciri ini sama dengan kelompok. Opsi E salah: ciri ini sama dengan kelompok.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  744,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Level Level dewa
Mana gambar yang berbeda dari yang lain?',
  '/gambar/TIU-figbeda-032.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'A',
  'Aturan tersembunyi: bentuk dalam sama dengan bentuk luar DAN warnanya berlawanan. Gambar A melanggar salah satu dari dua syarat itu. Opsi B salah: ciri ini sama dengan kelompok. Opsi C salah: ciri ini sama dengan kelompok. Opsi D salah: ciri ini sama dengan kelompok. Opsi E salah: ciri ini sama dengan kelompok.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  745,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Level Level dewa
Mana gambar yang berbeda dari yang lain?',
  '/gambar/TIU-figbeda-033.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'C',
  'Empat gambar adalah bentuk yang sama dan hanya diputar. Gambar C berbeda: kotak hitamnya berpindah tempat. Opsi A salah: ini hanya putaran dari bentuk yang sama. Opsi B salah: ini hanya putaran dari bentuk yang sama. Opsi D salah: ini hanya putaran dari bentuk yang sama. Opsi E salah: ini hanya putaran dari bentuk yang sama.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  746,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Level Level dewa
Mana gambar yang berbeda dari yang lain?',
  '/gambar/TIU-figbeda-034.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'E',
  'Aturan tersembunyi: bentuk dalam sama dengan bentuk luar DAN warnanya berlawanan. Gambar E melanggar salah satu dari dua syarat itu. Opsi A salah: ciri ini sama dengan kelompok. Opsi B salah: ciri ini sama dengan kelompok. Opsi C salah: ciri ini sama dengan kelompok. Opsi D salah: ciri ini sama dengan kelompok.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  747,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Level Level dewa
Mana gambar yang berbeda dari yang lain?',
  '/gambar/TIU-figbeda-035.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'A',
  'Aturan tersembunyi: bentuk dalam sama dengan bentuk luar DAN warnanya berlawanan. Gambar A melanggar salah satu dari dua syarat itu. Opsi B salah: ciri ini sama dengan kelompok. Opsi C salah: ciri ini sama dengan kelompok. Opsi D salah: ciri ini sama dengan kelompok. Opsi E salah: ciri ini sama dengan kelompok.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  748,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Level Level dewa
Mana gambar yang berbeda dari yang lain?',
  '/gambar/TIU-figbeda-036.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'C',
  'Empat gambar adalah susunan yang sama dan hanya diputar. Gambar C adalah bayangan cerminnya: urutan bentuk searah jarum jam terbalik. Diputar tetap sama, dicerminkan berbeda. Opsi A salah: ciri ini sama dengan kelompok. Opsi B salah: ciri ini sama dengan kelompok. Opsi D salah: ciri ini sama dengan kelompok. Opsi E salah: ciri ini sama dengan kelompok.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  749,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Level Level dewa
Mana gambar yang berbeda dari yang lain?',
  '/gambar/TIU-figbeda-037.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'C',
  'Empat gambar adalah bentuk yang sama dan hanya diputar. Gambar C berbeda: berupa bayangan cermin, tidak bisa dicapai hanya dengan memutar. Opsi A salah: ini hanya putaran dari bentuk yang sama. Opsi B salah: ini hanya putaran dari bentuk yang sama. Opsi D salah: ini hanya putaran dari bentuk yang sama. Opsi E salah: ini hanya putaran dari bentuk yang sama.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  750,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Level Level dewa
Mana gambar yang berbeda dari yang lain?',
  '/gambar/TIU-figbeda-038.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'E',
  'Aturan tersembunyi: bentuk dalam sama dengan bentuk luar DAN warnanya berlawanan. Gambar E melanggar salah satu dari dua syarat itu. Opsi A salah: ciri ini sama dengan kelompok. Opsi B salah: ciri ini sama dengan kelompok. Opsi C salah: ciri ini sama dengan kelompok. Opsi D salah: ciri ini sama dengan kelompok.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  751,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Level Level dewa
Mana gambar yang berbeda dari yang lain?',
  '/gambar/TIU-figbeda-039.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'B',
  'Empat gambar adalah susunan yang sama dan hanya diputar. Gambar B adalah bayangan cerminnya: urutan bentuk searah jarum jam terbalik. Diputar tetap sama, dicerminkan berbeda. Opsi A salah: ciri ini sama dengan kelompok. Opsi C salah: ciri ini sama dengan kelompok. Opsi D salah: ciri ini sama dengan kelompok. Opsi E salah: ciri ini sama dengan kelompok.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  752,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Level Level dewa
Mana gambar yang berbeda dari yang lain?',
  '/gambar/TIU-figbeda-040.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'C',
  'Aturan tersembunyi: bentuk dalam sama dengan bentuk luar DAN warnanya berlawanan. Gambar C melanggar salah satu dari dua syarat itu. Opsi A salah: ciri ini sama dengan kelompok. Opsi B salah: ciri ini sama dengan kelompok. Opsi D salah: ciri ini sama dengan kelompok. Opsi E salah: ciri ini sama dengan kelompok.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  753,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Level Level dewa
Mana gambar yang berbeda dari yang lain?',
  '/gambar/TIU-figbeda-041.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'D',
  'Empat gambar adalah bentuk yang sama dan hanya diputar. Gambar D berbeda: berupa bayangan cermin, tidak bisa dicapai hanya dengan memutar. Opsi A salah: ini hanya putaran dari bentuk yang sama. Opsi B salah: ini hanya putaran dari bentuk yang sama. Opsi C salah: ini hanya putaran dari bentuk yang sama. Opsi E salah: ini hanya putaran dari bentuk yang sama.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  754,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Level Level dewa
Mana gambar yang berbeda dari yang lain?',
  '/gambar/TIU-figbeda-042.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'A',
  'Aturan tersembunyi: bentuk dalam sama dengan bentuk luar DAN warnanya berlawanan. Gambar A melanggar salah satu dari dua syarat itu. Opsi B salah: ciri ini sama dengan kelompok. Opsi C salah: ciri ini sama dengan kelompok. Opsi D salah: ciri ini sama dengan kelompok. Opsi E salah: ciri ini sama dengan kelompok.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  755,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Level Level dewa
Mana gambar yang berbeda dari yang lain?',
  '/gambar/TIU-figbeda-043.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'D',
  'Empat gambar adalah susunan yang sama dan hanya diputar. Gambar D adalah bayangan cerminnya: urutan bentuk searah jarum jam terbalik. Diputar tetap sama, dicerminkan berbeda. Opsi A salah: ciri ini sama dengan kelompok. Opsi B salah: ciri ini sama dengan kelompok. Opsi C salah: ciri ini sama dengan kelompok. Opsi E salah: ciri ini sama dengan kelompok.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  756,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Manakah yang BUKAN memiliki dua pasang sisi sejajar?',
  NULL,
  '{"A":"Persegi","B":"Belah ketupat","C":"Layang-layang","D":"Persegi panjang","E":"Jajar genjang"}'::jsonb,
  'C',
  'Layang-layang tidak memiliki sisi sejajar.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  757,
  'TIU',
  'Figural Serial',
  'sedang',
  'Serial: ↑ → ↓ ← ↑ →... Gambar berikutnya adalah...',
  NULL,
  '{"A":"↑","B":"↗","C":"←","D":"→","E":"↓"}'::jsonb,
  'E',
  'Tiap langkah panah berputar 90 derajat searah jarum jam: ↑ → ↓ ← ↑ →, berikutnya ↓.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  758,
  'TIU',
  'Figural Serial',
  'sedang',
  'Level Mudah
Tentukan gambar berikutnya dalam serial ini. [gambar] › [gambar] › [gambar] ›?',
  '/gambar/TIU-figserial-002.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'C',
  'Titik berpindah satu sudut berlawanan arah jarum jam tiap langkah. Langkah berikutnya adalah gambar C. Opsi A salah: jumlahnya keliru. Opsi B salah: letaknya keliru. Opsi D salah: sudut putarnya keliru. Opsi E salah: sudut putarnya keliru.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  759,
  'TIU',
  'Figural Serial',
  'sedang',
  'Level Mudah
Tentukan gambar berikutnya dalam serial ini. [gambar] › [gambar] › [gambar] ›?',
  '/gambar/TIU-figserial-003.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'E',
  'Gambar berputar 90° berlawanan arah jarum jam tiap langkah. Langkah berikutnya adalah gambar E. Opsi A salah: melompat dua langkah. Opsi B salah: sama dengan gambar terakhir, belum bergerak. Opsi C salah: bentuknya berubah, padahal seharusnya tetap. Opsi D salah: bentuknya berubah, padahal seharusnya tetap.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  760,
  'TIU',
  'Figural Serial',
  'sedang',
  'Level Sedang
Tentukan gambar berikutnya dalam serial ini. [gambar] › [gambar] › [gambar] › [gambar] ›?',
  '/gambar/TIU-figserial-004.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'B',
  'Dua pola berjalan bersamaan: berputar 90° tiap langkah, dan warna bergantian. Putaran penuh kembali ke arah awal. Langkah berikutnya adalah gambar B. Opsi A salah: arahnya benar, tetapi warnanya tidak bergantian. Opsi C salah: warnanya benar, tetapi arahnya salah. Opsi D salah: sudut putarnya keliru. Opsi E salah: bentuknya berubah, padahal seharusnya tetap.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  761,
  'TIU',
  'Figural Serial',
  'sedang',
  'Level Sedang
Tentukan gambar berikutnya dalam serial ini. [gambar] › [gambar] › [gambar] ›?',
  '/gambar/TIU-figserial-005.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'A',
  'Titik berpindah satu sudut searah jarum jam tiap langkah. Langkah berikutnya adalah gambar A. Opsi B salah: letaknya keliru. Opsi C salah: jumlahnya keliru. Opsi D salah: bentuknya berubah, padahal seharusnya tetap. Opsi E salah: letaknya keliru.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  762,
  'TIU',
  'Figural Serial',
  'sedang',
  'Level Sedang
Tentukan sel kosong pada matriks ini. [gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
?',
  '/gambar/TIU-figserial-006.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'C',
  'Tiap baris dan kolom berisi tiga bentuk berbeda, masing-masing sekali. Bentuk yang belum ada di baris dan kolom sel kosong adalah jawabannya. Jawabannya gambar C. Opsi A salah: bentuk ini sudah ada di baris yang sama. Opsi B salah: bentuk ini sudah ada di kolom yang sama. Opsi D salah: warnanya tidak sesuai pola. Opsi E salah: bentuk dan warna tidak sesuai.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  763,
  'TIU',
  'Figural Serial',
  'sedang',
  'Level Sedang
Tentukan sel kosong pada matriks ini. [gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
?',
  '/gambar/TIU-figserial-007.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'C',
  'Tiap baris dan kolom berisi tiga bentuk berbeda, masing-masing sekali. Bentuk yang belum ada di baris dan kolom sel kosong adalah jawabannya. Jawabannya gambar C. Opsi A salah: bentuk ini sudah ada di baris yang sama. Opsi B salah: bentuk ini sudah ada di kolom yang sama. Opsi D salah: warnanya tidak sesuai pola. Opsi E salah: bentuk dan warna tidak sesuai.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  764,
  'TIU',
  'Figural Serial',
  'sedang',
  'Level Sulit
Tentukan gambar berikutnya dalam serial ini. [gambar] › [gambar] › [gambar] ›?',
  '/gambar/TIU-figserial-008.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'D',
  'Titik berpindah satu sudut berlawanan arah jarum jam tiap langkah, dan warnanya bergantian. Langkah berikutnya adalah gambar D. Opsi A salah: letaknya benar, tetapi warnanya tidak bergantian. Opsi B salah: letaknya keliru. Opsi C salah: sudut putarnya keliru. Opsi E salah: letaknya keliru.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  765,
  'TIU',
  'Figural Serial',
  'sedang',
  'Level Sulit
Tentukan gambar berikutnya dalam serial ini. [gambar] › [gambar] › [gambar] ›?',
  '/gambar/TIU-figserial-009.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'E',
  'Titik berpindah satu sudut berlawanan arah jarum jam tiap langkah, dan warnanya bergantian. Langkah berikutnya adalah gambar E. Opsi A salah: letaknya benar, tetapi warnanya tidak bergantian. Opsi B salah: jumlahnya keliru. Opsi C salah: bentuknya berubah, padahal seharusnya tetap. Opsi D salah: letaknya keliru.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  766,
  'TIU',
  'Figural Serial',
  'sedang',
  'Level Sulit
Tentukan sel kosong pada matriks ini. [gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
?',
  '/gambar/TIU-figserial-010.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'E',
  'Kolom ketiga adalah jumlah kolom pertama dan kedua. Baris ketiga: 3 + 3 = 6. Jawabannya gambar E. Opsi A salah: bukan jumlah dari dua sel di sebelah kirinya. Opsi B salah: bukan jumlah dari dua sel di sebelah kirinya. Opsi C salah: bukan jumlah dari dua sel di sebelah kirinya. Opsi D salah: bukan jumlah dari dua sel di sebelah kirinya.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  767,
  'TIU',
  'Figural Serial',
  'sedang',
  'Level Sulit
Tentukan gambar berikutnya dalam serial ini. [gambar] › [gambar] › [gambar] ›?',
  '/gambar/TIU-figserial-011.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'B',
  'Titik berpindah satu sudut berlawanan arah jarum jam tiap langkah, dan warnanya bergantian. Langkah berikutnya adalah gambar B. Opsi A salah: letaknya benar, tetapi warnanya tidak bergantian. Opsi C salah: bentuknya berubah, padahal seharusnya tetap. Opsi D salah: bentuknya berubah, padahal seharusnya tetap. Opsi E salah: letaknya keliru.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  768,
  'TIU',
  'Figural Serial',
  'sedang',
  'Level Sulit
Tentukan gambar berikutnya dalam serial ini. [gambar] › [gambar] › [gambar] ›?',
  '/gambar/TIU-figserial-012.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'C',
  'Dua pola bersamaan: jumlah bertambah satu, dan warna bergantian. Langkah berikutnya adalah gambar C. Opsi A salah: jumlahnya benar, tetapi warnanya tidak bergantian. Opsi B salah: bentuknya berubah, padahal seharusnya tetap. Opsi D salah: bentuknya berubah, padahal seharusnya tetap. Opsi E salah: jumlahnya keliru.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  769,
  'TIU',
  'Figural Serial',
  'sedang',
  'Level Sulit
Tentukan gambar berikutnya dalam serial ini. [gambar] › [gambar] › [gambar] ›?',
  '/gambar/TIU-figserial-013.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'A',
  'Titik berpindah satu sudut berlawanan arah jarum jam tiap langkah, dan warnanya bergantian. Langkah berikutnya adalah gambar A. Opsi B salah: letaknya benar, tetapi warnanya tidak bergantian. Opsi C salah: bentuknya berubah, padahal seharusnya tetap. Opsi D salah: letaknya keliru. Opsi E salah: bentuknya berubah, padahal seharusnya tetap.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  770,
  'TIU',
  'Figural Serial',
  'sedang',
  'Level Sulit
Tentukan gambar berikutnya dalam serial ini. [gambar] › [gambar] › [gambar] ›?',
  '/gambar/TIU-figserial-014.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'D',
  'Titik berpindah satu sudut berlawanan arah jarum jam tiap langkah, dan warnanya bergantian. Langkah berikutnya adalah gambar D. Opsi A salah: letaknya benar, tetapi warnanya tidak bergantian. Opsi B salah: bentuknya berubah, padahal seharusnya tetap. Opsi C salah: letaknya keliru. Opsi E salah: letaknya keliru.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  771,
  'TIU',
  'Figural Serial',
  'sedang',
  'Level Sulit
Tentukan sel kosong pada matriks ini. [gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
?',
  '/gambar/TIU-figserial-015.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'E',
  'Tiap kolom ke kanan berputar 90°, tiap baris ke bawah menambah 45°. Sel kosong: 90 x 2 + 45 x 2 = 270°. Jawabannya gambar E. Opsi A salah: berupa bayangan cermin. Opsi B salah: warnanya tidak sesuai aturan. Opsi C salah: bentuknya berubah, padahal seharusnya tetap. Opsi D salah: bentuknya berubah, padahal seharusnya tetap.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  772,
  'TIU',
  'Figural Serial',
  'sedang',
  'Level Super sulit
Tentukan sel kosong pada matriks ini. [gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
?',
  '/gambar/TIU-figserial-016.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'D',
  'Gambar ketiga di tiap baris adalah gabungan (semua titik dari kedua gambar). Jawabannya gambar D. Opsi A salah: ada titik yang kurang. Opsi B salah: hasil aturan lain: titik yang ada di kedua gambar sekaligus. Opsi C salah: urutan gambar terbalik pada aturan selisih. Opsi E salah: hasil aturan lain: titik yang hanya ada di salah satu gambar.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  773,
  'TIU',
  'Figural Serial',
  'sedang',
  'Level Super sulit
Tentukan sel kosong pada matriks ini. [gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
?',
  '/gambar/TIU-figserial-017.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'C',
  'Ada 3 aturan yang berjalan bersamaan: bentuk luar mengikuti pola kotak latin (tiap baris dan kolom memuat tiga bentuk, masing-masing sekali); warna luar mengikuti pola baris atau kotak latin; arah bentuk dalam berputar 90° tiap langkah ke kanan atau ke bawah. Baca tiap ciri secara terpisah, lalu gabungkan untuk sel kosong. Jawabannya gambar C. Opsi A salah: sama dengan gambar di kirinya. Opsi B salah: sama dengan gambar di atasnya. Opsi D salah: warna luar keliru. Opsi E salah: arah putaran keliru.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  774,
  'TIU',
  'Figural Serial',
  'sedang',
  'Level Super sulit
Tentukan sel kosong pada matriks ini. [gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
?',
  '/gambar/TIU-figserial-018.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'A',
  'Gambar ketiga di tiap baris adalah titik gambar pertama yang tidak ada di gambar kedua. Jawabannya gambar A. Opsi B salah: ada titik yang kurang. Opsi C salah: urutan gambar terbalik pada aturan selisih. Opsi D salah: hasil aturan lain: gabungan. Opsi E salah: ada titik yang berlebih.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  775,
  'TIU',
  'Figural Serial',
  'sedang',
  'Level Super sulit
Tentukan sel kosong pada matriks ini. [gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
?',
  '/gambar/TIU-figserial-019.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'A',
  'Ada 3 aturan yang berjalan bersamaan: bentuk luar mengikuti pola kotak latin (tiap baris dan kolom memuat tiga bentuk, masing-masing sekali); warna dalam mengikuti pola kolom atau kotak latin; jumlah bentuk dalam naik satu mengikuti baris atau kolom. Baca tiap ciri secara terpisah, lalu gabungkan untuk sel kosong. Jawabannya gambar A. Opsi B salah: sama dengan gambar di kirinya. Opsi C salah: sama dengan gambar di atasnya. Opsi D salah: jumlah bentuk dalam keliru. Opsi E salah: bentuk luar keliru.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  776,
  'TIU',
  'Figural Serial',
  'sedang',
  'Level Super sulit
Tentukan sel kosong pada matriks ini. [gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
?',
  '/gambar/TIU-figserial-020.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'A',
  'Ada 3 aturan yang berjalan bersamaan: bentuk luar mengikuti pola kotak latin (tiap baris dan kolom memuat tiga bentuk, masing-masing sekali); warna luar mengikuti pola baris atau kotak latin; arah bentuk dalam berputar 90° tiap langkah ke kanan atau ke bawah. Baca tiap ciri secara terpisah, lalu gabungkan untuk sel kosong. Jawabannya gambar A. Opsi B salah: sama dengan gambar di kirinya. Opsi C salah: sama dengan gambar di atasnya. Opsi D salah: warna luar keliru. Opsi E salah: bentuk luar keliru.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  777,
  'TIU',
  'Figural Serial',
  'sedang',
  'Level Super sulit
Tentukan gambar berikutnya dalam serial ini. [gambar] › [gambar] › [gambar] › [gambar] ›?',
  '/gambar/TIU-figserial-021.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'D',
  'Tiap unsur punya aturan sendiri: bentuk tengah naik satu sisi tiap langkah: segitiga, persegi, segilima, segienam, lalu ulang; titik tepi berpindah 2 posisi berlawanan arah jarum jam tiap langkah. Terapkan semuanya pada langkah ke-5: gambar D. Opsi A salah: dua pola sama-sama keliru. Opsi B salah: bentuk unsur tengah keliru (mengulang langkah sebelumnya). Opsi C salah: posisi titik tepi keliru (mengulang langkah sebelumnya). Opsi E salah: bentuk unsur tengah keliru (melompat satu langkah).',
  NULL,
  NULL,
  'published'
),
(
  'web',
  778,
  'TIU',
  'Figural Serial',
  'sedang',
  'Level Super sulit
Tentukan gambar berikutnya dalam serial ini. [gambar] › [gambar] › [gambar] › [gambar] ›?',
  '/gambar/TIU-figserial-022.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'B',
  'Tiap unsur punya aturan sendiri: unsur tengah berputar 45° searah jarum jam tiap langkah; titik tepi berpindah 3 posisi searah jarum jam tiap langkah, warnanya bergantian hitam dan putih. Terapkan semuanya pada langkah ke-5: gambar B. Opsi A salah: dua pola sama-sama keliru. Opsi C salah: arah putar unsur tengah keliru (melompat satu langkah). Opsi D salah: arah putar unsur tengah keliru (mengulang langkah sebelumnya). Opsi E salah: posisi titik tepi keliru (melompat satu langkah).',
  NULL,
  NULL,
  'published'
),
(
  'web',
  779,
  'TIU',
  'Figural Serial',
  'sedang',
  'Level Super sulit
Tentukan sel kosong pada matriks ini. [gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
?',
  '/gambar/TIU-figserial-023.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'D',
  'Ada 3 aturan yang berjalan bersamaan: bentuk luar mengikuti pola kotak latin (tiap baris dan kolom memuat tiga bentuk, masing-masing sekali); warna dalam mengikuti pola kolom atau kotak latin; jumlah bentuk dalam naik satu mengikuti baris atau kolom. Baca tiap ciri secara terpisah, lalu gabungkan untuk sel kosong. Jawabannya gambar D. Opsi A salah: sama dengan gambar di kirinya. Opsi B salah: sama dengan gambar di atasnya. Opsi C salah: bentuk luar keliru. Opsi E salah: bentuk luar keliru.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  780,
  'TIU',
  'Figural Serial',
  'sedang',
  'Level Super sulit
Tentukan gambar berikutnya dalam serial ini. [gambar] › [gambar] › [gambar] › [gambar] ›?',
  '/gambar/TIU-figserial-024.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'D',
  'Tiap unsur punya aturan sendiri: bentuk tengah naik satu sisi tiap langkah: segitiga, persegi, segilima, segienam, lalu ulang; titik tepi berpindah 2 posisi berlawanan arah jarum jam tiap langkah. Terapkan semuanya pada langkah ke-5: gambar D. Opsi A salah: dua pola sama-sama keliru. Opsi B salah: posisi titik tepi keliru (mengulang langkah sebelumnya). Opsi C salah: bentuk unsur tengah keliru (mengulang langkah sebelumnya). Opsi E salah: bentuk unsur tengah keliru (melompat satu langkah).',
  NULL,
  NULL,
  'published'
),
(
  'web',
  781,
  'TIU',
  'Figural Serial',
  'sedang',
  'Level Super sulit
Tentukan sel kosong pada matriks ini. [gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
?',
  '/gambar/TIU-figserial-025.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'D',
  'Ada 3 aturan yang berjalan bersamaan: bentuk luar mengikuti pola kotak latin (tiap baris dan kolom memuat tiga bentuk, masing-masing sekali); warna dalam mengikuti pola kolom atau kotak latin; jumlah bentuk dalam naik satu mengikuti baris atau kolom. Baca tiap ciri secara terpisah, lalu gabungkan untuk sel kosong. Jawabannya gambar D. Opsi A salah: sama dengan gambar di kirinya. Opsi B salah: sama dengan gambar di atasnya. Opsi C salah: jumlah bentuk dalam keliru. Opsi E salah: bentuk luar keliru.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  782,
  'TIU',
  'Figural Serial',
  'sedang',
  'Level Super sulit
Tentukan sel kosong pada matriks ini. [gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
?',
  '/gambar/TIU-figserial-026.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'A',
  'Ada 3 aturan yang berjalan bersamaan: bentuk luar mengikuti pola kotak latin (tiap baris dan kolom memuat tiga bentuk, masing-masing sekali); warna luar mengikuti pola baris atau kotak latin; arah bentuk dalam berputar 90° tiap langkah ke kanan atau ke bawah. Baca tiap ciri secara terpisah, lalu gabungkan untuk sel kosong. Jawabannya gambar A. Opsi B salah: sama dengan gambar di kirinya. Opsi C salah: sama dengan gambar di atasnya. Opsi D salah: arah putaran keliru. Opsi E salah: bentuk luar keliru.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  783,
  'TIU',
  'Figural Serial',
  'sedang',
  'Level Super sulit
Tentukan gambar berikutnya dalam serial ini. [gambar] › [gambar] › [gambar] › [gambar] ›?',
  '/gambar/TIU-figserial-027.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'C',
  'Tiap unsur punya aturan sendiri: unsur tengah berputar 90° searah jarum jam tiap langkah; warna unsur tengah bergilir putih, abu-abu, hitam, lalu ulang. Terapkan semuanya pada langkah ke-5: gambar C. Opsi A salah: dua pola sama-sama keliru. Opsi B salah: warna unsur tengah keliru (melompat satu langkah). Opsi D salah: arah putar unsur tengah keliru (mengulang langkah sebelumnya). Opsi E salah: warna unsur tengah keliru (mengulang langkah sebelumnya).',
  NULL,
  NULL,
  'published'
),
(
  'web',
  784,
  'TIU',
  'Figural Serial',
  'sedang',
  'Level Super sulit
Tentukan gambar berikutnya dalam serial ini. [gambar] › [gambar] › [gambar] › [gambar] ›?',
  '/gambar/TIU-figserial-028.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'E',
  'Tiap unsur punya aturan sendiri: unsur tengah berputar 90° berlawanan arah jarum jam tiap langkah; titik tepi berpindah 3 posisi searah jarum jam tiap langkah, warnanya bergantian hitam dan putih. Terapkan semuanya pada langkah ke-5: gambar E. Opsi A salah: dua pola sama-sama keliru. Opsi B salah: arah putar unsur tengah keliru (melompat satu langkah). Opsi C salah: posisi titik tepi keliru (mengulang langkah sebelumnya). Opsi D salah: posisi titik tepi keliru (melompat satu langkah).',
  NULL,
  NULL,
  'published'
),
(
  'web',
  785,
  'TIU',
  'Figural Serial',
  'sedang',
  'Level Super sulit
Tentukan sel kosong pada matriks ini. [gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
?',
  '/gambar/TIU-figserial-029.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'E',
  'Ada 3 aturan yang berjalan bersamaan: bentuk luar mengikuti pola kotak latin (tiap baris dan kolom memuat tiga bentuk, masing-masing sekali); warna dalam mengikuti pola kolom atau kotak latin; jumlah bentuk dalam naik satu mengikuti baris atau kolom. Baca tiap ciri secara terpisah, lalu gabungkan untuk sel kosong. Jawabannya gambar E. Opsi A salah: sama dengan gambar di kirinya. Opsi B salah: sama dengan gambar di atasnya. Opsi C salah: warna dalam keliru. Opsi D salah: warna dalam keliru.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  786,
  'TIU',
  'Figural Serial',
  'sedang',
  'Level Level dewa
Tentukan sel kosong pada matriks ini. [gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
?',
  '/gambar/TIU-figserial-030.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'D',
  'Gambar ketiga di tiap baris adalah titik yang ada di kedua gambar sekaligus. Jawabannya gambar D. Opsi A salah: ada titik yang berlebih. Opsi B salah: hasil aturan lain: titik gambar pertama yang tidak ada di gambar kedua. Opsi C salah: hasil aturan lain: titik yang hanya ada di salah satu gambar. Opsi E salah: hasil aturan lain: gabungan.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  787,
  'TIU',
  'Figural Serial',
  'sedang',
  'Level Level dewa
Tentukan gambar berikutnya dalam serial ini. [gambar] › [gambar] › [gambar] › [gambar] › [gambar] ›?',
  '/gambar/TIU-figserial-031.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'B',
  'Tiap unsur punya aturan sendiri: warna unsur tengah bergilir putih, abu-abu, hitam, lalu ulang; unsur tengah berputar 90° searah jarum jam tiap langkah; titik tepi berpindah 2 posisi searah jarum jam tiap langkah, warnanya bergantian hitam dan putih. Terapkan semuanya pada langkah ke-6: gambar B. Opsi A salah: dua pola sama-sama keliru. Opsi C salah: arah putar unsur tengah keliru (mengulang langkah sebelumnya). Opsi D salah: posisi titik tepi keliru (mengulang langkah sebelumnya). Opsi E salah: arah putar unsur tengah keliru (melompat satu langkah).',
  NULL,
  NULL,
  'published'
),
(
  'web',
  788,
  'TIU',
  'Figural Serial',
  'sedang',
  'Level Level dewa
Tentukan sel kosong pada matriks ini. [gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
?',
  '/gambar/TIU-figserial-032.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'E',
  'Ada 4 aturan yang berjalan bersamaan: bentuk luar mengikuti pola kotak latin (tiap baris dan kolom memuat tiga bentuk, masing-masing sekali); bentuk dalam mengikuti pola kotak latin; warna dalam mengikuti pola kolom atau kotak latin; jumlah bentuk dalam naik satu mengikuti baris atau kolom. Baca tiap ciri secara terpisah, lalu gabungkan untuk sel kosong. Jawabannya gambar E. Opsi A salah: sama dengan gambar di kirinya. Opsi B salah: sama dengan gambar di atasnya. Opsi C salah: jumlah bentuk dalam keliru. Opsi D salah: bentuk dalam keliru.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  789,
  'TIU',
  'Figural Serial',
  'sedang',
  'Level Level dewa
Tentukan sel kosong pada matriks ini. [gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
?',
  '/gambar/TIU-figserial-033.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'C',
  'Ada 4 aturan yang berjalan bersamaan: bentuk luar mengikuti pola kotak latin (tiap baris dan kolom memuat tiga bentuk, masing-masing sekali); bentuk dalam mengikuti pola kotak latin; warna dalam mengikuti pola kolom atau kotak latin; jumlah bentuk dalam naik satu mengikuti baris atau kolom. Baca tiap ciri secara terpisah, lalu gabungkan untuk sel kosong. Jawabannya gambar C. Opsi A salah: sama dengan gambar di kirinya. Opsi B salah: sama dengan gambar di atasnya. Opsi D salah: bentuk luar keliru. Opsi E salah: warna dalam keliru.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  790,
  'TIU',
  'Figural Serial',
  'sedang',
  'Level Level dewa
Tentukan gambar berikutnya dalam serial ini. [gambar] › [gambar] › [gambar] › [gambar] › [gambar] ›?',
  '/gambar/TIU-figserial-034.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'D',
  'Tiap unsur punya aturan sendiri: warna unsur tengah bergilir putih, abu-abu, hitam, lalu ulang; unsur tengah berputar 45° berlawanan arah jarum jam tiap langkah; titik tepi berpindah 1 posisi berlawanan arah jarum jam tiap langkah. Terapkan semuanya pada langkah ke-6: gambar D. Opsi A salah: dua pola sama-sama keliru. Opsi B salah: posisi titik tepi keliru (mengulang langkah sebelumnya). Opsi C salah: arah putar unsur tengah keliru (mengulang langkah sebelumnya). Opsi E salah: arah putar unsur tengah keliru (melompat satu langkah).',
  NULL,
  NULL,
  'published'
),
(
  'web',
  791,
  'TIU',
  'Figural Serial',
  'sedang',
  'Level Level dewa
Tentukan gambar berikutnya dalam serial ini. [gambar] › [gambar] › [gambar] › [gambar] › [gambar] ›?',
  '/gambar/TIU-figserial-035.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'A',
  'Tiap unsur punya aturan sendiri: titik tepi melompat makin jauh: 1, 2, 3, 4... posisi searah jarum jam; warna unsur tengah bergilir putih, abu-abu, hitam, lalu ulang; unsur tengah berputar 45° searah jarum jam tiap langkah. Terapkan semuanya pada langkah ke-6: gambar A. Opsi B salah: dua pola sama-sama keliru. Opsi C salah: warna unsur tengah keliru (mengulang langkah sebelumnya). Opsi D salah: posisi titik tepi keliru (mengulang langkah sebelumnya). Opsi E salah: arah putar unsur tengah keliru (melompat satu langkah).',
  NULL,
  NULL,
  'published'
),
(
  'web',
  792,
  'TIU',
  'Figural Serial',
  'sedang',
  'Level Level dewa
Tentukan sel kosong pada matriks ini. [gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
?',
  '/gambar/TIU-figserial-036.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'D',
  'Gambar ketiga di tiap baris adalah titik yang hanya ada di salah satu gambar (yang sama-sama ada dihapus). Jawabannya gambar D. Opsi A salah: hasil aturan lain: gabungan. Opsi B salah: ada titik yang kurang. Opsi C salah: hasil aturan lain: titik gambar pertama yang tidak ada di gambar kedua. Opsi E salah: ada titik yang berlebih.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  793,
  'TIU',
  'Figural Serial',
  'sedang',
  'Level Level dewa
Tentukan sel kosong pada matriks ini. [gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
?',
  '/gambar/TIU-figserial-037.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'B',
  'Ada 4 aturan yang berjalan bersamaan: bentuk luar mengikuti pola kotak latin (tiap baris dan kolom memuat tiga bentuk, masing-masing sekali); bentuk dalam mengikuti pola kotak latin; warna dalam mengikuti pola kolom atau kotak latin; jumlah bentuk dalam naik satu mengikuti baris atau kolom. Baca tiap ciri secara terpisah, lalu gabungkan untuk sel kosong. Jawabannya gambar B. Opsi A salah: sama dengan gambar di kirinya. Opsi C salah: sama dengan gambar di atasnya. Opsi D salah: bentuk dalam keliru. Opsi E salah: warna dalam keliru.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  794,
  'TIU',
  'Figural Serial',
  'sedang',
  'Level Level dewa
Tentukan sel kosong pada matriks ini. [gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
[gambar]
?',
  '/gambar/TIU-figserial-038.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'A',
  'Ada 4 aturan yang berjalan bersamaan: bentuk luar mengikuti pola kotak latin (tiap baris dan kolom memuat tiga bentuk, masing-masing sekali); warna luar mengikuti pola baris atau kotak latin; jumlah bentuk dalam naik satu mengikuti baris atau kolom; arah bentuk dalam berputar 90° tiap langkah ke kanan atau ke bawah. Baca tiap ciri secara terpisah, lalu gabungkan untuk sel kosong. Jawabannya gambar A. Opsi B salah: sama dengan gambar di kirinya. Opsi C salah: sama dengan gambar di atasnya. Opsi D salah: arah putaran keliru. Opsi E salah: bentuk luar keliru.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  795,
  'TIU',
  'Figural Serial',
  'sedang',
  'Level Level dewa
Tentukan gambar berikutnya dalam serial ini. [gambar] › [gambar] › [gambar] › [gambar] › [gambar] ›?',
  '/gambar/TIU-figserial-039.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'A',
  'Tiap unsur punya aturan sendiri: unsur tengah berputar 45° searah jarum jam tiap langkah; warna unsur tengah bergilir putih, abu-abu, hitam, lalu ulang; titik tepi melompat makin jauh: 1, 2, 3, 4... posisi searah jarum jam. Terapkan semuanya pada langkah ke-6: gambar A. Opsi B salah: dua pola sama-sama keliru. Opsi C salah: posisi titik tepi keliru (melompat satu langkah). Opsi D salah: posisi titik tepi keliru (mengulang langkah sebelumnya). Opsi E salah: arah putar unsur tengah keliru (mengulang langkah sebelumnya).',
  NULL,
  NULL,
  'published'
),
(
  'web',
  796,
  'TIU',
  'Figural Serial',
  'sedang',
  'Level Level dewa
Tentukan gambar berikutnya dalam serial ini. [gambar] › [gambar] › [gambar] › [gambar] › [gambar] ›?',
  '/gambar/TIU-figserial-040.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'D',
  'Tiap unsur punya aturan sendiri: warna unsur tengah bergilir putih, abu-abu, hitam, lalu ulang; unsur tengah berputar 45° berlawanan arah jarum jam tiap langkah; titik tepi melompat makin jauh: 1, 2, 3, 4... posisi searah jarum jam. Terapkan semuanya pada langkah ke-6: gambar D. Opsi A salah: dua pola sama-sama keliru. Opsi B salah: posisi titik tepi keliru (melompat satu langkah). Opsi C salah: arah putar unsur tengah keliru (melompat satu langkah). Opsi E salah: arah putar unsur tengah keliru (mengulang langkah sebelumnya).',
  NULL,
  NULL,
  'published'
),
(
  'web',
  797,
  'TIU',
  'Figural Serial',
  'sedang',
  'Level Level dewa
Tentukan gambar berikutnya dalam serial ini. [gambar] › [gambar] › [gambar] › [gambar] › [gambar] ›?',
  '/gambar/TIU-figserial-041.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'A',
  'Tiap unsur punya aturan sendiri: warna unsur tengah bergilir putih, abu-abu, hitam, lalu ulang; unsur tengah berputar 90° searah jarum jam tiap langkah; titik tepi berpindah 3 posisi searah jarum jam tiap langkah, warnanya bergantian hitam dan putih. Terapkan semuanya pada langkah ke-6: gambar A. Opsi B salah: dua pola sama-sama keliru. Opsi C salah: warna unsur tengah keliru (melompat satu langkah). Opsi D salah: posisi titik tepi keliru (melompat satu langkah). Opsi E salah: posisi titik tepi keliru (mengulang langkah sebelumnya).',
  NULL,
  NULL,
  'published'
),
(
  'web',
  798,
  'TIU',
  'Figural Serial',
  'sedang',
  'Level Level dewa
Tentukan gambar berikutnya dalam serial ini. [gambar] › [gambar] › [gambar] › [gambar] › [gambar] ›?',
  '/gambar/TIU-figserial-042.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'A',
  'Tiap unsur punya aturan sendiri: titik tepi berpindah 2 posisi berlawanan arah jarum jam tiap langkah; unsur tengah berputar 90° berlawanan arah jarum jam tiap langkah; warna unsur tengah bergilir putih, abu-abu, hitam, lalu ulang. Terapkan semuanya pada langkah ke-6: gambar A. Opsi B salah: dua pola sama-sama keliru. Opsi C salah: posisi titik tepi keliru (melompat satu langkah). Opsi D salah: arah putar unsur tengah keliru (mengulang langkah sebelumnya). Opsi E salah: warna unsur tengah keliru (mengulang langkah sebelumnya).',
  NULL,
  NULL,
  'published'
),
(
  'web',
  799,
  'TIU',
  'Figural Serial',
  'sedang',
  'Level Level dewa
Tentukan gambar berikutnya dalam serial ini. [gambar] › [gambar] › [gambar] › [gambar] › [gambar] ›?',
  '/gambar/TIU-figserial-043.png',
  '{"A":"Pilihan A","B":"Pilihan B","C":"Pilihan C","D":"Pilihan D","E":"Pilihan E"}'::jsonb,
  'D',
  'Tiap unsur punya aturan sendiri: titik tepi berpindah 1 posisi searah jarum jam tiap langkah, warnanya bergantian hitam dan putih; unsur tengah berputar 45° berlawanan arah jarum jam tiap langkah; warna unsur tengah bergilir putih, abu-abu, hitam, lalu ulang. Terapkan semuanya pada langkah ke-6: gambar D. Opsi A salah: dua pola sama-sama keliru. Opsi B salah: posisi titik tepi keliru (mengulang langkah sebelumnya). Opsi C salah: warna unsur tengah keliru (mengulang langkah sebelumnya). Opsi E salah: posisi titik tepi keliru (melompat satu langkah).',
  NULL,
  NULL,
  'published'
),
(
  'web',
  800,
  'TIU',
  'Figural Serial',
  'sedang',
  'Sebuah panah mula-mula menunjuk ke atas. Tiap langkah panah diputar 90 derajat searah jarum jam; pada langkah genap panah juga dicerminkan kiri-kanan. Setelah langkah ke-4, panah menunjuk...',
  NULL,
  '{"A":"Ke atas","B":"Ke bawah","C":"Ke kiri","D":"Ke kanan","E":"Tidak dapat ditentukan"}'::jsonb,
  'A',
  'Langkah 1: kanan. 2: bawah (cermin kiri-kanan tidak mengubahnya). 3: kiri. 4: atas.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  801,
  'TIU',
  'Figural Serial',
  'sedang',
  'Persegi dibagi 4 kotak bernomor 1 (kiri atas), 2 (kanan atas), 3 (kanan bawah), 4 (kiri bawah). Langkah 1 mengarsir kotak 1. Tiap langkah arsir berpindah searah jarum jam melompati satu kotak (maju 2 posisi). Kotak yang diarsir pada langkah ke-6...',
  NULL,
  '{"A":"Kotak 1","B":"Kotak 2","C":"Kotak 3","D":"Kotak 4","E":"Tidak dapat ditentukan"}'::jsonb,
  'C',
  'Pola 1, 3, 1, 3, 1, 3: langkah ke-6 kotak 3.',
  NULL,
  NULL,
  'published'
),
(
  'web',
  802,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Anda bertugas di loket pendaftaran Puskesmas. Seorang pasien lansia kesulitan mengisi formulir pendaftaran digital, sementara antrean di belakangnya mulai menumpuk. Sikap Anda...',
  NULL,
  '{"A":"Membantu mengisi formulir sampai selesai dan meminta rekan mengatur antrean yang menumpuk","B":"Membantu mengisi formulir sampai selesai lalu meminta maaf kepada warga yang mengantre","C":"Menjelaskan caranya langkah demi langkah lalu mempersilakan pasien mencoba sendiri","D":"Menyarankan pasien kembali bersama keluarga yang dapat mendampingi pengisian formulir","E":"Meminta pasien menyelesaikan sendiri karena aturan mengharuskan pengisian mandiri"}'::jsonb,
  'A',
  'Nilai 5: empati pada pasien rentan sekaligus menjaga kelancaran layanan.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  803,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Seorang wajib pajak daerah mengeluh tarif naik tanpa pemberitahuan. Sebagai petugas loket, Anda mengetahui kenaikan itu telah diatur dalam peraturan daerah. Sikap Anda...',
  NULL,
  '{"A":"Menjelaskan dasar peraturan daerahnya, memberi rujukan sumber resmi, dan menginformasikan jalur keberatan","B":"Menjelaskan dasar peraturan daerahnya dan menyarankan wajib pajak mengajukan keberatan secara tertulis","C":"Menjelaskan bahwa tarif ditetapkan pemerintah daerah lalu meneruskan keluhan ke atasan untuk ditindaklanjuti","D":"Meminta wajib pajak membaca sendiri peraturan daerahnya di situs resmi sebelum dilayani lagi","E":"Menyatakan bahwa tarif sudah ketentuan dan keluhan seperti itu tidak akan mengubah apa pun"}'::jsonb,
  'A',
  'Nilai 5: informatif, transparan, dan membuka akses penyelesaian.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  804,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Sistem layanan online kantor Anda mengalami gangguan saat banyak warga menunggu. Tindakan Anda...',
  NULL,
  '{"A":"Menginformasikan kendala dan estimasi pemulihan, mencatat data warga secara manual, dan melapor ke tim TI","B":"Menginformasikan kendala dan estimasi pemulihan, lalu melapor ke tim TI sambil melayani warga yang mendesak","C":"Melapor ke tim TI dan meminta warga menunggu di ruang tunggu tanpa kepastian waktu pemulihan","D":"Menyarankan warga kembali besok agar tidak menunggu lama sementara tim TI memperbaiki sistem","E":"Menunggu sampai sistem pulih sendiri karena perbaikan merupakan tugas tim TI sepenuhnya"}'::jsonb,
  'A',
  'Nilai 5: komunikatif, ada solusi sementara, dan eskalasi.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  805,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Seorang warga lupa membawa KTP asli dan hanya membawa fotokopi, padahal layanan mensyaratkan verifikasi dokumen asli. Sikap Anda...',
  NULL,
  '{"A":"Menjelaskan aturannya dengan ramah dan mencarikan alternatif verifikasi yang diperbolehkan oleh aturan","B":"Menjelaskan aturannya dengan ramah lalu menanyakan ke atasan apakah ada kebijakan pengecualian","C":"Menolak dengan sopan dan menyarankan warga kembali membawa dokumen asli di hari lain","D":"Melayani sementara dengan fotokopi dan meminta warga melengkapi dokumen aslinya nanti","E":"Menolak karena persyaratan tidak dapat ditawar dan tidak menjelaskan alasannya kepada warga"}'::jsonb,
  'A',
  'Nilai 5: ramah, tegas pada aturan, dan solutif.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  806,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Seorang warga membawa balita meminta didahulukan, padahal tidak ada aturan prioritas di loket Anda. Anda...',
  NULL,
  '{"A":"Menjelaskan aturan, meminta bantuan rekan atau atasan mencari solusi prioritas yang sah, dan membantu selama menunggu","B":"Menjelaskan aturan dan meminta warga lain dengan sopan mengizinkan balita itu didahulukan","C":"Mendahulukan balita itu agar tidak terjadi keributan lalu menjelaskan alasannya kepada warga lain","D":"Menolak dengan sopan dan meminta warga tetap mengikuti antrean tanpa menawarkan bantuan","E":"Mengabaikan permintaan itu dan melanjutkan pelayanan sesuai nomor antrean semata"}'::jsonb,
  'A',
  'Nilai 5: ramah, taat aturan, dan mencarikan solusi sah.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  807,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Warga yang puas menawarkan makan siang gratis sebagai tanda terima kasih. Anda...',
  NULL,
  '{"A":"Menolak halus, berterima kasih, dan menjelaskan aturan bagi pegawai","B":"Menolak halus dan berterima kasih tanpa menjelaskan alasan aturan bagi pegawai","C":"Menerima lalu melaporkannya kepada atasan sesuai ketentuan gratifikasi setelahnya","D":"Menerima karena sekadar makan siang dan tidak ada urusan yang sedang diproses warga itu","E":"Menerima asalkan dilakukan di luar kantor agar tidak diketahui rekan lain"}'::jsonb,
  'A',
  'Nilai 5: sopan sekaligus menjaga integritas.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  808,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Keluhan layanan lambat dari seorang warga viral di media sosial dengan nada marah. Sebagai petugas layanan, Anda...',
  NULL,
  '{"A":"Menanggapi sopan di kanal yang sama, meminta data untuk ditindaklanjuti, memperbaiki, lalu mengabari hasilnya","B":"Menanggapi sopan di kanal yang sama dan meminta data, lalu menyerahkan tindak lanjutnya kepada atasan","C":"Menanggapi singkat dengan permintaan maaf lalu menyerahkan penanganannya kepada tim humas","D":"Menunggu atasan merespons karena keluhan di media sosial bukan bagian tugas petugas layanan","E":"Membantah keluhan itu satu per satu dengan data layanan agar tidak menimbulkan salah paham"}'::jsonb,
  'A',
  'Nilai 5: sopan, solutif, dan menutup lingkaran informasi.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  809,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Anda menemukan prosedur yang membuat warga mengulang pengisian data di tiga loket. Anda...',
  NULL,
  '{"A":"Mendokumentasikan keluhan dan mengusulkan penyederhanaan beserta data kepada atasan sambil tetap melayani sesuai prosedur","B":"Mendokumentasikan keluhan dan mengusulkan penyederhanaan kepada atasan tanpa data pendukung sambil tetap melayani","C":"Mengusulkan penyederhanaan secara lisan kepada rekan sekantor lalu menunggu ada yang menindaklanjuti","D":"Tetap melayani sesuai prosedur tanpa usulan karena prosedur itu bukan kewenangan petugas loket","E":"Melewati satu loket tanpa izin agar pelayanan warga lebih cepat selesai"}'::jsonb,
  'A',
  'Nilai 5: patuh prosedur sambil memperbaiki sistem lewat jalur resmi.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  810,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Warga penyandang disabilitas kesulitan menaiki tangga menuju ruang layanan. Anda...',
  NULL,
  '{"A":"Melayani di lantai dasar atau menjemput warga, lalu mengusulkan akses ramah disabilitas","B":"Melayani di lantai dasar atau menjemput warga tanpa mengusulkan perbaikan aksesnya","C":"Meminta warga datang kembali bersama pendamping yang dapat membantunya naik ke ruang layanan","D":"Menyarankan warga memakai perantara untuk mengurus layanan tanpa penjelasan lebih lanjut","E":"Menyampaikan bahwa fasilitas kantor memang terbatas dan warga diminta memahaminya"}'::jsonb,
  'A',
  'Nilai 5: solusi langsung dan perbaikan jangka panjang.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  811,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Warga meminta data pribadi warga lain yang Anda pegang. Anda...',
  NULL,
  '{"A":"Menolak sopan, menjelaskan perlindungan data, dan menawarkan prosedur permintaan informasi resmi","B":"Menolak sopan dan menjelaskan perlindungan data tanpa menawarkan prosedur permintaan informasi","C":"Menyarankan warga meminta langsung kepada pemilik data karena Anda tidak berwenang memberikannya","D":"Memberikan sebagian data yang tidak terlalu sensitif agar kebutuhan warga tetap terbantu","E":"Memberikan data setelah warga menunjukkan identitas dan menyampaikan alasannya dengan meyakinkan"}'::jsonb,
  'A',
  'Nilai 5: menjaga data pribadi dan tetap melayani.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  812,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Atasan meminta loket tutup lebih awal karena acara, padahal masih ada warga mengantre. Anda...',
  NULL,
  '{"A":"Menyampaikan kepada atasan, menyelesaikan antrean tercatat, lalu mengumumkan jadwal layanan pengganti","B":"Menyampaikan kepada atasan dan menyelesaikan antrean tercatat tanpa mengumumkan jadwal pengganti","C":"Menutup loket sesuai perintah setelah meminta rekan mencatat kontak warga yang masih mengantre","D":"Menutup loket sesuai perintah dan meminta warga kembali keesokan harinya","E":"Tetap membuka loket tanpa memberi tahu atasan sampai seluruh warga selesai dilayani"}'::jsonb,
  'A',
  'Nilai 5: menjaga layanan sambil berkomunikasi.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  813,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Warga menanyakan hal di luar wewenang Anda. Anda...',
  NULL,
  '{"A":"Mengarahkan ke petugas yang tepat","B":"Menjawab seadanya agar cepat selesai dan tidak menunggu terlalu lama","C":"Menyuruh bertanya ke orang lain tanpa menunjukkan siapa orangnya","D":"Bilang tidak tahu lalu sibuk dengan pekerjaan lain di meja","E":"Menjelaskan panjang lebar hal yang sebenarnya tidak Anda kuasai"}'::jsonb,
  'A',
  'Nilai 5: mengarahkan dengan benar.',
  NULL,
  '{"A":5,"B":2,"C":3,"D":1,"E":2}'::jsonb,
  'published'
),
(
  'web',
  814,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Warga marah di loket karena berkas persyaratannya kedaluwarsa. Anda...',
  NULL,
  '{"A":"Menjelaskan aturan secara tegas lalu meminta warga mengurus ulang ke tempat lain","B":"Menenangkan warga, menjelaskan aturan, dan menunjukkan langkah perbaikan","C":"Menerima berkas sementara agar warga tidak marah, lalu memprosesnya setelah ada kelonggaran yang belum tentu diberikan atasan","D":"Membiarkan warga marah sampai reda sendiri","E":"Mengajak warga menemui atasan sambil menjelaskan persoalannya"}'::jsonb,
  'B',
  'Nilai 5: empati, kejelasan aturan, dan solusi.',
  NULL,
  '{"A":3,"B":5,"C":2,"D":1,"E":4}'::jsonb,
  'published'
),
(
  'web',
  815,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Dua warga bersamaan meminta dilayani dan saling mengklaim lebih dulu datang. Anda...',
  NULL,
  '{"A":"Memeriksa nomor antrean dan melayani sesuai urutan dengan sopan","B":"Memeriksa nomor antrean dan melayani sesuai urutan setelah meminta keduanya menunggu tenang","C":"Meminta keduanya bergantian sesuai kesepakatan mereka tanpa memeriksa nomor antrean","D":"Meminta atasan memutuskan siapa yang dilayani lebih dahulu karena keduanya mengklaim","E":"Melayani warga yang tampak lebih terburu-buru agar tidak menimbulkan keributan di loket"}'::jsonb,
  'A',
  'Nilai 5: objektif dan adil.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  816,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Warga lansia berulang kali menanyakan hal yang sama. Anda...',
  NULL,
  '{"A":"Menjawab sabar dan menuliskan jawabannya agar mudah diingat","B":"Menjawab sabar dengan suara pelan tanpa mencatat apa pun untuknya","C":"Menjawab singkat lalu mengarahkan lansia itu ke petugas informasi di sebelah","D":"Meminta rekan lain menjawab karena pertanyaan itu sudah beberapa kali Anda jelaskan","E":"Menjawab singkat sambil menunjukkan rasa kesal karena antrean di belakangnya"}'::jsonb,
  'A',
  'Nilai 5: sabar dan memberi solusi praktis.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  817,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Printer rusak dan warga meminta Anda memotret dokumen pribadinya dengan ponsel pribadi Anda. Anda...',
  NULL,
  '{"A":"Menolak karena data pribadi, menawarkan perangkat kantor atau jadwal ulang","B":"Menolak karena data pribadi, lalu meminta warga kembali besok tanpa menawarkan alternatif","C":"Memotret dengan ponsel pribadi lalu segera menghapus fotonya di hadapan warga","D":"Memotret dengan ponsel rekan agar data warga tidak tersimpan di ponsel Anda","E":"Memotret dan menyimpan salinannya untuk berjaga-jaga bila dokumen diperlukan kembali"}'::jsonb,
  'A',
  'Nilai 5: menjaga data pribadi dan tetap solutif.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  818,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Warga meminta berkasnya dipercepat karena kasihan, dan teman Anda mendukung. Anda...',
  NULL,
  '{"A":"Menjelaskan antrean berlaku sama dan menawarkan jalur prioritas resmi bila memenuhi syarat","B":"Menjelaskan antrean berlaku sama tanpa menawarkan jalur prioritas resmi","C":"Meminta teman Anda yang memproses berkas itu agar tidak dianggap memberi keistimewaan","D":"Mempercepat sekali ini karena warga tampak mengalami kesulitan dan teman Anda mendukung","E":"Memproses berkas itu setelah jam kerja agar tidak diketahui warga lain yang mengantre"}'::jsonb,
  'A',
  'Nilai 5: adil dan menawarkan solusi sah.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  819,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Warga tidak puas dan ingin bertemu pimpinan yang sedang rapat. Anda...',
  NULL,
  '{"A":"Menyampaikan pimpinan sedang rapat, mencatat keluhan, dan menjadwalkan pertemuan","B":"Menyampaikan pimpinan sedang rapat dan mencatat keluhan tanpa menjadwalkan pertemuan","C":"Meminta warga menunggu sampai rapat selesai tanpa kepastian waktu","D":"Menyampaikan keluhan itu kepada pimpinan lewat pesan singkat saat rapat berlangsung","E":"Meminta warga datang kembali besok karena pimpinan tidak dapat ditemui hari ini"}'::jsonb,
  'A',
  'Nilai 5: menyalurkan keluhan dengan tertib.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  820,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Warga datang menjelang loket tutup dengan berkas lengkap, dan Anda masih bisa melayani 10 menit lagi. Anda...',
  NULL,
  '{"A":"Melayani sampai selesai dan memberi tahu bila perlu kelengkapan lanjutan","B":"Melayani sampai selesai tanpa menyampaikan kemungkinan kelengkapan lanjutan","C":"Melayani setelah meminta warga menunggu karena jam layanan hampir berakhir","D":"Meminta warga datang kembali besok agar berkasnya diperiksa lebih teliti","E":"Menolak karena jam layanan hampir berakhir dan antrean sudah ditutup"}'::jsonb,
  'A',
  'Nilai 5: melayani tuntas dan komunikatif.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  821,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Warga marah karena layanan gagal akibat sistem, bukan kesalahan Anda. Anda...',
  NULL,
  '{"A":"Meminta maaf, menjelaskan, dan menawarkan solusi sementara","B":"Meminta maaf dan menjelaskan penyebabnya tanpa menawarkan solusi sementara","C":"Menjelaskan bahwa gangguan berasal dari sistem dan bukan kesalahan petugas loket","D":"Meminta warga menunggu perbaikan sistem tanpa menjelaskan perkiraan waktunya","E":"Mengarahkan warga menyampaikan keluhan kepada tim TI yang mengelola sistem"}'::jsonb,
  'A',
  'Nilai 5: empati dan solusi.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  822,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Warga difabel kesulitan mengakses loket di lantai atas. Anda...',
  NULL,
  '{"A":"Melayani di lantai bawah dan mengusulkan perbaikan akses","B":"Melayani di lantai bawah tanpa mengusulkan perbaikan akses kepada atasan","C":"Meminta warga datang bersama pendamping yang dapat membantunya menuju loket","D":"Mengusulkan perbaikan akses kepada atasan lalu meminta warga menunggu hingga selesai","E":"Menyarankan warga mengurus layanan lewat perantara karena loket berada di lantai atas"}'::jsonb,
  'A',
  'Nilai 5: layanan inklusif dan perbaikan sistem.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  823,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Warga mendesak layanan selesai hari ini, tetapi berkasnya cacat dan aturan melarang memproses. Atasan berpesan usahakan jangan ada keluhan. Anda...',
  NULL,
  '{"A":"Menjelaskan kekurangan berkas dengan ramah, membantu melengkapi secepatnya, dan melapor ke atasan alasan penundaan","B":"Menjelaskan kekurangan berkas dengan ramah dan membantu melengkapi tanpa melapor ke atasan alasan penundaan","C":"Memproses berkas itu dengan catatan kekurangan agar tidak ada keluhan sesuai pesan atasan","D":"Meminta warga melengkapi berkas dan kembali pada hari lain tanpa membantu melengkapi","E":"Memproses berkas itu secepatnya karena atasan berpesan agar tidak ada keluhan warga"}'::jsonb,
  'A',
  'Nilai 5: taat aturan, ramah, dan transparan kepada atasan.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  824,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Warga mengancam memviralkan layanan bila tidak didahulukan, padahal tidak memenuhi kriteria prioritas. Anda...',
  NULL,
  '{"A":"Menjelaskan kriteria dengan tenang, menawarkan jalur pengaduan resmi, dan tetap melayani sesuai antrean","B":"Menjelaskan kriteria dengan tenang dan tetap melayani sesuai antrean tanpa menawarkan jalur pengaduan","C":"Meminta atasan menangani warga itu agar Anda tidak terlibat dalam perselisihan","D":"Mendahulukan warga itu sekali ini agar tidak terjadi keributan di media sosial","E":"Menyarankan warga mengurus layanan di hari lain saat loket tidak ramai"}'::jsonb,
  'A',
  'Nilai 5: tegas pada aturan, tetap santun dan terbuka.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  825,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Anda menemukan kesalahan input yang membuat sebagian warga berhak tidak terdaftar menjelang penyaluran bantuan. Anda...',
  NULL,
  '{"A":"Melapor ke atasan dengan bukti, mengusulkan koreksi darurat sesuai prosedur, dan memantau penyaluran","B":"Melapor ke atasan dengan bukti dan mengusulkan koreksi darurat tanpa memantau penyaluran","C":"Melapor ke atasan lalu menunggu keputusan tanpa mengusulkan koreksi darurat","D":"Memperbaiki data sendiri agar warga tetap menerima bantuan lalu melapor setelahnya","E":"Menunggu penyaluran selesai agar koreksi dilakukan pada tahap berikutnya"}'::jsonb,
  'A',
  'Nilai 5: bertanggung jawab lewat jalur resmi.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  826,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Warga datang ke loket dengan berkas lengkap, tetapi kuota antrean daring hari ini sudah penuh. Aturan hanya melayani pendaftar daring. Warga itu datang dari jauh dengan membawa anak kecil. Sikap Anda....',
  NULL,
  '{"A":"Menerima berkas warga di luar antrean daring karena merasa kasihan, tanpa memberi tahu koordinator layanan","B":"Menjelaskan aturan kuota dengan ramah, lalu menyarankan warga mendaftar daring dari rumah untuk jadwal berikutnya","C":"Menjelaskan aturan kuota dengan ramah, lalu menanyakan kepada koordinator apakah tersedia slot tambahan sesuai ketentuan loket, lalu menunggu arahan atasan","D":"Menjelaskan aturan kuota dengan ramah, mendaftarkan warga untuk jadwal terdekat, dan memberi tahu berkas yang perlu dibawa kembali","E":"Menjelaskan aturan kuota dengan singkat, lalu mempersilakan warga menunggu siapa tahu ada pendaftar yang membatalkan jadwalnya"}'::jsonb,
  'D',
  'Nilai 5: patuh aturan, empatik, dan memberi solusi konkret saat itu juga. Menerima di luar antrean tanpa izin melanggar aturan.',
  NULL,
  '{"A":1,"B":3,"C":4,"D":5,"E":2}'::jsonb,
  'published'
),
(
  'web',
  827,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Seorang pemohon izin usaha marah karena berkasnya dikembalikan dua kali dengan catatan perbaikan yang berbeda dari dua petugas verifikasi. Anda petugas yang menerima keluhannya. Sikap Anda....',
  NULL,
  '{"A":"Meminta maaf, mencatat keluhan pemohon, lalu menjanjikan kabar dari atasan dalam beberapa hari ke depan, lalu menyerahkan kelanjutannya kepada pihak lain","B":"Menjelaskan bahwa perbedaan catatan lazim terjadi dan meminta pemohon mengikuti catatan yang paling baru","C":"Mengatakan di hadapan pemohon bahwa salah satu petugas verifikasi kurang teliti dalam memeriksa berkas","D":"Meminta maaf, memeriksa kedua catatan bersama pemohon, lalu menyampaikan perbedaannya kepada atasan untuk dicarikan keputusan","E":"Meminta maaf, memeriksa kedua catatan bersama pemohon, lalu mengoordinasikan kedua petugas agar ada satu daftar perbaikan final"}'::jsonb,
  'E',
  'Nilai 5: empati, solusi, dan koordinasi yang menyelesaikan akar masalah. Menyalahkan petugas lain di depan pemohon merusak kepercayaan.',
  NULL,
  '{"A":3,"B":2,"C":1,"D":4,"E":5}'::jsonb,
  'published'
),
(
  'web',
  828,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Anda petugas informasi. Seorang warga lansia bertanya tentang prosedur yang sudah dijelaskan dua kali dan belum paham, sementara beberapa warga lain menunggu. Sikap Anda....',
  NULL,
  '{"A":"Menjelaskan lagi dengan bahasa sederhana dan menuliskan langkah-langkahnya agar dapat dibawa pulang oleh warga lansia tersebut","B":"Menjelaskan lagi dengan bahasa sederhana, lalu mempersilakan warga duduk sementara Anda melayani warga lain yang menunggu","C":"Menjelaskan lagi dengan bahasa lebih sederhana disertai catatan langkah, lalu meminta rekan melayani antrean lain hingga warga lansia paham","D":"Menyerahkan brosur prosedur dan menyarankan warga membacanya bersama keluarga di rumah pada kesempatan berikutnya, sambil berharap masalahnya mereda sendiri","E":"Mengulangi penjelasan yang sama dengan lebih cepat agar warga lain tidak menunggu terlalu lama di loket, agar tidak menambah beban kerja"}'::jsonb,
  'C',
  'Nilai 5: menyesuaikan cara menjelaskan dan menjaga layanan warga lain lewat bantuan rekan.',
  NULL,
  '{"A":4,"B":3,"C":5,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  829,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Seorang warga mengeluh lewat kanal pengaduan daring bahwa lampu jalan di depan rumahnya padam tiga minggu. Anda petugas penerima pengaduan, tetapi urusan lampu jalan berada di dinas lain. Sikap Anda....',
  NULL,
  '{"A":"Meneruskan pengaduan ke dinas berwenang dengan data lengkap, memberi tahu warga tindak lanjutnya, dan memantau sampai ada tanggapan","B":"Meneruskan pengaduan ke dinas berwenang dengan data lengkap, lalu memberi tahu warga tentang tindak lanjutnya, lalu menunggu arahan atasan","C":"Menutup pengaduan karena berada di luar kewenangan unit Anda dan tidak termasuk tugas pokok Anda, agar tidak menambah beban kerja","D":"Membalas bahwa urusan lampu jalan bukan kewenangan unit Anda dan menyarankan warga menghubungi dinas terkait","E":"Meneruskan pengaduan ke dinas berwenang dengan data lengkap tanpa memberi kabar apa pun kepada warga"}'::jsonb,
  'A',
  'Nilai 5: menuntaskan, bukan sekadar melempar.',
  NULL,
  '{"A":5,"B":4,"C":1,"D":2,"E":3}'::jsonb,
  'published'
),
(
  'web',
  830,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Pasien rujukan datang ke fasilitas Anda tanpa surat rujukan lengkap karena fasilitas asal belum mengirimkannya, dan kondisi pasien tampak lemah. Sikap Anda....',
  NULL,
  '{"A":"Memastikan pasien mendapat pemeriksaan awal sesuai kondisinya, lalu meminta keluarga mengurus kelengkapan surat rujukan","B":"Meminta pasien menunggu sambil menghubungi fasilitas asal untuk melengkapi surat rujukan yang belum dikirim, lalu menyerahkan kelanjutannya kepada pihak lain","C":"Memastikan pasien mendapat pemeriksaan awal sesuai kondisinya, lalu menghubungi fasilitas asal untuk melengkapi surat rujukan","D":"Menolak pelayanan sampai surat rujukan lengkap diterima oleh fasilitas Anda, agar tidak menambah beban kerja","E":"Meminta pasien kembali ke fasilitas asal untuk mengambil surat rujukan yang sudah lengkap"}'::jsonb,
  'C',
  'Nilai 5: mengutamakan keselamatan pasien, lalu mengurus administrasi sendiri.',
  NULL,
  '{"A":4,"B":3,"C":5,"D":1,"E":2}'::jsonb,
  'published'
),
(
  'web',
  831,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Sistem pembayaran retribusi daring gagal memproses transaksi warga: saldo warga terpotong tetapi status tagihan belum lunas. Sikap Anda....',
  NULL,
  '{"A":"Meminta warga menyimpan bukti transaksi, mencatat data lengkapnya, dan melaporkannya kepada tim teknis","B":"Meminta warga menyimpan bukti transaksi, mencatat data lengkapnya, melapor ke tim teknis, dan menghubungi warga setelah selesai","C":"Meminta warga menghubungi bank penerbit karena saldo warga sudah terpotong dari rekeningnya","D":"Mencatat tagihan sebagai lunas secara manual tanpa menunggu verifikasi tim teknis, agar tidak menambah beban kerja","E":"Meminta warga menunggu satu sampai dua hari karena sistem biasanya memperbarui status sendiri, sambil berharap masalahnya mereda sendiri"}'::jsonb,
  'B',
  'Nilai 5: tertib bukti, eskalasi, dan tindak lanjut ke warga.',
  NULL,
  '{"A":4,"B":5,"C":3,"D":1,"E":2}'::jsonb,
  'published'
),
(
  'web',
  832,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Seorang warga marah di loket karena berkas izin usahanya belum selesai padahal sudah lewat estimasi, dan ia merekam Anda sambil menuntut jawaban. Sikap Anda....',
  NULL,
  '{"A":"Tetap tenang, mengecek status berkas, menjelaskan penyebab keterlambatan, dan memberi kepastian tindak lanjut tertulis","B":"Mengecek status berkas lalu meminta warga berhenti merekam karena mengganggu pelayanan","C":"Meminta atasan menemui warga karena itu bukan wewenang Anda","D":"Menjelaskan bahwa estimasi waktu hanya perkiraan dan bukan janji","E":"Menghentikan layanan sampai warga berhenti merekam dan bersikap sopan"}'::jsonb,
  'A',
  'Nilai 5: tenang, transparan, dan memberi kepastian. Merekam pelayanan publik tidak dilarang.',
  NULL,
  '{"A":5,"B":3,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  833,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Aplikasi layanan online mengalami gangguan saat batas akhir pengajuan bantuan sosial tinggal dua hari. Banyak warga lanjut usia mengantre di kantor. Tindakan Anda....',
  NULL,
  '{"A":"Mengusulkan perpanjangan batas waktu kepada atasan sambil mencatat data warga secara manual dan menyiapkan loket khusus lansia","B":"Mencatat data warga secara manual dan memasukkannya setelah aplikasi pulih","C":"Meminta warga menunggu sampai aplikasi diperbaiki tim teknis","D":"Mengarahkan warga memakai aplikasi lewat ponsel anaknya masing-masing","E":"Meminta warga kembali setelah gangguan dinyatakan selesai"}'::jsonb,
  'A',
  'Nilai 5: solusi sementara, melindungi hak warga atas batas waktu, dan empati pada kelompok rentan.',
  NULL,
  '{"A":5,"B":4,"C":2,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  834,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Seorang pemohon meminta Anda mempercepat penerbitan dokumen dengan imbalan "uang terima kasih" dan berjanji merahasiakannya. Tindakan Anda....',
  NULL,
  '{"A":"Menolak, menjelaskan alur resmi dan estimasi waktunya, serta mencatat kejadian untuk dilaporkan ke atasan","B":"Menolak dengan halus tanpa menjelaskan alasan agar tidak menyinggung pemohon","C":"Menolak dan menegur pemohon di depan antrean agar menjadi pelajaran","D":"Menolak lalu memproses dokumen itu lebih dulu karena terlanjur diminta","E":"Menerima lalu menyerahkannya ke bendahara sebagai pendapatan kantor"}'::jsonb,
  'A',
  'Nilai 5: tegas, informatif, dan akuntabel.',
  NULL,
  '{"A":5,"B":3,"C":2,"D":1,"E":1}'::jsonb,
  'published'
),
(
  'web',
  835,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Warga penyandang disabilitas netra datang tanpa pendamping untuk mengurus dokumen kependudukan, sementara formulir hanya tersedia cetak. Sikap Anda....',
  NULL,
  '{"A":"Membantu membacakan dan mengisi formulir sesuai arahannya, memastikan isiannya dibacakan ulang, dan mengusulkan versi ramah disabilitas","B":"Membantu mengisi formulir sesuai arahannya lalu menyuruhnya menandatangani","C":"Meminta rekan membantu karena Anda sedang melayani antrean lain","D":"Menyarankan ia datang kembali dengan pendamping","E":"Menyuruhnya mengisi sendiri karena aturan mewajibkan pemohon mengisi formulir"}'::jsonb,
  'A',
  'Nilai 5: inklusif, memastikan kebenaran isi, dan memperbaiki sistem.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  836,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Atasan meminta laporan indeks kepuasan masyarakat segera dinaikkan agar mencapai target, padahal data survei asli di bawah target. Sikap Anda....',
  NULL,
  '{"A":"Menyampaikan data asli, menjelaskan faktor penyebabnya, dan mengusulkan rencana perbaikan layanan","B":"Menyampaikan data asli tanpa penjelasan lain agar keputusan tetap di tangan atasan","C":"Membulatkan angka ke atas sedikit agar mendekati target","D":"Menaikkan angka sesuai permintaan karena atasan penanggung jawab laporan","E":"Menunda laporan sampai ada perbaikan nilai survei"}'::jsonb,
  'A',
  'Nilai 5: jujur sekaligus solutif.',
  NULL,
  '{"A":5,"B":4,"C":2,"D":1,"E":3}'::jsonb,
  'published'
),
(
  'web',
  837,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Seorang warga bertanya tentang layanan yang menjadi kewenangan instansi lain, dan ia terlihat bingung serta sudah menempuh perjalanan jauh. Tindakan Anda....',
  NULL,
  '{"A":"Menjelaskan instansi yang berwenang, menghubungi petugas di sana untuk memastikan syarat, dan menuliskan alamat serta persyaratannya","B":"Menjelaskan instansi yang berwenang beserta alamatnya","C":"Menyarankan warga bertanya ke petugas informasi","D":"Mengatakan layanan itu bukan wewenang kantor Anda","E":"Mencoba melayani sendiri agar warga tidak perlu pergi lagi"}'::jsonb,
  'A',
  'Nilai 5: proaktif memastikan warga terlayani. Opsi 5 melampaui kewenangan.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  838,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Survei menunjukkan keluhan terbanyak adalah waktu tunggu yang lama pada jam makan siang. Sebagai petugas, usulan Anda....',
  NULL,
  '{"A":"Mengusulkan pembagian jam istirahat bergilir agar loket tetap buka dan mengujinya dulu pada satu pekan","B":"Mengusulkan menutup loket lebih awal agar antrean tidak menumpuk","C":"Mengusulkan penambahan pegawai tanpa menganalisis jam sibuk","D":"Menunggu instruksi atasan karena jam kerja bukan wewenang Anda","E":"Mengimbau warga datang di luar jam makan siang"}'::jsonb,
  'A',
  'Nilai 5: inovatif, tetap melayani, dan berbasis data.',
  NULL,
  '{"A":5,"B":2,"C":3,"D":3,"E":2}'::jsonb,
  'published'
),
(
  'web',
  839,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Warga lansia menanyakan hal yang sama berulang kali karena sulit memahami penjelasan, sementara antrean memanjang. Sikap Anda....',
  NULL,
  '{"A":"Menjelaskan perlahan dengan bahasa sederhana, menuliskan langkahnya, lalu meminta rekan mengatur antrean","B":"Menjelaskan perlahan dan meminta antrean bersabar","C":"Menjelaskan singkat lalu mempersilakan warga berikutnya maju","D":"Menyuruh warga membawa anggota keluarga yang lebih paham","E":"Meminta rekan melayani lansia itu agar antrean tidak terganggu"}'::jsonb,
  'A',
  'Nilai 5: sabar, memberi bukti tertulis, dan menjaga antrean.',
  NULL,
  '{"A":5,"B":4,"C":2,"D":2,"E":3}'::jsonb,
  'published'
),
(
  'web',
  840,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Seorang warga marah di loket karena berkasnya belum selesai padahal sudah melewati jadwal. Sikap terbaik Anda sebagai petugas adalah...',
  NULL,
  '{"A":"Menjelaskan aturan panjang tanpa memeriksa berkas","B":"Mendengarkan dengan tenang, meminta maaf atas keterlambatan, memeriksa status berkas, dan memberi kepastian waktu","C":"Mengabaikannya sampai ia tenang","D":"Menyuruhnya menunggu karena itu bukan urusan Anda","E":"Mengarahkannya ke loket lain tanpa penjelasan"}'::jsonb,
  'B',
  'Nilai 5: ramah, mengakui masalah, mencari solusi, dan memberi kepastian. Menjelaskan aturan tanpa mengecek berkas bernilai lebih rendah, sedangkan mengabaikan paling rendah.',
  NULL,
  '{"A":4,"B":5,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  841,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Warga menanyakan layanan yang bukan wewenang unit Anda. Sikap Anda...',
  NULL,
  '{"A":"Mengoper tanpa penjelasan","B":"Menjawab sebisanya dari dugaan","C":"Diam saja","D":"Menjelaskan bahwa itu bukan wewenang unit ini, lalu mengarahkan ke unit yang tepat beserta syarat dan lokasinya","E":"Menyuruhnya mencari sendiri"}'::jsonb,
  'D',
  'Nilai 5: ramah, jelas, dan memberi arahan konkret. Menebak jawaban berisiko menyesatkan warga.',
  NULL,
  '{"A":4,"B":3,"C":2,"D":5,"E":1}'::jsonb,
  'published'
),
(
  'web',
  842,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Jam istirahat tiba, tetapi antrean warga masih panjang. Tindakan Anda...',
  NULL,
  '{"A":"Tetap melayani antrean yang ada dan bergantian istirahat dengan rekan agar layanan tidak terhenti","B":"Melayani tanpa istirahat sama sekali","C":"Menyerahkan semuanya ke rekan","D":"Menutup loket tepat waktu","E":"Meminta warga datang lagi"}'::jsonb,
  'A',
  'Nilai 5: layanan berkesinambungan, hak istirahat tetap terjaga lewat pembagian giliran.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  843,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Seorang warga memasukkan kritik pedas ke kotak saran. Sikap Anda...',
  NULL,
  '{"A":"Menyimpannya saja","B":"Membalas dengan menegur warga","C":"Mencatat, membahasnya dengan atasan, dan menindaklanjuti perbaikan layanan","D":"Mengabaikannya karena anonim","E":"Membuangnya"}'::jsonb,
  'C',
  'Nilai 5: kritik dipakai untuk memperbaiki layanan. Mengabaikan atau membuang bernilai rendah.',
  NULL,
  '{"A":4,"B":3,"C":5,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  844,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Seorang penyandang disabilitas datang, padahal loket berada di lantai dua tanpa lift. Tindakan Anda...',
  NULL,
  '{"A":"Meminta datang lagi nanti","B":"Memindahkan layanan ke lantai satu atau menjemput berkasnya, lalu mengusulkan perbaikan akses","C":"Membantu menaiki tangga seadanya","D":"Melayani sambil mengeluh","E":"Menyuruh membawa pendamping"}'::jsonb,
  'B',
  'Nilai 5: layanan setara dan inklusif, ditambah usulan perbaikan jangka panjang.',
  NULL,
  '{"A":4,"B":5,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  845,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Seorang warga menyodorkan uang terima kasih setelah urusannya selesai. Sikap Anda...',
  NULL,
  '{"A":"Menolak dengan sopan dan menjelaskan layanan ini sesuai tarif resmi tanpa tambahan","B":"Menerima lalu membagikan ke rekan","C":"Menerima karena sudah diberikan","D":"Menolak dengan marah","E":"Menerima asal tidak ada yang melihat"}'::jsonb,
  'A',
  'Nilai 5: menolak gratifikasi dengan santun. Menerima, walau dibagi, tetap salah.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  846,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Seorang lansia datang ke loket tanpa fotokopi KTP yang menjadi syarat layanan, sementara antrean panjang. Tindakan terbaik Anda adalah...',
  NULL,
  '{"A":"Menolak berkasnya dan menyuruhnya kembali besok","B":"Menerima berkas tanpa KTP agar cepat selesai","C":"Meminta orang di belakangnya maju lebih dulu tanpa penjelasan","D":"Membantu memfotokopi atau menunjukkan tempat fotokopi terdekat, lalu melayaninya","E":"Memarahinya karena tidak menyiapkan syarat"}'::jsonb,
  'D',
  'Nilai 5: tetap melayani dengan empati dan mencari solusi tanpa melanggar persyaratan.',
  NULL,
  '{"A":4,"B":3,"C":2,"D":5,"E":1}'::jsonb,
  'published'
),
(
  'web',
  847,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Seorang warga mengeluh di media sosial bahwa layanan instansi Anda lambat. Sikap terbaik Anda adalah...',
  NULL,
  '{"A":"Mengajak warga berdebat di kolom komentar","B":"Membiarkannya karena bukan tugas Anda","C":"Menghapus komentar warga itu","D":"Membalas dengan membela diri","E":"Menanggapi dengan sopan lalu meneruskan keluhan ke unit terkait agar ditindaklanjuti"}'::jsonb,
  'E',
  'Nilai 5: menanggapi ramah dan memastikan keluhan sampai ke unit yang berwenang.',
  NULL,
  '{"A":4,"B":3,"C":2,"D":1,"E":5}'::jsonb,
  'published'
),
(
  'web',
  848,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Beberapa menit sebelum loket tutup, seorang warga dari luar kota datang membawa berkas lengkap. Tindakan terbaik Anda adalah...',
  NULL,
  '{"A":"Menitipkan berkas ke rekan tanpa penjelasan","B":"Meminta warga mengirim berkas lewat kerabat","C":"Melayaninya hingga selesai sesuai standar pelayanan","D":"Menyuruhnya kembali besok karena sudah mau tutup","E":"Meminta warga datang pagi esok dengan antrean prioritas"}'::jsonb,
  'C',
  'Nilai 5: melayani sampai tuntas karena persyaratan udah lengkap dan warga udah datang jauh.',
  NULL,
  '{"A":4,"B":3,"C":5,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  849,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Warga bertanya soal layanan yang baru berubah dan Anda belum yakin jawabannya. Anda...',
  NULL,
  '{"A":"Menyuruh warga bertanya ke tempat lain","B":"Mengatakan layanan itu tidak ada","C":"Menjawab menurut perkiraan agar cepat","D":"Meminta warga datang lagi tanpa kejelasan","E":"Mengecek ke aturan atau atasan lalu menyampaikan jawaban yang benar"}'::jsonb,
  'E',
  'Nilai 5: memastikan informasi benar sebelum disampaikan.',
  NULL,
  '{"A":4,"B":3,"C":2,"D":1,"E":5}'::jsonb,
  'published'
),
(
  'web',
  850,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Seorang penyandang disabilitas kesulitan naik ke loket di lantai atas. Anda...',
  NULL,
  '{"A":"Menyuruh menunggu di lantai atas","B":"Meminta keluarganya mengurus saja","C":"Menolak karena prosedur","D":"Memindahkan layanan ke tempat yang mudah dijangkau","E":"Meminta ia naik sendiri"}'::jsonb,
  'D',
  'Nilai 5: pelayanan inklusif dan solutif.',
  NULL,
  '{"A":4,"B":3,"C":2,"D":5,"E":1}'::jsonb,
  'published'
),
(
  'web',
  851,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Warga menawarkan amplop sebagai ucapan terima kasih setelah Anda melayani. Anda...',
  NULL,
  '{"A":"Menolak dengan sopan dan menjelaskan aturan gratifikasi","B":"Menerima lalu membaginya ke rekan","C":"Menyimpan dulu lalu melapor nanti","D":"Menerima karena tidak diminta","E":"Menolak sambil marah"}'::jsonb,
  'A',
  'Nilai 5: menolak santun dan edukatif.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  852,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Antrean panjang dan seorang warga memotong antrean dengan alasan terburu-buru. Anda...',
  NULL,
  '{"A":"Melayani agar tidak ribut","B":"Mengabaikan kejadian itu","C":"Meminta tertib dan menawarkan jalur prioritas bila memenuhi syarat","D":"Memarahinya di depan umum","E":"Menyuruhnya pulang"}'::jsonb,
  'C',
  'Nilai 5: adil dan tetap memberi solusi resmi.',
  NULL,
  '{"A":4,"B":3,"C":5,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  853,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Layanan sering terhambat karena formulir yang rumit. Anda...',
  NULL,
  '{"A":"Mengubah formulir sendiri tanpa izin","B":"Mengusulkan penyederhanaan formulir kepada atasan beserta data keluhan","C":"Meminta warga memahami saja","D":"Mengeluh ke rekan saja","E":"Membiarkan karena sudah lama begitu"}'::jsonb,
  'B',
  'Nilai 5: inisiatif perbaikan melalui jalur yang benar.',
  NULL,
  '{"A":4,"B":5,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  854,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Dua rekan dari unit berbeda berselisih soal pembagian data sehingga proyek bersama Anda terhambat. Tindakan Anda...',
  NULL,
  '{"A":"Mempertemukan keduanya, memfasilitasi diskusi, dan menyepakati alur data bersama","B":"Berbicara dengan masing-masing lalu mengusulkan alur data bersama kepada atasan","C":"Menyampaikan perselisihan itu kepada atasan dan meminta keputusan tentang pembagian data","D":"Membuat salinan data sendiri agar bagian proyek Anda tetap berjalan tepat waktu","E":"Menunggu perselisihan selesai sambil mengerjakan bagian yang tidak memerlukan data"}'::jsonb,
  'A',
  'Nilai 5: inisiatif menjembatani dan menjaga kerja sama.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  855,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda mewakili instansi pada forum koordinasi dengan instansi lain yang belum Anda kenal. Persiapan terbaik adalah...',
  NULL,
  '{"A":"Mempelajari agenda, menghubungi perwakilan instansi lain lebih dulu untuk berkenalan dan menyamakan harapan","B":"Mempelajari agenda dan berkenalan dengan perwakilan instansi lain pada sesi istirahat forum","C":"Mempelajari agenda lalu menyampaikan usulan instansi Anda tanpa membahasnya dengan pihak lain","D":"Meminta atasan menunjuk pejabat lain yang sudah mengenal instansi tersebut untuk hadir","E":"Hadir tepat waktu dan menyimak jalannya forum sambil mencatat hal-hal penting saja"}'::jsonb,
  'A',
  'Nilai 5: membangun jejaring secara proaktif.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  856,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Rekan senior enggan membagikan templat laporan yang Anda perlukan. Sikap Anda...',
  NULL,
  '{"A":"Menjelaskan kebutuhan, menawarkan bantuan balik, dan berterima kasih; bila tetap sulit, berkonsultasi dengan atasan","B":"Menjelaskan kebutuhan dan meminta ulang dengan sopan, lalu berkonsultasi dengan atasan bila tetap sulit","C":"Meminta ulang dengan sopan di lain waktu tanpa melibatkan atasan dalam urusan itu","D":"Membuat templat sendiri tanpa berkomunikasi lebih dulu dengan rekan senior itu","E":"Menyampaikan keberatan atas sikap rekan senior itu kepada rekan sekantor yang lain"}'::jsonb,
  'A',
  'Nilai 5: komunikasi baik dan eskalasi hanya bila perlu.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  857,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Mitra eksternal mengeluhkan kesalahan unit lain kepada Anda. Anda...',
  NULL,
  '{"A":"Mencatat keluhan, mengoordinasikan ke unit terkait, dan mengabari mitra tindak lanjutnya","B":"Mencatat keluhan dan mengoordinasikan ke unit terkait tanpa mengabari mitra tindak lanjutnya","C":"Menyarankan mitra menghubungi unit terkait dan memberikan kontak yang bisa dihubungi","D":"Meminta mitra bersabar sambil menunggu unit terkait menyadari kesalahannya sendiri","E":"Mengabaikan keluhan karena kesalahan itu bukan bagian dari tugas unit Anda"}'::jsonb,
  'A',
  'Nilai 5: kolaboratif dan menjaga kepercayaan mitra.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  858,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Rekan lintas unit sering terlambat memberi data sehingga pekerjaan Anda terhambat. Anda...',
  NULL,
  '{"A":"Berbicara langsung, menyepakati tenggat tertulis, dan melibatkan atasan bila berulang","B":"Berbicara langsung dan menyepakati tenggat tertulis tanpa melibatkan atasan bila terus berulang","C":"Melapor ke atasan tanpa berbicara lebih dulu dengan rekan tersebut","D":"Mengerjakan data itu sendiri tanpa memberi tahu rekan maupun atasan","E":"Mengeluh kepada rekan lain tentang kebiasaan terlambat rekan lintas unit tersebut"}'::jsonb,
  'A',
  'Nilai 5: komunikasi langsung lalu eskalasi bila perlu.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  859,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Mitra lintas instansi meminta mengubah jadwal yang sudah disepakati tanpa alasan jelas. Anda...',
  NULL,
  '{"A":"Menanyakan alasannya, mencari alternatif jadwal bersama, dan menyepakatinya secara tertulis","B":"Menanyakan alasannya dan mencari alternatif jadwal bersama, lalu menyepakatinya secara lisan","C":"Menyetujui perubahan jadwal setelah berkonsultasi dengan atasan tanpa menanyakan alasan kepada mitra","D":"Meminta atasan menjawab permintaan itu karena jadwal tersebut disepakati atas nama instansi","E":"Menolak perubahan karena jadwal sudah disepakati dan tidak ada alasan yang jelas"}'::jsonb,
  'A',
  'Nilai 5: komunikatif dan terdokumentasi.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  860,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda mendengar tim lain akan mengajukan ide yang mirip dengan ide Anda. Anda...',
  NULL,
  '{"A":"Mengajak berdiskusi menggabungkan ide dan membagi peran","B":"Mengajak berdiskusi untuk membandingkan ide, lalu mengusulkan kepada atasan ide yang lebih unggul","C":"Meminta atasan menilai ide mana yang lebih layak sebelum kedua tim mengajukannya","D":"Mengurungkan ide Anda agar tidak menimbulkan persaingan dengan tim lain","E":"Mengajukan ide lebih dulu agar dinilai sebagai pencetus sebelum tim lain mengajukannya"}'::jsonb,
  'A',
  'Nilai 5: kolaboratif.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  861,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Rekan baru bertanya terus-menerus sehingga mengganggu pekerjaan Anda. Anda...',
  NULL,
  '{"A":"Menjadwalkan waktu bimbingan dan memberikan materi rujukan","B":"Menjadwalkan waktu bimbingan tetapi meminta rekan baru mencari rujukan sendiri lebih dulu","C":"Menjawab singkat setiap pertanyaan agar pekerjaan sendiri tetap dapat diselesaikan tepat waktu","D":"Menyarankan rekan baru bertanya kepada atasan karena membimbing bukan tugas Anda","E":"Melapor ke atasan agar rekan baru diberi arahan supaya tidak sering mengganggu pekerjaan"}'::jsonb,
  'A',
  'Nilai 5: suportif dan terstruktur.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  862,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Atasan memuji hasil kerja tim hanya atas nama satu rekan. Anda...',
  NULL,
  '{"A":"Menyampaikan kontribusi tim kepada atasan secara santun dengan bukti kerja","B":"Menyampaikan kontribusi tim kepada rekan yang dipuji agar ia yang meluruskannya kepada atasan","C":"Menyampaikan kontribusi tim kepada atasan di rapat tanpa menyiapkan bukti kerja","D":"Diam karena atasan pasti mengetahui siapa saja yang bekerja dalam tim itu","E":"Mengurangi kerja sama dengan rekan yang dipuji agar kontribusi masing-masing terlihat jelas"}'::jsonb,
  'A',
  'Nilai 5: adil dan konstruktif.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  863,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Rekan lintas unit meminta bantuan saat Anda sedang sibuk. Anda...',
  NULL,
  '{"A":"Menolak karena sibuk dan tidak peduli apa pun alasannya","B":"Menjadwalkan bantuan pada waktu yang jelas","C":"Membantu seadanya tanpa memikirkan hasil pekerjaan sendiri nanti","D":"Menyuruh orang lain tanpa memberi kabar kepada peminta bantuan","E":"Mengabaikan sampai ia bertanya kembali dua kali berturut-turut"}'::jsonb,
  'B',
  'Nilai 5: realistis dan kooperatif.',
  NULL,
  '{"A":2,"B":5,"C":3,"D":1,"E":1}'::jsonb,
  'published'
),
(
  'web',
  864,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda butuh data dari unit lain yang tidak merespons surel. Anda...',
  NULL,
  '{"A":"Menelepon atau menemui langsung dan menjelaskan kebutuhan","B":"Menunggu sampai mereka membalas surel setelah beberapa hari kerja berlalu","C":"Mengirim surel ulang berkali-kali dengan nada marah kepada seluruh tim mereka","D":"Mengerjakan dengan asumsi sendiri tanpa data resmi agar tidak terhambat","E":"Mengeluh ke atasan tanpa mencoba menghubungi lagi dengan cara lain"}'::jsonb,
  'A',
  'Nilai 5: inisiatif komunikasi langsung.',
  NULL,
  '{"A":5,"B":2,"C":1,"D":2,"E":3}'::jsonb,
  'published'
),
(
  'web',
  865,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda memimpin tim kecil; dua anggota berselisih soal pembagian tugas. Anda...',
  NULL,
  '{"A":"Mendengar keduanya lalu memfasilitasi pembagian menurut keahlian dan beban kerja","B":"Mendengar keduanya lalu menetapkan pembagian sendiri dan menjelaskan alasannya","C":"Menetapkan pembagian sendiri tanpa mendengar keduanya agar perselisihan segera selesai","D":"Meminta keduanya menyelesaikan sendiri dan melapor bila belum ada kesepakatan","E":"Mendukung pendapat anggota yang lebih senior agar pembagian tugas cepat disepakati"}'::jsonb,
  'A',
  'Nilai 5: partisipatif dan adil.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  866,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Instansi lain meminta data bersama, sebagian bersifat rahasia. Anda...',
  NULL,
  '{"A":"Memilah data yang boleh dibagikan dan menyepakati mekanisme aman","B":"Memilah data yang boleh dibagikan dan mengirimkannya lewat surel biasa agar cepat","C":"Meminta persetujuan atasan lebih dulu tanpa memilah data yang akan dibagikan","D":"Membagikan lewat grup pesan agar proyek tidak terhambat oleh prosedur permintaan","E":"Menolak berbagi data apa pun karena sebagian datanya bersifat rahasia"}'::jsonb,
  'A',
  'Nilai 5: kolaboratif dan menjaga kerahasiaan.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  867,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Rekan menyelesaikan bagian Anda tanpa diminta karena Anda terlambat. Anda...',
  NULL,
  '{"A":"Berterima kasih, menjelaskan kendala, dan menyusun jadwal agar tidak terulang","B":"Berterima kasih dan menjelaskan kendala tanpa menyusun jadwal agar tidak terulang","C":"Berterima kasih saja lalu melanjutkan tugas berikutnya seperti biasa","D":"Menyebut hasilnya sebagai kerja bersama tanpa menjelaskan keterlambatan Anda","E":"Merasa tersinggung karena rekan mengambil bagian tugas Anda tanpa bertanya"}'::jsonb,
  'A',
  'Nilai 5: bertanggung jawab dan memperbaiki.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  868,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Mitra swasta mengajak makan malam untuk membahas kerja sama. Anda...',
  NULL,
  '{"A":"Menyarankan pertemuan resmi di kantor dan melaporkan agenda ke atasan","B":"Datang bersama rekan dan melaporkan pertemuan itu ke atasan sesudahnya","C":"Datang bersama rekan tanpa melapor karena pertemuan itu membahas kerja sama","D":"Datang dan hanya membahas hal umum tanpa menyinggung pekerjaan","E":"Datang sendiri dan membiarkan mitra membayar karena sekadar jamuan makan"}'::jsonb,
  'A',
  'Nilai 5: menjaga jarak profesional dan transparan.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  869,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Rekan lintas unit yang dulu pernah menghambat Anda kini meminta bantuan mendesak. Anda...',
  NULL,
  '{"A":"Membantu sesuai kebutuhan kerja dan memisahkan urusan pribadi","B":"Membantu sesuai kebutuhan kerja sambil mengingatkan sikapnya dahulu agar tidak terulang","C":"Membantu sebagian saja dan meminta rekan itu melengkapi sisanya sendiri","D":"Menyarankan rekan itu meminta bantuan unit lain yang lebih siap membantunya","E":"Menolak karena pernah dihambat dan bantuan tidak termasuk tugas Anda"}'::jsonb,
  'A',
  'Nilai 5: profesional.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  870,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Rapat lintas unit berlarut karena dua unit bertahan pada pendapat masing-masing. Anda...',
  NULL,
  '{"A":"Merangkum titik temu dan perbedaan lalu mengusulkan kompromi berbasis tujuan bersama","B":"Merangkum titik temu dan perbedaan lalu meminta atasan memutuskan pilihan terbaik","C":"Menyarankan rapat dihentikan dan dilanjutkan setelah masing-masing unit berkonsultasi","D":"Mendukung unit yang pendapatnya lebih sesuai dengan unit Anda agar cepat selesai","E":"Membiarkan perdebatan berlanjut sampai salah satu unit mengalah dengan sendirinya"}'::jsonb,
  'A',
  'Nilai 5: memfasilitasi solusi bersama.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  871,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Dua mitra proyek menuntut hal yang saling bertentangan. Anda...',
  NULL,
  '{"A":"Mempertemukan keduanya dan mencari kesepakatan berbasis tujuan proyek","B":"Mempertemukan keduanya lalu meminta atasan memutuskan tuntutan yang akan dipenuhi","C":"Menemui kedua mitra secara terpisah dan menyampaikan hasil pembicaraan kepada masing-masing","D":"Memenuhi tuntutan mitra yang kontraknya lebih besar agar proyek tidak terganggu","E":"Menunda keputusan sampai kedua mitra menyadari tuntutan mereka bertentangan"}'::jsonb,
  'A',
  'Nilai 5: memfasilitasi solusi bersama.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  872,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anggota tim baru tertinggal. Tenggat dekat. Anda...',
  NULL,
  '{"A":"Membimbingnya sambil membagi tugas sesuai kemampuan","B":"Membimbingnya sambil mengambil alih bagian yang sulit tanpa membicarakannya dengan atasan","C":"Membagi tugas sesuai kemampuan tanpa membimbingnya agar tenggat tetap terkejar","D":"Meminta atasan menambah anggota tim agar beban kerja terbagi lebih merata","E":"Mengerjakan bagiannya sendiri tanpa memberi tahu siapa pun agar tenggat terpenuhi"}'::jsonb,
  'A',
  'Nilai 5: membimbing dan menjaga target.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  873,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Proyek lintas unit macet karena dua kepala unit berbeda prioritas dan Anda berada di tengah. Anda...',
  NULL,
  '{"A":"Memfasilitasi pertemuan dengan data dampak, mengusulkan prioritas bersama, dan meminta keputusan atasan","B":"Memfasilitasi pertemuan dan mengusulkan prioritas bersama tanpa data dampak","C":"Meminta atasan memutuskan prioritas tanpa memfasilitasi pertemuan kedua kepala unit","D":"Mengerjakan bagian dari kepala unit yang atasannya lebih senior lebih dulu","E":"Menunggu kedua kepala unit menyepakati prioritas tanpa melakukan apa pun"}'::jsonb,
  'A',
  'Nilai 5: memfasilitasi kolaborasi berbasis data.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  874,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Rekan satu tim mengaku hasil tim sebagai karyanya di depan pimpinan. Anda...',
  NULL,
  '{"A":"Menemuinya lebih dulu, lalu mendokumentasikan kontribusi tim dan menyampaikannya faktual kepada pimpinan","B":"Menemuinya lebih dulu dan memintanya meluruskan sendiri tanpa mendokumentasikan kontribusi tim","C":"Menyampaikan kontribusi tim kepada pimpinan tanpa menemui rekan itu terlebih dahulu","D":"Mengungkapkan kekecewaan kepada rekan satu tim lain agar rekan itu mendapat tekanan","E":"Membiarkan karena pimpinan tentu mengetahui siapa saja yang bekerja dalam tim itu"}'::jsonb,
  'A',
  'Nilai 5: konfrontasi santun dan bukti faktual.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  875,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda menyusun laporan bersama dengan unit lain, tetapi data dari unit itu terlambat dua hari dari kesepakatan dan tenggat laporan tinggal tiga hari. Sikap Anda....',
  NULL,
  '{"A":"Memakai data tahun lalu sebagai pengganti sementara tanpa memberi tahu siapa pun agar laporan tetap tepat waktu, agar tidak menambah beban kerja Anda dan rekan satu unit","B":"Menghubungi pejabat penghubung unit itu untuk menanyakan kendala, lalu melaporkan kemungkinan keterlambatan laporan kepada atasan Anda","C":"Menghubungi pejabat penghubung unit itu untuk menanyakan kendala dan menyepakati tanggal baru, sambil menyusun bagian lain agar tenggat terkejar","D":"Mengirim pengingat tertulis kepada unit itu dan menunggu sampai data diterima sesuai tanggal yang dijanjikan ulang","E":"Melaporkan kepada atasan bahwa keterlambatan unit itu menjadi penyebab bila laporan akhir tidak selesai tepat waktu"}'::jsonb,
  'C',
  'Nilai 5: komunikasi langsung, kesepakatan baru, dan antisipasi tenggat. Data lama tanpa pemberitahuan menyesatkan.',
  NULL,
  '{"A":1,"B":4,"C":5,"D":3,"E":2}'::jsonb,
  'published'
),
(
  'web',
  876,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Dalam rapat koordinasi lintas instansi, dua perwakilan berdebat keras tentang pembagian tugas dan rapat nyaris buntu. Anda peserta dari instansi ketiga. Sikap Anda....',
  NULL,
  '{"A":"Mengusulkan jeda singkat, lalu meminta pimpinan rapat merangkum titik temu yang sudah disepakati kedua belah pihak, lalu menunggu arahan atasan","B":"Mendukung perwakilan yang usulannya paling menguntungkan instansi Anda dalam pembagian tugas tersebut","C":"Meminta pimpinan rapat mengambil keputusan sepihak agar rapat segera dapat dilanjutkan ke agenda berikutnya","D":"Mengusulkan jeda singkat, lalu merangkum titik temu kedua pihak dan mengusulkan pembagian tugas sesuai kewenangan tiap instansi","E":"Mencatat jalannya perdebatan untuk dilaporkan kepada pimpinan instansi Anda setelah rapat koordinasi selesai"}'::jsonb,
  'D',
  'Nilai 5: menjembatani dengan dasar kewenangan, bukan memihak.',
  NULL,
  '{"A":4,"B":1,"C":3,"D":5,"E":2}'::jsonb,
  'published'
),
(
  'web',
  877,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Rekan dari instansi mitra meminta Anda membagikan data internal yang belum dipublikasikan untuk kajian bersama. Belum ada perjanjian kerja sama resmi. Sikap Anda....',
  NULL,
  '{"A":"Menjelaskan bahwa data internal memerlukan izin atasan, mengajukan permintaan resmi, dan menawarkan data publik yang dapat dibagikan lebih dahulu","B":"Menjelaskan bahwa data internal memerlukan izin atasan, lalu mengajukan permintaan resmi tersebut kepada atasan Anda, lalu menunggu arahan atasan","C":"Menjelaskan bahwa data belum dapat dibagikan dan menyarankan instansi mitra mengirim surat resmi terlebih dahulu, lalu menyerahkan kelanjutannya kepada pihak lain","D":"Membagikan seluruh data secara pribadi agar hubungan kerja sama dengan instansi mitra tetap terjaga baik, agar tidak menambah beban kerja","E":"Membagikan sebagian data yang dianggap tidak sensitif tanpa menunggu izin dari atasan Anda, sambil berharap masalahnya mereda sendiri"}'::jsonb,
  'A',
  'Nilai 5: menjaga data sesuai prosedur sambil tetap membantu kerja sama.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":1,"E":2}'::jsonb,
  'published'
),
(
  'web',
  878,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda baru bergabung di tim lintas bidang. Anda tahu seorang anggota memiliki keahlian yang Anda perlukan, tetapi ia tampak sibuk dan jarang membalas pesan. Sikap Anda....',
  NULL,
  '{"A":"Menghubungi anggota itu untuk meminta waktu singkat sesuai jadwalnya dengan pertanyaan yang sudah disiapkan","B":"Mencari jawaban sendiri dari internet tanpa menghubungi anggota tim yang memiliki keahlian itu","C":"Mendatangi anggota itu berulang kali sampai ia bersedia meluangkan waktu untuk membantu Anda, agar tidak menambah beban kerja Anda dan rekan satu unit","D":"Meminta atasan memperkenalkan Anda kepada anggota itu agar komunikasi menjadi lebih mudah","E":"Menghubungi anggota itu untuk meminta waktu singkat sesuai jadwalnya, menyiapkan pertanyaan ringkas, dan menawarkan bantuan balik"}'::jsonb,
  'E',
  'Nilai 5: menghargai waktu rekan dan membangun hubungan timbal balik.',
  NULL,
  '{"A":4,"B":2,"C":1,"D":3,"E":5}'::jsonb,
  'published'
),
(
  'web',
  879,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Dua anggota tim Anda tidak saling berbicara setelah berselisih soal pembagian kredit atas sebuah proyek, sehingga koordinasi tersendat. Anda bukan atasan mereka. Sikap Anda....',
  NULL,
  '{"A":"Menjadi perantara pesan di antara keduanya agar koordinasi tetap berjalan seperti biasa, sambil berharap masalahnya mereda sendiri","B":"Melaporkan kondisi itu kepada atasan dan menawarkan diri membantu bila diminta oleh beliau","C":"Berbicara dengan masing-masing secara terpisah dan mengusulkan pertemuan bersama untuk membahas perselisihan itu, lalu menunggu arahan atasan","D":"Menunggu sampai keduanya berdamai sendiri karena perselisihan itu urusan pribadi mereka berdua, agar tidak menambah beban kerja","E":"Berbicara dengan masing-masing secara terpisah, lalu memfasilitasi pertemuan bersama untuk menyepakati cara pencantuman peran tiap orang"}'::jsonb,
  'E',
  'Nilai 5: memfasilitasi penyelesaian yang konkret.',
  NULL,
  '{"A":2,"B":3,"C":4,"D":1,"E":5}'::jsonb,
  'published'
),
(
  'web',
  880,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Instansi Anda hendak bermitra dengan lembaga swadaya masyarakat untuk program literasi. Anda diminta menyiapkan pertemuan awal. Sikap Anda....',
  NULL,
  '{"A":"Meminta lembaga itu mengirim proposal terlebih dahulu tanpa menyiapkan agenda dari pihak Anda, sambil berharap masalahnya mereda sendiri","B":"Mempelajari profil dan rekam jejak lembaga itu, menyiapkan agenda dan tujuan bersama, lalu mengonfirmasi kewenangan kerja sama kepada atasan","C":"Mengirim undangan pertemuan dan menyiapkan ruang serta konsumsi untuk para peserta pertemuan awal, lalu menyerahkan kelanjutannya kepada pihak lain","D":"Mempelajari profil dan rekam jejak lembaga itu serta menyiapkan agenda dan tujuan bersama untuk pertemuan, lalu menunggu arahan atasan","E":"Menyepakati rencana kerja sama secara lisan dengan lembaga itu agar prosesnya lebih cepat, agar tidak menambah beban kerja"}'::jsonb,
  'B',
  'Nilai 5: persiapan matang dan kejelasan kewenangan.',
  NULL,
  '{"A":2,"B":5,"C":3,"D":4,"E":1}'::jsonb,
  'published'
),
(
  'web',
  881,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Dua unit di kantor Anda berebut memakai satu sistem data bersama sehingga laporan tertunda. Anda tidak berwenang atas keduanya. Tindakan Anda....',
  NULL,
  '{"A":"Mempertemukan perwakilan kedua unit, menyepakati jadwal penggunaan, dan melaporkan hasilnya kepada atasan","B":"Meminta atasan masing-masing unit menyelesaikan perselisihan","C":"Menyusun salinan data sendiri agar laporan Anda tetap selesai","D":"Menunggu sampai kedua unit berdamai","E":"Mendukung unit yang menurut Anda lebih membutuhkan sistem itu"}'::jsonb,
  'A',
  'Nilai 5: menjembatani dan menjaga kepentingan bersama.',
  NULL,
  '{"A":5,"B":3,"C":2,"D":1,"E":2}'::jsonb,
  'published'
),
(
  'web',
  882,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda diminta mewakili instansi pada koordinasi lintas sektor dengan peserta yang belum Anda kenal. Persiapan terbaik....',
  NULL,
  '{"A":"Mempelajari agenda, menghubungi beberapa peserta lebih dulu, dan menyiapkan bahan yang mudah dipakai bersama","B":"Mempelajari agenda lalu hadir tepat waktu","C":"Hadir dan berkenalan saat rapat dimulai","D":"Meminta atasan hadir karena peserta lebih kenal pimpinan","E":"Hadir sekadar mendengarkan lalu melapor"}'::jsonb,
  'A',
  'Nilai 5: persiapan matang dan membangun jaringan lebih awal.',
  NULL,
  '{"A":5,"B":3,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  883,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Rekan di instansi mitra terlambat mengirim data yang Anda butuhkan untuk laporan tenggat besok. Sikap Anda....',
  NULL,
  '{"A":"Menghubunginya, menanyakan kendala, menawarkan bantuan, dan menyiapkan alternatif bila data belum tiba","B":"Menghubunginya lagi dan meminta data dikirim secepatnya","C":"Melapor ke atasan agar atasan mitra menegurnya","D":"Menunggu data sambil mengerjakan bagian lain","E":"Memakai data lama agar laporan tetap selesai"}'::jsonb,
  'A',
  'Nilai 5: komunikasi baik, empati, dan antisipasi.',
  NULL,
  '{"A":5,"B":3,"C":2,"D":3,"E":1}'::jsonb,
  'published'
),
(
  'web',
  884,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda ditegur karena pernah mengkritik kebijakan rekan antarunit di rapat. Ia tampak canggung sejak itu. Tindakan Anda....',
  NULL,
  '{"A":"Menemui rekan secara pribadi, menjelaskan niat kritik Anda, dan menawarkan cara bekerja sama yang lebih baik","B":"Menunggu sampai suasana mencair dengan sendirinya","C":"Meminta rekan lain menyampaikan permohonan maaf Anda","D":"Menghindari rapat bersama sampai situasi tenang","E":"Membiarkan karena kritik Anda memang benar"}'::jsonb,
  'A',
  'Nilai 5: menjaga hubungan kerja tanpa menarik kritik yang benar.',
  NULL,
  '{"A":5,"B":3,"C":2,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  885,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Sebuah komunitas mitra menawarkan kerja sama pelatihan gratis untuk pegawai, tetapi belum ada dasar kerja sama resmi. Sikap Anda....',
  NULL,
  '{"A":"Menyampaikan tawaran ke pimpinan dan mengusulkan penyusunan nota kesepahaman sebelum pelatihan berjalan","B":"Menerima tawaran dan memberi tahu pimpinan setelah jadwal ditetapkan","C":"Menolak tawaran karena belum ada dasar hukum","D":"Mengundang pegawai secara pribadi tanpa membawa nama instansi","E":"Menunda menjawab tanpa melaporkan kepada siapa pun"}'::jsonb,
  'A',
  'Nilai 5: memanfaatkan peluang secara tertib.',
  NULL,
  '{"A":5,"B":2,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  886,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Rapat koordinasi lintas instansi buntu karena dua pihak bersikeras dengan pendapatnya. Tindakan Anda....',
  NULL,
  '{"A":"Meringkas poin yang sudah disepakati dan perbedaannya, lalu mengusulkan opsi gabungan untuk dibahas bersama","B":"Mengusulkan voting agar rapat cepat selesai","C":"Mengusulkan rapat ditunda sampai atasan masing-masing hadir","D":"Mendukung pendapat pihak yang lebih berpengaruh","E":"Diam dan menunggu kesepakatan muncul"}'::jsonb,
  'A',
  'Nilai 5: memfasilitasi konsensus.',
  NULL,
  '{"A":5,"B":3,"C":3,"D":1,"E":2}'::jsonb,
  'published'
),
(
  'web',
  887,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda baru pindah unit dan rekan lama kurang terbuka berbagi informasi penting. Sikap Anda....',
  NULL,
  '{"A":"Meminta waktu berbincang, menyampaikan kebutuhan Anda, dan menawarkan membantu pekerjaannya","B":"Meminta atasan menegaskan kewajiban berbagi informasi","C":"Mencari informasi sendiri dari dokumen kantor","D":"Menunggu mereka terbuka seiring waktu","E":"Mengeluh kepada rekan dari unit lama"}'::jsonb,
  'A',
  'Nilai 5: membangun kepercayaan dua arah.',
  NULL,
  '{"A":5,"B":2,"C":3,"D":3,"E":1}'::jsonb,
  'published'
),
(
  'web',
  888,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda dan rekan berbeda pendapat soal pembagian tugas hingga pekerjaan tertunda. Tindakan paling tepat adalah...',
  NULL,
  '{"A":"Mengajak rekan berdiskusi langsung untuk mencari titik temu, dan melibatkan atasan bila belum selesai","B":"Melapor ke atasan agar rekan ditegur","C":"Mengerjakan semuanya sendiri","D":"Membicarakan rekan dengan teman lain","E":"Mengabaikan perbedaan itu"}'::jsonb,
  'A',
  'Nilai 5: inisiatif berkomunikasi dan mencari solusi bersama dulu, eskalasi ke atasan hanya bila perlu.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  889,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Unit lain memerlukan data unit Anda untuk laporan gabungan. Sikap Anda...',
  NULL,
  '{"A":"Menolak karena bukan tugas unit Anda","B":"Menunda sampai ditagih berkali-kali","C":"Memberikan data tanpa memeriksa","D":"Memberikan sebagian saja","E":"Memberikan data sesuai prosedur, tepat waktu, dan mengonfirmasi bahwa data sudah diterima"}'::jsonb,
  'E',
  'Nilai 5: kooperatif, tepat prosedur, dan memastikan komunikasi tuntas.',
  NULL,
  '{"A":4,"B":3,"C":2,"D":1,"E":5}'::jsonb,
  'published'
),
(
  'web',
  890,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Rekan unit lain lambat membalas permintaan Anda padahal tenggat dekat. Tindakan Anda...',
  NULL,
  '{"A":"Mengeluh ke rekan lain","B":"Mengerjakan sendiri tanpa memberi tahu","C":"Menunggu saja","D":"Menghubungi ulang dengan permintaan jelas dan tenggatnya, lalu melibatkan atasan bila tetap buntu","E":"Melaporkan ke atasan tanpa menghubungi lebih dulu"}'::jsonb,
  'D',
  'Nilai 5: komunikasi langsung dulu, eskalasi belakangan bila perlu.',
  NULL,
  '{"A":4,"B":3,"C":2,"D":5,"E":1}'::jsonb,
  'published'
),
(
  'web',
  891,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda mewakili unit di rapat lintas instansi tetapi belum menguasai bahannya. Tindakan Anda...',
  NULL,
  '{"A":"Mempelajari bahan, berkonsultasi dengan atasan atau rekan yang paham, lalu hadir dengan catatan","B":"Hadir dan diam saja","C":"Menolak mewakili","D":"Mencari pengganti tanpa izin","E":"Menjawab sembarang agar terlihat paham"}'::jsonb,
  'A',
  'Nilai 5: persiapan matang demi kepentingan unit.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  892,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Mitra eksternal meminta informasi internal yang bersifat rahasia. Sikap Anda...',
  NULL,
  '{"A":"Menolak dengan sopan, menjelaskan batasan, dan menawarkan informasi publik yang boleh dibagikan","B":"Memberikan karena mitra dekat","C":"Memberikan setengahnya","D":"Menolak tanpa penjelasan","E":"Memberikan lewat pesan pribadi"}'::jsonb,
  'A',
  'Nilai 5: menjaga rahasia jabatan tanpa memutus hubungan baik.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  893,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda berbeda pendapat dengan rekan soal pembagian tugas. Tindakan Anda...',
  NULL,
  '{"A":"Berdiskusi mencari titik temu demi tujuan bersama, dan meminta arahan atasan bila buntu","B":"Menyerah tanpa bicara","C":"Mendiamkan rekan","D":"Melapor ke atasan sebelum bicara dengan rekan","E":"Mengikuti pendapat sendiri"}'::jsonb,
  'A',
  'Nilai 5: dialog dulu, atasan sebagai penengah bila perlu.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  894,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda butuh data dari unit lain untuk laporan, tetapi stafnya lambat merespons. Tindakan terbaik Anda adalah...',
  NULL,
  '{"A":"Menghubungi stafnya lagi dengan sopan, menjelaskan tenggat, dan bila perlu melibatkan atasan","B":"Membuat data sendiri dari perkiraan","C":"Mengadu ke atasan unit itu tanpa menghubungi stafnya","D":"Melaporkan bahwa unit itu tidak kooperatif","E":"Menunggu tanpa berbuat apa pun"}'::jsonb,
  'A',
  'Nilai 5: komunikasi langsung dan santun lebih dulu, eskalasi hanya bila perlu.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  895,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Dalam rapat, usulan Anda ditolak mayoritas rekan. Sikap terbaik Anda adalah...',
  NULL,
  '{"A":"Menerima keputusan, mendukung pelaksanaannya, dan membuka diskusi lagi bila ada data baru","B":"Menyalahkan rekan yang tidak setuju","C":"Meminta atasan membatalkan keputusan","D":"Tetap menjalankan usulan sendiri","E":"Diam dan tidak ikut melaksanakan keputusan"}'::jsonb,
  'A',
  'Nilai 5: menghargai keputusan bersama dan tetap kolaboratif.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  896,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Rekan dari instansi mitra meminta data internal yang bukan wewenang Anda. Tindakan terbaik Anda adalah...',
  NULL,
  '{"A":"Memberikan sebagian data dengan syarat dirahasiakan","B":"Memberikannya karena sesama pegawai","C":"Menolak tanpa memberi alternatif","D":"Mengarahkan ke pejabat berwenang dan menjelaskan prosedur permintaan data resmi","E":"Mengabaikan permintaan itu"}'::jsonb,
  'D',
  'Nilai 5: menjaga kerahasiaan data dan tetap membantu lewat jalur yang benar.',
  NULL,
  '{"A":4,"B":3,"C":2,"D":5,"E":1}'::jsonb,
  'published'
),
(
  'web',
  897,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda perlu bekerja sama dengan instansi lain untuk program bersama. Langkah awal terbaik...',
  NULL,
  '{"A":"Menunggu mereka menghubungi lebih dulu","B":"Meminta atasan saja yang berhubungan","C":"Langsung membagi tugas lewat surat tanpa komunikasi","D":"Menghubungi perwakilan instansi itu, menyamakan tujuan, lalu menyepakati peran","E":"Mengerjakan sendiri agar tidak merepotkan"}'::jsonb,
  'D',
  'Nilai 5: komunikasi aktif dan kesepakatan peran.',
  NULL,
  '{"A":4,"B":3,"C":2,"D":5,"E":1}'::jsonb,
  'published'
),
(
  'web',
  898,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Rekan unit lain meminta informasi yang tidak rahasia. Anda...',
  NULL,
  '{"A":"Memberi jika dibalas imbalan","B":"Menunda sampai ia menagih berkali-kali","C":"Memberikannya dengan cepat dan mencatat permintaannya","D":"Menolak karena bukan tugas Anda","E":"Memberi sebagian data tanpa menjelaskan batasannya"}'::jsonb,
  'C',
  'Nilai 5: kooperatif dan tertib administrasi.',
  NULL,
  '{"A":4,"B":3,"C":5,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  899,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anggota tim selalu terlambat menyerahkan bagiannya. Anda...',
  NULL,
  '{"A":"Mengucilkannya dari tim","B":"Berbicara dengan dia untuk mencari kendala dan menyepakati tenggat baru","C":"Membiarkan agar ia belajar sendiri","D":"Melaporkan ke atasan tanpa bicara dulu","E":"Mengerjakan bagiannya diam-diam setiap kali"}'::jsonb,
  'B',
  'Nilai 5: menyelesaikan akar masalah secara langsung.',
  NULL,
  '{"A":4,"B":5,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  900,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda baru pindah ke unit baru dan belum mengenal siapa pun. Anda...',
  NULL,
  '{"A":"Memperkenalkan diri, bertanya, dan aktif membantu pekerjaan tim","B":"Hanya bergaul dengan rekan satu daerah","C":"Menunggu diajak bicara","D":"Bekerja sendiri agar tidak mengganggu","E":"Mengeluh ke atasan soal suasana"}'::jsonb,
  'A',
  'Nilai 5: proaktif membangun relasi kerja.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  901,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Dua rekan berebut kredit hasil kerja tim di depan atasan. Anda...',
  NULL,
  '{"A":"Menyebarkan kejadian itu di grup","B":"Memihak rekan yang lebih dekat","C":"Mengklaim bagian terbesar untuk diri sendiri","D":"Diam karena bukan urusan Anda","E":"Menjelaskan kontribusi tiap anggota secara objektif"}'::jsonb,
  'E',
  'Nilai 5: objektif dan menghargai tim.',
  NULL,
  '{"A":4,"B":3,"C":2,"D":1,"E":5}'::jsonb,
  'published'
),
(
  'web',
  902,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Seorang rekan yang berasal dari daerah lain sering dikucilkan karena dialeknya. Sikap Anda...',
  NULL,
  '{"A":"Mengajaknya bergabung makan siang dan kerja kelompok, serta mengingatkan rekan lain untuk menghargai perbedaan","B":"Mengajaknya bergabung dalam kerja kelompok dan mengingatkan rekan lain secara umum di rapat unit","C":"Menegur rekan yang mengucilkan dan melaporkannya kepada atasan tanpa mendekati rekan yang dikucilkan","D":"Menyarankan rekan itu menyesuaikan logat bicaranya agar lebih mudah diterima oleh kelompok","E":"Membiarkan karena hubungan antarrekan bukan bagian dari tugas pekerjaan Anda"}'::jsonb,
  'A',
  'Nilai 5: inklusif dan aktif merangkul.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  903,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Saat sosialisasi di desa, tokoh adat melakukan prosesi pembukaan yang membuat jadwal molor. Sikap Anda...',
  NULL,
  '{"A":"Menghormati prosesi dan menyusun ulang agenda bersama panitia agar tujuan acara tetap tercapai","B":"Menghormati prosesi dan meminta panitia memangkas materi agar acara selesai sesuai jadwal","C":"Mengikuti prosesi tanpa memberi masukan dan menyerahkan perubahan agenda kepada panitia","D":"Meminta tokoh adat mempersingkat prosesi karena jadwal sosialisasi sudah ditetapkan instansi","E":"Memulai materi di sela prosesi agar waktu sosialisasi tidak berkurang sama sekali"}'::jsonb,
  'A',
  'Nilai 5: menghargai adat sambil menjaga tujuan acara.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  904,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Tetangga di grup warga mengunggah candaan yang menyinggung suku tertentu. Sikap Anda...',
  NULL,
  '{"A":"Menegur secara pribadi dan mengingatkan pentingnya menjaga kerukunan antarwarga","B":"Menegur di grup dengan sopan dan mengingatkan pentingnya menjaga kerukunan antarwarga","C":"Meminta pengurus grup menghapus unggahan itu tanpa menegur tetangga yang mengunggahnya","D":"Mengabaikan unggahan itu karena hanya candaan dan tidak ada warga yang keberatan secara langsung","E":"Membalas dengan candaan serupa agar suasana grup tetap cair dan tidak canggung"}'::jsonb,
  'A',
  'Nilai 5: menegur dengan cara yang menjaga hubungan baik.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  905,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Teman dekat Anda menyebarkan konten yang menyalahkan etnis tertentu atas krisis ekonomi. Anda...',
  NULL,
  '{"A":"Mengajak berdiskusi dengan data, mengingatkan dampaknya, dan melapor jika konten bersifat hasutan","B":"Mengajak berdiskusi dengan data dan mengingatkan dampaknya tanpa melapor walaupun konten bersifat hasutan","C":"Menegur di kolom komentar secara terbuka agar pengikut temannya ikut mengetahui kekeliruannya","D":"Mendiamkan unggahan itu karena teman dekat dan berharap ia menghapusnya sendiri nanti","E":"Memutus pertemanan tanpa bicara dan menyebarkan tangkapan layar unggahan itu ke grup lain"}'::jsonb,
  'A',
  'Nilai 5: menegur dengan data dan memakai jalur resmi bila perlu.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  906,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Di daerah tugas baru, warga enggan menerima program karena pernah dikecewakan. Anda...',
  NULL,
  '{"A":"Mendengarkan keluhan, melibatkan tokoh setempat, dan menunjukkan manfaat nyata secara bertahap","B":"Mendengarkan keluhan dan menjelaskan manfaat program secara lengkap tanpa melibatkan tokoh setempat","C":"Menunggu warga berubah pikiran sambil tetap menyiapkan program sesuai rencana awal","D":"Melanjutkan program sesuai jadwal dan melaporkan penolakan warga kepada atasan","E":"Memindahkan lokasi program ke desa lain tanpa membicarakannya dengan warga setempat"}'::jsonb,
  'A',
  'Nilai 5: membangun kepercayaan lewat dialog dan bukti.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  907,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Anda memimpin rapat, dan peserta dari daerah tertentu sering dipotong bicaranya karena logatnya. Anda...',
  NULL,
  '{"A":"Mengatur giliran bicara dan mengingatkan semua peserta untuk saling menghargai secara netral","B":"Mengatur giliran bicara lalu menegur secara pribadi peserta yang memotong setelah rapat selesai","C":"Meminta peserta yang logatnya sulit dipahami menuliskan pendapatnya agar rapat berjalan lancar","D":"Membiarkan pemotongan agar rapat cepat selesai sesuai alokasi waktu yang sudah ditetapkan","E":"Menegur peserta yang logatnya dianggap menyulitkan agar berbicara lebih jelas"}'::jsonb,
  'A',
  'Nilai 5: adil dan inklusif.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  908,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Warga adat menolak pembangunan fasilitas di lokasi yang mereka anggap sakral. Sebagai petugas lapangan, Anda...',
  NULL,
  '{"A":"Mendengarkan, melibatkan tokoh adat, melaporkan, dan mencari lokasi alternatif bersama","B":"Mendengarkan, melibatkan tokoh adat, dan melaporkan penolakan itu kepada atasan untuk diputuskan","C":"Meminta warga menunjukkan dasar hukum penolakan mereka sebelum pembangunan ditunda","D":"Menunda pembangunan tanpa menjelaskan alasan kepada warga maupun kepada atasan Anda","E":"Mengajak warga lain yang mendukung untuk meyakinkan warga adat agar menerima lokasi itu"}'::jsonb,
  'A',
  'Nilai 5: menghormati nilai lokal dan mencari solusi bersama.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  909,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Anda diminta memberi sambutan di acara komunitas yang memakai bahasa daerah yang tidak Anda kuasai. Anda...',
  NULL,
  '{"A":"Mempelajari salam dasar, meminta bantuan penerjemah, dan menghormati adat acara","B":"Mempelajari salam dasar lalu menyampaikan sambutan dalam bahasa Indonesia tanpa penerjemah","C":"Menyampaikan sambutan dalam bahasa Indonesia dengan bantuan penerjemah tanpa mempelajari salam dasar","D":"Menyampaikan sambutan singkat dalam bahasa Indonesia tanpa persiapan khusus untuk acara itu","E":"Meminta rekan yang menguasai bahasa daerah itu menggantikan Anda tanpa menjelaskan alasannya"}'::jsonb,
  'A',
  'Nilai 5: menghargai budaya setempat.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  910,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Dalam program bantuan, sebagian warga meminta bantuan hanya untuk kelompok mereka. Anda...',
  NULL,
  '{"A":"Menjelaskan kriteria objektif, memfasilitasi musyawarah, dan memastikan penerima sesuai kriteria","B":"Menjelaskan kriteria objektif kepada warga lalu menetapkan penerima tanpa musyawarah","C":"Memfasilitasi musyawarah dan menyesuaikan kriteria agar sebagian besar warga merasa puas","D":"Menunda program sampai seluruh warga menyepakati penerima bantuan secara bulat","E":"Menuruti usulan kelompok tersebut agar program berjalan tanpa menimbulkan protes warga"}'::jsonb,
  'A',
  'Nilai 5: adil dan transparan.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  911,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Rekan baru memakai pakaian adat yang dipertanyakan beberapa orang di kantor. Anda...',
  NULL,
  '{"A":"Menghargai dan menegur komentar yang menyinggung","B":"Menyarankan rekan itu menggantinya agar tidak menimbulkan komentar di kantor","C":"Menertawakannya bersama teman-teman supaya suasana lebih santai","D":"Diam agar tidak ikut dalam perdebatan yang tidak penting","E":"Melaporkannya sebagai pelanggaran seragam padahal belum ada aturannya"}'::jsonb,
  'A',
  'Nilai 5: menghargai keberagaman.',
  NULL,
  '{"A":5,"B":2,"C":1,"D":3,"E":1}'::jsonb,
  'published'
),
(
  'web',
  912,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Rekan Anda sering tidak diajak makan siang karena dianggap berbeda keyakinan. Anda...',
  NULL,
  '{"A":"Mengajaknya bergabung dan menegur dengan baik","B":"Mengajaknya makan bersama tanpa menegur siapa pun","C":"Menyarankan rekan itu lebih aktif bergaul dengan rekan lainnya","D":"Membiarkan karena pilihan teman makan siang adalah urusan pribadi masing-masing","E":"Ikut menjaga jarak agar tidak terlibat dalam perselisihan antarrekan"}'::jsonb,
  'A',
  'Nilai 5: inklusif dan berani menegur.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  913,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Hajatan adat tetangga bersuara keras hingga larut. Anda...',
  NULL,
  '{"A":"Mendatangi dengan sopan, menyampaikan keluhan, dan mencari kesepakatan batas waktu","B":"Menyampaikan keluhan kepada ketua RT agar disampaikan kepada keluarga penyelenggara","C":"Memahami tradisi dan tidak mengatakan apa pun karena hajatan hanya berlangsung sementara","D":"Melapor ke polisi agar kebisingan dihentikan sesuai aturan ketertiban umum","E":"Menyampaikan keluhan di media sosial agar penyelenggara menyadari gangguannya"}'::jsonb,
  'A',
  'Nilai 5: komunikasi langsung dan saling menghargai.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  914,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Di daerah tugas, warga sulit memahami penjelasan Anda karena beda bahasa. Anda...',
  NULL,
  '{"A":"Belajar ungkapan dasar setempat dan meminta bantuan tokoh atau penerjemah","B":"Memakai bahasa Indonesia sederhana dan gambar sambil memastikan warga paham","C":"Meminta aparat desa menyampaikan ulang penjelasan Anda tanpa mempelajari bahasa setempat","D":"Mengulang penjelasan dengan suara lebih keras dan lebih lambat sampai dipahami","E":"Meminta warga belajar bahasa Indonesia agar penjelasan berikutnya lebih mudah diikuti"}'::jsonb,
  'A',
  'Nilai 5: adaptif dan menghargai budaya.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  915,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Menu acara kantor tidak sesuai dengan keyakinan sebagian pegawai. Anda...',
  NULL,
  '{"A":"Mengusulkan panitia menyediakan pilihan yang sesuai untuk semua","B":"Menyediakan pilihan tambahan sendiri bagi pegawai yang menu acaranya tidak sesuai","C":"Membiarkan peserta menyesuaikan sendiri karena panitia sudah menyediakan menu","D":"Menyarankan pegawai tersebut membawa bekal sendiri agar tidak merepotkan panitia","E":"Menyampaikan bahwa menu mengikuti kebiasaan mayoritas pegawai di kantor"}'::jsonb,
  'A',
  'Nilai 5: inklusif lewat jalur panitia.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  916,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Rekan baru berbicara lugas yang dianggap kasar oleh sebagian orang. Anda...',
  NULL,
  '{"A":"Mengajaknya bicara, menjelaskan norma kantor, dan memberi masukan tanpa merendahkan","B":"Mengajaknya bicara dan menjelaskan norma kantor tanpa membahas dampak ucapannya","C":"Menyampaikan keberatan sebagian rekan kepada atasan agar ia diberi arahan","D":"Membiarkan karena gaya bicara adalah kepribadian dan nanti menyesuaikan sendiri","E":"Menegur rekan itu di depan rekan lain agar semua tahu batas yang berlaku"}'::jsonb,
  'A',
  'Nilai 5: membimbing dengan menghargai.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  917,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Di daerah tugas, sebagian kebiasaan setempat Anda anggap kurang efisien. Anda...',
  NULL,
  '{"A":"Memahami alasannya dulu lalu mengusulkan perbaikan secara menghormati","B":"Memahami alasannya lalu menunggu warga mengusulkan perubahan sendiri","C":"Mengikuti kebiasaan itu tanpa memberi masukan agar tidak menimbulkan penolakan","D":"Mengusulkan perbaikan langsung kepada tokoh setempat tanpa memahami alasannya dahulu","E":"Menyampaikan kepada atasan bahwa kebiasaan itu perlu diubah dengan segera"}'::jsonb,
  'A',
  'Nilai 5: peka budaya sekaligus konstruktif.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  918,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Rapat didominasi satu orang, anggota lain enggan bicara. Anda...',
  NULL,
  '{"A":"Mengatur giliran bicara agar semua ikut menyampaikan pendapat","B":"Meminta anggota lain menulis pendapat lalu membacakannya tanpa mengatur giliran","C":"Menegur orang yang mendominasi di depan peserta agar memberi kesempatan kepada yang lain","D":"Melanjutkan rapat sesuai agenda dan menerima masukan tambahan setelah rapat selesai","E":"Membiarkan rapat berjalan karena anggota yang diam dianggap setuju dengan pendapat itu"}'::jsonb,
  'A',
  'Nilai 5: inklusif.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  919,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Warga setempat menolak program karena menyalahi adat. Anda...',
  NULL,
  '{"A":"Berdialog dengan tokoh adat dan menyesuaikan pelaksanaan tanpa mengubah tujuan","B":"Berdialog dengan tokoh adat lalu mengubah tujuan program agar sesuai dengan adat","C":"Menyesuaikan pelaksanaan sendiri berdasarkan pengamatan tanpa berdialog dengan tokoh adat","D":"Melanjutkan program sesuai rencana sambil menjelaskan manfaatnya kepada warga","E":"Menunda program sampai warga sendiri yang meminta program itu dilaksanakan"}'::jsonb,
  'A',
  'Nilai 5: menghargai budaya dan tetap mencapai tujuan.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  920,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Tokoh masyarakat meminta penerima bantuan diprioritaskan dari kelompoknya, padahal data menunjukkan kelompok lain lebih membutuhkan. Anda...',
  NULL,
  '{"A":"Menjelaskan kriteria dengan data, mengajak tokoh berdialog, dan melibatkannya dalam verifikasi penerima","B":"Menjelaskan kriteria dengan data dan mengajak tokoh berdialog tanpa melibatkannya dalam verifikasi","C":"Menyisihkan sebagian kuota untuk kelompok tokoh itu agar tidak ada penolakan","D":"Menyerahkan keputusan penerima kepada atasan tanpa menjelaskan data kepada tokoh itu","E":"Memprioritaskan kelompok tokoh itu karena pengaruhnya besar di tengah warga"}'::jsonb,
  'A',
  'Nilai 5: adil, transparan, dan melibatkan tokoh.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  921,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Rekan baru dari agama minoritas sering dijadikan bahan candaan di grup kantor dan tampak tidak keberatan. Anda...',
  NULL,
  '{"A":"Mengajak grup menghentikan candaan itu dengan santun dan memastikan rekan itu merasa nyaman","B":"Mengajak grup menghentikan candaan itu dengan santun tanpa menanyakan kenyamanan rekan itu","C":"Menanyakan kenyamanan rekan itu secara pribadi tanpa menegur anggota grup yang bercanda","D":"Membiarkan karena rekan itu tampak tidak keberatan dan ikut tertawa bersama","E":"Meminta atasan menegur grup agar Anda tidak berselisih dengan rekan-rekan lain"}'::jsonb,
  'A',
  'Nilai 5: inklusif dan menjaga hubungan baik.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  922,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Seorang pegawai baru di unit Anda berlogat daerah yang kental, dan sering ditirukan sambil bercanda oleh beberapa rekan. Pegawai baru itu tampak menarik diri. Sikap Anda....',
  NULL,
  '{"A":"Ikut bercanda secara ringan agar suasana di antara rekan kerja tidak menjadi canggung, agar tidak menambah beban kerja","B":"Mengajak pegawai baru ikut kegiatan kerja dan makan siang bersama tanpa menegur siapa pun yang menirukan logatnya","C":"Menyarankan pegawai baru memakai logat yang lebih umum agar lebih mudah diterima oleh rekan-rekan kerja, sambil berharap masalahnya mereda sendiri","D":"Menegur dengan santun rekan yang menirukan logat tersebut dan mengajak pegawai baru ikut kegiatan kerja dan makan siang bersama","E":"Menegur dengan santun rekan yang menirukan logat tersebut tanpa mendekati pegawai baru yang tampak menarik diri"}'::jsonb,
  'D',
  'Nilai 5: menghentikan perilaku yang merendahkan dan merangkul yang dirugikan.',
  NULL,
  '{"A":1,"B":4,"C":2,"D":5,"E":3}'::jsonb,
  'published'
),
(
  'web',
  923,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Sebagian warga desa binaan menolak sosialisasi program kesehatan pada hari pasaran tertentu karena dianggap hari pantangan adat, dan jadwal sosialisasi bertepatan dengan hari itu. Sikap Anda....',
  NULL,
  '{"A":"Menyampaikan keberatan warga kepada atasan dan menunggu keputusan apakah jadwal perlu diubah atau tidak","B":"Menyampaikan bahwa pantangan itu tidak berdasar ilmiah sehingga tidak perlu dipertimbangkan dalam penjadwalan, agar tidak menambah beban kerja","C":"Tetap melaksanakan sosialisasi sesuai jadwal sambil menjelaskan manfaat program kesehatan kepada warga","D":"Berdiskusi dengan tokoh adat, lalu menawarkan sosialisasi pada hari itu dengan pembatasan kegiatan tertentu sesuai kebiasaan setempat","E":"Berdiskusi dengan tokoh adat untuk memahami pantangan itu, lalu menggeser jadwal ke hari lain tanpa mengubah tujuan dan materi program"}'::jsonb,
  'E',
  'Nilai 5: menghormati adat sambil menjaga tujuan program.',
  NULL,
  '{"A":3,"B":1,"C":2,"D":4,"E":5}'::jsonb,
  'published'
),
(
  'web',
  924,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Dua kelompok pemuda di lingkungan Anda berselisih karena panitia perayaan hari besar daerah dianggap hanya melibatkan satu kelompok. Ketegangan mulai terlihat di media sosial. Sikap Anda....',
  NULL,
  '{"A":"Meminta ketua RT menengahi dan menunggu sampai kedua kelompok menjadi lebih tenang dengan sendirinya","B":"Mengajak perwakilan kedua kelompok berdialog bersama tokoh lingkungan, lalu mengusulkan pelibatan kedua kelompok dalam kepanitiaan","C":"Mengajak perwakilan kedua kelompok berdialog bersama tokoh lingkungan tanpa mengusulkan perubahan susunan kepanitiaan, lalu menunggu arahan atasan","D":"Mengunggah imbauan umum di media sosial agar semua pihak menahan diri dalam menanggapi persoalan itu","E":"Membela kelompok yang sebagian anggotanya adalah kerabat dekat Anda dalam perselisihan tersebut, agar tidak menambah beban kerja"}'::jsonb,
  'B',
  'Nilai 5: dialog dan solusi inklusif.',
  NULL,
  '{"A":3,"B":5,"C":4,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  925,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Rekan Anda yang beragama berbeda sedang berpuasa dan tampak lemas, sementara tim harus menyelesaikan pekerjaan fisik di lapangan siang ini. Sikap Anda....',
  NULL,
  '{"A":"Menawarkan pembagian tugas fisik agar rekan itu mendapat bagian lebih ringan, serta mengatur jeda sesuai waktu ibadahnya","B":"Meminta rekan itu tetap bekerja seperti biasa karena ibadah adalah urusan pribadinya sendiri","C":"Menanyakan kondisi rekan itu dan membiarkannya menentukan sendiri bagian yang akan ia kerjakan","D":"Menyarankan rekan itu beristirahat di kantor sementara pekerjaan lapangan dikerjakan anggota lain, sambil berharap masalahnya mereda sendiri","E":"Menawarkan pembagian tugas fisik agar rekan itu mendapat bagian yang lebih ringan dari anggota tim lain"}'::jsonb,
  'A',
  'Nilai 5: toleran dan menyesuaikan kerja tim secara adil.',
  NULL,
  '{"A":5,"B":1,"C":3,"D":2,"E":4}'::jsonb,
  'published'
),
(
  'web',
  926,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Dalam kerja bakti, seorang warga penyandang disabilitas ingin ikut serta, tetapi sebagian panitia ragu karena khawatir mengganggu kelancaran kegiatan. Sikap Anda....',
  NULL,
  '{"A":"Mempersilakan warga itu ikut tanpa tugas khusus agar ia tidak merasa terbebani selama kegiatan","B":"Menanyakan bantuan yang dibutuhkan warga itu, lalu menyesuaikan pembagian tugas agar ia dapat berkontribusi sesuai kemampuannya","C":"Menanyakan bantuan yang dibutuhkan warga itu, lalu menugaskannya pada pekerjaan yang sudah tersedia","D":"Menyampaikan kepada warga itu bahwa kegiatan kali ini lebih cocok bagi warga yang bugar, agar tidak menambah beban kerja Anda dan rekan satu unit","E":"Menyarankan warga itu menyumbang dana saja sebagai pengganti kehadirannya dalam kegiatan"}'::jsonb,
  'B',
  'Nilai 5: inklusif, bertanya dulu, lalu menyesuaikan peran.',
  NULL,
  '{"A":3,"B":5,"C":4,"D":1,"E":2}'::jsonb,
  'published'
),
(
  'web',
  927,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Anda ditugaskan di daerah baru dan diundang ke acara adat setempat yang memiliki aturan berpakaian dan tata cara tertentu yang belum Anda ketahui. Sikap Anda....',
  NULL,
  '{"A":"Menghadiri acara dengan pakaian dan tata cara yang biasa Anda pakai di daerah asal, agar tidak menambah beban kerja","B":"Menghadiri acara dengan mengamati dan menyesuaikan diri dengan yang dilakukan orang lain di sana","C":"Menanyakan kepada rekan lokal tentang aturan berpakaian, lalu menghadiri acara tersebut dengan sopan, lalu menunggu arahan atasan","D":"Menolak undangan dengan sopan karena belum memahami tata cara adat di daerah tersebut","E":"Menanyakan kepada tokoh setempat atau rekan lokal tentang tata cara dan aturan berpakaian, lalu hadir dengan sikap menghormati"}'::jsonb,
  'E',
  'Nilai 5: proaktif belajar budaya setempat.',
  NULL,
  '{"A":1,"B":3,"C":4,"D":2,"E":5}'::jsonb,
  'published'
),
(
  'web',
  928,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Rekan baru Anda berasal dari daerah dengan logat kental, dan sebagian rekan menirunya sebagai candaan. Ia tampak tidak nyaman. Sikap Anda....',
  NULL,
  '{"A":"Menegur candaan itu dengan santun dan mengajak rekan baru bergabung dalam kerja tim","B":"Mengajak rekan baru bergabung tanpa menyinggung candaan","C":"Menegur rekan yang bercanda di depan umum agar jera","D":"Membiarkan karena hanya canda","E":"Menyarankan rekan baru membiasakan diri"}'::jsonb,
  'A',
  'Nilai 5: menghentikan perilaku merendahkan sekaligus merangkul.',
  NULL,
  '{"A":5,"B":4,"C":2,"D":1,"E":2}'::jsonb,
  'published'
),
(
  'web',
  929,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Pada hari besar keagamaan yang tidak Anda rayakan, rekan yang merayakan meminta Anda menggantikan jaga kantor. Sikap Anda....',
  NULL,
  '{"A":"Bersedia menggantikan dan menyepakati penggantian hari libur, sambil memastikan jadwal adil bagi semua","B":"Bersedia menggantikan tanpa membicarakan imbalan","C":"Menolak karena hari itu tetap libur nasional","D":"Bersedia asal rekan lain juga menggantikan hari raya Anda","E":"Meminta atasan menunjuk orang lain"}'::jsonb,
  'A',
  'Nilai 5: toleran dan adil.',
  NULL,
  '{"A":5,"B":4,"C":2,"D":3,"E":3}'::jsonb,
  'published'
),
(
  'web',
  930,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Anda ditugaskan sosialisasi program ke desa yang memiliki larangan adat memasuki hutan tertentu, padahal lokasi program berdekatan. Tindakan Anda....',
  NULL,
  '{"A":"Berdiskusi dengan tokoh adat, menyesuaikan lokasi atau tata cara kegiatan, dan menjelaskan tujuan program","B":"Tetap melaksanakan program karena sudah direncanakan","C":"Membatalkan program di desa itu","D":"Meminta izin tokoh adat setelah kegiatan berjalan","E":"Menyerahkan keputusan kepada warga tanpa pendampingan"}'::jsonb,
  'A',
  'Nilai 5: menghormati adat tanpa mengorbankan tujuan program.',
  NULL,
  '{"A":5,"B":2,"C":2,"D":3,"E":1}'::jsonb,
  'published'
),
(
  'web',
  931,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Warga perumahan Anda menolak kehadiran pendatang dari suku tertentu menyewa rumah dengan alasan "menjaga keamanan". Sikap Anda....',
  NULL,
  '{"A":"Mengingatkan bahwa penolakan karena suku tidak dibenarkan, lalu mengusulkan aturan lingkungan yang berlaku untuk semua warga","B":"Mengingatkan secara pribadi warga yang paling vokal","C":"Mengusulkan pendatang melapor ke ketua lingkungan","D":"Mengikuti keputusan warga mayoritas","E":"Tidak menanggapi karena bukan urusan Anda"}'::jsonb,
  'A',
  'Nilai 5: menolak diskriminasi dan menawarkan solusi inklusif.',
  NULL,
  '{"A":5,"B":3,"C":3,"D":1,"E":2}'::jsonb,
  'published'
),
(
  'web',
  932,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Anda menjadi panitia acara kantor dengan peserta beragam kebiasaan makan dan keyakinan. Cara terbaik menyusun konsumsi....',
  NULL,
  '{"A":"Mendata kebutuhan peserta lebih dulu lalu menyediakan menu sesuai kebutuhan itu","B":"Menyediakan menu yang disukai mayoritas peserta","C":"Menyediakan menu seragam dan mengizinkan peserta membawa bekal","D":"Menyerahkan pilihan menu kepada vendor","E":"Menyediakan menu yang paling murah"}'::jsonb,
  'A',
  'Nilai 5: inklusif sejak perencanaan.',
  NULL,
  '{"A":5,"B":3,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  933,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Tetangga mengundang Anda ke tradisi syukuran yang menurut keyakinan Anda tidak sejalan, tetapi diyakini penting oleh warga. Sikap Anda....',
  NULL,
  '{"A":"Hadir sebagai tanda menghormati, mengikuti bagian yang tidak bertentangan dengan keyakinan, dan menjelaskan batasannya dengan sopan","B":"Hadir seluruh acara demi menjaga hubungan baik","C":"Berterima kasih lalu tidak hadir tanpa penjelasan","D":"Menolak dan menyarankan tradisi itu ditiadakan","E":"Mengirim makanan sebagai pengganti kehadiran"}'::jsonb,
  'A',
  'Nilai 5: menghormati tanpa mengorbankan keyakinan.',
  NULL,
  '{"A":5,"B":4,"C":2,"D":1,"E":3}'::jsonb,
  'published'
),
(
  'web',
  934,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Di grup alumni, seseorang mengunggah candaan yang menyinggung agama tertentu dan sebagian anggota tertawa. Tindakan Anda....',
  NULL,
  '{"A":"Menegur lewat pesan pribadi lalu meminta ia menghapus unggahan, dan mengingatkan grup tentang batas candaan","B":"Menegur terbuka di grup dengan kalimat tegas","C":"Diam agar suasana grup tidak rusak","D":"Keluar dari grup","E":"Membalas dengan candaan serupa tentang agama lain"}'::jsonb,
  'A',
  'Nilai 5: menegur dengan cara yang menjaga hubungan.',
  NULL,
  '{"A":5,"B":4,"C":2,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  935,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Dalam rapat desa, usulan perempuan tentang program posyandu sering dipotong peserta laki-laki. Anda moderator. Tindakan Anda....',
  NULL,
  '{"A":"Mengatur giliran bicara yang adil dan meminta usulan perempuan dibahas sampai tuntas","B":"Mengingatkan peserta agar tidak memotong pembicaraan","C":"Meminta usulan perempuan ditulis dan dibahas pada rapat berikutnya","D":"Membiarkan karena rapat berjalan sesuai tradisi desa","E":"Mengambil alih dan memutuskan usulan sendiri agar cepat"}'::jsonb,
  'A',
  'Nilai 5: memastikan partisipasi setara.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":1,"E":2}'::jsonb,
  'published'
),
(
  'web',
  936,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Anda ditempatkan di daerah yang adat dan bahasanya berbeda dari kampung halaman. Sikap terbaik adalah...',
  NULL,
  '{"A":"Tetap memakai kebiasaan lama dan meminta warga menyesuaikan","B":"Membatasi pergaulan agar tidak bermasalah","C":"Menertawakan kebiasaan setempat di media sosial","D":"Meminta dipindahkan secepatnya","E":"Mempelajari adat dan bahasa setempat, bergaul dengan warga, tetap menaati aturan"}'::jsonb,
  'E',
  'Nilai 5: beradaptasi, menghormati budaya setempat, dan tetap bekerja efektif.',
  NULL,
  '{"A":4,"B":3,"C":2,"D":1,"E":5}'::jsonb,
  'published'
),
(
  'web',
  937,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Rekan beragama lain mengundang Anda ke perayaan hari rayanya. Sikap Anda...',
  NULL,
  '{"A":"Menolak karena beda keyakinan","B":"Menyuruh rekan lain mewakili","C":"Hadir dengan sopan sebagai bentuk penghormatan tanpa mengabaikan keyakinan sendiri","D":"Pura-pura sakit","E":"Hadir sambil memberi komentar buruk"}'::jsonb,
  'C',
  'Nilai 5: menghargai perbedaan dan menjaga hubungan kerja.',
  NULL,
  '{"A":4,"B":3,"C":5,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  938,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Warga setempat memakai bahasa daerah yang tidak Anda pahami saat berkonsultasi. Tindakan Anda...',
  NULL,
  '{"A":"Meminta mereka memakai bahasa Indonesia dengan nada tinggi","B":"Menjawab asal","C":"Menyuruh datang bersama penerjemah","D":"Meminta bantuan rekan setempat sebagai penerjemah sambil belajar bahasa daerah itu","E":"Mengabaikan"}'::jsonb,
  'D',
  'Nilai 5: solutif dan mau belajar budaya setempat.',
  NULL,
  '{"A":4,"B":3,"C":2,"D":5,"E":1}'::jsonb,
  'published'
),
(
  'web',
  939,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Rekan menyindir logat bicara rekan lain yang berasal dari daerah berbeda. Sikap Anda...',
  NULL,
  '{"A":"Membiarkan","B":"Menegur dengan santun bahwa itu tidak pantas dan menghargai keberagaman","C":"Menjauhi mereka","D":"Ikut tertawa","E":"Melaporkan tanpa menegur"}'::jsonb,
  'B',
  'Nilai 5: berani meluruskan dengan santun.',
  NULL,
  '{"A":4,"B":5,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  940,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Jadwal pelayanan bentrok dengan upacara adat besar di daerah tugas Anda. Tindakan Anda...',
  NULL,
  '{"A":"Mengikuti adat dan meninggalkan tugas","B":"Berkoordinasi dengan atasan untuk menyesuaikan jadwal agar layanan tetap berjalan dan adat dihormati","C":"Menyerahkan ke rekan","D":"Menutup layanan sepihak","E":"Tetap buka tanpa memedulikan warga"}'::jsonb,
  'B',
  'Nilai 5: menghormati adat sekaligus menjaga kewajiban pelayanan.',
  NULL,
  '{"A":4,"B":5,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  941,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Warga dari kelompok minoritas kesulitan mengakses layanan kantor. Tindakan Anda...',
  NULL,
  '{"A":"Mengarahkan ke kantor lain","B":"Memberi layanan istimewa","C":"Memastikan layanan setara, mencari tahu hambatannya, dan melaporkan agar ada solusi","D":"Menunggu keluhan resmi","E":"Menganggapnya masalah mereka"}'::jsonb,
  'C',
  'Nilai 5: setara dan proaktif tanpa diskriminasi.',
  NULL,
  '{"A":4,"B":3,"C":5,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  942,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Anda ditempatkan di daerah dengan adat berbeda dan diundang warga ke upacara adat yang belum Anda pahami. Sikap terbaik Anda adalah...',
  NULL,
  '{"A":"Hadir tetapi mengkritik adat itu","B":"Menolak karena berbeda dengan kebiasaan Anda","C":"Hadir, menghormati tata caranya, dan bertanya dengan sopan bila belum paham","D":"Mengirim perwakilan tanpa alasan","E":"Meminta upacara disederhanakan sesuai selera Anda"}'::jsonb,
  'C',
  'Nilai 5: menghormati budaya setempat dan mau belajar.',
  NULL,
  '{"A":4,"B":3,"C":5,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  943,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Dua kelompok warga berselisih karena perbedaan suku. Tindakan terbaik Anda adalah...',
  NULL,
  '{"A":"Membiarkannya karena bukan urusan Anda","B":"Menyebarkan kabar perselisihan itu di media sosial","C":"Memihak kelompok yang sesuku dengan Anda","D":"Menyarankan salah satu kelompok pindah","E":"Menjadi penengah, mempertemukan kedua pihak berdialog, dan melibatkan tokoh setempat bila perlu"}'::jsonb,
  'E',
  'Nilai 5: mediasi yang mengutamakan persatuan, bukan memihak.',
  NULL,
  '{"A":4,"B":3,"C":2,"D":1,"E":5}'::jsonb,
  'published'
),
(
  'web',
  944,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Rekan baru dari daerah lain sering salah menangkap logat bicara Anda. Sikap terbaik Anda adalah...',
  NULL,
  '{"A":"Meminta atasan memindahkannya","B":"Menjelaskan dengan kata yang lebih mudah dipahami dan sabar membantunya beradaptasi","C":"Menertawakan logatnya","D":"Menghindari berbicara dengannya","E":"Meniru logatnya untuk bercanda"}'::jsonb,
  'B',
  'Nilai 5: sabar dan inklusif terhadap perbedaan.',
  NULL,
  '{"A":4,"B":5,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  945,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Rekan mengundang Anda ke perayaan keagamaan yang berbeda dari keyakinan Anda. Anda...',
  NULL,
  '{"A":"Hadir dengan hormat bila tidak bertentangan dengan keyakinan, atau menolak dengan sopan","B":"Menolak sambil menyindir keyakinan mereka","C":"Datang sambil mengomentari ritualnya","D":"Memutus hubungan dengan rekan itu","E":"Menyuruh rekan lain mewakili"}'::jsonb,
  'A',
  'Nilai 5: toleran dan menjaga hubungan baik.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  946,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Warga di wilayah tugas punya kebiasaan musyawarah panjang sebelum memutuskan. Anda...',
  NULL,
  '{"A":"Mengkritik kebiasaan itu di depan warga","B":"Menghargai prosesnya dan menyesuaikan jadwal kerja","C":"Meminta warga memutuskan cepat","D":"Memutuskan sendiri agar efisien","E":"Meninggalkan forum"}'::jsonb,
  'B',
  'Nilai 5: menghormati budaya setempat.',
  NULL,
  '{"A":4,"B":5,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  947,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Teman kantor mengejek logat bicara rekan baru. Anda...',
  NULL,
  '{"A":"Mengingatkan dengan baik bahwa itu tidak pantas dan mengajak rekan baru bergabung","B":"Merekam lalu menyebarkannya","C":"Diam saja","D":"Ikut tertawa","E":"Menyuruh rekan baru mengubah logatnya"}'::jsonb,
  'A',
  'Nilai 5: membela yang dirugikan tanpa memperkeruh.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  948,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Kantor mengadakan bakti sosial akhir pekan yang bersifat sukarela. Anda...',
  NULL,
  '{"A":"Tidak ikut karena tidak wajib","B":"Mengkritik kegiatan itu","C":"Ikut sesuai kemampuan dan mengajak rekan lain","D":"Ikut hanya untuk difoto","E":"Menyuruh orang lain menggantikan"}'::jsonb,
  'C',
  'Nilai 5: peduli sosial dan menggerakkan sesama.',
  NULL,
  '{"A":4,"B":3,"C":5,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  949,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Warga menolak sebuah program karena bertentangan dengan adat setempat. Anda...',
  NULL,
  '{"A":"Mencari warga lain yang mau","B":"Memaksa program tetap berjalan","C":"Berdialog dengan tokoh adat untuk mencari penyesuaian tanpa melanggar aturan","D":"Menyalahkan warga","E":"Membatalkan program tanpa melapor"}'::jsonb,
  'C',
  'Nilai 5: dialog dan kompromi yang tetap sesuai aturan.',
  NULL,
  '{"A":4,"B":3,"C":5,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  950,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Instansi Anda mewajibkan tanda tangan elektronik, tetapi atasan senior ragu memakainya. Tindakan Anda...',
  NULL,
  '{"A":"Menyusun panduan singkat dan mendampingi atasan mencoba langkah demi langkah","B":"Menyusun panduan singkat lalu menyerahkannya kepada atasan untuk dicoba sendiri","C":"Memberikan tautan tutorial resmi dan menawarkan bantuan bila atasan mengalami kesulitan","D":"Menyerahkan tugas penandatanganan kepada staf lain agar proses administrasi tetap berjalan","E":"Menyarankan atasan memakai cara manual sementara waktu sampai merasa lebih siap"}'::jsonb,
  'A',
  'Nilai 5: adaptif dan membantu transisi teknologi.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  951,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda menerima surel yang mengaku dari pimpinan dan meminta data kepegawaian dikirim lewat tautan tak dikenal. Sikap Anda...',
  NULL,
  '{"A":"Tidak mengklik, memverifikasi ke pimpinan lewat kanal resmi, dan melapor ke tim TI","B":"Tidak mengklik dan memverifikasi ke pimpinan lewat kanal resmi tanpa melapor ke tim TI","C":"Tidak mengklik dan melaporkan surel itu ke tim TI tanpa memverifikasi kepada pimpinan","D":"Membalas surel itu untuk menanyakan keaslian permintaan sebelum mengirim data apa pun","E":"Mengirim sebagian data yang tidak terlalu sensitif sambil menunggu konfirmasi pimpinan"}'::jsonb,
  'A',
  'Nilai 5: waspada phishing dan melapor.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  952,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Aplikasi kerja memiliki fitur baru yang dapat memangkas separuh waktu penyusunan laporan, tetapi tim belum mengetahuinya. Tindakan Anda...',
  NULL,
  '{"A":"Mempelajari dan mencobanya, lalu membagikan tutorial singkat kepada tim","B":"Mempelajari dan mencobanya, lalu mengusulkan pelatihan resmi kepada atasan","C":"Mengusulkan pelatihan kepada atasan tanpa mencoba fitur itu terlebih dahulu","D":"Memakainya sendiri untuk mempercepat pekerjaan tanpa memberi tahu anggota tim lain","E":"Menunggu instruksi atasan karena cara kerja lama masih menghasilkan laporan yang sah"}'::jsonb,
  'A',
  'Nilai 5: inisiatif memanfaatkan TIK dan berbagi pengetahuan.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  953,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda menyadari spreadsheet bersama berisi data sensitif warga dapat dilihat banyak pihak. Tindakan Anda...',
  NULL,
  '{"A":"Segera membatasi akses, melapor ke atasan, dan mengusulkan aturan hak akses","B":"Segera membatasi akses dan melapor ke atasan tanpa mengusulkan perbaikan aturannya","C":"Membatasi akses setelah mengumpulkan daftar siapa saja yang sudah membukanya","D":"Menghapus kolom sensitif lalu memberi tahu atasan setelah pekerjaan hari itu selesai","E":"Menunggu rapat bulanan untuk membahas hak akses spreadsheet bersama tersebut"}'::jsonb,
  'A',
  'Nilai 5: melindungi data dan memperbaiki tata kelola.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  954,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Aplikasi kantor meminta pembaruan yang meminta akses kamera dan kontak yang tidak relevan dengan tugas. Anda...',
  NULL,
  '{"A":"Memeriksa izin yang diminta dan berkonsultasi ke tim TI sebelum menyetujui","B":"Menolak pembaruan sementara dan menanyakan kepada tim TI apakah izin itu memang diperlukan","C":"Membatalkan pembaruan dan memakai aplikasi versi lama tanpa memberi tahu tim TI","D":"Meminta rekan mencoba pembaruan itu lebih dulu untuk melihat apakah ada masalah","E":"Menyetujui seluruh izin agar aplikasi tetap dapat dipakai untuk bekerja hari ini"}'::jsonb,
  'A',
  'Nilai 5: waspada dan memakai jalur konsultasi.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  955,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda tidak sengaja mengirim berkas rahasia ke grup yang salah. Anda...',
  NULL,
  '{"A":"Menarik pesan, melapor ke atasan dan tim TI, dan meminta anggota grup menghapusnya","B":"Menarik pesan dan melapor ke atasan, lalu meminta anggota grup menghapusnya tanpa melibatkan tim TI","C":"Menarik pesan lalu menyampaikan permintaan maaf di grup agar anggota tidak membuka berkasnya","D":"Menghapus pesan itu dari grup tanpa melapor karena belum banyak anggota yang membacanya","E":"Mengirim berkas lain ke grup yang sama agar berkas rahasia itu tertimpa dan tidak terlihat"}'::jsonb,
  'A',
  'Nilai 5: tanggap, jujur, dan memitigasi risiko.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  956,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Sistem kantor lambat. Anda diminta mengolah data sensitif warga memakai spreadsheet di ponsel pribadi. Anda...',
  NULL,
  '{"A":"Melaporkan kendala ke tim TI dan memakai perangkat resmi, tanpa memindahkan data ke perangkat pribadi","B":"Melaporkan kendala ke tim TI lalu menunda pekerjaan sampai sistem pulih tanpa menawarkan solusi sementara","C":"Memakai ponsel pribadi hanya untuk mengolah data lalu menghapusnya segera setelah pekerjaan selesai","D":"Mengirim data ke surel pribadi lebih dulu agar dapat diolah di perangkat yang lebih cepat","E":"Meminta rekan memproses data itu di ponsel pribadinya karena sistem kantor sedang lambat"}'::jsonb,
  'A',
  'Nilai 5: menjaga keamanan data.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  957,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Aplikasi kerja kini punya fitur AI yang dapat menulis laporan otomatis. Anda...',
  NULL,
  '{"A":"Mencoba, memverifikasi hasilnya, tidak memasukkan data sensitif, dan memeriksa ketentuan kantor","B":"Mencoba dan memverifikasi hasilnya tanpa data sensitif, tetapi tanpa memeriksa ketentuan kantor","C":"Memeriksa ketentuan kantor lebih dulu dan menunggu rekan lain mencobanya sebelum ikut memakai","D":"Memakainya untuk menulis laporan dan hanya memeriksa hasilnya bila atasan menemukan kesalahan","E":"Menempelkan seluruh data laporan ke fitur itu agar hasil tulisannya lengkap dan akurat"}'::jsonb,
  'A',
  'Nilai 5: memanfaatkan teknologi secara hati-hati.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  958,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Akun media sosial instansi dipakai menyebarkan konten tidak pantas. Anda...',
  NULL,
  '{"A":"Melapor ke admin dan TI, mengamankan akun, serta mendokumentasikan kejadian","B":"Melapor ke admin dan TI lalu menghapus konten tanpa mendokumentasikan kejadian","C":"Menghapus konten itu lebih dulu lalu melapor ke admin setelah akun kembali aman","D":"Membuat unggahan klarifikasi di akun pribadi sambil menunggu akun instansi dipulihkan","E":"Membagikan tangkapan layar konten itu ke publik agar pelakunya cepat diketahui"}'::jsonb,
  'A',
  'Nilai 5: tanggap dan terdokumentasi.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  959,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Rapat daring penting terganggu koneksi buruk. Anda...',
  NULL,
  '{"A":"Memberi tahu peserta, menyiapkan alternatif (telepon atau ringkasan tertulis), dan memastikan keputusan terdokumentasi","B":"Memberi tahu peserta dan menyiapkan alternatif telepon, tetapi keputusan tidak didokumentasikan secara tertulis","C":"Memberi tahu peserta lalu menjadwalkan ulang rapat tanpa menyiapkan alternatif untuk keputusan mendesak","D":"Melanjutkan rapat dengan peserta yang koneksinya baik dan menyampaikan hasilnya kepada yang lain nanti","E":"Membubarkan rapat dan meminta penyedia internet menjelaskan penyebab gangguan itu"}'::jsonb,
  'A',
  'Nilai 5: adaptif dan akuntabel.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  960,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda ragu sebuah tautan aman. Anda...',
  NULL,
  '{"A":"Tidak membuka dan konfirmasi ke pengirim lewat kanal lain","B":"Membuka di perangkat kantor karena sudah ada antivirus yang melindungi","C":"Membuka di ponsel pribadi karena data kantor tidak ada di sana","D":"Membagikannya kepada rekan agar mereka memeriksa lebih dahulu","E":"Membuka saja karena kemungkinan besar aman bagi mayoritas pengguna"}'::jsonb,
  'A',
  'Nilai 5: verifikasi sebelum membuka.',
  NULL,
  '{"A":5,"B":2,"C":3,"D":1,"E":2}'::jsonb,
  'published'
),
(
  'web',
  961,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda diminta membuat presentasi memakai aplikasi desain yang belum dikuasai, tenggat dua hari. Anda...',
  NULL,
  '{"A":"Mempelajari fitur dasar lewat panduan resmi dan meminta rekan yang paham menunjukkan jalan pintas","B":"Memakai aplikasi yang sudah dikuasai dan memberi tahu atasan alasan perubahannya","C":"Mempelajari fitur dasar lewat panduan resmi tanpa meminta bantuan rekan yang paham","D":"Mengerjakan seadanya dengan fitur yang sudah diketahui lalu menyerahkan tepat tenggat","E":"Meminta rekan mengerjakannya karena tenggat dua hari terlalu singkat bagi Anda"}'::jsonb,
  'A',
  'Nilai 5: belajar cepat dan berkolaborasi.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  962,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Listrik padam saat Anda mengolah data penting. Anda...',
  NULL,
  '{"A":"Menyimpan versi terakhir, memeriksa integritas data setelah listrik hidup, dan melapor bila ada yang hilang","B":"Menyimpan versi terakhir dan memeriksa integritas data setelah listrik hidup tanpa melapor bila ada yang hilang","C":"Menyalakan ulang perangkat lalu melanjutkan pekerjaan tanpa memeriksa kelengkapan data","D":"Meminta rekan memeriksa data itu setelah listrik hidup karena Anda sedang mengerjakan tugas lain","E":"Menunggu besok baru memeriksa data karena pekerjaan sudah melewati jam kerja"}'::jsonb,
  'A',
  'Nilai 5: mengamankan data dan transparan.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  963,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Rekan meminta kata sandi akun kerja Anda karena akunnya terkunci. Anda...',
  NULL,
  '{"A":"Menolak dan membantunya mengajukan pemulihan akun ke TI","B":"Menolak dan menyarankan rekan menghubungi TI sendiri tanpa membantu pengajuannya","C":"Memberi sandi sementara lalu meminta rekan segera menggantinya setelah akun terbuka","D":"Memberi sandi dan menggantinya setelah rekan selesai memakai akun itu","E":"Login atas nama rekan itu agar pekerjaannya tidak terhambat selama akun terkunci"}'::jsonb,
  'A',
  'Nilai 5: menjaga kerahasiaan akun.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  964,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Sistem layanan baru membuat banyak warga lansia kesulitan. Anda...',
  NULL,
  '{"A":"Menyediakan pendampingan langsung dan panduan sederhana serta menampung masukan untuk perbaikan sistem","B":"Menyediakan pendampingan langsung dan panduan sederhana tanpa menampung masukan untuk perbaikan sistem","C":"Menyediakan pendampingan langsung saja saat warga lansia datang ke loket","D":"Meminta warga lansia belajar sendiri dari panduan yang tersedia di situs layanan","E":"Kembali ke cara lama untuk warga lansia tanpa izin dari atasan"}'::jsonb,
  'A',
  'Nilai 5: inklusif dan memperbaiki sistem.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  965,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Atasan meminta data kependudukan dikirim lewat aplikasi pesan pribadi karena "paling cepat". Anda...',
  NULL,
  '{"A":"Menyampaikan risikonya, mengusulkan saluran resmi yang aman, dan menunggu persetujuan","B":"Menyampaikan risikonya lalu mengirim data dengan menghapus pesannya setelah diterima","C":"Mengirim sebagian kecil data saja yang tidak terlalu sensitif lewat aplikasi pesan itu","D":"Mengirim sesuai perintah karena atasan bertanggung jawab atas keputusan pengiriman tersebut","E":"Menolak mengirim tanpa menjelaskan risiko dan tanpa mengusulkan saluran lain"}'::jsonb,
  'A',
  'Nilai 5: patuh sambil melindungi data.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  966,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda tidak sengaja menekan balas semua dan mengirim dokumen internal ke daftar surel yang memuat pihak luar. Anda...',
  NULL,
  '{"A":"Segera melapor ke atasan dan tim TI, meminta penerima menghapus, dan mencatat kronologi","B":"Segera melapor ke atasan dan tim TI serta meminta penerima menghapus tanpa mencatat kronologi","C":"Meminta penerima menghapus surel itu lalu melapor ke atasan setelah jam kerja selesai","D":"Mengirim surel susulan yang menyatakan dokumen tersebut tidak perlu dibuka siapa pun","E":"Menunggu penerima mengabari karena belum tentu ada yang membuka dokumen itu"}'::jsonb,
  'A',
  'Nilai 5: mitigasi cepat dan transparan.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  967,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda menemukan celah keamanan pada sistem kantor. Anda...',
  NULL,
  '{"A":"Melaporkan ke tim TI dengan bukti dan tidak menyebarkannya","B":"Melaporkan ke tim TI tanpa bukti agar tim yang menelusuri temuan itu sendiri","C":"Mengujinya secukupnya untuk memastikan dampaknya lalu melapor ke tim TI","D":"Menyampaikan temuan kepada rekan sekantor agar ikut berhati-hati memakai sistemnya","E":"Menunggu jadwal audit keamanan berkala agar temuan dilaporkan bersama temuan lain"}'::jsonb,
  'A',
  'Nilai 5: melapor dengan aman.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  968,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda diminta mengelola data warga dengan aplikasi baru yang belum dilatih. Anda...',
  NULL,
  '{"A":"Belajar lewat panduan resmi, uji coba data contoh, lalu minta pendampingan bila perlu","B":"Belajar lewat panduan resmi lalu langsung memakai data warga tanpa uji coba data contoh","C":"Meminta rekan yang sudah paham mengelola data warga sementara Anda hanya mengamati","D":"Memakai aplikasi lama untuk sementara sampai pelatihan resmi aplikasi baru dijadwalkan","E":"Mencoba aplikasi baru langsung pada data warga sambil memperbaiki kesalahan yang muncul"}'::jsonb,
  'A',
  'Nilai 5: belajar aman.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  969,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Aplikasi baru diluncurkan, tetapi data lama belum bermigrasi dan warga mengeluh. Anda...',
  NULL,
  '{"A":"Mendokumentasikan keluhan, menyampaikan ke tim pengembang dengan contoh kasus, dan membantu warga lewat jalur manual sementara","B":"Mendokumentasikan keluhan dan menyampaikannya ke tim pengembang tanpa membantu warga lewat jalur manual","C":"Membantu warga lewat jalur manual tanpa menyampaikan keluhan ke tim pengembang","D":"Meminta warga menunggu sampai tim pengembang menyelesaikan migrasi data lama","E":"Menyarankan warga memakai aplikasi lama tanpa izin sampai migrasi selesai"}'::jsonb,
  'A',
  'Nilai 5: solutif dan tetap melayani.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  970,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Rekan meminta kata sandi akun bersama berisi data pegawai lewat tautan dengan alasan pemeliharaan. Anda...',
  NULL,
  '{"A":"Memverifikasi lewat tim TI dan menolak memberi kata sandi lewat tautan","B":"Menolak memberi kata sandi lewat tautan tanpa memverifikasi kepada tim TI","C":"Memberi kata sandi setelah rekan menjelaskan alasan pemeliharaan lewat telepon","D":"Memberi kata sandi sementara lewat tautan lalu menggantinya setelah pemeliharaan selesai","E":"Mengabaikan permintaan itu tanpa memberi tahu tim TI maupun atasan"}'::jsonb,
  'A',
  'Nilai 5: waspada phishing dan memakai kanal resmi.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  971,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda menerima surel yang tampak dari bagian keuangan, meminta Anda mengklik tautan untuk memperbarui kata sandi sistem penggajian hari ini juga. Alamat pengirimnya sedikit berbeda dari biasanya. Sikap Anda....',
  NULL,
  '{"A":"Tidak mengklik tautan, lalu menghapus surel tersebut dari kotak masuk dan folder surel yang tersimpan, lalu menyerahkan kelanjutannya kepada pihak lain","B":"Mengklik tautan hanya untuk melihat tampilannya, tetapi tidak memasukkan kata sandi apa pun","C":"Meneruskan surel itu kepada rekan satu tim agar mereka juga memperbarui kata sandi masing-masing","D":"Tidak mengklik tautan, memverifikasi lewat kanal resmi bagian keuangan, dan melaporkan surel itu kepada tim keamanan informasi","E":"Tidak mengklik tautan, lalu memverifikasi lewat kanal resmi bagian keuangan tanpa memberi tahu pihak lain"}'::jsonb,
  'D',
  'Nilai 5: tidak mengklik, memverifikasi, dan melapor agar pihak lain terlindungi.',
  NULL,
  '{"A":3,"B":2,"C":1,"D":5,"E":4}'::jsonb,
  'published'
),
(
  'web',
  972,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Unit Anda mulai memakai aplikasi pengarsipan digital. Sebagian pegawai senior masih menyimpan dokumen di map fisik dan menolak memindahkannya karena takut hilang. Sikap Anda....',
  NULL,
  '{"A":"Membiarkan pegawai senior tetap memakai map fisik sampai mereka siap beralih dengan sendirinya, sambil berharap masalahnya mereda sendiri","B":"Menunjukkan fitur pencadangan aplikasi, mendampingi pemindahan beberapa dokumen, dan menyepakati masa transisi bersama atasan","C":"Mengusulkan kepada atasan agar pelatihan aplikasi diadakan kembali bagi seluruh pegawai senior di unit","D":"Menunjukkan fitur pencadangan aplikasi kepada pegawai senior dan mendampingi pemindahan beberapa dokumen mereka","E":"Memindahkan dokumen pegawai senior ke aplikasi tanpa memberi tahu mereka agar proses cepat selesai"}'::jsonb,
  'B',
  'Nilai 5: menjawab kekhawatiran, mendampingi, dan menyusun transisi.',
  NULL,
  '{"A":2,"B":5,"C":3,"D":4,"E":1}'::jsonb,
  'published'
),
(
  'web',
  973,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda mengelola data warga dalam berkas spreadsheet bersama. Seorang rekan meminta tautannya dibagikan ke pihak ketiga dengan akses sunting terbuka bagi siapa saja yang memegang tautan. Sikap Anda....',
  NULL,
  '{"A":"Meminta rekan menanyakan kepada pihak ketiga apakah akses seluas itu memang benar-benar dibutuhkan","B":"Menolak akses terbuka dan menjelaskan kepada rekan tentang risiko kebocoran data pribadi warga, lalu menunggu arahan atasan","C":"Menolak akses terbuka, menjelaskan risiko data pribadi, dan menawarkan berbagi data yang sudah dianonimkan dengan izin akses terbatas","D":"Membuka akses seperti diminta dengan alasan data akan dipakai untuk kepentingan bersama, agar tidak menambah beban kerja Anda dan rekan satu unit","E":"Membuka akses tetapi hanya untuk melihat saja tanpa hak sunting bagi pihak ketiga, lalu menyerahkan kelanjutannya kepada pihak lain"}'::jsonb,
  'C',
  'Nilai 5: melindungi data pribadi dan tetap menawarkan solusi aman.',
  NULL,
  '{"A":2,"B":4,"C":5,"D":1,"E":3}'::jsonb,
  'published'
),
(
  'web',
  974,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Saat menguji menu profil pada aplikasi layanan yang Anda kelola, tiba-tiba tampil data warga lain. Gejala ini belum dilaporkan siapa pun. Sikap Anda....',
  NULL,
  '{"A":"Mengabaikan gejala itu karena pengujian dilakukan di lingkungan percobaan, bukan data sebenarnya","B":"Melanjutkan pengujian untuk memastikan gejala itu muncul berulang sebelum melaporkannya, lalu menyerahkan kelanjutannya kepada pihak lain","C":"Mencatat gejala itu untuk dilaporkan pada rapat evaluasi mingguan yang dijadwalkan unit Anda","D":"Menghentikan pengujian, mendokumentasikan langkah yang memunculkan gejala, dan segera melapor kepada tim pengembang dan pimpinan","E":"Menghentikan pengujian dan segera melaporkan gejala itu kepada tim pengembang aplikasi layanan, lalu menunggu arahan atasan"}'::jsonb,
  'D',
  'Nilai 5: kebocoran data pribadi harus segera dilaporkan beserta bukti.',
  NULL,
  '{"A":1,"B":3,"C":2,"D":5,"E":4}'::jsonb,
  'published'
),
(
  'web',
  975,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda membuat presentasi dengan bantuan alat kecerdasan buatan generatif, dan hasilnya memuat beberapa angka statistik tanpa sumber. Sikap Anda....',
  NULL,
  '{"A":"Mengubah beberapa angka agar tampak berbeda dari hasil yang diberikan alat bantu, agar tidak menambah beban kerja","B":"Menyisipkan catatan bahwa angka dihasilkan alat bantu dan perlu diverifikasi oleh pembaca","C":"Memeriksa angka-angka penting pada sumber resmi dan mencantumkan sumbernya pada slide terkait, lalu menunggu arahan atasan","D":"Memakai angka tersebut karena alat itu dilatih dari data yang sangat luas dan beragam, sambil berharap masalahnya mereda sendiri","E":"Memeriksa setiap angka pada sumber resmi, mengganti atau menghapus yang tidak dapat diverifikasi, dan mencantumkan sumbernya"}'::jsonb,
  'E',
  'Nilai 5: verifikasi menyeluruh dan transparansi sumber.',
  NULL,
  '{"A":1,"B":3,"C":4,"D":2,"E":5}'::jsonb,
  'published'
),
(
  'web',
  976,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Layanan penyimpanan kantor sedang gangguan, sementara Anda harus mengirim dokumen besar berisi data internal yang dibutuhkan hari ini. Sikap Anda....',
  NULL,
  '{"A":"Meminta persetujuan atasan terlebih dahulu sebelum memakai layanan penyimpanan pribadi untuk sementara","B":"Melaporkan gangguan kepada tim TI dan meminta jalur alternatif resmi untuk mengirim dokumen tersebut, lalu menunggu arahan atasan","C":"Mengunggah dokumen ke layanan pribadi dengan kata sandi, lalu menghapusnya setelah dipakai oleh penerima","D":"Mengunggah dokumen ke layanan pribadi dan membagikan tautannya kepada seluruh pihak terkait, agar tidak menambah beban kerja Anda dan rekan satu unit","E":"Melaporkan gangguan kepada tim TI, meminta jalur alternatif resmi, dan menyiapkan dokumen agar siap diunggah begitu layanan pulih"}'::jsonb,
  'E',
  'Nilai 5: patuh pada jalur resmi dan tetap menjaga tenggat.',
  NULL,
  '{"A":3,"B":4,"C":2,"D":1,"E":5}'::jsonb,
  'published'
),
(
  'web',
  977,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda menemukan sebuah tautan di grup kantor yang mengatasnamakan pimpinan dan meminta pegawai mengisi data pribadi untuk "pembaruan kepegawaian". Tindakan Anda....',
  NULL,
  '{"A":"Tidak membuka tautan, memverifikasi ke pimpinan lewat kanal resmi, dan melapor ke tim TI","B":"Tidak membuka tautan lalu menghapus pesannya","C":"Membuka tautan untuk memeriksa kebenarannya","D":"Mengisi data karena tampaknya dari pimpinan","E":"Meneruskan tautan ke rekan agar diperiksa bersama"}'::jsonb,
  'A',
  'Nilai 5: waspada phishing dan melapor.',
  NULL,
  '{"A":5,"B":3,"C":1,"D":1,"E":2}'::jsonb,
  'published'
),
(
  'web',
  978,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Atasan mengirim dokumen rahasia lewat aplikasi pesan pribadi karena sistem kantor sedang gangguan, lalu meminta Anda menyimpannya di ponsel. Sikap Anda....',
  NULL,
  '{"A":"Mengamankan dokumen, mengusulkan pengiriman lewat kanal resmi begitu pulih, dan menghapus salinan di ponsel setelah selesai","B":"Menyimpan dokumen di ponsel sampai tugas selesai","C":"Menolak menerima dokumen itu","D":"Meneruskan dokumen ke komputer kantor lalu menghapus pesannya","E":"Menyimpan dokumen dan membagikannya ke tim lewat grup"}'::jsonb,
  'A',
  'Nilai 5: menjaga keamanan informasi dan mencari kanal sah.',
  NULL,
  '{"A":5,"B":3,"C":2,"D":4,"E":1}'::jsonb,
  'published'
),
(
  'web',
  979,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda melihat video rekayasa kecerdasan buatan yang memperlihatkan pimpinan instansi mengumumkan kebijakan palsu dan mulai dibagikan pegawai. Tindakan Anda....',
  NULL,
  '{"A":"Memverifikasi ke kanal resmi, melaporkan ke bagian humas dan TI, serta mengimbau pegawai tidak membagikannya","B":"Memverifikasi ke kanal resmi lalu memberi tahu rekan terdekat","C":"Membagikan ulang dengan peringatan bahwa video belum tentu benar","D":"Mengabaikan karena banyak video palsu beredar","E":"Membuat video bantahan dengan teknologi serupa"}'::jsonb,
  'A',
  'Nilai 5: verifikasi, lapor, dan cegah penyebaran.',
  NULL,
  '{"A":5,"B":4,"C":2,"D":1,"E":2}'::jsonb,
  'published'
),
(
  'web',
  980,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Kantor mewajibkan penyimpanan arsip digital, tetapi beberapa pegawai senior masih menyimpan berkas fisik saja. Sebagai staf, Anda....',
  NULL,
  '{"A":"Membantu memindai berkas mereka, menjelaskan manfaatnya, dan menyusun panduan singkat","B":"Menjelaskan aturannya lalu menyerahkan keputusan pada mereka","C":"Melaporkan pegawai yang belum patuh kepada atasan","D":"Memindai sendiri berkas mereka tanpa memberi tahu","E":"Menunggu sampai ada sanksi resmi"}'::jsonb,
  'A',
  'Nilai 5: mendampingi transisi secara persuasif.',
  NULL,
  '{"A":5,"B":3,"C":2,"D":3,"E":1}'::jsonb,
  'published'
),
(
  'web',
  981,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda menyadari aplikasi kantor menampilkan nomor induk kependudukan warga secara terbuka bagi semua pengguna. Tindakan Anda....',
  NULL,
  '{"A":"Melaporkan segera kepada tim TI dan atasan, meminta pembatasan akses sementara, dan mengusulkan peninjauan hak akses","B":"Melaporkan kepada tim TI saja","C":"Menutup halaman itu dari tampilan Anda saja","D":"Mencatat temuan untuk dibahas di rapat bulanan","E":"Memberi tahu rekan agar berhati-hati menggunakan aplikasi"}'::jsonb,
  'A',
  'Nilai 5: bertindak cepat dan sistemik terhadap kebocoran data.',
  NULL,
  '{"A":5,"B":4,"C":2,"D":3,"E":2}'::jsonb,
  'published'
),
(
  'web',
  982,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Untuk mempercepat penyusunan laporan, Anda ingin memakai alat kecerdasan buatan umum dengan memasukkan data internal instansi. Langkah yang paling tepat....',
  NULL,
  '{"A":"Memeriksa kebijakan instansi tentang penggunaan alat itu dan memakai data yang telah dianonimkan atau disetujui","B":"Memakainya langsung karena hanya untuk membantu bahasa laporan","C":"Memakainya setelah menghapus nama pegawai dari data","D":"Menanyakan rekan yang pernah memakainya","E":"Tidak memakainya sama sekali dalam kondisi apa pun"}'::jsonb,
  'A',
  'Nilai 5: memanfaatkan teknologi sambil menjaga kerahasiaan.',
  NULL,
  '{"A":5,"B":2,"C":3,"D":3,"E":2}'::jsonb,
  'published'
),
(
  'web',
  983,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Tim Anda menolak pindah ke platform kerja baru karena sudah nyaman dengan cara lama, padahal platform lama akan dihentikan. Tindakan Anda....',
  NULL,
  '{"A":"Mengadakan sesi uji coba singkat, memetakan kekhawatiran tim, dan menyiapkan panduan penggunaan","B":"Meminta tim pindah karena instruksi kantor sudah jelas","C":"Menunda migrasi sampai tim siap","D":"Memindahkan data tim tanpa memberi tahu agar cepat selesai","E":"Memakai platform baru sendiri dan membiarkan tim"}'::jsonb,
  'A',
  'Nilai 5: mengelola perubahan dengan melibatkan tim.',
  NULL,
  '{"A":5,"B":3,"C":2,"D":1,"E":2}'::jsonb,
  'published'
),
(
  'web',
  984,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda diminta memublikasikan data statistik layanan di situs kantor, tetapi sebagian data memuat identitas penerima bantuan. Tindakan Anda....',
  NULL,
  '{"A":"Menyamarkan atau menghapus identitas, memastikan data yang tampil agregat, dan meminta persetujuan atasan sebelum terbit","B":"Menerbitkan seluruh data agar transparan","C":"Menerbitkan data tanpa kolom nama saja","D":"Menunda penerbitan tanpa memberi tahu atasan","E":"Menerbitkan data lalu menghapusnya bila ada keberatan"}'::jsonb,
  'A',
  'Nilai 5: transparan sekaligus melindungi data pribadi.',
  NULL,
  '{"A":5,"B":1,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  985,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Atasan meminta Anda memakai aplikasi pelaporan baru yang belum Anda kuasai. Sikap yang tepat adalah...',
  NULL,
  '{"A":"Tetap memakai cara lama","B":"Meminta rekan mengerjakannya","C":"Menunggu sampai ada paksaan","D":"Mempelajarinya lewat panduan atau pelatihan, bertanya ke rekan, lalu memakainya dan berbagi tips","E":"Mengeluh bahwa aplikasi merepotkan"}'::jsonb,
  'D',
  'Nilai 5: mau belajar teknologi baru dan membantu rekan.',
  NULL,
  '{"A":4,"B":3,"C":2,"D":5,"E":1}'::jsonb,
  'published'
),
(
  'web',
  986,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda menerima email yang mengaku dari admin dan meminta kata sandi akun. Tindakan Anda...',
  NULL,
  '{"A":"Menghapusnya tanpa memberi tahu","B":"Membalas dengan kata sandi","C":"Meneruskannya ke semua rekan","D":"Tidak menanggapi dan melaporkannya ke tim TI sebagai upaya phishing","E":"Mengklik tautannya untuk memastikan"}'::jsonb,
  'D',
  'Nilai 5: menghindari risiko dan melaporkan agar rekan lain terlindungi.',
  NULL,
  '{"A":4,"B":3,"C":2,"D":5,"E":1}'::jsonb,
  'published'
),
(
  'web',
  987,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Kantor memakai aplikasi baru yang belum Anda kuasai. Sikap Anda...',
  NULL,
  '{"A":"Mempelajari panduan, ikut pelatihan, lalu berbagi ilmu ke rekan","B":"Menunggu rekan lain mengerjakan","C":"Memakai cara lama diam-diam","D":"Mengeluh ke atasan","E":"Menolak memakainya"}'::jsonb,
  'A',
  'Nilai 5: adaptif dan berbagi pengetahuan.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  988,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Data penting kerja hanya tersimpan di komputer pribadi Anda. Tindakan Anda...',
  NULL,
  '{"A":"Menyimpan di flashdisk pribadi","B":"Mencadangkannya secara berkala ke penyimpanan resmi kantor","C":"Menghapus yang lama","D":"Mengirim ke surel pribadi","E":"Membiarkan saja"}'::jsonb,
  'B',
  'Nilai 5: aman, terkelola, dan sesuai kebijakan kantor.',
  NULL,
  '{"A":4,"B":5,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  989,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Rekan meminjam akun Anda untuk menyelesaikan pekerjaannya. Sikap Anda...',
  NULL,
  '{"A":"Memberikan asal diawasi","B":"Memberikan karena sama-sama sekantor","C":"Memberikan lalu mengganti kata sandi","D":"Menolak tanpa penjelasan","E":"Menolak dengan sopan dan membantu rekan mengurus hak akses lewat prosedur resmi"}'::jsonb,
  'E',
  'Nilai 5: menjaga keamanan akun dan tetap membantu lewat jalur benar.',
  NULL,
  '{"A":4,"B":3,"C":2,"D":1,"E":5}'::jsonb,
  'published'
),
(
  'web',
  990,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda menemukan cara mengotomatiskan laporan rutin yang menghemat waktu. Tindakan Anda...',
  NULL,
  '{"A":"Menerapkannya tanpa izin","B":"Menyimpannya untuk diri sendiri","C":"Memakainya sendiri diam-diam","D":"Mengabaikannya","E":"Mengusulkan ke atasan lengkap dengan uji coba dan panduan agar bisa dipakai tim"}'::jsonb,
  'E',
  'Nilai 5: inovatif, transparan, dan bermanfaat bagi tim.',
  NULL,
  '{"A":4,"B":3,"C":2,"D":1,"E":5}'::jsonb,
  'published'
),
(
  'web',
  991,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Kantor mengganti aplikasi absensi dengan sistem baru yang belum Anda kuasai. Sikap terbaik Anda adalah...',
  NULL,
  '{"A":"Mempelajari panduannya, mencoba, dan bertanya ke tim TI bila ada kendala","B":"Tetap memakai cara lama tanpa izin","C":"Menolak memakai sistem baru","D":"Menunggu rekan mengisikan absen","E":"Mengeluh kepada seluruh rekan"}'::jsonb,
  'A',
  'Nilai 5: proaktif belajar dan mencari bantuan yang tepat.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  992,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda menerima email berisi tautan yang meminta kata sandi akun dinas dengan alasan verifikasi mendesak. Tindakan terbaik Anda adalah...',
  NULL,
  '{"A":"Mengklik tautan dan mengisi kata sandi","B":"Meneruskan email ke seluruh rekan","C":"Tidak mengklik, melaporkan dugaan phishing ke tim TI, lalu menghapus email","D":"Membalas email menanyakan alasannya","E":"Mengganti kata sandi lewat tautan itu"}'::jsonb,
  'C',
  'Nilai 5: tidak memberikan kredensial dan melaporkan ancaman ke pihak berwenang.',
  NULL,
  '{"A":4,"B":3,"C":5,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  993,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Untuk menyusun laporan, Anda menemukan data kebijakan di media sosial yang sumbernya tidak jelas. Tindakan terbaik Anda adalah...',
  NULL,
  '{"A":"Meminta rekan memastikan tanpa mengecek sendiri","B":"Langsung mengutipnya agar cepat selesai","C":"Mencocokkannya dengan sumber resmi seperti situs instansi atau peraturan sebelum dipakai","D":"Menggunakan data itu tetapi menyebutnya perkiraan","E":"Menyalinnya tanpa mencantumkan sumber"}'::jsonb,
  'C',
  'Nilai 5: memverifikasi lewat sumber resmi sebelum memakai informasi.',
  NULL,
  '{"A":4,"B":3,"C":5,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  994,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda menerima surel dari alamat tidak dikenal yang meminta data login. Anda...',
  NULL,
  '{"A":"Meneruskan ke rekan untuk dicek","B":"Tidak membalas, melaporkan ke tim TI, dan menghapus surel itu","C":"Membuka tautannya untuk memastikan","D":"Mengabaikan tanpa melapor","E":"Membalas dengan data yang diminta"}'::jsonb,
  'B',
  'Nilai 5: waspada phishing dan melapor.',
  NULL,
  '{"A":4,"B":5,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  995,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda perlu menyimpan dokumen kantor yang berisi data pegawai. Cara terbaik...',
  NULL,
  '{"A":"Menyimpan di penyimpanan resmi kantor dengan akses terbatas","B":"Menyimpan di grup pesan","C":"Menyimpan di flash disk pribadi","D":"Mengirim ke surel pribadi","E":"Menyimpan di komputer umum"}'::jsonb,
  'A',
  'Nilai 5: data dijaga di sistem resmi.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  996,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Aplikasi kantor yang baru mengubah cara Anda bekerja. Anda...',
  NULL,
  '{"A":"Meminta rekan mengerjakan semuanya","B":"Mengikuti pelatihan, mencoba fitur, dan bertanya bila kesulitan","C":"Menolak memakainya","D":"Menunggu sampai dipaksa","E":"Tetap memakai cara lama"}'::jsonb,
  'B',
  'Nilai 5: adaptif terhadap teknologi baru.',
  NULL,
  '{"A":4,"B":5,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  997,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda menemukan rekan memasang aplikasi tidak resmi di komputer kantor. Anda...',
  NULL,
  '{"A":"Ikut memasang","B":"Menghapusnya diam-diam tanpa memberi tahu","C":"Membiarkan","D":"Mengingatkan risiko keamanannya dan menyarankan melapor ke TI","E":"Memotretnya untuk bahan bercanda"}'::jsonb,
  'D',
  'Nilai 5: menjaga keamanan sistem secara terbuka.',
  NULL,
  '{"A":4,"B":3,"C":2,"D":5,"E":1}'::jsonb,
  'published'
),
(
  'web',
  998,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Kata sandi akun kerja Anda sudah lama tidak diganti. Anda...',
  NULL,
  '{"A":"Menggantinya berkala dengan kombinasi kuat dan tidak membagikannya","B":"Membiarkan karena merasa aman","C":"Memakai kata sandi yang sama untuk semua akun","D":"Menuliskannya di kertas di meja","E":"Memberitahu rekan agar mudah dibantu"}'::jsonb,
  'A',
  'Nilai 5: kebersihan keamanan akun.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  999,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Atasan meminta Anda menyelesaikan tugas sesuai SOP yang menurut Anda kurang efisien. Sikap Anda...',
  NULL,
  '{"A":"Mengerjakan sesuai SOP lalu mengusulkan perbaikan kepada atasan beserta data pendukungnya","B":"Mengerjakan sesuai SOP lalu menyampaikan keberatan secara lisan kepada atasan tanpa data pendukung","C":"Mengerjakan sesuai SOP tanpa berkomentar agar tidak menimbulkan perdebatan dengan atasan","D":"Mengerjakan sesuai SOP sambil menyampaikan ketidakpuasan kepada rekan sekantor","E":"Mengerjakan dengan cara yang menurut Anda lebih efisien tanpa memberi tahu atasan"}'::jsonb,
  'A',
  'Nilai 5: patuh prosedur sekaligus konstruktif.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1000,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Satu jam sebelum rapat, rekan Anda sakit dan Anda diminta menggantikannya padahal materinya belum Anda kuasai. Tindakan Anda...',
  NULL,
  '{"A":"Mempelajari bahan, menanyakan inti materi kepada rekan atau atasan, hadir, dan menindaklanjuti hasil rapat","B":"Mempelajari bahan seperlunya, hadir, dan meminta salinan notulen rapat untuk ditindaklanjuti","C":"Hadir dengan membaca bahan seadanya dan hanya mencatat hal-hal yang dibahas","D":"Meminta atasan menunjuk pegawai lain yang lebih menguasai materi rapat","E":"Tidak hadir karena materinya belum dikuasai dan rapat dapat dijadwalkan ulang"}'::jsonb,
  'A',
  'Nilai 5: bertanggung jawab dan siap belajar cepat.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1001,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda mengetahui ada sisa anggaran kegiatan kecil yang bisa dipakai pribadi tanpa ketahuan. Tindakan Anda...',
  NULL,
  '{"A":"Tidak memakainya dan melaporkan sisa anggaran kepada bendahara sesuai mekanisme yang berlaku","B":"Tidak memakainya dan menanyakan kepada bendahara ke mana sisa anggaran sebaiknya dikembalikan","C":"Tidak memakainya tetapi membiarkan sisa anggaran tanpa dilaporkan karena nilainya kecil","D":"Memakainya untuk keperluan kantor lain tanpa pencatatan karena sifatnya mendesak","E":"Meminjam sementara dan mengembalikannya sebelum akhir bulan agar tidak ada yang tahu"}'::jsonb,
  'A',
  'Nilai 5: akuntabel dan transparan.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1002,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Rekan Anda dimutasi sehingga beban kerja Anda bertambah dan belum ada pengganti. Tindakan Anda...',
  NULL,
  '{"A":"Mendata tugas yang bertambah, lalu mengusulkan prioritas dan pembagian kerja kepada atasan","B":"Mengerjakan tugas tambahan sambil menyampaikan kepada atasan bahwa bebannya meningkat","C":"Mengerjakan seluruhnya dengan lembur sampai ada pegawai pengganti yang ditetapkan","D":"Mengerjakan tugas yang mudah dan mendesak lebih dulu, sisanya menunggu pengganti datang","E":"Menyampaikan keluhan kepada rekan karena atasan tidak memperhatikan beban kerja"}'::jsonb,
  'A',
  'Nilai 5: solutif dan berbasis data.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1003,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Atasan memerintahkan lembur menyelesaikan laporan, tetapi Anda menemukan data sumbernya keliru. Tindakan Anda...',
  NULL,
  '{"A":"Menyampaikan temuan beserta bukti, mengusulkan verifikasi cepat, dan menyiapkan laporan dengan catatan","B":"Menyampaikan temuan secara lisan kepada atasan lalu menyelesaikan laporan sesuai data yang ada","C":"Menyelesaikan laporan sesuai data yang ada lalu menyampaikan kekeliruannya setelah laporan dikirim","D":"Memperbaiki sendiri data yang keliru lalu mencatatnya dalam arsip pribadi tanpa memberi tahu atasan","E":"Menunda laporan sampai unit pemberi data memperbaikinya tanpa memberi tahu atasan"}'::jsonb,
  'A',
  'Nilai 5: jujur, memberi bukti, dan tetap solutif.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1004,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Rekan meminta Anda menandatangani daftar hadir untuknya karena ia terlambat satu jam. Anda...',
  NULL,
  '{"A":"Menolak, menjelaskan alasannya, dan menyarankan ia melapor sendiri kepada atasan","B":"Menolak, lalu melaporkannya langsung kepada atasan tanpa memberi kesempatan rekan melapor sendiri","C":"Menolak dengan sopan tanpa menjelaskan alasannya dan tidak menindaklanjuti apa pun","D":"Menandatangani tetapi menegur rekan agar tidak mengulanginya di kemudian hari","E":"Menandatangani karena rekan itu terburu-buru dan berjanji melapor sendiri kepada atasan"}'::jsonb,
  'A',
  'Nilai 5: menolak pemalsuan dan tetap membantu menyelesaikan masalah.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1005,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda diminta mengerjakan tugas di luar bidang Anda dengan tenggat besok. Anda...',
  NULL,
  '{"A":"Menyampaikan keterbatasan, meminta panduan atau rekan ahli, dan mengerjakan bagian yang mampu","B":"Menyampaikan keterbatasan kepada atasan dan meminta tugas dialihkan kepada rekan yang lebih ahli","C":"Mengerjakan seadanya dengan mencari rujukan sendiri tanpa memberi tahu atasan soal keterbatasannya","D":"Menunda sampai ada instruksi tambahan karena tugas itu di luar bidang Anda","E":"Menyerahkan tugas kepada rekan tanpa izin agar tenggat tetap terpenuhi"}'::jsonb,
  'A',
  'Nilai 5: jujur akan kemampuan dan proaktif mencari solusi.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1006,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Atasan meminta Anda merevisi laporan yang menurut Anda sudah benar, tanpa alasan. Anda...',
  NULL,
  '{"A":"Menanyakan bagian yang perlu diperbaiki, merevisi sesuai arahan selama tidak melanggar aturan, dan menyimpan versi awal","B":"Menanyakan bagian yang perlu diperbaiki lalu merevisi sesuai arahan tanpa menyimpan versi awal","C":"Merevisi sesuai permintaan tanpa bertanya agar tidak terjadi perdebatan dengan atasan","D":"Merevisi laporan itu sambil menyampaikan ketidaksetujuan kepada rekan sekantor","E":"Meminta rekan yang lebih berpengalaman merevisi laporan itu atas nama Anda"}'::jsonb,
  'A',
  'Nilai 5: terbuka pada arahan dan tetap akuntabel.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1007,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Dua atasan memberi perintah berbeda untuk tugas yang sama. Anda...',
  NULL,
  '{"A":"Menyampaikan perbedaan itu kepada keduanya, meminta klarifikasi, lalu mengerjakan sesuai kesepakatan","B":"Menyampaikan perbedaan itu kepada atasan yang lebih senior dan mengerjakan sesuai arahannya","C":"Mengerjakan dua versi tugas sekaligus agar siap bila salah satu atasan meminta hasilnya","D":"Menunda tugas sampai kedua atasan menyadari sendiri adanya perbedaan perintah mereka","E":"Memilih perintah yang lebih sesuai dengan beban kerja Anda tanpa memberi tahu keduanya"}'::jsonb,
  'A',
  'Nilai 5: komunikasi transparan.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1008,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda melihat cara menyelesaikan tugas lebih cepat dengan melewati satu tahap verifikasi yang dianggap formalitas. Anda...',
  NULL,
  '{"A":"Tetap menjalankan verifikasi dan mengusulkan penyederhanaan lewat jalur resmi","B":"Tetap menjalankan verifikasi dan menyampaikan usulan penyederhanaan secara lisan kepada rekan","C":"Menjalankan verifikasi sambil menyampaikan ketidakpuasan atas tahapan yang dianggap formalitas","D":"Meminta rekan melewati tahap itu dan memeriksa hasilnya sendiri sebelum dikirim","E":"Melewati tahap itu secara diam-diam karena hasilnya tetap sama dan lebih efisien"}'::jsonb,
  'A',
  'Nilai 5: patuh prosedur dan memperbaiki lewat jalur resmi.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1009,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Rekan senior meminta Anda mengerjakan tugasnya dengan alasan Anda lebih menguasai. Anda...',
  NULL,
  '{"A":"Membantu sebagian, memastikan tanggung jawab tetap pada yang bersangkutan, dan memberi tahu atasan bila beban berlebih","B":"Membantu sebagian dan memastikan tanggung jawab tetap pada yang bersangkutan tanpa memberi tahu atasan","C":"Mengerjakan seluruhnya dengan syarat rekan senior itu membantu pekerjaan Anda di lain waktu","D":"Menolak dengan sopan dan menyarankan rekan senior meminta bantuan kepada rekan lain","E":"Mengerjakan seluruhnya karena menghormati rekan senior meskipun beban kerja Anda bertambah"}'::jsonb,
  'A',
  'Nilai 5: kolaboratif dan akuntabel.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1010,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Saat audit, sebagian dokumen yang diminta belum lengkap. Anda...',
  NULL,
  '{"A":"Melengkapi yang bisa, jujur menyatakan yang belum ada, dan menyampaikan rencana perbaikan","B":"Melengkapi yang bisa dan jujur menyatakan yang belum ada tanpa menyampaikan rencana perbaikan","C":"Menjelaskan bahwa dokumen yang belum ada sedang disusun dan akan diserahkan setelah audit selesai","D":"Meminta rekan unit lain melengkapi dokumen itu agar audit tidak terhenti","E":"Membuat dokumen susulan dengan tanggal mundur agar tampak sesuai waktu pelaksanaan kegiatan"}'::jsonb,
  'A',
  'Nilai 5: jujur dan solutif.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1011,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Relasi menawarkan pekerjaan sampingan bagi hasil yang berhubungan dengan instansi Anda. Anda...',
  NULL,
  '{"A":"Menolak karena berpotensi konflik kepentingan, dan berkonsultasi dengan atasan bila perlu","B":"Menolak karena berpotensi konflik kepentingan tanpa menyampaikan penawaran itu kepada atasan","C":"Menerima dengan syarat tidak memakai fasilitas kantor dan hanya bekerja di luar jam dinas","D":"Menerima setelah memberi tahu atasan bahwa pekerjaan itu dilakukan di luar jam kerja","E":"Menyerahkan pekerjaan itu kepada kerabat agar Anda sendiri tidak terlibat secara langsung"}'::jsonb,
  'A',
  'Nilai 5: menghindari konflik kepentingan.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1012,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda salah mengirim laporan kepada pihak luar yang tidak berhak. Anda...',
  NULL,
  '{"A":"Segera melapor ke atasan dan meminta pihak itu menghapusnya","B":"Diam menunggu respons dari pihak tersebut sampai ada kabar","C":"Menarik kembali tanpa memberi tahu siapa pun karena takut ditegur","D":"Mengganti pesan dengan versi benar tanpa penjelasan agar tidak terlihat","E":"Menyalahkan sistem pengiriman surel yang tidak memberi peringatan"}'::jsonb,
  'A',
  'Nilai 5: jujur dan memitigasi risiko.',
  NULL,
  '{"A":5,"B":1,"C":2,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1013,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Tenggat mendekat dan Anda sakit ringan. Anda...',
  NULL,
  '{"A":"Memberi tahu atasan dan menyerahkan progres","B":"Memaksakan bekerja tanpa memberi tahu karena tidak enak hati kepada atasan","C":"Tidak masuk tanpa kabar karena kondisi dirasa tidak memungkinkan bekerja","D":"Meminta rekan menyelesaikan seluruhnya tanpa menjelaskan kondisi Anda","E":"Menyerahkan hasil seadanya agar cepat selesai dan bisa segera beristirahat"}'::jsonb,
  'A',
  'Nilai 5: komunikatif dan bertanggung jawab.',
  NULL,
  '{"A":5,"B":3,"C":1,"D":2,"E":2}'::jsonb,
  'published'
),
(
  'web',
  1014,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda menemukan kesalahan kecil pada laporan rekan yang telah disetujui atasan. Anda...',
  NULL,
  '{"A":"Memberi tahu rekan dan atasan secara santun sebelum laporan dipakai","B":"Memberi tahu rekan secara santun dan memintanya melapor sendiri kepada atasan","C":"Memberi tahu rekan saja karena kesalahannya kecil dan laporan sudah disetujui","D":"Memperbaiki sendiri tanpa memberi tahu agar tidak menimbulkan keributan","E":"Membiarkan karena laporan itu sudah disetujui atasan dan bukan tanggung jawab Anda"}'::jsonb,
  'A',
  'Nilai 5: jujur dan santun.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1015,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda diminta menyusun laporan dengan data yang bisa disesuaikan agar target tampak tercapai. Anda...',
  NULL,
  '{"A":"Menyusun apa adanya dan menyertakan analisis kendala","B":"Menyusun apa adanya dan menyampaikan keberatan secara lisan tanpa analisis kendala","C":"Menyesuaikan sedikit angka yang selisihnya kecil lalu mencatat penyesuaian itu secara pribadi","D":"Menuruti perintah atasan karena penyusunan target menjadi kewenangannya","E":"Meminta rekan menyusun laporan itu agar Anda tidak bertanggung jawab atas datanya"}'::jsonb,
  'A',
  'Nilai 5: data apa adanya.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1016,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Pekerjaan Anda selesai lebih cepat dari jadwal. Anda...',
  NULL,
  '{"A":"Memberi tahu atasan dan menawarkan bantuan pada tugas yang mendesak","B":"Memeriksa ulang dan memperbaiki hasil lalu melaporkannya kepada atasan","C":"Memeriksa ulang hasil lalu menunggu tugas berikutnya tanpa melapor kepada atasan","D":"Menunda penyerahan pekerjaan sampai mendekati jadwal agar tidak diberi tugas tambahan","E":"Meninggalkan kantor lebih awal karena pekerjaan yang menjadi tanggung jawab sudah selesai"}'::jsonb,
  'A',
  'Nilai 5: proaktif.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1017,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Atasan baru mengubah cara kerja yang sudah Anda kuasai. Anda...',
  NULL,
  '{"A":"Mempelajari cara baru, menyampaikan kekhawatiran dengan data, lalu mengikuti keputusan","B":"Mempelajari cara baru dan mengikutinya tanpa menyampaikan kekhawatiran apa pun","C":"Mengikuti cara baru sambil menyampaikan keberatan kepada rekan sekantor","D":"Tetap memakai cara lama untuk tugas yang sudah dikuasai sampai ada penjelasan lebih lanjut","E":"Mengajak rekan menolak perubahan itu agar atasan meninjau ulang keputusannya"}'::jsonb,
  'A',
  'Nilai 5: adaptif dan konstruktif.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1018,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Atasan menegur Anda di depan rekan karena kesalahan kecil, padahal Anda yakin tidak salah. Anda...',
  NULL,
  '{"A":"Diam lalu meminta waktu bicara empat mata dengan membawa bukti","B":"Diam lalu meminta waktu bicara empat mata tanpa membawa bukti","C":"Menerima teguran dan meminta maaf agar suasana kembali tenang dengan cepat","D":"Menunjukkan bukti saat itu juga agar rekan lain mengetahui bahwa Anda tidak salah","E":"Mengadukan teguran itu kepada pimpinan di atas atasan Anda secara tertulis"}'::jsonb,
  'A',
  'Nilai 5: menjaga suasana dan tetap meluruskan secara tepat.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1019,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda diminta mengerjakan tugas mendesak di akhir pekan tanpa lembur resmi. Anda...',
  NULL,
  '{"A":"Menanyakan dasar penugasan dan skema kompensasi, lalu menyesuaikan sesuai aturan","B":"Menyanggupi tugas itu lalu menanyakan skema kompensasi setelah pekerjaan selesai","C":"Menyanggupi tugas itu tanpa menanyakan kompensasi karena sifatnya mendesak","D":"Menolak karena tidak ada lembur resmi dan meminta tugas dijadwalkan ulang","E":"Mengerjakan sebagian saja di akhir pekan dan sisanya pada hari kerja"}'::jsonb,
  'A',
  'Nilai 5: tertib aturan dan tetap bertanggung jawab.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1020,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda mendapat tugas baru di luar uraian pekerjaan yang belum pernah dikerjakan. Anda...',
  NULL,
  '{"A":"Mempelajari, bertanya kepada yang berpengalaman, dan melaporkan progres berkala","B":"Mempelajari dan bertanya kepada yang berpengalaman tanpa melaporkan progres berkala","C":"Mempelajari sendiri dari referensi yang tersedia lalu menyerahkan hasil pada tenggat","D":"Meminta atasan mengalihkan tugas kepada rekan yang sudah pernah mengerjakannya","E":"Mengerjakan seadanya dengan cara yang sudah dikuasai tanpa memberi tahu atasan"}'::jsonb,
  'A',
  'Nilai 5: proaktif belajar dan transparan.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1021,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Atasan menugaskan Anda memimpin proyek padahal ada rekan lebih senior yang tampak kecewa. Anda...',
  NULL,
  '{"A":"Menerima tugas, berkomunikasi terbuka, dan melibatkan rekan senior sesuai keahliannya","B":"Menerima tugas dan berkomunikasi terbuka tanpa melibatkan rekan senior secara khusus","C":"Menerima tugas lalu meminta rekan senior menjadi pemimpin agar tidak ada ketegangan","D":"Menerima tugas dan memimpin sesuai rencana sendiri tanpa memedulikan kekecewaan rekan","E":"Menolak penugasan itu dan menyarankan rekan senior yang memimpin proyeknya"}'::jsonb,
  'A',
  'Nilai 5: bertanggung jawab dan inklusif.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1022,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Atasan menugaskan target yang hanya tercapai bila prosedur dilanggar. Anda...',
  NULL,
  '{"A":"Menyampaikan kendala dengan data dan mengusulkan solusi sesuai prosedur","B":"Menyampaikan kendala secara lisan tanpa data dan menunggu arahan atasan berikutnya","C":"Mengerjakan sesuai prosedur sampai batas yang mampu tanpa menyampaikan kendala","D":"Melonggarkan prosedur sedikit saja agar target tercapai dan mencatatnya secara pribadi","E":"Mengikuti perintah atasan karena tanggung jawab hasil berada pada atasan"}'::jsonb,
  'A',
  'Nilai 5: patuh aturan dan solutif.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1023,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda salah mencatat data yang sudah dilaporkan ke pimpinan. Anda...',
  NULL,
  '{"A":"Segera melapor, memperbaiki, dan mencegah terulang","B":"Segera melapor dan memperbaiki tanpa menyusun langkah pencegahan agar tidak terulang","C":"Memperbaiki data lebih dulu lalu melapor setelah laporan perbaikan siap dikirim","D":"Memperbaiki data secara diam-diam karena kesalahannya kecil dan belum dipakai pimpinan","E":"Menunggu sampai ada yang menemukan kesalahan itu sebelum menyampaikannya kepada pimpinan"}'::jsonb,
  'A',
  'Nilai 5: jujur dan bertanggung jawab.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1024,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Satu laporan harus selesai hari ini, padahal ada dua tugas mendesak lain dari atasan berbeda. Anda...',
  NULL,
  '{"A":"Memetakan tenggat dan dampak, menyampaikan konflik prioritas kepada kedua atasan, lalu menyepakati urutan","B":"Memetakan tenggat dan dampak lalu memilih urutan sendiri tanpa menyampaikan kepada kedua atasan","C":"Menyampaikan konflik prioritas kepada satu atasan saja dan mengikuti arahannya","D":"Mengerjakan tugas dari atasan yang lebih senior terlebih dahulu tanpa memberi tahu atasan lain","E":"Mengerjakan semuanya sekaligus sampai larut malam tanpa menyampaikan kendala kepada siapa pun"}'::jsonb,
  'A',
  'Nilai 5: komunikatif dalam menentukan prioritas.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1025,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda mengetahui kesalahan kecil di laporan yang sudah dikirim dan belum ada yang menyadarinya. Anda...',
  NULL,
  '{"A":"Segera menyampaikan kesalahan, mengirim revisi, dan menjelaskan perbaikannya","B":"Segera mengirim revisi tanpa menyampaikan kesalahan sebelumnya dan perbaikannya","C":"Menyampaikan kesalahan itu pada laporan periode berikutnya agar tidak mengganggu pimpinan","D":"Menunggu sampai ada yang menyadari kesalahan itu sebelum menyampaikannya","E":"Membiarkan karena kesalahannya kecil dan tidak memengaruhi isi laporan secara keseluruhan"}'::jsonb,
  'A',
  'Nilai 5: jujur dan akuntabel.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1026,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Mitra menawarkan jamuan mewah saat Anda sedang menilai proposalnya. Anda...',
  NULL,
  '{"A":"Menolak sopan, menyatakan sedang menilai, dan melapor ke atasan bila ada tekanan","B":"Menolak sopan dan menyatakan sedang menilai tanpa melapor walaupun ada tekanan","C":"Menerima jamuan dengan membayar bagian Anda sendiri agar tidak menjadi gratifikasi","D":"Menerima jamuan lalu melapor ke atasan setelah penilaian proposal selesai","E":"Meminta rekan penilai lain menghadiri jamuan itu agar Anda tidak terlibat"}'::jsonb,
  'A',
  'Nilai 5: menghindari konflik kepentingan.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1027,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda menemukan satu angka keliru pada laporan yang Anda serahkan minggu lalu. Angka itu belum dipakai untuk keputusan apa pun dan atasan belum menyadarinya. Sikap Anda....',
  NULL,
  '{"A":"Mengganti berkas laporan lama dengan versi yang benar tanpa memberi tahu siapa pun, agar tidak menambah beban kerja","B":"Menunggu sampai ada pihak yang mempertanyakan angka tersebut baru kemudian memperbaikinya","C":"Segera menyampaikan kekeliruan kepada atasan, menyerahkan laporan perbaikan, dan menyusun langkah pengecekan agar tidak terulang","D":"Segera menyampaikan kekeliruan kepada atasan dan menyerahkan laporan perbaikan kepada beliau, lalu menunggu arahan atasan sebelum bertindak lebih jauh","E":"Memperbaiki angka itu pada laporan berikutnya karena belum berdampak pada keputusan apa pun"}'::jsonb,
  'C',
  'Nilai 5: jujur, bertanggung jawab, dan mencegah pengulangan.',
  NULL,
  '{"A":1,"B":2,"C":5,"D":4,"E":3}'::jsonb,
  'published'
),
(
  'web',
  1028,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Atasan memberi dua tugas mendesak dengan tenggat sama, sementara Anda menilai keduanya tidak mungkin selesai berkualitas bila dikerjakan bersamaan. Sikap Anda....',
  NULL,
  '{"A":"Menyampaikan estimasi waktu tiap tugas kepada atasan dan memohon penentuan prioritas di antara keduanya, lalu menunggu arahan atasan","B":"Menyampaikan estimasi waktu tiap tugas, memohon penentuan prioritas, dan mengusulkan pembagian tugas atau perpanjangan tenggat salah satunya","C":"Menyerahkan salah satu tugas kepada rekan tanpa memberi tahu atasan yang memberi tugas, agar tidak menambah beban kerja","D":"Mengerjakan tugas yang lebih mudah lebih dahulu, lalu melapor bila tugas lainnya tidak sempat selesai, lalu menyerahkan kelanjutannya kepada pihak lain","E":"Mengerjakan keduanya sekaligus dengan menurunkan ketelitian agar semuanya selesai tepat waktu, sambil berharap masalahnya mereda sendiri"}'::jsonb,
  'B',
  'Nilai 5: komunikasi terbuka disertai usulan solusi.',
  NULL,
  '{"A":4,"B":5,"C":1,"D":3,"E":2}'::jsonb,
  'published'
),
(
  'web',
  1029,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda mendapati prosedur kerja lama di unit Anda tidak sesuai peraturan terbaru, tetapi atasan dan rekan senior sudah terbiasa memakainya. Sikap Anda....',
  NULL,
  '{"A":"Mempelajari peraturan terbaru, menyampaikan temuan beserta rujukan aturannya kepada atasan, dan mengusulkan penyesuaian prosedur","B":"Menyampaikan temuan kepada atasan beserta rujukan aturan terbarunya agar dapat dipertimbangkan, lalu menunggu arahan atasan sebelum bertindak lebih jauh","C":"Tetap mengikuti prosedur lama tetapi menjalankannya dengan lebih hati-hati dan lebih teliti","D":"Menjalankan prosedur sesuai peraturan terbaru sendiri tanpa memberi tahu siapa pun, agar tidak menambah beban kerja","E":"Menanyakan kepada rekan senior apakah prosedur lama masih boleh dipakai di unit tersebut"}'::jsonb,
  'A',
  'Nilai 5: dasar aturan, komunikasi ke atasan, dan usulan perbaikan.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":1,"E":2}'::jsonb,
  'published'
),
(
  'web',
  1030,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Atasan dari unit lain meminta Anda menyelesaikan tugasnya karena Anda dianggap lebih menguasai bidang itu, padahal tugas Anda sendiri belum selesai dan atasan langsung belum mengetahuinya. Sikap Anda....',
  NULL,
  '{"A":"Menyampaikan permintaan itu kepada atasan langsung dan menunggu arahan beliau sebelum menjawab, lalu menunggu arahan atasan","B":"Menyampaikan kondisi pekerjaan kepada atasan langsung, meminta arahan prioritas, lalu memberi tahu atasan unit lain hasil keputusannya","C":"Menolak dengan alasan tugas Anda belum selesai tanpa menjelaskan lebih lanjut kepada atasan itu","D":"Menyanggupi bila ada waktu luang setelah tugas Anda sendiri selesai dikerjakan semuanya, lalu menyerahkan kelanjutannya kepada pihak lain","E":"Mengerjakan tugas itu diam-diam di luar tugas Anda agar tidak merepotkan siapa pun, agar tidak menambah beban kerja"}'::jsonb,
  'B',
  'Nilai 5: transparan, mengikuti rantai atasan, dan menutup komunikasi.',
  NULL,
  '{"A":4,"B":5,"C":2,"D":3,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1031,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Satu jam sebelum tenggat, Anda menyadari ada kesalahan hitung pada laporan yang sudah Anda kirim kepada atasan. Tindakan Anda....',
  NULL,
  '{"A":"Segera menghubungi atasan, mengakui kesalahan, mengirim laporan perbaikan, dan menjelaskan cara mencegah terulang","B":"Mengirim laporan perbaikan tanpa menyebut kesalahan sebelumnya","C":"Menunggu atasan menemukan kesalahan itu lebih dulu","D":"Menjelaskan bahwa kesalahan berasal dari data pihak lain","E":"Mengabaikan karena selisihnya kecil"}'::jsonb,
  'A',
  'Nilai 5: akuntabel dan korektif.',
  NULL,
  '{"A":5,"B":3,"C":2,"D":1,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1032,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Atasan meminta Anda menyelesaikan dua tugas besar yang tenggatnya bersamaan, dan keduanya tidak mungkin selesai sendiri. Sikap Anda....',
  NULL,
  '{"A":"Menyampaikan beban dan estimasi waktu, mengusulkan prioritas serta pembagian tugas, lalu mengerjakan yang paling mendesak dulu","B":"Mengerjakan keduanya dengan lembur setiap hari","C":"Mengerjakan satu tugas dan menunda tugas lain tanpa memberi tahu","D":"Meminta atasan memilih salah satu tugas","E":"Mengeluhkan beban kepada rekan dan menunggu bantuan"}'::jsonb,
  'A',
  'Nilai 5: komunikatif, realistis, dan solutif.',
  NULL,
  '{"A":5,"B":3,"C":1,"D":3,"E":2}'::jsonb,
  'published'
),
(
  'web',
  1033,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda diminta menyetujui pembayaran vendor padahal pekerjaan baru selesai 70% dan vendor beralasan sedang kesulitan kas. Sikap Anda....',
  NULL,
  '{"A":"Menolak membayar penuh, menjelaskan ketentuan kontrak, dan mengusulkan pembayaran sesuai progres sah","B":"Membayar penuh asalkan vendor berjanji menyelesaikannya","C":"Menunda semua pembayaran sampai pekerjaan selesai","D":"Meminta atasan memutuskan tanpa memberi pendapat","E":"Membayar 70% tanpa membahasnya dengan atasan"}'::jsonb,
  'A',
  'Nilai 5: patuh kontrak dan tetap solutif.',
  NULL,
  '{"A":5,"B":1,"C":3,"D":3,"E":3}'::jsonb,
  'published'
),
(
  'web',
  1034,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda mendapat tugas di luar bidang keahlian dengan tenggat dua minggu, dan tidak ada rekan yang menguasainya. Tindakan Anda....',
  NULL,
  '{"A":"Menyusun rencana belajar, berkonsultasi dengan ahli terkait, mengerjakan bertahap, dan melaporkan kemajuan berkala","B":"Menolak karena tidak sesuai keahlian","C":"Mengerjakan sebisanya tanpa bertanya","D":"Meminta tugas diberikan kepada pegawai lain","E":"Menunda sampai ada pelatihan resmi"}'::jsonb,
  'A',
  'Nilai 5: kompeten dan terbuka belajar.',
  NULL,
  '{"A":5,"B":2,"C":3,"D":2,"E":2}'::jsonb,
  'published'
),
(
  'web',
  1035,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Rekan Anda sering pulang lebih awal dan meminta Anda mengisi absensinya. Sikap Anda....',
  NULL,
  '{"A":"Menolak dengan sopan, mengingatkan risikonya, dan menyarankan ia meminta izin resmi kepada atasan","B":"Menolak dan melaporkannya langsung kepada atasan tanpa berbicara dengannya","C":"Menolak dan menjauhi rekan itu","D":"Mengisi absensi sekali ini saja dengan syarat tidak diulang","E":"Mengisi absensi karena kasihan"}'::jsonb,
  'A',
  'Nilai 5: tegas pada aturan dan membuka jalan benar.',
  NULL,
  '{"A":5,"B":3,"C":2,"D":1,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1036,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Setelah rapat, atasan memuji hasil kerja tim, padahal sebagian besar ide berasal dari rekan Anda yang tidak hadir. Tindakan Anda....',
  NULL,
  '{"A":"Menyampaikan bahwa ide itu dari rekan yang tidak hadir dan meminta atasan memberi apresiasi langsung kepadanya","B":"Menerima pujian atas nama tim tanpa menyebut siapa pun","C":"Menerima pujian lalu menyampaikan kepada rekan itu secara pribadi","D":"Menyampaikan peran masing-masing anggota dalam laporan tertulis","E":"Mengambil pujian karena Anda yang mempresentasikan"}'::jsonb,
  'A',
  'Nilai 5: jujur, adil, dan menghargai kontribusi.',
  NULL,
  '{"A":5,"B":2,"C":3,"D":4,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1037,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Prosedur layanan yang baru bertentangan dengan peraturan lama yang belum dicabut, dan Anda harus memilih salah satu. Tindakan Anda....',
  NULL,
  '{"A":"Meminta penjelasan tertulis dari atasan dan unit hukum tentang aturan yang berlaku sebelum melaksanakan","B":"Melaksanakan prosedur baru karena lebih mutakhir","C":"Melaksanakan peraturan lama karena sudah terbukti","D":"Menunda semua layanan terkait sampai ada kepastian","E":"Mengikuti kebiasaan rekan sekantor"}'::jsonb,
  'A',
  'Nilai 5: memastikan dasar hukum sebelum bertindak.',
  NULL,
  '{"A":5,"B":3,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1038,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda mendapat kesempatan promosi, tetapi rekan Anda yang lebih senior juga mengincarnya dan meminta Anda mundur. Sikap Anda....',
  NULL,
  '{"A":"Tetap mengikuti seleksi secara terbuka dan menjaga hubungan baik dengan rekan itu","B":"Mundur demi menghormati senioritas","C":"Mengikuti seleksi tetapi tidak memberi tahu rekan itu","D":"Meminta atasan memihak Anda","E":"Membuka kekurangan rekan itu kepada panitia"}'::jsonb,
  'A',
  'Nilai 5: berkompetisi sehat berdasarkan merit.',
  NULL,
  '{"A":5,"B":3,"C":2,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1039,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Atasan menyuruh Anda mengubah angka laporan agar tampak baik, padahal tidak sesuai data. Sikap Anda...',
  NULL,
  '{"A":"Menyebarkan masalah ini di grup kantor","B":"Diam dan membiarkan orang lain mengurus","C":"Menolak dengan sopan, menjelaskan data sebenarnya, dan menawarkan cara penyajian yang akurat","D":"Mengubah karena itu perintah atasan","E":"Mengubah lalu mengeluh ke rekan"}'::jsonb,
  'C',
  'Nilai 5: menolak perintah yang melanggar aturan dengan sopan sambil menawarkan solusi sesuai aturan.',
  NULL,
  '{"A":4,"B":3,"C":5,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1040,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Tenggat laporan besok, tetapi data dari unit lain belum lengkap. Tindakan Anda...',
  NULL,
  '{"A":"Menunda sampai data lengkap tanpa memberi tahu","B":"Menyalahkan unit lain","C":"Mengarang data kosong","D":"Mengonfirmasi data ke unit terkait, menyelesaikan bagian yang bisa, dan melapor ke atasan soal kendalanya","E":"Menyerahkan laporan seadanya tanpa keterangan"}'::jsonb,
  'D',
  'Nilai 5: bertanggung jawab dan transparan.',
  NULL,
  '{"A":4,"B":3,"C":2,"D":5,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1041,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Atasan memberi instruksi yang jelas melanggar aturan. Sikap Anda...',
  NULL,
  '{"A":"Melaksanakan lalu melapor belakangan","B":"Menolak dengan sopan, menjelaskan aturannya, dan mengusulkan alternatif yang sesuai aturan","C":"Menurut agar aman","D":"Menolak dengan marah","E":"Diam dan menunda"}'::jsonb,
  'B',
  'Nilai 5: menjaga integritas tanpa merusak hubungan kerja.',
  NULL,
  '{"A":4,"B":5,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1042,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda menyadari ada kesalahan pada laporan yang sudah terkirim. Tindakan Anda...',
  NULL,
  '{"A":"Memperbaiki diam-diam","B":"Membiarkan karena kecil","C":"Menyalahkan sistem","D":"Segera melapor ke atasan, memperbaiki, dan mengirim revisi","E":"Berharap tidak ada yang tahu"}'::jsonb,
  'D',
  'Nilai 5: jujur, cepat, dan akuntabel.',
  NULL,
  '{"A":4,"B":3,"C":2,"D":5,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1043,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda diberi tugas yang di luar keahlian Anda. Sikap Anda...',
  NULL,
  '{"A":"Mempelajarinya, bertanya ke senior, dan tetap bertanggung jawab atas hasilnya","B":"Mengerjakan asal jadi","C":"Mengoper ke rekan","D":"Menolak mentah-mentah","E":"Menunda tanpa kabar"}'::jsonb,
  'A',
  'Nilai 5: mau belajar dan bertanggung jawab.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1044,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Rekan sering terlambat sehingga pekerjaan tim tertunda. Tindakan Anda...',
  NULL,
  '{"A":"Menggantikan semuanya tanpa bicara","B":"Melaporkan tanpa bicara lebih dulu","C":"Menegur baik-baik dan, bila berulang, menyampaikannya ke atasan","D":"Membiarkan","E":"Menyindir di grup"}'::jsonb,
  'C',
  'Nilai 5: komunikasi langsung dulu, eskalasi bila tidak berubah.',
  NULL,
  '{"A":4,"B":3,"C":5,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1045,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Atasan memberi tugas dengan tenggat besok, padahal pekerjaan lain Anda juga mendesak. Sikap terbaik Anda adalah...',
  NULL,
  '{"A":"Mengerjakan seadanya agar cepat","B":"Menolak tugas itu","C":"Menyuruh rekan mengerjakannya","D":"Menyusun prioritas, bekerja sungguh-sungguh, dan melapor lebih awal beserta usulan solusi bila tidak semua bisa selesai","E":"Mengerjakan tugas baru dan mengabaikan yang lama"}'::jsonb,
  'D',
  'Nilai 5: bertanggung jawab, transparan, dan menawarkan solusi.',
  NULL,
  '{"A":4,"B":3,"C":2,"D":5,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1046,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda sadar ada kesalahan angka pada laporan yang sudah dikirim ke atasan. Tindakan terbaik Anda adalah...',
  NULL,
  '{"A":"Menunggu sampai atasan menemukannya","B":"Meminta rekan memperbaikinya diam-diam","C":"Menyalahkan sistem","D":"Diam karena belum ada yang tahu","E":"Segera mengakui, memperbaiki, dan mengirim revisi disertai penjelasan singkat"}'::jsonb,
  'E',
  'Nilai 5: jujur mengakui kesalahan dan segera memperbaikinya.',
  NULL,
  '{"A":4,"B":3,"C":2,"D":1,"E":5}'::jsonb,
  'published'
),
(
  'web',
  1047,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Atasan meminta Anda mengubah data agar kinerja unit tampak lebih baik dari kenyataan. Tindakan terbaik Anda adalah...',
  NULL,
  '{"A":"Menolak dengan sopan dan menawarkan penyajian data apa adanya disertai rencana perbaikan","B":"Mengundurkan diri seketika","C":"Menuruti karena itu perintah atasan","D":"Mengubah sebagian kecil saja","E":"Menceritakannya ke rekan sambil mengeluh"}'::jsonb,
  'A',
  'Nilai 5: menolak perintah yang melanggar integritas dengan sopan dan menawarkan alternatif.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1048,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda menyadari laporan yang sudah terkirim memuat kesalahan angka. Anda...',
  NULL,
  '{"A":"Menghapus laporan itu diam-diam","B":"Berharap tidak ada yang sadar","C":"Menyalahkan data dari rekan","D":"Menunggu ditegur","E":"Segera memberi tahu atasan dan mengirim perbaikan"}'::jsonb,
  'E',
  'Nilai 5: jujur dan bertanggung jawab.',
  NULL,
  '{"A":4,"B":3,"C":2,"D":1,"E":5}'::jsonb,
  'published'
),
(
  'web',
  1049,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Atasan meminta Anda mengerjakan sesuatu yang melanggar prosedur. Anda...',
  NULL,
  '{"A":"Menyuruh rekan mengerjakan","B":"Menuruti agar tidak dimarahi","C":"Mengerjakan lalu melapor setelah ada masalah","D":"Menyampaikan keberatan sopan dengan dasar aturan dan menawarkan alternatif sesuai prosedur","E":"Menolak dengan emosi"}'::jsonb,
  'D',
  'Nilai 5: taat aturan dan komunikatif.',
  NULL,
  '{"A":4,"B":3,"C":2,"D":5,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1050,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Beberapa tugas datang bersamaan dengan tenggat berdekatan. Anda...',
  NULL,
  '{"A":"Meninggalkan semuanya","B":"Menyalahkan atasan","C":"Mengerjakan semuanya seadanya","D":"Mengerjakan yang paling mudah saja","E":"Menyusun prioritas menurut urgensi dan melapor bila perlu bantuan"}'::jsonb,
  'E',
  'Nilai 5: manajemen waktu yang terukur.',
  NULL,
  '{"A":4,"B":3,"C":2,"D":1,"E":5}'::jsonb,
  'published'
),
(
  'web',
  1051,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Rekan senior mengkritik hasil kerja Anda dengan keras. Anda...',
  NULL,
  '{"A":"Mendengarkan, mengambil masukan yang berguna, dan memperbaiki pekerjaan","B":"Mengabaikan semua masukan","C":"Membalas dengan kritik","D":"Merasa dendam dan menghindarinya","E":"Mengadu ke atasan"}'::jsonb,
  'A',
  'Nilai 5: terbuka terhadap umpan balik.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1052,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Jam kerja hampir habis tetapi pekerjaan penting belum selesai. Anda...',
  NULL,
  '{"A":"Mengerjakan seadanya","B":"Memalsukan tanda selesai","C":"Meninggalkannya kepada rekan tanpa pamit","D":"Menyelesaikannya dan berkoordinasi dengan atasan bila perlu waktu tambahan","E":"Pulang tepat waktu dan menundanya tanpa kabar"}'::jsonb,
  'D',
  'Nilai 5: bertanggung jawab dan transparan.',
  NULL,
  '{"A":4,"B":3,"C":2,"D":5,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1053,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda melihat rekan memasang atribut kelompok yang menolak Pancasila di meja kerjanya. Tindakan Anda...',
  NULL,
  '{"A":"Mengingatkan secara pribadi tentang kewajiban ASN dan melapor ke atasan bila tidak berubah","B":"Mengingatkan secara pribadi tentang kewajiban ASN dan tidak melapor bila ia berjanji melepasnya","C":"Langsung melapor ke atasan tanpa berbicara terlebih dahulu dengan rekan tersebut","D":"Memotret atribut itu lalu meminta pendapat beberapa rekan sebelum menentukan sikap","E":"Membicarakannya dengan rekan lain agar ada tekanan sosial supaya ia melepasnya"}'::jsonb,
  'A',
  'Nilai 5: mengingatkan lalu memakai jalur resmi.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1054,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda diundang kajian di luar kantor yang ternyata berisi ajakan membenci pemerintah dan menolak dasar negara. Sikap Anda...',
  NULL,
  '{"A":"Meninggalkan acara dan melapor ke pihak berwenang bila ada ajakan kekerasan","B":"Meninggalkan acara dan menyampaikan keberatan kepada penyelenggara tanpa melapor","C":"Tetap mendengarkan sampai selesai untuk memahami isi ajakannya sebelum menentukan sikap","D":"Meninggalkan acara dan tidak ikut kajian berikutnya tanpa menyampaikan alasan","E":"Tetap hadir dan diam agar tidak dianggap memusuhi penyelenggara maupun peserta lain"}'::jsonb,
  'A',
  'Nilai 5: menolak tegas dan memakai jalur resmi.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1055,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Seorang tetangga menyebarkan video hasutan terhadap pemeluk agama lain. Tindakan Anda...',
  NULL,
  '{"A":"Tidak menyebarkannya, melaporkan ke kanal pengaduan resmi, dan mengingatkan tetangga","B":"Tidak menyebarkannya, melaporkan ke platform, dan mengingatkan tetangga secara pribadi","C":"Tidak menyebarkannya dan melaporkan ke platform tanpa mengingatkan tetangga itu","D":"Mengingatkan tetangga secara pribadi agar menghapus video tanpa melaporkannya","E":"Meneruskan video itu ke grup keluarga untuk memperingatkan bahaya isi hasutannya"}'::jsonb,
  'A',
  'Nilai 5: tidak ikut menyebarkan dan memakai jalur resmi.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1056,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Atasan mengajak pegawai ikut kampanye politik pada jam kerja memakai fasilitas kantor. Anda...',
  NULL,
  '{"A":"Menolak sopan dengan menjelaskan kewajiban netralitas ASN dan melapor bila ada tekanan","B":"Menolak sopan dengan menjelaskan kewajiban netralitas ASN tanpa melapor walaupun ada tekanan","C":"Ikut hadir di luar jam kerja tanpa memakai fasilitas kantor agar hubungan kerja tetap baik","D":"Berpura-pura sakit pada hari kampanye agar tidak perlu memberi jawaban kepada atasan","E":"Ikut hadir karena khawatir dianggap membangkang dan penilaian kinerja terpengaruh"}'::jsonb,
  'A',
  'Nilai 5: menjaga netralitas ASN dan memakai jalur resmi.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1057,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Rekan membagikan ceramah daring berisi ajakan mengkafirkan kelompok lain di grup kantor. Anda...',
  NULL,
  '{"A":"Mengingatkan secara santun di luar grup, mengajak menjaga toleransi, dan melapor bila berulang","B":"Mengingatkan secara santun di luar grup dan mengajak menjaga toleransi tanpa melapor bila berulang","C":"Mengingatkan di grup dengan bahasa santun agar anggota lain ikut menjaga toleransi","D":"Diam dan keluar dari grup agar tidak terlibat dalam perdebatan yang tidak perlu","E":"Membalas di grup dengan dalil tandingan agar anggota lain tidak terpengaruh isinya"}'::jsonb,
  'A',
  'Nilai 5: persuasif lalu memakai jalur resmi.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1058,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda diundang diskusi daring tertutup yang membahas "mengganti sistem negara" dan peserta diminta merahasiakannya. Anda...',
  NULL,
  '{"A":"Tidak ikut dan melaporkan kepada pihak berwenang","B":"Tidak ikut dan menyampaikan kepada atasan tanpa melapor ke pihak berwenang","C":"Menolak undangan itu tanpa melapor karena belum ada ajakan kekerasan yang jelas","D":"Ikut sebagai pengamat untuk mengetahui isi diskusi lalu melaporkannya setelah selesai","E":"Ikut dan menyimak tanpa berbicara karena diskusi hanya bersifat wacana"}'::jsonb,
  'A',
  'Nilai 5: menolak dan melapor.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1059,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda melihat poster ajakan intoleran di fasilitas umum dekat kantor. Anda...',
  NULL,
  '{"A":"Tidak menyebarkan dan melaporkan ke pengelola atau aparat berwenang","B":"Tidak menyebarkan dan melaporkan ke pengelola fasilitas tanpa melibatkan aparat berwenang","C":"Mencopot poster itu sendiri tanpa melapor agar tidak dibaca warga lain","D":"Memotret poster itu lalu membagikannya ke grup agar warga ikut waspada","E":"Menempelkan poster tandingan yang berisi ajakan toleransi di tempat yang sama"}'::jsonb,
  'A',
  'Nilai 5: jalur resmi.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1060,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Rekan Anda mulai menjauh dari keluarga karena terpengaruh kelompok eksklusif. Anda...',
  NULL,
  '{"A":"Mendengarkan, menyarankan konsultasi dengan tokoh atau ahli, dan melibatkan pihak berwenang bila ada indikasi bahaya","B":"Mendengarkan dan menyarankan konsultasi dengan tokoh atau ahli tanpa melibatkan pihak berwenang bila ada indikasi bahaya","C":"Mendengarkan lalu menyampaikan kekhawatiran Anda kepada keluarga rekan itu tanpa sepengetahuannya","D":"Menasihati rekan itu dengan tegas agar segera meninggalkan kelompoknya dan kembali kepada keluarga","E":"Memberi jarak sementara agar rekan itu menyadari sendiri akibat dari pilihannya"}'::jsonb,
  'A',
  'Nilai 5: peduli dan memakai jalur tepat.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1061,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Debat tentang isu agama di kantor mulai memanas. Anda...',
  NULL,
  '{"A":"Menenangkan dengan mengingatkan saling menghormati dan mengalihkan ke fakta atau topik kerja","B":"Menenangkan dengan mengingatkan saling menghormati lalu meminta kedua pihak melanjutkan di luar kantor","C":"Meninggalkan ruangan agar tidak terlibat dan membiarkan debat selesai dengan sendirinya","D":"Meminta pihak yang paling keras bersuara untuk berhenti berbicara demi menjaga suasana","E":"Mencatat isi debat dan melaporkannya kepada atasan tanpa mencoba menenangkan suasana"}'::jsonb,
  'A',
  'Nilai 5: menengahi dengan netral.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1062,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda diajak menyebarkan pamflet yang menjelekkan pemerintah dengan data belum diverifikasi. Anda...',
  NULL,
  '{"A":"Menolak dan mengecek faktanya terlebih dahulu","B":"Ikut membagikan karena terlihat meyakinkan dan banyak yang mendukung","C":"Membagikan dengan catatan bahwa belum tentu benar kepada pembaca","D":"Membantu mencetak tanpa membaca isinya karena hanya diminta teman","E":"Melaporkan teman Anda tanpa berbicara dengannya terlebih dahulu"}'::jsonb,
  'A',
  'Nilai 5: verifikasi dan tidak ikut menyebarkan.',
  NULL,
  '{"A":5,"B":1,"C":2,"D":2,"E":3}'::jsonb,
  'published'
),
(
  'web',
  1063,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda menerima tulisan yang menyebut dasar negara tidak cocok untuk Indonesia. Anda...',
  NULL,
  '{"A":"Tidak menyebarkan, memeriksa sumbernya, dan melapor bila terindikasi propaganda","B":"Tidak menyebarkan dan menghapus tulisan itu tanpa memeriksa sumbernya","C":"Menyimpan tulisan itu sebagai arsip pribadi tanpa menyebarkan atau melaporkannya","D":"Membalas pengirimnya dengan argumen panjang agar ia menyadari kekeliruannya","E":"Menyebarkan tulisan itu ke rekan tepercaya agar dapat didiskusikan secara terbuka"}'::jsonb,
  'A',
  'Nilai 5: verifikasi dan jalur resmi.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1064,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Teman mengajak Anda ke pelatihan tertutup yang mewajibkan baiat kepada seorang tokoh. Anda...',
  NULL,
  '{"A":"Menolak dan melaporkan indikasinya","B":"Menolak dan mengingatkan teman tentang risikonya tanpa melaporkan indikasinya","C":"Menolak dengan alasan sibuk tanpa menjelaskan keberatan Anda kepada teman","D":"Ikut sekali sebagai pengamat untuk memahami isi pelatihan sebelum menentukan sikap","E":"Ikut karena tidak enak menolak ajakan teman dekat yang sudah lama dikenal"}'::jsonb,
  'A',
  'Nilai 5: menolak dan melapor.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1065,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Unggahan kelompok warga mengajak memboikot usaha milik etnis tertentu. Anda...',
  NULL,
  '{"A":"Tidak ikut, mengingatkan bahaya diskriminasi, dan melaporkannya ke platform atau aparat","B":"Tidak ikut dan mengingatkan bahaya diskriminasi tanpa melaporkannya ke platform atau aparat","C":"Tidak ikut dan tidak berkomentar agar tidak terlibat dalam perdebatan di kolom komentar","D":"Membiarkan unggahan itu karena hanya ajakan warga dan belum ada tindakan nyata","E":"Membalas dengan unggahan serupa terhadap usaha milik kelompok lain agar adil"}'::jsonb,
  'A',
  'Nilai 5: menolak diskriminasi lewat jalur resmi.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1066,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda diminta menjadi pembicara di acara kelompok yang dikenal menolak Pancasila. Anda...',
  NULL,
  '{"A":"Menolak dan melaporkan permintaan itu","B":"Menolak dan menyampaikan alasan penolakan kepada atasan tanpa melapor ke pihak berwenang","C":"Menolak tanpa menyampaikan alasan karena tidak ingin menimbulkan konflik","D":"Datang hanya membahas materi nonpolitik agar tidak melanggar ketentuan ASN","E":"Datang agar dapat meluruskan pandangan peserta tentang dasar negara secara langsung"}'::jsonb,
  'A',
  'Nilai 5: menolak tegas dan melapor.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1067,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Atasan menyebarkan konten yang menyudutkan satu kelompok agama di grup kantor. Anda...',
  NULL,
  '{"A":"Menegur secara pribadi lalu melapor lewat jalur resmi bila tidak berhenti","B":"Menegur secara pribadi tetapi tidak melapor walaupun atasan terus menyebarkannya","C":"Meninggalkan grup dan tidak menanggapi agar tidak berselisih dengan atasan","D":"Meminta rekan lain menegur atasan karena posisi mereka dianggap lebih dekat","E":"Menanggapi konten itu di grup dengan argumen tandingan agar tidak dianggap setuju"}'::jsonb,
  'A',
  'Nilai 5: berani menegur dan memakai jalur resmi.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1068,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Dalam obrolan kantor, rekan menyebut perlunya mengganti ideologi negara. Anda...',
  NULL,
  '{"A":"Menanggapi dengan argumen bahwa Pancasila menyatukan keberagaman dan melapor bila berlanjut ke ajakan terorganisasi","B":"Menanggapi dengan argumen bahwa Pancasila menyatukan keberagaman tanpa melapor bila berlanjut ke ajakan terorganisasi","C":"Mengalihkan pembicaraan ke topik pekerjaan agar suasana obrolan tidak memanas","D":"Meninggalkan obrolan dan menyampaikan keberatan kepada atasan tanpa menanggapi rekan itu","E":"Mengikuti obrolan sampai selesai agar mengetahui sejauh mana pandangan rekan tersebut"}'::jsonb,
  'A',
  'Nilai 5: tegas, santun, dan melalui jalur yang tepat.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1069,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda diminta menandatangani petisi anti-Pancasila oleh teman dekat. Anda...',
  NULL,
  '{"A":"Menolak dengan santun dan melaporkan bila ada ajakan terorganisasi","B":"Menolak dengan santun tanpa melaporkan walaupun ada ajakan terorganisasi","C":"Menolak dengan alasan pribadi tanpa menjelaskan keberatan Anda kepada teman dekat","D":"Membaca isi petisi lebih dulu lalu memutuskan sikap setelah berdiskusi dengan teman","E":"Menandatangani karena tidak enak menolak teman dekat yang sudah lama dikenal"}'::jsonb,
  'A',
  'Nilai 5: tegas dan melalui jalur resmi.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1070,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Rekan membagikan hoaks bernuansa SARA di grup. Anda...',
  NULL,
  '{"A":"Meluruskan dengan sumber resmi dan mengingatkan; lapor bila berulang","B":"Meluruskan dengan sumber resmi dan mengingatkan tanpa melapor walaupun berulang","C":"Mengingatkan rekan secara pribadi agar menghapus unggahan tanpa menyertakan sumber resmi","D":"Meluruskan di grup dengan tegas agar anggota lain tidak terpengaruh isi hoaks itu","E":"Mengabaikan unggahan itu dan keluar dari grup agar tidak terlibat perdebatan"}'::jsonb,
  'A',
  'Nilai 5: meluruskan dan memakai jalur resmi.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1071,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Atasan mengajak pegawai ke pengajian kelompok yang mengkritik dasar negara dan mengaitkannya dengan penilaian kinerja. Anda...',
  NULL,
  '{"A":"Menolak sopan, mengingatkan kewajiban setia pada Pancasila, dan melapor lewat jalur resmi bila ada tekanan","B":"Menolak sopan dan mengingatkan kewajiban setia pada Pancasila tanpa melapor walaupun ada tekanan","C":"Hadir sekali sebagai pengamat agar tidak dianggap menentang atasan lalu menilai isinya","D":"Menolak dengan alasan ada kegiatan lain tanpa menyinggung isi pengajian itu","E":"Hadir karena khawatir penilaian kinerja terpengaruh bila menolak ajakan atasan"}'::jsonb,
  'A',
  'Nilai 5: menolak tegas dan memakai jalur resmi.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1072,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Video sensasional yang menyudutkan satu kelompok beredar di grup keluarga dan banyak yang meneruskan. Anda...',
  NULL,
  '{"A":"Memeriksa sumber, tidak meneruskan, dan mengingatkan keluarga dengan tautan klarifikasi","B":"Memeriksa sumber dan tidak meneruskan tanpa mengingatkan anggota keluarga lain","C":"Tidak meneruskan dan menyampaikan keberatan secara pribadi kepada anggota yang meneruskan","D":"Meneruskan dengan keterangan agar waspada karena belum tentu benar isinya","E":"Meninggalkan grup keluarga agar tidak terlibat dalam penyebaran video itu"}'::jsonb,
  'A',
  'Nilai 5: verifikasi dan tidak ikut menyebarkan.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1073,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Di grup pesan kantor, seorang rekan membagikan video ceramah berisi ajakan menolak dasar negara dan menyebut pegawai yang berbeda pandangan sebagai musuh. Beberapa anggota mulai menanggapi. Sikap Anda....',
  NULL,
  '{"A":"Menyampaikan keberatan di grup dengan bahasa tegas agar anggota lain tidak ikut terpengaruh, lalu menyerahkan kelanjutannya kepada pihak lain","B":"Mengingatkan rekan secara pribadi tentang kewajiban ASN dan memantau apakah ia masih mengulangi perbuatannya, lalu menunggu arahan atasan","C":"Keluar dari grup pesan agar tidak terpapar konten semacam itu di kemudian hari, sambil berharap masalahnya mereda dengan sendirinya dalam waktu dekat","D":"Tidak menanggapi isi ceramah, mengingatkan rekan secara pribadi tentang kewajiban ASN, dan melapor ke atasan atau unit terkait bila berlanjut","E":"Membalas dengan video ceramah lain yang berpandangan sebaliknya agar terjadi keseimbangan, agar tidak menambah beban kerja"}'::jsonb,
  'D',
  'Nilai 5: tidak memperpanjang polemik, mengingatkan, dan melapor lewat jalur resmi bila berlanjut.',
  NULL,
  '{"A":3,"B":4,"C":2,"D":5,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1074,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Seorang pegawai magang yang Anda bimbing mulai sering membahas gagasan bahwa hanya kelompoknya yang layak memimpin, dan sikapnya kepada teman beda keyakinan menjadi dingin. Sikap Anda....',
  NULL,
  '{"A":"Menegur keras di depan rekan lain agar menjadi pelajaran bagi pegawai magang yang lain, agar tidak menambah beban kerja Anda dan rekan satu unit","B":"Memberi tugas yang tidak melibatkan teman beda keyakinan agar tidak muncul gesekan di tempat kerja, sambil berharap masalahnya mereda sendiri","C":"Mengajak berdialog terbuka tentang nilai Pancasila dan kerja sama di tempat kerja bersama pegawai magang itu, lalu menunggu arahan atasan","D":"Menyampaikan pengamatan Anda kepada atasan dan menyerahkan sepenuhnya penanganannya kepada beliau","E":"Mengajak berdialog terbuka tentang nilai Pancasila dan kerja sama di tempat kerja, serta berkonsultasi dengan atasan tentang pembinaan lanjutan"}'::jsonb,
  'E',
  'Nilai 5: pembinaan persuasif dengan dukungan atasan.',
  NULL,
  '{"A":1,"B":2,"C":4,"D":3,"E":5}'::jsonb,
  'published'
),
(
  'web',
  1075,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Poster berisi ujaran kebencian terhadap kelompok tertentu ditempel di lingkungan kantor Anda pagi ini, tanpa diketahui pelakunya. Sikap Anda....',
  NULL,
  '{"A":"Mengamankan dan mendokumentasikan poster, lalu melaporkannya kepada pimpinan atau petugas keamanan kantor","B":"Memotret poster itu dan menyebarkannya di media sosial agar pelakunya cepat terungkap, agar tidak menambah beban kerja","C":"Melepas poster itu lalu membuangnya agar tidak terlihat oleh orang lain di lingkungan kantor","D":"Membiarkan poster itu karena pelakunya tidak diketahui dan tidak ada yang memintanya dilepas, sambil berharap masalahnya mereda sendiri","E":"Mengamankan dan mendokumentasikan poster, melaporkannya kepada pimpinan atau petugas keamanan, serta menenangkan rekan yang terdampak"}'::jsonb,
  'E',
  'Nilai 5: bukti, pelaporan, dan pemulihan suasana. Menyebarkan poster justru memperluas ujaran kebencian.',
  NULL,
  '{"A":4,"B":1,"C":3,"D":2,"E":5}'::jsonb,
  'published'
),
(
  'web',
  1076,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Seorang tetangga mengajak Anda ke kelompok kajian yang menolak hormat bendera dan menyebut pemerintah sebagai penguasa yang tidak sah. Sikap Anda....',
  NULL,
  '{"A":"Menolak dengan santun lalu menghindar setiap kali bertemu dengan tetangga tersebut di lingkungan","B":"Menolak dengan santun dan menjelaskan alasan Anda menjaga persatuan bangsa kepada tetangga tersebut, lalu menunggu arahan atasan","C":"Menghadiri satu pertemuan untuk mengetahui isi kajiannya sebelum memutuskan sikap Anda, sambil berharap masalahnya mereda sendiri","D":"Menolak dengan santun, menjelaskan alasan Anda menjaga persatuan bangsa, dan melapor ke ketua RT atau pihak berwenang bila ajakan berlanjut","E":"Menerima ajakan itu agar hubungan bertetangga tetap terjaga baik, dengan alasan situasinya sedang sibuk dan tidak ingin menambah beban kerja Anda maupun rekan"}'::jsonb,
  'D',
  'Nilai 5: menolak tegas, edukatif, dan melapor bila berlanjut.',
  NULL,
  '{"A":3,"B":4,"C":2,"D":5,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1077,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Seorang rekan sering membagikan konten yang menyebut pemerintah dan dasar negara sebagai thaghut serta mengajak menolak Pancasila. Tindakan Anda....',
  NULL,
  '{"A":"Mengingatkannya secara pribadi tentang kewajiban ASN, dan melapor ke atasan atau kanal resmi bila ia tidak berhenti","B":"Langsung melapor tanpa berbicara dengannya","C":"Mengabaikan karena itu pilihan pribadi","D":"Berdebat di grup agar ia malu","E":"Tidak menanggapi tetapi menjauhinya"}'::jsonb,
  'A',
  'Nilai 5: mengingatkan lalu memakai jalur resmi.',
  NULL,
  '{"A":5,"B":3,"C":1,"D":2,"E":2}'::jsonb,
  'published'
),
(
  'web',
  1078,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Seorang kenalan mengajak Anda masuk kelompok tertutup yang menjanjikan "negara ideal" dan meminta Anda merahasiakannya dari keluarga. Sikap Anda....',
  NULL,
  '{"A":"Menolak, mencari tahu kelompok itu dari sumber resmi, dan melapor bila ditemukan paham yang menolak dasar negara","B":"Menolak tanpa mencari tahu lebih lanjut","C":"Menghadiri satu pertemuan untuk menilai sendiri","D":"Menerima dengan syarat tidak memberi iuran","E":"Menyampaikan ajakan itu kepada rekan sekantor"}'::jsonb,
  'A',
  'Nilai 5: menolak tegas dan memakai jalur resmi.',
  NULL,
  '{"A":5,"B":3,"C":1,"D":1,"E":2}'::jsonb,
  'published'
),
(
  'web',
  1079,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Dalam rapat RT, seorang warga mengusulkan larangan kegiatan ibadah agama tertentu di lingkungan dengan alasan kenyamanan. Sikap Anda....',
  NULL,
  '{"A":"Menyampaikan bahwa kebebasan beribadah dijamin konstitusi dan mengajak mencari solusi lewat aturan kegiatan yang berlaku bagi semua","B":"Menolak usulan tanpa menjelaskan alasannya","C":"Menyerahkan keputusan kepada suara terbanyak","D":"Menunda pembahasan ke rapat berikutnya","E":"Mendukung usulan agar tidak terjadi gesekan"}'::jsonb,
  'A',
  'Nilai 5: berdasar konstitusi dan inklusif.',
  NULL,
  '{"A":5,"B":3,"C":1,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1080,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda mendapati bawahan Anda menyimpan buku yang berisi ajakan kekerasan terhadap kelompok lain di mejanya. Tindakan Anda....',
  NULL,
  '{"A":"Meminta penjelasannya secara tertutup, mengingatkan kewajiban ASN, dan melapor ke unit pembinaan bila terbukti menyebarkannya","B":"Menyita buku itu tanpa berbicara dengannya","C":"Melaporkan ke polisi tanpa memeriksa lebih dulu","D":"Menegurnya di depan seluruh tim","E":"Mengabaikan karena hanya buku"}'::jsonb,
  'A',
  'Nilai 5: proporsional dan sesuai prosedur.',
  NULL,
  '{"A":5,"B":3,"C":2,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1081,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Warganet menyebarkan narasi bahwa bencana alam di suatu daerah adalah azab bagi kelompok tertentu dan memicu kebencian. Tindakan Anda....',
  NULL,
  '{"A":"Tidak menyebarkan, menyampaikan penjelasan ilmiah dan fakta bantuan dari sumber resmi, serta melaporkan akun penyebar kebencian","B":"Tidak menyebarkan dan melaporkan akun penyebar kebencian","C":"Membalas dengan kemarahan agar penyebar jera","D":"Menegur penyebar secara kasar di kolom komentar","E":"Mengabaikan karena hanya opini warganet"}'::jsonb,
  'A',
  'Nilai 5: meluruskan dengan fakta dan memakai jalur resmi.',
  NULL,
  '{"A":5,"B":4,"C":1,"D":1,"E":2}'::jsonb,
  'published'
),
(
  'web',
  1082,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Kantor mengadakan upacara bendera, tetapi seorang rekan menolak hormat bendera dengan alasan keyakinan dan mengajak yang lain ikut menolak. Sikap Anda....',
  NULL,
  '{"A":"Menjelaskan bahwa hormat bendera adalah bentuk penghormatan kenegaraan, tetap mengikuti upacara, dan melaporkan ajakan menolak kepada atasan","B":"Mengikuti upacara tanpa menanggapi rekan itu","C":"Menyarankan rekan menyampaikan keberatan kepada atasan","D":"Ikut menolak demi kebersamaan","E":"Mengusulkan upacara ditiadakan"}'::jsonb,
  'A',
  'Nilai 5: memegang teguh kewajiban ASN dan memakai jalur resmi.',
  NULL,
  '{"A":5,"B":3,"C":3,"D":1,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1083,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Rekan Anda membagikan pesan ujaran kebencian yang mengajak menolak Pancasila di grup kantor. Sikap tepat Anda adalah...',
  NULL,
  '{"A":"Membiarkannya karena itu urusan pribadi","B":"Menasihati dengan santun memakai nilai Pancasila, dan melapor lewat jalur resmi bila diulangi","C":"Mengejek rekan di grup tersebut","D":"Memblokir rekan tanpa berbuat apa pun","E":"Ikut membagikan agar rekan lain tahu"}'::jsonb,
  'B',
  'Nilai 5: dialog santun dan penguatan nilai Pancasila, disertai pelaporan resmi kalau berulang.',
  NULL,
  '{"A":4,"B":5,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1084,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Grup WhatsApp kantor memuat ajakan menolak Pancasila. Tindakan Anda...',
  NULL,
  '{"A":"Membiarkan","B":"Mengingatkan dengan santun, lalu melapor ke atasan atau pihak berwenang bila berlanjut","C":"Ikut berkomentar setuju","D":"Keluar dari grup","E":"Membalas dengan kata kasar"}'::jsonb,
  'B',
  'Nilai 5: menegur santun dan menggunakan jalur resmi.',
  NULL,
  '{"A":4,"B":5,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1085,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Rekan menyebarkan hoaks bernuansa SARA. Sikap Anda...',
  NULL,
  '{"A":"Ikut menyebarkan","B":"Mengklarifikasi dengan sumber resmi dan meminta pesan itu dihapus","C":"Menghindari rekan","D":"Membalas dengan hoaks lain","E":"Menertawakan"}'::jsonb,
  'B',
  'Nilai 5: meluruskan dengan fakta dan mencegah penyebaran.',
  NULL,
  '{"A":4,"B":5,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1086,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda diundang diskusi yang penuh ujaran kebencian pada pemerintah. Tindakan Anda...',
  NULL,
  '{"A":"Hadir tanpa bicara","B":"Hadir dan ikut menghujat","C":"Merekam lalu menyebarkan","D":"Menolak ikut ujaran kebencian dan menyalurkan kritik lewat jalur konstitusional","E":"Mengundang lebih banyak orang"}'::jsonb,
  'D',
  'Nilai 5: kritik boleh, kebencian tidak.',
  NULL,
  '{"A":4,"B":3,"C":2,"D":5,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1087,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda menemukan brosur kelompok yang ingin mengganti dasar negara dengan cara kekerasan. Tindakan Anda...',
  NULL,
  '{"A":"Menyebarkannya sebagai peringatan","B":"Membuangnya saja","C":"Melaporkannya ke atasan atau aparat berwenang tanpa menyebarkannya","D":"Mengabaikannya","E":"Mengunggahnya ke media sosial"}'::jsonb,
  'C',
  'Nilai 5: melapor lewat jalur resmi. Menyebarkan justru ikut memperluas paham itu.',
  NULL,
  '{"A":4,"B":3,"C":5,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1088,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Seorang remaja di lingkungan Anda mulai terpengaruh paham radikal. Sikap Anda...',
  NULL,
  '{"A":"Mengabaikannya","B":"Menjauhinya","C":"Melaporkan tanpa pendekatan apa pun","D":"Mengajaknya berdialog, menguatkan nilai Pancasila, dan melibatkan tokoh atau keluarga","E":"Menghakiminya di depan umum"}'::jsonb,
  'D',
  'Nilai 5: pendekatan persuasif, bukan menghukum.',
  NULL,
  '{"A":4,"B":3,"C":2,"D":5,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1089,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Rekan Anda menolak bekerja dalam satu tim dengan orang yang berbeda agama. Sikap terbaik Anda adalah...',
  NULL,
  '{"A":"Memaksanya dengan nada keras","B":"Memaklumi dan membiarkan tim terpisah","C":"Mengejeknya di depan umum","D":"Mengajaknya berdialog tentang toleransi dan kerja sama dengan menekankan nilai kebangsaan","E":"Melaporkannya tanpa bicara dulu"}'::jsonb,
  'D',
  'Nilai 5: dialog santun dan penguatan toleransi.',
  NULL,
  '{"A":4,"B":3,"C":2,"D":5,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1090,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda menerima pesan berantai yang menghasut kebencian pada kelompok tertentu dan menyebutnya kebenaran. Tindakan terbaik Anda adalah...',
  NULL,
  '{"A":"Membalas dengan hinaan","B":"Membagikannya ke grup keluarga agar waspada","C":"Tidak menyebarkannya, memeriksa kebenarannya, dan melaporkannya ke platform atau pihak berwenang","D":"Mengabaikannya sambil menyimpan pesan","E":"Membagikannya dengan tambahan komentar"}'::jsonb,
  'C',
  'Nilai 5: menghentikan penyebaran dan melapor lewat jalur resmi.',
  NULL,
  '{"A":4,"B":3,"C":5,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1091,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Seorang rekan berpendapat kekerasan boleh dilakukan atas nama keyakinan untuk mengubah negara. Tindakan terbaik Anda adalah...',
  NULL,
  '{"A":"Mendebatnya dengan emosi","B":"Membiarkannya karena hanya pendapat","C":"Mengeluarkannya dari grup","D":"Mengikuti pendapatnya agar akrab","E":"Menjelaskan bahwa kekerasan melanggar hukum dan nilai Pancasila, mengajaknya berdialog, dan melapor bila muncul tindakan nyata"}'::jsonb,
  'E',
  'Nilai 5: meluruskan dengan dialog dan melapor kalau ada tindakan nyata.',
  NULL,
  '{"A":4,"B":3,"C":2,"D":1,"E":5}'::jsonb,
  'published'
),
(
  'web',
  1092,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda menerima pesan berantai berisi ajakan membenci kelompok tertentu. Anda...',
  NULL,
  '{"A":"Tidak menyebarkannya, memeriksa kebenarannya, dan melapor bila provokatif","B":"Menyebarkannya dengan komentar sendiri","C":"Meneruskan ke keluarga","D":"Menyimpan lalu diam","E":"Membalas dengan kata kasar"}'::jsonb,
  'A',
  'Nilai 5: tidak ikut menyebar dan melapor.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1093,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Teman dekat sering mengajak Anda ke kelompok yang menolak dasar negara. Anda...',
  NULL,
  '{"A":"Menolak tegas, mengingatkan temannya, dan melapor bila meresahkan","B":"Ikut agar tidak kehilangan teman","C":"Ikut sekali untuk mencoba","D":"Menjauh tanpa bicara","E":"Mengabaikan"}'::jsonb,
  'A',
  'Nilai 5: tegas dan peduli pada teman.',
  NULL,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1094,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Dalam diskusi kantor, seseorang membela kekerasan atas nama keyakinan. Anda...',
  NULL,
  '{"A":"Menyebarkan ucapannya","B":"Mendukung agar dianggap sepaham","C":"Diam agar tidak berdebat","D":"Menyatakan kekerasan tidak dibenarkan dan mengarahkan pada cara damai sesuai hukum","E":"Mengejeknya di depan umum"}'::jsonb,
  'D',
  'Nilai 5: menolak kekerasan dengan argumentasi santun.',
  NULL,
  '{"A":4,"B":3,"C":2,"D":5,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1095,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda melihat poster ajakan makar di dekat kantor. Anda...',
  NULL,
  '{"A":"Membiarkannya","B":"Memotret lalu membagikan di media sosial","C":"Mendiskusikannya dengan banyak orang","D":"Melapor ke pihak berwenang dan tidak ikut menyebarkan fotonya","E":"Merobek dan membuangnya tanpa melapor"}'::jsonb,
  'D',
  'Nilai 5: melapor lewat jalur resmi.',
  NULL,
  '{"A":4,"B":3,"C":2,"D":5,"E":1}'::jsonb,
  'published'
),
(
  'web',
  1096,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Ada grup daring yang menyebarkan hoaks berbau SARA di lingkungan Anda. Anda...',
  NULL,
  '{"A":"Membalas dengan hinaan","B":"Tetap bergabung tanpa bersuara","C":"Mengabaikan","D":"Keluar, melaporkan grup itu ke platform atau aparat, dan memberi klarifikasi yang benar","E":"Ikut menyebarkan hoaks"}'::jsonb,
  'D',
  'Nilai 5: menghentikan hoaks dan meluruskan informasi.',
  NULL,
  '{"A":4,"B":3,"C":2,"D":5,"E":1}'::jsonb,
  'published'
);
