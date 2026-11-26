--
-- Migration 020: Update All Math Formatting & Questions Cleanliness
-- Fixes: mixed fractions spacing, deret commas, nested fractions, and double images
--
BEGIN;

-- 1. Bersihkan double image jika gambar sudah ada di dalam teks soal untuk seluruh bank soal
UPDATE questions SET gambar_url = NULL WHERE gambar_url IS NOT NULL AND (soal LIKE '%![gambar%' OR soal LIKE '%<img%' OR soal LIKE '%' || gambar_url || '%');

UPDATE questions SET soal = 'Hitunglah nilai dari:

$$
5 + \left(2\ \frac{1}{4} - \frac{3}{8}\right) \times 16 = \dots
$$', opsi = '{"A":"30","B":"33","C":"35","D":"39","E":"41"}'::jsonb, pembahasan = '* **Langkah Penyelesaian:**

  $$
  5 + \left(2\ \frac{1}{4} - \frac{3}{8}\right) \times 16 = 5 + \left(\frac{9}{4} - \frac{3}{8}\right) \times 16
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
  $$', gambar_url = NULL WHERE id = '2f635dd7-ba4d-4d4e-a512-80c5bc73e214';
UPDATE questions SET soal = 'Hitunglah nilai dari:

$$
\left(1{,}25 + 2\ \frac{1}{5}\right) \times 6 - \left(\frac{3}{4} \times 8{,}4\right) = \dots
$$', opsi = '{"A":"14,4","B":"15,5","C":"20,4","D":"25,6","E":"30,3"}'::jsonb, pembahasan = '* **Langkah Penyelesaian:**
  Ubah pecahan campuran ke bentuk desimal ($2\ \frac{1}{5} = 2{,}2$):

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
  $$', gambar_url = NULL WHERE id = '960d1f0b-bee3-4ff2-b83a-f5b6a1c20ecf';
UPDATE questions SET soal = 'Hitunglah nilai dari:

$$
\frac{1}{3} \left(4{,}8 - 1\ \frac{1}{2}\right) + \left(2\ \frac{1}{4} \times 0{,}8\right) = \dots
$$', opsi = '{"A":"1,9","B":"2,1","C":"2,5","D":"2,9","E":"3,1"}'::jsonb, pembahasan = '* **Langkah Penyelesaian:**
  Ubah pecahan ke bentuk desimal ($1\ \frac{1}{2} = 1{,}5$ dan $2\ \frac{1}{4} = \frac{9}{4}$):

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
  $$', gambar_url = NULL WHERE id = '4b2c3612-2bd8-44c1-b249-643977bab631';
UPDATE questions SET soal = 'Hasil dari operasi hitung campuran berikut adalah:

$$
\frac{1}{4} \times 0{,}8 - \frac{3}{5} \div \frac{6}{5} + 1 = \dots
$$', opsi = '{"A":"$1\\ \\frac{2}{5}$","B":"$2\\ \\frac{3}{5}$","C":"$\\frac{7}{10}$","D":"$\\frac{9}{10}$","E":"$\\frac{3}{11}$"}'::jsonb, pembahasan = '* **Visual Pembahasan:**

* **Langkah Penyelesaian:**
  * Prioritaskan operasi perkalian dan pembagian terlebih dahulu:
    1. **Perkalian:**
       $$\frac{1}{4} \times 0{,}8 = \frac{1}{4} \times \frac{8}{10} = \frac{8}{40} = \frac{1}{5}$$
    2. **Pembagian:**
       $$\frac{3}{5} \div \frac{6}{5} = \frac{3}{5} \times \frac{5}{6} = \frac{15}{30} = \frac{1}{2}$$
  * Lanjutkan ke operasi pengurangan dan penjumlahan dengan menyamakan penyebut (KPK dari 5 dan 2 adalah 10):
    $$\frac{1}{5} - \frac{1}{2} + 1 = \frac{2}{10} - \frac{5}{10} + \frac{10}{10}$$
    $$= \frac{2 - 5 + 10}{10} = \mathbf{\frac{7}{10}}$$
  * Maka, hasil akhirnya adalah **$\frac{7}{10}$** (Opsi C).', gambar_url = NULL WHERE id = 'cbfc219a-3fd8-4830-ace6-437d646ee9c0';
UPDATE questions SET soal = 'Diketahui informasi kuantitas berikut:

| $A$ | $B$ |
| :---: | :---: |
| Bu Ijah memiliki persediaan kaos $3\ \frac{1}{2}$ kodi, kemudian terjual sebanyak 25 potong. | 9 potong |

Manakah hubungan yang benar antara $A$ dan $B$?', opsi = '{"A":"$\\frac{1}{5}A > B$","B":"$A < 3B$","C":"Hubungan $A$ dan $B$ tidak dapat ditentukan","D":"$A = 5B$","E":"$2A < B$"}'::jsonb, pembahasan = '* **Visual Pembahasan & Uji Opsi:**

* **Langkah Penyelesaian:**
  * Konversi satuan kodi ke potong ($1\text{ kodi} = 20\text{ potong}$):
    * Persediaan awal kaos Bu Ijah:
      $$3\ \frac{1}{2}\text{ kodi} = \frac{7}{2} \times 20 = 70\text{ potong}$$
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
  * Maka, hubungan yang tepat adalah **$A = 5B$** (Opsi D).', gambar_url = NULL WHERE id = '2dbc012b-7272-4d7f-a8db-ac4518537d14';
UPDATE questions SET soal = '$\frac{2}{5}-3\ \frac{1}{2}:\frac{5}{2}=...$', opsi = '{"A":"$-1,24$","B":"$-1,00$","C":"$-0,85$","D":"$1,00$","E":"$1,24$"}'::jsonb, pembahasan = '$\frac{2}{5}-3\ \frac{1}{2}:\frac{5}{2}=\frac{2}{5}-\frac{7}{2}\times\frac{2}{5}$

                               $=\frac{2}{5}-\frac{7}{5}$

                               $=-\frac{5}{5}$

                               $=-1$

Jawaban: B', gambar_url = NULL WHERE id = '0ac5bd87-b651-4885-a1a1-0eeb89914f14';
UPDATE questions SET soal = 'Hasil dari $2\ \frac{\frac{1}{3}}{\frac{1}{6}}+\left(\frac{1}{2}-\left(-\frac{1}{4}\right)\right)\div\frac{3}{5}\times2$  =...', opsi = '{"A":"5,5","B":"6","C":"6,5","D":"7,5","E":"7"}'::jsonb, pembahasan = '$2\ \frac{\frac{1}{3}}{\frac{1}{6}}+\left(\frac{1}{2}-\left(-\frac{1}{4}\right)\right)\div\frac{3}{5}\times2$  = 2 + $\left(\frac{1}{3}\times\frac{6}{1}\right)$  + $\left(\frac{1}{2}+\frac{1}{4}\right)\div\frac{3}{5}$  × 2

                = 2 + 2 + $\left(\frac{2+1}{4}\right)\div\frac{3}{5}$ × 2

                = 4 + $\left(\frac{3}{4}\times\frac{5}{3}\right)$  × 2

                = 4 + $\frac{5}{4}$  × 2

                = 4 + 2,5

                = 6,5

Jawaban: C', gambar_url = NULL WHERE id = '090dbc30-4fbd-4166-afdb-a296a75db24e';
UPDATE questions SET soal = '$\frac{5}{6}$  × 1,2 − $\frac{3}{5}$  ÷ $\frac{9}{10}$  + 2 = …', opsi = '{"A":"$2\\ \\frac{1}{3}$","B":"$2\\ \\frac{2}{3}$","C":"$2\\ \\frac{7}{9}$","D":"$3\\ \\frac{1}{3}$","E":"$3\\ \\frac{2}{3}$"}'::jsonb, pembahasan = '$\frac{5}{6}$  × 1,2 − $\frac{3}{5}$  ÷ $\frac{9}{10}$  + 2 =  $\frac{5}{6}$  × $\frac{12}{10}$  − $\frac{3}{5}$  × $\frac{10}{9}$  + 2

$=1-\frac{2}{3}+2$  

$=\frac{1}{3}+2$

$=\frac{7}{3}$

$=2\ \frac{1}{3}$

Jawaban: A', gambar_url = NULL WHERE id = '5a748171-a340-4677-842c-f173bfb1fc42';
UPDATE questions SET soal = 'Diketahui

![gambar](/gambar/9689a006f17b.png)

Manakah hubungan yang benar antara A dan B?', opsi = '{"A":"$2A>3B$","B":"$A=2B$","C":"Hubungan A dan B tidak dapat ditentukan","D":"$3A<4B$","E":"$4A=5B$"}'::jsonb, pembahasan = 'Nilai A

1 ton = 1000 kg 

Jumlah beras awal: $1\ \frac{1}{2}$ ton = 1500 kg 

Sisa beras: 1500 − 300 = 1200 kg

Nilai B  

500 kg

Perbandingan A: B = 1200: 500 

= 12:5

Selanjutnya sesuaikan dengan tiap opsi

![gambar](/gambar/e5e5f05e9c23.png)

Jawaban: A', gambar_url = NULL WHERE id = '0aa5523a-5c22-4752-9be0-8afbb5a0cbb2';
UPDATE questions SET soal = '$3\ \frac{3}{4}+11\left(2\ \frac{2}{11}\right)-\frac{3}{4}-\frac{9}{\left(-\frac{1}{3}\right)}$  =...', opsi = '{"A":"0","B":"27","C":"54","D":"-54","E":"24"}'::jsonb, pembahasan = '$3\ \frac{3}{4}+11\left(2\ \frac{2}{11}\right)-\frac{3}{4}-\frac{9}{\frac{1}{-3}}$

= $3+\cancel{\frac{3}{4}}+\cancel{11}\left(\frac{24}{\cancel{11}}\right)-\cancel{\frac{3}{4}}+27$

= 3 + 24 + 27

= 54

Jawaban: C', gambar_url = NULL WHERE id = '979c1bd9-61c2-45f2-8972-b2085a685d0c';
UPDATE questions SET soal = '$7\ \frac{1}{2}-2+\frac{1}{2}$  =...', opsi = '{"A":"10","B":"9","C":"8","D":"7","E":"6"}'::jsonb, pembahasan = '$7\ \frac{1}{2}-2+\frac{1}{2}$  = $\frac{15}{2}-2+\frac{1}{2}$  

= $\frac{16}{2}-2$  

= 8 − 2 

= 6

Jawaban: E', gambar_url = NULL WHERE id = 'cc47b9c2-53d2-4783-ad5c-9ae99eaeeb5f';
UPDATE questions SET soal = 'Diketahui $x=1\ \frac{1}{2}$ dan $y=\frac{3}{4}$

![gambar](/gambar/0c98454199af.png)

Tentukanlah hubungan antara P dan Q yang benar…', opsi = '{"A":"2P > 2Q","B":"P < 2Q","C":"P = Q","D":"2P > Q","E":"3P > 2Q"}'::jsonb, pembahasan = 'Diketahui $x=1\ \frac{1}{2}$ dan $y=\frac{3}{4}$

P → $-4x+2y=-4\left(1\ \frac{1}{2}\right)+2\left(\frac{3}{4}\right)$  

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

Jawaban: B', gambar_url = NULL WHERE id = '166d46a2-c2df-468c-8d75-cf61d40a44bf';
UPDATE questions SET soal = '$1, 3, \frac{11}{5},\frac{16}{14},....$', opsi = '{"A":"$\\frac{21}{41}$","B":"$\\frac{21}{32}$","C":"$\\frac{21}{28}$","D":"$\\frac{32}{21}$","E":"$\\frac{41}{21}$"}'::jsonb, pembahasan = '![gambar](/gambar/68c643ffd89e.png)

Jawaban: A', gambar_url = NULL WHERE id = 'b8b06a2e-f1d1-4d17-a67e-4552691bf8a9';

COMMIT;
