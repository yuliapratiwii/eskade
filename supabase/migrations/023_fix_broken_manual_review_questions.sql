--
-- Migration 023: Replace/Fix 9 Broken Questions from Manual Review (soal_perlu_tinjauan_manual.md)
-- Memperbaiki soal OCR rusak & format pecahan agar tampil rapi dengan LaTeX (\dfrac & $$...$$).
--
BEGIN;

UPDATE questions SET topik = 'Berhitung', soal = 'Hasil dari $3\ \dfrac{3}{4} \div 62{,}5\% - \dfrac{1}{2}$ adalah ....', opsi = '{"A":"5,25","B":"5,50","C":"6,75","D":"8,00","E":"8,25"}'::jsonb, kunci = 'B', pembahasan = '⚡ Trik Cepat: Ubah pecahan campuran dan persen ke bentuk pecahan biasa istimewa ($62{,}5\% = \dfrac{5}{8}$), lalu kerjakan pembagian sebelum pengurangan (KABATAKU).

* **Langkah Penyelesaian:**
  1. Ubah bentuk bilangan ke pecahan biasa:
$$3\ \frac{3}{4} = \frac{15}{4}, \qquad 62{,}5\% = \frac{62{,}5}{100} = \frac{5}{8}$$
  2. Hitung pembagian terlebih dahulu:
$$\frac{15}{4} \div \frac{5}{8} = \frac{15}{4} \times \frac{8}{5} = 3 \times 2 = 6$$
  3. Kurangkan dengan $\dfrac{1}{2}$:
$$6 - \frac{1}{2} = 6 - 0{,}5 = 5{,}50$$

Jadi, jawabannya adalah **B (5,50)**.' WHERE id = '937942b9-cd6f-4abe-86e0-ec5a756a4a06';

UPDATE questions SET topik = 'Berhitung', soal = 'Hasil dari $20 \div 4 + \dfrac{4}{5} \times 2\ \dfrac{1}{5}$ adalah ....', opsi = '{"A":"$6\\ \\dfrac{19}{25}$","B":"$6\\ \\dfrac{14}{25}$","C":"$5\\ \\dfrac{19}{25}$","D":"$7\\ \\dfrac{4}{25}$","E":"$6\\ \\dfrac{9}{25}$"}'::jsonb, kunci = 'A', pembahasan = '⚡ Trik Cepat: Kerjakan pembagian dan perkalian terlebih dahulu (KABATAKU), lalu jumlahkan hasilnya.

* **Langkah Penyelesaian:**
  1. Hitung pembagian dan perkalian secara terpisah:
$$20 \div 4 = 5$$
$$\frac{4}{5} \times 2\ \frac{1}{5} = \frac{4}{5} \times \frac{11}{5} = \frac{44}{25} = 1\ \frac{19}{25}$$
  2. Jumlahkan kedua hasil tersebut:
$$5 + 1\ \frac{19}{25} = 6\ \frac{19}{25}$$

Jadi, jawabannya adalah **A ($6\ \dfrac{19}{25}$)**.' WHERE id = 'e356239b-c415-49d5-a2f6-62dca6af668c';

UPDATE questions SET topik = 'Berhitung', soal = 'Hasil dari $\dfrac{2}{6} \times 12 - \dfrac{1}{5} \div 4 + \dfrac{1}{10}$ adalah ....', opsi = '{"A":"405","B":"40,5","C":"4,05","D":"0,405","E":"0,0405"}'::jsonb, kunci = 'C', pembahasan = '⚡ Trik Cepat: Dahulukan perkalian dan pembagian (KABATAKU), lalu samakan penyebut atau ubah ke desimal.

* **Langkah Penyelesaian:**
  1. Hitung perkalian dan pembagian terlebih dahulu:
$$\frac{2}{6} \times 12 = \frac{1}{3} \times 12 = 4$$
$$\frac{1}{5} \div 4 = \frac{1}{5} \times \frac{1}{4} = \frac{1}{20}$$
  2. Substitusikan kembali ke operasi hitung:
$$4 - \frac{1}{20} + \frac{1}{10} = \frac{80 - 1 + 2}{20} = \frac{81}{20} = 4{,}05$$

Jadi, jawabannya adalah **C (4,05)**.' WHERE id = 'b6e6e3c4-3d9f-402b-ad1e-2205a1eb4d83';

UPDATE questions SET topik = 'Berhitung', soal = 'Pabrik sepatu Langkah Jaya mampu memproduksi $180$ pasang sepatu dalam waktu $6$ jam. Jika $P$ adalah banyak sepatu yang dihasilkan dalam waktu $\dfrac{3}{4}$ jam dan $Q = 45$, maka hubungan kuantitas yang benar adalah ....', opsi = '{"A":"$P = Q$","B":"$P = 2Q$","C":"$2P = Q$","D":"$3P = 5Q$","E":"$5P = 3Q$"}'::jsonb, kunci = 'C', pembahasan = '⚡ Trik Cepat: Gunakan perbandingan senilai untuk mencari nilai $P$, lalu bandingkan dengan $Q$.

* **Langkah Penyelesaian:**
  1. Hitung laju produksi per jam:
$$\frac{180\text{ pasang}}{6\text{ jam}} = 30\text{ pasang/jam}$$
  2. Hitung nilai $P$ dalam waktu $\dfrac{3}{4}$ jam:
$$P = 30 \times \frac{3}{4} = \frac{90}{4} = 22{,}5$$
  3. Bandingkan $P$ dengan $Q = 45$:
$$2P = 2 \times 22{,}5 = 45 = Q$$

Jadi, jawabannya adalah **C ($2P = Q$)**.' WHERE id = '9babb941-a7f9-46aa-9619-f2ccb4f42b96';

UPDATE questions SET topik = 'Berhitung', soal = 'Hasil dari $\dfrac{3}{4} \times 6 - \dfrac{21}{25} \div 0{,}8$ adalah ....', opsi = '{"A":"3,35","B":"3,45","C":"3,25","D":"3,65","E":"3,55"}'::jsonb, kunci = 'B', pembahasan = '⚡ Trik Cepat: Kerjakan perkalian dan pembagian terlebih dahulu, ubah desimal $0{,}8$ menjadi pecahan $\dfrac{4}{5}$ agar mudah disederhanakan.

* **Langkah Penyelesaian:**
  1. Hitung bagian pertama:
$$\frac{3}{4} \times 6 = \frac{18}{4} = 4{,}5$$
  2. Hitung bagian kedua ($0{,}8 = \dfrac{4}{5}$):
$$\frac{21}{25} \div \frac{4}{5} = \frac{21}{25} \times \frac{5}{4} = \frac{21}{20} = 1{,}05$$
  3. Kurangkan kedua hasil:
$$4{,}5 - 1{,}05 = 3{,}45$$

Jadi, jawabannya adalah **B (3,45)**.' WHERE id = '43ddc44e-be53-492c-819e-8702a65ee9bd';

UPDATE questions SET topik = 'Soal Cerita', soal = 'Sebuah tim ditugaskan menyelesaikan pembuatan 240 kursi dalam waktu 60 hari dengan 20 orang pengrajin. Namun setelah bekerja selama 15 hari, 5 pengrajin harus pindah ke proyek lain dan tidak bisa melanjutkan. Jika sisanya tetap bekerja sampai akhir proyek, berapa hari tambahan yang dibutuhkan agar semua kursi selesai dikerjakan?', opsi = '{"A":"0 hari","B":"5 hari","C":"10 hari","D":"15 hari","E":"20 hari"}'::jsonb, kunci = 'D', pembahasan = '⚡ Trik Cepat: Gunakan perbandingan berbalik nilai pada sisa hari dan sisa pekerja ($\text{sisa hari} \times \text{pekerja awal} = \text{waktu baru} \times \text{pekerja sisa}$).

* **Langkah Penyelesaian:**
  1. Sisa waktu normal setelah bekerja 15 hari:
$$60 - 15 = 45\text{ hari (untuk } 20\text{ pengrajin)}$$
  2. Sisa pengrajin setelah 5 orang pindah:
$$20 - 5 = 15\text{ pengrajin}$$
  3. Misalkan waktu yang dibutuhkan oleh 15 pengrajin adalah $P$ hari (perbandingan berbalik nilai):
$$45 \times 20 = P \times 15$$
$$P = \frac{45 \times 20}{15} = 3 \times 20 = 60\text{ hari}$$
  4. Tambahan hari yang dibutuhkan:
$$60 - 45 = 15\text{ hari}$$

Jadi, jawabannya adalah **D (15 hari)**.' WHERE id = 'cd51987a-1ef8-4203-9062-23d192b5dcdf';

UPDATE questions SET topik = 'Soal Cerita', soal = 'Seorang pedagang menargetkan keuntungan $20\%$ dari penjualan suatu barang seharga Rp120.000 per unit (modal Rp100.000). Karena promo, ia memberikan potongan harga sehingga harga jualnya menjadi Rp115.000 per unit. Berapa selisih persentase keuntungan yang diharapkan dan yang diperoleh?', opsi = '{"A":"0%","B":"5%","C":"10%","D":"15%","E":"20%"}'::jsonb, kunci = 'B', pembahasan = '⚡ Trik Cepat: Hitung persentase keuntungan aktual terhadap modal ($\%\text{Untung} = \dfrac{\text{Untung}}{\text{Modal}} \times 100\%$), lalu kurangkan dari target $20\%$.

* **Langkah Penyelesaian:**
  1. Keuntungan aktual per unit saat promo:
$$\text{Untung} = 115.000 - 100.000 = \text{Rp}15.000$$
  2. Persentase keuntungan aktual:
$$\frac{15.000}{100.000} \times 100\% = 15\%$$
  3. Selisih persentase keuntungan:
$$20\% - 15\% = 5\%$$

Jadi, jawabannya adalah **B (5%)**.' WHERE id = '559c11df-59e1-41ff-9eaf-790098b99d8d';

UPDATE questions SET topik = 'Soal Cerita', soal = 'Suho bekerja di sebuah peternakan dan memberi makan ternak dengan memperhatikan jenis pakannya. Terdapat dua jenis pakan ternak: jenis A habis dalam 12 hari untuk memberi makan 8 ekor sapi, sedangkan jenis B habis dalam 15 hari untuk memberi makan 10 ekor sapi. Jika peternak ingin memberi makan 12 ekor sapi dengan pakan jenis A, berapa hari pakan tersebut akan habis?', opsi = '{"A":"5 hari","B":"8 hari","C":"11 hari","D":"14 hari","E":"17 hari"}'::jsonb, kunci = 'B', pembahasan = '⚡ Trik Cepat: Identifikasi jenis perbandingan: semakin banyak sapi, pakan semakin cepat habis (perbandingan berbalik nilai: $\text{sapi}_1 \times \text{hari}_1 = \text{sapi}_2 \times \text{hari}_2$).

* **Langkah Penyelesaian:**
  1. Gunakan data pakan jenis A ($8$ ekor sapi $\rightarrow 12$ hari) untuk $12$ ekor sapi ($x$ hari):
$$8 \times 12 = 12 \times x$$
$$96 = 12x$$
$$x = \frac{96}{12} = 8\text{ hari}$$

Jadi, pakan jenis A akan habis dalam **8 hari** (**B**).' WHERE id = '99f35e55-9d2e-4490-9432-50e361fc3b91';

UPDATE questions SET topik = 'Soal Cerita', soal = 'Seorang pedagang menjual barang dagangan seharga Rp80.000 dan ia memperoleh laba $25\%$ dari harga beli. Harga beli atau modal barang dagangan tersebut adalah ....', opsi = '{"A":"Rp20.000","B":"Rp64.000","C":"Rp100.000","D":"Rp96.000","E":"Rp60.000"}'::jsonb, kunci = 'B', pembahasan = '⚡ Trik Cepat: Harga jual dengan laba $25\%$ sama dengan $125\%$ dari harga beli, sehingga $\text{Modal} = \dfrac{100}{125} \times \text{Harga Jual} = \dfrac{4}{5} \times \text{Harga Jual}$.

* **Langkah Penyelesaian:**
  1. Hubungan harga jual dan harga beli:
$$\text{Harga Jual} = (100\% + 25\%) \times \text{Harga Beli} = 125\% \times \text{Harga Beli}$$
  2. Hitung harga beli (modal):
$$\text{Harga Beli} = \frac{100}{125} \times 80.000 = \frac{4}{5} \times 80.000 = \text{Rp}64.000$$

Jadi, jawabannya adalah **B (Rp64.000)**.' WHERE id = 'ab4cf455-d6b4-4ea3-a3a4-b21a398a5cf4';

COMMIT;
