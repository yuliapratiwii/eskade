-- Migration 010: Update Pembahasan LaTeX & Clean Assets Part 28

UPDATE questions 
SET pembahasan = 'Ubah pecahan biasa menjadi bentuk desimal:
* $\frac{7}{8} = 0{,}875$
* $\frac{3}{5} = 0{,}6$
* $\frac{9}{10} = 0{,}9$

Sehingga operasi hitungnya menjadi:
$$\frac{7}{8} + 2{,}4 - \frac{3}{5} + 1{,}75 - \frac{9}{10} = 0{,}875 + 2{,}4 - 0{,}6 + 1{,}75 - 0{,}9 = 3{,}525$$

**Jawaban: B**',
    pembahasan_gambar = NULL
WHERE sumber IN ('part-28', 'Try Out - Part 28') AND nomor = 38;

UPDATE questions 
SET pembahasan = 'Selesaikan perkalian dan pembagian terlebih dahulu:
$$\frac{1}{4} \times 0{,}8 - \frac{3}{5} \div \frac{6}{5} + 1 = \frac{1}{4} \times \frac{8}{10} - \frac{3}{5} \times \frac{5}{6} + 1$$
$$= \frac{1}{5} - \frac{1}{2} + 1$$
$$= \frac{2 - 5}{10} + 1 = \frac{-3}{10} + \frac{10}{10} = \frac{7}{10}$$

**Jawaban: C**',
    pembahasan_gambar = NULL
WHERE sumber IN ('part-28', 'Try Out - Part 28') AND nomor = 39;

UPDATE questions 
SET pembahasan = 'Sederhanakan pembilang dan penyebut pada setiap suku:
$$\frac{0{,}8 \div 4}{1{,}6} \div \frac{0{,}9}{45} = \frac{0{,}2}{1{,}6} \times \frac{45}{0{,}9}$$
$$= \frac{2}{16} \times \frac{450}{9} = \frac{1}{8} \times 50 = 6{,}25$$

**Jawaban: D**',
    pembahasan_gambar = NULL
WHERE sumber IN ('part-28', 'Try Out - Part 28') AND nomor = 40;

UPDATE questions 
SET pembahasan = 'Diketahui $R = -3$.
* $X \to R + 6 \times 2 - 3 = (-3) + 6 \times 2 - 3 = (-3) + 12 - 3 = 6$
* $Y \to 4 \times 3 + R + 1 = 4 \times 3 + (-3) + 1 = 12 + (-3) + 1 = 10$

Perbandingan $X : Y = 6 : 10 = 3 : 5$ (sehingga dapat dimisalkan $X = 3$ dan $Y = 5$).

Mari kita uji coba ke masing-masing opsi:
| Opsi | Pengujian | Hasil | Keterangan |
| :---: | :---: | :---: | :---: |
| **A** | $3X > 2Y \implies 3(3) > 2(5)$ | $9 > 10$ | SALAH |
| **B** | $5X < 3Y \implies 5(3) < 3(5)$ | $15 < 15$ | SALAH |
| **C** | $5X = 3Y \implies 5(3) = 3(5)$ | $15 = 15$ | **BENAR** |
| **D** | $3X < Y \implies 3(3) < 5$ | $9 < 5$ | SALAH |
| **E** | $3X > 5Y \implies 3(3) > 5(5)$ | $9 > 25$ | SALAH |

**Jawaban: C**',
    pembahasan_gambar = '/gambar/part28_pembahasan_41.png'
WHERE sumber IN ('part-28', 'Try Out - Part 28') AND nomor = 41;

UPDATE questions 
SET pembahasan = 'Diketahui $x = \frac{3}{2}$ dan $y = -1$.
* $A = 2(2x - y) = 4x - 2y = 4\left(\frac{3}{2}\right) - 2(-1) = 6 + 2 = 8$
* $B = 2x + 3y = 2\left(\frac{3}{2}\right) + 3(-1) = 3 - 3 = 0$

Maka kita uji coba ke masing-masing opsi:
| Opsi | Pengujian | Hasil | Keterangan |
| :---: | :---: | :---: | :---: |
| **A** | $A < B$ | $8 < 0$ | SALAH |
| **B** | $A = 8B$ | $8 = 8(0)$ | SALAH |
| **C** | $A - 8 > B$ | $8 - 8 > 0 \implies 0 > 0$ | SALAH |
| **D** | $4A = B^2$ | $4(8) = (0)^2 \implies 32 = 0$ | SALAH |
| **E** | $A > 4B$ | $8 > 4(0) \implies 8 > 0$ | **BENAR** |

**Jawaban: E**',
    pembahasan_gambar = '/gambar/part28_pembahasan_42.png'
WHERE sumber IN ('part-28', 'Try Out - Part 28') AND nomor = 42;

UPDATE questions 
SET pembahasan = '* **Nilai A:**
  $1\text{ kodi} = 20\text{ potong}$
  $3\frac{1}{2}\text{ kodi} \times 20 = 70\text{ potong}$
  Persediaan kaos Bu Ijah $\to 70 - 25 = 45\text{ potong}$

* **Nilai B:**
  $9\text{ potong}$

Didapatkan perbandingan nilai:
$$A : B = 45 : 9 \implies A : B = 5 : 1$$
(Dapat dimisalkan $A = 5$ dan $B = 1$).

Maka kita uji coba ke masing-masing opsi:
| Opsi | Pengujian | Hasil | Keterangan |
| :---: | :---: | :---: | :---: |
| **A** | $\frac{1}{5}A > B \implies \frac{1}{5}(5) > 1$ | $1 > 1$ | SALAH |
| **B** | $A < 3B \implies 5 < 3(1)$ | $5 < 3$ | SALAH |
| **C** | $A + B < 6$ | $5 + 1 < 6 \implies 6 < 6$ | SALAH |
| **D** | $A = 5B \implies 5 = 5(1)$ | $5 = 5$ | **BENAR** |
| **E** | $2A < B \implies 2(5) < 1$ | $10 < 1$ | SALAH |

**Jawaban: D**',
    pembahasan_gambar = '/gambar/part28_pembahasan_43.png'
WHERE sumber IN ('part-28', 'Try Out - Part 28') AND nomor = 43;

UPDATE questions 
SET pembahasan = '* **Papan Reklame 1:**
  Panjang = $6\text{ m}$, Tinggi = $3\text{ m}$
  Luas $= 6 \times 3 = 18\text{ m}^2$

* **Papan Reklame 2:**
  Panjang = $9\text{ m}$, Tinggi = $4\text{ m}$
  Luas $= 9 \times 4 = 36\text{ m}^2$

Hubungan Luas Papan dan Kebutuhan Cat:
| Luas Papan | Cat |
| :---: | :---: |
| $18\text{ m}^2$ | $3\text{ liter}$ |
| $36\text{ m}^2$ | $x$ |

Untuk menyelesaikan soal tersebut dapat kita gunakan perbandingan senilai:
$$\frac{18}{36} = \frac{3}{x} \implies \frac{1}{2} = \frac{3}{x} \implies x = 6\text{ liter}$$

**Jawaban: A**',
    pembahasan_gambar = '/gambar/part28_pembahasan_45.png'
WHERE sumber IN ('part-28', 'Try Out - Part 28') AND nomor = 45;

UPDATE questions 
SET pembahasan = 'Tabel Kondisi:
| Sapi | Hari |
| :---: | :---: |
| $18$ | $17\text{ hari}$ |
| $18 + 6 = 24$ | $x$ |

Untuk menyelesaikan soal tersebut dapat kita gunakan perbandingan berbalik nilai (tak senilai).
$$\text{Trik Alfaiz aab} = \frac{\text{atas} \times \text{atas}}{\text{bawah}}$$
$$x = \frac{18 \times 17}{24} = \frac{3 \times 17}{4} = \frac{51}{4} = 12{,}75 \approx 13\text{ hari}$$

**Jawaban: D**',
    pembahasan_gambar = '/gambar/part28_pembahasan_46.png'
WHERE sumber IN ('part-28', 'Try Out - Part 28') AND nomor = 46;

UPDATE questions 
SET pembahasan = 'Metode **Al Faiz Batako** ($\text{Tenaga} \times \text{Waktu} = \text{Hasil}$):
* Target awal: $12\text{ orang} \times 30\text{ hari} = 360\text{ poin beban kerja}$
* Sudah dikerjakan: $12\text{ orang} \times 20\text{ hari} = 240\text{ poin}$
* Sisa beban kerja: $360 - 240 = 120\text{ poin}$

Setelah penambahan 6 pekerja, total pekerja menjadi $12 + 6 = 18\text{ orang}$:
$$18 \times x = 120 \implies x = \frac{120}{18} = 6{,}67 \approx 7\text{ hari}$$

Sehingga, total hari untuk menyelesaikan pencetakan 1.800 buku adalah:
$$\text{Total hari} = 20 + 7 = 27\text{ hari}$$

**Jawaban: B**',
    pembahasan_gambar = '/gambar/part28_pembahasan_48.png'
WHERE sumber IN ('part-28', 'Try Out - Part 28') AND nomor = 48;

UPDATE questions 
SET pembahasan = 'Diketahui:
| Kecepatan | Waktu |
| :---: | :---: |
| $36\text{ km/jam}$ | $5\text{ jam}$ |
| $x$ | $3\text{ jam}$ |

Menggunakan perbandingan tak senilai:
$$\text{Trik Alfaiz aab} = \frac{\text{atas} \times \text{atas}}{\text{bawah}}$$
$$x = \frac{36 \times 5}{3} \implies x = 60\text{ km/jam}$$

Tambahan kecepatan yang dibutuhkan:
$$\text{Tambahan kecepatan} = 60 - 36 = 24\text{ km/jam}$$

**Jawaban: C**',
    pembahasan_gambar = '/gambar/part28_pembahasan_49.png'
WHERE sumber IN ('part-28', 'Try Out - Part 28') AND nomor = 49;

UPDATE questions 
SET pembahasan = 'Perhatikan pola barisan deret:
$$\mathbf{-1},\ 1,\ 6,\ -6,\ -1,\ 1$$

Pola operasi selang-seling:
* Dari $-1$ ke $1$: dikali $(-1) \implies (-1) \times (-1) = 1$
* Dari $1$ ke $6$: ditambah $5 \implies 1 + 5 = 6$
* Dari $6$ ke $-6$: dikali $(-1) \implies 6 \times (-1) = -6$
* Dari $-6$ ke $-1$: ditambah $5 \implies (-6) + 5 = -1$
* Dari $-1$ ke $1$: dikali $(-1) \implies (-1) \times (-1) = 1$

Maka bilangan pertama yang hilang sebelum $1$ adalah **$-1$**.

**Jawaban: C**',
    pembahasan_gambar = '/gambar/part28_pembahasan_50.png'
WHERE sumber IN ('part-28', 'Try Out - Part 28') AND nomor = 50;

UPDATE questions 
SET pembahasan = 'Perhatikan pola barisan pembagian bertingkat:
$$240,\ 120,\ 40,\ \mathbf{10},\ 2,\ \frac{1}{3}$$

Pola operasi pembagian bertingkat berurutan $(\div 2, \div 3, \div 4, \div 5, \div 6)$:
* $240 \div 2 = 120$
* $120 \div 3 = 40$
* $40 \div 4 = \mathbf{10}$
* $10 \div 5 = 2$
* $2 \div 6 = \frac{2}{6} = \frac{1}{3}$

Maka bilangan yang hilang adalah **10**.

**Jawaban: C**',
    pembahasan_gambar = '/gambar/part28_pembahasan_51.png'
WHERE sumber IN ('part-28', 'Try Out - Part 28') AND nomor = 51;

UPDATE questions 
SET pembahasan = 'Perhatikan barisan deret berikut:
$$1,\ 7,\ 4,\ 28,\ 23,\ 161,\ \mathbf{154}$$

Pola operasi dua langkah: dikali $7$, kemudian dikurangi bilangan ganjil bertingkat $(-3, -5, -7)$:
* $1 \times 7 = 7$
* $7 - 3 = 4$
* $4 \times 7 = 28$
* $28 - 5 = 23$
* $23 \times 7 = 161$
* $161 - 7 = \mathbf{154}$

Maka bilangan berikutnya adalah **154**.

**Jawaban: E**',
    pembahasan_gambar = '/gambar/part28_pembahasan_52.png'
WHERE sumber IN ('part-28', 'Try Out - Part 28') AND nomor = 52;

UPDATE questions 
SET pembahasan = 'Informasi yang diberikan:
* Buku Matematika berada tepat di bawah IPA dan di atas buku Bahasa Indonesia.
* Buku IPA berada di bawah IPS.
* Buku Bahasa Indonesia berada di atas buku Bahasa Inggris yang berada di posisi kedua dari bawah.
* Buku PPKn berada di posisi paling bawah.

Susunan posisi buku dari atas ke bawah:
1. **IPS** (paling atas)
2. **IPA**
3. **Matematika**
4. **B. Indonesia**
5. **B. Inggris** (kedua dari bawah)
6. **PPKn** (paling bawah)

Maka urutan buku dari paling atas ke bawah adalah:
**IPS – IPA – Matematika – Bahasa Indonesia – Bahasa Inggris – PPKn**

**Jawaban: B**',
    pembahasan_gambar = NULL
WHERE sumber IN ('part-28', 'Try Out - Part 28') AND nomor = 53;

UPDATE questions 
SET pembahasan = 'Informasi yang diberikan:
* Delapan orang yaitu A, B, C, D, P, Q, R, dan S duduk dalam dua baris.
* P menempati kursi paling ujung kiri di baris depan.
* D duduk tepat di belakang P dan B duduk tepat di belakang Q.
* S berada tepat di sebelah kanan P dan di depan A.
* C duduk di antara S dan Q dengan Q berada di kursi paling ujung kanan pada baris depan.

Sehingga susunannya menjadi:
| Posisi | Kursi 1 (Kiri) | Kursi 2 | Kursi 3 | Kursi 4 (Kanan) |
| :---: | :---: | :---: | :---: | :---: |
| **Baris Depan** | P | S | C | Q |
| **Baris Belakang** | D | A | **R** | B |

Berdasarkan susunan tersebut, **R** duduk di baris belakang di antara A dan B, atau tepat di belakang C.

**Jawaban: C**',
    pembahasan_gambar = NULL
WHERE sumber IN ('part-28', 'Try Out - Part 28') AND nomor = 54;
