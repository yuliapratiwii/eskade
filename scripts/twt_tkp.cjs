// TKP Questions 71-100 from Bank Soal SKD CPNS 2026 (@aihiforal / twt)

const tkpQuestions = [
  {
    nomor: 71,
    subtes: "TKP",
    topik: "Pelayanan Publik",
    level: "sedang",
    soal: "Pukul 15.55, lima menit sebelum loket tutup, seorang warga datang membawa berkas lengkap. Pelayanannya memerlukan sekitar 15 menit. Sikap Anda …",
    opsi: {
      A: "Melayani sambil menunjukkan keberatan agar warga tahu Anda lembur",
      B: "Meminta warga datang kembali besok karena loket akan tutup",
      C: "Melayani hingga tuntas dengan ramah meskipun melewati jam tutup",
      D: "Menerima berkas, menjelaskan prosesnya dilanjutkan besok pagi, dan memberi tanda terima",
      E: "Meminta warga mencari petugas lain di ruangan sebelah"
    },
    kunci: "C",
    skor_tkp: { A: 3, B: 1, C: 5, D: 4, E: 2 },
    pembahasan: "Pelayanan publik berorientasi pada kebutuhan warga: layani tuntas dengan ramah (skor 5). Tanda terima tetap memberi kepastian (skor 4); menolak (skor 1) tidak melayani."
  },
  {
    nomor: 72,
    subtes: "TKP",
    topik: "Pelayanan Publik",
    level: "sedang",
    soal: "Sistem antrean daring terganggu sehingga layanan tertunda. Seorang warga marah dan menyalahkan petugas di depan banyak orang. Anda …",
    opsi: {
      A: "Menyalahkan bagian IT di depan warga agar tidak disalahkan",
      B: "Mendengarkan, meminta maaf, menjelaskan kendala, dan menawarkan layanan manual dengan perkiraan waktu",
      C: "Meminta warga tenang dan menunggu sampai sistem pulih",
      D: "Membiarkan warga sampai emosinya reda sendiri",
      E: "Mengajak warga ke ruang terpisah untuk menjelaskan situasi dan meminta kesabarannya"
    },
    kunci: "B",
    skor_tkp: { A: 1, B: 5, C: 3, D: 2, E: 4 },
    pembahasan: "Empati, penjelasan, dan solusi alternatif memberi skor tertinggi (skor 5). Menyalahkan pihak lain di depan publik merusak kepercayaan (skor 1)."
  },
  {
    nomor: 73,
    subtes: "TKP",
    topik: "Pelayanan Publik",
    level: "sedang",
    soal: "Seorang warga lanjut usia kesulitan mengisi formulir pendaftaran daring di unit Anda. Anda …",
    opsi: {
      A: "Memberikan tautan video panduan agar dipelajari di rumah",
      B: "Menjelaskan langkahnya dengan bahasa sederhana, lalu memantau saat ia mencoba sendiri",
      C: "Mengarahkannya ke loket lain tanpa penjelasan",
      D: "Mendampingi dengan sabar dan membantu mengisi hingga datanya benar",
      E: "Meminta ia membawa anaknya untuk mengisi"
    },
    kunci: "D",
    skor_tkp: { A: 3, B: 4, C: 1, D: 5, E: 2 },
    pembahasan: "Pelayanan inklusif berarti membantu kelompok rentan secara langsung (skor 5). Mengalihkan tanpa penjelasan adalah sikap paling buruk (skor 1)."
  },
  {
    nomor: 74,
    subtes: "TKP",
    topik: "Pelayanan Publik",
    level: "sedang",
    soal: "Atasan meminta Anda mendahulukan teman atasan yang datang tanpa nomor antrean, padahal banyak warga sedang menunggu. Anda …",
    opsi: {
      A: "Meminta teman atasan mengambil nomor antrean dan menyampaikan perkiraan waktu layanan",
      B: "Melayani teman atasan dan meminta warga lain memaklumi karena ada keperluan mendesak",
      C: "Tetap melayani sesuai antrean dan menjelaskan kepada atasan bahwa SOP berlaku bagi semua warga",
      D: "Melayani temannya setelah meminta izin kepada warga yang sedang mengantre",
      E: "Melayani teman atasan lebih dulu tanpa berkata apa pun"
    },
    kunci: "C",
    skor_tkp: { A: 4, B: 2, C: 5, D: 3, E: 1 },
    pembahasan: "Pelayanan harus adil dan tidak diskriminatif. Mengikuti SOP sambil berkomunikasi sopan kepada atasan adalah sikap terbaik (skor 5)."
  },
  {
    nomor: 75,
    subtes: "TKP",
    topik: "Pelayanan Publik",
    level: "sedang",
    soal: "Hasil survei kepuasan masyarakat terhadap unit Anda rendah. Sikap Anda …",
    opsi: {
      A: "Menganalisis keluhan, menyusun usulan perbaikan, dan memantau tindak lanjutnya bersama tim",
      B: "Membiarkan karena penilaian survei bersifat subjektif",
      C: "Menyampaikan hasil survei kepada atasan tanpa usulan apa pun",
      D: "Meminta responden mengubah penilaiannya",
      E: "Mengajak rekan berdiskusi mencari penyebab rendahnya penilaian"
    },
    kunci: "A",
    skor_tkp: { A: 5, B: 2, C: 3, D: 1, E: 4 },
    pembahasan: "Survei adalah bahan perbaikan layanan. Skor tertinggi untuk analisis komprehensif, usulan, dan pemantauan tindak lanjut (skor 5); memanipulasi responden paling tidak tepat (skor 1)."
  },
  {
    nomor: 76,
    subtes: "TKP",
    topik: "Pelayanan Publik",
    level: "sedang",
    soal: "Seorang warga menanyakan hal yang bukan kewenangan unit Anda. Anda …",
    opsi: {
      A: "Menjelaskan bahwa itu bukan kewenangan unit Anda dan mengantar atau menghubungkan warga ke unit yang berwenang",
      B: "Menjawab sebisanya berdasarkan perkiraan",
      C: "Memberi tahu alamat dan prosedur unit yang tepat",
      D: "Mengatakan bahwa itu bukan urusan Anda",
      E: "Menyarankan warga bertanya sendiri ke unit lain tanpa petunjuk lokasi"
    },
    kunci: "A",
    skor_tkp: { A: 5, B: 2, C: 4, D: 1, E: 3 },
    pembahasan: "Pelayanan prima tetap membantu warga mendapat jawaban yang benar dengan mengantar/menghubungkan ke unit terkait (skor 5). Jawaban asal-asalan berisiko menyesatkan."
  },
  {
    nomor: 77,
    subtes: "TKP",
    topik: "Jejaring Kerja",
    level: "sedang",
    soal: "Proyek lintas unit membutuhkan data dari unit lain, tetapi mereka lambat merespons padahal tenggat dekat. Anda …",
    opsi: {
      A: "Menunggu hingga data diberikan",
      B: "Memakai data lama tanpa memberi tahu siapa pun",
      C: "Mengirim pengingat tertulis berkala dengan tembusan kepada atasan kedua unit",
      D: "Menghubungi langsung, menjelaskan urgensi, menawarkan bantuan, dan menyepakati tenggat bersama",
      E: "Melapor kepada atasan agar unit tersebut ditegur"
    },
    kunci: "D",
    skor_tkp: { A: 2, B: 1, C: 4, D: 5, E: 3 },
    pembahasan: "Membangun jejaring berarti komunikasi langsung, saling membantu, dan menyepakati solusi bersama (skor 5), bukan langsung mengeskalasi atau pasif."
  },
  {
    nomor: 78,
    subtes: "TKP",
    topik: "Jejaring Kerja",
    level: "sedang",
    soal: "Dalam rapat koordinasi, dua pihak berbeda pendapat tajam. Anda sebagai peserta …",
    opsi: {
      A: "Mendukung pihak yang argumennya paling kuat",
      B: "Menyerahkan keputusan kepada pimpinan",
      C: "Memfasilitasi diskusi dengan menegaskan tujuan bersama dan mencari titik temu",
      D: "Diam dan menunggu rapat selesai",
      E: "Mengusulkan rapat dilanjutkan setelah tiap pihak menyiapkan data pendukung"
    },
    kunci: "C",
    skor_tkp: { A: 2, B: 3, C: 5, D: 1, E: 4 },
    pembahasan: "Kolaborasi yang baik mengutamakan pencapaian tujuan bersama dan mencari titik temu yang dapat diterima semua pihak (skor 5)."
  },
  {
    nomor: 79,
    subtes: "TKP",
    topik: "Jejaring Kerja",
    level: "sedang",
    soal: "Anda baru dipindahkan ke unit baru dan rekan kerja tampak tertutup. Anda …",
    opsi: {
      A: "Bekerja sendiri tanpa berinteraksi",
      B: "Menunggu diajak berinteraksi lebih dulu",
      C: "Menyapa, mengajak makan siang, bertanya dengan hormat, dan menawarkan bantuan",
      D: "Aktif berkomunikasi soal pekerjaan dan memanfaatkan momen informal untuk saling mengenal",
      E: "Mengeluh kepada atasan bahwa rekan tidak ramah"
    },
    kunci: "C",
    skor_tkp: { A: 1, B: 3, C: 5, D: 4, E: 2 },
    pembahasan: "Inisiatif proaktif dan ramah dalam membangun hubungan personal dan profesional adalah kunci sukses beradaptasi di lingkungan baru (skor 5)."
  },
  {
    nomor: 80,
    subtes: "TKP",
    topik: "Jejaring Kerja",
    level: "sedang",
    soal: "Staf instansi lain meminta data yang bersifat rahasia kepada Anda melalui pesan singkat. Anda …",
    opsi: {
      A: "Meminta arahan atasan terlebih dahulu sebelum menanggapi",
      B: "Menolak tanpa memberi penjelasan",
      C: "Menolak dengan sopan dan menjelaskan prosedur permohonan data secara resmi",
      D: "Memberikan seluruh data karena sesama instansi pemerintah",
      E: "Memberikan sebagian data agar hubungan tetap baik"
    },
    kunci: "C",
    skor_tkp: { A: 4, B: 3, C: 5, D: 1, E: 2 },
    pembahasan: "Hubungan kerja yang baik tetap harus patuh pada aturan keamanan data dan kerahasiaan jabatan; arahkan ke jalur resmi dengan sopan (skor 5)."
  },
  {
    nomor: 81,
    subtes: "TKP",
    topik: "Jejaring Kerja",
    level: "sedang",
    soal: "Sebagai ketua tim, Anda mendapati satu anggota sering absen rapat tanpa alasan. Anda …",
    opsi: {
      A: "Mengerjakan bagiannya sendiri agar target tetap tercapai",
      B: "Menegur melalui grup chat agar menjadi pelajaran",
      C: "Melaporkan kepada atasan disertai data kehadiran",
      D: "Mengeluarkannya dari tim tanpa pemberitahuan",
      E: "Berbicara empat mata, menggali kendalanya, dan menyepakati komitmen bersama"
    },
    kunci: "E",
    skor_tkp: { A: 3, B: 2, C: 4, D: 1, E: 5 },
    pembahasan: "Kepemimpinan transformatif mengedepankan pendekatan personal empat mata untuk menggali akar persoalan dan membangun komitmen baru (skor 5)."
  },
  {
    nomor: 82,
    subtes: "TKP",
    topik: "Sosial Budaya",
    level: "sedang",
    soal: "Rekan kerja yang berbeda keyakinan meminta izin beribadah saat rapat penting berlangsung. Anda …",
    opsi: {
      A: "Mengizinkan, lalu menyampaikan hasil rapat kepada yang bersangkutan",
      B: "Mengizinkan disertai sindiran bahwa pekerjaan lebih penting",
      C: "Mengizinkan dan mengatur jeda rapat agar tidak bentrok dengan waktu ibadah",
      D: "Mengizinkan sambil mengeluhkan waktu rapat yang terganggu",
      E: "Menolak karena rapat dianggap lebih penting"
    },
    kunci: "C",
    skor_tkp: { A: 4, B: 2, C: 5, D: 3, E: 1 },
    pembahasan: "Menghormati kebebasan beribadah dengan menyesuaikan ritme kerja (mengatur jeda/skors) adalah cerminan toleransi dan profesionalitas tertinggi (skor 5)."
  },
  {
    nomor: 83,
    subtes: "TKP",
    topik: "Sosial Budaya",
    level: "sedang",
    soal: "Anda ditugaskan di daerah dengan adat berbeda dan diundang menghadiri acara adat warga. Anda …",
    opsi: {
      A: "Menolak karena adat tersebut dianggap tidak penting",
      B: "Menolak dengan alasan pekerjaan sambil mengucapkan terima kasih",
      C: "Hadir, menghormati tata krama setempat, dan belajar dari warga",
      D: "Hadir sebentar dan menyampaikan salam hormat kepada tuan rumah",
      E: "Hadir sambil berkomentar negatif tentang adat itu"
    },
    kunci: "C",
    skor_tkp: { A: 2, B: 3, C: 5, D: 4, E: 1 },
    pembahasan: "Menghargai kearifan lokal, membaur, dan belajar dari masyarakat setempat sangat penting dalam merekatkan persatuan dan kelancaran pengabdian ASN (skor 5)."
  },
  {
    nomor: 84,
    subtes: "TKP",
    topik: "Sosial Budaya",
    level: "sedang",
    soal: "Seorang rekan bercanda dengan merendahkan suku salah satu pegawai di ruang kerja. Anda …",
    opsi: {
      A: "Melaporkan kepada atasan tanpa menegur lebih dulu",
      B: "Ikut tertawa agar suasana akrab",
      C: "Menegur secara pribadi dengan sopan bahwa candaan itu menyinggung dan mengingatkan nilai keberagaman",
      D: "Diam saja karena hanya bercanda",
      E: "Mengalihkan pembicaraan ke topik lain"
    },
    kunci: "C",
    skor_tkp: { A: 3, B: 1, C: 5, D: 2, E: 4 },
    pembahasan: "Menegur dengan bijak dan sopan secara privat mencegah lelucon diskriminatif terulang tanpa mempermalukan rekan di depan umum (skor 5)."
  },
  {
    nomor: 85,
    subtes: "TKP",
    topik: "Sosial Budaya",
    level: "sedang",
    soal: "Anda melihat unggahan media sosial pribadi rekan yang merendahkan agama lain. Anda …",
    opsi: {
      A: "Menyebarkan tangkapan layar ke grup kantor",
      B: "Mengabaikan karena itu akun pribadi",
      C: "Menegur terbuka di kolom komentar",
      D: "Melaporkan kepada atasan atau pihak berwenang tanpa menegur",
      E: "Menegur secara pribadi, menyarankan untuk menghapus, dan menjelaskan dampaknya"
    },
    kunci: "E",
    skor_tkp: { A: 1, B: 2, C: 3, D: 4, E: 5 },
    pembahasan: "Teguran secara privat bersifat mendidik, mencegah dampak hukum/sosial bagi yang bersangkutan, dan menjaga kerukunan bersama (skor 5)."
  },
  {
    nomor: 86,
    subtes: "TKP",
    topik: "Sosial Budaya",
    level: "sedang",
    soal: "Dalam rapat tim, seorang anggota dari kelompok minoritas jarang berbicara. Anda …",
    opsi: {
      A: "Menunggu ia berbicara sendiri tanpa dorongan",
      B: "Mengabaikannya karena sudah banyak yang berpendapat",
      C: "Mengajak berdiskusi secara pribadi setelah rapat untuk mendengar masukannya",
      D: "Meminta ia presentasi mendadak agar terbiasa",
      E: "Mengundang pendapatnya dengan tulus tanpa memaksa dan memberi ruang berbicara"
    },
    kunci: "E",
    skor_tkp: { A: 3, B: 1, C: 4, D: 2, E: 5 },
    pembahasan: "Sikap inklusif tercermin saat kita memberikan kesempatan dan ruang aman bagi siapa pun untuk mengemukakan gagasannya secara nyaman (skor 5)."
  },
  {
    nomor: 87,
    subtes: "TKP",
    topik: "Teknologi Informasi dan Komunikasi",
    level: "sedang",
    soal: "Anda menerima pesan berantai berisi kabar belum terverifikasi tentang kebijakan pemerintah. Anda …",
    opsi: {
      A: "Memeriksa kebenarannya di sumber resmi, tidak menyebarkan bila belum terbukti, dan membagikan klarifikasi bila ternyata hoaks",
      B: "Menghapus pesan lalu mengingatkan pengirim agar memeriksa informasi lebih dulu",
      C: "Mengabaikan pesan tersebut",
      D: "Meneruskan ke semua grup agar masyarakat waspada",
      E: "Meneruskan dengan catatan ‘belum tentu benar’"
    },
    kunci: "A",
    skor_tkp: { A: 5, B: 4, C: 3, D: 1, E: 2 },
    pembahasan: "Literasi digital yang matang menuntut verifikasi aktif melalui saluran kredibel dan memberikan edukasi/klarifikasi jika informasi tersebut keliru (skor 5)."
  },
  {
    nomor: 88,
    subtes: "TKP",
    topik: "Teknologi Informasi dan Komunikasi",
    level: "sedang",
    soal: "Anda menerima email yang mengaku dari instansi pusat dan meminta Anda masuk melalui tautan untuk memperbarui kata sandi. Anda …",
    opsi: {
      A: "Menghapus email dan memberi tahu rekan agar waspada",
      B: "Membuka tautan dan mengisi data agar akun tidak diblokir",
      C: "Membuka tautan tetapi tidak mengisi data",
      D: "Tidak membuka tautan, melaporkan ke tim keamanan informasi, lalu menghapus email",
      E: "Membalas email untuk menanyakan keasliannya"
    },
    kunci: "D",
    skor_tkp: { A: 4, B: 1, C: 2, D: 5, E: 3 },
    pembahasan: "Waspada terhadap serangan phishing: jangan pernah klik tautan mencurigakan dan laporkan segera ke unit keamanan siber/IT instansi (skor 5)."
  },
  {
    nomor: 89,
    subtes: "TKP",
    topik: "Teknologi Informasi dan Komunikasi",
    level: "sedang",
    soal: "Instansi Anda menerapkan aplikasi administrasi baru, tetapi rekan senior menolak mencobanya. Anda …",
    opsi: {
      A: "Menyusun panduan ringkas dan menawarkan bantuan bila diperlukan",
      B: "Membiarkan rekan senior tetap memakai cara lama",
      C: "Mendemonstrasikan manfaat aplikasi, memberi pendampingan, dan latihan singkat",
      D: "Memaksa rekan senior menggunakannya",
      E: "Melapor kepada atasan bahwa rekan senior menolak perubahan"
    },
    kunci: "C",
    skor_tkp: { A: 4, B: 1, C: 5, D: 2, E: 3 },
    pembahasan: "Transformasi digital membutuhkan pendekatan persuasif lewat simulasi manfaat langsung dan pendampingan bertahap dengan empati (skor 5)."
  },
  {
    nomor: 90,
    subtes: "TKP",
    topik: "Teknologi Informasi dan Komunikasi",
    level: "sedang",
    soal: "Anda menemukan berkas berisi data pribadi masyarakat tersimpan di folder bersama yang dapat diakses semua pegawai. Anda …",
    opsi: {
      A: "Melaporkan kepada atasan tanpa tindakan pengamanan lain",
      B: "Memberi tahu rekan di dekat Anda agar tidak membukanya",
      C: "Membiarkan karena bukan data milik Anda",
      D: "Segera membatasi akses sesuai kewenangan dan melaporkan kepada pengelola data atau atasan",
      E: "Menghapus berkas tanpa memberi tahu siapa pun"
    },
    kunci: "D",
    skor_tkp: { A: 4, B: 3, C: 1, D: 5, E: 2 },
    pembahasan: "Perlindungan data pribadi menuntut aksi mitigasi cepat (membatasi akses) lalu melaporkannya secara transparan dan bertanggung jawab (skor 5)."
  },
  {
    nomor: 91,
    subtes: "TKP",
    topik: "Teknologi Informasi dan Komunikasi",
    level: "sedang",
    soal: "Dalam rapat daring, koneksi internet Anda buruk sehingga suara sering terputus. Anda …",
    opsi: {
      A: "Keluar dari rapat tanpa pemberitahuan",
      B: "Meminta rekan menyampaikan poin Anda dan mengirim materi tertulis",
      C: "Meminta rapat dijadwalkan ulang tanpa upaya perbaikan",
      D: "Tetap berbicara meskipun suara terputus-putus",
      E: "Memberi tahu peserta, mematikan video, pindah ke jaringan lebih stabil, dan mengirim ringkasan tertulis"
    },
    kunci: "E",
    skor_tkp: { A: 1, B: 4, C: 3, D: 2, E: 5 },
    pembahasan: "Solutif dan bertanggung jawab saat kendala teknis: mitigasi beban jaringan, cari koneksi cadangan, dan komunikasikan materi secara tertulis (skor 5)."
  },
  {
    nomor: 92,
    subtes: "TKP",
    topik: "Profesionalisme",
    level: "sedang",
    soal: "Dua atasan berbeda memberi Anda tugas mendesak pada waktu bersamaan. Anda …",
    opsi: {
      A: "Menyampaikan kondisi kepada kedua atasan, meminta penentuan prioritas, lalu menyusun jadwal kerja",
      B: "Mengabaikan keduanya sampai ditagih",
      C: "Meminta bantuan rekan untuk satu tugas dengan arahan yang jelas",
      D: "Mengerjakan salah satu tugas yang paling mudah",
      E: "Mengerjakan keduanya sekaligus dengan hasil seadanya"
    },
    kunci: "A",
    skor_tkp: { A: 5, B: 1, C: 4, D: 3, E: 2 },
    pembahasan: "Komunikasi profesional terbuka mengenai prioritas dan kapasitas beban kerja menjaga mutu hasil tugas dan kepastian instansi (skor 5)."
  },
  {
    nomor: 93,
    subtes: "TKP",
    topik: "Profesionalisme",
    level: "sedang",
    soal: "Anda menyadari ada kesalahan input data pada laporan yang sudah dikirim. Anda …",
    opsi: {
      A: "Menyalahkan sistem aplikasi",
      B: "Menunggu sampai kesalahan ditemukan orang lain",
      C: "Menanyakan kepada rekan apakah kesalahan itu perlu dilaporkan",
      D: "Segera melapor kepada atasan, memperbaiki data, dan mengirim revisi laporan",
      E: "Memperbaiki dan mengirim revisi, lalu menjelaskan alasannya bila ditanya"
    },
    kunci: "D",
    skor_tkp: { A: 1, B: 2, C: 3, D: 5, E: 4 },
    pembahasan: "Integritas dan akuntabilitas: berani mengakui kekeliruan dengan cepat, langsung memperbaiki, dan menyampaikan revisi secara terbuka (skor 5)."
  },
  {
    nomor: 94,
    subtes: "TKP",
    topik: "Profesionalisme",
    level: "sedang",
    soal: "Pekerjaan Anda selesai lebih cepat dari jadwal dan masih ada waktu luang. Anda …",
    opsi: {
      A: "Merapikan arsip pribadi",
      B: "Beristirahat sambil menunggu tugas berikutnya",
      C: "Memeriksa ulang hasil kerja, lalu membantu rekan atau mempelajari keterampilan baru",
      D: "Meminta tugas tambahan kepada atasan",
      E: "Bermedia sosial sampai jam kerja berakhir"
    },
    kunci: "C",
    skor_tkp: { A: 3, B: 2, C: 5, D: 4, E: 1 },
    pembahasan: "Memastikan kualitas pekerjaan sendiri tuntas sempurna, lalu memanfaatkan sisa waktu untuk kolaborasi dan pengembangan kompetensi (skor 5)."
  },
  {
    nomor: 95,
    subtes: "TKP",
    topik: "Profesionalisme",
    level: "sedang",
    soal: "Atasan mengkritik pekerjaan Anda dengan keras di depan rekan-rekan. Anda …",
    opsi: {
      A: "Menerima kritik, menanyakan bagian yang perlu diperbaiki, dan mengevaluasi diri",
      B: "Menjelaskan kendala dengan sopan, lalu menerima masukan",
      C: "Membela diri dan menyalahkan rekan",
      D: "Diam, tetapi menyimpan kekesalan",
      E: "Meminta atasan menyampaikan kritik secara pribadi di lain waktu"
    },
    kunci: "A",
    skor_tkp: { A: 5, B: 4, C: 1, D: 2, E: 3 },
    pembahasan: "Kematangan emosional dan fokus pada perbaikan kualitas hasil kerja: menerima kritik secara objektif dan menanyakan poin perbaikan (skor 5)."
  },
  {
    nomor: 96,
    subtes: "TKP",
    topik: "Profesionalisme",
    level: "sedang",
    soal: "Anda mendapat tugas yang berada di luar keahlian Anda. Anda …",
    opsi: {
      A: "Menolak karena bukan bidangnya",
      B: "Mengerjakan seadanya tanpa bertanya",
      C: "Menyampaikan keterbatasan dan meminta bimbingan sambil tetap menyelesaikan tugas",
      D: "Menerima tugas, belajar dengan cepat, dan berkonsultasi dengan orang yang lebih ahli",
      E: "Meminta pelatihan lebih dulu sebelum memulai apa pun"
    },
    kunci: "D",
    skor_tkp: { A: 1, B: 2, C: 4, D: 5, E: 3 },
    pembahasan: "Sikap adaptif dan berorientasi pada hasil (growth mindset): siap belajar cepat, proaktif berkonsultasi dengan ahli demi menuntaskan tugas (skor 5)."
  },
  {
    nomor: 97,
    subtes: "TKP",
    topik: "Anti Radikalisme",
    level: "sedang",
    soal: "Seorang teman mengajak Anda bergabung dalam kelompok yang mengajarkan bahwa Pancasila harus diganti dan menolak menghormati bendera. Anda …",
    opsi: {
      A: "Menghadiri sekali untuk mengetahui isinya",
      B: "Bergabung karena penasaran dengan ajarannya",
      C: "Menolak dengan halus tanpa menjelaskan alasan",
      D: "Menolak ajakan, menegaskan komitmen pada Pancasila, dan melapor kepada pihak berwenang bila ada indikasi pelanggaran hukum",
      E: "Mengabaikan ajakan tersebut"
    },
    kunci: "D",
    skor_tkp: { A: 2, B: 1, C: 4, D: 5, E: 3 },
    pembahasan: "ASN wajib berpegang teguh pada ideologi Pancasila dan konstitusi: menolak tegas paham radikal serta waspada melaporkan ancaman hukum (skor 5)."
  },
  {
    nomor: 98,
    subtes: "TKP",
    topik: "Anti Radikalisme",
    level: "sedang",
    soal: "Seorang rekan sering membagikan konten kebencian terhadap kelompok tertentu di grup kantor. Anda …",
    opsi: {
      A: "Membalas dengan konten serupa",
      B: "Menegur rekan tersebut, mengingatkan dampaknya, dan melapor kepada atasan bila berlanjut",
      C: "Keluar dari grup agar tidak terlibat",
      D: "Menegur secara terbuka di grup",
      E: "Meminta admin grup menegakkan aturan grup"
    },
    kunci: "B",
    skor_tkp: { A: 1, B: 5, C: 2, D: 3, E: 4 },
    pembahasan: "Mencegah penyebaran narasi intoleransi secara konstruktif dengan teguran langsung dan eskalasi formal bila perilaku berlanjut (skor 5)."
  },
  {
    nomor: 99,
    subtes: "TKP",
    topik: "Anti Radikalisme",
    level: "sedang",
    soal: "Tetangga Anda mulai menutup diri dan sering melontarkan ujaran anti-NKRI. Anda …",
    opsi: {
      A: "Mengucilkan dan menyebarkan identitasnya di media sosial",
      B: "Merangkul dan berdialog dengan pendekatan kebangsaan, melibatkan keluarga atau tokoh masyarakat, serta melapor bila ada ancaman nyata",
      C: "Meminta tokoh masyarakat atau keluarganya menasihati tanpa terlibat langsung",
      D: "Menjaga jarak agar tidak terpengaruh",
      E: "Melapor kepada aparat tanpa berdialog lebih dulu"
    },
    kunci: "B",
    skor_tkp: { A: 1, B: 5, C: 4, D: 2, E: 3 },
    pembahasan: "Pencegahan radikalisme berbasis komunitas: merangkul secara persuasif, berdialog, melibatkan simpul sosial/keluarga, dan bertindak jika ada bahaya nyata (skor 5)."
  },
  {
    nomor: 100,
    subtes: "TKP",
    topik: "Anti Radikalisme",
    level: "sedang",
    soal: "Dalam seminar kantor, pembicara menyudutkan kelompok lain dan mengajak peserta menolak aturan negara. Anda …",
    opsi: {
      A: "Menyetujui ajakan pembicara agar tidak berbeda dengan peserta lain",
      B: "Meninggalkan ruangan diam-diam",
      C: "Menyampaikan keberatan dengan sopan saat tanya jawab dan memberi masukan kepada panitia",
      D: "Meminta panitia menghentikan pemaparan secara terbuka",
      E: "Mendengarkan hingga selesai tanpa tanggapan"
    },
    kunci: "C",
    skor_tkp: { A: 1, B: 3, C: 5, D: 4, E: 2 },
    pembahasan: "Menyikapi narasi intoleran secara berani, santun, dan melalui forum resmi yang etis agar kepanitiaan dapat mengevaluasi agenda tersebut (skor 5)."
  }
];

module.exports = { tkpQuestions };
