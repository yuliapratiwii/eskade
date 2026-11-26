// Script to generate the 100 questions from Bank Soal SKD CPNS 2026 (Property of Muh. Aidil Fitrah @aihiforal / Twitter 'twt')
const fs = require('path');

const twkQuestions = [
  {
    nomor: 1,
    subtes: "TWK",
    topik: "Nasionalisme",
    level: "sedang",
    soal: "Rumusan sila pertama Piagam Jakarta (22 Juni 1945) kemudian diubah menjadi “Ketuhanan Yang Maha Esa”. Perubahan tersebut ditetapkan pada …",
    opsi: {
      A: "Pertemuan Panitia Sembilan, 22 Juni 1945",
      B: "Sidang PPKI, 18 Agustus 1945",
      C: "Sidang pertama BPUPKI, 1 Juni 1945",
      D: "Pembacaan Proklamasi, 17 Agustus 1945",
      E: "Dekrit Presiden, 5 Juli 1959"
    },
    kunci: "B",
    pembahasan: "Sehari setelah Proklamasi, PPKI mengesahkan UUD 1945 dan menghapus tujuh kata dalam Piagam Jakarta demi persatuan. Panitia Sembilan hanya merumuskan Piagam Jakarta."
  },
  {
    nomor: 2,
    subtes: "TWK",
    topik: "Nasionalisme",
    level: "sedang",
    soal: "Kongres Pemuda II (27–28 Oktober 1928) menghasilkan tiga ikrar. Ikrar yang ketiga adalah …",
    opsi: {
      A: "mengaku berpemerintahan yang satu, Republik Indonesia",
      B: "mengaku berideologi yang satu, Pancasila",
      C: "menjunjung bahasa persatuan, bahasa Indonesia",
      D: "mengaku berbangsa yang satu, bangsa Indonesia",
      E: "mengaku bertumpah darah yang satu, tanah Indonesia"
    },
    kunci: "C",
    pembahasan: "Urutan ikrar: satu tumpah darah, satu bangsa, satu bahasa persatuan. Ideologi dan pemerintahan tidak disebut dalam Sumpah Pemuda."
  },
  {
    nomor: 3,
    subtes: "TWK",
    topik: "Nasionalisme",
    level: "sedang",
    soal: "Menurut Ernest Renan, faktor utama yang membentuk suatu bangsa adalah …",
    opsi: {
      A: "kesamaan ras dan keturunan",
      B: "kesamaan wilayah geografis",
      C: "kesamaan bahasa dan adat",
      D: "kesamaan agama",
      E: "kehendak bersama untuk hidup bersatu"
    },
    kunci: "E",
    pembahasan: "Renan menekankan le désir d’être ensemble: bangsa lahir dari kehendak bersama dan kesediaan berkorban, bukan semata ras, agama, bahasa, atau wilayah."
  },
  {
    nomor: 4,
    subtes: "TWK",
    topik: "Nasionalisme",
    level: "sedang",
    soal: "Inti Deklarasi Djuanda (13 Desember 1957) adalah …",
    opsi: {
      A: "Indonesia berhak atas Zona Ekonomi Eksklusif sejauh 200 mil laut",
      B: "batas landas kontinen ditetapkan bersama negara tetangga",
      C: "laut di antara dan di sekitar pulau-pulau Indonesia merupakan satu kesatuan dengan wilayah daratan NKRI",
      D: "setiap negara bebas memanfaatkan sumber daya laut Indonesia",
      E: "lebar laut teritorial Indonesia ditetapkan 3 mil dari garis pantai"
    },
    kunci: "C",
    pembahasan: "Deklarasi Djuanda menolak Ordonansi 1939 (laut teritorial 3 mil) dan menegaskan Wawasan Nusantara: laut adalah penghubung, bukan pemisah, pulau-pulau Indonesia."
  },
  {
    nomor: 5,
    subtes: "TWK",
    topik: "Nasionalisme",
    level: "sedang",
    soal: "Asas negara kepulauan Indonesia diakui secara internasional melalui UNCLOS 1982 yang diratifikasi dengan …",
    opsi: {
      A: "UU Nomor 43 Tahun 2008",
      B: "UU Nomor 6 Tahun 1996",
      C: "UU Nomor 17 Tahun 1985",
      D: "UU Nomor 5 Tahun 1983",
      E: "UU Nomor 4 Prp Tahun 1960"
    },
    kunci: "C",
    pembahasan: "UU 17/1985 meratifikasi UNCLOS 1982. UU 5/1983 mengatur ZEE, UU 6/1996 Perairan Indonesia, UU 43/2008 Wilayah Negara."
  },
  {
    nomor: 6,
    subtes: "TWK",
    topik: "Nasionalisme",
    level: "sedang",
    soal: "Semboyan Bhinneka Tunggal Ika dikutip dari kitab …",
    opsi: {
      A: "Bharatayuddha karya Mpu Sedah dan Mpu Panuluh",
      B: "Sutasoma karya Mpu Tantular",
      C: "Arjunawiwaha karya Mpu Kanwa",
      D: "Negarakertagama karya Mpu Prapanca",
      E: "Pararaton"
    },
    kunci: "B",
    pembahasan: "Kutipan itu terdapat dalam Kakawin Sutasoma (masa Majapahit) dan ditetapkan sebagai semboyan Lambang Negara dalam Pasal 36A UUD 1945."
  },
  {
    nomor: 7,
    subtes: "TWK",
    topik: "Nasionalisme",
    level: "sedang",
    soal: "Di tengah arus globalisasi, sikap yang paling mencerminkan nasionalisme yang sehat adalah …",
    opsi: {
      A: "memakai produk dalam negeri tanpa memperhatikan mutu",
      B: "meniru budaya asing agar dianggap modern",
      C: "tidak peduli selama kebutuhan pribadi terpenuhi",
      D: "menolak seluruh produk dan budaya asing",
      E: "menyaring pengaruh asing, melestarikan budaya sendiri, dan tetap terbuka pada kemajuan"
    },
    kunci: "E",
    pembahasan: "Nasionalisme tidak berarti anti-asing (chauvinisme) dan tidak pula larut tanpa filter. Sikap yang tepat: selektif, bangga pada jati diri, dan adaptif."
  },
  {
    nomor: 8,
    subtes: "TWK",
    topik: "Integritas",
    level: "sedang",
    soal: "Seorang ASN menerima hadiah dari rekanan yang berkaitan dengan jabatannya dan tidak dapat menolaknya. Menurut UU Tipikor, ia wajib melapor ke KPK paling lambat …",
    opsi: {
      A: "7 hari kerja",
      B: "30 hari kerja sejak diterima",
      C: "14 hari kalender",
      D: "60 hari kerja",
      E: "1 tahun"
    },
    kunci: "B",
    pembahasan: "Pasal 12C UU 20/2001: gratifikasi yang berhubungan dengan jabatan wajib dilaporkan ke KPK dalam 30 hari kerja agar tidak dianggap suap."
  },
  {
    nomor: 9,
    subtes: "TWK",
    topik: "Integritas",
    level: "sedang",
    soal: "Dalam core values ASN BerAKHLAK, perilaku “menggunakan kekayaan dan barang milik negara secara bertanggung jawab, efektif, dan efisien” merupakan panduan perilaku nilai …",
    opsi: {
      A: "Loyal",
      B: "Akuntabel",
      C: "Kompeten",
      D: "Berorientasi Pelayanan",
      E: "Harmonis"
    },
    kunci: "B",
    pembahasan: "Panduan perilaku Akuntabel: jujur, bertanggung jawab, cermat, disiplin, tidak menyalahgunakan kewenangan, serta menggunakan BMN secara efektif dan efisien."
  },
  {
    nomor: 10,
    subtes: "TWK",
    topik: "Integritas",
    level: "sedang",
    soal: "Atasan meminta Anda membuat laporan perjalanan dinas fiktif agar anggaran terserap. Sikap ASN yang berintegritas adalah …",
    opsi: {
      A: "membuatnya sebagian saja agar tidak mencolok",
      B: "membuatnya sambil menyimpan bukti asli sebagai cadangan",
      C: "berpura-pura sakit pada hari laporan disusun",
      D: "menolak dengan sopan, menjelaskan risiko hukumnya, dan melapor melalui saluran pengaduan bila perintah dipaksakan",
      E: "mengikuti perintah karena atasan yang bertanggung jawab"
    },
    kunci: "D",
    pembahasan: "Perintah yang melawan hukum tidak boleh dituruti; ASN dapat memakai whistleblowing system. Kompromi atau menghindar tetap membiarkan pelanggaran."
  },
  {
    nomor: 11,
    subtes: "TWK",
    topik: "Integritas",
    level: "sedang",
    soal: "Berikut adalah sembilan nilai antikorupsi, KECUALI …",
    opsi: {
      A: "Sederhana",
      B: "Kerja keras",
      C: "Mandiri",
      D: "Kompetitif",
      E: "Adil"
    },
    kunci: "D",
    pembahasan: "Sembilan nilai antikorupsi (KPK): jujur, peduli, mandiri, disiplin, tanggung jawab, kerja keras, sederhana, berani, adil."
  },
  {
    nomor: 12,
    subtes: "TWK",
    topik: "Integritas",
    level: "sedang",
    soal: "Situasi yang merupakan benturan kepentingan adalah …",
    opsi: {
      A: "ASN mengikuti seminar yang dibiayai instansinya",
      B: "ASN melaporkan atasan yang menyalahgunakan anggaran",
      C: "pejabat pengadaan menetapkan perusahaan milik adik iparnya sebagai pemenang tender",
      D: "ASN menerima gaji dan tunjangan sesuai ketentuan",
      E: "pejabat pengadaan menolak parsel dari penyedia barang"
    },
    kunci: "C",
    pembahasan: "Benturan kepentingan terjadi saat kepentingan pribadi atau keluarga memengaruhi keputusan jabatan. Pilihan lain adalah tindakan sah atau justru antikorupsi."
  },
  {
    nomor: 13,
    subtes: "TWK",
    topik: "Integritas",
    level: "sedang",
    soal: "Menjelang pilkada, tindakan ASN yang melanggar asas netralitas adalah …",
    opsi: {
      A: "menghadiri sosialisasi pilkada yang diselenggarakan KPU",
      B: "menolak ajakan kerabat untuk ikut kampanye",
      C: "melayani masyarakat tanpa membeda-bedakan pilihan politik",
      D: "menyukai dan membagikan unggahan kampanye pasangan calon di media sosial pribadinya",
      E: "menggunakan hak pilih di TPS"
    },
    kunci: "D",
    pembahasan: "ASN wajib netral dari kepentingan peserta pemilihan; like, share, atau komentar yang mendukung salah satu paslon termasuk pelanggaran. Menggunakan hak pilih adalah hak warga negara."
  },
  {
    nomor: 14,
    subtes: "TWK",
    topik: "Bela Negara",
    level: "sedang",
    soal: "Hak dan kewajiban warga negara untuk ikut serta dalam upaya pembelaan negara dijamin dalam UUD 1945 …",
    opsi: {
      A: "Pasal 27 ayat (3)",
      B: "Pasal 27 ayat (1)",
      C: "Pasal 31 ayat (1)",
      D: "Pasal 33 ayat (1)",
      E: "Pasal 28 ayat (1)"
    },
    kunci: "A",
    pembahasan: "Pasal 27 ayat (3): setiap warga negara berhak dan wajib ikut serta dalam upaya pembelaan negara. Pasal 27 ayat (1) mengatur kesamaan kedudukan di hadapan hukum."
  },
  {
    nomor: 15,
    subtes: "TWK",
    topik: "Bela Negara",
    level: "sedang",
    soal: "Menurut Pasal 30 UUD 1945, dalam sistem pertahanan dan keamanan rakyat semesta, rakyat berperan sebagai …",
    opsi: {
      A: "kekuatan utama",
      B: "kekuatan pendukung",
      C: "pengawas TNI dan Polri",
      D: "penentu kebijakan pertahanan",
      E: "satu-satunya komponen cadangan"
    },
    kunci: "B",
    pembahasan: "TNI dan Polri adalah kekuatan utama, sedangkan rakyat adalah kekuatan pendukung (Pasal 30 ayat 2)."
  },
  {
    nomor: 16,
    subtes: "TWK",
    topik: "Bela Negara",
    level: "sedang",
    soal: "Yang termasuk ancaman nonmiliter terhadap kedaulatan negara adalah …",
    opsi: {
      A: "pengeboman instalasi militer",
      B: "serangan siber terhadap sistem informasi pemerintah",
      C: "invasi pasukan bersenjata negara lain",
      D: "pelanggaran wilayah udara oleh pesawat tempur asing",
      E: "pemberontakan bersenjata di dalam negeri"
    },
    kunci: "B",
    pembahasan: "Invasi, pemberontakan bersenjata, pengeboman, dan pelanggaran wilayah oleh pesawat tempur adalah ancaman militer. Serangan siber tergolong ancaman nonmiliter."
  },
  {
    nomor: 17,
    subtes: "TWK",
    topik: "Bela Negara",
    level: "sedang",
    soal: "Bela negara tidak hanya berupa perjuangan fisik. Contoh bela negara nonfisik adalah …",
    opsi: {
      A: "mengutamakan kepentingan kelompok sendiri",
      B: "mengikuti perang gerilya",
      C: "menghindari kewajiban membayar pajak",
      D: "mengangkat senjata di medan perang",
      E: "menjalankan profesi dengan jujur dan profesional demi kemajuan bangsa"
    },
    kunci: "E",
    pembahasan: "Bela negara mencakup upaya nonfisik, misalnya bekerja jujur dan profesional, menjaga lingkungan, dan menaati hukum."
  },
  {
    nomor: 18,
    subtes: "TWK",
    topik: "Bela Negara",
    level: "sedang",
    soal: "Berikut nilai dasar bela negara, KECUALI …",
    opsi: {
      A: "sadar berbangsa dan bernegara",
      B: "mengutamakan kepentingan golongan",
      C: "rela berkorban untuk bangsa dan negara",
      D: "setia kepada Pancasila sebagai ideologi negara",
      E: "cinta tanah air"
    },
    kunci: "B",
    pembahasan: "Lima nilai dasar bela negara: cinta tanah air, sadar berbangsa dan bernegara, setia kepada Pancasila, rela berkorban, dan kemampuan awal bela negara."
  },
  {
    nomor: 19,
    subtes: "TWK",
    topik: "Pilar Negara",
    level: "sedang",
    soal: "Menurut UU Nomor 12 Tahun 2011, kedudukan Pancasila dalam tata hukum Indonesia adalah …",
    opsi: {
      A: "asas hukum acara pidana",
      B: "sumber dari segala sumber hukum negara",
      C: "sumber hukum internasional",
      D: "hukum dasar tertulis negara",
      E: "peraturan tertinggi di bawah UUD 1945"
    },
    kunci: "B",
    pembahasan: "Pancasila adalah sumber segala sumber hukum negara. UUD 1945 adalah hukum dasar tertulis."
  },
  {
    nomor: 20,
    subtes: "TWK",
    topik: "Pilar Negara",
    level: "sedang",
    soal: "UUD 1945 diubah secara bertahap dalam kurun waktu …",
    opsi: {
      A: "1966–1969",
      B: "1945–1949",
      C: "1959–1962",
      D: "2004–2007",
      E: "1999–2002"
    },
    kunci: "E",
    pembahasan: "Perubahan dilakukan empat kali oleh MPR: 1999, 2000, 2001, dan 2002."
  },
  {
    nomor: 21,
    subtes: "TWK",
    topik: "Pilar Negara",
    level: "sedang",
    soal: "Pasal 1 ayat (2) UUD 1945 setelah perubahan menyatakan bahwa kedaulatan berada di tangan rakyat dan …",
    opsi: {
      A: "dilakukan sepenuhnya oleh MPR",
      B: "dilaksanakan menurut Undang-Undang Dasar",
      C: "dijalankan oleh partai politik",
      D: "dipegang oleh DPR",
      E: "dilaksanakan oleh Presiden"
    },
    kunci: "B",
    pembahasan: "Sebelum perubahan, kedaulatan dilakukan sepenuhnya oleh MPR. Setelahnya, rakyat berdaulat dan pelaksanaannya menurut UUD."
  },
  {
    nomor: 22,
    subtes: "TWK",
    topik: "Pilar Negara",
    level: "sedang",
    soal: "Menurut Pasal 37 UUD 1945, usul perubahan pasal dapat diagendakan dalam sidang MPR jika diajukan sekurang-kurangnya oleh …",
    opsi: {
      A: "1/2 dari jumlah anggota MPR",
      B: "1/3 dari jumlah anggota MPR",
      C: "1/4 dari jumlah anggota MPR",
      D: "3/4 dari jumlah anggota MPR",
      E: "2/3 dari jumlah anggota MPR"
    },
    kunci: "B",
    pembahasan: "Usul diajukan sekurang-kurangnya 1/3 anggota MPR; sidang dihadiri 2/3 anggota; putusan disetujui sekurang-kurangnya 50% + 1."
  },
  {
    nomor: 23,
    subtes: "TWK",
    topik: "Pilar Negara",
    level: "sedang",
    soal: "Bagian UUD 1945 yang tidak dapat diubah berdasarkan Pasal 37 ayat (5) adalah …",
    opsi: {
      A: "masa jabatan Presiden",
      B: "kewenangan Mahkamah Konstitusi",
      C: "jumlah anggota DPR",
      D: "bentuk Negara Kesatuan Republik Indonesia",
      E: "sistem pemilihan umum"
    },
    kunci: "D",
    pembahasan: "Pasal 37 ayat (5): khusus mengenai bentuk NKRI tidak dapat dilakukan perubahan."
  },
  {
    nomor: 24,
    subtes: "TWK",
    topik: "Pilar Negara",
    level: "sedang",
    soal: "Pancasila disebut ideologi terbuka karena …",
    opsi: {
      A: "nilai dasarnya bersifat tetap, sedangkan nilai instrumental dan praksisnya dapat disesuaikan dengan perkembangan zaman",
      B: "tidak memerlukan penjabaran dalam peraturan",
      C: "boleh dicampur dengan ideologi lain tanpa batas",
      D: "hanya berlaku bagi penyelenggara negara",
      E: "seluruh silanya dapat diubah sesuai kebutuhan zaman"
    },
    kunci: "A",
    pembahasan: "Keterbukaan Pancasila berarti nilai dasarnya tetap, tetapi penjabaran dalam peraturan dan praktik dapat berkembang."
  },
  {
    nomor: 25,
    subtes: "TWK",
    topik: "Pilar Negara",
    level: "sedang",
    soal: "Seorang warga dilarang beribadah di rumahnya sendiri karena berbeda keyakinan dengan lingkungan sekitar. Tindakan ini melanggar jaminan konstitusi pada …",
    opsi: {
      A: "Pasal 31 ayat (1) UUD 1945",
      B: "Pasal 27 ayat (3) UUD 1945",
      C: "Pasal 30 ayat (1) UUD 1945",
      D: "Pasal 29 ayat (2) UUD 1945",
      E: "Pasal 33 ayat (1) UUD 1945"
    },
    kunci: "D",
    pembahasan: "Pasal 29 ayat (2): negara menjamin kemerdekaan tiap penduduk memeluk agamanya dan beribadat menurut agama dan kepercayaannya."
  },
  {
    nomor: 26,
    subtes: "TWK",
    topik: "Bahasa Indonesia",
    level: "sedang",
    soal: "Kelompok kata yang seluruhnya baku adalah …",
    opsi: {
      A: "apotik, antre, jadwal",
      B: "nasehat, resiko, praktek",
      C: "analisa, risiko, praktik",
      D: "nasihat, risiko, praktik",
      E: "izin, kwalitas, sistem"
    },
    kunci: "D",
    pembahasan: "Bentuk baku: nasihat, risiko, praktik. Tidak baku: analisa (analisis), nasehat, resiko, praktek, apotik (apotek), kwalitas (kualitas)."
  },
  {
    nomor: 27,
    subtes: "TWK",
    topik: "Bahasa Indonesia",
    level: "sedang",
    soal: "Kalimat yang efektif adalah …",
    opsi: {
      A: "Kepada para peserta-peserta rapat diminta untuk mengisi daftar hadir.",
      B: "Daftar hadir hendaknya supaya diisi oleh peserta rapat.",
      C: "Para hadirin sekalian dimohon untuk segera berdiri.",
      D: "Peserta diminta segera mengisi daftar hadir sebelum rapat dimulai.",
      E: "Mengenai daftar hadir, diharapkan agar kiranya diisi oleh peserta."
    },
    kunci: "D",
    pembahasan: "Kalimat efektif hemat kata dan tidak mubazir. Pilihan lain mengandung pleonasme: para + sekalian, hendaknya supaya, para + kata ulang, dan diharapkan agar kiranya."
  },
  {
    nomor: 28,
    subtes: "TWK",
    topik: "Bahasa Indonesia",
    level: "sedang",
    soal: "Penulisan huruf kapital yang benar terdapat pada kalimat …",
    opsi: {
      A: "Ibu Kartini adalah Pahlawan Nasional.",
      B: "Dia menjadi Presiden direktur perusahaan itu.",
      C: "Mereka tiba di bandara hasanuddin kemarin.",
      D: "Kami berlibur ke Pulau Sulawesi pada bulan Agustus.",
      E: "Ia lahir di sulawesi selatan."
    },
    kunci: "D",
    pembahasan: "Nama geografi dan nama bulan dikapitalkan. Sebutan jabatan atau gelar umum seperti pahlawan nasional dan presiden direktur tidak dikapitalkan."
  },
  {
    nomor: 29,
    subtes: "TWK",
    topik: "Bahasa Indonesia",
    level: "sedang",
    soal: "Perhatikan paragraf berikut.\n\nLiterasi digital tidak hanya berarti mahir menggunakan perangkat. Ia mencakup kemampuan menilai kebenaran informasi, menjaga etika bermedia, dan melindungi data pribadi. Tanpa kemampuan tersebut, pengguna internet mudah terjebak hoaks dan penipuan daring. Karena itu, pendidikan literasi digital perlu dimulai sejak dini.\n\nGagasan utama paragraf tersebut adalah …",
    opsi: {
      A: "Etika bermedia hanya penting bagi pelajar.",
      B: "Literasi digital mencakup lebih dari kemahiran perangkat sehingga perlu diajarkan sejak dini.",
      C: "Perangkat digital semakin canggih setiap tahun.",
      D: "Data pribadi lebih penting daripada informasi publik.",
      E: "Pengguna internet mudah terjebak penipuan daring."
    },
    kunci: "B",
    pembahasan: "Kalimat pertama dan terakhir menyatakan inti: literasi digital lebih luas daripada keterampilan teknis dan harus ditanamkan sejak dini. Pilihan lain hanya detail atau tidak disebut."
  },
  {
    nomor: 30,
    subtes: "TWK",
    topik: "Bahasa Indonesia",
    level: "sedang",
    soal: "Penulisan kata yang benar terdapat pada kalimat …",
    opsi: {
      A: "Dokumen itu sudah ditandatangani oleh direktur.",
      B: "Ia bertanggungjawab atas laporan itu.",
      C: "Mereka bekerjasama dalam proyek itu.",
      D: "Kantor itu telah di renovasi bulan lalu.",
      E: "Surat itu belum di tanda tangani."
    },
    kunci: "A",
    pembahasan: "Yang benar: kerja sama, bertanggung jawab (dua kata), ditandatangani (satu kata), direnovasi. Awalan di- ditulis serangkai dengan kata dasarnya."
  }
];

module.exports = { twkQuestions };
