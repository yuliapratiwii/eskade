--
-- Migration 021: Standardize All Numerik & Deret Questions Like Part 27 and 28
--
BEGIN;

UPDATE questions SET soal = 'Hasil dari operasi hitung berikut adalah:

$$
\frac{5}{8} + 3 - 3\ \frac{1}{4} = \dots
$$', opsi = '{"A":"0,375","B":"0,750","C":"2,000","D":"4,000","E":"4,250"}'::jsonb, pembahasan = '* **Langkah Penyelesaian:**

  $$\frac{5}{8} + 3 - 3\ \frac{1}{4} = 0{,}625 + 3 - 3{,}25$$

  $$= 0{,}375$$

Jawaban: A', gambar_url = NULL WHERE id = '7992b1d2-bed3-4531-aaed-042ba3ca4ab0';
UPDATE questions SET soal = 'Hasil dari operasi hitung berikut adalah:

$$
125\% + 1\ \frac{3}{4} - 0{,}5 = \dots
$$', opsi = '{"A":"$\\frac{9}{4}$","B":"$\\frac{5}{2}$","C":"$\\frac{11}{4}$","D":"$\\frac{7}{2}$","E":"$\\frac{13}{4}$"}'::jsonb, pembahasan = '* **Langkah Penyelesaian:**

  $$125\% + 1\ \frac{3}{4} - 0{,}5 = \frac{125}{100} + \frac{7}{4} - \frac{5}{10}$$

  $$= \frac{5}{4} + \frac{7}{4} - \frac{1}{2}$$

  $$= \frac{12}{4} - \frac{1}{2}$$

  $$= 3 - \frac{1}{2} = \frac{5}{2}$$

Jawaban: B', gambar_url = NULL WHERE id = 'a4498280-98b1-46e8-8192-ae2638b48c91';
UPDATE questions SET soal = 'Hasil dari operasi hitung berikut adalah:

$$
\frac{2}{5} - 3\ \frac{1}{2} \div \frac{5}{2} = \dots
$$', opsi = '{"A":"$-1{,}24$","B":"$-1{,}00$","C":"$-0{,}85$","D":"$1{,}00$","E":"$1{,}24$"}'::jsonb, pembahasan = '* **Langkah Penyelesaian:**

  $$\frac{2}{5} - 3\ \frac{1}{2} \div \frac{5}{2} = \frac{2}{5} - \frac{7}{2} \times \frac{2}{5}$$

  $$= \frac{2}{5} - \frac{7}{5}$$

  $$= -\frac{5}{5} = -1$$

Jawaban: B', gambar_url = NULL WHERE id = '0ac5bd87-b651-4885-a1a1-0eeb89914f14';
UPDATE questions SET soal = 'Diketahui nilai $x = \frac{5}{4}$ dan $y = -4$.

![gambar](/gambar/cf0575032775.png)

Manakah hubungan yang benar antara kuantitas $A$ dan $B$ berikut berdasarkan informasi yang diberikan…', opsi = '{"A":"$5A < 2B$","B":"$3A = 2B$","C":"$3A > 4B$","D":"$2A = B^2$","E":"$A < B$"}'::jsonb, pembahasan = '* **Langkah Penyelesaian:**

  * **Hitung nilai $A$:**
    $$A = -2y - x = -2(-4) - \left(\frac{5}{4}\right)$$
    $$= 8 - \frac{5}{4} = \frac{32}{4} - \frac{5}{4} = \frac{27}{4} = 6{,}75$$

  * **Hitung nilai $B$:**
    $$B = 4x + 3y = 4\left(\frac{5}{4}\right) + 3(-4)$$
    $$= 5 - 12 = -7$$

  * **Uji Setiap Opsi Jawaban:**
    ![gambar](/gambar/8aa99b136208.png)

Jawaban: C', gambar_url = NULL WHERE id = 'aae0339c-f797-4d55-9063-c3ac1b81c4d0';
UPDATE questions SET soal = 'Tentukan bilangan selanjutnya pada deret berikut:

$$
24, \quad 25, \quad 28, \quad 33, \quad 40, \quad \dots
$$', opsi = '{"A":"42","B":"44","C":"45","D":"49","E":"50"}'::jsonb, pembahasan = '* **Langkah Penyelesaian:**

  ![gambar](/gambar/8bd6cd1ef008.png)

Jawaban: D', gambar_url = NULL WHERE id = 'fbf415b7-96ea-492f-bf78-0ff635833dd0';
UPDATE questions SET soal = 'Tentukan bilangan yang mengisi titik-titik pada deret berikut:

$$
\dots, \quad -9, \quad -3, \quad 9, \quad 21, \quad -63, \quad -45
$$', opsi = '{"A":"−2","B":"3","C":"4","D":"−5","E":"−4"}'::jsonb, pembahasan = '* **Langkah Penyelesaian:**

  ![gambar](/gambar/cb54f74d3cec.png)

Jawaban: B', gambar_url = NULL WHERE id = 'fbb99ae2-510f-4f67-aa5f-d102c3b4091d';
UPDATE questions SET soal = 'Tentukan bilangan selanjutnya pada deret berikut:

$$
9, \quad 36, \quad 26, \quad 104, \quad 84, \quad 336, \quad \dots
$$', opsi = '{"A":"384","B":"366","C":"345","D":"320","E":"306"}'::jsonb, pembahasan = '* **Langkah Penyelesaian:**

  ![gambar](/gambar/4d7b1672e76a.png)

Jawaban: E', gambar_url = NULL WHERE id = '4c604422-2dde-42b3-bbed-fc8c015c52dd';
UPDATE questions SET soal = 'Hasil dari operasi hitung berikut adalah:

$$
2\ \frac{\frac{1}{3}}{\frac{1}{6}} + \left(\frac{1}{2} - \left(-\frac{1}{4}\right)\right) \div \frac{3}{5} \times 2 = \dots
$$', opsi = '{"A":"5,5","B":"6","C":"6,5","D":"7,5","E":"7"}'::jsonb, pembahasan = '* **Langkah Penyelesaian:**

  $$2\ \frac{\frac{1}{3}}{\frac{1}{6}} + \left(\frac{1}{2} - \left(-\frac{1}{4}\right)\right) \div \frac{3}{5} \times 2 = 2 + \left(\frac{1}{3} \times \frac{6}{1}\right) + \left(\frac{1}{2} + \frac{1}{4}\right) \div \frac{3}{5} \times 2$$

  $$= 2 + 2 + \left(\frac{3}{4}\right) \div \frac{3}{5} \times 2$$

  $$= 4 + \left(\frac{3}{4} \times \frac{5}{3}\right) \times 2$$

  $$= 4 + \frac{5}{4} \times 2$$

  $$= 4 + 2{,}5$$

  $$= 6{,}5$$

Jawaban: C', gambar_url = NULL WHERE id = '090dbc30-4fbd-4166-afdb-a296a75db24e';
UPDATE questions SET soal = 'Hasil dari operasi hitung berikut adalah:

$$
\frac{5}{6} \times 1{,}2 - \frac{3}{5} \div \frac{9}{10} + 2 = \dots
$$', opsi = '{"A":"$2\\ \\frac{1}{3}$","B":"$2\\ \\frac{1}{2}$","C":"$3\\ \\frac{1}{3}$","D":"$3\\ \\frac{1}{2}$","E":"$4$"}'::jsonb, pembahasan = '* **Langkah Penyelesaian:**

  $$\frac{5}{6} \times 1{,}2 - \frac{3}{5} \div \frac{9}{10} + 2 = \frac{5}{6} \times \frac{12}{10} - \frac{3}{5} \times \frac{10}{9} + 2$$

  $$= 1 - \frac{2}{3} + 2$$

  $$= \frac{1}{3} + 2$$

  $$= \frac{7}{3}$$

  $$= 2\ \frac{1}{3}$$

Jawaban: A', gambar_url = NULL WHERE id = '5a748171-a340-4677-842c-f173bfb1fc42';
UPDATE questions SET soal = 'Hasil dari operasi hitung berikut adalah:

$$
\frac{3}{4} \times 1{,}2 + \frac{1}{5} \div \frac{2}{10} = \dots
$$', opsi = '{"A":"1,3","B":"1,5","C":"1,9","D":"2,0","E":"2,3"}'::jsonb, pembahasan = '* **Langkah Penyelesaian:**

  $$\frac{3}{4} \times 1{,}2 + \frac{1}{5} \div \frac{2}{10} = \frac{3}{4} \times \frac{12}{10} + \frac{1}{5} \div \frac{2}{10}$$

  $$= \frac{3}{4} \times \frac{12}{10} + \frac{1}{5} \times \frac{10}{2}$$

  $$= \frac{9}{10} + 1$$

  $$= \frac{9 + 10}{10} = \frac{19}{10} = 1{,}9$$

Jawaban: C', gambar_url = NULL WHERE id = '7308a11e-57c3-49ed-a38d-1eee043e5fd8';
UPDATE questions SET soal = 'Hasil dari operasi hitung berikut adalah:

$$
2 + \frac{3}{4} - \frac{1}{2} = \dots
$$', opsi = '{"A":"1,75","B":"2","C":"2,25","D":"2,5","E":"3,25"}'::jsonb, pembahasan = '* **Langkah Penyelesaian:**

  $$2 + \frac{3}{4} - \frac{1}{2} = 2 + 0{,}75 - 0{,}5$$

  $$= 2 + 0{,}25$$

  $$= 2{,}25$$

Jawaban: C', gambar_url = NULL WHERE id = '20e4533f-2f49-40eb-a1c3-706ad4410fa5';
UPDATE questions SET soal = 'Diketahui

![gambar](/gambar/6b4e08eedc55.png)

Tentukanlah hubungan antara $A$  dan $B$  yang benar...', opsi = '{"A":"$A > B$","B":"$A < B$","C":"$A = B$","D":"$2A = 3B$","E":"$3A = 2B$"}'::jsonb, pembahasan = 'A → −8 + 12 − 3 × 4 = −8 + 12 − 12 = −8

B → −5 + 18 − 2 × 3 = −5 + 18 − 6 = 7

Sehingga perbandingan A: B = −8: 7

Selanjutnya sesuaikan dengan tiap opsi

![gambar](/gambar/f3fae0902c13.png)

Jawaban: B', gambar_url = NULL WHERE id = '72a4e1c4-b64a-41e2-910b-cca0fd10f3c1';
UPDATE questions SET soal = 'Diketahui nilai $x=4$ dan $y=\frac{3}{2}$.

![gambar](/gambar/e3017087264c.png)

Manakah hubungan yang benar antara A dan B?', opsi = '{"A":"$A > B$","B":"$A < B$","C":"$A = B$","D":"$2A = B$","E":"$B = 2A$"}'::jsonb, pembahasan = 'Diketahui nilai $x=4$ dan $y=\frac{3}{2}$. 

Nilai A  

$3x-y=3\left(4\right)-\frac{3}{2}=12-\frac{3}{2}=\frac{24-3}{2}=\frac{21}{2}$  = 10,5

Nilai B  

$5x+2y=5\left(4\right)+2\left(\frac{3}{2}\right)$  = 20 + 3 = 23

Selanjutnya sesuaikan dengan tiap opsi

![gambar](/gambar/ed8f02608f11.png)

Jawaban: B', gambar_url = NULL WHERE id = '59239e46-0ecd-42ca-90d5-e943a4aef0e1';
UPDATE questions SET soal = 'Diketahui

![gambar](/gambar/9689a006f17b.png)

Manakah hubungan yang benar antara A dan B?', opsi = '{"A":"$A > B$","B":"$A < B$","C":"$A = B$","D":"$A = 2B$","E":"$2A = B$"}'::jsonb, pembahasan = 'Nilai A

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
UPDATE questions SET soal = 'Diketahui seorang pekerja mampu merakit 42 mainan dalam waktu 2,8 jam.

![gambar](/gambar/32a25d996723.png)

Tentukanlah hubungan antara $A$  dan $B$  yang benar...', opsi = '{"A":"$A = B$","B":"$A > B$","C":"$A < B$","D":"$2A = B$","E":"$B = 2A$"}'::jsonb, pembahasan = 'Diketahui seorang pekerja mampu merakit 42 mainan dalam waktu 2,8 jam = 2,8 × 60 = 168 menit

A → Jumlah mainan yang dihasilkan dalam waktu 336 menit

![gambar](/gambar/f7c310f8b4fa.png)

$\frac{42}{x}=\frac{168}{336}$  

$x=\frac{42\times \cancel{336}}{\cancel{168}}$

= 42 × 2

= 84

Banyak mainan yang dapat dirakit dalam waktu 336 menit adalah 84.

B → 84

Jadi, $A=B=84$

Jawaban: A', gambar_url = NULL WHERE id = '645ca643-c766-4792-b8c5-565fbe24cdfb';
UPDATE questions SET soal = 'Tentukan bilangan yang mengisi titik-titik pada deret berikut:

$$
\dots, \quad 8, \quad 16, \quad 19, \quad 38, \quad 41, \quad 82
$$', opsi = '{"A":"-4","B":"0","C":"2","D":"4","E":"5"}'::jsonb, pembahasan = '* **Langkah Penyelesaian:**

  ![gambar](/gambar/6071a3dd89a6.png)

Jawaban: E', gambar_url = NULL WHERE id = 'b870ed00-b859-4ab8-961b-cdf83a3da67a';
UPDATE questions SET soal = 'Tentukan bilangan yang mengisi titik-titik pada deret berikut:

$$
-1, \quad -4, \quad \dots, \quad -8, \quad -9, \quad -12, \quad -27
$$', opsi = '{"A":"-1","B":"-2","C":"-3","D":"-4","E":"-6"}'::jsonb, pembahasan = '* **Langkah Penyelesaian:**

  ![gambar](/gambar/29d3aefd3de8.png)

Jawaban: C', gambar_url = NULL WHERE id = '18d7e20c-3e03-4b54-b9ba-e209657e6ff9';
UPDATE questions SET soal = 'Tentukan bilangan yang mengisi titik-titik pada deret berikut:

$$
3, \quad 15, \quad 5, \quad 25, \quad 15, \quad 75, \quad \dots, \quad 325
$$', opsi = '{"A":"25","B":"45","C":"65","D":"125","E":"225"}'::jsonb, pembahasan = '* **Langkah Penyelesaian:**

  ![gambar](/gambar/e9fe08430e96.png)

Jawaban: C', gambar_url = NULL WHERE id = 'd354be47-f847-4c54-93d7-5c9263d0a04a';
UPDATE questions SET soal = 'Hasil dari operasi hitung berikut adalah:

$$
3\ \frac{3}{4} + 11\left(2\ \frac{2}{11}\right) - \frac{3}{4} - \frac{9}{\left(-\frac{1}{3}\right)} = \dots
$$', opsi = '{"A":"0","B":"27","C":"54","D":"-54","E":"24"}'::jsonb, pembahasan = '* **Langkah Penyelesaian:**

  $$3\ \frac{3}{4} + 11\left(2\ \frac{2}{11}\right) - \frac{3}{4} - \frac{9}{\left(-\frac{1}{3}\right)} = 3 + \cancel{\frac{3}{4}} + \cancel{11}\left(\frac{24}{\cancel{11}}\right) - \cancel{\frac{3}{4}} + 27$$

  $$= 3 + 24 + 27$$

  $$= 54$$

Jawaban: C', gambar_url = NULL WHERE id = '979c1bd9-61c2-45f2-8972-b2085a685d0c';
UPDATE questions SET soal = 'Hasil dari operasi hitung berikut adalah:

$$
180 \times \frac{7 \times 4}{36} \div \frac{5}{11} = \dots
$$', opsi = '{"A":"308","B":"230","C":"210","D":"140","E":"110"}'::jsonb, pembahasan = '* **Langkah Penyelesaian:**

  $$180 \times \frac{7 \times 4}{36} \div \frac{5}{11} = \cancel{180} \times \frac{7 \times 4}{\cancel{36}} \times \frac{11}{5}$$

  $$= \cancel{5} \times 7 \times 4 \times \frac{11}{\cancel{5}}$$

  $$= 7 \times 4 \times 11 = 308$$

Jawaban: A', gambar_url = NULL WHERE id = 'ffc0ed61-7b8d-421f-a732-9e7746fdc752';
UPDATE questions SET soal = 'Hasil dari operasi hitung berikut adalah:

$$
7\ \frac{1}{2} - 2 + \frac{1}{2} = \dots
$$', opsi = '{"A":"10","B":"9","C":"8","D":"7","E":"6"}'::jsonb, pembahasan = '* **Langkah Penyelesaian:**

  $$7\ \frac{1}{2} - 2 + \frac{1}{2} = \frac{15}{2} - 2 + \frac{1}{2}$$

  $$= \frac{16}{2} - 2$$

  $$= 8 - 2 = 6$$

Jawaban: E', gambar_url = NULL WHERE id = 'cc47b9c2-53d2-4783-ad5c-9ae99eaeeb5f';
UPDATE questions SET soal = 'Diketahui

![gambar](/gambar/870788202dfa.png)

Hubungan berikut yang tidak benar adalah …', opsi = '{"A":"$A < B$","B":"$2A < 3B$","C":"$A > 2B$","D":"$4A > 5B$","E":"$3A = 5B$"}'::jsonb, pembahasan = 'A   → 1,25 − 1,75 = −0,5

B  → 0,5 − 0,8 = −0,3

Selanjutnya sesuaikan dengan tiap opsi

![gambar](/gambar/23409cfed51f.png)

Jawaban: D', gambar_url = NULL WHERE id = 'af8cf017-31b9-4a19-9ecd-d823af16b24b';
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

Jawaban: B', gambar_url = NULL WHERE id = '941ea254-8bdf-4b30-b12a-3cbc2e2a59e3';
UPDATE questions SET soal = 'Tentukan bilangan selanjutnya pada deret berikut:

$$
-2, \quad -4, \quad -8, \quad -16, \quad -32, \quad \dots
$$', opsi = '{"A":"−36","B":"−40","C":"−48","D":"−54","E":"−64"}'::jsonb, pembahasan = '* **Langkah Penyelesaian:**

  ![gambar](/gambar/0a4ede9fa56a.png)

Jawaban: E', gambar_url = NULL WHERE id = '866400ac-d2aa-445a-b5b3-24335ede0ba0';
UPDATE questions SET soal = 'Tentukan bilangan yang mengisi titik-titik pada deret berikut:

$$
3, \quad 5, \quad 9, \quad 17, \quad \dots, \quad 65
$$', opsi = '{"A":"33","B":"34","C":"44","D":"51","E":"64"}'::jsonb, pembahasan = '* **Langkah Penyelesaian:**

  ![gambar](/gambar/5a6bd839e8ca.png)

Jawaban: A', gambar_url = NULL WHERE id = '8e4d4fd3-7be7-45bf-8945-65ae84713eb3';
UPDATE questions SET soal = 'Tentukan bilangan selanjutnya pada deret berikut:

$$
1, \quad 3, \quad \frac{11}{5}, \quad \frac{16}{14}, \quad \dots
$$', opsi = '{"A":"$\\frac{21}{41}$","B":"$\\frac{21}{32}$","C":"$\\frac{21}{28}$","D":"$\\frac{32}{21}$","E":"$\\frac{41}{21}$"}'::jsonb, pembahasan = '* **Langkah Penyelesaian:**

  ![gambar](/gambar/68c643ffd89e.png)

Jawaban: A', gambar_url = NULL WHERE id = 'b8b06a2e-f1d1-4d17-a67e-4552691bf8a9';

COMMIT;
