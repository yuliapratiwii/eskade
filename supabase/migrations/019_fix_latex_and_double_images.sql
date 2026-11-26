--
-- Migration 019: Fix LaTeX math formulas, double images, and escaped operators
-- Part 29, 36, 37, 38 & general questions cleanup
--
BEGIN;

-- 1. Bersihkan double image jika gambar sudah ada di dalam teks soal untuk seluruh bank soal
UPDATE questions SET gambar_url = NULL WHERE gambar_url IS NOT NULL AND (soal LIKE '%![gambar%' OR soal LIKE '%<img%' OR soal LIKE '%' || gambar_url || '%');

UPDATE questions SET soal = '$\frac{2}{5}-3\frac{1}{2}:\frac{5}{2}=...$', opsi = '{"A":"$-1,24$","B":"$-1,00$","C":"$-0,85$","D":"$1,00$","E":"$1,24$"}'::jsonb, pembahasan = '$\frac{2}{5}-3\frac{1}{2}:\frac{5}{2}=\frac{2}{5}-\frac{7}{2}\times\frac{2}{5}$

                               $=\frac{2}{5}-\frac{7}{5}$

                               $=-\frac{5}{5}$

                               $=-1$

Jawaban: B', gambar_url = NULL WHERE sumber = 'part-29' AND nomor = 40;
UPDATE questions SET soal = 'Diketahui nilai x = 5 4 dan y = −4

![gambar](/gambar/cf0575032775.png)

Manakah hubungan yang benar antara kuantitas A dan B berikut berdasarkan informasi yang diberikan…', opsi = '{"A":"5A < 2B","B":"3A = 2B","C":"3A > 4B","D":"2A = B 2","E":"A < B"}'::jsonb, pembahasan = 'A = −2y − x

$=-2\left(-4\right)-\left(\frac{5}{4}\right)$

$=8-\frac{5}{4}$

$=\frac{32}{4}-\frac{5}{4}$

$=\frac{27}{4}$

= 6,75

B = 4x + 3y

$=4\left(\frac{5}{4}\right)+3\left(-4\right)$

= 5 − 12

= −7

Maka kita uji coba ke masing-masing opsi

![gambar](/gambar/8aa99b136208.png)

Jawaban: C', gambar_url = NULL WHERE sumber = 'part-29' AND nomor = 41;
UPDATE questions SET soal = 'Diketahui:

![gambar](/gambar/b177f9845dd4.png)

Manakah hubungan yang benar antara kuantitas X dan Y berdasarkan informasi yang diberikan…', opsi = '{"A":"2X < 4Y","B":"3X > 4Y","C":"2X < 2Y","D":"3X < 5Y","E":"4X < 5Y"}'::jsonb, pembahasan = 'X → −6 ×  5 + 44 − 2 = −30 + 44 − 2 = 12

Y → 16 + 11 − 7 ×  3 = 16 + 11 − 21 = 6

Kita uji perbadingan tersebut pada pilihan jawaban 

![gambar](/gambar/902c63d01b05.png)

Jawaban: B', gambar_url = NULL WHERE sumber = 'part-29' AND nomor = 42;
UPDATE questions SET soal = 'Diketahui

Sebuah mesin fotokopi dapat mencetak 360 lembar kertas dengan kecepatan 6 lembar per menit.

![gambar](/gambar/d5828005db4b.png)

Manakah hubungan yang benar antara kuantitas X dan Y?', opsi = '{"A":"2X > Y","B":"X > Y","C":"X = Y","D":"3X < Y","E":"Hubungan X dan Y tidak dapat ditentukan"}'::jsonb, pembahasan = 'X = Waktu yang dibutuhkan mesin untuk mencetak seluruh kertas

X = $\frac{360}{6}$  = 60 menit = 1 jam

Y = 1,5 jam

Jika disubstitusikan nilai X = 1 dan Y = 1,5 maka diperoleh hubungan antara kuantitas X dan Y yaitu 2X > Y

Jawaban: A', gambar_url = NULL WHERE sumber = 'part-29' AND nomor = 43;
UPDATE questions SET soal = 'Dalam sebuah Komunitas Sains, lima anggota melaporkan jumlah eksperimen yang telah mereka lakukan selama satu semester. Tentukan urutan nama dari jumlah eksperimen paling sedikit ke paling banyak.

Jika terdapat jumlah eksperimen yang sama, maka urutkan berdasarkan usia termuda terlebih dahulu.

![gambar](/gambar/7a6921a68ee6.png)', opsi = '{"A":"Rian – Lia – Fira – Nina – Dito","B":"Lia – Rian – Nina – Fira – Dito","C":"Rian – Lia – Nina – Fira – Dito","D":"Lia – Rian – Fira – Nina – Dito","E":"Lia – Rian – Fira – Dito – Nina"}'::jsonb, pembahasan = 'Jumlah eksperimen paling sedikit adalah 10 eksperimen (Rian dan Lia), karena jumlah sama, didahulukan dari usia yang paling muda yaitu Lia (19), kemudian Rian (21). Selanjutnya eksperimen yang dilakukan Nina dan Fira adalah 14, karena sama, maka diurutkan dari Fira (20), kemudian Nina (22), dan yang terakhir adalah Dito sebanyak 18 eksperimen. Sehingga urutannya adalah Lia – Rian – Fira – Nina – Dito.

Jawaban: D', gambar_url = NULL WHERE sumber = 'part-29' AND nomor = 55;
UPDATE questions SET soal = 'Di sebuah kompetisi robotik tingkat kota, terdapat empat tim yang berkompetisi selama 3 hari. Penilaian kompetisi terdiri dari dua kategori: teknis dan presentasi. Nilai teknis dihitung 5 kali lipat dari skor teknis. Nilai presentasi dihitung 2 kali lipat dari skor presentasi.

Data skor teknis dan presentasi tiap tim ditampilkan pada tabel berikut:

![gambar](/gambar/2c7432a545cb.png)

Berdasarkan data tersebut, tim mana yang memiliki total nilai tertinggi?', opsi = '{"A":"Orion","B":"Nova","C":"Vega","D":"Atlas","E":"Tidak ada"}'::jsonb, pembahasan = 'Nilai teknis dihitung 5 kali lipat dari skor teknis dan nilai presentasi dihitung 2 kali lipat dari skor presentasi.

Sehingga total nilai masing-masing tim dihitung dengan rumus:

(Skor Teknis ×  5) + (Skor Presentase ×  2)

Maka diperoleh,

• Orion = (120 ×  5) + (80 ×  2) = 600 + 160 = 760

• Nova = (110 ×  5) + (100 ×  2) = 550 + 200 = 750

• Vega = (130 ×  5) + (60 ×  2) = 650 + 120 = 770

• Atlas = (140 × 5) + (55 ×  2) = 700 + 110 = 810

Nilai tertinggi diperoleh tim Atlas dengan total 810.

Jawaban: D', gambar_url = NULL WHERE sumber = 'part-29' AND nomor = 56;
UPDATE questions SET soal = 'Perhatikan gambar berikut!

![gambar](/gambar/88319637454a.png)', opsi = '{"A":"A","B":"B","C":"C","D":"D","E":"E"}'::jsonb, pembahasan = '![gambar](/gambar/1ee2ab561980.png)

Pola pada gambar (1), (2), (3) dan (5) adalah

• Garis yang berwarna merah tetap

• Garis yang berwarna biru berputar berlawanan arah jarum jam

Sehingga, gambar yang sesuai untuk mengisi posisi (4) adalah

![gambar](/gambar/9ffb1a3e023f.png)

Jawaban: A', gambar_url = NULL WHERE sumber = 'part-29' AND nomor = 57;
UPDATE questions SET soal = 'Perhatikan gambar berikut!

![gambar](/gambar/c732d8749fd5.png)', opsi = '{"A":"A","B":"B","C":"C","D":"D","E":"E"}'::jsonb, pembahasan = '![gambar](/gambar/fc9cede98b48.png)

Pola dari gambar (1) ke gambar (2), gambar (2) ke gambar (3), dan seterusnya, adalah sebagai berikut:

• Objek 1: Polanya adalah berubah warna dari putih – hitam – putih – hitam, begitu seterusnya.

• Objek 2: Polanya adalah dicerminkan secara vertikal – tetap – dicerimankan secara vertikal – tetap

• Objek 3: Polanya adalah diputar 180°.

• Objek 4: Polanya tetap – diputar 180° – tetap – diputar 180°.

• Objek 5: Polanya adalah berputar 180° - berubah warna dari hitam ke putih - berputar 180° - berubah warna dari putih ke hitam.

Sehingga, gambar yang sesuai untuk mengisi posisi pada gambar (4) adalah

![gambar](/gambar/9cb37eca0341.png)

Jawaban: A', gambar_url = NULL WHERE sumber = 'part-29' AND nomor = 58;
UPDATE questions SET soal = 'Perhatikan gambar berikut!

![gambar](/gambar/344e497b7a6a.png)', opsi = '{"A":"A","B":"B","C":"C","D":"D","E":"E"}'::jsonb, pembahasan = '![gambar](/gambar/d42591384450.png)

Pola pada gambar (1) ke gambar (2) adalah, garis yang berwarna merah tetap dan garis berwarna biru berotasi berlawanan arah jarum jam.

Dengan mengaplikasikan pola tersebut ke gambar (3) dan (4), maka gambar yang sesuai untuk gambar (4) adalah

![gambar](/gambar/cf43962a1d7e.png)

Jawaban: A', gambar_url = NULL WHERE sumber = 'part-29' AND nomor = 59;
UPDATE questions SET soal = 'Perhatikan gambar berikut!

![gambar](/gambar/dcf7fd543321.png)', opsi = '{"A":"A","B":"B","C":"C","D":"D","E":"E"}'::jsonb, pembahasan = '![gambar](/gambar/c3c3d2f90d51.png)

Pola dari gambar (1) ke gambar (2), penyusun objek sama. Kemudian jumlah objek A berkurang 1 sisi, objek B bertambah 2 sisi, dan objek C bertambah 1 sisi.

Pola serupa diaplikasikan pada gambar (3) ke gambar (4), sehingga gambar yang sesuai untuk mengisi gambar (4) adalah

![gambar](/gambar/78c031015ca8.png)

Jawaban: B', gambar_url = NULL WHERE sumber = 'part-29' AND nomor = 60;
UPDATE questions SET soal = 'Perhatikan gambar berikut!

![gambar](/gambar/d9cc01b03a0b.png)', opsi = '{"A":"A","B":"B","C":"C","D":"D","E":"E"}'::jsonb, pembahasan = 'Pada opsi A, C, D, E semuanya merupakan kumpulan 3 garis identik yang saling sejajar (paralel). 

Pola Gambar B merupakan satu-satunya gambar di mana garis-garisnya saling bersinggungan, berpotongan, dan menyambung satu sama lain membentuk struktur bangunan/kotak yang menyatu

Sehingga gambar yang paling beda adalah B

Jawaban: B', gambar_url = NULL WHERE sumber = 'part-29' AND nomor = 61;
UPDATE questions SET soal = 'Perhatikan gambar berikut!

![gambar](/gambar/66f629f91591.png)', opsi = '{"A":"A","B":"B","C":"C","D":"D","E":"E"}'::jsonb, pembahasan = 'Pola pada opsi B, C, D, dan E menunjukkan bahwa kedua elemen hitam selalu diletakkan berdekatan. Satu-satunya gambar yang tidak mengikuti pola tersebut adalah gambar A.

Jawaban: A', gambar_url = NULL WHERE sumber = 'part-29' AND nomor = 62;
UPDATE questions SET soal = 'Perhatikan gambar berikut!

![gambar](/gambar/f21722e22413.png)', opsi = '{"A":"A","B":"B","C":"C","D":"D","E":"E"}'::jsonb, pembahasan = 'Pola pada kolom pertama adalah sebagai berikut:

![gambar](/gambar/67e38d498ee1.png)

Pola juga diaplikasikan pada kolom kedua dan ketiga. Sehingga gambar yang sesuai untuk mengisi posisi kolom tiga baris ketiga adalah

![gambar](/gambar/83e9f83bf335.png)

Jawaban: B', gambar_url = NULL WHERE sumber = 'part-29' AND nomor = 63;
UPDATE questions SET soal = 'Perhatikan gambar berikut!

![gambar](/gambar/e340c9c44a9f.png)', opsi = '{"A":"A","B":"B","C":"C","D":"D","E":"E"}'::jsonb, pembahasan = '![gambar](/gambar/83b45cce0b79.png)

Pola pada baris satu:

• Garis biru berputar secara bertahap berlawanan arah jarum jam.

• Dua garis merah dalam satu baris muncul dua kali pada posisi yang sama.

• Setiap objek pada masing-masing kotak memiliki bentuk yang berbeda dibandingkan dengan objek pada baris dan kolom lainnya.

Jawaban: C', gambar_url = NULL WHERE sumber = 'part-29' AND nomor = 64;
UPDATE questions SET soal = 'Perhatikan gambar berikut!

![gambar](/gambar/cb771d8e843d.png)', opsi = '{"A":"A","B":"B","C":"C","D":"D","E":"E"}'::jsonb, pembahasan = '![gambar](/gambar/7db784a9f5d2.png)

Figural 9 kotak ini memiliki pola perbaris setiap objeknya

- Objek 1: pola objek berotasi 90° berlawanan arah jarum jam

- Objek 2: tetap

- Objek 3: pola objek dari kolom 1 ke kolom 2 dicerminkan secara vertikal. Kemudian dari kolom 2 ke kolom 3 berotasi 180°

- Objek 4: pola objek tiap barisnya memiliki 1 ukuran kecil dan 2 ukuran besar. Kemudian memiliki pola warna yang bergantian putih – hitam – putih setiap kolomnya 

- Objek tengah berpola 1 ukuran besar dan 2 ukuran kecil, kemudian warna objeknya berpola 1 warna abu-abu dan 2 warna putih.

Sehingga mengikuti pola tersebut, gambar yang tepat untuk mengisi adalah

![gambar](/gambar/8d936d475508.png)

Jawaban: E', gambar_url = NULL WHERE sumber = 'part-29' AND nomor = 65;
UPDATE questions SET soal = 'Hasil dari $2\frac{\frac{1}{3}}{\frac{1}{6}}+\left(\frac{1}{2}-\left(-\frac{1}{4}\right)\right)\div\frac{3}{5}\times2$  =...', opsi = '{"A":"5,5","B":"6","C":"6,5","D":"7,5","E":"7"}'::jsonb, pembahasan = '$2\frac{\frac{1}{3}}{\frac{1}{6}}+\left(\frac{1}{2}-\left(-\frac{1}{4}\right)\right)\div\frac{3}{5}\times2$  = 2 + $\left(\frac{1}{3}\times\frac{6}{1}\right)$  + $\left(\frac{1}{2}+\frac{1}{4}\right)\div\frac{3}{5}$  × 2

                = 2 + 2 + $\left(\frac{2+1}{4}\right)\div\frac{3}{5}$ × 2

                = 4 + $\left(\frac{3}{4}\times\frac{5}{3}\right)$  × 2

                = 4 + $\frac{5}{4}$  × 2

                = 4 + 2,5

                = 6,5

Jawaban: C', gambar_url = NULL WHERE sumber = 'part-36' AND nomor = 37;
UPDATE questions SET soal = 'Diketahui  $a$ dan $b$ merupakan bilangan bulat positif. Perhatikan dua kuantitas berikut!

![gambar](/gambar/4fde15c2bbbf.png)

Apakah kuantitas S lebih besar daripada kuantitas T?

Putuskan apakah pernyataan (1) dan (2) berikut cukup untuk menjawab pertanyaan tersebut!

(1) 5 $a$  + 2 $b$  = 23

(2) $a$  + $b$ = 7', opsi = '{"A":"Pernyataan (1) SAJA cukup, tetapi pernyataan (2) SAJA tidak cukup.","B":"Pernyataan (2) SAJA cukup, tetapi pernyataan (1) SAJA tidak cukup.","C":"DUA pernyataan BERSAMA-SAMA cukup, tetapi masing-masing SAJA tidak cukup.","D":"Pernyataan (1) SAJA cukup dan pernyataan (2) SAJA cukup.","E":"Pernyataan (1) dan (2) BERSAMA-SAMA tidak cukup."}'::jsonb, pembahasan = 'Diketahui:

$S=44-5a,    T=14+2b$

Ditanya apakah $S>T$?

44 − 5 $a$  > 14 + 2 $b$

30 > 5 $a$  + 2 $b$

Pernyataan (1): 5 $a$  + 2 $b$  = 23

Substitusikan:

30 > 23 (Benar)

Jadi, pernyataan (1) SAJA cukup.

Pernyataan (2): $a$  + $b$  = 7

Terdapat beberapa kemungkinan:

Jika $a$  = 1 dan $b$  = 6:

5 $a$  + 2 $b$ = 5 + 12 = 17

30 > 17 (Benar)

Jika $a$  = 6 dan $b$ = 1:

5 $a$  + 2 $b$  = 30 + 2 = 32

30 > 32 (Salah)

Karena menghasilkan jawaban berbeda, pernyataan (2) SAJA tidak cukup.

Jawaban: A', gambar_url = NULL WHERE sumber = 'part-36' AND nomor = 38;
UPDATE questions SET soal = 'Diketahui  $x$ merupakan bilangan real dan $y$ merupakan bilangan real positif. Perhatikan dua kuantitas berikut!

![gambar](/gambar/72d99bd5e82d.png)

Apakah kuantitas A lebih kecil daripada kuantitas B?

Putuskan apakah pernyataan (1) dan (2) berikut cukup untuk menjawab pertanyaan tersebut!

(1) $x$  − 5 $y$ = −18

(2) $x$ + 4 $y$ = 0', opsi = '{"A":"Pernyataan (1) SAJA cukup, tetapi pernyataan (2) SAJA tidak cukup.","B":"Pernyataan (2) SAJA cukup, tetapi pernyataan (1) SAJA tidak cukup.","C":"DUA pernyataan BERSAMA-SAMA cukup, tetapi masing-masing SAJA tidak cukup.","D":"Pernyataan (1) SAJA cukup dan pernyataan (2) SAJA cukup.","E":"Pernyataan (1) dan (2) BERSAMA-SAMA tidak cukup."}'::jsonb, pembahasan = 'Diketahui:

$A=3x-2y,     B=x+4y$

Ditanya apakah $A<B$?

$3x-2y<x+4y$

$2x<6y$

$x<3y$

Pernyataan (1): $x-5y$  = −18

Jika $y$  = 2, maka:

$x$  − 5(2) = −18 $\Rightarrow x$  = −8

−8 < 3(2) (Benar)

Jika $y$  = 10, maka:

$x$  − 5(10) = −18 $\Rightarrow x$  = 32

32 < 3(10) (Salah)

Pernyataan (1) tidak cukup.

Pernyataan (2): $x+4y$ = 0

Diperoleh:

$x=-4y$

Substitusikan ke kedua kuantitas:

$A$  = 3(−4 $y$) − 2 $y$  = −14 $y$

$B$ = −4 $y$ + 4 $y$ = 0

Karena $y$  > 0, maka:

−14 $y$  < 0

Artinya, $A<B$ pasti benar.

Jadi, pernyataan (2) SAJA cukup.

Jawaban: B', gambar_url = NULL WHERE sumber = 'part-36' AND nomor = 39;
UPDATE questions SET soal = 'Sebuah printer laser akan mencetak laporan yang terdiri atas 120 halaman teks dan 60 halaman bergambar secara berturut-turut. Kecepatan pencetakan halaman bergambar lebih rendah daripada halaman teks, tetapi tetap untuk masing-masing jenis halaman.

Apakah seluruh laporan dapat selesai dicetak dalam waktu kurang dari 8 menit?

Putuskan apakah pernyataan (1) dan (2) berikut cukup untuk menjawab pertanyaan tersebut!

(1) Printer dapat mencetak 40 halaman teks setiap menit.

(2) Printer dapat mencetak 15 halaman bergambar setiap menit.', opsi = '{"A":"Pernyataan (1) SAJA cukup, tetapi pernyataan (2) SAJA tidak cukup.","B":"Pernyataan (2) SAJA cukup, tetapi pernyataan (1) SAJA tidak cukup.","C":"DUA pernyataan BERSAMA-SAMA cukup, tetapi masing-masing SAJA tidak cukup.","D":"Pernyataan (1) SAJA cukup dan pernyataan (2) SAJA cukup.","E":"Pernyataan (1) dan (2) BERSAMA-SAMA tidak cukup."}'::jsonb, pembahasan = 'Pernyataan (1): Waktu mencetak halaman teks

$\frac{120}{40}$  = 3 menit

Namun, kecepatan pencetakan halaman bergambar belum diketahui.

Misalnya:

• Kecepatan gambar 30 halaman/menit → total waktu 5 menit.

• Kecepatan gambar 10 halaman/menit → total waktu 9 menit.

Pernyataan (1) tidak cukup.

Pernyataan (2): Waktu mencetak halaman bergambar:

$\frac{60}{15}$  = 4 menit

Namun, kecepatan pencetakan halaman teks belum diketahui.

Misalnya:

• Kecepatan teks 60 halaman/menit → total waktu 6 menit.

• Kecepatan teks 20 halaman/menit → total waktu 10 menit.

Pernyataan (2) tidak cukup.

Gabungan pernyataan (1) dan (2):

Waktu mencetak teks:

$\frac{120}{40}$  = 3 menit

Waktu mencetak gambar:

$\frac{60}{15}$  = 4 menit

Total waktu:

$X$  = 3 + 4 = 7 menit

Karena 7 menit kurang dari 8 menit, seluruh laporan dapat selesai tepat sesuai batas waktu yang ditanyakan.

Kedua pernyataan BERSAMA-SAMA cukup, tetapi masing-masing SAJA tidak cukup.

Jawaban: C', gambar_url = NULL WHERE sumber = 'part-36' AND nomor = 40;
UPDATE questions SET soal = 'Sebuah komunitas pengrajin menyewakan ruang workshop dengan tarif Rp60.000,00 untuk dua jam pertama. Jika digunakan lebih lama, setiap jam berikutnya dikenakan tarif lanjutan yang tetap dan lebih murah daripada tarif rata-rata per jam pada dua jam pertama.

Berapa total durasi penyewaan ruang workshop oleh seorang peserta?

Putuskan apakah pernyataan (1) dan (2) berikut cukup untuk menjawab pertanyaan tersebut!

(1) Tarif setiap jam tambahan adalah setengah dari tarif rata-rata per jam pada dua jam pertama.

(2) Peserta membayar total Rp105.000,00 setelah selesai menggunakan ruang workshop.', opsi = '{"A":"Pernyataan (1) SAJA cukup, tetapi pernyataan (2) SAJA tidak cukup.","B":"Pernyataan (2) SAJA cukup, tetapi pernyataan (1) SAJA tidak cukup.","C":"DUA pernyataan BERSAMA-SAMA cukup, tetapi masing-masing SAJA tidak cukup.","D":"Pernyataan (1) SAJA cukup dan pernyataan (2) SAJA cukup.","E":"Pernyataan (1) dan (2) BERSAMA-SAMA tidak cukup."}'::jsonb, pembahasan = 'Pernyataan (1):

Tarif rata-rata per jam pada dua jam pertama:

60.000 ÷ 2 = 30.000

Tarif lanjutan:

$\frac{1}{2}$  × 30.000 = 15.000

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

Jawaban: C', gambar_url = NULL WHERE sumber = 'part-36' AND nomor = 41;
UPDATE questions SET soal = 'Sebuah pabrik menggunakan pompa model lama yang mampu memindahkan 120 liter air dalam waktu 8 menit. Pabrik kemudian menggantinya dengan pompa model baru yang memiliki debit tetap.

Berapa liter air yang dapat dipindahkan pompa baru selama 1,5 jam?

Putuskan apakah pernyataan (1) dan (2) berikut cukup untuk menjawab pertanyaan tersebut!

(1) Pompa baru dapat memindahkan 180 liter air dalam waktu 10 menit.

(2) Debit pompa baru 20% lebih besar daripada debit pompa lama.', opsi = '{"A":"Pernyataan (1) SAJA cukup, tetapi pernyataan (2) SAJA tidak cukup.","B":"Pernyataan (2) SAJA cukup, tetapi pernyataan (1) SAJA tidak cukup.","C":"DUA pernyataan BERSAMA-SAMA cukup, tetapi masing-masing SAJA tidak cukup.","D":"Pernyataan (1) SAJA cukup dan pernyataan (2) SAJA cukup.","E":"Pernyataan (1) dan (2) BERSAMA-SAMA tidak cukup."}'::jsonb, pembahasan = 'Diketahui:

1,5 jam = 90 menit

Debit = $\frac{\operatorname{Volume}}{Waktu}$

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

Jawaban: D', gambar_url = NULL WHERE sumber = 'part-36' AND nomor = 42;
UPDATE questions SET soal = 'Sebuah studio animasi memiliki 24 animator yang diperkirakan dapat menyelesaikan sebuah proyek dalam waktu 5 hari. Studio berencana menambah animator sejak awal pengerjaan. Seluruh animator memiliki kemampuan kerja yang sama.

Berapa hari lebih cepat proyek tersebut dapat diselesaikan setelah jumlah animator ditambah?

Putuskan apakah pernyataan (1) dan (2) berikut cukup untuk menjawab pertanyaan tersebut!

(1) Seluruh animator bekerja selama 8 jam setiap hari.

(2) Jumlah animator ditambah sebanyak 25% dari jumlah semula.', opsi = '{"A":"Pernyataan (1) SAJA cukup, tetapi pernyataan (2) SAJA tidak cukup.","B":"Pernyataan (2) SAJA cukup, tetapi pernyataan (1) SAJA tidak cukup.","C":"DUA pernyataan BERSAMA-SAMA cukup, tetapi masing-masing SAJA tidak cukup.","D":"Pernyataan (1) SAJA cukup dan pernyataan (2) SAJA cukup.","E":"Pernyataan (1) dan (2) BERSAMA-SAMA tidak cukup."}'::jsonb, pembahasan = 'Pernyataan (1):

Diketahui lama kerja setiap animator adalah 8 jam per hari, tetapi jumlah animator tambahan belum diketahui.

Pernyataan (1) tidak cukup.

Pernyataan (2):

Tambahan animator:

25% × 24 = 6

Jumlah animator baru:

24 + 6 = 30

Gunakan perbandingan tak senilai.

![gambar](/gambar/55295aeedc80.png)

24 × 5 = 30 × $x$

$x$  =  $\frac{24\times5}{30}$  = 4 hari

Pekerjaan selesai lebih cepat:

5 − 4 = 1 hari

Pernyataan (2) cukup.

Jawaban: B', gambar_url = NULL WHERE sumber = 'part-36' AND nomor = 43;
UPDATE questions SET soal = 'Sebuah kereta akan menempuh perjalanan dengan kecepatan rata-rata tetap. Karena keberangkatannya tertunda selama 1 jam, kereta harus meningkatkan kecepatannya agar tetap tiba sesuai jadwal semula. Jarak perjalanan tidak berubah.

Berapa selisih kecepatan rata-rata kereta setelah penundaan dan kecepatan semula?

Putuskan apakah pernyataan (1) dan (2) berikut cukup untuk menjawab pertanyaan tersebut!

(1) Berdasarkan jadwal awal, waktu tempuh perjalanan adalah 9 jam.

(2) Setelah mengalami penundaan, kereta melaju dengan kecepatan rata-rata 81 km/jam.', opsi = '{"A":"Pernyataan (1) SAJA cukup, tetapi pernyataan (2) SAJA tidak cukup.","B":"Pernyataan (2) SAJA cukup, tetapi pernyataan (1) SAJA tidak cukup.","C":"DUA pernyataan BERSAMA-SAMA cukup, tetapi masing-masing SAJA tidak cukup.","D":"Pernyataan (1) SAJA cukup dan pernyataan (2) SAJA cukup.","E":"Pernyataan (1) dan (2) BERSAMA-SAMA tidak cukup."}'::jsonb, pembahasan = 'Pernyataan (1):

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

$s$  = 81 × 8 = 648 km

Kecepatan semula:

$v=\frac{648}{9}$  = 72 km/jam

Selisih kecepatan:

81 − 72 = 9 km/jam

Jawaban: C', gambar_url = NULL WHERE sumber = 'part-36' AND nomor = 44;
UPDATE questions SET soal = 'Sebuah pusat konservasi memindahkan sebagian rusa ke kandang lain. Kini kandang asal dihuni 3 ekor rusa yang masing-masing mengonsumsi pakan dalam jumlah sama setiap hari.

Berapa hari persediaan pakan yang saat ini tersedia dapat bertahan hingga habis?

Putuskan apakah pernyataan (1) dan (2) berikut cukup untuk menjawab pertanyaan tersebut!

(1) Jumlah persediaan pakan yang tersedia saat ini adalah 216 kg.

(2) Sebelum pemindahan, kandang tersebut dihuni oleh 8 ekor rusa.', opsi = '{"A":"Pernyataan (1) SAJA cukup, tetapi pernyataan (2) SAJA tidak cukup.","B":"Pernyataan (2) SAJA cukup, tetapi pernyataan (1) SAJA tidak cukup.","C":"DUA pernyataan BERSAMA-SAMA cukup, tetapi masing-masing SAJA tidak cukup.","D":"Pernyataan (1) SAJA cukup dan pernyataan (2) SAJA cukup.","E":"Pernyataan (1) dan (2) BERSAMA-SAMA tidak cukup."}'::jsonb, pembahasan = 'Pernyataan (1): Persediaan pakan diketahui sebanyak 216 kg.

Namun, kebutuhan pakan setiap rusa per hari belum diketahui.

Pernyataan (1) tidak cukup.

Pernyataan (2): Jumlah rusa sebelumnya adalah 8 ekor, tetapi tidak diketahui jumlah pakan yang mereka konsumsi setiap hari maupun lama persediaan pakan sebelumnya dapat bertahan.

Pernyataan (2) tidak cukup.

Gabungan pernyataan (1) dan (2):

Diketahui stok pakan saat ini 216 kg dan jumlah rusa saat ini 3 ekor.

Namun, kebutuhan pakan setiap rusa per hari tetap belum diketahui.

Misalnya:

Jika setiap rusa mengonsumsi 1 kg pakan per hari:

$x=\frac{216}{3\times1}$  = 72 hari

Jika setiap rusa mengonsumsi 2 kg pakan per hari:

$x=\frac{216}{3\times2}$  × 2 = 36 hari

Kedua kemungkinan memenuhi seluruh informasi tetapi menghasilkan jawaban berbeda.

Jadi, kedua pernyataan bersama-sama tetap tidak cukup.

Jawaban: E', gambar_url = NULL WHERE sumber = 'part-36' AND nomor = 45;
UPDATE questions SET soal = 'Sebuah perusahaan melakukan perhitungan jumlah barang untuk beberapa metode pengemasan. Pasangan pembagian yang menghasilkan nilai sama adalah....', opsi = '{"A":"2.254 ÷ 46 sama dengan 2.400 ÷ 48","B":"2.688 ÷ 48 sama dengan 2.850 ÷ 50","C":"2.352 ÷ 42 sama dengan 2.508 ÷ 44","D":"2.565 ÷ 45 sama dengan 2.552 ÷ 44","E":"2.862 ÷ 54 sama dengan 3.180 ÷ 60"}'::jsonb, pembahasan = 'A.

$\frac{2.254}{46}=\frac{1.127}{23}$  = 49

$\frac{2.400}{48}=\frac{200}{4}$  = 50

49 ≠ 50

B.

$\frac{2.400}{48}=\frac{200}{4}$  = 56

$\frac{2.850}{50}=\frac{285}{5}$  = 57

56 ≠ 57

C. 

$\frac{2.352}{42}=\frac{392}{7}$  = 56

$\frac{2.508}{44}=\frac{627}{11}$  = 57

56 ≠ 57

D.

$\frac{2.565}{45}=\frac{513}{9}$  = 57

$\frac{2.552}{44}=\frac{638}{11}$  = 58

57 ≠ 58

E.

$\frac{2.862}{54}=\frac{477}{9}$  = 53

$\frac{3.180}{60}=\frac{318}{6}$  = 53

53 = 53

Jawaban: E', gambar_url = NULL WHERE sumber = 'part-36' AND nomor = 47;
UPDATE questions SET soal = 'yang paling mendekati hasil perhitungan berikut adalah....

$\frac{1.253\times89}{30}$', opsi = '{"A":"3.500","B":"3.700","C":"3.900","D":"4.100","E":"4.300"}'::jsonb, pembahasan = '$\frac{1.253\times89}{30}\approx\frac{1.250\times90}{30}$

=1.250 × 3

=3.750

Jawaban: B', gambar_url = NULL WHERE sumber = 'part-36' AND nomor = 49;
UPDATE questions SET soal = 'Diberikan suatu barisan bilangan dengan pola yang tetap dan berlanjut. Beberapa suku pada barisan tersebut diketahui sebagai berikut.

![gambar](/gambar/68be9cc14807.png)

Nilai suku ke-11 adalah....', opsi = '{"A":"214","B":"218","C":"226","D":"230","E":"222"}'::jsonb, pembahasan = 'Perhatikan selisih antarsuku:

$33 \xrightarrow{+15} 48 \xrightarrow{+19} 67 \xrightarrow{+23} 90$

Selisihnya bertambah 4, sehingga selisih berikutnya adalah 27, 31, 35, dan 39.

$U_8$  = 90 + 27 = 117

$U_9$  = 117 + 31 = 148

$U_{10}$  = 148 + 35 = 183

$U_{11}$  = 183 + 39 = 222

Jawaban: E', gambar_url = NULL WHERE sumber = 'part-36' AND nomor = 50;
UPDATE questions SET soal = 'Perhatikan tabel berikut!

![gambar](/gambar/f063f6f79b3b.png)

Bilangan yang tepat untuk menggantikan tanda tanya (?) adalah....', opsi = '{"A":"55","B":"59","C":"61","D":"63","E":"57"}'::jsonb, pembahasan = '![gambar](/gambar/d6f52711a9a8.png)

$x \xrightarrow{+13} 72 \xrightarrow{\times 3} 216 \xrightarrow{-29} 187$

$x$  + 13 = 72

$x$  = 59

Jawaban: B', gambar_url = NULL WHERE sumber = 'part-36' AND nomor = 51;
UPDATE questions SET soal = 'Perhatikan pola bilangan pada kedua kotak berikut!

![gambar](/gambar/a347009993d8.png)

Bilangan yang tepat untuk menggantikan tanda tanya (?) adalah....', opsi = '{"A":"138","B":"136","C":"144","D":"132","E":"140"}'::jsonb, pembahasan = 'Perhatikan hubungan angka dari kiri ke kanan.

Kotak I

Baris pertama:

$7^2$ − 6 = 49 − 6 = 43

Baris kedua:

$9^2$  − 6 = 81 − 6 = 75

Jadi, polanya adalah bilangan kiri dikuadratkan, kemudian dikurangi 6.

Kotak II

Baris pertama:

$11^2$ − 6 = 121 − 6 = 115

Baris kedua:

$x$  = $12^2$ − 6

= 144 − 6

= 138

Jawaban: A', gambar_url = NULL WHERE sumber = 'part-36' AND nomor = 52;
UPDATE questions SET soal = 'Tentukan urutan peserta dari peringkat tertinggi ke terendah. Jika terdapat skor yang sama, maka urutkan berdasarkan usia termuda lebih dulu.

![gambar](/gambar/cf162e3c8d67.png)

Urutan peserta dari peringkat tertinggi ke terendah adalah...', opsi = '{"A":"Eko – Beni – Cika – Dinda – Andra","B":"Eko – Beni – Cika – Andra – Dinda","C":"Beni – Cika – Eko – Dinda – Andra","D":"Eko – Cika – Beni – Dinda – Andra","E":"Dinda – Andra – Eko – Beni – Cika"}'::jsonb, pembahasan = '• Skor tertinggi: Eko → 92.

• Nilai berikutnya: Beni dan Cika → 90.

Karena skor dan jumlah jawaban salah sama, maka diurutkan berdasarkan usia termuda, yaitu Beni terlebih dahulu lalu Cika.

• Nilai berikutnya: Dinda → 88.

• Nilai terendah: Andra → 85.

Maka urutannya adalah:

Eko – Beni – Cika – Dinda – Andra

Jawaban: A', gambar_url = NULL WHERE sumber = 'part-36' AND nomor = 56;
UPDATE questions SET soal = '![gambar](/gambar/68d5d1660623.png)', opsi = '{"A":"![gambar](/gambar/0710ab86ea49.png)","B":"![gambar](/gambar/8fce09821629.png)","C":"![gambar](/gambar/c834ebfb8f8e.png)","D":"![gambar](/gambar/f47f62d44420.png)","E":"![gambar](/gambar/0b32181bc3a8.png)"}'::jsonb, pembahasan = '![gambar](/gambar/b50f30384a62.png)

Jika diperhatikan dari bentuk objek yang ada di gambar (1) sama seperti di gambar (4), objek yang ada di gambar (2) sama seperti di gambar (5), kemudian objek yang ada di gambar (3) sama seperti di gambar 6. Terbentuk pola gambar:

• Gambar 1 → Gambar 4

• Gambar 2 → Gambar 5

• Gambar 3 → Gambar 6

Perubahan dari gambar bagian awal ke bagian akhir adalah dirotasi 90° searah jarum jam.

Sehingga gambar yang tepat untuk gambar selanjutnya adalah

![gambar](/gambar/d604aebd6311.png)

Jawaban: B', gambar_url = NULL WHERE sumber = 'part-36' AND nomor = 57;
UPDATE questions SET soal = 'Perhatikan gambar berikut!

![gambar](/gambar/db2b5a18bd63.png)', opsi = '{"A":"![gambar](/gambar/9978b52cc031.png)","B":"![gambar](/gambar/33a8f6c357bf.png)","C":"![gambar](/gambar/1663af016c3a.png)","D":"![gambar](/gambar/8732aa67f907.png)","E":"![gambar](/gambar/5a28bcf23c32.png)"}'::jsonb, pembahasan = '![gambar](/gambar/5305a97be80e.png)

Masing-masing objek yang ditandai sebagai objek 1, 2, 3 dan 4 memiliki pola yang berbeda yaitu

• Objek 1, memiliki perubahan  ![gambar](/gambar/ea671be8cb7e.png) sehingga objek yang tepat untuk gambar (6) adalah  ![gambar](/gambar/2e4f0f5e5d03.png)

• Objek 2, memiliki perubahan yang berulang  ![gambar](/gambar/c96da18d960d.png), sehingga objek yang tepat untuk gambar (6) adalah  ![gambar](/gambar/317658bcbdb8.png)

• Objek 3, memiliki pola bertambah satu lengkungan setiap langkahnya

• Objek 4, tetap tidak ada perubahan

Sehingga gambar yang tepat untuk gambar (6) adalah

![gambar](/gambar/ecf161287428.png)

Jawaban: C', gambar_url = NULL WHERE sumber = 'part-36' AND nomor = 58;
UPDATE questions SET soal = 'Perhatikan gambar berikut!

![gambar](/gambar/a6c1b93e6f89.png)', opsi = '{"A":"![gambar](/gambar/6278cbce580e.png)","B":"![gambar](/gambar/0d5b978672a9.png)","C":"![gambar](/gambar/c1bf8b4b4590.png)","D":"![gambar](/gambar/6ecf5dff5c0e.png)","E":"![gambar](/gambar/5fc391e9b64a.png)"}'::jsonb, pembahasan = '![gambar](/gambar/c3f4b6bf3d11.png)

Karena yang ditanya adalah gambar (2), maka cari pola gambar dari gambar (3) ke gambar (4), kemudian terapkan gambar (1) ke gambar (2).

Masing-masing objek yang ada pada gambar (1) dan (3) ditandai sebagai objek 1, 2 dan 3 memiliki pola yang berbeda yaitu

• Objek 1, memiliki perubahan bertambahnya 2 lengkungan kemudian bergeser ke kanan.

• Objek 2, memiliki perubahan penghapusan 2 cabang kemudian bergeser ke kiri.

• Objek 3, dicerminkan secara vertikal

Menggunakan pola yang sama, sehingga gambar yang tepat untuk gambar (2) adalah

![gambar](/gambar/7d925e9511ab.png)

Jawaban: D', gambar_url = NULL WHERE sumber = 'part-36' AND nomor = 59;
UPDATE questions SET soal = 'Perhatikan gambar berikut!

![gambar](/gambar/d60c017f602b.png)', opsi = '{"A":"![gambar](/gambar/94b81df0d070.png)","B":"![gambar](/gambar/adea54e737f8.png)","C":"![gambar](/gambar/146e7d16f258.png)","D":"![gambar](/gambar/a43b88d5856c.png)","E":"![gambar](/gambar/31474357b83c.png)"}'::jsonb, pembahasan = '![gambar](/gambar/1470a1440f6d.png)

Karena yang ditanya adalah gambar (3), maka cari pola gambar dari gambar (2) ke gambar (1), kemudian terapkan gambar (4) ke gambar (3).

Masing-masing objek yang ada pada gambar (2) dan (4) ditandai sebagai objek 1, 2, 3 dan 4 memiliki pola yang berbeda yaitu

• Objek 1 dan 4 bertukar tempat

• Objek 2 dan 3 dicerminkan secara horizontal

Menggunakan pola yang sama, maka gambar yang tepat untuk mengisi gambar (3) adalah

![gambar](/gambar/0567c13cfe61.png)

Jawaban: E', gambar_url = NULL WHERE sumber = 'part-36' AND nomor = 60;
UPDATE questions SET soal = 'Perhatikan gambar berikut

![gambar](/gambar/5eb5636e13ed.png)', opsi = '{"A":"![gambar](/gambar/61ae70304cef.png)","B":"![gambar](/gambar/bfb11a289aa3.png)","C":"![gambar](/gambar/78df6ffe4a42.png)","D":"![gambar](/gambar/a8d16c050283.png)","E":"![gambar](/gambar/f796d1e405dc.png)"}'::jsonb, pembahasan = '![gambar](/gambar/be2ed8a9caeb.png)

Dari gambar diatas, kita misalkan setiap kotak dengan nomor. Sehingga kita dapatkan 3 kelompok gambar yaitu

• Gambar (1), gambar (5) dan gambar (9) memiliki pola rotasi 90° searah jarum jam

• Gambar (2), gambar (6) dan gambar (7) memiliki pola rotasi 180° searah ataupun berlawanan arah jarum jam (karena menghasilkan hasil yang sama)

• Gambar (3), gambar (4) dan gambar (8) memiliki pola rotasi 90° berlawanan arah jarum jam

Sehingga gambar yang tepat adalah

![gambar](/gambar/dabbecfcf923.png)

Jawaban: D', gambar_url = NULL WHERE sumber = 'part-36' AND nomor = 63;
UPDATE questions SET soal = 'Perhatikan gambar berikut!

![gambar](/gambar/ed10ee8448d7.png)', opsi = '{"A":"![gambar](/gambar/fd8d7a203181.png)","B":"![gambar](/gambar/0deedb2a7a27.png)","C":"![gambar](/gambar/dff3d26bbaef.png)","D":"![gambar](/gambar/d69a55b18105.png)","E":"![gambar](/gambar/89760daabf97.png)"}'::jsonb, pembahasan = '![gambar](/gambar/e0476a0d6862.png)

Pada gambar tersebut terdapat objek kecil yang ditandai lingkaran merah dan lingkaran biru, memiliki pola perkolom, yang mana di kolom yang sama objek tersebut terdapat di dua kotak.

Objek besar ditengah dibaris pertama merupakan gabungan dari baris kedua dan ketiga.

![gambar](/gambar/daabca477b15.png)

Objek yang ditandai lingkaran hijau memiliki pola perkolom, yang mana di kolom yang sama terdapat pola baris pertama merupakan gabungan dari pola baris kedua dan ketiga.

Sehingga gambar yang tepat untuk mengisi kotak yang kosong adalah

![gambar](/gambar/59d6c60b4afd.png)

Jawaban: C', gambar_url = NULL WHERE sumber = 'part-36' AND nomor = 64;
UPDATE questions SET soal = 'Perhatikan gambar berikut!

![gambar](/gambar/82da91a60689.png)', opsi = '{"A":"![gambar](/gambar/cccc4cecf510.png)","B":"![gambar](/gambar/ec67658424f1.png)","C":"![gambar](/gambar/c69b634a4c77.png)","D":"![gambar](/gambar/ab83cb6159a7.png)","E":"![gambar](/gambar/f85f8121a68c.png)"}'::jsonb, pembahasan = '![gambar](/gambar/ae8d1a7d856a.png)

Pada gambar tersebut terdapat pola disetiap barisnya, yaitu

• Objek besar pada kolom (1) dan kolom (2) digabungkan menghasilkan objek di kolom (3)

• Objek kecil dari kolom (2) ke kolom (3) hanya berbeda pada ujungnya yang semula lancip menjadi tumpul.

Sehingga gambar yang tepat untuk mengisi tempat yang kosong adalah

![gambar](/gambar/3f421b778f50.png)

Jawaban: B', gambar_url = NULL WHERE sumber = 'part-36' AND nomor = 65;
UPDATE questions SET soal = '$\frac{5}{6}$  × 1,2 − $\frac{3}{5}$  ÷ $\frac{9}{10}$  + 2 = …', opsi = '{"A":"$2\\frac{1}{3}$","B":"$2\\frac{2}{3}$","C":"$2\\frac{7}{9}$","D":"$3\\frac{1}{3}$","E":"$3\\frac{2}{3}$"}'::jsonb, pembahasan = '$\frac{5}{6}$  × 1,2 − $\frac{3}{5}$  ÷ $\frac{9}{10}$  + 2 =  $\frac{5}{6}$  × $\frac{12}{10}$  − $\frac{3}{5}$  × $\frac{10}{9}$  + 2

$=1-\frac{2}{3}+2$  

$=\frac{1}{3}+2$

$=\frac{7}{3}$

$=2\frac{1}{3}$

Jawaban: A', gambar_url = NULL WHERE sumber = 'part-37' AND nomor = 38;
UPDATE questions SET soal = '$\frac{3}{4}\times 1,2+\frac{1}{5}\div \frac{2}{10}=\ldots$', opsi = '{"A":"1,3","B":"1,5","C":"1,9","D":"2,0","E":"2,3"}'::jsonb, pembahasan = '$\frac{3}{4}\times 1,2+\frac{1}{5}\div \frac{2}{10}=\frac{3}{4}\times \frac{12}{10}+\frac{1}{5}\div \frac{2}{10}$

$=\frac{3}{4}\times \frac{12}{10}+\frac{1}{5}\times \frac{10}{2}$

$=\frac{9}{10}+1$

$=\frac{9+10}{10}$

$=\frac{19}{10}$

= 1,9

Jawaban: C', gambar_url = NULL WHERE sumber = 'part-37' AND nomor = 39;
UPDATE questions SET soal = '$2+\frac{3}{4}-\frac{1}{2}=\ldots$', opsi = '{"A":"1,75","B":"2","C":"2,25","D":"2,5","E":"3,25"}'::jsonb, pembahasan = '$2+\frac{3}{4}-\frac{1}{2}=2+0,75-0,5$

$=2+0,25$

$=2,25$

Jawaban: C', gambar_url = NULL WHERE sumber = 'part-37' AND nomor = 40;
UPDATE questions SET soal = 'Diketahui

![gambar](/gambar/6b4e08eedc55.png)

Tentukanlah hubungan antara $A$  dan $B$  yang benar...', opsi = '{"A":"$A>B$","B":"$2 A<B$","C":"$B<3A$","D":"$A+B>0$","E":"$A=B$"}'::jsonb, pembahasan = 'A → −8 + 12 − 3 × 4 = −8 + 12 − 12 = −8

B → −5 + 18 − 2 × 3 = −5 + 18 − 6 = 7

Sehingga perbandingan A: B = −8: 7

Selanjutnya sesuaikan dengan tiap opsi

![gambar](/gambar/f3fae0902c13.png)

Jawaban: B', gambar_url = NULL WHERE sumber = 'part-37' AND nomor = 41;
UPDATE questions SET soal = 'Diketahui nilai $x=4$ dan $y=\frac{3}{2}$.

![gambar](/gambar/e3017087264c.png)

Manakah hubungan yang benar antara A dan B?', opsi = '{"A":"$\\frac{1}{2}A\\gt B$","B":"$A<2B$","C":"Hubungan A dan B tidak dapat ditentukan","D":"$A=B$","E":"$\\frac{1}{2}A\\gt 2B$"}'::jsonb, pembahasan = 'Diketahui nilai $x=4$ dan $y=\frac{3}{2}$. 

Nilai A  

$3x-y=3\left(4\right)-\frac{3}{2}=12-\frac{3}{2}=\frac{24-3}{2}=\frac{21}{2}$  = 10,5

Nilai B  

$5x+2y=5\left(4\right)+2\left(\frac{3}{2}\right)$  = 20 + 3 = 23

Selanjutnya sesuaikan dengan tiap opsi

![gambar](/gambar/ed8f02608f11.png)

Jawaban: B', gambar_url = NULL WHERE sumber = 'part-37' AND nomor = 42;
UPDATE questions SET soal = 'Diketahui

![gambar](/gambar/9689a006f17b.png)

Manakah hubungan yang benar antara A dan B?', opsi = '{"A":"$2A>3B$","B":"$A=2B$","C":"Hubungan A dan B tidak dapat ditentukan","D":"$3A<4B$","E":"$4A=5B$"}'::jsonb, pembahasan = 'Nilai A

1 ton = 1000 kg 

Jumlah beras awal: $1\frac{1}{2}$ ton = 1500 kg 

Sisa beras: 1500 − 300 = 1200 kg

Nilai B  

500 kg

Perbandingan A: B = 1200: 500 

= 12:5

Selanjutnya sesuaikan dengan tiap opsi

![gambar](/gambar/e5e5f05e9c23.png)

Jawaban: A', gambar_url = NULL WHERE sumber = 'part-37' AND nomor = 43;
UPDATE questions SET soal = 'Diketahui seorang pekerja mampu merakit 42 mainan dalam waktu 2,8 jam.

![gambar](/gambar/32a25d996723.png)

Tentukanlah hubungan antara $A$  dan $B$  yang benar...', opsi = '{"A":"$A=B$","B":"$A>B$","C":"$A<B$","D":"$2A=B$","E":"$B=2A$"}'::jsonb, pembahasan = 'Diketahui seorang pekerja mampu merakit 42 mainan dalam waktu 2,8 jam = 2,8 × 60 = 168 menit

A → Jumlah mainan yang dihasilkan dalam waktu 336 menit

![gambar](/gambar/f7c310f8b4fa.png)

$\frac{42}{x}=\frac{168}{336}$  

$x=\frac{42\times \cancel{336}}{\cancel{168}}$

= 42 × 2

= 84

Banyak mainan yang dapat dirakit dalam waktu 336 menit adalah 84.

B → 84

Jadi, $A=B=84$

Jawaban: A', gambar_url = NULL WHERE sumber = 'part-37' AND nomor = 44;
UPDATE questions SET soal = 'Biaya kursus Bahasa Inggris selama 9 bulan adalah Rp5.850.000. Jika biaya kursus dihitung secara proporsional, berapa biaya kursus untuk 4 bulan?', opsi = '{"A":"Rp2.400.000","B":"Rp2.500.000","C":"Rp2.600.000","D":"Rp2.750.000","E":"Rp3.000.000"}'::jsonb, pembahasan = '![gambar](/gambar/f4d991b6b6fb.png)

Untuk menyelesaikan soal tersebut dapat kita gunakan perbandingan senilai.

$\frac{5.850.000}{x}=\frac{9}{4}$

$x=\frac{5.850.000\times 4}{9}$

$x$  = 2.600.000

Jawaban: C', gambar_url = NULL WHERE sumber = 'part-37' AND nomor = 45;
UPDATE questions SET soal = 'Lima mesin fotokopi mampu mencetak 2,25 rim kertas dalam satu jam. Jika terdapat 8 mesin fotokopi dengan kemampuan yang sama, berapa rim kertas yang dapat dicetak dalam satu jam?', opsi = '{"A":"3 rim","B":"3,2 rim","C":"3,4 rim","D":"3,6 rim","E":"4 rim"}'::jsonb, pembahasan = '![gambar](/gambar/bafcebd2a52c.png)

Untuk menyelesaikan soal tersebut dapat kita gunakan perbandingan senilai.

$\frac{5}{8}=\frac{2,25}{x}$

$x=\frac{8\times 2,25}{5}$

$x=\frac{18}{5}$

$x$ = 3,6 rim

Jawaban: D', gambar_url = NULL WHERE sumber = 'part-37' AND nomor = 46;
UPDATE questions SET soal = 'Sebuah kapal wisata berlayar dari pelabuhan menuju sebuah pulau dengan kecepatan rata-rata 48 km/jam dan memerlukan waktu 5 jam untuk tiba di tujuan. Pada perjalanan berikutnya, kapal cepat menempuh rute yang sama dengan kecepatan 12 km/jam lebih tinggi dibandingkan kapal wisata tersebut. Berapakah selisih waktu tempuh antara kapal cepat dan kapal wisata dalam satuan menit?', opsi = '{"A":"48","B":"60","C":"72","D":"90","E":"120"}'::jsonb, pembahasan = 'Untuk soal ini kita bisa gunakan perbandingan tak senilai

![gambar](/gambar/6864bb9a2929.png)

![gambar](/gambar/7aed149a5b74.png)

$x=\frac{48\times 5}{60}$

$x$ = 4 jam

Selisih waktunya adalah 5 jam – 4 jam = 1 jam = 60 menit

Sehingga, kapal cepat lebih cepat 60 menit dari kapal wisata.

Jawaban: B', gambar_url = NULL WHERE sumber = 'part-37' AND nomor = 48;
UPDATE questions SET soal = 'Sebuah perusahaan konstruksi menugaskan 12 teknisi untuk memasang 2 unit menara jaringan dalam waktu 6 hari. Jika perusahaan tersebut ingin menyelesaikan pemasangan 8 unit menara jaringan dengan tingkat kesulitan yang sama dalam waktu 9 hari, maka jumlah teknisi yang dibutuhkan adalah... orang.', opsi = '{"A":"32","B":"48","C":"64","D":"72","E":"80"}'::jsonb, pembahasan = 'Diketahui,

12 teknisi mampu memasang 2 unit menara jaringan dalam waktu 6 hari.

Hasil = Tenaga × Waktu 

$\frac{2}{8}=\frac{12\times 6}{x\times 9}$

$\frac{1}{4}=\frac{4\times 2}{x}$

$x$  = 32

Maka teknisi yang dibutuhkan adalah 32 orang.

Jawaban: A', gambar_url = NULL WHERE sumber = 'part-37' AND nomor = 49;
UPDATE questions SET soal = 'Di sebuah taman kota, diketahui bahwa 5 mesin pemotong rumput kecil mampu merapikan seluruh rumput di satu area taman dalam waktu 6 jam. Sementara itu, 2 mesin pemotong rumput besar dapat menyelesaikan area taman yang sama dalam waktu 3 jam. Jika pada hari tertentu digunakan 3 mesin kecil dan 1 mesin besar secara bersamaan, maka seluruh area taman tersebut akan selesai dirapikan dalam waktu... jam.', opsi = '{"A":"1","B":"2","C":"2,5","D":"3,75","E":"4,25"}'::jsonb, pembahasan = 'Untuk menyelesaikan soal tersebut, kita cari terlebih dahulu 3 mesin kecil dalam berapa jam dan 1 mesin besar dalam berapa jam.

![gambar](/gambar/3c18d7d83765.png)

$x=\frac{5\times 6}{3}=10$  jam

![gambar](/gambar/a71021d89cd7.png)

$y=\frac{2\times 3}{1}$  = 6 jam

Maka 3 mesin kecil dan 1 mesin besar dapat menyelesaikan pemotongan area taman dalam

$\frac{1}{w}=\frac{1}{10}+\frac{1}{6}$  

$\frac{1}{w}=\frac{3+5}{30}$

$w=\frac{30}{8}$

= 3,75

Jawaban: D', gambar_url = NULL WHERE sumber = 'part-37' AND nomor = 50;
UPDATE questions SET soal = 'Berikut adalah tabel penilaian dari 3 orang yang diminta untuk menilai kebersihan dari empat taman yang berbeda untuk mendapatkan reward dari pemerintah.

![gambar](/gambar/c54893279325.png)

Berdasarkan tabel penilaian tersebut, manakah taman dengan penilaian terbaik yang berhak mendapatkan reward dari pemerintah?', opsi = '{"A":"Taman 1","B":"Taman 2","C":"Taman 3","D":"Taman 4","E":"Taman 2 dan 3"}'::jsonb, pembahasan = '![gambar](/gambar/f4a059837aa0.png)

Maka, dapat diketahui taman dengan penilaian terbaik yang berhak mendapatkan reward dari pemerintah adalah taman 4.

Jawaban: D', gambar_url = NULL WHERE sumber = 'part-37' AND nomor = 57;
UPDATE questions SET soal = 'Perhatikan gambar berikut!

![gambar](/gambar/9aeac0aa5f94.png)', opsi = '{"A":"![gambar](/gambar/8f5512af17e5.png)","B":"![gambar](/gambar/abccab4554ef.png)","C":"![gambar](/gambar/00442860fd7b.png)","D":"![gambar](/gambar/48e935f2aadd.png)","E":"![gambar](/gambar/8ae1e601480d.png)"}'::jsonb, pembahasan = 'Setiap objek pada gambar secara bersama berotasi 90° searah jarum jam setiap langkahnya. Sehingga gambar yang tepat adalah

![gambar](/gambar/2eb5bf467ec3.png)

Jawaban: B', gambar_url = NULL WHERE sumber = 'part-37' AND nomor = 58;
UPDATE questions SET soal = 'Perhatikan gambar berikut!

![gambar](/gambar/1864399cb9f8.png)', opsi = '{"A":"![gambar](/gambar/64837bd30d94.png)","B":"![gambar](/gambar/4ca03bd6613f.png)","C":"![gambar](/gambar/e617058c80b9.png)","D":"![gambar](/gambar/74e623106d5a.png)","E":"![gambar](/gambar/5b793372f334.png)"}'::jsonb, pembahasan = '![gambar](/gambar/5d0e6da2aa92.png)

Pola gambar (1) ke gambar (2)

Objek yang ditandai dirotasi 90° (searah jarum jam atau berlawanan arah jarum jam karena menghasilkan bentuk objek yang sama).

Menggunakan pola yang sama gambar (3) ke gambar (4), maka gambar yang tepat adalah

![gambar](/gambar/981202e41147.png)

Jawaban: B', gambar_url = NULL WHERE sumber = 'part-37' AND nomor = 59;
UPDATE questions SET soal = 'Perhatikan gambar berikut!

![gambar](/gambar/e34fe13091ab.png)', opsi = '{"A":"![gambar](/gambar/1e3c88d8401a.png)","B":"![gambar](/gambar/94ab0ea6b472.png)","C":"![gambar](/gambar/0778f3478ab2.png)","D":"![gambar](/gambar/940813b77e1b.png)","E":"![gambar](/gambar/def6624ab72b.png)"}'::jsonb, pembahasan = 'Pola gambar (1) ke gambar (2)

![gambar](/gambar/126694f73635.png)

Pada gambar (1) terdapat tiga objek yang beda

- Bentuk objek angka 1 berubah menjadi objek angka 2 (bertambah 1 (+1)) dan dicerminkan secara horizontal, kemudian objek tersebut bergeser ke sisi atas bagian kiri.

- Objek di lingkaran merah dirotasi 90° berlawanan arah jarum jam dan posisi objek bergeser ke sisi kanan bawah, kemudian objek tersebut diduplikat dengan cara dicerminkan secara vertikal.

- Objek di lingkaran biru digeser ke sisi atas bagian kanan dan diperkecil.

Mengikuti pola yang sama, maka gambar yang tepat mengisi posisi ke (4) adalah

![gambar](/gambar/0244fe9969f3.png)

Jawaban: C', gambar_url = NULL WHERE sumber = 'part-37' AND nomor = 60;
UPDATE questions SET soal = 'Perhatikan gambar berikut!

![gambar](/gambar/db9c90304616.png)', opsi = '{"A":"![gambar](/gambar/ff85309c1623.png)","B":"![gambar](/gambar/f30d7c48470d.png)","C":"![gambar](/gambar/c6d405e46be1.png)","D":"![gambar](/gambar/c33658fe141e.png)","E":"![gambar](/gambar/4d1279f199c2.png)"}'::jsonb, pembahasan = '![gambar](/gambar/b0d7d864eb32.png)

Gambar diatas memiliki pola perbaris, yaitu gabungan dari kolom (1) dan kolom (2) menghasilkan kolom (3). Ketika kolom (1) dan kolom (2) digabungkan, terdapat warna yang sama yang hilang, kemudian warna yang berbeda digabungkan jadi satu dan posisi warna ditukar.

Sehingga gambar yang tepat untuk mengisi gambar yang kosong adalah

![gambar](/gambar/21a807968db1.png)

Jawaban: E', gambar_url = NULL WHERE sumber = 'part-37' AND nomor = 63;
UPDATE questions SET soal = 'Perhatikan gambar berikut

![gambar](/gambar/573a5eba014b.png)', opsi = '{"A":"![gambar](/gambar/29bcea9c3106.png)","B":"![gambar](/gambar/a09cb43952d2.png)","C":"![gambar](/gambar/74ab59a9ca78.png)","D":"![gambar](/gambar/2c7046962c9f.png)","E":"![gambar](/gambar/ffe131511343.png)"}'::jsonb, pembahasan = '![gambar](/gambar/ef518e2ce428.png)

Gambar diatas memiliki pola perbaris, yaitu gabungan dari kolom (2) dan kolom (3) menghasilkan kolom (1). Terdapat pola warna yang sama perkolomnya. Sehingga gambar yang tepat mengisi baris ketiga kolom ketiga adalahGambar diatas memiliki pola perbaris, yaitu gabungan dari kolom (2) dan kolom (3) menghasilkan kolom (1). Terdapat pola warna yang sama perkolomnya. Sehingga gambar yang tepat mengisi baris ketiga kolom ketiga adalah 

![gambar](/gambar/de848c7c55d1.png)

Jawaban: B', gambar_url = NULL WHERE sumber = 'part-37' AND nomor = 64;
UPDATE questions SET soal = 'Perhatikan gambar berikut!

![gambar](/gambar/3106cbfda18b.png)', opsi = '{"A":"![gambar](/gambar/2a6e35c7ec7d.png)","B":"![gambar](/gambar/6e8389b10378.png)","C":"![gambar](/gambar/5bad8ad2cb4a.png)","D":"![gambar](/gambar/3e1738a74528.png)","E":"![gambar](/gambar/fe9e6f0b765e.png)"}'::jsonb, pembahasan = '![gambar](/gambar/df1c5ce8be1c.png) ![gambar](/gambar/df1c5ce8be1c.png)

Gambar diatas memiliki pola perkolom. Setiap gambar terdapat 2 objek yaitu kotak merah dan kotak biru. Pola kotak merah pada baris (1) ke baris (2) bergeser satu langkah ke bawah seperti yang ditunjukkan panah. Pola kotak biru pada baris (1) ke baris (2) bergeser selangkah ke atas seperti yang ditunjukkan panah.

Sehingga gambar yang tepat mengisi gambar yang kosong adalah

![gambar](/gambar/5c4a02ca8e9f.png)

Jawaban: A', gambar_url = NULL WHERE sumber = 'part-37' AND nomor = 65;
UPDATE questions SET soal = '$3\frac{3}{4}+11\left(2\frac{2}{11}\right)-\frac{3}{4}-\frac{9}{-\frac{1}{3}}$  =...', opsi = '{"A":"0","B":"27","C":"54","D":"-54","E":"24"}'::jsonb, pembahasan = '$3\frac{3}{4}+11\left(2\frac{2}{11}\right)-\frac{3}{4}-\frac{9}{\frac{1}{-3}}$

= $3+\cancel{\frac{3}{4}}+\cancel{11}\left(\frac{24}{\cancel{11}}\right)-\cancel{\frac{3}{4}}+27$

= 3 + 24 + 27

= 54

Jawaban: C', gambar_url = NULL WHERE sumber = 'part-38' AND nomor = 38;
UPDATE questions SET soal = '$180\times\frac{7\times4}{36}\div\frac{5}{11}$  =...', opsi = '{"A":"308","B":"230","C":"210","D":"140","E":"110"}'::jsonb, pembahasan = '$180\times\frac{7\times4}{36}\div\frac{5}{11}$  = $\cancel{180}\times\frac{7\times4}{\cancel{36}}\times\frac{11}{5}$

= $\cancel{5}\times7\times4\times\frac{11}{\cancel{5}}$  

=  7 × 4  ×11  

= 308

Jawaban: A', gambar_url = NULL WHERE sumber = 'part-38' AND nomor = 39;
UPDATE questions SET soal = '$7\frac{1}{2}-2+\frac{1}{2}$  =...', opsi = '{"A":"10","B":"9","C":"8","D":"7","E":"6"}'::jsonb, pembahasan = '$7\frac{1}{2}-2+\frac{1}{2}$  = $\frac{15}{2}-2+\frac{1}{2}$  

= $\frac{16}{2}-2$  

= 8 − 2 

= 6

Jawaban: E', gambar_url = NULL WHERE sumber = 'part-38' AND nomor = 40;
UPDATE questions SET soal = 'Diketahui

![gambar](/gambar/870788202dfa.png)

Hubungan berikut yang tidak benar adalah …', opsi = '{"A":"$A<B$","B":"$2A<3B$","C":"$A>2B$","D":"$4A>5B$","E":"$3A=5B$"}'::jsonb, pembahasan = 'A   → 1,25 − 1,75 = −0,5

B  → 0,5 − 0,8 = −0,3

Selanjutnya sesuaikan dengan tiap opsi

![gambar](/gambar/23409cfed51f.png)

Jawaban: D', gambar_url = NULL WHERE sumber = 'part-38' AND nomor = 41;
UPDATE questions SET soal = 'Diketahui $x=1\frac{1}{2}$ dan $y=\frac{3}{4}$

![gambar](/gambar/0c98454199af.png)

Tentukanlah hubungan antara P dan Q yang benar…', opsi = '{"A":"2P > 2Q","B":"P < 2Q","C":"P = Q","D":"2P > Q","E":"3P > 2Q"}'::jsonb, pembahasan = 'Diketahui $x=1\frac{1}{2}$ dan $y=\frac{3}{4}$

P → $-4x+2y=-4\left(1\frac{1}{2}\right)+2\left(\frac{3}{4}\right)$  

= $-6+\frac{3}{2}$  

= $-\frac{9}{2}$

Q → $2(2x-y)$  = $4x-2y$  = −1 $(-4x+2y)$  = $-P$  

= $-\left(-\frac{9}{2}\right)$  

= $\frac{9}{2}$

Perbandingan P: Q 

= $-\frac{9}{2}\:  \frac{9}{2}$  

= −1: 1

Selanjutnya sesuaikan dengan tiap opsi

![gambar](/gambar/da9058ead115.png)

Jawaban: B', gambar_url = NULL WHERE sumber = 'part-38' AND nomor = 42;
UPDATE questions SET soal = 'Diketahui Lasman menempuh perjalanan dari kota A ke kota B dalam waktu 6 jam dengan kecepatan 54 km/jam.

![gambar](/gambar/53a7f71412cf.png)

Manakah hubungan yang benar antara kuantitas P dan Q berikut berdasarkan informasi yang diberikan?', opsi = '{"A":"$2P > 3Q$","B":"$2P < 2Q$","C":"$4P = 2Q$","D":"$3P > 3Q$","E":"Hubungan P dan Q tidak dapat ditentukan"}'::jsonb, pembahasan = 'Diketahui:

Kecepatan awal = 54 km/jam

Waktu awal = 6 jam

Jarak perjalanan = 54 × 6 = 324 km

Nilai P

Jika kecepatan menjadi 72 km/jam, maka waktu yang diperlukan:

$P=\frac{324}{72}$ = 4,5 jam

Nilai Q

5 jam

Selanjutnya sesuaikan dengan tiap opsi

![gambar](/gambar/6e143b899737.png)

Jawaban: B', gambar_url = NULL WHERE sumber = 'part-38' AND nomor = 43;
UPDATE questions SET soal = 'Biaya parkir di sebuah apartemen adalah Rp900.000 untuk dua bulan dan dihitung secara proporsional berdasarkan lama penggunaan.

![gambar](/gambar/4205c5de64eb.png)

Tentukanlah hubungan antara A dan B yang benar!', opsi = '{"A":"A = B","B":"A > B","C":"A < B","D":"2A = B","E":"2A = 2B"}'::jsonb, pembahasan = 'Biaya parkir per bulan = $\frac{900.000}{2}$  = Rp450.000

Nilai A

Biaya parkir selama lima bulan = 5 × 450.000 = Rp2.250.000

Nilai B

Rp2.100.000

Perbandingan A: B = 2.250.000: 2.100.000 

= 15: 14

Selanjutnya sesuaikan dengan tiap opsi

![gambar](/gambar/50a53ed3eba6.png)

Jawaban: B', gambar_url = NULL WHERE sumber = 'part-38' AND nomor = 44;
UPDATE questions SET soal = 'Sebuah taman dapat dibersihkan oleh 15 petugas dalam 4 hari. Jika hanya dikerjakan oleh 5 petugas dengan kemampuan kerja yang sama, berapa hari yang diperlukan untuk menyelesaikan pekerjaan tersebut?', opsi = '{"A":"5 hari","B":"8 hari","C":"12 hari","D":"18 hari","E":"20 hari"}'::jsonb, pembahasan = 'Untuk menyelesaikan soal tersebut dapat menggunakan Al Faiz aab:

![gambar](/gambar/cf5504a0733e.png)

$x=\frac{15\times4}{5}$

$x=12$

Maka pekerjaan dengan 5 petugas dapat diselesaikan dalam waktu 12 hari.

Jawaban: C', gambar_url = NULL WHERE sumber = 'part-38' AND nomor = 46;
UPDATE questions SET soal = 'Sebuah konveksi memiliki 28 penjahit yang ditargetkan menyelesaikan 5.600 seragam sekolah dalam 35 hari. Setelah bekerja selama 14 hari, 7 penjahit sakit dan tidak bekerja selama 6 hari. Agar seluruh pesanan tetap selesai tepat waktu, berapa penjahit tambahan yang perlu ditambahkan?', opsi = '{"A":"2","B":"3","C":"4","D":"5","E":"6"}'::jsonb, pembahasan = 'Diketahui

Pekerja = 28

Waktu = 35 hari

Pekerja sakit = 7

Libur = 6 hari

Sisa hari = 35 − 14 − 6 = 15

Al Faiz T = $\frac{Pekerja libur \times libur}{sisa hari}$  

= $\frac{7\times 6}{15}$  

= $\frac{42}{15}$  

= 2,8  (Karena yang dicari tambahan penjahit maka hasil perhitungannya dibulatkan ke atas)

Maka, tambahan penjahit yang dibutuhkan adalah 3 orang

Jawaban: B', gambar_url = NULL WHERE sumber = 'part-38' AND nomor = 47;
UPDATE questions SET soal = 'Seorang pedagang di pasar menjual 1½ kuintal tepung seharga Rp1.200.000. Jika seorang pembeli ingin membeli 20 kg tepung, berapa harga yang harus dibayarkan?', opsi = '{"A":"Rp80.000","B":"Rp120.000","C":"Rp160.000","D":"Rp200.000","E":"Rp240.000"}'::jsonb, pembahasan = '1 kuintal = 100 kg

1½ kuintal = $\frac{3}{2}$  × 100 = 150 kg

Untuk menyelesaikan soal tersebut dapat kita gunakan perbandingan senilai.

![gambar](/gambar/9ee2aa332c55.png)

$\frac{150}{20}=\frac{1.200.000}{x}$  

$\frac{15}{2}=\frac{1.200.000}{x}$   

$x=\frac{1.200.000\times2}{15}$   

$x$  = 80.000 × 2

$x$  = 160.000

Jawaban: C', gambar_url = NULL WHERE sumber = 'part-38' AND nomor = 48;
UPDATE questions SET soal = 'Sasi memiliki 6 ekor kucing yang menghabiskan 24 bungkus makanan kucing dalam 1 bulan. Jika Sasi mengadopsi 5 ekor kucing lagi, berapa bungkus makanan kucing yang akan habis dalam sebulan?', opsi = '{"A":"36 bungkus","B":"40 bungkus","C":"44 bungkus","D":"46 bungkus","E":"48 bungkus"}'::jsonb, pembahasan = '![gambar](/gambar/edae398ea0d4.png)

Untuk menyelesaikan soal tersebut dapat kita gunakan Al Faiz HTW

H = T × W

$\frac{24}{x}=\frac{6}{5}\times \frac{1}{1}$

$\frac{24}{X}=\frac{6}{11}$  

$X=\frac{\cancel{24}\times 11}{\cancel6}$

= 4 × 11

= 44

Jawaban: C', gambar_url = NULL WHERE sumber = 'part-38' AND nomor = 49;
UPDATE questions SET soal = 'Diketahui 8 ekor kambing dapat menghabiskan 1 lahan dalam waktu 5 hari, sedangkan 4 ekor sapi dapat menghabiskan 1 lahan dalam waktu 5 hari. Jika dalam sebuah lahan terdapat 5 ekor kambing dan 2 ekor sapi, maka lahan tersebut dapat habis dalam waktu berapa hari?', opsi = '{"A":"2 hari","B":"3 hari","C":"4 hari","D":"5 hari","E":"6 hari"}'::jsonb, pembahasan = 'Untuk menyelesaikan soal tsb, kita cari terlebih dahulu 5 kambing dalam berapa hari dan 2 sapi dalam berapa hari.

![gambar](/gambar/f4a385f1ef32.png)

Maka 5 ekor kambing dan 2 ekor sapi dapat menghabiskan lahan dalam

$\frac{1}{w}=\frac{1}{8}+\frac{1}{10}$

$\frac{1}{w}=\frac{5+4}{40}$

$w=\frac{40}{9}$

= 4,44 $\approx$ 5 hari

Jawaban: D', gambar_url = NULL WHERE sumber = 'part-38' AND nomor = 50;
UPDATE questions SET soal = '$1\, 3\,\frac{11}{5},\frac{16}{14},....$', opsi = '{"A":"$\\frac{21}{41}$","B":"$\\frac{21}{32}$","C":"$\\frac{21}{28}$","D":"$\\frac{32}{21}$","E":"$\\frac{41}{21}$"}'::jsonb, pembahasan = '![gambar](/gambar/68c643ffd89e.png)

Jawaban: A', gambar_url = NULL WHERE sumber = 'part-38' AND nomor = 53;
UPDATE questions SET soal = 'Lima siswa, yaitu Aldi, Bagas, Candra, Dimas, dan Eko, mengikuti ujian Matematika dan Bahasa Inggris. Nilai mereka ditunjukkan pada tabel berikut.

![gambar](/gambar/3160555c356e.png)

Siswa dinyatakan lulus jika memperoleh nilai rata-rata minimal 82 dan tidak ada nilai yang kurang dari 78. Tiga siswa yang memperoleh nilai rata-rata tertinggi dan memenuhi syarat kelulusan adalah....', opsi = '{"A":"Candra, Dimas, Eko","B":"Dimas, Aldi, Bagas","C":"Dimas, Bagas, Eko","D":"Dimas, Eko, Aldi","E":"Eko, Bagas, Aldi"}'::jsonb, pembahasan = 'Syarat kelulusan:

- Rata – rata nilai ≥ 82

- Nilai Matematika dan Bahasa Inggris ≥ 78

![gambar](/gambar/082e101dd873.png)

Sehingga tiga siswa yang memperoleh nilai rata-rata tertinggi dan memenuhi syarat kelulusan adalah Dimas, Bagas, dan Eko.

Jawaban: C', gambar_url = NULL WHERE sumber = 'part-38' AND nomor = 57;
UPDATE questions SET soal = 'Perhatikan gambar berikut!

![gambar](/gambar/49adbe9aef5d.png)', opsi = '{"A":"![gambar](/gambar/124581d741ed.png)","B":"![gambar](/gambar/406c7d888008.png)","C":"![gambar](/gambar/683e8927b258.png)","D":"![gambar](/gambar/4e27bd08c4e7.png)","E":"![gambar](/gambar/60a6b02466ad.png)"}'::jsonb, pembahasan = 'Objek pada gambar memiliki beberapa pola, yaitu

• Objek bagian luar memiliki pola bentuk berulang yaitu Segi Empat - Bulat - Segi Lima

Sehingga bentuk objek yang sama:

Gambar 1 → Gambar 4

Gambar 2 → Gambar 5

Gambar 3 → Gambar 6

• Objek bagian tengah disesuaikan dengan bentuk objek bagian luar. Untuk objek bentuk Wajik pada gambar (1) terdapat huruf C, kemudian objek bentuk Wajik pada gambar (4) terdapat huruf P. Polanya adalah urutan abjad dari C ke P ada sebanyak 13 kali perpindahan. Begitu juga dengan objek bentuk lingkaran, polanya adalah urutan angka dari 3 ke 16 ada sebanyak 13 kali perpindahan.

Sehingga gambar selanjutnya yang tepat adalah

![gambar](/gambar/0d1f9555532c.png)

Jawaban: B', gambar_url = NULL WHERE sumber = 'part-38' AND nomor = 58;
UPDATE questions SET soal = 'Perhatikan gambar berikut!

![gambar](/gambar/0170eacd93c9.png)', opsi = '{"A":"![gambar](/gambar/d512b01d5e82.png)","B":"![gambar](/gambar/b3f9eb222443.png)","C":"![gambar](/gambar/acd14b339437.png)","D":"![gambar](/gambar/cfb5e44be9b5.png)","E":"![gambar](/gambar/6c2872f9c953.png)"}'::jsonb, pembahasan = '![gambar](/gambar/95c70279fccc.png)

Objek pada gambar memiliki jumlah batang yang bertambah satu setiap langkahnya. Sehingga gambar selanjutnya yang tepat adalah

![gambar](/gambar/278c646ef6a3.png)

Jawaban: E', gambar_url = NULL WHERE sumber = 'part-38' AND nomor = 59;
UPDATE questions SET soal = 'Perhatikan gambar berikut!

![gambar](/gambar/f114f9bbce95.png)', opsi = '{"A":"![gambar](/gambar/d0f54af3f37b.png)","B":"![gambar](/gambar/9babb1c541a2.png)","C":"![gambar](/gambar/7500c4c52d3a.png)","D":"![gambar](/gambar/b1394ad08db3.png)","E":"![gambar](/gambar/146b53f36c95.png)"}'::jsonb, pembahasan = 'Pola gambar (1) ke gambar (2)

![gambar](/gambar/03275d00b22e.png)

Pada gambar (1) terdapat empat objek yang berbeda

• Objek di lingkaran merah menjadi dua lalu dirotasi 90° berlawanan arah jarum jam, salah satunya berubah warna.

• Objek di lingkaran biru dirotasi 90° searah jarum jam.

• Objek di lingkaran hijau digabung.

Untuk pola gambar (3) ke gambar (4) sama dengan pola gambar (1) ke gambar (2). Sehingga yang memenuhi adalah opsi B

![gambar](/gambar/54ce3f62a4c2.png)

Jawaban: B', gambar_url = NULL WHERE sumber = 'part-38' AND nomor = 62;
UPDATE questions SET soal = 'Perhatikan gambar berikut!

![gambar](/gambar/f78e512c7789.png)', opsi = '{"A":"![gambar](/gambar/86fd37d82ac8.png)","B":"![gambar](/gambar/fdc201fa3fc9.png)","C":"![gambar](/gambar/cc6fd54bae9f.png)","D":"![gambar](/gambar/015376f88305.png)","E":"![gambar](/gambar/63c0366bdfbd.png)"}'::jsonb, pembahasan = 'Pola gambar (1) ke gambar (2)

![gambar](/gambar/b283136b3103.png)

Pada gambar (1) terdapat tiga objek yang berbeda

• Objek di lingkaran merah dirotasi 90° berlawanan arah jarum jam.

• Objek di lingkaran biru dirotasi 90° searah jarum jam.

• Objek di lingkaran hijau dicerminkan secara vertikal dan berubah warna.

Untuk pola gambar (3) ke gambar (4) sama dengan pola gambar (1) ke gambar (2). Sehingga yang memenuhi adalah opsi B.

![gambar](/gambar/05f875bcd212.png)

Jawaban: B', gambar_url = NULL WHERE sumber = 'part-38' AND nomor = 63;
UPDATE questions SET soal = 'Perhatikan gambar berikut

![gambar](/gambar/7cacc2a6d52e.png)', opsi = '{"A":"![gambar](/gambar/2e52d627773a.png)","B":"![gambar](/gambar/b040a96766d4.png)","C":"![gambar](/gambar/479a6481a0c9.png)","D":"![gambar](/gambar/6e8bd90a2b98.png)","E":"![gambar](/gambar/fc68db2f7f40.png)"}'::jsonb, pembahasan = '![gambar](/gambar/40c343ec61bd.png)

Setiap baris pada gambar di atas memiliki dua bentuk objek yang berbeda, yaitu ![gambar](/gambar/27a7028ef486.png) (keriting) dan ![gambar](/gambar/78024b0aec5a.png)  (waru).

Gambar di atas memiliki pola per baris yaitu pada setiap baris terdapat 4 objek keriting dan 4 objek waru.

Pada baris ketiga sudah terdapat 2 objek keriting dan 4 objek waru, sehingga gambar yang tepat untuk mengisi gambar yang kosong adalah gambar dengan 2 objek keriting saja.

![gambar](/gambar/b2daae5e3a14.png)

Jawaban: B', gambar_url = NULL WHERE sumber = 'part-38' AND nomor = 64;
UPDATE questions SET soal = 'Perhatikan gambar berikut!

![gambar](/gambar/848727e77ff6.png)', opsi = '{"A":"![gambar](/gambar/765f521e6c48.png)","B":"![gambar](/gambar/cd3a8f8023a8.png)","C":"![gambar](/gambar/3c1226d1c4ab.png)","D":"![gambar](/gambar/3365f8840022.png)","E":"![gambar](/gambar/3fa0c65db0f8.png)"}'::jsonb, pembahasan = '![gambar](/gambar/72a128f30c9f.png)

Gambar di atas memiliki pola per kolom. Setiap gambar terdapat 2 objek yaitu kotak kuning dan kotak biru.

Pola kotak kuning pada kolom (1) ke kolom (2) lalu ke kolom (3) bergeser satu langkah ke bawah, jika sudah sampai di kotak paling bawah maka kotak kuning bergeser ke kotak yang paling atas seperti yang ditunjukkan panah.

Pola kotak biru pada kolom (1) ke kolom (2) lalu ke kolom (3) bergeser satu langkah ke bawah, jika sudah sampai di kotak paling bawah maka kotak biru bergeser ke atas (bagian tengah) seperti yang ditunjukkan panah.

Sehingga gambar yang tepat mengisi gambar yang kosong adalah

![gambar](/gambar/8a2f388f0d6b.png)

Jawaban: C', gambar_url = NULL WHERE sumber = 'part-38' AND nomor = 65;

COMMIT;
