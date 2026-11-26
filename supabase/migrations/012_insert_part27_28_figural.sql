-- Migration 012: Insert 18 Soal Figural Part 27 & Part 28 (#57-65)
-- Dijalankan di Supabase SQL Editor

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  57,
  'TIU',
  'Figural Serial',
  'sedang',
  'Perhatikan gambar pola serial 4 bingkai berurutan dan tentukan gambar ke-(5)!

![Gambar Soal Nomor 57](gambar/part27_soal_57.png)

* **Pola yang Diketahui:**
  * Kotak persegi bagian kiri-atas (terdiri atas 4 elemen: lingkaran putih, matriks titik-titik, bentuk setengah lingkaran, dan ring lingkaran) **bersifat tetap dan posisinya tidak berubah** dari gambar (1) sampai (4).
  * Objek-objek yang berada di sisi bawah dan sisi kanan saling bergeser secara siklik berlawanan arah jarum jam (*counter-clockwise*).
* Berdasarkan pola tersebut, gambar yang tepat untuk posisi ke-(5) adalah:',
  '/gambar/part27_soal_57.png',
  '{"A":"Opsi A","B":"Opsi B","C":"Opsi C","D":"Opsi D","E":"Opsi E"}'::jsonb,
  'A',
  '* **Jawaban:** **A**
* **Visual Pembahasan:**

![Visual Pembahasan Nomor 57](gambar/part27_pembahasan_57.png)

* **Penjelasan:**
  * Sisi kiri-atas tetap mempertahankan pola 4 elemen yang statis.
  * Pergeseran elemen tepi bawah dan tepi kanan 1 langkah berlawanan arah jarum jam menghasilkan susunan bentuk yang identik dengan opsi **A**.

---',
  '/gambar/part27_pembahasan_57.png',
  'published'
) ON CONFLICT DO NOTHING;

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  58,
  'TIU',
  'Figural Serial',
  'sedang',
  'Perhatikan serial gambar (1) hingga (5) untuk menentukan kelanjutan gambar (6)!

![Gambar Soal Nomor 58](gambar/part27_soal_58.png)

* Terdapat 4 objek di dalam setiap bingkai yang membentuk pola lompat/selang-seling antara suku ganjil (1, 3, 5) dan suku genap (2, 4, 6):
  * **Objek 1 (kiri atas):** Berputar berlawanan arah jarum jam sebesar $90^\circ$ dan perubahan warnanya bergantian (hitam/putih).
  * **Objek 2 (kanan atas):** Memiliki pola perubahan warna hitam/putih.
  * **Objek 3 (kiri bawah):** Mengikuti rotasi dan siklus perubahan warna.
  * **Objek 4 (kanan bawah):** Berputar searah jarum jam sebesar $90^\circ$ serta berubah warna pada setiap langkahnya.

Tentukan gambar ke-(6) yang tepat!',
  '/gambar/part27_soal_58.png',
  '{"A":"Opsi A","B":"Opsi B","C":"Opsi C","D":"Opsi D","E":"Opsi E"}'::jsonb,
  'E',
  '* **Jawaban:** **E**
* **Visual Pembahasan:**

![Visual Pembahasan Nomor 58](gambar/part27_pembahasan_58.png)

* **Penjelasan:**
  * Gambar (6) berpatokan dari pola suku genap (2) dan (4).
  * Objek kiri atas (lidah api putih) diputar $90^\circ$ berlawanan arah jarum jam menjadi menghadap ke bawah dengan warna putih.
  * Objek kanan atas tetap berwarna hitam.
  * Objek kiri bawah diputar searah jarum jam $90^\circ$ dan berubah menjadi hitam.
  * Objek kanan bawah berubah warna menjadi putih.
  * Kombinasi lengkap tersebut tepat berada pada opsi **E**.

---',
  '/gambar/part27_pembahasan_58.png',
  'published'
) ON CONFLICT DO NOTHING;

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  59,
  'TIU',
  'Figural Analogi',
  'sedang',
  'Perhatikan gambar analogi bentuk berikut:

![Gambar Soal Nomor 59](gambar/part27_soal_59.png)

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
  '{"A":"Opsi A","B":"Opsi B","C":"Opsi C","D":"Opsi D","E":"Opsi E"}'::jsonb,
  'C',
  '* **Jawaban:** **C**
* **Visual Pembahasan:**

![Visual Pembahasan Nomor 59](gambar/part27_pembahasan_59.png)

* **Penjelasan:**
  * Bunga mekar dicerminkan horizontal (kelopak dan daun berbalik arah).
  * Susunan tumpukan segitiga di atas kiri berkurang separuh bagian kanannya sehingga membentuk separuh deret segitiga.
  * Bentuk tangga di tengah kiri diputar $90^\circ$ searah jarum jam.
  * Bentuk wajik/berlian hitam di kiri bawah tetap tidak berubah.
  * Bentuk yang memenuhi keempat karakteristik ini adalah **C**.

---',
  '/gambar/part27_pembahasan_59.png',
  'published'
) ON CONFLICT DO NOTHING;

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  60,
  'TIU',
  'Figural Analogi',
  'sedang',
  'Perhatikan gambar analogi bingkai berikut:

![Gambar Soal Nomor 60](gambar/part27_soal_60.png)

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
  '{"A":"Opsi A","B":"Opsi B","C":"Opsi C","D":"Opsi D","E":"Opsi E"}'::jsonb,
  'B',
  '* **Jawaban:** **B**
* **Visual Pembahasan:**

![Visual Pembahasan Nomor 60](gambar/part27_pembahasan_60.png)

* **Penjelasan:**
  * Pohon kelapa tegak lurus dengan daun menghadap ke kiri dicerminkan.
  * Objek kotak luar pindah ke sudut kiri bawah sebagai kotak putih kosong.
  * Objek bercak di kanan bawah berubah warna menjadi hitam penuh.
  * Gambar yang tepat memenuhi aturan ini adalah opsi **B**.

---',
  '/gambar/part27_pembahasan_60.png',
  'published'
) ON CONFLICT DO NOTHING;

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  61,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Perhatikan kelima gambar pada opsi A, B, C, D, dan E! Manakah gambar yang **paling berbeda (tidak sekelompok)** dari yang lainnya?

![Gambar Soal Nomor 61](gambar/part27_soal_61.png)',
  '/gambar/part27_soal_61.png',
  '{"A":"Opsi A","B":"Opsi B","C":"Opsi C","D":"Opsi D","E":"Opsi E"}'::jsonb,
  'D',
  '* **Jawaban:** **D**
* **Visual Pembahasan:**

![Visual Pembahasan Nomor 61](gambar/part27_pembahasan_61.png)

* **Penjelasan:**
  * Semua opsi (A, B, C, E) memiliki variasi 4 sub-pola kuadran yang sama dan hanya mengalami translasi posisi atau rotasi.
  * Pada gambar **D**, terdapat satu bentuk objek kelopak/geometri yang secara intrinsik berbeda orientasi lengkungannya dan tidak dapat diperoleh dari rotasi atau refleksi elemen dasar gambar lainnya.

---',
  '/gambar/part27_pembahasan_61.png',
  'published'
) ON CONFLICT DO NOTHING;

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  62,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Perhatikan kelima gambar pada opsi A, B, C, D, dan E! Manakah gambar yang berbeda polanya dari yang lain?

![Gambar Soal Nomor 62](gambar/part27_soal_62.png)',
  '/gambar/part27_soal_62.png',
  '{"A":"Opsi A","B":"Opsi B","C":"Opsi C","D":"Opsi D","E":"Opsi E"}'::jsonb,
  'C',
  '* **Jawaban:** **C**
* **Visual Pembahasan:**

![Visual Pembahasan Nomor 62](gambar/part27_pembahasan_62.png)

* **Penjelasan:**
  * Objek gambar pada opsi A, B, D, dan E merupakan bangun yang kongruen dan identik satu sama lain melalui **rotasi 2D** pada bidang datar:
    * Opsi B didapat dengan memutar opsi A sebesar $90^\circ$.
    * Opsi D didapat dengan memutar sebesar $180^\circ$.
    * Opsi E didapat dengan memutar sebesar $270^\circ$.
  * Pada opsi **C**, panah lengkung dan orientasi elemen bintang luar tidak dapat dihasilkan dari rotasi biasa (memerlukan pencerminan/refleksi terbalik). Maka objek yang tidak sama adalah **C**.

---',
  '/gambar/part27_pembahasan_62.png',
  'published'
) ON CONFLICT DO NOTHING;

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  63,
  'TIU',
  'Figural Matriks 9 Kotak',
  'sulit',
  'Perhatikan matriks figural berukuran $3 \times 3$ berikut! Setiap kotak berisi 4 simbol unik yang terbagi menjadi kelompok-kelompok tertentu:

![Gambar Soal Nomor 63](gambar/part27_soal_63.png)

* Objek yang ditandai memiliki kelompok rotasi:
  * Kelompok objek yang sama pada sel tertentu mengalami rotasi bersama sebesar $90^\circ$ searah jarum jam.
  * Kelompok lainnya mengalami rotasi bersama sebesar $90^\circ$ berlawanan arah jarum jam.
* Tentukan gambar yang tepat untuk menggantikan tanda tanya (?) pada baris ke-3 kolom ke-2!',
  '/gambar/part27_soal_63.png',
  '{"A":"Opsi A","B":"Opsi B","C":"Opsi C","D":"Opsi D","E":"Opsi E"}'::jsonb,
  'C',
  '* **Jawaban:** **C**
* **Visual Pembahasan:**

![Visual Pembahasan Nomor 63](gambar/part27_pembahasan_63.png)

* **Penjelasan:**
  * Elemen pada baris ketiga kolom kedua merupakan rotasi dari kelompok bentuk kapsul/segitiga/jamur/organik.
  * Melalui rotasi $90^\circ$ berlawanan arah jarum jam dari bentuk pasangannya, posisi segitiga berada di pojok kiri atas, kapsul di pojok kiri bawah, dan jamur hitam berada di kanan bawah.
  * Gambar yang paling tepat adalah **C**.

---',
  '/gambar/part27_pembahasan_63.png',
  'published'
) ON CONFLICT DO NOTHING;

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  64,
  'TIU',
  'Figural Matriks 9 Kotak',
  'sulit',
  'Perhatikan pola baris demi baris pada matriks $3 \times 3$:

![Gambar Soal Nomor 64](gambar/part27_soal_64.png)

* **Aturan Gerak per Langkah Horisontal:**
  * Setiap objek di **kolom 1** bergeser 1 langkah ke **bawah** secara bersiklus.
  * Dua objek di **kolom 2** bergeser 1 langkah ke **bawah** (saling bertukar tempat).
  * Setiap objek di **kolom 3** bergeser 1 langkah ke **atas** secara bersiklus.

Terapkan aturan gerak tersebut dari baris ke-3 kolom ke-1 menuju baris ke-3 kolom ke-2 (?)!',
  '/gambar/part27_soal_64.png',
  '{"A":"Opsi A","B":"Opsi B","C":"Opsi C","D":"Opsi D","E":"Opsi E"}'::jsonb,
  'B',
  '* **Jawaban:** **B**
* **Visual Pembahasan:**

![Visual Pembahasan Nomor 64](gambar/part27_pembahasan_64.png)

* **Penjelasan:**
  * Menggeser elemen-elemen di kolom 1 ke bawah, menukar posisi elemen kolom 2 ke bawah, serta menaikkan elemen kolom 3 ke atas menghasilkan konfigurasi gambar persis pada opsi **B**.

---',
  '/gambar/part27_pembahasan_64.png',
  'published'
) ON CONFLICT DO NOTHING;

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  65,
  'TIU',
  'Figural Matriks 9 Kotak',
  'sulit',
  'Perhatikan matriks $3 \times 3$ yang memuat ornamen busur lingkaran berpusat:

![Gambar Soal Nomor 65](gambar/part27_soal_65.png)

* **Aturan Gerak per Baris:**
  * Busur lingkaran konsentris di area tertentu berputar sebesar $90^\circ$ searah jarum jam (*clockwise*).
  * Busur lingkaran di area sudut lainnya berputar sebesar $90^\circ$ berlawanan arah jarum jam (*counter-clockwise*).
  * Simbol tanda silang ($X$) dan segitiga kecil di sudut tetap berada pada posisi dasarnya.

Tentukan gambar yang tepat untuk mengisi posisi tanda tanya (?) pada baris ke-3 kolom ke-2!',
  '/gambar/part27_soal_65.png',
  '{"A":"Opsi A","B":"Opsi B","C":"Opsi C","D":"Opsi D","E":"Opsi E"}'::jsonb,
  'D',
  '* **Jawaban:** **D**
* **Visual Pembahasan:**

![Visual Pembahasan Nomor 65](gambar/part27_pembahasan_65.png)

* **Penjelasan:**
  * Melakukan rotasi sebesar $90^\circ$ searah jarum jam pada busur lingkaran bertingkat di kanan atas serta rotasi $90^\circ$ berlawanan arah jarum jam pada busur lingkaran di kiri bawah menghasilkan bukaan celah lingkaran yang menghadap ke bawah dan ke kanan.
  * Konfigurasi yang tepat sesuai kunci pembahasan adalah opsi **D**.',
  '/gambar/part27_pembahasan_65.png',
  'published'
) ON CONFLICT DO NOTHING;

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  57,
  'TIU',
  'Figural Serial',
  'sedang',
  'Perhatikan pola serial 5 bingkai berurutan dan tentukan gambar ke-(3)!

![Gambar Soal Nomor 57](gambar/part28_soal_57.png)',
  '/gambar/part28_soal_57.png',
  '{"A":"Opsi A","B":"Opsi B","C":"Opsi C","D":"Opsi D","E":"Opsi E"}'::jsonb,
  'E',
  '* **Jawaban:** **E**
* **Visual Pembahasan Beranotasi:**

![Visual Pembahasan Nomor 57](gambar/part28_pembahasan_57.png)

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
  * Konfigurasi yang memenuhi keempat kriteria tersebut adalah **Opsi E**.

---',
  '/gambar/part28_pembahasan_57.png',
  'published'
) ON CONFLICT DO NOTHING;

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  58,
  'TIU',
  'Figural Serial',
  'sedang',
  'Perhatikan serial gambar (1) hingga (4) untuk menentukan kelanjutan gambar ke-(5)!

![Gambar Soal Nomor 58](gambar/part28_soal_58.png)',
  '/gambar/part28_soal_58.png',
  '{"A":"Opsi A","B":"Opsi B","C":"Opsi C","D":"Opsi D","E":"Opsi E"}'::jsonb,
  'D',
  '* **Jawaban:** **D**
* **Visual Pembahasan Beranotasi:**

![Visual Pembahasan Nomor 58](gambar/part28_pembahasan_58.png)

* **Analisis Pola Transformasi:**
  Setiap bingkai terbagi menjadi 4 kuadran dengan aturan gerak masing-masing:
  1. **Kuadran Kiri Atas (Tanda Merah):** Objek berputar sebesar $90^\circ$ **searah jarum jam** (*clockwise*).
  2. **Kuadran Kiri Bawah (Tanda Biru):** Objek berputar sebesar $90^\circ$ **berlawanan arah jarum jam** (*counter-clockwise*).
  3. **Kuadran Kanan Atas (Tanda Hijau):** Objek berputar sebesar $90^\circ$ **searah jarum jam** (*clockwise*).
  4. **Kuadran Kanan Bawah (Tanda Kuning):** Objek berubah bentuk setiap **2 gambar sekali** (bingkai 1-2 bentuk A, bingkai 3-4 bentuk B, maka bingkai 5 kembali berubah).
  * Dengan menerapkan perputaran dan perubahan pada gambar (4) menuju gambar (5), diperoleh susunan yang tepat pada **Opsi D**.

---',
  '/gambar/part28_pembahasan_58.png',
  'published'
) ON CONFLICT DO NOTHING;

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  59,
  'TIU',
  'Figural Analogi',
  'sedang',
  'Perhatikan gambar analogi berikut:

![Gambar Soal Nomor 59](gambar/part28_soal_59.png)

Diberikan analogi:
$$\text{Gambar (1)} : \text{Gambar (2)} = \text{Gambar (3)} : \text{Gambar (4)}$$',
  '/gambar/part28_soal_59.png',
  '{"A":"Opsi A","B":"Opsi B","C":"Opsi C","D":"Opsi D","E":"Opsi E"}'::jsonb,
  'A',
  '* **Jawaban:** **A**

![Gambar Pembahasan Nomor 59](gambar/part28_pembahasan_59.png)

* **Analisis Pola Transformasi:**
  * **Kaidah Analogi:** Pola transformasi dari Gambar (1) ke Gambar (2) sama dengan pola transformasi dari Gambar (3) ke Gambar (4).
  * **Analisis Gambar (1) ke Gambar (2):**
    * Gambar (1) berputar sebesar $90^\circ$ **berlawanan arah jarum jam** (*counter-clockwise*) sehingga menghasilkan Gambar (2).
  * **Penerapan pada Gambar (3) ke Gambar (4):**
    * Gambar (3) jika diputar sebesar $90^\circ$ berlawanan arah jarum jam harus menghasilkan bentuk yang ada pada Gambar (4).
    * Sebaliknya, untuk menemukan Gambar (3) dari Gambar (4), kita memutar Gambar (4) sebesar $90^\circ$ **searah jarum jam** (*clockwise*).
  * Hasil putaran tersebut secara tepat dan presisi membentuk konfigurasi pada **Opsi A**.

---',
  '/gambar/part28_pembahasan_59.png',
  'published'
) ON CONFLICT DO NOTHING;

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  60,
  'TIU',
  'Figural Analogi',
  'sedang',
  'Perhatikan gambar berikut!

![Gambar Soal Nomor 60](gambar/part28_soal_60.png)

Diberikan hubungan analogi bangun datar:
\text{Gambar (1)} : \text{Gambar (2)} = \text{Gambar (3)} : \text{Gambar (4)}',
  '/gambar/part28_soal_60.png',
  '{"A":"Opsi A","B":"Opsi B","C":"Opsi C","D":"Opsi D","E":"Opsi E"}'::jsonb,
  'E',
  '* **Jawaban:** **E**

![Gambar Pembahasan Nomor 60](gambar/part28_pembahasan_60.png)

* **Analisis Pola Transformasi:**
  * **Kaidah Analogi:** Pola perubahan dari Gambar (1) ke Gambar (2) sama persis dengan pola transformasi dari Gambar (3) ke Gambar (4).
  * **Analisis Gambar (3) ke Gambar (4):**
    1. Bangun utama pada Gambar (3) diputar sebesar $90^\circ$ **berlawanan arah jarum jam** (*counter-clockwise*).
    2. Objek kecil berwarna hitam (di luar bingkai utama yang dilingkari warna merah) **berubah warna menjadi putih** dan posisinya ikut berputar bersama orientasi bangun sehingga menghasilkan Gambar (4).
  * **Penerapan pada Gambar (1) ke Gambar (2):**
    1. Gambar (1) memiliki bingkai kotak miring dengan ornamen di dalamnya serta sebuah kotak hitam kecil di sisi kanan luar.
    2. Putar Gambar (1) sebesar $90^\circ$ berlawanan arah jarum jam: kotak kecil yang semula di sebelah kanan akan berpindah ke posisi atas.
    3. Ubah warna kotak kecil hitam tersebut menjadi **putih**.
  * Konfigurasi yang terbentuk dengan tepat adalah **Opsi E**.

---',
  '/gambar/part28_pembahasan_60.png',
  'published'
) ON CONFLICT DO NOTHING;

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  61,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Carilah gambar yang berbeda dari kelompok gambar berikut!

![Gambar Soal Nomor 61](gambar/part28_soal_61.png)',
  '/gambar/part28_soal_61.png',
  '{"A":"Opsi A","B":"Opsi B","C":"Opsi C","D":"Opsi D","E":"Opsi E"}'::jsonb,
  'E',
  '* **Jawaban:** **E**

![Gambar Pembahasan Nomor 61](gambar/part28_pembahasan_61.png)

* **Analisis Pola Transformasi:**
  * Perhatikan karakteristik jumlah cabang atau helai pada objek bagian tengah dan objek luar (yang dilingkari warna merah):
    * **Gambar A:** Objek tengah memiliki 4 cabang, objek luar memiliki 5 cabang.
    * **Gambar B:** Objek tengah memiliki 4 cabang, objek luar memiliki 5 cabang.
    * **Gambar C:** Objek tengah memiliki 4 cabang, objek luar memiliki 5 cabang.
    * **Gambar D:** Objek tengah memiliki 4 cabang, objek luar memiliki 5 cabang.
    * **Gambar E:** Objek tengah memiliki **3 cabang**, sedangkan objek luar memiliki **6 cabang**.
  * Karena seluruh opsi A, B, C, dan D konsisten dengan pola $4 \text{ cabang (tengah)} : 5 \text{ cabang (luar)}$, maka **Gambar E** merupakan gambar yang paling berbeda (tidak mengikuti pola kelompok).

---',
  '/gambar/part28_pembahasan_61.png',
  'published'
) ON CONFLICT DO NOTHING;

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  62,
  'TIU',
  'Figural Ketaksamaan',
  'sedang',
  'Carilah gambar yang berbeda di antara pilihan gambar berikut!

![Gambar Soal Nomor 62](gambar/part28_soal_62.png)',
  '/gambar/part28_soal_62.png',
  '{"A":"Opsi A","B":"Opsi B","C":"Opsi C","D":"Opsi D","E":"Opsi E"}'::jsonb,
  'D',
  '* **Jawaban:** **D**

![Gambar Pembahasan Nomor 62](gambar/part28_pembahasan_62.png)

* **Analisis Pola Transformasi:**
  * Perhatikan bentuk dan orientasi kurva/kelopak baling-baling pada setiap gambar:
    * Pada gambar A, B, C, dan E, semua elemen baling-baling/kelopak dapat saling berimpit bila diputar (memiliki orientasi rotasi dan lekukan yang kongruen).
    * Pada **Gambar D**, elemen kelopak yang ditandai dengan lingkaran merah memiliki bentuk kurva/arah lengkungan yang terbalik (refleksi/cermin), bukan hasil rotasi bidang datar.
  * Oleh karena itu, objek yang tidak sesuai dengan pola rotasi kelompoknya adalah **Gambar D**.

---',
  '/gambar/part28_pembahasan_62.png',
  'published'
) ON CONFLICT DO NOTHING;

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  63,
  'TIU',
  'Figural Matriks 9 Kotak',
  'sulit',
  'Tentukan gambar yang tepat untuk mengisi kotak kosong bertanda tanya (?) pada matriks 3x3 berikut!

![Gambar Soal Nomor 63](gambar/part28_soal_63.png)',
  '/gambar/part28_soal_63.png',
  '{"A":"Opsi A","B":"Opsi B","C":"Opsi C","D":"Opsi D","E":"Opsi E"}'::jsonb,
  'C',
  '* **Jawaban:** **C**

![Gambar Pembahasan Nomor 63](gambar/part28_pembahasan_63.png)

* **Analisis Pola Transformasi:**
  * Analisis pergerakan setiap elemen secara horizontal (per baris dari kiri ke kanan):
    1. **Elemen Pusat (Bintang Tengah):** Posisinya tetap dan tidak mengalami perubahan apapun di setiap kotak.
    2. **Elemen Merah (Bintang di Sudut Luar):** Bergeser mengelilingi bingkai kotak sejauh 1 sudut secara **berlawanan arah jarum jam** (*counter-clockwise*).
    3. **Elemen Biru (Panah Lengkung):** Bergeser sudut demi sudut **berlawanan arah jarum jam** (*counter-clockwise*) sekaligus mengalami rotasi sebesar $90^\circ$ berlawanan arah jarum jam di setiap langkah.
  * **Penerapan pada Baris Ketiga:**
    * Kotak ke-1: Bintang luar di sudut tertentu, panah lengkung menghadap posisi awal.
    * Kotak ke-2: Bintang luar bergeser satu sudut berlawanan jarum jam; panah bergeser dan berputar $90^\circ$.
    * Kotak ke-3 (Jawaban): Bintang luar bergeser lagi 1 sudut berlawanan arah jarum jam, dan panah biru bergeser ke sudut berikutnya serta berputar $90^\circ$.
  * Susunan yang dihasilkan sangat tepat diwakili oleh **Opsi C**.

---',
  '/gambar/part28_pembahasan_63.png',
  'published'
) ON CONFLICT DO NOTHING;

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  64,
  'TIU',
  'Figural Matriks 9 Kotak',
  'sulit',
  'Tentukan gambar yang tepat untuk melengkapi kotak matriks 3x3 berikut!

![Gambar Soal Nomor 64](gambar/part28_soal_64.png)',
  '/gambar/part28_soal_64.png',
  '{"A":"Opsi A","B":"Opsi B","C":"Opsi C","D":"Opsi D","E":"Opsi E"}'::jsonb,
  'B',
  '* **Jawaban:** **B**

![Gambar Pembahasan Nomor 64](gambar/part28_pembahasan_64.png)

* **Analisis Pola Transformasi:**
  * Analisis pergerakan elemen per baris (horizontal dari kiri ke kanan):
    1. **Siklus Warna Objek (Merah, Kuning, Hijau, Biru, Oranye):**
       * Setiap titik/elemen warna mengalami pergeseran teratur mengelilingi posisi-posisi bingkai sebesar 1 langkah **berlawanan arah jarum jam** (*counter-clockwise*).
    2. **Elemen Garis/Kotak Vertikal Bagian Dalam:**
       * Garis vertikal di bagian tengah berpindah posisi secara konsisten antar kolom.
  * Dengan melanjutkan pola pergeseran warna satu langkah berikutnya pada baris ketiga, konfigurasi posisi titik-titik warna dan garis vertikal yang tepat adalah **Opsi B**.

---',
  '/gambar/part28_pembahasan_64.png',
  'published'
) ON CONFLICT DO NOTHING;

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  65,
  'TIU',
  'Figural Matriks 9 Kotak',
  'sulit',
  'Tentukan gambar yang tepat untuk mengisi kotak kosong pada matriks 3x3 berikut!

![Gambar Soal Nomor 65](gambar/part28_soal_65.png)',
  '/gambar/part28_soal_65.png',
  '{"A":"Opsi A","B":"Opsi B","C":"Opsi C","D":"Opsi D","E":"Opsi E"}'::jsonb,
  'A',
  '* **Jawaban:** **A**

![Gambar Pembahasan Nomor 65](gambar/part28_pembahasan_65.png)

* **Analisis Pola Transformasi:**
  * Analisis pergerakan elemen matriks secara horizontal (per baris dari kiri ke kanan):
    1. **Objek Merah (Segitiga / Garis Diagonal Sudut):**
       * Mengalami pergeseran sudut mengelilingi bingkai **searah jarum jam** (*clockwise*) dan berotasi sebesar $90^\circ$.
    2. **Objek Biru (Segitiga / Garis Arsiran Diagonal Sudut):**
       * Mengalami pergeseran sudut mengelilingi bingkai **searah jarum jam** (*clockwise*) dan berotasi sebesar $90^\circ$.
  * **Penerapan pada Baris Ketiga Menuju Kotak Kosong:**
    * Objek merah bergeser ke sudut berikutnya dan berputar $90^\circ$.
    * Objek biru bergeser ke sudut berikutnya dan berputar $90^\circ$.
  * Hasil kombinasi posisi dan orientasi arsiran segitiga diagonal tersebut secara akurat ditunjukkan oleh **Opsi A**.',
  '/gambar/part28_pembahasan_65.png',
  'published'
) ON CONFLICT DO NOTHING;

