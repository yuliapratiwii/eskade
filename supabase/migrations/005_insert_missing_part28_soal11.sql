-- Migration 005: Insert missing question #11 for part-28 (TWK)
INSERT INTO questions (
  sumber,
  nomor,
  subtes,
  topik,
  level,
  soal,
  gambar_url,
  opsi,
  kunci,
  pembahasan,
  pembahasan_gambar,
  status
) VALUES (
  'part-28',
  11,
  'TWK',
  'Bhinneka Tunggal Ika',
  'sedang',
  'Konflik horizontal kerap muncul akibat perbedaan kepentingan dan persepsi antarkelompok dalam masyarakat. Upaya paling tepat untuk mencegah konflik horizontal agar tidak berkembang menjadi perpecahan sosial adalah ...',
  NULL,
  '{"A":"Menetapkan aturan umum yang berlaku sama bagi seluruh kelompok demi menjaga ketertiban.","B":"Mengarahkan kelompok yang berpotensi konflik agar menyesuaikan diri dengan norma yang berlaku.","C":"Mengarahkan ruang publik pada isu-isu konstruktif untuk meredam potensi gesekan sosial.","D":"Menjaga stabilitas lingkungan dengan mengendalikan perbedaan agar tidak memicu ketegangan.","E":"Membangun komunikasi dan kerja sama antarkelompok berdasarkan kesetaraan dan saling menghormati."}'::jsonb,
  'E',
  E'* **Penjelasan:**\n  Konflik horizontal tidak muncul semata-mata karena adanya perbedaan, melainkan karena perbedaan tersebut tidak dikelola secara adil, terbuka, dan inklusif. Pencegahan yang paling efektif harus menyentuh akar persoalan melalui komunikasi dan pembangunan kepercayaan antarkelompok.\n  * **Opsi E (Paling Tepat):** Menekankan komunikasi dan kerja sama yang berlandaskan kesetaraan dan saling menghormati, sehingga setiap kelompok merasa diakui, dihargai, dan potensi konflik dapat diredam secara berkelanjutan.\n  * **Opsi A:** Tampak adil secara formal, tetapi belum tentu menyelesaikan konflik jika perbedaan kepentingan yang mendasar tidak dibahas secara mendalam.\n  * **Opsi B:** Berfokus pada keteraturan, namun penyesuaian sepihak berisiko menimbulkan rasa ketidakadilan dan represi sosial.\n  * **Opsi C:** Terdengar positif dan menenangkan, namun hanya mengalihkan fokus tanpa menyelesaikan akar konflik.\n  * **Opsi D:** Menjaga stabilitas jangka pendek, namun pengendalian perbedaan tanpa dialog terbuka berpotensi memicu konflik laten di kemudian hari.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  status = EXCLUDED.status;
