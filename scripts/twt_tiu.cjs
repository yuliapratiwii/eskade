// TIU Questions 31-70 from Bank Soal SKD CPNS 2026 (@aihiforal / twt)

const tiuQuestions = [
  {
    nomor: 31,
    subtes: "TIU",
    topik: "Analogi",
    level: "sedang",
    soal: "Nakhoda : Kapal = …",
    opsi: {
      A: "Pelaut : Laut",
      B: "Montir : Mobil",
      C: "Pilot : Bandara",
      D: "Masinis : Kereta api",
      E: "Penumpang : Bus"
    },
    kunci: "D",
    pembahasan: "Hubungan: pengemudi dan alat transportasinya. Nakhoda mengemudikan kapal, masinis mengemudikan kereta api."
  },
  {
    nomor: 32,
    subtes: "TIU",
    topik: "Analogi",
    level: "sedang",
    soal: "Vaksin : Kekebalan = …",
    opsi: {
      A: "Dokter : Rumah sakit",
      B: "Guru : Murid",
      C: "Obat : Apotek",
      D: "Buku : Perpustakaan",
      E: "Latihan : Keterampilan"
    },
    kunci: "E",
    pembahasan: "Hubungan: sarana dan hasil yang ditimbulkan. Vaksin menghasilkan kekebalan, latihan menghasilkan keterampilan."
  },
  {
    nomor: 33,
    subtes: "TIU",
    topik: "Analogi",
    level: "sedang",
    soal: "Hemat : Boros = …",
    opsi: {
      A: "Rajin : Malas",
      B: "Kuat : Tangguh",
      C: "Sedih : Murung",
      D: "Pintar : Cerdas",
      E: "Cepat : Gesit"
    },
    kunci: "A",
    pembahasan: "Hubungan: lawan kata. Hemat berlawanan dengan boros, rajin berlawanan dengan malas. Pilihan lain bersinonim."
  },
  {
    nomor: 34,
    subtes: "TIU",
    topik: "Analogi",
    level: "sedang",
    soal: "Termometer : Suhu = …",
    opsi: {
      A: "Higrometer : Tekanan udara",
      B: "Barometer : Tekanan udara",
      C: "Speedometer : Jarak",
      D: "Anemometer : Curah hujan",
      E: "Seismograf : Cuaca"
    },
    kunci: "B",
    pembahasan: "Hubungan: alat dan besaran yang diukurnya. Anemometer mengukur kecepatan angin, higrometer kelembapan, seismograf getaran bumi, barometer mengukur tekanan udara."
  },
  {
    nomor: 35,
    subtes: "TIU",
    topik: "Silogisme",
    level: "sedang",
    soal: "Semua pegawai yang disiplin akan dipromosikan. Sebagian pegawai tidak dipromosikan.\n\nKesimpulan yang tepat adalah …",
    opsi: {
      A: "Semua pegawai disiplin.",
      B: "Sebagian pegawai yang dipromosikan tidak disiplin.",
      C: "Tidak ada kesimpulan yang tepat.",
      D: "Sebagian pegawai tidak disiplin.",
      E: "Semua pegawai tidak disiplin."
    },
    kunci: "D",
    pembahasan: "Disiplin → dipromosikan. Kontraposisinya: tidak dipromosikan → tidak disiplin. Karena sebagian pegawai tidak dipromosikan, sebagian pegawai tidak disiplin."
  },
  {
    nomor: 36,
    subtes: "TIU",
    topik: "Silogisme",
    level: "sedang",
    soal: "Semua pelari adalah orang yang sehat. Sebagian pelari adalah mahasiswa.\n\nKesimpulan yang tepat adalah …",
    opsi: {
      A: "Sebagian mahasiswa bukan orang yang sehat.",
      B: "Semua mahasiswa adalah orang yang sehat.",
      C: "Sebagian mahasiswa adalah orang yang sehat.",
      D: "Semua pelari adalah mahasiswa.",
      E: "Tidak ada kesimpulan yang tepat."
    },
    kunci: "C",
    pembahasan: "Mahasiswa yang juga pelari pasti sehat, sehingga sebagian mahasiswa sehat. Kata ‘semua’ pada mahasiswa tidak dijamin."
  },
  {
    nomor: 37,
    subtes: "TIU",
    topik: "Silogisme",
    level: "sedang",
    soal: "Jika hujan turun, maka jalan licin. Jalan tidak licin.\n\nKesimpulan yang tepat adalah …",
    opsi: {
      A: "Jalan licin karena hujan.",
      B: "Tidak dapat disimpulkan.",
      C: "Hujan tidak turun.",
      D: "Mungkin hujan turun.",
      E: "Hujan turun."
    },
    kunci: "C",
    pembahasan: "Modus tollens: $p \\rightarrow q$ dan $\\sim q$, maka $\\sim p$. Jalan tidak licin berarti hujan tidak turun."
  },
  {
    nomor: 38,
    subtes: "TIU",
    topik: "Silogisme",
    level: "sedang",
    soal: "Sebagian guru adalah penulis. Sebagian penulis adalah pelukis.\n\nKesimpulan yang tepat adalah …",
    opsi: {
      A: "Tidak dapat ditarik kesimpulan.",
      B: "Sebagian guru adalah pelukis.",
      C: "Semua guru adalah pelukis.",
      D: "Semua penulis adalah guru.",
      E: "Sebagian pelukis bukan guru."
    },
    kunci: "A",
    pembahasan: "Dua premis partikular (‘sebagian’) tidak menjamin adanya irisan antara guru dan pelukis, sehingga tidak ada kesimpulan pasti yang dapat ditarik."
  },
  {
    nomor: 39,
    subtes: "TIU",
    topik: "Analitis",
    level: "sedang",
    soal: "Lima pegawai (Rina, Sari, Tono, Udin, Vira) duduk berjajar dalam satu baris dari kiri ke kanan. Rina duduk di ujung kiri. Udin duduk tepat di sebelah kanan Vira. Tono tidak duduk bersebelahan dengan Rina. Sari duduk tepat di antara Tono dan Udin.\n\nSiapa yang duduk di tengah?",
    opsi: {
      A: "Udin",
      B: "Tono",
      C: "Vira",
      D: "Sari",
      E: "Rina"
    },
    kunci: "A",
    pembahasan: "Rina di posisi paling kiri (1). Karena Udin tepat di kanan Vira, susunannya Vira-Udin. Sari duduk di antara Tono dan Udin, berarti urutan Udin-Sari-Tono. Maka urutan lengkap dari kiri ke kanan: Rina (1), Vira (2), Udin (3), Sari (4), Tono (5). Di tengah adalah Udin."
  },
  {
    nomor: 40,
    subtes: "TIU",
    topik: "Analitis",
    level: "sedang",
    soal: "Enam orang (P, Q, R, S, T, U) dibandingkan tinggi badannya. S lebih tinggi daripada U. U lebih tinggi daripada P. P lebih tinggi daripada Q. R lebih pendek daripada Q. T lebih pendek daripada R.\n\nSiapa orang tertinggi ke-3?",
    opsi: {
      A: "S",
      B: "P",
      C: "U",
      D: "Q",
      E: "R"
    },
    kunci: "B",
    pembahasan: "Urutan dari tertinggi: S > U > P > Q > R > T. Tertinggi ke-1: S, ke-2: U, ke-3: P."
  },
  {
    nomor: 41,
    subtes: "TIU",
    topik: "Analitis",
    level: "sedang",
    soal: "Ani, Budi, Cici, dan Dodi masing-masing memilih satu olahraga berbeda: futsal, voli, basket, atau renang. Dodi memilih renang. Budi tidak memilih voli maupun futsal. Cici tidak memilih futsal. Ani tidak memilih basket maupun renang.\n\nSiapa yang memilih voli?",
    opsi: {
      A: "Cici",
      B: "Dodi",
      C: "Ani",
      D: "Tidak dapat ditentukan",
      E: "Budi"
    },
    kunci: "A",
    pembahasan: "Dodi memilih renang. Budi tidak memilih voli, futsal, renang, maka Budi memilih basket. Sisa olahraga: futsal dan voli. Karena Cici tidak memilih futsal, Cici memilih voli. Sisanya Ani memilih futsal."
  },
  {
    nomor: 42,
    subtes: "TIU",
    topik: "Deret Angka",
    level: "sedang",
    soal: "3, 5, 9, 17, 33, … (angka berikutnya)",
    opsi: {
      A: "55",
      B: "59",
      C: "63",
      D: "65",
      E: "67"
    },
    kunci: "D",
    pembahasan: "Pola selisih: +2, +4, +8, +16 (selisih selalu dikali 2). Selisih berikutnya adalah +32. Maka angka berikutnya: $33 + 32 = 65$."
  },
  {
    nomor: 43,
    subtes: "TIU",
    topik: "Deret Angka",
    level: "sedang",
    soal: "2, 6, 12, 20, 30, 42, … (angka berikutnya)",
    opsi: {
      A: "52",
      B: "54",
      C: "56",
      D: "58",
      E: "60"
    },
    kunci: "C",
    pembahasan: "Pola selisih: +4, +6, +8, +10, +12. Selisih berikutnya adalah +14. Maka angka berikutnya: $42 + 14 = 56$ (atau rumus $n \\times (n+1)$)."
  },
  {
    nomor: 44,
    subtes: "TIU",
    topik: "Deret Angka",
    level: "sedang",
    soal: "5, 10, 8, 16, 14, 28, … (angka berikutnya)",
    opsi: {
      A: "24",
      B: "26",
      C: "30",
      D: "32",
      E: "42"
    },
    kunci: "B",
    pembahasan: "Pola bergantian $\\times 2$ dan $-2$:\n* $5 \\times 2 = 10$\n* $10 - 2 = 8$\n* $8 \\times 2 = 16$\n* $16 - 2 = 14$\n* $14 \\times 2 = 28$\n* $28 - 2 = 26$."
  },
  {
    nomor: 45,
    subtes: "TIU",
    topik: "Deret Angka",
    level: "sedang",
    soal: "1, 2, 6, 24, 120, … (angka berikutnya)",
    opsi: {
      A: "480",
      B: "600",
      C: "620",
      D: "720",
      E: "840"
    },
    kunci: "D",
    pembahasan: "Pola faktorial (dikalikan bilangan berurutan): $\\times 2, \\times 3, \\times 4, \\times 5$, berikutnya $\\times 6$. Jadi $120 \\times 6 = 720$."
  },
  {
    nomor: 46,
    subtes: "TIU",
    topik: "Berhitung",
    level: "sedang",
    soal: "25% dari 480 ditambah 3/8 dari 640 adalah …",
    opsi: {
      A: "320",
      B: "340",
      C: "360",
      D: "380",
      E: "400"
    },
    kunci: "C",
    pembahasan: "$25\\% \\times 480 = 120$; $\\frac{3}{8} \\times 640 = 240$. Jumlahnya $= 120 + 240 = 360$."
  },
  {
    nomor: 47,
    subtes: "TIU",
    topik: "Berhitung",
    level: "sedang",
    soal: "0,125 × 2,4 + 0,7 : 0,35 = …",
    opsi: {
      A: "1,8",
      B: "2,0",
      C: "2,3",
      D: "2,5",
      E: "2,7"
    },
    kunci: "C",
    pembahasan: "$0,125 \\times 2,4 = \\frac{1}{8} \\times 2,4 = 0,3$; $0,7 : 0,35 = 2$. Jumlahnya $= 0,3 + 2 = 2,3$."
  },
  {
    nomor: 48,
    subtes: "TIU",
    topik: "Berhitung",
    level: "sedang",
    soal: "1,2 × 75 − 3/4 × 80 + 15% × 200 = …",
    opsi: {
      A: "40",
      B: "50",
      C: "55",
      D: "60",
      E: "70"
    },
    kunci: "D",
    pembahasan: "$1,2 \\times 75 = 90$; $\\frac{3}{4} \\times 80 = 60$; $15\\% \\times 200 = 30$. Hasilnya $= 90 - 60 + 30 = 60$."
  },
  {
    nomor: 49,
    subtes: "TIU",
    topik: "Perbandingan Kuantitatif",
    level: "sedang",
    soal: "Bandingkan kuantitas P dan Q.\n\nP = 40% dari 350\nQ = 5/8 dari 224",
    opsi: {
      A: "P > Q",
      B: "P < Q",
      C: "P = Q",
      D: "Hubungan P dan Q tidak dapat ditentukan",
      E: "P + Q = 300"
    },
    kunci: "C",
    pembahasan: "P $= 40\\% \\times 350 = 140$. Q $= \\frac{5}{8} \\times 224 = 5 \\times 28 = 140$. Maka P = Q."
  },
  {
    nomor: 50,
    subtes: "TIU",
    topik: "Perbandingan Kuantitatif",
    level: "sedang",
    soal: "Bandingkan kuantitas P dan Q, dengan $x > 0$.\n\nP = $x + \\frac{1}{x}$\nQ = 2",
    opsi: {
      A: "P > Q",
      B: "P < Q",
      C: "P = Q",
      D: "Hubungan P dan Q tidak dapat ditentukan",
      E: "P = 2Q"
    },
    kunci: "D",
    pembahasan: "Untuk $x > 0$, berdasarkan pertidaksamaan AM-GM: $x + \\frac{1}{x} \\ge 2$. Saat $x = 1$, nilainya 2 (sehingga P = Q). Saat $x = 2$, nilainya 2,5 (sehingga P > Q). Oleh karena itu, hubungan P dan Q tidak dapat ditentukan secara tunggal."
  },
  {
    nomor: 51,
    subtes: "TIU",
    topik: "Perbandingan Kuantitatif",
    level: "sedang",
    soal: "Bandingkan kuantitas P dan Q.\n\nP = $2^{10}$\nQ = $10^3$",
    opsi: {
      A: "P > Q",
      B: "P < Q",
      C: "P = Q",
      D: "Hubungan P dan Q tidak dapat ditentukan",
      E: "P = Q + 50"
    },
    kunci: "A",
    pembahasan: "P $= 2^{10} = 1.024$. Q $= 10^3 = 1.000$. Karena $1.024 > 1.000$, maka P > Q."
  },
  {
    nomor: 52,
    subtes: "TIU",
    topik: "Perbandingan Kuantitatif",
    level: "sedang",
    soal: "Bandingkan kuantitas P dan Q.\n\nP = 3/7\nQ = 4/9",
    opsi: {
      A: "P > Q",
      B: "P < Q",
      C: "P = Q",
      D: "Hubungan P dan Q tidak dapat ditentukan",
      E: "P + Q = 1"
    },
    kunci: "B",
    pembahasan: "Samakan penyebut dengan KPK (63): P $= \\frac{3}{7} = \\frac{27}{63}$, Q $= \\frac{4}{9} = \\frac{28}{63}$. Karena $27 < 28$, maka P < Q."
  },
  {
    nomor: 53,
    subtes: "TIU",
    topik: "Soal Cerita",
    level: "sedang",
    soal: "Pekerja A dapat menyelesaikan suatu pekerjaan dalam 15 hari dan pekerja B dalam 10 hari. Jika keduanya bekerja bersama, pekerjaan selesai dalam … hari.",
    opsi: {
      A: "4",
      B: "5",
      C: "6",
      D: "8",
      E: "10"
    },
    kunci: "C",
    pembahasan: "Kecepatan bersama $= \\frac{1}{15} + \\frac{1}{10} = \\frac{2}{30} + \\frac{3}{30} = \\frac{5}{30} = \\frac{1}{6}$ per hari. Waktu yang diperlukan $= 6$ hari."
  },
  {
    nomor: 54,
    subtes: "TIU",
    topik: "Soal Cerita",
    level: "sedang",
    soal: "Mobil berangkat pukul 08.00 dengan kecepatan 60 km/jam. Pukul 09.00 sebuah motor berangkat dari tempat yang sama dengan kecepatan 90 km/jam menyusul mobil. Motor menyusul mobil pada pukul …",
    opsi: {
      A: "10.30",
      B: "11.00",
      C: "11.30",
      D: "12.00",
      E: "12.30"
    },
    kunci: "B",
    pembahasan: "Pada pukul 09.00, mobil sudah melaju selama 1 jam sehingga unggul sejauh 60 km. Selisih kecepatan motor dan mobil $= 90 - 60 = 30$ km/jam. Waktu menyusul $= 60 : 30 = 2$ jam. Motor menyusul pada pukul $09.00 + 2\\text{ jam} = 11.00$."
  },
  {
    nomor: 55,
    subtes: "TIU",
    topik: "Soal Cerita",
    level: "sedang",
    soal: "Perbandingan umur ayah dan anak adalah 7 : 2 dan selisih umur mereka 35 tahun. Umur anak 5 tahun lagi adalah … tahun.",
    opsi: {
      A: "14",
      B: "17",
      C: "19",
      D: "21",
      E: "49"
    },
    kunci: "C",
    pembahasan: "Selisih bagian rasio $= 7 - 2 = 5$ bagian $= 35$ tahun. Maka 1 bagian $= 7$ tahun. Umur anak sekarang $= 2 \\times 7 = 14$ tahun. Umur anak 5 tahun lagi $= 14 + 5 = 19$ tahun."
  },
  {
    nomor: 56,
    subtes: "TIU",
    topik: "Soal Cerita",
    level: "sedang",
    soal: "Harga sebuah barang Rp400.000. Barang itu mendapat diskon 20%, lalu diskon tambahan 10% dari harga setelah diskon pertama. Harga akhirnya adalah …",
    opsi: {
      A: "Rp280.000",
      B: "Rp288.000",
      C: "Rp292.000",
      D: "Rp300.000",
      E: "Rp320.000"
    },
    kunci: "B",
    pembahasan: "Harga akhir $= 400.000 \\times (1 - 0,20) \\times (1 - 0,10) = 400.000 \\times 0,80 \\times 0,90 = 288.000$. Diskon bertingkat bukan dijumlahkan menjadi 30%, melainkan efektif 28%."
  },
  {
    nomor: 57,
    subtes: "TIU",
    topik: "Soal Cerita",
    level: "sedang",
    soal: "Dari 60 orang yang disurvei, 35 orang menyukai teh, 28 orang menyukai kopi, dan 8 orang tidak menyukai keduanya. Banyak orang yang menyukai teh dan kopi adalah …",
    opsi: {
      A: "8",
      B: "9",
      C: "10",
      D: "11",
      E: "13"
    },
    kunci: "D",
    pembahasan: "Jumlah orang yang menyukai minimal satu minuman $= 60 - 8 = 52$ orang. Irisan (suka keduanya) $= 35 + 28 - 52 = 63 - 52 = 11$ orang."
  },
  {
    nomor: 58,
    subtes: "TIU",
    topik: "Soal Cerita",
    level: "sedang",
    soal: "Rata-rata nilai 8 siswa adalah 75. Setelah 2 siswa baru bergabung, rata-rata menjadi 78. Rata-rata nilai kedua siswa baru adalah …",
    opsi: {
      A: "82",
      B: "84",
      C: "86",
      D: "88",
      E: "90"
    },
    kunci: "E",
    pembahasan: "Total nilai awal $= 8 \\times 75 = 600$. Total nilai baru (10 siswa) $= 10 \\times 78 = 780$. Selisih nilai kedua siswa baru $= 780 - 600 = 180$. Rata-rata kedua siswa baru $= 180 : 2 = 90$."
  },
  {
    nomor: 59,
    subtes: "TIU",
    topik: "Kecukupan Data",
    level: "sedang",
    soal: "Berapakah nilai $x$?\n\n(1) $2x + 6 = 14$\n(2) $x^2 = 16$",
    opsi: {
      A: "Pernyataan (1) SAJA cukup untuk menjawab pertanyaan, tetapi pernyataan (2) SAJA tidak cukup.",
      B: "Pernyataan (2) SAJA cukup untuk menjawab pertanyaan, tetapi pernyataan (1) SAJA tidak cukup.",
      C: "DUA pernyataan BERSAMA-SAMA cukup untuk menjawab pertanyaan, tetapi SATU pernyataan SAJA tidak cukup.",
      D: "Pernyataan (1) SAJA cukup dan pernyataan (2) SAJA cukup untuk menjawab pertanyaan.",
      E: "Pernyataan (1) dan (2) tidak cukup untuk menjawab pertanyaan."
    },
    kunci: "A",
    pembahasan: "Dari pernyataan (1): $2x + 6 = 14 \\Rightarrow 2x = 8 \\Rightarrow x = 4$ (solusi tunggal dan pasti, cukup). Dari pernyataan (2): $x^2 = 16 \\Rightarrow x = 4$ atau $x = -4$ (tidak tunggal, tidak cukup). Jadi pernyataan (1) SAJA cukup, pernyataan (2) tidak cukup."
  },
  {
    nomor: 60,
    subtes: "TIU",
    topik: "Kecukupan Data",
    level: "sedang",
    soal: "Berapakah umur Rani sekarang?\n\n(1) Rani 3 tahun lebih tua daripada adiknya.\n(2) Jumlah umur Rani dan adiknya 25 tahun.",
    opsi: {
      A: "Pernyataan (1) SAJA cukup untuk menjawab pertanyaan, tetapi pernyataan (2) SAJA tidak cukup.",
      B: "Pernyataan (2) SAJA cukup untuk menjawab pertanyaan, tetapi pernyataan (1) SAJA tidak cukup.",
      C: "DUA pernyataan BERSAMA-SAMA cukup untuk menjawab pertanyaan, tetapi SATU pernyataan SAJA tidak cukup.",
      D: "Pernyataan (1) SAJA cukup dan pernyataan (2) SAJA cukup untuk menjawab pertanyaan.",
      E: "Pernyataan (1) dan (2) tidak cukup untuk menjawab pertanyaan."
    },
    kunci: "C",
    pembahasan: "Pernyataan (1) hanya memberikan $R = A + 3$ (belum cukup). Pernyataan (2) hanya memberikan $R + A = 25$ (belum cukup). Menggabungkan (1) dan (2): $(A + 3) + A = 25 \\Rightarrow 2A = 22 \\Rightarrow A = 11$, sehingga $R = 14$ tahun (cukup bersama-sama)."
  },
  {
    nomor: 61,
    subtes: "TIU",
    topik: "Kecukupan Data",
    level: "sedang",
    soal: "Apakah bilangan bulat $n$ genap?\n\n(1) $n^2$ genap.\n(2) $n + 3$ ganjil.",
    opsi: {
      A: "Pernyataan (1) SAJA cukup untuk menjawab pertanyaan, tetapi pernyataan (2) SAJA tidak cukup.",
      B: "Pernyataan (2) SAJA cukup untuk menjawab pertanyaan, tetapi pernyataan (1) SAJA tidak cukup.",
      C: "DUA pernyataan BERSAMA-SAMA cukup untuk menjawab pertanyaan, tetapi SATU pernyataan SAJA tidak cukup.",
      D: "Pernyataan (1) SAJA cukup dan pernyataan (2) SAJA cukup untuk menjawab pertanyaan.",
      E: "Pernyataan (1) dan (2) tidak cukup untuk menjawab pertanyaan."
    },
    kunci: "D",
    pembahasan: "Dari pernyataan (1): $n^2$ genap hanya terjadi jika $n$ genap, sehingga jawabannya pasti ‘Ya’ (cukup). Dari pernyataan (2): $n + 3$ ganjil berarti $n$ harus genap (genap + ganjil = ganjil), sehingga jawabannya pasti ‘Ya’ (cukup). Keduanya cukup sendiri-sendiri."
  },
  {
    nomor: 62,
    subtes: "TIU",
    topik: "Kecukupan Data",
    level: "sedang",
    soal: "Berapakah harga satu buku?\n\n(1) Harga 3 buku dan 2 pulpen Rp36.000.\n(2) Harga 6 buku dan 4 pulpen Rp72.000.",
    opsi: {
      A: "Pernyataan (1) SAJA cukup untuk menjawab pertanyaan, tetapi pernyataan (2) SAJA tidak cukup.",
      B: "Pernyataan (2) SAJA cukup untuk menjawab pertanyaan, tetapi pernyataan (1) SAJA tidak cukup.",
      C: "DUA pernyataan BERSAMA-SAMA cukup untuk menjawab pertanyaan, tetapi SATU pernyataan SAJA tidak cukup.",
      D: "Pernyataan (1) SAJA cukup dan pernyataan (2) SAJA cukup untuk menjawab pertanyaan.",
      E: "Pernyataan (1) dan (2) tidak cukup untuk menjawab pertanyaan."
    },
    kunci: "E",
    pembahasan: "Pernyataan (2) hanyalah persamaan (1) yang dikalikan dua ($6b + 4p = 72.000 \\Leftrightarrow 3b + 2p = 36.000$), sehingga tidak menambah informasi independen. Kita tetap hanya memiliki satu persamaan untuk dua variabel, sehingga nilai satu buku tidak dapat ditentukan."
  },
  {
    nomor: 63,
    subtes: "TIU",
    topik: "Kecukupan Data",
    level: "sedang",
    soal: "Berapakah luas sebuah persegi?\n\n(1) Panjang sisinya bilangan bulat.\n(2) Kelilingnya 36 cm.",
    opsi: {
      A: "Pernyataan (1) SAJA cukup untuk menjawab pertanyaan, tetapi pernyataan (2) SAJA tidak cukup.",
      B: "Pernyataan (2) SAJA cukup untuk menjawab pertanyaan, tetapi pernyataan (1) SAJA tidak cukup.",
      C: "DUA pernyataan BERSAMA-SAMA cukup untuk menjawab pertanyaan, tetapi SATU pernyataan SAJA tidak cukup.",
      D: "Pernyataan (1) SAJA cukup dan pernyataan (2) SAJA cukup untuk menjawab pertanyaan.",
      E: "Pernyataan (1) dan (2) tidak cukup untuk menjawab pertanyaan."
    },
    kunci: "B",
    pembahasan: "Pernyataan (1) hanya memberi tahu sisi bilangan bulat (tidak cukup). Pernyataan (2) memberikan keliling $= 36$ cm, sehingga panjang sisi $= 36 / 4 = 9$ cm dan luas $= 9 \\times 9 = 81\\text{ cm}^2$ (cukup sendiri)."
  },
  {
    nomor: 64,
    subtes: "TIU",
    topik: "Soal Tabel",
    level: "sedang",
    soal: "Perhatikan tabel berikut. Tentukan angka yang hilang pada Kolom III baris terakhir.\n\n| Kolom I | Kolom II | Kolom III |\n| :---: | :---: | :---: |\n| 3 | 4 | 25 |\n| 5 | 12 | 169 |\n| 8 | 15 | 289 |\n| 7 | 24 | ? |",
    opsi: {
      A: "529",
      B: "575",
      C: "600",
      D: "625",
      E: "650"
    },
    kunci: "D",
    pembahasan: "Pola: $\\text{Kolom III} = (\\text{Kolom I})^2 + (\\text{Kolom II})^2$ (Teorema Pythagoras):\n* $3^2 + 4^2 = 9 + 16 = 25$\n* $5^2 + 12^2 = 25 + 144 = 169$\n* $8^2 + 15^2 = 64 + 225 = 289$\n* Baris terakhir: $7^2 + 24^2 = 49 + 576 = 625$."
  },
  {
    nomor: 65,
    subtes: "TIU",
    topik: "Soal Tabel",
    level: "sedang",
    soal: "Perhatikan tabel berikut. Tentukan angka yang hilang pada Kolom III baris terakhir.\n\n| Kolom I | Kolom II | Kolom III |\n| :---: | :---: | :---: |\n| 2 | 3 | 8 |\n| 4 | 5 | 24 |\n| 6 | 7 | 48 |\n| 8 | 9 | ? |",
    opsi: {
      A: "72",
      B: "76",
      C: "80",
      D: "84",
      E: "90"
    },
    kunci: "C",
    pembahasan: "Pola: $\\text{Kolom III} = \\text{Kolom I} \\times (\\text{Kolom II} + 1)$:\n* $2 \\times (3 + 1) = 2 \\times 4 = 8$\n* $4 \\times (5 + 1) = 4 \\times 6 = 24$\n* $6 \\times (7 + 1) = 6 \\times 8 = 48$\n* Baris terakhir: $8 \\times (9 + 1) = 8 \\times 10 = 80$."
  },
  {
    nomor: 66,
    subtes: "TIU",
    topik: "Soal Tabel",
    level: "sedang",
    soal: "Perhatikan tabel berikut. Tentukan angka yang hilang pada Kolom II baris terakhir.\n\n| Kolom I | Kolom II | Kolom III |\n| :---: | :---: | :---: |\n| 4 | 6 | 10 |\n| 5 | 3 | 22 |\n| 6 | 10 | 26 |\n| 7 | ? | 45 |",
    opsi: {
      A: "3",
      B: "4",
      C: "5",
      D: "6",
      E: "7"
    },
    kunci: "B",
    pembahasan: "Pola: $\\text{Kolom III} = (\\text{Kolom I})^2 - \\text{Kolom II}$:\n* $4^2 - 6 = 16 - 6 = 10$\n* $5^2 - 3 = 25 - 3 = 22$\n* $6^2 - 10 = 36 - 10 = 26$\n* Baris terakhir: $7^2 - B = 45 \\Rightarrow 49 - B = 45 \\Rightarrow B = 4$."
  },
  {
    nomor: 67,
    subtes: "TIU",
    topik: "Soal Tabel",
    level: "sedang",
    soal: "Perhatikan tabel berikut. Tentukan angka yang hilang pada Kolom III baris terakhir.\n\n| Kolom I | Kolom II | Kolom III |\n| :---: | :---: | :---: |\n| 2 | 3 | 6 |\n| 3 | 8 | 24 |\n| 4 | 15 | 60 |\n| 5 | 24 | ? |",
    opsi: {
      A: "96",
      B: "100",
      C: "115",
      D: "120",
      E: "125"
    },
    kunci: "D",
    pembahasan: "Pola baris dengan $n = \\text{Kolom I}$:\nKolom II $= n^2 - 1$ dan Kolom III $= n^3 - n$ (atau Kolom I $\\times$ Kolom II):\n* $2 \\times 3 = 6$\n* $3 \\times 8 = 24$\n* $4 \\times 15 = 60$\n* Baris terakhir: $5 \\times 24 = 120$ (atau $5^3 - 5 = 125 - 5 = 120$)."
  },
  {
    nomor: 68,
    subtes: "TIU",
    topik: "Berhitung Cepat",
    level: "sedang",
    soal: "Pilihlah pasangan perhitungan yang hasilnya SAMA.",
    opsi: {
      A: "36 × 25 dan 45 × 18",
      B: "64 × 25 dan 80 × 16",
      C: "27 × 40 dan 54 × 25",
      D: "48 × 15 dan 36 × 20",
      E: "72 × 5 dan 60 × 7"
    },
    kunci: "D",
    pembahasan: "Tanpa menghitung penuh, faktorkan: $48 \\times 15 = (12 \\times 4) \\times 15 = 12 \\times 60 = 720$. Sedangkan $36 \\times 20 = (12 \\times 3) \\times 20 = 12 \\times 60 = 720$. Keduanya bernilai 720 (SAMA)."
  },
  {
    nomor: 69,
    subtes: "TIU",
    topik: "Berhitung Cepat",
    level: "sedang",
    soal: "Pilihlah pasangan perhitungan yang hasilnya SAMA.",
    opsi: {
      A: "25% dari 360 dan 2/5 dari 240",
      B: "12,5% dari 480 dan 3/8 dari 160",
      C: "60% dari 150 dan 3/4 dari 100",
      D: "20% dari 450 dan 1/3 dari 300",
      E: "75% dari 80 dan 4/5 dari 70"
    },
    kunci: "B",
    pembahasan: "Ubah persen ke pecahan: $12,5\\% = \\frac{1}{8}$, sehingga $\\frac{1}{8} \\times 480 = 60$. Dan $\\frac{3}{8} \\times 160 = 3 \\times 20 = 60$. Keduanya bernilai 60 (SAMA)."
  },
  {
    nomor: 70,
    subtes: "TIU",
    topik: "Berhitung Cepat",
    level: "sedang",
    soal: "Pilihlah pasangan perhitungan yang hasilnya SAMA.",
    opsi: {
      A: "1.000 : 8 dan 25 × 4,5",
      B: "840 : 12 dan 7 × 11",
      C: "2/3 × 90 dan 3/5 × 110",
      D: "2,5 × 0,4 dan 1,2",
      E: "0,6 × 150 dan 45 × 2"
    },
    kunci: "E",
    pembahasan: "$0,6 \\times 150 = 6 \\times 15 = 90$, dan $45 \\times 2 = 90$. Keduanya bernilai 90 (SAMA)."
  }
];

module.exports = { tiuQuestions };
