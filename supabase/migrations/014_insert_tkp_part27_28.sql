--
-- Migration 014: Insert TKP Questions for Part 27 & Part 28 (Nomor 66 - 110)
-- Total: 90 butir soal TKP dengan skor numerik 1-5 tanpa gambar poin
--
BEGIN;

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  66,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Anda bertugas sebagai petugas layanan pengaduan di Dinas Perhubungan. Sejumlah warga melapor melalui media sosial bahwa lampu lalu lintas di persimpangan utama sering mati pada jam sibuk, menyebabkan kemacetan dan hampir terjadi kecelakaan. Laporan serupa sudah masuk beberapa kali, namun perbaikan belum terlihat. Apa tindakan Anda …',
  NULL,
  '{"A":"Menenangkan warga dengan menjelaskan bahwa laporan akan diteruskan ke bidang teknis dan meminta mereka bersabar menunggu proses perbaikan.","B":"Segera mengoordinasikan laporan tersebut ke tim teknis, memantau progres perbaikan, dan memberikan pembaruan informasi kepada warga.","C":"Mencatat laporan warga sebagai arsip pengaduan dan menunggu instruksi dari atasan sebelum bertindak lebih lanjut.","D":"Menyarankan warga melapor langsung ke kantor pusat Dinas Perhubungan agar keluhan lebih cepat ditangani.","E":"Menyampaikan permohonan maaf atas ketidaknyamanan dan menjelaskan bahwa perbaikan membutuhkan waktu karena keterbatasan teknis."}'::jsonb,
  '{"A":3,"B":5,"C":1,"D":2,"E":4}'::jsonb,
  'B',
  'Situasi ini menguji kemampuan Anda dalam menangani pengaduan masyarakat secara responsif, solutif, dan akuntabel. Sebagai petugas layanan pengaduan, Anda tidak cukup hanya menerima keluhan, tetapi juga perlu memastikan laporan ditindaklanjuti karena masalah lampu lalu lintas yang mati menyangkut kelancaran lalu lintas dan keselamatan pengguna jalan. Dalam pelayanan publik, kecepatan koordinasi dan kejelasan informasi sangat penting untuk menjaga kepercayaan masyarakat. Pilihan B paling tepat karena Anda segera mengoordinasikan laporan kepada tim teknis, memantau progres perbaikan, dan memberikan pembaruan informasi kepada warga. Langkah ini menunjukkan sikap proaktif, tanggung jawab, serta orientasi pada penyelesaian masalah, sehingga layak mendapat skor 5. Pilihan E mendapat skor 4 karena sudah menunjukkan empati melalui permohonan maaf dan memberikan penjelasan kepada warga. Namun, langkah ini belum menunjukkan tindakan nyata untuk memastikan masalah segera ditangani.Pilihan A bernilai 3 karena berusaha menenangkan warga dan meneruskan laporan, tetapi masih bersifat pasif karena hanya meminta warga menunggu tanpa memastikan tindak lanjut.Pilihan D mendapat skor 2 karena justru mengalihkan tanggung jawab kepada warga untuk melapor ke pihak lain, padahal laporan sudah diterima oleh unit Anda. Sementara itu, pilihan C menjadi yang terendah karena hanya mencatat laporan dan menunggu instruksi, sehingga kurang responsif terhadap masalah yang berulang dan berdampak pada keselamatan publik.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  67,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Anda bertugas sebagai petugas layanan akademik di sebuah perguruan tinggi negeri. Seorang mahasiswa datang dengan wajah cemas karena nilai salah satu mata kuliahnya belum muncul di sistem, padahal batas waktu pendaftaran beasiswa akan segera berakhir. Ia merasa khawatir tidak bisa melanjutkan proses pendaftaran jika nilai tersebut belum terinput. Setelah dicek, nilai memang belum divalidasi oleh dosen pengampu. Apa langkah terbaik yang Anda lakukan…',
  NULL,
  '{"A":"Menjelaskan bahwa proses input nilai sepenuhnya menjadi kewenangan dosen dan mahasiswa perlu menunggu.","B":"Meminta mahasiswa tersebut menghubungi dosen pengampu secara mandiri untuk mempercepat proses validasi nilai.","C":"Mengecek kelengkapan data nilai, menjelaskan posisi prosesnya, serta membantu mengoordinasikan tindak lanjut ke dosen atau bagian terkait.","D":"Menyarankan mahasiswa menunda pendaftaran beasiswa hingga nilai resmi muncul di sistem.","E":"Mengarahkan mahasiswa menyampaikan keluhan melalui layanan pengaduan akademik kampus."}'::jsonb,
  '{"A":2,"B":3,"C":5,"D":1,"E":4}'::jsonb,
  'C',
  'Pilihan terbaik adalah C karena petugas secara aktif mengecek kelengkapan data, memberikan penjelasan yang jelas mengenai posisi proses nilai, serta membantu mengoordinasikan tindak lanjut dengan dosen atau unit terkait. Tindakan ini menunjukkan sikap berorientasi pelayanan, komunikatif, dan bertanggung jawab dalam membantu mahasiswa mendapatkan kepastian layanan sehingga mendapat skor 5. Pilihan E juga cukup baik karena tetap memberikan saluran resmi bagi mahasiswa untuk menyampaikan keluhan sehingga masalah dapat tercatat secara formal. Namun, langkah ini kurang responsif karena tidak memberikan bantuan langsung terhadap kebutuhan mendesak mahasiswa sehingga mendapat skor 4. Pilihan B cukup tepat karena mendorong mahasiswa untuk berinisiatif menghubungi dosen pengampu. Akan tetapi, langkah ini cenderung melepaskan peran petugas layanan akademik sebagai fasilitator sehingga bantuan yang diberikan belum optimal dan mendapat skor 3. Pilihan A kurang tepat karena hanya menjelaskan batas kewenangan tanpa memberikan solusi atau upaya pendampingan, sehingga mahasiswa tetap berada dalam ketidakpastian dan mendapat skor 2. Pilihan D paling tidak tepat karena menyarankan penundaan pendaftaran beasiswa tanpa menawarkan alternatif solusi, yang berpotensi merugikan mahasiswa dan tidak mencerminkan orientasi pelayanan publik sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  68,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Anda bertugas sebagai petugas pengelola data di instansi pemerintah daerah. Suatu hari, seorang rekan kerja meminta Anda memberikan data pribadi warga (NIK dan alamat) dengan alasan untuk keperluan laporan cepat. Namun, permintaan tersebut belum disertai surat tugas atau persetujuan atasan. Apa langkah terbaik yang Anda lakukan…',
  NULL,
  '{"A":"Memberikan data tersebut karena masih satu instansi dan tujuannya untuk pekerjaan.","B":"Menolak permintaan tersebut secara tegas tanpa memberikan penjelasan.","C":"Menyarankan rekan kerja mengajukan permintaan resmi sesuai prosedur sebelum data diberikan.","D":"Memberikan sebagian data yang dianggap tidak terlalu sensitif agar pekerjaan tetap berjalan.","E":"Menunda pemberian data sambil menunggu instruksi lebih lanjut dari atasan."}'::jsonb,
  '{"A":1,"B":2,"C":5,"D":3,"E":4}'::jsonb,
  'C',
  'Pilihan terbaik adalah C karena menjaga keamanan data pribadi warga sekaligus tetap mendukung kelancaran pekerjaan dengan mematuhi prosedur resmi. Sikap ini mencerminkan nilai Akuntabel dan Profesional, sehingga mendapat skor 5. Pilihan E cukup baik karena berhati-hati dan tidak langsung memberikan data, namun kurang proaktif dalam memberikan solusi prosedural sehingga mendapat skor 4. Pilihan D kurang tepat karena tetap berisiko melanggar prinsip perlindungan data meskipun hanya sebagian sehingga mendapat skor 3. Pilihan B kurang baik karena menolak tanpa komunikasi yang baik sehingga berpotensi menimbulkan konflik kerja dan mendapat skor 2. Pilihan A paling tidak tepat karena mengabaikan etika dan keamanan data sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  69,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Anda bertugas sebagai admin layanan aplikasi internal. Seorang pegawai mengeluh karena akunnya tidak bisa digunakan untuk mengakses sistem, padahal tenggat pelaporan sangat dekat. Setelah dicek, kesalahan terjadi karena kelalaian pegawai tersebut sendiri saat memperbarui data. Apa langkah terbaik yang Anda lakukan…',
  NULL,
  '{"A":"Menolak membantu karena kesalahan bukan berasal dari sistem.","B":"Membantu memperbaiki akun sambil menjelaskan prosedur yang benar agar tidak terulang.","C":"Meminta pegawai tersebut mengajukan tiket layanan baru dan menunggu antrean.","D":"Melaporkan pegawai tersebut ke atasan karena kelalaiannya mengganggu sistem.","E":"Membiarkan akun diperbaiki nanti setelah tenggat pelaporan selesai."}'::jsonb,
  '{"A":1,"B":5,"C":4,"D":2,"E":3}'::jsonb,
  'B',
  'Pilihan terbaik adalah B karena tetap memberikan bantuan meskipun kesalahan berasal dari pengguna, sekaligus melakukan edukasi agar tidak terulang. Hal ini mencerminkan nilai Berorientasi Pelayanan dan Kompeten, sehingga mendapat skor 5. Pilihan C cukup baik karena sesuai prosedur, tetapi kurang responsif terhadap kondisi mendesak sehingga mendapat skor 4. Pilihan E kurang tepat karena menunda penyelesaian dan berpotensi menghambat kinerja pegawai sehingga mendapat skor 3. Pilihan D tidak tepat karena bersifat menghukum dan tidak solutif sehingga mendapat skor 2. Pilihan A paling tidak tepat karena tidak menunjukkan sikap pelayanan sama sekali sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  70,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Anda adalah ASN yang mengelola akun media sosial unit kerja. Anda menemukan komentar masyarakat yang provokatif dan menyudutkan instansi dengan informasi yang belum tentu benar. Komentar tersebut mulai memicu perdebatan antarwarganet. Apa langkah terbaik yang Anda lakukan?',
  NULL,
  '{"A":"Menghapus komentar tersebut agar tidak memperkeruh suasana.","B":"Membalas komentar dengan nada tegas untuk meluruskan kesalahan informasi.","C":"Memberikan klarifikasi resmi secara netral dan berbasis data tanpa memperkeruh perdebatan.","D":"Membiarkan komentar tersebut sebagai bentuk kebebasan berekspresi.","E":"Menonaktifkan kolom komentar sementara waktu."}'::jsonb,
  '{"A":3,"B":2,"C":5,"D":1,"E":4}'::jsonb,
  'C',
  'Pilihan C paling tepat karena menunjukkan inisiatif aktif dengan memverifikasi dokumen sekaligus berkoordinasi ke pihak berwenang agar masalah tidak berlarut. Ini mencerminkan pelayanan yang bertanggung jawab dan berorientasi solusi. D mendapat skor 4 karena realistis, tetapi tetap membuat warga menunggu tanpa kepastian tindakan. A berada di skor 3 karena memberi penjelasan, namun cenderung pasif. B hanya skor 2 karena prosedural dan tidak membantu secara langsung. E paling rendah karena melepaskan tanggung jawab dan berpotensi merusak kepercayaan publik.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  71,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Anda bertugas sebagai resepsionis di kantor pusat perusahaan. Seorang tamu datang tanpa janji temu dan meminta bertemu pimpinan dengan alasan mendesak. Jadwal pimpinan hari itu penuh. Apa langkah terbaik yang Anda lakukan?',
  NULL,
  '{"A":"Menyampaikan bahwa pimpinan tidak dapat ditemui tanpa janji temu dan meminta tamu datang kembali di lain waktu.","B":"Mengizinkan tamu menunggu di area resepsionis sambil berharap ada jadwal pimpinan yang kosong.","C":"Menyampaikan kondisi jadwal pimpinan dengan sopan, menggali keperluan tamu secara singkat, lalu menghubungi unit terkait untuk menindaklanjuti sesuai prosedur.","D":"Menjelaskan bahwa jadwal pimpinan penuh, menawarkan untuk menyampaikan pesan atau mengatur jadwal pertemuan di waktu lain.","E":"Meminta tamu menunggu sementara Anda mencoba menghubungi pimpinan meskipun jadwalnya sudah penuh."}'::jsonb,
  '{"A":2,"B":1,"C":5,"D":4,"E":3}'::jsonb,
  'C',
  'Pilihan terbaik adalah C karena resepsionis bersikap sopan, menjelaskan kondisi jadwal pimpinan secara transparan, serta secara aktif menggali keperluan tamu dan menindaklanjutinya melalui unit atau pihak yang berwenang. Tindakan ini menunjukkan kemampuan komunikasi yang baik, orientasi pelayanan, serta kepatuhan terhadap prosedur tanpa mengabaikan kebutuhan tamu, sehingga mendapat skor 5. Pilihan D juga merupakan tindakan yang cukup tepat karena resepsionis menyampaikan kondisi jadwal pimpinan dengan baik dan menawarkan alternatif berupa penyampaian pesan atau pengaturan jadwal ulang. Namun, langkah ini belum menunjukkan upaya untuk memahami tingkat urgensi kebutuhan tamu dan belum memastikan adanya tindak lanjut langsung, sehingga mendapat skor 4. Pilihan E cukup baik karena menunjukkan inisiatif untuk membantu tamu. Namun, tindakan ini berpotensi mengganggu pimpinan yang memiliki jadwal penuh dan kurang memperhatikan prosedur kerja yang berlaku, sehingga mendapat skor 3. Pilihan A kurang tepat karena resepsionis bersikap terlalu kaku dengan langsung menolak permintaan tamu tanpa menawarkan solusi lain. Hal ini dapat menimbulkan kesan kurang ramah dan tidak berorientasi pada pelayanan, sehingga mendapat skor 2. Pilihan B paling tidak tepat karena hanya membiarkan tamu menunggu tanpa kepastian dan tanpa melakukan langkah lanjutan. Tindakan ini tidak mencerminkan profesionalisme dan berpotensi menimbulkan ketidakpuasan tamu, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  72,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Anda bertugas sebagai resepsionis hotel. Seorang tamu komplain karena kamar yang diterimanya tidak sesuai dengan tipe yang dipesan, sementara hotel sedang penuh. Apa langkah terbaik yang Anda lakukan?',
  NULL,
  '{"A":"Menjelaskan bahwa seluruh kamar sesuai tipe pesanan sedang penuh dan meminta tamu memahami kondisi okupansi hotel saat ini.","B":"Menyampaikan permohonan maaf, menjelaskan kondisi kamar yang tersedia, lalu menawarkan pemindahan kamar jika ada pembatalan dari tamu lain.","C":"Meminta maaf, memverifikasi ulang data pemesanan, serta menawarkan kompensasi yang setara sambil memastikan kebutuhan utama tamu tetap terpenuhi.","D":"Menjelaskan kesalahan secara terbuka, meminta persetujuan tamu untuk tetap menempati kamar yang ada, dan memberikan fasilitas tambahan sebagai bentuk tanggung jawab.","E":"Meminta maaf, melakukan pengecekan detail pemesanan, berkoordinasi dengan bagian terkait, serta memberikan solusi terbaik yang disepakati bersama tamu tanpa mengganggu kenyamanan tamu lain."}'::jsonb,
  '{"A":1,"B":2,"C":3,"D":4,"E":5}'::jsonb,
  'E',
  'Pilihan terbaik adalah E karena resepsionis menunjukkan sikap paling komprehensif dalam pelayanan. Petugas tidak hanya meminta maaf dan memverifikasi pemesanan, tetapi juga aktif berkoordinasi dengan bagian terkait serta mengajak tamu menyepakati solusi terbaik tanpa mengganggu kenyamanan tamu lain. Pendekatan ini mencerminkan orientasi pelayanan, profesionalisme, dan kemampuan mengelola situasi sensitif secara seimbang, sehingga mendapat skor 5. Pilihan D sangat baik karena resepsionis bersikap terbuka terhadap kesalahan, meminta persetujuan tamu, serta memberikan fasilitas tambahan sebagai bentuk tanggung jawab. Namun, solusi yang ditawarkan masih bersifat reaktif dan terbatas pada kompensasi, belum menekankan koordinasi lintas bagian atau kesepakatan menyeluruh, sehingga mendapat skor 4. Pilihan C cukup baik karena petugas memverifikasi data pemesanan dan menawarkan kompensasi yang setara. Langkah ini menunjukkan sikap profesional dan akuntabel, tetapi pendekatan yang diambil masih fokus pada aspek administratif dan belum sepenuhnya berorientasi pada pengalaman tamu secara holistik, sehingga mendapat skor 3. Pilihan B kurang tepat karena meskipun menunjukkan empati dan memberikan harapan solusi, langkah ini bergantung pada kondisi yang belum pasti (menunggu pembatalan) sehingga tidak memberikan kepastian bagi tamu, sehingga mendapat skor 2. Pilihan A paling tidak tepat karena hanya menyampaikan keterbatasan hotel tanpa menunjukkan tanggung jawab atau upaya solusi. Sikap ini berpotensi memperburuk ketidakpuasan tamu dan tidak mencerminkan nilai pelayanan prima, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  73,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Anda bertugas sebagai petugas front office di sebuah balai pelatihan kerja milik pemerintah. Seorang peserta pelatihan datang meminta Anda mengubah tanggal kehadiran di sistem karena ia tidak hadir pada hari tertentu dan khawatir akan dinyatakan gugur. Ia beralasan sedang mengalami masalah keluarga dan berharap Anda bisa membantu karena data tersebut hanya diketahui internal. Apa tindakan terbaik yang Anda lakukan..',
  NULL,
  '{"A":"Menyetujui perubahan data kehadiran karena alasan peserta cukup manusiawi dan tidak merugikan pihak lain.","B":"Menolak permintaan tersebut secara tegas tanpa memberikan penjelasan lebih lanjut.","C":"Mengarahkan peserta ke petugas lain agar keputusan tidak berada di tangan Anda.","D":"Meminta peserta membuat surat pernyataan pribadi agar perubahan data bisa dipertimbangkan.","E":"Menjelaskan dengan sopan bahwa data kehadiran tidak dapat diubah secara sepihak, serta menyampaikan mekanisme resmi pengajuan dispensasi sesuai ketentuan."}'::jsonb,
  '{"A":2,"B":1,"C":3,"D":4,"E":5}'::jsonb,
  'E',
  'Pilihan E merupakan jawaban paling tepat karena mampu menjaga keseimbangan antara keterbukaan pelayanan dan perlindungan data. Dengan menjelaskan secara sopan batasan informasi yang bersifat tertutup sekaligus menawarkan alternatif informasi yang boleh diakses, petugas tetap menunjukkan sikap profesional, komunikatif, dan berorientasi pada pelayanan tanpa melanggar aturan. Pendekatan ini juga membantu meredakan tekanan dari warga karena disertai penjelasan rasional dan solusi yang masih dapat diberikan. Pilihan D mendapat skor 4 karena menunjukkan upaya prosedural agar permintaan dapat diproses secara resmi dan akuntabel. Namun, tidak semua data dapat dibuka meskipun melalui surat permohonan, sehingga langkah ini berpotensi menimbulkan harapan keliru jika tidak disertai penjelasan batasan informasi. Pilihan C berada pada skor 3 karena mengalihkan warga ke petugas lain memang dapat meredam konflik, tetapi tidak menyelesaikan substansi persoalan dan berisiko dianggap menghindari tanggung jawab. Pilihan A memperoleh skor 2 karena meskipun bertujuan meredakan kekecewaan, tetap berisiko melanggar prinsip kerahasiaan dengan memberikan informasi yang seharusnya dibatasi, sehingga tidak mencerminkan kehati-hatian aparatur. Pilihan B menjadi yang paling rendah karena penolakan tanpa penjelasan berpotensi memicu konflik, menurunkan kepercayaan publik, dan tidak mencerminkan pelayanan yang komunikatif maupun berorientasi pada masyarakat.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  74,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Anda bertugas di loket pelayanan fasilitas umum. Seorang warga datang untuk menanyakan penggunaan gedung serbaguna milik pemerintah daerah yang sebelumnya diinformasikan dapat dipakai oleh masyarakat. Namun saat hari pelaksanaan semakin dekat, jadwal penggunaan gedung tersebut berubah karena adanya kegiatan resmi mendadak dari instansi. Warga merasa kecewa karena sudah menyebarkan undangan dan meminta kejelasan serta solusi agar kegiatannya tetap bisa berjalan. Sikap Anda adalah …',
  NULL,
  '{"A":"Menjelaskan bahwa kegiatan resmi pemerintah menjadi prioritas dan meminta warga memahami perubahan tersebut.","B":"Menyampaikan perubahan jadwal secara terbuka serta meminta warga menunggu informasi lanjutan dari pihak pengelola.","C":"Menjelaskan alasan perubahan jadwal, menyampaikan permohonan maaf, dan membantu mengusulkan penjadwalan ulang sesuai prosedur.","D":"Menjelaskan perubahan jadwal secara rinci, menyampaikan dasar kebijakan, serta secara aktif membantu mencarikan alternatif fasilitas atau solusi lain yang memungkinkan.","E":"Menyarankan warga menyampaikan keberatan melalui mekanisme pengaduan resmi agar mendapatkan kepastian."}'::jsonb,
  '{"A":1,"B":3,"C":4,"D":5,"E":2}'::jsonb,
  'D',
  'Pilihan D merupakan jawaban paling tepat karena mencerminkan prinsip pelayanan publik yang responsif, transparan, dan proaktif, di mana petugas tidak hanya menjelaskan perubahan jadwal secara rinci serta menyampaikan dasar kebijakan yang melatarbelakanginya, tetapi juga secara aktif membantu mencarikan alternatif fasilitas atau solusi lain yang memungkinkan sehingga warga tetap memperoleh jalan keluar atas permasalahannya, sehingga layak mendapat skor 5. Pilihan C berada satu tingkat di bawahnya karena petugas telah menjelaskan alasan perubahan jadwal, menyampaikan permohonan maaf, dan membantu mengusulkan penjadwalan ulang sesuai prosedur, namun solusi yang diberikan masih terbatas dan belum menunjukkan inisiatif untuk mencari alternatif lain yang lebih fleksibel bagi warga, sehingga layak mendapat skor 4. Pilihan B menunjukkan adanya transparansi awal dengan menyampaikan perubahan jadwal, tetapi sikap meminta warga menunggu informasi lanjutan tanpa kepastian waktu maupun bentuk solusi mencerminkan pelayanan yang pasif dan kurang berorientasi pada kebutuhan warga, sehingga layak mendapat skor 3. Pilihan E mengarahkan warga pada mekanisme pengaduan resmi yang memang sah, namun langkah ini kurang tepat apabila permasalahan masih dapat ditangani langsung di loket pelayanan karena berpotensi memperpanjang proses dan menambah ketidakpuasan, sehingga layak mendapat skor 2. Sementara itu, pilihan A menjadi yang paling tidak tepat karena hanya menekankan prioritas kegiatan pemerintah tanpa disertai empati, penjelasan mendalam, maupun upaya solusi, sehingga berpotensi menurunkan kepercayaan masyarakat terhadap pelayanan publik, sehingga layak mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  75,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda tergabung dalam tim kerja lintas instansi yang melibatkan pemerintah daerah, pihak swasta, dan komunitas masyarakat. Dalam pelaksanaannya, salah satu mitra eksternal aktif bergerak di lapangan namun sering mengambil keputusan sendiri tanpa menginformasikan tim lain. Di sisi lain, menghentikan peran mitra tersebut berpotensi menghambat capaian program. Sikap Anda adalah',
  NULL,
  '{"A":"Mengingatkan mitra tersebut agar selalu melapor sebelum mengambil keputusan dan membatasi ruang geraknya.","B":"Membiarkan mitra tetap bergerak mandiri selama target program masih tercapai.","C":"Mengajak mitra dan tim terkait menyepakati ulang pola koordinasi serta batas kewenangan secara jelas.","D":"Memfasilitasi diskusi bersama seluruh jejaring untuk menyelaraskan tujuan, alur komunikasi, dan mekanisme pengambilan keputusan ke depan.","E":"Melaporkan perilaku mitra kepada pimpinan agar ditentukan langkah tegas."}'::jsonb,
  '{"A":3,"B":1,"C":4,"D":5,"E":2}'::jsonb,
  'D',
  'Pilihan D merupakan jawaban paling tepat karena mencerminkan kemampuan membangun dan menjaga jejaring kerja secara kolaboratif dan berkelanjutan. Dengan memfasilitasi diskusi bersama seluruh jejaring untuk menyelaraskan tujuan, alur komunikasi, serta mekanisme pengambilan keputusan, petugas tidak hanya menyelesaikan masalah koordinasi yang muncul, tetapi juga memperkuat kerja sama lintas instansi ke depan tanpa mematikan kontribusi salah satu pihak, sehingga layak mendapat skor 5. Pilihan C berada pada tingkat berikutnya karena mengajak mitra dan tim terkait menyepakati ulang pola koordinasi serta batas kewenangan secara jelas sudah menunjukkan upaya menjaga keteraturan kerja sama, namun pendekatannya masih terbatas pada klarifikasi struktural dan belum sepenuhnya memperkuat dinamika jejaring secara menyeluruh, sehingga layak mendapat skor 4. Pilihan A menunjukkan niat menjaga koordinasi dengan mengingatkan mitra agar melapor sebelum mengambil keputusan, tetapi pembatasan ruang gerak berpotensi menurunkan fleksibilitas dan kepercayaan dalam jejaring kerja, sehingga layak mendapat skor 3. Pilihan E mengedepankan jalur struktural dengan melaporkan mitra kepada pimpinan, namun langkah ini cenderung represif dan berpotensi merusak hubungan kerja sama apabila masih dapat diselesaikan melalui komunikasi dan fasilitasi langsung, sehingga layak mendapat skor 2. Sementara itu, pilihan B menjadi yang paling tidak tepat karena membiarkan mitra bergerak tanpa koordinasi hanya demi capaian target jangka pendek dapat menimbulkan konflik dan ketidaksinergian di kemudian hari, sehingga layak mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  76,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda ditunjuk sebagai koordinator kerja sama lintas lembaga dalam kegiatan pendataan calon peserta pelatihan kerja. Salah satu lembaga mitra belum menyelesaikan rekap hasil verifikasi lapangan tepat waktu karena adanya pergantian personel di internal mereka. Padahal, data tersebut segera dibutuhkan sebagai dasar penetapan peserta oleh tim pusat. Sikap Anda adalah',
  NULL,
  '{"A":"Memberi kelonggaran waktu penuh kepada mitra dan menyesuaikan ulang seluruh tahapan kegiatan.","B":"Menyampaikan secara tegas bahwa keterlambatan tersebut akan menjadi catatan kinerja tanpa membahas solusi lebih lanjut.","C":"Mengajak mitra berdiskusi untuk mencari cara agar sebagian hasil verifikasi bisa dikirim lebih dulu sesuai kebutuhan mendesak.","D":"Mengambil alih proses rekap data agar target pengiriman ke tim pusat tetap terpenuhi.","E":"Menyampaikan kondisi keterlambatan kepada pimpinan sambil tetap berkoordinasi dengan mitra agar pekerjaan segera diselesaikan."}'::jsonb,
  '{"A":2,"B":3,"C":5,"D":1,"E":4}'::jsonb,
  'C',
  'Pilihan C merupakan jawaban paling tepat karena menunjukkan kemampuan membangun jejaring kerja secara kolaboratif dan solutif. Dengan mengajak mitra berdiskusi untuk mencari cara agar sebagian hasil verifikasi dapat dikirim lebih dulu, kebutuhan mendesak tim pusat tetap terpenuhi tanpa mengabaikan keterbatasan yang dihadapi mitra. Sikap ini mencerminkan fleksibilitas, komunikasi yang baik, serta fokus pada keberlanjutan kerja sama, sehingga layak mendapat skor 5. Pilihan E berada satu tingkat di bawahnya karena menyampaikan kondisi keterlambatan kepada pimpinan memang diperlukan sebagai bentuk transparansi, namun langkah tersebut masih bersifat pelaporan dan belum menjadi solusi utama atas hambatan teknis yang terjadi, sehingga layak mendapat skor 4. Pilihan B menunjukkan ketegasan dengan menjadikan keterlambatan sebagai catatan kinerja, tetapi tanpa disertai upaya mencari jalan keluar bersama, pendekatan ini berpotensi merusak hubungan kerja dan tidak membantu percepatan penyelesaian tugas, sehingga layak mendapat skor 3. Pilihan A memberikan kelonggaran penuh dengan menyesuaikan seluruh tahapan kegiatan, namun sikap ini mengabaikan urgensi kebutuhan data dan berisiko mengganggu jadwal pihak lain, sehingga layak mendapat skor 2. Sementara itu, pilihan D menjadi yang paling tidak tepat karena mengambil alih pekerjaan mitra dapat menimbulkan ketergantungan, melemahkan peran jejaring kerja, serta berpotensi menimbulkan konflik kewenangan di kemudian hari, sehingga layak mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  77,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda menjadi anggota tim koordinasi lintas instansi dalam sebuah program bersama. Dalam pelaksanaannya, setiap instansi sudah menjalankan tugasnya masing-masing, tetapi cara kerja dan standar pelaporan yang digunakan berbeda-beda sehingga hasil kerja sulit digabungkan dan berpotensi menimbulkan kesalahpahaman. Beberapa pihak mulai saling menyalahkan karena merasa sudah bekerja sesuai versi mereka masing-masing. Sikap Anda adalah',
  NULL,
  '{"A":"Memahami bahwa perbedaan cara kerja antarinstansi adalah hal yang sulit dihindari dalam kerja bersama.","B":"Menyesuaikan hasil kerja Anda dengan standar instansi lain agar tidak terjadi perdebatan.","C":"Menyampaikan masukan kepada pimpinan tim agar dibuat kesepakatan standar kerja bersama.","D":"Mengusulkan secara terbuka dalam forum tim agar disepakati format dan alur kerja bersama untuk memudahkan koordinasi.","E":"Tetap menjalankan tugas sesuai standar instansi Anda tanpa ikut terlibat dalam perbedaan tersebut."}'::jsonb,
  '{"A":2,"B":3,"C":4,"D":5,"E":1}'::jsonb,
  'D',
  'Pilihan D merupakan jawaban paling tepat karena menunjukkan inisiatif dalam membangun jejaring kerja secara kolaboratif tanpa melampaui kewenangan sebagai anggota tim. Dengan mengusulkan secara terbuka dalam forum tim agar disepakati format dan alur kerja bersama, masalah perbedaan standar dapat dibahas dan diselesaikan secara kolektif sehingga meminimalkan kesalahpahaman serta saling menyalahkan antarinstansi, sehingga layak mendapat skor 5. Pilihan C berada satu tingkat di bawahnya karena menyampaikan masukan kepada pimpinan tim agar dibuat kesepakatan bersama tetap mencerminkan kepedulian terhadap kelancaran kerja sama, namun pendekatan ini lebih bersifat tidak langsung dan kurang menunjukkan peran aktif dalam membangun koordinasi di tingkat tim, sehingga layak mendapat skor 4. Pilihan B menunjukkan sikap kompromi dengan menyesuaikan hasil kerja sendiri agar selaras dengan pihak lain, tetapi tindakan ini bersifat individual dan tidak menyelesaikan akar permasalahan perbedaan standar kerja yang dialami bersama, sehingga layak mendapat skor 3. Pilihan A mencerminkan sikap pasif karena hanya menerima perbedaan cara kerja tanpa upaya perbaikan atau penyelarasan, sehingga berpotensi membuat masalah terus berulang, sehingga layak mendapat skor 2. Sementara itu, pilihan E merupakan sikap paling tidak tepat karena memilih untuk tidak terlibat dan tetap bekerja sesuai standar sendiri justru dapat memperbesar kesenjangan koordinasi dan melemahkan jejaring kerja lintas instansi, sehingga layak mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  78,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda tergabung dalam tim lintas unit yang sedang menyusun laporan bersama. Salah satu unit meminta agar temuan yang kurang menguntungkan bagi mereka tidak dicantumkan demi menjaga citra. Jika ditolak, mereka mengisyaratkan akan mengurangi dukungan kerja sama ke depan. Apa sikap terbaik Anda?',
  NULL,
  '{"A":"Menyetujui usulan tersebut demi menjaga hubungan kerja sama antarunit.","B":"Menolak usulan tersebut karena rekomendasi harus disusun berdasarkan hasil evaluasi yang ada.","C":"Mengajak unit terkait membahas cara merumuskan rekomendasi yang tetap berlandaskan temuan lapangan namun disampaikan secara konstruktif.","D":"Menyampaikan kondisi tersebut kepada pimpinan tim agar diputuskan secara struktural.","E":"Mengurangi porsi rekomendasi tersebut agar tidak menimbulkan keberatan dari pihak lain."}'::jsonb,
  '{"A":1,"B":3,"C":5,"D":4,"E":2}'::jsonb,
  'C',
  'Pilihan C merupakan jawaban paling tepat karena menunjukkan kemampuan menjaga jejaring kerja sekaligus mempertahankan integritas substansi pekerjaan. Dengan mengajak unit terkait membahas cara merumuskan rekomendasi yang tetap berlandaskan temuan lapangan namun disampaikan secara konstruktif, kebutuhan akan objektivitas tetap terpenuhi tanpa mengorbankan hubungan kerja sama. Sikap ini mencerminkan komunikasi yang dewasa, kolaboratif, dan berorientasi pada solusi bersama, sehingga layak mendapat skor 5. Pilihan D berada satu tingkat di bawahnya karena menyampaikan persoalan kepada pimpinan merupakan langkah yang sah dan aman secara struktural, namun pendekatan ini cenderung mengalihkan penyelesaian masalah ke pihak lain dan kurang menunjukkan upaya membangun kesepahaman langsung dalam jejaring kerja, sehingga layak mendapat skor 4. Pilihan B menunjukkan sikap menjunjung objektivitas dengan menolak usulan tersebut, tetapi penolakan tanpa upaya dialog berpotensi memicu ketegangan dan tidak membantu menjaga keberlanjutan kerja sama lintas unit, sehingga layak mendapat skor 3. Pilihan E berupaya meredam potensi konflik dengan mengurangi porsi rekomendasi, namun langkah ini tetap mengaburkan substansi evaluasi dan tidak menyelesaikan tekanan yang muncul secara prinsip, sehingga layak mendapat skor 2. Sementara itu, pilihan A menjadi yang paling tidak tepat karena mengorbankan integritas hasil kerja demi menjaga hubungan semu, yang dalam jangka panjang justru merusak kepercayaan dan profesionalitas dalam jejaring kerja, sehingga layak mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  79,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Dalam kerja sama lintas instansi, mitra Anda melaksanakan kegiatan tanpa mengikuti alur koordinasi yang telah disepakati. Akibatnya, jadwal berbenturan dan muncul keluhan dari peserta. Setelah dikonfirmasi, mitra tersebut mengakui kesalahan dan khawatir hubungan kerja sama ke depan terganggu. Sikap Anda adalah',
  NULL,
  '{"A":"Menjadikan kejadian tersebut sebagai catatan evaluasi tanpa membahas tindak lanjut.","B":"Menganggap masalah selesai karena mitra telah mengakui kesalahan.","C":"Mengajak mitra mengevaluasi kejadian dan menyepakati langkah perbaikan agar tidak terulang.","D":"Mengurangi peran mitra pada kegiatan berikutnya untuk mencegah masalah serupa.","E":"Melaporkan kejadian tersebut kepada pimpinan tanpa melibatkan mitra dalam pembahasan solusi."}'::jsonb,
  '{"A":2,"B":1,"C":5,"D":3,"E":4}'::jsonb,
  'C',
  'Sikap paling tepat adalah opsi C karena menunjukkan upaya menjaga jejaring kerja melalui evaluasi bersama dan penyusunan langkah perbaikan yang disepakati, sehingga masalah diselesaikan tanpa menyalahkan dan kolaborasi tetap berjalan sehat, sehingga layak mendapat skor 5. Opsi E menekankan akuntabilitas melalui pelaporan kepada pimpinan, namun tidak melibatkan mitra dalam penyelesaian masalah sehingga berpotensi memperlebar jarak koordinasi, sehingga layak mendapat skor 4. Opsi D bertujuan mencegah kesalahan berulang dengan mengurangi peran mitra, tetapi langkah ini dapat menurunkan kepercayaan dan tidak menyentuh akar masalah, sehingga layak mendapat skor 3. Opsi A hanya menjadikan kejadian sebagai catatan evaluasi tanpa tindak lanjut perbaikan yang konkret, sehingga risiko kesalahan terulang tetap ada, sehingga layak mendapat skor 2. Sementara itu, opsi B mengabaikan dampak kesalahan meskipun sudah diakui dan tidak mencerminkan tanggung jawab dalam menjaga kualitas koordinasi jejaring kerja, sehingga layak mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  80,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda berperan sebagai penghubung dalam kerja sama antara dinas kesehatan dan sebuah organisasi nonpemerintah pada program penyuluhan gizi di sekolah. Saat pelaksanaan, pihak NGO menilai jadwal kegiatan sering berubah sepihak, sementara dinas merasa perubahan dilakukan karena menyesuaikan agenda sekolah. Ketegangan mulai mengganggu kelancaran program. Sikap Anda adalah',
  NULL,
  '{"A":"Mengajak kedua pihak duduk bersama untuk mengevaluasi pola koordinasi dan menyepakati mekanisme penjadwalan yang lebih jelas.","B":"Meminta NGO menyesuaikan diri karena dinas memiliki kewenangan lebih besar dalam program pemerintah.","C":"Menyarankan program tetap berjalan sambil masalah koordinasi dibahas di akhir kegiatan.","D":"Menghentikan sementara kegiatan sampai masing-masing pihak memperbaiki koordinasi internal.","E":"Menyampaikan permasalahan tersebut kepada pimpinan tanpa melibatkan kedua pihak dalam pembahasan awal."}'::jsonb,
  '{"A":5,"B":3,"C":4,"D":1,"E":2}'::jsonb,
  'A',
  'Sikap paling tepat adalah opsi A karena mengedepankan peran koordinatif dalam jejaring kerja dengan mempertemukan kedua pihak untuk mengevaluasi pola komunikasi dan menyepakati mekanisme penjadwalan yang jelas, sehingga akar masalah dapat diselesaikan tanpa memperbesar konflik dan program tetap berjalan efektif, sehingga layak mendapat skor 5. Opsi C menunjukkan upaya menjaga kelangsungan program dengan menunda pembahasan konflik, namun tidak segera menyentuh sumber permasalahan sehingga berisiko menimbulkan gangguan berulang, sehingga layak mendapat skor 4. Opsi B cenderung berpihak pada salah satu pihak dengan alasan kewenangan, yang dapat merusak keseimbangan kemitraan dan menurunkan kepercayaan dalam jejaring kerja, sehingga layak mendapat skor 3. Opsi E menempuh jalur struktural dengan melapor ke pimpinan, tetapi mengabaikan fungsi mediasi awal yang seharusnya dilakukan pada level koordinasi, sehingga layak mendapat skor 2. Sementara itu, opsi D menghentikan kegiatan tanpa upaya penyelesaian bersama sehingga berpotensi merugikan tujuan program dan melemahkan kerja sama antar pihak, sehingga layak mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  81,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda menjadi penghubung antara pemerintah daerah dan sebuah organisasi relawan lingkungan dalam program pengelolaan sampah terpadu. Dalam pelaksanaannya, relawan merasa kurang dilibatkan dalam pengambilan keputusan teknis, sementara pemerintah menilai relawan sering bergerak di luar kesepakatan awal. Ketegangan mulai muncul dan koordinasi melemah. Apa langkah terbaik yang Anda lakukan?',
  NULL,
  '{"A":"Meminta relawan mengikuti seluruh keputusan pemerintah agar program tetap terkendali.","B":"Menginisiasi forum evaluasi bersama untuk menyepakati ulang peran, batas kewenangan, dan mekanisme koordinasi.","C":"Membiarkan masing-masing pihak menjalankan perannya agar konflik mereda dengan sendirinya.","D":"Menyampaikan keluhan kedua pihak kepada pimpinan tanpa mempertemukan mereka.","E":"Mengurangi ruang keterlibatan relawan agar koordinasi lebih sederhana."}'::jsonb,
  '{"A":2,"B":5,"C":1,"D":3,"E":4}'::jsonb,
  'B',
  'Pilihan B paling tepat karena Anda menginisiasi forum evaluasi bersama untuk menyepakati ulang peran, batas kewenangan, dan mekanisme koordinasi. Langkah ini menunjukkan pendekatan kolaboratif, terbuka, dan berorientasi solusi jangka panjang. Dengan mempertemukan kedua pihak, potensi miskomunikasi dapat diselesaikan secara langsung dan hubungan kerja sama dapat diperkuat kembali, sehingga layak mendapat skor 5. Pilihan E mendapat skor 4 karena berupaya menyederhanakan koordinasi, namun dengan mengurangi keterlibatan relawan justru berisiko menurunkan partisipasi dan semangat kolaborasi. Pilihan D bernilai 3 karena menyampaikan keluhan kepada pimpinan dapat membantu, tetapi tidak menyelesaikan akar masalah karena kedua pihak tidak dipertemukan secara langsung. Pilihan A mendapat skor 2 karena cenderung sepihak dan tidak menghargai peran relawan, sehingga berpotensi memperbesar konflik. Sementara itu, pilihan C menjadi yang terendah karena membiarkan masing-masing pihak berjalan sendiri justru akan memperparah miskomunikasi dan melemahkan kerja sama dalam jangka panjang.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  82,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda berperan sebagai penghubung dalam jejaring kerja program literasi digital bagi masyarakat. Pada tahap pelaksanaan, narasumber teknis yang biasanya mendampingi sesi praktik tiba-tiba tidak dapat mengikuti beberapa jadwal karena penugasan lain. Sementara itu, peserta sudah terdaftar dan pelatihan harus tetap berjalan sesuai rencana. Apa langkah paling tepat yang Anda ambil?',
  NULL,
  '{"A":"Mengatur pembagian tugas pendampingan kepada anggota tim lain yang memiliki kemampuan teknis sejenis agar kegiatan tetap berjalan.","B":"Menunda seluruh rangkaian pelatihan sampai narasumber utama dapat kembali mendampingi.","C":"Meminta narasumber utama menyiapkan panduan materi tertulis sebagai pegangan sementara bagi peserta.","D":"Mengalihkan sesi praktik menjadi pemaparan umum tanpa pendampingan teknis.","E":"Menyerahkan sepenuhnya pelaksanaan sesi kepada panitia lapangan tanpa pengawasan pendamping."}'::jsonb,
  '{"A":5,"B":1,"C":4,"D":3,"E":2}'::jsonb,
  'A',
  'Sikap paling tepat adalah opsi A karena menunjukkan kemampuan mengelola jejaring kerja secara adaptif dengan memanfaatkan sumber daya yang ada, yaitu membagi peran pendampingan kepada anggota tim lain yang memiliki kompetensi serupa sehingga kegiatan tetap berjalan tanpa mengorbankan kualitas pelaksanaan, sehingga layak mendapat skor 5. Opsi C merupakan alternatif yang cukup baik karena tetap melibatkan narasumber utama melalui penyediaan panduan tertulis, namun efektivitas pendampingan praktik tetap lebih rendah dibandingkan kehadiran fasilitator pengganti secara langsung, sehingga layak mendapat skor 4. Opsi D berupaya menjaga keberlangsungan kegiatan dengan mengubah bentuk sesi, tetapi mengurangi substansi pendampingan teknis yang menjadi tujuan utama program, sehingga layak mendapat skor 3. Opsi E menyerahkan pelaksanaan sepenuhnya kepada panitia lapangan tanpa dukungan pendamping yang memadai, sehingga berisiko menurunkan kualitas kegiatan dan melemahkan fungsi jejaring kerja, sehingga layak mendapat skor 2. Sementara itu, opsi B menunda seluruh kegiatan sampai narasumber utama kembali aktif tanpa mencari solusi alternatif, sehingga berpotensi mengecewakan peserta dan menghambat capaian program, sehingga layak mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  83,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Anda menjadi koordinator kegiatan komunitas pemuda yang anggotanya berasal dari berbagai daerah dan kebiasaan sosial. Dalam beberapa pertemuan, sebagian anggota sering bercanda menggunakan gaya humor internal kelompoknya sendiri, yang tanpa disadari membuat anggota lain jarang terlibat dan memilih diam. Belum ada konflik terbuka, tetapi suasana kebersamaan mulai berkurang. Apa langkah paling tepat yang Anda ambil?',
  NULL,
  '{"A":"Membiarkan gaya interaksi tersebut berjalan alami karena setiap kelompok memiliki cara bergaul masing-masing.","B":"Menyarankan anggota yang kurang nyaman untuk lebih aktif menyesuaikan diri agar tidak tertinggal.","C":"Mengajak anggota berdiskusi bersama untuk membangun pola interaksi yang saling menghargai dan inklusif.","D":"Mengurangi sesi diskusi bebas agar potensi ketidaknyamanan tidak muncul.","E":"Menetapkan aturan tegas mengenai cara bercanda dan berkomunikasi dalam setiap kegiatan."}'::jsonb,
  '{"A":2,"B":1,"C":5,"D":3,"E":4}'::jsonb,
  'C',
  'Sikap paling tepat adalah opsi C karena menunjukkan kepekaan sosial budaya dengan mengajak seluruh anggota berdiskusi untuk membangun pola interaksi yang lebih inklusif dan saling menghargai tanpa meniadakan ekspresi sosial masing-masing, sehingga kebersamaan dapat dipulihkan dan potensi jarak sosial dapat dicegah sejak awal, sehingga layak mendapat skor 5. Opsi E bertujuan menciptakan keteraturan melalui aturan tegas, namun berpotensi membatasi ekspresi sosial secara kaku dan kurang mendorong kesadaran bersama, sehingga layak mendapat skor 4. Opsi D berusaha menghindari sumber masalah dengan mengurangi ruang interaksi, tetapi langkah ini tidak menyelesaikan akar persoalan dan justru mengurangi kualitas kebersamaan, sehingga layak mendapat skor 3. Opsi A membiarkan kondisi berlangsung tanpa intervensi sehingga risiko eksklusivitas dan jarak sosial semakin besar, sehingga layak mendapat skor 2. Sementara itu, opsi B membebankan penyesuaian sepenuhnya kepada pihak yang merasa tidak nyaman dan tidak mencerminkan sikap inklusif dalam lingkungan multikultural, sehingga layak mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  84,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Anda bertugas sebagai fasilitator dalam kegiatan musyawarah warga yang diikuti oleh peserta dari berbagai latar kebiasaan sosial. Selama pertemuan, sebagian warga terbiasa menyampaikan pendapat secara lugas dan langsung, sementara yang lain merasa cara tersebut terlalu keras dan kurang menghargai perasaan. Perbedaan ini mulai menghambat partisipasi beberapa peserta. Apa langkah paling tepat yang Anda lakukan?',
  NULL,
  '{"A":"Meminta peserta menyampaikan pendapat dengan cara yang lebih halus agar tidak menyinggung pihak lain.","B":"Mengajak peserta menyepakati aturan penyampaian pendapat yang saling menghormati tanpa menghilangkan ciri komunikasi masing-masing.","C":"Memisahkan sesi musyawarah berdasarkan kelompok yang memiliki gaya komunikasi serupa.","D":"Mengarahkan pertemuan agar berjalan singkat dan langsung pada keputusan untuk menghindari perdebatan.","E":"Memberi ruang diskusi tidak resmi di luar forum utama agar peserta dapat menyampaikan pendapat dengan bebas."}'::jsonb,
  '{"A":2,"B":5,"C":1,"D":3,"E":4}'::jsonb,
  'B',
  'Sikap paling tepat adalah opsi B karena menunjukkan kemampuan mengelola perbedaan sosial budaya dengan melibatkan seluruh peserta untuk menyepakati aturan penyampaian pendapat yang saling menghormati tanpa meniadakan ciri komunikasi masing-masing, sehingga partisipasi dapat kembali merata dan suasana musyawarah tetap inklusif, sehingga layak mendapat skor 5. Opsi E memberi ruang alternatif bagi peserta untuk menyalurkan pendapat secara lebih bebas, namun tidak langsung menyelesaikan hambatan partisipasi yang terjadi di forum utama, sehingga layak mendapat skor 4. Opsi D berupaya meredam perbedaan dengan membatasi diskusi, tetapi berisiko mengurangi kualitas musyawarah dan kesempatan menyampaikan pandangan secara utuh, sehingga layak mendapat skor 3. Opsi A cenderung memihak salah satu gaya komunikasi dan berpotensi menekan ekspresi sebagian peserta, sehingga kurang mencerminkan sikap saling menghargai, sehingga layak mendapat skor 2. Sementara itu, opsi C memisahkan peserta berdasarkan gaya komunikasi sehingga berpotensi memperlebar jarak sosial dan bertentangan dengan semangat kebersamaan dalam lingkungan multikultural, sehingga layak mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  85,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Anda menjadi pendamping kegiatan PKK di sebuah kelurahan. Dalam pelaksanaan program bulanan, muncul keluhan bahwa sebagian ibu PKK merasa ide dan usulan mereka jarang ditindaklanjuti karena keputusan lebih sering diambil oleh pengurus lama. Akibatnya, beberapa anggota mulai enggan hadir dalam kegiatan. Apa langkah paling tepat yang Anda lakukan?',
  NULL,
  '{"A":"Membiarkan mekanisme yang ada berjalan karena pengurus lama dianggap lebih berpengalaman.","B":"Mengingatkan anggota PKK agar tetap menghormati keputusan pengurus inti.","C":"Mengajak pengurus dan anggota PKK menyepakati mekanisme penyaluran dan pembahasan usulan secara terbuka.","D":"Mengganti pengurus lama dengan anggota baru agar suasana lebih segar.","E":"Menyarankan anggota yang kurang puas menyampaikan keluhan secara pribadi kepada ketua PKK."}'::jsonb,
  '{"A":2,"B":1,"C":5,"D":3,"E":4}'::jsonb,
  'C',
  'Sikap paling tepat adalah opsi C karena menunjukkan kepekaan sosial budaya dengan membuka ruang dialog antara pengurus dan anggota PKK untuk menyepakati mekanisme penyaluran serta pembahasan usulan secara terbuka, sehingga setiap anggota merasa dihargai dan partisipasi dapat meningkat kembali, sehingga layak mendapat skor 5. Opsi E memberikan saluran penyampaian keluhan secara pribadi yang dapat meredam ketegangan sementara, namun tidak menyelesaikan persoalan secara kolektif dan berpotensi mengulang masalah yang sama, sehingga layak mendapat skor 4. Opsi D menawarkan perubahan struktural dengan mengganti pengurus lama, tetapi langkah ini berisiko menimbulkan konflik baru dan tidak menyentuh akar masalah komunikasi, sehingga layak mendapat skor 3. Opsi A mempertahankan pola lama tanpa evaluasi sehingga mengabaikan aspirasi anggota dan dapat memperkuat rasa ketidakadilan, sehingga layak mendapat skor 2. Sementara itu, opsi B hanya menekankan kepatuhan terhadap pengurus inti tanpa membuka ruang perbaikan, sehingga tidak mencerminkan upaya membangun kebersamaan dalam kegiatan PKK, sehingga layak mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  86,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Anda bekerja di sebuah kantor pemerintah dengan pegawai dari latar belakang yang beragam. Dalam praktik sehari-hari, bantuan pekerjaan dan informasi lebih sering berputar di kelompok tertentu saja, sehingga sebagian pegawai merasa tersisih dan kurang dilibatkan. Situasi ini mulai mengganggu kerja tim. Apa sikap paling tepat yang Anda ambil?',
  NULL,
  '{"A":"Menginisiasi forum kerja lintas tim untuk membahas pola kolaborasi tanpa menyinggung kelompok tertentu secara langsung.","B":"Mengajak pimpinan mengevaluasi budaya kerja yang berkembang dan menyusun mekanisme kolaborasi yang lebih inklusif.","C":"Menyampaikan kepada rekan kerja bahwa pola bantuan yang eksklusif dapat berdampak pada kinerja tim secara keseluruhan.","D":"Mengusulkan sistem rotasi tugas dan kerja kelompok agar interaksi antarpegawai lebih merata.","E":"Tetap bekerja seperti biasa sambil berharap dinamika tim membaik dengan sendirinya."}'::jsonb,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'A',
  'Pilihan A paling tepat karena menginisiasi forum kerja lintas tim membantu membuka ruang komunikasi yang netral tanpa menyasar kelompok tertentu secara langsung, sehingga semua pegawai dapat menyampaikan pandangan dan bersama-sama membangun pola kolaborasi yang lebih inklusif tanpa memicu konflik personal, langkah ini juga menunjukkan inisiatif profesional dalam menjaga keharmonisan kerja tim dan memperbaiki sistem secara konstruktif sehingga layak mendapat skor 5, pilihan B tetap baik karena melibatkan pimpinan untuk evaluasi budaya kerja namun cenderung melewati upaya penyelesaian langsung di tingkat rekan kerja sehingga layak mendapat skor 4, pilihan D cukup membantu meningkatkan interaksi tetapi lebih berfokus pada teknis pembagian tugas daripada akar masalah komunikasi sehingga layak mendapat skor 3, pilihan C hanya berupa penyampaian pendapat yang berpotensi menimbulkan kesalahpahaman tanpa solusi sistematis sehingga layak mendapat skor 2, sedangkan pilihan E bersifat pasif dan tidak berkontribusi pada perbaikan situasi sehingga layak mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  87,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Anda menjabat sebagai pimpinan unit kerja di instansi pemerintah yang pegawainya memiliki latar keyakinan dan budaya beragam. Menjelang peringatan hari besar nasional, muncul usulan agar kantor mengadakan kegiatan yang bernuansa keagamaan tertentu karena dianggap paling mencerminkan nilai moral, sementara pegawai lain mengusulkan kegiatan kebangsaan yang bersifat netral agar semua dapat terlibat. Perbedaan pandangan ini mulai memicu perdebatan internal. Apa sikap paling tepat yang Anda lakukan?',
  NULL,
  '{"A":"Mengarahkan unit kerja untuk memilih satu bentuk kegiatan yang dinilai paling aman agar tidak memperpanjang perdebatan.","B":"Mengajak perwakilan pegawai berdiskusi untuk merumuskan bentuk kegiatan yang menonjolkan nilai kebangsaan tanpa mengabaikan sensitivitas keberagaman.","C":"Menetapkan dua kegiatan berbeda dalam waktu yang sama agar seluruh usulan dapat terakomodasi.","D":"Meminta pendapat pimpinan tertinggi lalu melaksanakan keputusan tersebut tanpa diskusi lanjutan.","E":"Menunda peringatan hingga seluruh pihak sepakat agar tidak menimbulkan ketegangan."}'::jsonb,
  '{"A":3,"B":5,"C":4,"D":2,"E":1}'::jsonb,
  'B',
  'Sikap paling tepat adalah opsi B karena mengedepankan pengelolaan perbedaan sosial budaya secara inklusif dengan melibatkan perwakilan pegawai untuk merumuskan bentuk kegiatan yang menonjolkan nilai kebangsaan sekaligus sensitif terhadap keberagaman keyakinan, sehingga semua pihak merasa dihargai dan kebersamaan tetap terjaga, sehingga layak mendapat skor 5. Opsi C berupaya mengakomodasi seluruh usulan dengan menetapkan dua kegiatan sekaligus, namun tanpa perumusan bersama langkah ini berpotensi menimbulkan fragmentasi partisipasi dan tidak menyelesaikan perbedaan pandangan, sehingga layak mendapat skor 4. Opsi A memilih jalan praktis dengan menetapkan satu kegiatan demi efisiensi, tetapi mengabaikan aspirasi sebagian pegawai dan dapat menimbulkan rasa tidak dilibatkan, sehingga layak mendapat skor 3. Opsi D menyerahkan keputusan sepenuhnya kepada pimpinan tertinggi tanpa dialog, sehingga partisipasi dan rasa memiliki pegawai terhadap kegiatan menjadi rendah, sehingga layak mendapat skor 2. Sementara itu, opsi E menunda kegiatan tanpa solusi yang jelas, sehingga berpotensi menghilangkan momentum kebersamaan dan tidak menyelesaikan perbedaan yang ada, sehingga layak mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  88,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Anda adalah ASN di unit pelayanan publik. Di kantor, ada kebiasaan mendahulukan warga yang sudah dikenal. Praktik ini jarang dipermasalahkan, tetapi berpotensi merusak keadilan layanan. Sikap paling tepat adalah …',
  NULL,
  '{"A":"Menyesuaikan diri dengan kebiasaan yang ada agar tidak menimbulkan gesekan internal.","B":"Menjaga pelayanan pribadi tetap adil tanpa ikut campur praktik rekan kerja.","C":"Mengajak tim mendiskusikan standar layanan yang sama bagi semua warga secara bertahap.","D":"Melaporkan kebiasaan tersebut kepada atasan agar segera dihentikan.","E":"Mengingatkan rekan kerja di hadapan warga agar menjadi pembelajaran bersama."}'::jsonb,
  '{"A":2,"B":3,"C":5,"D":4,"E":1}'::jsonb,
  'C',
  'Pilihan C merupakan jawaban paling tepat karena menunjukkan kemampuan mengelola perbedaan secara sistematis dan berorientasi pada perbaikan bersama, dengan mengajak tim berdiskusi untuk menyusun standar layanan yang lebih adil dan inklusif tanpa menyalahkan pihak tertentu, sehingga layak mendapatkan skor 5. Pilihan D mencerminkan ketegasan pimpinan, namun cenderung top-down dan berpotensi menimbulkan resistensi karena perubahan dilakukan tanpa proses dialog, sehingga hanya layak mendapatkan skor 4. Pilihan A menunjukkan upaya menjaga keharmonisan, tetapi mengorbankan prinsip keadilan dan profesionalisme dalam pelayanan, sehingga kurang tepat dan layak mendapatkan skor 3. Pilihan B bersifat pasif dan individual karena hanya menyesuaikan diri tanpa berkontribusi menyelesaikan masalah di tingkat tim, sehingga layak mendapatkan skor 2. Sementara itu, pilihan E tidak mencerminkan etika kerja dan kepemimpinan ASN karena berisiko mempermalukan rekan kerja serta memperkeruh suasana kerja, sehingga menjadi pilihan paling tidak tepat dan hanya layak mendapatkan skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  89,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Anda bekerja sebagai ASN baru di sebuah instansi. Ada kebiasaan tidak tertulis bahwa pegawai junior ikut patungan rutin untuk kebutuhan pribadi atasan. Kebiasaan ini tidak pernah diwajibkan, tetapi penolakan berpotensi berdampak pada relasi kerja. Sikap paling tepat adalah…',
  NULL,
  '{"A":"Menolak secara langsung dengan alasan prinsip, tanpa mempertimbangkan dampak relasi kerja.","B":"Mengikuti kebiasaan tersebut sambil menunda sikap sampai posisi Anda lebih aman.","C":"Menyampaikan keberatan secara personal dengan pendekatan profesional dan mencari titik temu yang tidak melanggar norma.","D":"Mengumpulkan dukungan rekan junior agar kebiasaan tersebut dihentikan bersama-sama.","E":"Mendokumentasikan praktik tersebut dan menyiapkan langkah formal jika tekanan berlanjut."}'::jsonb,
  '{"A":2,"B":1,"C":5,"D":4,"E":3}'::jsonb,
  'C',
  'Pilihan C merupakan jawaban paling tepat karena menunjukkan kemampuan menjaga nilai etika, norma organisasi, dan relasi kerja secara seimbang dengan menyampaikan keberatan secara personal dan profesional, sehingga masalah dapat disikapi tanpa konfrontasi terbuka maupun pelanggaran prinsip ASN, sehingga layak mendapatkan skor 5. Pilihan D mencerminkan keberanian dan upaya kolektif, namun berisiko memicu resistensi dan dinamika kelompok yang kurang sehat jika tidak melalui pendekatan struktural, sehingga layak mendapatkan skor 4. Pilihan E menunjukkan kewaspadaan dan kesiapan menghadapi tekanan lanjutan, tetapi cenderung reaktif dan belum mengedepankan penyelesaian sosial di tahap awal, sehingga layak mendapatkan skor 3. Pilihan A menekankan prinsip pribadi, namun mengabaikan konteks sosial dan potensi dampak relasi kerja sebagai ASN baru, sehingga layak mendapatkan skor 2. Sementara itu, pilihan B paling tidak tepat karena mencerminkan kompromi terhadap praktik yang menyimpang demi kenyamanan pribadi, yang berpotensi melanggengkan budaya tidak sehat, sehingga hanya layak mendapatkan skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  90,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Dalam tim Anda, pegawai yang aktif di kegiatan informal kantor cenderung dianggap lebih loyal, sehingga lebih sering mendapat kesempatan pengembangan. Pegawai yang fokus bekerja mulai merasa dirugikan. Apa langkah paling tepat?',
  NULL,
  '{"A":"Mendorong penyesuaian kriteria penilaian melalui jalur resmi dengan menekankan dampak jangka panjang terhadap profesionalisme.","B":"Menyarankan rekan kerja meningkatkan keterlibatan sosial agar tidak tertinggal peluang.","C":"Menerima kondisi tersebut sebagai bagian dari budaya organisasi yang sulit diubah.","D":"Menjaga jarak dari sistem penilaian dan fokus pada kinerja pribadi saja.","E":"Mengkritik kecenderungan tersebut secara terbuka agar pimpinan merasa tertekan."}'::jsonb,
  '{"A":5,"B":3,"C":1,"D":2,"E":4}'::jsonb,
  'A',
  'Pilihan A merupakan jawaban paling tepat karena menunjukkan pola pikir strategis dan berorientasi pada perbaikan sistem dengan mendorong penyesuaian kriteria penilaian melalui jalur resmi, sehingga profesionalisme dan keadilan organisasi dapat terjaga dalam jangka panjang, sehingga layak mendapatkan skor 5. Pilihan E menunjukkan keberanian menyuarakan kritik, namun dilakukan secara terbuka dan konfrontatif sehingga berpotensi menimbulkan konflik serta resistensi pimpinan, sehingga layak mendapatkan skor 4. Pilihan B bersifat adaptif terhadap budaya yang ada, tetapi cenderung menyarankan penyesuaian individu tanpa menyentuh akar ketidakadilan sistem, sehingga layak mendapatkan skor 3. Pilihan D bersikap pasif karena hanya berfokus pada kinerja pribadi tanpa kontribusi pada perbaikan lingkungan kerja, sehingga layak mendapatkan skor 2. Adapun pilihan C paling tidak tepat karena menerima kondisi yang tidak adil tanpa upaya perbaikan, yang bertentangan dengan nilai profesionalisme dan meritokrasi ASN, sehingga hanya layak mendapatkan skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  91,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Di unit kerja Anda, ada kebiasaan berbagi akun aplikasi kerja agar tugas cepat selesai saat salah satu pegawai berhalangan. Suatu hari Anda diminta menggunakan akun milik rekan untuk mengunggah laporan karena tenggat sudah dekat. Apa sikap paling tepat yang Anda ambil?',
  NULL,
  '{"A":"Menggunakan akun tersebut karena sudah menjadi kebiasaan di tim.","B":"Menggunakan akun rekan hanya untuk tugas itu lalu keluar kembali.","C":"Menolak secara halus dan mengusulkan penggunaan akun resmi sesuai prosedur.","D":"Menggunakan akun rekan sambil mencatat aktivitas sebagai bentuk tanggung jawab.","E":"Menunda pengunggahan tanpa memberi penjelasan agar tidak terlibat risiko."}'::jsonb,
  '{"A":2,"B":3,"C":5,"D":4,"E":1}'::jsonb,
  'C',
  'Pilihan C merupakan jawaban paling tepat karena menunjukkan pemahaman terhadap etika dan keamanan penggunaan sistem teknologi informasi dengan tetap menjaga kepatuhan pada prosedur resmi, sekaligus disampaikan secara halus agar tidak merusak hubungan kerja, sehingga layak mendapatkan skor 5. Pilihan D berada satu tingkat di bawah karena meskipun ada upaya bertanggung jawab dengan mencatat aktivitas, penggunaan akun milik orang lain tetap melanggar prinsip keamanan dan akuntabilitas sistem, sehingga hanya layak mendapatkan skor 4. Pilihan B menunjukkan kesadaran risiko yang lebih baik dibanding mengikuti kebiasaan sepenuhnya, namun tetap membenarkan penggunaan akun bersama meski hanya sementara, sehingga belum sepenuhnya tepat dan layak mendapatkan skor 3. Pilihan A mencerminkan sikap permisif terhadap praktik yang salah dengan alasan kebiasaan dan efisiensi, yang berpotensi menimbulkan masalah keamanan dan akuntabilitas di kemudian hari, sehingga layak mendapatkan skor 2. Sementara itu, pilihan E menjadi yang paling tidak tepat karena bersikap pasif, tidak profesional, dan berpotensi menghambat pekerjaan tim tanpa komunikasi yang jelas, sehingga layak mendapatkan skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  92,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Di unit kerja Anda, grup percakapan internal sering digunakan untuk koordinasi. Namun, belakangan beberapa pegawai mulai membagikan meme dan candaan yang berpotensi menyinggung serta mencampuradukkan urusan pribadi dengan informasi kerja. Kondisi ini mulai mengganggu fokus dan profesionalisme komunikasi. Sikap paling tepat adalah',
  NULL,
  '{"A":"Membiarkan kebiasaan tersebut karena grup percakapan bersifat informal.","B":"Keluar dari grup dan hanya berkomunikasi melalui jalur resmi lainnya.","C":"Mengusulkan kesepakatan penggunaan grup agar tetap fokus pada keperluan kerja.","D":"Menegur pengirim pesan secara langsung di dalam grup agar menjadi efek jera.","E":"Menyimpan bukti percakapan untuk berjaga-jaga jika terjadi masalah di kemudian hari."}'::jsonb,
  '{"A":1,"B":2,"C":5,"D":4,"E":3}'::jsonb,
  'C',
  'Pilihan C merupakan jawaban paling tepat karena menunjukkan kemampuan menjaga profesionalisme komunikasi digital dengan cara yang konstruktif, yaitu mengusulkan kesepakatan bersama agar penggunaan grup tetap fokus pada kepentingan kerja tanpa menyalahkan pihak tertentu, sehingga layak mendapatkan skor 5. Pilihan D berada di bawahnya karena meskipun bertujuan menghentikan perilaku yang tidak tepat, menegur secara langsung di dalam grup berpotensi menimbulkan rasa tidak nyaman dan konflik terbuka, sehingga hanya layak mendapatkan skor 4. Pilihan E menunjukkan sikap berjaga-jaga, tetapi bersifat pasif dan tidak menyelesaikan akar masalah komunikasi yang mengganggu, sehingga layak mendapatkan skor 3. Pilihan B mencerminkan upaya menghindari masalah dengan menarik diri dari grup, namun langkah ini dapat menghambat koordinasi kerja dan tidak mencerminkan tanggung jawab sebagai bagian dari tim, sehingga layak mendapatkan skor 2. Sementara itu, pilihan A menjadi yang paling tidak tepat karena membiarkan komunikasi tidak profesional terus berlangsung dan berpotensi merusak etika serta efektivitas kerja, sehingga layak mendapatkan skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  93,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Di kantor Anda mulai digunakan aplikasi berbasis kecerdasan buatan untuk membantu menyusun draf laporan. Beberapa rekan langsung menyalin hasil aplikasi tersebut tanpa meninjau ulang isinya. Anda diminta ikut menggunakan cara yang sama agar pekerjaan cepat selesai. Sikap paling tepat adalah',
  NULL,
  '{"A":"Menggunakan hasil aplikasi sepenuhnya karena tujuannya membantu efisiensi kerja.","B":"Menggunakan aplikasi sebagai referensi awal lalu menyesuaikan isi sesuai konteks dan tanggung jawab pekerjaan.","C":"Menolak penggunaan aplikasi apa pun karena berisiko menurunkan kualitas kerja.","D":"Menggunakan aplikasi hanya untuk bagian yang bersifat umum tanpa koreksi lanjutan.","E":"Mengikuti cara rekan kerja agar tidak dianggap menghambat proses tim."}'::jsonb,
  '{"A":2,"B":5,"C":3,"D":4,"E":1}'::jsonb,
  'B',
  'Pilihan B merupakan jawaban paling tepat karena menunjukkan pemanfaatan teknologi secara bijak dengan tetap menempatkan tanggung jawab profesional pada ASN, yaitu menggunakan aplikasi kecerdasan buatan sebagai alat bantu awal sambil tetap meninjau, menyesuaikan, dan memastikan isi laporan sesuai konteks serta akurat, sehingga layak mendapatkan skor 5. Pilihan D berada sedikit di bawah karena sudah ada upaya membatasi penggunaan aplikasi hanya pada bagian umum, namun masih kurang optimal karena tidak menekankan kewajiban pengecekan dan penyesuaian secara menyeluruh, sehingga layak mendapatkan skor 4. Pilihan C mencerminkan kehati-hatian terhadap risiko teknologi, tetapi bersifat terlalu kaku dan menutup peluang peningkatan efisiensi kerja yang sebenarnya dapat dikelola dengan baik, sehingga layak mendapatkan skor 3. Pilihan A menunjukkan pemahaman yang kurang tepat karena menyerahkan sepenuhnya hasil kerja pada aplikasi tanpa kontrol manusia, yang berisiko menurunkan kualitas dan akuntabilitas pekerjaan, sehingga layak mendapatkan skor 2. Sementara itu, pilihan E menjadi yang paling tidak tepat karena lebih mengutamakan tekanan sosial daripada prinsip profesionalisme dan tanggung jawab kerja, sehingga layak mendapatkan skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  94,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Di unit kerja Anda, terdapat kebiasaan menggunakan template presentasi lama yang desainnya kurang ramah akses (tulisan kecil, kontras rendah), padahal audiens rapat sering berasal dari berbagai usia dan latar belakang. Anda diminta menyiapkan materi presentasi berikutnya. Apa langkah paling tepat?',
  NULL,
  '{"A":"Menggunakan template lama agar konsisten dengan kebiasaan unit.","B":"Mengubah desain presentasi agar lebih ramah akses sambil tetap menjaga substansi materi.","C":"Mengikuti template lama lalu menjelaskan isi secara lisan lebih detail.","D":"Mengusulkan perubahan desain setelah rapat selesai agar tidak mengganggu jadwal.","E":"Menyerahkan desain sepenuhnya kepada rekan yang biasa membuat presentasi."}'::jsonb,
  '{"A":1,"B":5,"C":3,"D":4,"E":2}'::jsonb,
  'B',
  'Jawaban B paling tepat karena menunjukkan pemanfaatan teknologi informasi yang peka terhadap kebutuhan pengguna dengan latar belakang yang beragam, di mana perbaikan desain presentasi seperti ukuran teks dan kontras warna membantu audiens memahami materi tanpa mengubah isi utama, sehingga layak mendapatkan skor 5. Pilihan D masih cukup baik karena ada kesadaran untuk melakukan perbaikan, namun menundanya membuat masalah aksesibilitas tetap terjadi pada rapat yang sedang berlangsung, sehingga layak mendapatkan skor 4. Pilihan C berada di tingkat berikutnya karena meskipun berusaha mengompensasi desain yang kurang ramah akses melalui penjelasan lisan, cara ini kurang efektif dan tidak menyelesaikan akar masalah, sehingga layak mendapatkan skor 3. Pilihan E menunjukkan sikap pasif karena menyerahkan sepenuhnya kepada rekan tanpa memastikan kualitas dan keterbacaan materi presentasi, sehingga layak mendapatkan skor 2. Sementara itu, pilihan A merupakan opsi paling tidak tepat karena mempertahankan kebiasaan lama tanpa mempertimbangkan efektivitas penyampaian informasi kepada audiens, sehingga layak mendapatkan skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  95,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Di unit kerja Anda, pegawai terbiasa menyimpan file kerja di perangkat pribadi masing-masing dengan penamaan yang berbeda-beda. Saat salah satu pegawai cuti mendadak, pekerjaan tertunda karena file sulit ditemukan dan tidak sinkron. Anda diminta memberi masukan perbaikan. Apa langkah paling tepat?',
  NULL,
  '{"A":"Mengingatkan pegawai agar lebih rapi menyimpan file di perangkat masing-masing.","B":"Menyusun kesepakatan penamaan file dan lokasi penyimpanan bersama yang mudah diakses.","C":"Menyarankan pegawai mencadangkan file secara mandiri agar tidak hilang.","D":"Menunggu pimpinan menetapkan aturan resmi terkait pengelolaan file.","E":"Meminta pegawai yang cuti tetap dihubungi jika file dibutuhkan."}'::jsonb,
  '{"A":2,"B":5,"C":3,"D":4,"E":1}'::jsonb,
  'B',
  'Pilihan B merupakan jawaban paling tepat karena menunjukkan pemahaman TIK yang berorientasi pada efektivitas kerja tim dan keberlanjutan sistem, dengan menyusun kesepakatan penamaan file serta lokasi penyimpanan bersama sehingga informasi mudah diakses, risiko ketergantungan pada individu berkurang, dan kolaborasi tetap berjalan meski ada pegawai berhalangan, sehingga layak mendapatkan skor 5. Pilihan D mencerminkan kepatuhan terhadap struktur organisasi, namun terlalu pasif karena menunggu kebijakan formal tanpa inisiatif perbaikan di level unit kerja, sehingga hanya layak mendapatkan skor 4. Pilihan C menunjukkan kesadaran akan pentingnya pencadangan data, tetapi masih bersifat individual dan tidak menyelesaikan masalah keterpaduan akses file tim, sehingga layak mendapatkan skor 3. Pilihan A menekankan kerapian pribadi tanpa solusi sistemik, sehingga dampaknya terbatas dan hanya layak mendapatkan skor 2. Sementara itu, pilihan E sangat tidak tepat karena mencampuradukkan urusan pribadi dan pekerjaan serta berpotensi melanggar etika dan efisiensi kerja, sehingga layak mendapatkan skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  96,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Sekolah Anda mulai menggunakan sistem ujian berbasis komputer. Saat simulasi, beberapa siswa terlihat saling memotret layar soal menggunakan ponsel yang disembunyikan, sementara pengawas belum menyadari hal tersebut. Jika Anda menjadi panitia pelaksana, langkah paling tepat adalah …',
  NULL,
  '{"A":"Menghentikan simulasi dan langsung menyita seluruh ponsel siswa tanpa penjelasan lebih lanjut.","B":"Membiarkan simulasi berjalan karena belum terbukti terjadi pelanggaran serius.","C":"Mengevaluasi sistem pengawasan dan pengaturan teknis ujian agar celah penyalahgunaan teknologi dapat diminimalkan.","D":"Memberikan sanksi kepada seluruh siswa peserta simulasi agar menimbulkan efek jera.","E":"Menghapus hasil simulasi dan mengulang ujian dengan soal yang sama di hari lain."}'::jsonb,
  '{"A":3,"B":1,"C":5,"D":2,"E":4}'::jsonb,
  'C',
  'Pilihan C paling tepat karena fokus pada perbaikan sistem pengawasan dan pengaturan teknis ujian membantu mencegah penyalahgunaan teknologi secara menyeluruh, bukan hanya menangani kejadian saat itu saja, sehingga simulasi benar-benar berfungsi sebagai bahan evaluasi untuk meningkatkan keamanan pelaksanaan ujian berbasis komputer di masa depan, langkah ini bersifat preventif, objektif, dan profesional sehingga layak mendapat skor 5, pilihan E masih cukup baik karena menjaga integritas ujian dengan mengulang simulasi namun belum menyentuh akar masalah pada sistem pengawasan sehingga layak mendapat skor 4, pilihan A menunjukkan ketegasan tetapi terlalu reaktif dan kurang edukatif sehingga layak mendapat skor 3, pilihan D bersifat tidak adil karena memberi sanksi menyeluruh tanpa pembuktian individual sehingga layak mendapat skor 2, sedangkan pilihan B membiarkan potensi pelanggaran terus terjadi tanpa upaya perbaikan sehingga layak mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  97,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Di instansi Anda diterapkan sistem arsip digital yang mencatat jejak aktivitas pengguna, seperti waktu membuka, mengedit, dan mengunduh dokumen. Beberapa pegawai merasa tidak nyaman karena aktivitas kerjanya menjadi sangat terpantau, meskipun sistem tersebut bertujuan meningkatkan akuntabilitas. Sikap paling tepat adalah',
  NULL,
  '{"A":"Menolak menggunakan sistem arsip digital karena berpotensi melanggar privasi pegawai.","B":"Menggunakan sistem secara minimal agar aktivitas tidak terlalu terekam.","C":"Menggunakan sistem sesuai ketentuan sambil mendorong kejelasan batas pemanfaatan data aktivitas.","D":"Mengabaikan rasa tidak nyaman karena pengawasan merupakan konsekuensi teknologi modern.","E":"Menyampaikan keberatan secara terbuka kepada publik agar instansi mengevaluasi kebijakannya."}'::jsonb,
  '{"A":2,"B":1,"C":5,"D":3,"E":4}'::jsonb,
  'C',
  'Pilihan C merupakan jawaban paling tepat karena menunjukkan sikap profesional dalam pemanfaatan teknologi informasi dengan tetap mematuhi sistem arsip digital sebagai alat akuntabilitas, sekaligus bersikap kritis dan konstruktif dengan mendorong kejelasan batas penggunaan data aktivitas agar tidak melanggar privasi pegawai, sehingga layak mendapatkan skor 5. Pilihan E mencerminkan kepedulian terhadap isu transparansi, namun cara menyampaikan keberatan ke ranah publik tanpa melalui mekanisme internal berpotensi menimbulkan citra negatif institusi dan konflik kebijakan, sehingga hanya layak mendapatkan skor 4. Pilihan D menunjukkan penerimaan terhadap teknologi, tetapi bersifat pasif dan mengabaikan aspek etika serta kenyamanan kerja pegawai, sehingga kurang optimal dan layak mendapatkan skor 3. Pilihan A terlihat tegas dalam membela privasi, namun tidak realistis karena menolak sistem resmi tanpa menawarkan solusi alternatif yang seimbang antara pengawasan dan akuntabilitas, sehingga layak mendapatkan skor 2. Sementara itu, pilihan B mencerminkan sikap menghindari tanggung jawab dengan memanipulasi penggunaan sistem, yang bertentangan dengan prinsip integritas ASN dan tata kelola TIK yang baik, sehingga menjadi pilihan paling tidak tepat dan hanya layak mendapatkan skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  98,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda ditugaskan membantu sebuah unit kerja yang baru beralih menggunakan sistem tiket digital untuk pengaduan internal. Dalam praktiknya, banyak pegawai memilih menyampaikan keluhan lewat chat pribadi karena merasa sistem terlalu rumit dan takut laporannya tercatat permanen. Akibatnya, data pengaduan tidak terdokumentasi dengan baik. Apa langkah paling tepat yang Anda lakukan?',
  NULL,
  '{"A":"Menegaskan bahwa seluruh pengaduan wajib masuk sistem tanpa pengecualian.","B":"Menyederhanakan alur penggunaan sistem dan menjelaskan manfaatnya bagi perlindungan pelapor.","C":"Membiarkan dua jalur berjalan bersamaan agar pegawai tidak merasa tertekan.","D":"Mengambil alih penginputan laporan agar pegawai tidak perlu menggunakan sistem langsung.","E":"Mengusulkan evaluasi sistem setelah semua pegawai terbiasa dengan penggunaan digital."}'::jsonb,
  '{"A":2,"B":5,"C":1,"D":3,"E":4}'::jsonb,
  'B',
  'Pilihan B merupakan jawaban paling tepat karena menunjukkan pemahaman TIK yang berorientasi pada perubahan perilaku pengguna dengan cara memperbaiki pengalaman penggunaan sistem sekaligus memberikan edukasi mengenai manfaat dokumentasi digital dan perlindungan data pelapor, sehingga mendorong adopsi sistem secara berkelanjutan dan layak mendapatkan skor 5. Pilihan E mencerminkan sikap reflektif terhadap efektivitas sistem, namun bersifat reaktif karena evaluasi baru dilakukan setelah masalah berlangsung cukup lama, sehingga hanya layak mendapatkan skor 4. Pilihan D menunjukkan upaya membantu secara praktis, tetapi tidak menyelesaikan akar masalah karena ketergantungan pegawai tetap tinggi dan pemanfaatan sistem tidak meningkat, sehingga layak mendapatkan skor 3. Pilihan A menekankan kepatuhan aturan, namun mengabaikan aspek psikologis pengguna dan berpotensi menimbulkan resistensi terhadap sistem digital, sehingga hanya layak mendapatkan skor 2. Sementara itu, pilihan C justru melemahkan tujuan transformasi digital karena membiarkan praktik informal terus berlangsung dan data tidak terdokumentasi dengan baik, sehingga menjadi pilihan paling tidak tepat dan hanya layak mendapatkan skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  99,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda bertugas mengelola akun resmi instansi untuk kegiatan internal. Suatu pagi, Anda mendapati ada unggahan di akun tersebut yang menampilkan tangkapan layar sistem internal, termasuk nama pengguna dan sebagian informasi teknis. Unggahan itu sudah dilihat banyak orang, tetapi belum ada klarifikasi dari siapa pun. Apa langkah paling tepat yang segera Anda lakukan?',
  NULL,
  '{"A":"Menghapus unggahan tersebut secepatnya tanpa penjelasan agar tidak menarik perhatian lebih luas.","B":"Menyimpan bukti unggahan, mengamankan akun, lalu melaporkan kejadian kepada atasan dan tim terkait.","C":"Membiarkan unggahan tetap ada sambil menunggu arahan resmi dari pimpinan.","D":"Memberikan klarifikasi di kolom komentar bahwa unggahan tersebut tidak bermasalah.","E":"Mengganti kata sandi akun setelah unggahan dihapus dan menganggap masalah selesai."}'::jsonb,
  '{"A":3,"B":5,"C":1,"D":2,"E":4}'::jsonb,
  'B',
  'Pilihan B paling tepat karena langkah menyimpan bukti, mengamankan akun, dan segera melaporkan kejadian menunjukkan penanganan insiden yang sistematis dan profesional, sehingga masalah keamanan dapat ditelusuri sekaligus dicegah agar tidak berulang, tindakan ini juga menjaga akuntabilitas dan koordinasi dengan pihak terkait sehingga layak mendapat skor 5, pilihan E cukup baik karena ada upaya pengamanan akun tetapi terlalu menyederhanakan masalah dan mengabaikan proses pelaporan resmi sehingga layak mendapat skor 4, pilihan A membantu membatasi penyebaran informasi sensitif namun kurang lengkap karena tidak disertai pengamanan dan pelaporan sehingga layak mendapat skor 3, pilihan D berisiko menyesatkan publik dan tidak menyentuh aspek keamanan sehingga layak mendapat skor 2, sedangkan pilihan C membiarkan potensi risiko keamanan terus berlangsung tanpa tindakan cepat sehingga layak mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  100,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Di unit kerja Anda, beberapa pegawai lebih sering berbagi informasi penting secara informal melalui percakapan pribadi, bukan lewat kanal resmi tim. Akibatnya, Anda dan beberapa rekan lain kerap tertinggal informasi yang berdampak pada pelaksanaan tugas. Sebagai bagian dari tim, sikap profesional yang paling tepat adalah…',
  NULL,
  '{"A":"Mencari tahu informasi secara mandiri agar pekerjaan tetap berjalan tanpa perlu bergantung pada rekan lain.","B":"Meminta agar setiap informasi penting selalu disampaikan melalui media kerja resmi dengan pendekatan kolaboratif.","C":"Menyesuaikan diri dengan kebiasaan tersebut agar tidak tertinggal arus informasi.","D":"Menyampaikan keluhan secara pribadi kepada rekan yang sering berbagi informasi terbatas.","E":"Melaporkan pola komunikasi tersebut kepada pimpinan sebagai bentuk ketidakterbukaan tim."}'::jsonb,
  '{"A":2,"B":5,"C":1,"D":3,"E":4}'::jsonb,
  'B',
  'Pilihan B merupakan jawaban paling tepat karena menunjukkan sikap profesional yang berorientasi pada perbaikan sistem kerja dengan mendorong penggunaan kanal komunikasi resmi secara kolaboratif, sehingga seluruh anggota tim memperoleh informasi yang sama dan pekerjaan dapat berjalan lebih efektif, sehingga layak mendapatkan skor 5. Pilihan E mencerminkan kepedulian terhadap kinerja tim, namun bersifat eskalatif dan berpotensi menimbulkan ketegangan karena melibatkan pimpinan tanpa upaya perbaikan komunikasi terlebih dahulu di tingkat tim, sehingga layak mendapatkan skor 4. Pilihan D menunjukkan upaya menyampaikan keberatan, tetapi dilakukan secara personal dan terbatas sehingga dampaknya tidak menyentuh akar masalah komunikasi tim secara menyeluruh, sehingga layak mendapatkan skor 3. Pilihan A bersifat individualistis karena hanya berfokus pada penyelamatan tugas pribadi tanpa berkontribusi memperbaiki pola kerja bersama, sehingga layak mendapatkan skor 2. Sementara itu, pilihan C mencerminkan sikap tidak profesional karena menormalisasi praktik komunikasi yang tidak inklusif dan berpotensi merugikan kinerja tim dalam jangka panjang, sehingga hanya layak mendapatkan skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  101,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda bertugas melakukan final review laporan evaluasi kinerja program sebelum diserahkan ke pimpinan. Secara umum laporan sudah sesuai, namun Anda menemukan satu indikator penilaian yang disajikan dengan pilihan kata ambigu sehingga bisa menimbulkan penafsiran terlalu positif dibanding kondisi sebenarnya. Tenggat pengumpulan laporan tinggal beberapa jam lagi. Sikap Anda…',
  NULL,
  '{"A":"Membiarkan redaksi tetap seperti semula karena tidak ada data yang dimanipulasi secara langsung.","B":"Mengoreksi redaksi indikator tersebut dan menyampaikan alasannya kepada tim penyusun sebelum laporan dikirim.","C":"Menyederhanakan bahasa laporan agar lebih singkat tanpa mengubah substansi indikator.","D":"Menyerahkan laporan apa adanya dan menyampaikan catatan tersebut secara lisan jika diminta pimpinan.","E":"Menghapus indikator tersebut agar tidak menimbulkan salah tafsir di kemudian hari."}'::jsonb,
  '{"A":2,"B":5,"C":3,"D":4,"E":1}'::jsonb,
  'B',
  'Pilihan B merupakan jawaban paling tepat karena mencerminkan profesionalisme melalui upaya menjaga akurasi, kejujuran, dan tanggung jawab substansi laporan dengan memperbaiki redaksi yang berpotensi menyesatkan serta mengomunikasikan alasannya secara terbuka kepada tim sebelum laporan diserahkan, sehingga layak mendapatkan skor 5. Pilihan D menunjukkan kesadaran terhadap potensi masalah, namun bersifat pasif karena membiarkan laporan tetap dikirim tanpa perbaikan dan hanya mengandalkan klarifikasi lisan jika diminta, sehingga layak mendapatkan skor 4. Pilihan C berupaya mengurangi risiko melalui penyederhanaan bahasa, tetapi tidak secara langsung menyelesaikan persoalan utama terkait ambiguitas makna indikator, sehingga layak mendapatkan skor 3. Pilihan A kurang mencerminkan integritas profesional karena mengabaikan potensi bias penafsiran demi mengejar tenggat waktu, sehingga hanya layak mendapatkan skor 2. Sementara itu, pilihan E merupakan tindakan tidak tepat karena menghilangkan indikator penting tanpa dasar prosedural dan berpotensi merusak kelengkapan laporan, sehingga layak mendapatkan skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  102,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda menjadi anggota tim kecil yang sedang menyusun jadwal kerja proyek lintas bagian. Di tengah proses, salah satu rekan meminta penyesuaian jadwal karena alasan pribadi, tetapi perubahan tersebut berpotensi membebani anggota tim lain dan mempersempit waktu penyelesaian. Tidak ada aturan tertulis yang dilanggar, namun keputusan Anda akan memengaruhi dinamika kerja tim. Sikap paling profesional yang sebaiknya Anda ambil adalah …',
  NULL,
  '{"A":"Menyetujui penyesuaian jadwal demi menjaga hubungan baik dengan rekan tersebut.","B":"Menolak permintaan tersebut karena berisiko mengganggu target tim secara keseluruhan.","C":"Mengajak tim membahas opsi penyesuaian yang tetap adil tanpa memberatkan pihak lain.","D":"Menyerahkan keputusan sepenuhnya kepada pimpinan agar tidak terlibat konflik.","E":"Menunda keputusan sambil melihat perkembangan situasi kerja ke depan."}'::jsonb,
  '{"A":2,"B":3,"C":5,"D":4,"E":1}'::jsonb,
  'C',
  'Pilihan C paling tepat karena mengajak seluruh tim berdiskusi menunjukkan sikap profesional yang menyeimbangkan empati terhadap kebutuhan individu dan tanggung jawab terhadap kepentingan bersama, sehingga keputusan yang diambil tetap adil dan transparan tanpa membebani pihak lain sehingga layak mendapat skor 5, pilihan D cukup baik karena melibatkan pimpinan dapat membantu meredakan konflik tetapi menunjukkan kurangnya inisiatif dalam menyelesaikan masalah di tingkat tim sehingga layak mendapat skor 4, pilihan B berfokus pada kepentingan target kerja namun cenderung kaku dan kurang mempertimbangkan aspek kemanusiaan sehingga layak mendapat skor 3, pilihan A lebih mengutamakan hubungan pribadi daripada keadilan bagi tim sehingga layak mendapat skor 2, sedangkan pilihan E menunjukkan sikap pasif yang berpotensi memperbesar masalah sehingga layak mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  103,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda mendapat tugas menyusun laporan kinerja bulanan tim. Saat mengolah data, Anda melihat ada satu target utama yang tidak tercapai karena kesalahan koordinasi di awal pekerjaan. Biasanya, hal seperti ini tidak terlalu dibahas dan laporan dibuat agar terlihat aman. Secara aturan, laporan tetap bisa disusun tanpa masalah. Sikap paling profesional yang sebaiknya Anda lakukan adalah',
  NULL,
  '{"A":"Menyusun laporan dengan bahasa yang dibuat lebih positif agar tidak menurunkan penilaian tim.","B":"Menyajikan hasil apa adanya disertai penjelasan penyebab dan rencana perbaikan ke depan.","C":"Tidak memasukkan indikator tersebut agar laporan tetap terlihat rapi.","D":"Menuliskan capaian seolah sudah membaik meskipun perbaikannya belum sepenuhnya berjalan.","E":"Menunggu instruksi pimpinan sebelum menentukan isi laporan."}'::jsonb,
  '{"A":2,"B":5,"C":1,"D":3,"E":4}'::jsonb,
  'B',
  'Pilihan B merupakan jawaban paling tepat karena menunjukkan sikap profesional yang jujur, bertanggung jawab, dan berorientasi pada perbaikan, dengan menyajikan hasil kinerja apa adanya sekaligus menjelaskan penyebab kegagalan serta rencana tindak lanjut sehingga laporan tetap akuntabel dan dapat menjadi dasar evaluasi yang konstruktif, sehingga layak mendapatkan skor 5. Pilihan E mencerminkan kehati-hatian dan kepatuhan pada hierarki, namun kurang menunjukkan inisiatif profesional karena tanggung jawab penyusunan laporan seharusnya tetap dijalankan secara mandiri sesuai tugas yang diberikan, sehingga layak mendapatkan skor 4. Pilihan D menunjukkan upaya menjaga citra tim, tetapi tidak mencerminkan integritas karena menampilkan kondisi yang belum sesuai fakta, sehingga hanya layak mendapatkan skor 3. Pilihan A berusaha mengamankan penilaian tim dengan cara mengaburkan kondisi sebenarnya, namun mengorbankan transparansi dan fungsi laporan sebagai alat evaluasi, sehingga kurang tepat dan layak mendapatkan skor 2. Sementara itu, pilihan C merupakan sikap paling tidak profesional karena sengaja menghilangkan indikator penting dan menyesatkan pembaca laporan, sehingga hanya layak mendapatkan skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  104,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda ditugaskan sebagai anggota tim yang menilai hasil kerja sebuah proyek internal. Dalam rapat evaluasi, atasan meminta Anda menyampaikan pendapat. Anda mengetahui bahwa salah satu rekan satu tim melakukan kesalahan kecil yang tidak fatal, tetapi jika disebutkan bisa memengaruhi penilaian terhadapnya. Di sisi lain, evaluasi ini akan menjadi dasar perbaikan kerja ke depan. Sikap paling profesional yang Anda lakukan adalah …',
  NULL,
  '{"A":"Tidak menyampaikan temuan tersebut agar tidak merusak hubungan kerja.","B":"Menyampaikan evaluasi secara jujur dengan fokus pada perbaikan, bukan menyalahkan individu.","C":"Menunggu rekan lain menyampaikan terlebih dahulu lalu menyesuaikan pendapat Anda.","D":"Menyampaikan kesalahan tersebut secara rinci agar atasan mengetahui semuanya.","E":"Membahas kesalahan tersebut di luar rapat agar tidak muncul dalam forum resmi."}'::jsonb,
  '{"A":2,"B":5,"C":3,"D":4,"E":1}'::jsonb,
  'B',
  'Pilihan B merupakan jawaban paling tepat karena menunjukkan sikap profesional dengan menyampaikan evaluasi secara jujur namun tetap berorientasi pada perbaikan kinerja tim, bukan pada menyalahkan individu, sehingga masukan yang diberikan tetap objektif, konstruktif, dan bermanfaat untuk peningkatan kualitas kerja ke depan, sehingga layak mendapatkan skor 5. Pilihan D mencerminkan keterbukaan, tetapi penyampaian kesalahan secara rinci berpotensi menimbulkan rasa tidak nyaman dan menurunkan semangat kerja jika tidak disertai pendekatan yang proporsional, sehingga hanya layak mendapatkan skor 4. Pilihan C menunjukkan sikap berhati-hati, namun cenderung pasif karena tidak mencerminkan tanggung jawab profesional dalam menyampaikan penilaian secara mandiri, sehingga layak mendapatkan skor 3. Pilihan A berupaya menjaga hubungan kerja, tetapi mengorbankan prinsip objektivitas dan kesempatan perbaikan kinerja, sehingga kurang tepat dan layak mendapatkan skor 2. Sementara itu, pilihan E tidak mencerminkan etika profesional karena menghindari forum resmi dan berpotensi menimbulkan kesalahpahaman atau gosip, sehingga menjadi pilihan paling tidak tepat dan hanya layak mendapatkan skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  105,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda bekerja dalam satu tim pelayanan. Saat jam kerja masih berlangsung, ada rekan yang sering meninggalkan meja untuk urusan pribadi sehingga tugas pelayanan sering dialihkan ke Anda tanpa konfirmasi. Jika dibiarkan, kondisi ini berpotensi menimbulkan ketidakadilan kerja. Sikap paling profesional yang sebaiknya Anda lakukan adalah …',
  NULL,
  '{"A":"Menerima tambahan tugas tersebut agar pelayanan tetap berjalan lancar.","B":"Menyampaikan keberatan secara santai kepada rekan tersebut dan menyepakati pembagian tugas yang lebih jelas.","C":"Mengurangi kualitas pekerjaan sebagai bentuk protes tidak langsung.","D":"Menghindari rekan tersebut dan hanya fokus pada tugas sendiri.","E":"Melaporkan perilaku tersebut ke atasan tanpa mencoba menyelesaikannya terlebih dahulu."}'::jsonb,
  '{"A":3,"B":5,"C":1,"D":2,"E":4}'::jsonb,
  'B',
  'Pilihan B merupakan jawaban paling tepat karena menunjukkan sikap profesional dengan mengedepankan komunikasi langsung, terbuka, dan berorientasi pada solusi melalui kesepakatan pembagian tugas yang adil tanpa memperkeruh suasana kerja, sehingga layak mendapatkan skor 5. Pilihan E mencerminkan ketegasan, namun terlalu cepat membawa masalah ke atasan tanpa upaya penyelesaian di tingkat rekan kerja, sehingga berpotensi menimbulkan ketegangan dan hanya layak mendapatkan skor 4. Pilihan A menunjukkan sikap kooperatif, tetapi jika dilakukan terus-menerus justru memperkuat kebiasaan tidak adil dan mengorbankan profesionalisme, sehingga layak mendapatkan skor 3. Pilihan D bersifat pasif dan tidak menyentuh akar masalah karena hanya menghindari rekan kerja tanpa memperbaiki pola kerja tim, sehingga layak mendapatkan skor 2. Sementara itu, pilihan C tidak mencerminkan etika kerja karena menurunkan kualitas pelayanan dan berpotensi merugikan organisasi serta pengguna layanan, sehingga menjadi pilihan paling tidak tepat dan hanya layak mendapatkan skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  106,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda menjadi ASN yang bertugas mengelola akun media sosial instansi. Suatu hari, Anda menemukan kolom komentar berisi ajakan mengikuti kanal tertentu yang sering membingkai isu nasional dengan narasi kebencian dan memecah belah, meskipun tidak secara terang-terangan menyebut ideologi ekstrem. Beberapa pegawai menganggap hal tersebut tidak perlu ditanggapi karena bukan unggahan resmi instansi. Sikap paling tepat yang Anda lakukan adalah…',
  NULL,
  '{"A":"Membiarkan komentar tersebut karena tidak berkaitan langsung dengan tugas instansi.","B":"Menghapus komentar tanpa tindak lanjut agar kolom tetap bersih","C":"Menyampaikan temuan tersebut kepada tim pengelola dan menyusun langkah penanganan yang sesuai kebijakan komunikasi publik.","D":"Menanggapi komentar tersebut secara pribadi untuk meluruskan pandangan yang disampaikan.","E":"Menutup kolom komentar sementara agar tidak muncul perdebatan."}'::jsonb,
  '{"A":1,"B":3,"C":5,"D":4,"E":2}'::jsonb,
  'C',
  'Pilihan C merupakan jawaban paling tepat karena menunjukkan sikap waspada terhadap potensi penyebaran paham yang mengarah pada radikalisme dengan tetap mengedepankan prosedur dan etika kerja ASN, yaitu menyampaikan temuan kepada tim pengelola serta menyusun langkah penanganan yang sesuai kebijakan komunikasi publik sehingga respons yang diambil tidak bersifat reaktif, personal, atau gegabah, sehingga layak mendapatkan skor 5. Pilihan D menunjukkan kepedulian dan keberanian meluruskan narasi, namun dilakukan secara personal dan berisiko memicu perdebatan terbuka yang justru memperluas jangkauan pesan bermuatan kebencian, sehingga hanya layak mendapatkan skor 4. Pilihan B terlihat cepat dan praktis, tetapi bersifat reaktif karena hanya menghapus tanpa upaya pencegahan lanjutan atau pembelajaran bagi tim, sehingga layak mendapatkan skor 3. Pilihan E bertujuan menjaga kondusivitas, namun menutup kolom komentar justru mengorbankan ruang komunikasi publik yang sehat dan tidak menyentuh akar masalah, sehingga layak mendapatkan skor 2. Sementara itu, pilihan A paling tidak tepat karena sikap membiarkan menunjukkan kurangnya kepekaan terhadap potensi penyebaran paham radikal di ruang publik instansi, sehingga hanya layak mendapatkan skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  107,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda menjadi anggota tim pengelola kegiatan kepemudaan di instansi. Dalam salah satu sesi diskusi, seorang peserta mulai menyampaikan pandangan yang membenarkan penggunaan kekerasan atas nama perjuangan tertentu dan mendapat respons setuju dari beberapa peserta lain. Situasi masih terkendali, tetapi berpotensi memengaruhi peserta lain. Sikap paling tepat yang Anda lakukan adalah…',
  NULL,
  '{"A":"Membiarkan diskusi berjalan agar semua pendapat tersalurkan secara terbuka.","B":"Menghentikan diskusi secara sepihak dan membubarkan sesi tersebut.","C":"Meluruskan pandangan tersebut dengan pendekatan dialogis dan menegaskan nilai kebangsaan serta hukum yang berlaku.","D":"Menegur peserta tersebut setelah kegiatan selesai agar tidak menimbulkan konflik saat forum berlangsung.","E":"Melaporkan peserta tersebut kepada pimpinan tanpa melakukan intervensi dalam forum"}'::jsonb,
  '{"A":1,"B":2,"C":5,"D":3,"E":4}'::jsonb,
  'C',
  'Pilihan C merupakan jawaban paling tepat karena menunjukkan kemampuan mencegah penyebaran paham radikal secara dini melalui pendekatan dialogis, edukatif, dan kontekstual dengan tetap menjaga suasana forum tetap kondusif serta menegaskan nilai kebangsaan dan hukum tanpa bersikap represif, sehingga layak mendapatkan skor 5. Pilihan E menunjukkan kewaspadaan terhadap potensi radikalisme, namun bersifat reaktif dan melewatkan kesempatan klarifikasi serta edukasi langsung di forum, sehingga layak mendapatkan skor 4. Pilihan D mencerminkan kehati-hatian, tetapi kurang efektif karena membiarkan pandangan bermasalah berkembang tanpa penyeimbang saat forum berlangsung, sehingga layak mendapatkan skor 3. Pilihan B memang menghentikan potensi risiko, tetapi dilakukan secara sepihak dan berisiko menimbulkan resistensi serta rasa tidak adil, sehingga hanya layak mendapatkan skor 2. Sementara itu, pilihan A paling tidak tepat karena sikap membiarkan dapat memperkuat normalisasi kekerasan dan paham radikal di ruang diskusi, sehingga hanya layak mendapatkan skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  108,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda bertugas mengelola konten internal organisasi. Dalam proses kurasi materi, Anda menemukan bahan bacaan yang secara halus menyudutkan kelompok tertentu dan menanamkan sikap eksklusif, meskipun tidak mengandung ajakan kekerasan secara langsung. Materi tersebut rencananya akan dibagikan ke seluruh anggota. Apa langkah paling tepat?…',
  NULL,
  '{"A":"Tetap membagikan materi karena tidak melanggar aturan secara eksplisit.","B":"Menghapus materi tersebut tanpa penjelasan agar tidak menimbulkan polemik.","C":"Mengganti materi dengan konten yang lebih inklusif dan memperkuat nilai kebhinekaan.","D":"Membagikan materi tersebut dengan catatan agar pembaca bersikap kritis.","E":"Menunggu arahan pimpinan tanpa melakukan penilaian awal."}'::jsonb,
  '{"A":1,"B":3,"C":5,"D":4,"E":2}'::jsonb,
  'C',
  'Pilihan C merupakan jawaban paling tepat karena menunjukkan sikap proaktif dalam mencegah penyebaran narasi eksklusif yang berpotensi mengarah pada radikalisme dengan menggantinya menggunakan konten yang lebih inklusif dan sejalan dengan nilai kebangsaan, sehingga layak mendapatkan skor 5. Pilihan D menunjukkan kesadaran akan potensi masalah, namun tetap berisiko karena materi bermuatan bias tetap tersebar dan dapat disalahpahami oleh pembaca, sehingga layak mendapatkan skor 4. Pilihan B bersifat cepat dan aman secara praktis, tetapi kurang edukatif karena tidak disertai upaya membangun pemahaman yang lebih sehat, sehingga layak mendapatkan skor 3. Pilihan E menunjukkan kehati-hatian, namun terlalu pasif dan berpotensi membiarkan konten bermasalah lolos tanpa penyaringan awal, sehingga layak mendapatkan skor 2. Sementara itu, pilihan A paling tidak tepat karena mengabaikan dampak jangka panjang dari narasi eksklusif terhadap sikap dan pola pikir anggota, sehingga hanya layak mendapatkan skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  109,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda menjadi panitia kegiatan orientasi pegawai baru. Dalam salah satu sesi informal, beredar ajakan bergabung ke komunitas tertentu yang mengklaim paling benar dan meminta anggotanya membatasi interaksi dengan pihak di luar kelompok. Ajakan tersebut mulai menarik perhatian beberapa peserta. Sikap paling tepat yang Anda lakukan adalah…',
  NULL,
  '{"A":"Membiarkan ajakan tersebut karena belum ada pelanggaran yang terlihat jelas.","B":"Mengingatkan peserta agar berhati-hati tanpa menyinggung isi ajakan tersebut.","C":"Menyisipkan penguatan nilai kebangsaan dan keterbukaan dalam sesi lanjutan kegiatan.","D":"Melarang seluruh bentuk komunitas di luar kegiatan resmi kantor.","E":"Mengumpulkan nama peserta yang tertarik untuk dilaporkan ke atasan."}'::jsonb,
  '{"A":1,"B":3,"C":5,"D":2,"E":4}'::jsonb,
  'C',
  'Pilihan C merupakan jawaban paling tepat karena menunjukkan upaya pencegahan radikalisme secara halus dan preventif melalui penguatan nilai kebangsaan, keterbukaan, dan kebersamaan tanpa menimbulkan stigma atau resistensi di kalangan peserta, sehingga layak mendapatkan skor 5. Pilihan E menunjukkan kewaspadaan, namun cenderung represif dan berpotensi menimbulkan ketakutan serta salah sasaran karena belum ada pelanggaran nyata, sehingga layak mendapatkan skor 4. Pilihan B mencerminkan kehati-hatian, tetapi kurang menyentuh akar masalah karena tidak memberikan penyeimbang nilai yang jelas terhadap ajakan eksklusif, sehingga layak mendapatkan skor 3. Pilihan D terlalu berlebihan dan tidak proporsional karena membatasi ruang sosial secara ekstrem yang justru bisa memicu penolakan, sehingga hanya layak mendapatkan skor 2. Sementara itu, pilihan A paling tidak tepat karena sikap membiarkan dapat membuat paham eksklusif berkembang tanpa kontrol, sehingga hanya layak mendapatkan skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-27',
  110,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Dalam diskusi daring internal, Anda melihat unggahan rekan kerja yang membagikan konten provokatif berisi narasi ketidakpercayaan terhadap negara dan ajakan menarik diri dari sistem yang ada. Unggahan tersebut mendapat beberapa tanda suka, namun belum ditanggapi secara terbuka. Apa langkah paling tepat……',
  NULL,
  '{"A":"Mengabaikan unggahan tersebut agar tidak memperbesar isu.","B":"Menegur rekan tersebut secara terbuka di kolom komentar.","C":"Menyampaikan klarifikasi dan sudut pandang alternatif secara santun berbasis fakta.","D":"Melaporkan unggahan tersebut tanpa melakukan interaksi apa pun.","E":"Meminta admin menghapus unggahan tanpa penjelasan."}'::jsonb,
  '{"A":1,"B":2,"C":5,"D":4,"E":3}'::jsonb,
  'C',
  'Pilihan C merupakan jawaban paling tepat karena menunjukkan sikap dewasa dan profesional dalam menangkal narasi radikal dengan cara dialogis, berbasis fakta, dan tetap menjaga etika komunikasi tanpa mempermalukan pihak lain, sehingga layak mendapatkan skor 5. Pilihan D menunjukkan kesadaran terhadap risiko penyebaran paham bermasalah, namun bersifat reaktif dan melewatkan kesempatan edukasi langsung yang konstruktif, sehingga layak mendapatkan skor 4. Pilihan E cukup aman secara teknis, tetapi kurang mendidik karena hanya menghilangkan konten tanpa memperbaiki pemahaman, sehingga layak mendapatkan skor 3. Pilihan B tidak tepat karena berpotensi memicu konflik terbuka dan memperkeruh suasana diskusi, sehingga hanya layak mendapatkan skor 2. Sementara itu, pilihan A paling tidak tepat karena sikap diam dapat memperkuat persepsi bahwa narasi provokatif tersebut dapat diterima, sehingga hanya layak mendapatkan skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  66,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda sebagai staf administrasi rumah sakit menemukan adanya manipulasi data klaim oleh salah satu petugas untuk keuntungan pribadi. Jika dibiarkan, hal ini bisa merugikan institusi dan mencoreng reputasi pelayanan publik. Apa langkah paling profesional yang Anda lakukan?',
  NULL,
  '{"A":"Mengumpulkan bukti yang jelas lalu melaporkannya kepada manajemen sesuai prosedur resmi.","B":"Berkonsultasi dengan penasihat hukum sebelum menyampaikan laporan resmi.","C":"Mengusulkan pelatihan etika kerja agar seluruh pegawai memahami pentingnya transparansi.","D":"Mengajak tim berdiskusi untuk membangun budaya kerja yang lebih jujur dan terbuka.","E":"Mengajak yang bersangkutan berbicara secara pribadi untuk membahas perbuatannya."}'::jsonb,
  '{"A":5,"B":1,"C":4,"D":3,"E":2}'::jsonb,
  'A',
  'Manipulasi data klaim adalah pelanggaran serius terhadap integritas institusi. Semakin tegas dan sesuai prosedur langkah yang diambil, maka semakin tinggi profesionalismenya. Pilihan A paling tepat karena mengumpulkan bukti jelas lalu melaporkan sesuai prosedur menunjukkan integritas dan akuntabilitas tinggi. Ini mencerminkan nilai Akuntabel, Loyal pada institusi, dan Profesional, sehingga mendapat skor 5. Pilihan C juga sangat baik karena pelatihan etika memperkuat pencegahan jangka panjang, sehingga mendapat skor 4. Pilihan D cukup tepat karena membangun budaya jujur penting, namun belum menyelesaikan pelanggaran konkret yang terjadi, sehingga mendapat skor 3. Pilihan E menunjukkan upaya personal, tetapi berisiko jika tidak ditindaklanjuti sesuai aturan resmi, sehingga mendapat skor 2. Pilihan B paling rendah karena konsultasi hukum sebelum melapor berpotensi memperlambat tindakan pada pelanggaran yang jelas, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  67,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda baru ditunjuk sebagai koordinator relawan dalam program bantuan bencana. Anda melihat adanya perbedaan cara kerja dan miskomunikasi antaranggota tim. Jika tidak segera dibenahi, efektivitas bantuan bisa terganggu. Apa langkah yang Anda lakukan?',
  NULL,
  '{"A":"Mengirim pesan umum kepada relawan tentang pentingnya kerja sama dalam tim.","B":"Mengadakan pertemuan individu untuk memahami harapan dan kendala masing-masing anggota.","C":"Menyusun program kerja yang inklusif dan kolaboratif agar semua anggota merasa dihargai.","D":"Mengundang fasilitator luar untuk memberi arahan tentang kerja tim yang efektif.","E":"Mengadakan kegiatan kebersamaan untuk mempererat hubungan antarrelawan."}'::jsonb,
  '{"A":1,"B":3,"C":5,"D":2,"E":4}'::jsonb,
  'C',
  'Koordinator relawan harus mampu membangun sistem kerja inklusif agar bantuan tetap efektif. Semakin terstruktur dan kolaboratif program kerja yang disusun, maka semakin tinggi nilainya. Pilihan C paling tepat karena menyusun program kerja inklusif dan kolaboratif memberi arah jelas sekaligus menghargai kontribusi anggota. Ini mencerminkan nilai Kolaboratif dan Profesional, sehingga mendapat skor 5. Pilihan E juga baik karena mempererat hubungan tim mendukung kerja sama, sehingga mendapat skor 4. Pilihan B cukup tepat karena memahami kendala individu penting, namun belum membangun sistem kerja menyeluruh, sehingga mendapat skor 3. Pilihan D menghadirkan fasilitator luar dapat membantu, tetapi tidak langsung membenahi struktur internal, sehingga mendapat skor 2. Pilihan A paling rendah karena pesan umum saja tidak cukup mengatasi miskomunikasi yang kompleks, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  68,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda sebagai pengelola BUMDes ingin meningkatkan semangat kerja tim dalam mengembangkan usaha desa. Target pendapatan meningkat, namun motivasi anggota belum merata. Anda ingin menciptakan suasana kerja yang produktif dan kreatif. Apa langkah paling tepat?',
  NULL,
  '{"A":"Mendorong anggota meningkatkan keterampilan teknis agar kerja lebih produktif.","B":"Mengusulkan ide baru untuk memperbaiki sistem kerja agar hasil lebih optimal.","C":"Membuat sistem penghargaan yang adil untuk mengapresiasi kontribusi setiap anggota.","D":"Mengadakan kegiatan bersama untuk mempererat hubungan tim.","E":"Membantu anggota yang kesulitan agar pekerjaan tetap berjalan lancar."}'::jsonb,
  '{"A":1,"B":4,"C":5,"D":2,"E":3}'::jsonb,
  'C',
  'Meningkatkan motivasi tim membutuhkan sistem apresiasi yang adil dan mendorong kinerja berkelanjutan. Semakin jelas sistem penghargaan dan semakin memotivasi kontribusi, maka semakin tinggi nilainya. Pilihan C paling tepat karena membuat sistem penghargaan yang adil mendorong semangat kerja dan produktivitas. Ini mencerminkan nilai Profesional dan kepemimpinan yang adil, sehingga mendapat skor 5. Pilihan B juga sangat baik karena memperbaiki sistem kerja meningkatkan efektivitas, sehingga mendapat skor 4. Pilihan E cukup tepat karena membantu anggota yang kesulitan menjaga stabilitas kerja, sehingga mendapat skor 3. Pilihan D mempererat hubungan tim, namun belum langsung meningkatkan produktivitas, sehingga mendapat skor 2. Pilihan A paling rendah karena peningkatan keterampilan teknis saja tidak otomatis menaikkan motivasi secara menyeluruh, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  69,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda sebagai kepala unit pelayanan pajak daerah menghadapi lonjakan wajib pajak yang datang bersamaan. Beberapa pegawai terlihat kewalahan sementara yang lain mampu beradaptasi. Anda ingin menjaga semangat kerja tim agar pelayanan tetap optimal. Apa langkah paling tepat?',
  NULL,
  '{"A":"Menyediakan sesi konsultasi pribadi bagi pegawai yang merasa terbebani.","B":"Mengadakan pertemuan terbuka untuk menjelaskan situasi dan menyepakati solusi bersama.","C":"Mengadakan diskusi kecil untuk membagi beban kerja secara lebih merata.","D":"Menyusun pedoman kerja baru tanpa perlu pembahasan tambahan dengan tim.","E":"Membagikan panduan manajemen waktu agar pegawai dapat mengatur pekerjaan lebih baik."}'::jsonb,
  '{"A":4,"B":5,"C":3,"D":1,"E":2}'::jsonb,
  'B',
  'Lonjakan wajib pajak membutuhkan kepemimpinan yang transparan dan kolaboratif agar tim tetap solid. Semakin terbuka komunikasi dan semakin disepakati solusi bersama, maka semakin tinggi nilainya. Pilihan B paling tepat karena mengadakan pertemuan terbuka untuk menjelaskan situasi dan menyepakati solusi bersama memperkuat solidaritas dan rasa tanggung jawab kolektif. Ini mencerminkan nilai Kolaboratif, Akuntabel, dan profesionalisme kepemimpinan, sehingga mendapat skor 5. Pilihan A juga sangat baik karena menyediakan sesi konsultasi pribadi membantu pegawai yang terbebani, sehingga mendapat skor 4. Pilihan C cukup tepat karena membagi beban kerja secara merata membantu stabilitas operasional, sehingga mendapat skor 3. Pilihan E memberi panduan manajemen waktu yang bermanfaat, namun tidak menyentuh koordinasi tim secara menyeluruh, sehingga mendapat skor 2. Pilihan D paling rendah karena menyusun pedoman baru tanpa pembahasan tim berpotensi menurunkan rasa memiliki terhadap kebijakan tersebut, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  70,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda sebagai koordinator perpustakaan daerah mengetahui beberapa petugas menggunakan ruang baca dan komputer layanan untuk keperluan pribadi setelah jam operasional tanpa izin resmi. Jika dibiarkan, kebiasaan ini bisa menurunkan disiplin kerja dan merusak fasilitas publik. Apa langkah paling tepat yang Anda lakukan?',
  NULL,
  '{"A":"Mengumpulkan bukti penggunaan fasilitas lalu melaporkannya kepada pimpinan sesuai aturan yang berlaku.","B":"Mengimbau seluruh petugas agar lebih bijak dalam menggunakan fasilitas perpustakaan.","C":"Mengusulkan sistem pengawasan tambahan agar penggunaan fasilitas lebih terkontrol.","D":"Mengajukan perubahan aturan agar penggunaan fasilitas di luar jam kerja lebih dibatasi.","E":"Mengingatkan secara langsung petugas yang terlibat tentang aturan penggunaan fasilitas."}'::jsonb,
  '{"A":5,"B":2,"C":4,"D":1,"E":3}'::jsonb,
  'A',
  'Dalam konteks fasilitas publik, profesionalisme berarti menjaga aset negara secara akuntabel dan menegakkan aturan secara konsisten agar disiplin kerja tidak menurun. Semakin tegas langkah yang diambil sesuai prosedur dan semakin kuat efek jera serta pencegahannya, maka semakin tinggi nilainya. Pilihan A paling tepat karena mengumpulkan bukti lalu melaporkan sesuai aturan menunjukkan penanganan yang objektif, terukur, dan akuntabel sehingga tidak berbasis asumsi. Ini mencerminkan nilai Akuntabel dan Profesional, sehingga mendapat skor 5. Pilihan C juga sangat baik karena mengusulkan sistem pengawasan tambahan memperkuat pencegahan jangka panjang, sehingga mendapat skor 4. Pilihan E cukup tepat karena mengingatkan langsung petugas terkait dapat menghentikan perilaku cepat, namun dampak pencegahannya terbatas bila tidak dibarengi mekanisme formal, sehingga mendapat skor 3. Pilihan B menunjukkan upaya umum membangun kesadaran, tetapi terlalu luas dan kurang menargetkan perilaku yang sudah terjadi, sehingga mendapat skor 2. Pilihan D paling rendah karena mengubah aturan agar lebih dibatasi cenderung reaktif dan belum menyelesaikan pelanggaran yang sudah berlangsung serta belum tentu menjadi solusi paling proporsional, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  71,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda sebagai supervisor operasional bandara melihat salah satu petugas sering terlambat membuat laporan penerbangan dan kurang disiplin dalam prosedur keselamatan. Kondisi ini berisiko mengganggu standar keamanan. Apa tindakan paling tepat yang Anda ambil?',
  NULL,
  '{"A":"Memberi kesempatan kepada petugas menjelaskan kendala sebelum menentukan langkah perbaikan.","B":"Menyediakan pelatihan manajemen waktu agar petugas dapat bekerja lebih teratur.","C":"Mengadakan pertemuan pribadi untuk membahas masalah dan memberi arahan agar disiplin kerja meningkat.","D":"Mengajak seluruh tim meningkatkan koordinasi agar standar keselamatan terjaga bersama.","E":"Memberikan teguran resmi tanpa dialog lanjutan agar menjadi pelajaran bagi yang lain."}'::jsonb,
  '{"A":4,"B":3,"C":5,"D":2,"E":1}'::jsonb,
  'C',
  'Dalam operasional bandara, disiplin laporan dan kepatuhan prosedur keselamatan adalah standar kritis yang tidak bisa ditawar. Penanganan terbaik adalah yang langsung menyasar perilaku bermasalah, memberi arahan jelas, dan memastikan perbaikan terukur. Pilihan C paling tepat karena pertemuan pribadi untuk membahas masalah dan memberi arahan membangun akuntabilitas individu sekaligus memberi ruang pembinaan yang tegas dan manusiawi. Ini mencerminkan nilai Profesional, Kompeten, dan Akuntabel, sehingga mendapat skor 5. Pilihan A juga sangat baik karena memberi kesempatan menjelaskan kendala membantu menemukan akar masalah sebelum tindakan lanjutan, sehingga mendapat skor 4. Pilihan B cukup tepat karena pelatihan manajemen waktu dapat membantu, namun tidak selalu menyelesaikan unsur disiplin prosedur keselamatan yang lebih mendasar, sehingga mendapat skor 3. Pilihan D menekankan koordinasi tim yang penting, tetapi masalah utamanya adalah perilaku individu yang perlu ditangani lebih spesifik, sehingga mendapat skor 2. Pilihan E paling rendah karena teguran resmi tanpa dialog berisiko tidak menyentuh akar masalah dan dapat memicu resistensi tanpa perbaikan perilaku yang berkelanjutan, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  72,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda sebagai kepala tim pelayanan rumah sakit mendapati salah satu perawat sering mengubah jadwal pelayanan tanpa koordinasi sehingga membingungkan pasien dan rekan kerja. Jika tidak segera ditangani, mutu layanan bisa menurun. Apa langkah paling tepat?',
  NULL,
  '{"A":"Mengajak perawat tersebut berdiskusi secara pribadi tentang pentingnya koordinasi dalam pelayanan.","B":"Memberi kesempatan perawat menjelaskan alasan perubahan jadwal sebelum mengambil keputusan.","C":"Mengadakan pertemuan tim untuk menyelaraskan kembali pembagian tugas pelayanan.","D":"Menyusun pedoman kerja yang lebih rinci agar semua mengikuti alur yang sama.","E":"Mengimbau tim agar saling mendukung tanpa membahas persoalan secara langsung."}'::jsonb,
  '{"A":5,"B":4,"C":3,"D":2,"E":1}'::jsonb,
  'A',
  'Dalam pelayanan rumah sakit, perubahan jadwal tanpa koordinasi berdampak langsung pada pasien dan sistem kerja tim. Profesionalisme menuntut klarifikasi cepat, komunikasi yang tepat, dan pembinaan agar perilaku tidak terulang. Pilihan A paling tepat karena mengajak diskusi pribadi tentang pentingnya koordinasi menyasar akar masalah secara langsung, menjaga martabat pihak terkait, dan memperbaiki perilaku dengan cara yang konstruktif. Ini mencerminkan nilai Harmonis, Akuntabel, dan Profesional, sehingga mendapat skor 5. Pilihan B juga sangat baik karena memberi kesempatan menjelaskan alasan menunjukkan objektivitas sebelum keputusan, sehingga mendapat skor 4. Pilihan C cukup tepat karena menyelaraskan tugas tim membantu memperjelas alur kerja, namun belum tentu menyelesaikan kebiasaan individu yang menyebabkan gangguan, sehingga mendapat skor 3. Pilihan D memberi pedoman rinci yang bermanfaat, tetapi lebih bersifat administratif dan bisa lambat jika kasus perlu ditangani segera, sehingga mendapat skor 2. Pilihan E paling rendah karena imbauan umum tanpa membahas persoalan inti berisiko membuat masalah berulang dan mutu layanan tetap terganggu, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  73,
  'TKP',
  'Profesionalisme',
  'sedang',
  'Anda sebagai peneliti di lembaga riset pemerintah mendapat tambahan proyek penelitian di tengah tanggung jawab keluarga yang cukup padat. Anda ingin tetap menjaga kinerja profesional tanpa mengabaikan kehidupan pribadi. Apa langkah paling tepat yang Anda lakukan?',
  NULL,
  '{"A":"Meminta rekan kerja mengambil sebagian tugas agar beban Anda berkurang.","B":"Berdiskusi dengan pimpinan untuk mengatur kembali prioritas proyek agar lebih realistis.","C":"Menyelesaikan pekerjaan tambahan di luar jam kerja agar tanggung jawab utama tetap terpenuhi.","D":"Memprioritaskan pekerjaan dan menunda urusan pribadi sementara waktu.","E":"Menyusun jadwal kerja yang teratur dan disiplin membagi waktu antara proyek dan keluarga."}'::jsonb,
  '{"A":1,"B":4,"C":3,"D":2,"E":5}'::jsonb,
  'E',
  'Profesionalisme juga mencakup kemampuan mengelola prioritas dan menjaga keseimbangan kerja serta kehidupan pribadi secara bertanggung jawab. Semakin mandiri seseorang mengatur waktu dan semakin konsisten menjaga kualitas hasil kerja, maka semakin tinggi nilainya. Pilihan E paling tepat karena menyusun jadwal kerja teratur dan disiplin membagi waktu antara proyek dan keluarga menunjukkan pengendalian diri, perencanaan, dan komitmen terhadap kualitas kinerja. Ini mencerminkan nilai Akuntabel dan Profesional, sehingga mendapat skor 5. Pilihan B juga sangat baik karena berdiskusi dengan pimpinan untuk mengatur prioritas proyek menunjukkan komunikasi profesional dan manajemen ekspektasi yang sehat, sehingga mendapat skor 4. Pilihan C cukup tepat karena menyelesaikan tambahan kerja di luar jam kerja dapat menjaga target, namun bila menjadi kebiasaan berisiko menurunkan keseimbangan jangka panjang, sehingga mendapat skor 3. Pilihan D menunda urusan pribadi sementara waktu menunjukkan fokus kerja, tetapi kurang sehat dan berpotensi menurunkan stabilitas jangka panjang, sehingga mendapat skor 2. Pilihan A paling rendah karena langsung meminta rekan mengambil sebagian tugas tanpa dasar pembagian yang jelas dapat melemahkan akuntabilitas pribadi, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  74,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda sebagai kepala unit teknologi informasi di sebuah instansi pemerintah memiliki anggaran terbatas untuk meningkatkan keamanan sistem. Di sisi lain, pegawai juga masih kurang memahami risiko keamanan data. Anda harus memilih langkah yang paling bijak agar sistem tetap aman dan pegawai juga lebih sadar akan risiko digital. Apa yang Anda lakukan?',
  NULL,
  '{"A":"Menggunakan seluruh anggaran untuk memperbarui sistem keamanan agar risiko serangan siber dapat ditekan.","B":"Menyusun rencana bertahap dengan memprioritaskan pelatihan kesadaran keamanan sambil memperbarui sistem secara perlahan.","C":"Memberikan pelatihan keamanan kepada pegawai terlebih dahulu dan menunda pembaruan sistem sementara waktu.","D":"Membagi anggaran untuk memperbarui sistem penting sekaligus mengadakan pelatihan dasar keamanan informasi.","E":"Mengajukan tambahan anggaran agar pembaruan sistem dan pelatihan dapat dilakukan bersamaan di masa depan."}'::jsonb,
  '{"A":3,"B":4,"C":2,"D":5,"E":1}'::jsonb,
  'D',
  'Dalam pengelolaan keamanan sistem dengan anggaran terbatas, pendekatan paling efektif adalah yang seimbang antara aspek teknis dan kesadaran pengguna. Semakin komprehensif solusi yang dipilih dan semakin langsung mengurangi risiko sistemik, maka semakin tinggi nilainya. Pilihan D paling tepat karena membagi anggaran untuk memperbarui sistem penting sekaligus mengadakan pelatihan dasar keamanan menciptakan perlindungan berlapis. Ini mencerminkan nilai Kompeten, Akuntabel, dan pengelolaan risiko yang rasional, sehingga mendapat skor 5. Pilihan B juga sangat baik karena menyusun rencana bertahap dengan prioritas pelatihan menunjukkan perencanaan strategis, sehingga mendapat skor 4. Pilihan A cukup tepat karena pembaruan sistem penting, tetapi tanpa peningkatan kesadaran pegawai risiko tetap ada, sehingga mendapat skor 3. Pilihan C berfokus pada pelatihan saja tanpa pembaruan sistem yang rentan, sehingga mendapat skor 2. Pilihan E paling rendah karena hanya mengajukan tambahan anggaran tanpa solusi segera kurang responsif terhadap kondisi mendesak, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  75,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda sebagai kepala tim proyek digital di sebuah instansi pemerintah sedang menyiapkan program sosialisasi daring skala nasional. Tim Anda bekerja dari lokasi yang berbeda sehingga koordinasi harus berjalan rapi dan terpantau. Anda perlu memilih cara paling efektif memanfaatkan aplikasi kolaborasi agar komunikasi lancar dan target tercapai. Apa langkah yang Anda ambil?',
  NULL,
  '{"A":"Menjadwalkan pertemuan rutin melalui aplikasi untuk memantau perkembangan dan membahas kendala secara berkala.","B":"Mengaktifkan notifikasi otomatis agar setiap perubahan informasi dapat segera diketahui seluruh anggota tim.","C":"Menggunakan aplikasi yang memungkinkan tim berbagi dan mengedit dokumen secara langsung agar pekerjaan lebih terintegrasi.","D":"Memilih aplikasi dengan fitur pembagian tugas dan pengingat agar setiap anggota menyelesaikan pekerjaan tepat waktu.","E":"Mengadakan pelatihan singkat penggunaan aplikasi agar semua anggota memahami cara kerja dan fitur yang tersedia."}'::jsonb,
  '{"A":4,"B":2,"C":5,"D":3,"E":1}'::jsonb,
  'C',
  'Pilihan C paling tepat karena menggunakan aplikasi yang memungkinkan berbagi dan mengedit dokumen secara langsung membuat pekerjaan tim yang tersebar di berbagai lokasi tetap terintegrasi dalam satu sistem, meminimalkan kesalahan versi, mempercepat revisi, dan memastikan semua anggota bekerja pada data yang sama sehingga koordinasi menjadi efektif dan target lebih mudah tercapai sehingga layak mendapat skor 5, pilihan A cukup kuat karena pertemuan rutin membantu memantau progres dan menyelesaikan kendala namun masih bergantung pada komunikasi verbal dan belum tentu mengatasi persoalan integrasi dokumen sehingga layak mendapat skor 4, pilihan D membantu menjaga kedisiplinan melalui pembagian tugas dan pengingat tetapi tidak secara langsung menjamin kelancaran arus informasi dan kolaborasi konten sehingga layak mendapat skor 3, pilihan B hanya bersifat pendukung dalam penyampaian informasi dan kurang menyentuh manajemen kerja secara menyeluruh sehingga layak mendapat skor 2, sedangkan pilihan E penting sebagai langkah awal namun bukan strategi utama dalam memastikan efektivitas kolaborasi proyek sehingga layak mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  76,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda mengikuti seminar daring tentang perkembangan kecerdasan buatan dan mendapat penjelasan bahwa teknologi tersebut akan terus berkembang pesat di berbagai bidang. Informasi yang disampaikan cukup umum dan membuka banyak kemungkinan baru. Agar pemahaman Anda tidak berhenti pada satu sudut pandang saja, apa sikap yang Anda ambil?',
  NULL,
  '{"A":"Menerima penjelasan tersebut sebagai informasi dasar tanpa mencari sumber tambahan lainnya.","B":"Meminta pembicara mengubah penjelasan karena Anda kurang sepakat dengan gambaran masa depan AI.","C":"Mencari referensi lain seperti artikel dan jurnal agar pemahaman tentang AI menjadi lebih luas dan mendalam.","D":"Menyampaikan pendapat berbeda dalam forum diskusi untuk memperkaya sudut pandang peserta lain.","E":"Mengakhiri diskusi lebih awal karena merasa informasi yang diberikan belum sesuai harapan."}'::jsonb,
  '{"A":3,"B":1,"C":5,"D":4,"E":2}'::jsonb,
  'C',
  'Dalam menghadapi perkembangan teknologi seperti kecerdasan buatan, sikap adaptif dan terbuka terhadap berbagai sumber informasi sangat penting. Semakin luas referensi yang dicari dan semakin kritis pemahaman yang dibangun, maka semakin tinggi nilainya. Pilihan C paling tepat karena mencari referensi tambahan seperti artikel dan jurnal memperkaya sudut pandang dan memperdalam pemahaman. Ini mencerminkan nilai Kompeten dan Adaptif, sehingga mendapat skor 5. Pilihan D juga baik karena menyampaikan pendapat berbeda dalam forum memperkaya diskusi, sehingga mendapat skor 4. Pilihan A cukup tepat karena menerima informasi sebagai dasar, tetapi kurang menunjukkan eksplorasi lanjutan, sehingga mendapat skor 3. Pilihan E menunjukkan sikap kurang terbuka terhadap diskusi, sehingga mendapat skor 2. Pilihan B paling rendah karena meminta pembicara mengubah penjelasan hanya karena kurang sepakat menunjukkan kurangnya sikap terbuka terhadap perbedaan perspektif, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  77,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda adalah pegawai baru di unit pengelola sistem informasi sebuah instansi pemerintah. Anda mendapat informasi tentang forum diskusi nasional mengenai keamanan data pemerintahan. Anda tertarik ikut, tetapi merasa kemampuan Anda masih terbatas dibanding peserta lain. Apa sikap yang Anda ambil?',
  NULL,
  '{"A":"Mengikuti forum sebagai peserta pasif terlebih dahulu untuk memahami dasar pembahasan tanpa banyak terlibat diskusi.","B":"Menghubungi panitia untuk meminta bahan awal agar Anda merasa lebih siap sebelum mengikuti forum tersebut.","C":"Bergabung lebih dulu dengan komunitas diskusi daring agar mendapat gambaran awal sebelum hadir dalam forum resmi.","D":"Mengajak rekan kerja ikut bersama agar Anda merasa lebih percaya diri saat mengikuti kegiatan tersebut.","E":"Mendaftar sebagai peserta aktif dan menyiapkan beberapa pertanyaan agar pemahaman Anda tentang keamanan data semakin meningkat."}'::jsonb,
  '{"A":3,"B":2,"C":4,"D":1,"E":5}'::jsonb,
  'E',
  'Sebagai pegawai baru, keberanian belajar aktif dan membangun kepercayaan diri melalui partisipasi menjadi kunci pengembangan kompetensi. Semakin proaktif dan semakin siap berkontribusi, maka semakin tinggi nilainya. Pilihan E paling tepat karena mendaftar sebagai peserta aktif dan menyiapkan pertanyaan menunjukkan inisiatif serta komitmen belajar. Ini mencerminkan nilai Kompeten dan Adaptif, sehingga mendapat skor 5. Pilihan C juga baik karena bergabung dengan komunitas daring memberi gambaran awal yang memperkuat kesiapan, sehingga mendapat skor 4. Pilihan A cukup tepat karena hadir sebagai peserta pasif tetap memberi pengalaman belajar, namun kurang maksimal dalam eksplorasi, sehingga mendapat skor 3. Pilihan B menunjukkan persiapan administratif, tetapi belum tentu meningkatkan keberanian terlibat aktif, sehingga mendapat skor 2. Pilihan D paling rendah karena bergantung pada rekan kerja untuk kepercayaan diri kurang menunjukkan kemandirian profesional, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  78,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda adalah kepala unit teknologi di sebuah dinas yang sistem pelayanannya mulai lambat karena jumlah pengguna meningkat tajam. Jika tidak segera diatasi, masyarakat bisa kesulitan mengakses layanan digital yang tersedia. Anda harus memilih langkah paling tepat agar sistem tetap stabil dan responsif. Apa yang Anda lakukan?',
  NULL,
  '{"A":"Mengaktifkan pemantauan sistem secara langsung untuk mendeteksi gangguan sebelum berdampak luas.","B":"Menggunakan layanan cadangan dari pihak luar yang diaktifkan saat sistem utama mencapai batas maksimal.","C":"Meningkatkan kapasitas server dan penyimpanan agar sistem mampu menampung lonjakan akses pengguna.","D":"Memberikan pelatihan kepada tim agar dapat mengoptimalkan sistem yang sudah ada secara lebih efisien.","E":"Menerapkan sistem pembagi beban akses agar lalu lintas data terbagi merata dan tidak menumpuk pada satu server."}'::jsonb,
  '{"A":3,"B":1,"C":4,"D":2,"E":5}'::jsonb,
  'E',
  'Lonjakan pengguna pada layanan digital membutuhkan solusi teknis yang langsung menyasar kestabilan sistem. Semakin sistematis dan semakin menyentuh akar masalah beban akses, maka semakin tinggi nilainya. Pilihan E paling tepat karena menerapkan sistem pembagi beban akses memastikan lalu lintas data terbagi merata sehingga mencegah penumpukan pada satu server. Ini mencerminkan nilai Kompeten dan pengelolaan sistem yang efektif, sehingga mendapat skor 5. Pilihan C juga sangat baik karena meningkatkan kapasitas server memperkuat daya tampung sistem, sehingga mendapat skor 4. Pilihan A cukup tepat karena pemantauan langsung membantu deteksi dini gangguan, namun belum menyelesaikan lonjakan kapasitas, sehingga mendapat skor 3. Pilihan D berfokus pada optimalisasi tim, tetapi masalah utama adalah beban sistem teknis, sehingga mendapat skor 2. Pilihan B paling rendah karena mengandalkan layanan cadangan luar berpotensi meningkatkan biaya tanpa memperbaiki sistem inti, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  79,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda sebagai operator sistem di sebuah dinas sedang memimpin peluncuran layanan administrasi daring yang diakses ratusan warga secara langsung. Saat proses demonstrasi berlangsung, sistem tiba-tiba tidak dapat menampilkan data dengan benar. Jika tidak segera ditangani, kepercayaan masyarakat bisa menurun. Apa langkah paling tepat yang Anda lakukan?',
  NULL,
  '{"A":"Menggunakan sistem cadangan yang sudah disiapkan sebelumnya agar kegiatan tetap berlangsung tanpa gangguan berarti.","B":"Menghubungi tim teknis untuk membantu mengatasi gangguan sambil tetap memberi penjelasan kepada peserta.","C":"Menghentikan kegiatan dan meminta peserta menunggu sampai permasalahan benar-benar selesai diperbaiki.","D":"Menyampaikan permohonan maaf kepada peserta dan mencoba memperbaiki sistem secara langsung agar layanan tetap berjalan.","E":"Menunda peluncuran layanan dan menjadwalkan ulang setelah memastikan sistem benar-benar stabil."}'::jsonb,
  '{"A":5,"B":4,"C":2,"D":3,"E":1}'::jsonb,
  'A',
  'Dalam situasi gangguan sistem saat peluncuran layanan, respons cepat dan kesiapan cadangan menjadi penentu kepercayaan publik. Semakin minim gangguan yang dirasakan pengguna dan semakin profesional penanganannya, maka semakin tinggi nilainya. Pilihan A paling tepat karena menggunakan sistem cadangan yang telah disiapkan menunjukkan manajemen risiko yang matang dan menjaga kelangsungan layanan. Ini mencerminkan nilai Akuntabel dan Kompeten, sehingga mendapat skor 5. Pilihan B juga sangat baik karena melibatkan tim teknis sambil memberi penjelasan kepada peserta menunjukkan transparansi, sehingga mendapat skor 4. Pilihan D cukup tepat karena mencoba memperbaiki langsung disertai permohonan maaf, namun berisiko jika solusi belum stabil, sehingga mendapat skor 3. Pilihan C menunjukkan sikap hati-hati tetapi menghentikan kegiatan dapat menurunkan kepercayaan publik, sehingga mendapat skor 2. Pilihan E paling rendah karena menunda peluncuran sepenuhnya menunjukkan kurangnya kesiapan mitigasi risiko, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  80,
  'TKP',
  'Teknologi Informasi dan Komunikasi',
  'sedang',
  'Anda baru ditempatkan di unit pengolahan data sebuah instansi pemerintah. Setelah beberapa hari bekerja, Anda menyadari perangkat pribadi yang Anda gunakan tidak mampu menjalankan aplikasi resmi yang dibutuhkan untuk tugas harian. Kondisi ini membuat pekerjaan menjadi lambat dan kurang optimal. Apa langkah paling tepat yang Anda lakukan?',
  NULL,
  '{"A":"Menggunakan perangkat dengan spesifikasi yang sesuai agar pekerjaan dapat diselesaikan secara maksimal dan profesional.","B":"Tetap menggunakan perangkat yang ada meskipun membutuhkan waktu lebih lama dalam menyelesaikan tugas.","C":"Mengajukan permohonan kepada atasan untuk mendapatkan dukungan fasilitas kerja yang lebih memadai.","D":"Meminjam perangkat rekan kerja setiap kali mengalami kendala agar pekerjaan tetap dapat diselesaikan.","E":"Menghubungi tim IT untuk meminta solusi sementara menggunakan fasilitas perangkat kantor yang tersedia."}'::jsonb,
  '{"A":5,"B":1,"C":3,"D":2,"E":4}'::jsonb,
  'A',
  'Profesionalisme dalam pekerjaan digital menuntut penggunaan perangkat yang sesuai standar agar hasil kerja optimal dan aman. Semakin memastikan kesiapan sarana kerja yang memadai, maka semakin tinggi nilainya. Pilihan A paling tepat karena menggunakan perangkat dengan spesifikasi sesuai menjamin kualitas dan efisiensi kerja secara maksimal. Ini mencerminkan nilai Kompeten dan Profesional, sehingga mendapat skor 5. Pilihan E juga sangat baik karena menghubungi tim IT untuk solusi sementara menunjukkan tanggung jawab dan koordinasi, sehingga mendapat skor 4. Pilihan C cukup tepat karena mengajukan dukungan fasilitas merupakan langkah formal yang rasional, sehingga mendapat skor 3. Pilihan D menunjukkan solusi praktis tetapi berpotensi mengganggu pekerjaan rekan kerja, sehingga mendapat skor 2. Pilihan B paling rendah karena tetap menggunakan perangkat yang tidak memadai berisiko menurunkan kualitas kinerja, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  81,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda ditugaskan mengoordinasikan kerja sama beberapa pihak dalam program pengembangan usaha warga di suatu daerah. Setiap calon mitra menawarkan cara kerja dan manfaat yang berbeda. Keputusan Anda harus memberi manfaat nyata dan bisa berjalan dalam jangka panjang. Sikap yang paling tepat adalah …',
  NULL,
  '{"A":"Memilih mitra yang menawarkan biaya paling rendah agar program bisa segera dilaksanakan sesuai anggaran.","B":"Menentukan mitra yang menawarkan konsep paling baru supaya program terlihat lebih menarik dan modern.","C":"Bekerja sama dengan mitra yang berkomitmen memberi manfaat jangka panjang bagi warga dan lingkungan sekitar.","D":"Menyetujui mitra yang memberi keuntungan pribadi karena dinilai dapat memperlancar pelaksanaan program.","E":"Menggandeng mitra yang sudah sering bekerja sama karena dianggap lebih aman dan minim hambatan."}'::jsonb,
  '{"A":2,"B":4,"C":5,"D":1,"E":3}'::jsonb,
  'C',
  'Dalam membangun jejaring kerja, ukuran keberhasilan bukan hanya pada cepat terlaksananya program, tetapi pada besarnya manfaat yang dirasakan masyarakat serta keberlanjutan dampaknya. Semakin luas kontribusi yang diberikan mitra dan semakin kuat komitmen jangka panjangnya, maka semakin tinggi nilainya. Pilihan C paling tepat karena menekankan komitmen manfaat jangka panjang bagi warga dan lingkungan sekitar. Ini mencerminkan nilai Kolaboratif, Berorientasi Pelayanan, dan Akuntabel, sebab keputusan diambil berdasarkan dampak strategis bukan kepentingan sesaat, sehingga mendapat skor 5. Pilihan B juga baik karena mempertimbangkan inovasi dan pembaruan konsep agar program lebih menarik, mencerminkan sikap Adaptif, namun belum tentu menjamin keberlanjutan manfaat yang konkret, sehingga mendapat skor 4. Pilihan E cukup rasional karena mempertimbangkan pengalaman kerja sama sebelumnya demi stabilitas pelaksanaan, tetapi cenderung aman tanpa analisis kontribusi yang lebih luas, sehingga mendapat skor 3. Pilihan A berorientasi pada efisiensi biaya yang penting dalam pengelolaan anggaran, namun terlalu sempit karena tidak menilai kualitas dampak program secara menyeluruh, sehingga mendapat skor 2. Pilihan D paling lemah karena berorientasi pada keuntungan pribadi dan tidak mencerminkan integritas serta nilai Akuntabel dan Loyal, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  82,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda sebagai kepala dinas pendidikan ingin membuat program praktik kerja bagi siswa SMK agar mereka siap masuk dunia kerja setelah lulus. Beberapa perusahaan tertarik bekerja sama, namun masing-masing memiliki kebutuhan dan pola kerja yang berbeda. Anda ingin program ini benar-benar memberi manfaat nyata bagi siswa dan berjalan dalam jangka panjang. Langkah yang paling tepat adalah …',
  NULL,
  '{"A":"Menghubungi beberapa perusahaan besar untuk membuat program praktik bersama yang dapat menampung siswa dari berbagai jurusan.","B":"Mendorong para guru meningkatkan kemampuan teknis siswa agar mereka lebih siap ketika diterima praktik di perusahaan.","C":"Menyusun pelatihan tambahan di sekolah sebelum praktik agar siswa memiliki bekal keterampilan dasar yang cukup.","D":"Menjalin kerja sama dengan perusahaan yang sudah dekat dengan Anda agar program lebih mudah dijalankan tanpa banyak penyesuaian.","E":"Mengadakan pertemuan dengan pihak perusahaan untuk memahami kebutuhan mereka lalu menyesuaikan program agar sesuai dengan standar dunia kerja."}'::jsonb,
  '{"A":4,"B":3,"C":2,"D":1,"E":5}'::jsonb,
  'E',
  'Jejaring kerja dalam bidang pendidikan harus dibangun dengan prinsip keselarasan antara kebutuhan industri dan kesiapan siswa agar manfaatnya nyata serta berkelanjutan. Semakin besar dampak terhadap kesiapan siswa menghadapi dunia kerja dan semakin kuat sinergi dengan mitra, maka semakin tinggi nilainya. Pilihan E paling tepat karena menunjukkan langkah strategis membangun komunikasi dua arah dengan perusahaan untuk memahami kebutuhan mereka lalu menyesuaikan program sesuai standar industri. Ini mencerminkan nilai Kolaboratif, Kompeten, dan Berorientasi Pelayanan, sehingga mendapat skor 5. Pilihan A juga baik karena memperluas akses dengan melibatkan perusahaan besar sehingga peluang praktik meningkat, namun belum tentu memastikan kesesuaian kompetensi secara mendalam, sehingga mendapat skor 4. Pilihan B menunjukkan upaya peningkatan kualitas guru sebagai faktor pendukung, namun masih bersifat internal dan belum memperkuat kemitraan strategis secara langsung, sehingga mendapat skor 3. Pilihan C berfokus pada pelatihan tambahan di sekolah yang bermanfaat bagi kesiapan siswa, tetapi belum menyentuh keselarasan kebutuhan industri sebagai mitra utama, sehingga mendapat skor 2. Pilihan D paling lemah karena didasarkan pada kedekatan personal, bukan pertimbangan profesional dan kebutuhan program, sehingga tidak mencerminkan nilai Akuntabel dan Profesional, dan mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  83,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda bekerja sebagai desainer grafis lepas dan ingin mengembangkan karier agar mendapat proyek yang lebih besar. Anda mendapat informasi tentang beberapa kegiatan yang bisa diikuti untuk menambah relasi dan wawasan. Waktu dan biaya Anda terbatas sehingga harus memilih satu yang paling berdampak untuk perkembangan jangka panjang. Apa yang Anda lakukan?',
  NULL,
  '{"A":"Mengikuti kegiatan yang membahas teknik komunikasi dengan klien agar kerja sama berjalan lebih lancar dan profesional.","B":"Menghadiri kegiatan yang mempertemukan banyak profesional sehingga bisa membangun relasi kerja jangka panjang.","C":"Menunda mengikuti kegiatan apa pun dan memilih fokus menyelesaikan proyek yang sedang berjalan saat ini.","D":"Mendaftar kegiatan yang membahas tren terbaru di bidang desain agar karya Anda tetap relevan dengan pasar.","E":"Mengikuti kegiatan yang memberi kesempatan memamerkan karya pribadi agar lebih dikenal oleh peserta lain."}'::jsonb,
  '{"A":4,"B":5,"C":1,"D":3,"E":2}'::jsonb,
  'B',
  'Dalam konteks pengembangan karier profesional lepas, jejaring kerja yang kuat menjadi modal utama untuk memperoleh proyek berkelanjutan. Semakin luas relasi strategis yang dibangun dan semakin besar peluang kolaborasi jangka panjangnya, maka semakin tinggi nilainya. Pilihan B paling tepat karena menghadiri kegiatan yang mempertemukan banyak profesional membuka peluang relasi kerja jangka panjang serta memperluas akses proyek besar. Hal ini mencerminkan nilai Kolaboratif dan berpikir strategis dalam pengembangan karier, sehingga mendapat skor 5. Pilihan A juga baik karena meningkatkan kemampuan komunikasi dengan klien yang mendukung profesionalisme kerja, namun dampaknya lebih pada peningkatan kualitas individu daripada perluasan jaringan luas, sehingga mendapat skor 4. Pilihan D berorientasi pada pembaruan tren desain yang penting untuk kompetensi teknis dan mencerminkan sikap Kompeten, tetapi tidak secara langsung memperluas jejaring relasi, sehingga mendapat skor 3. Pilihan E memberi peluang promosi diri melalui pameran karya, namun sifatnya lebih pada eksposur sesaat dibanding pembangunan relasi profesional yang mendalam, sehingga mendapat skor 2. Pilihan C paling rendah karena menunda pengembangan jejaring demi fokus proyek saat ini sehingga berisiko menghambat pertumbuhan jangka panjang, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  84,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda sebagai koordinator program di sebuah perusahaan rintisan sedang menyiapkan rencana kerja baru untuk meningkatkan penjualan. Sebelum mengambil keputusan, Anda perlu mengevaluasi kinerja tim dan menentukan langkah selanjutnya. Keputusan yang diambil akan memengaruhi target perusahaan dalam beberapa bulan ke depan. Apa langkah yang paling tepat Anda lakukan?',
  NULL,
  '{"A":"Menyusun agenda rapat yang jelas dan terarah agar pembahasan fokus pada evaluasi dan rencana kerja berikutnya.","B":"Menyusun laporan evaluasi sendiri tanpa rapat agar proses pengambilan keputusan dapat berjalan lebih cepat.","C":"Mengundang beberapa anggota tim yang paling memahami proyek untuk memberi pertimbangan sebelum menentukan keputusan.","D":"Mengundang seluruh anggota tim dalam rapat agar setiap orang dapat memberi masukan dan keputusan diambil secara terbuka.","E":"Meminta setiap anggota menyiapkan usulan strategi tertulis lalu membahasnya bersama pimpinan perusahaan."}'::jsonb,
  '{"A":4,"B":1,"C":3,"D":5,"E":2}'::jsonb,
  'D',
  'Sebagai koordinator program di perusahaan rintisan, keputusan strategis harus mempertimbangkan keterlibatan tim karena dampaknya memengaruhi target beberapa bulan ke depan. Dalam jejaring kerja internal, semakin luas partisipasi dan semakin terbuka proses pengambilan keputusan, maka semakin besar kualitas keputusan serta komitmen pelaksanaannya. Pilihan D paling tepat karena mengundang seluruh anggota tim dalam rapat memberi ruang partisipasi terbuka sehingga setiap orang dapat menyampaikan perspektifnya. Ini mencerminkan nilai Kolaboratif, Akuntabel, dan Berorientasi Pelayanan terhadap tujuan organisasi, sehingga mendapat skor 5. Pilihan A juga baik karena menyusun agenda yang jelas menunjukkan profesionalisme dan efektivitas rapat, namun belum tentu menjamin keterlibatan menyeluruh jika partisipasi tidak ditekankan, sehingga mendapat skor 4. Pilihan C cukup tepat karena melibatkan anggota yang paling memahami proyek sehingga diskusi tetap fokus dan berkualitas, tetapi ruang partisipasinya lebih terbatas, sehingga mendapat skor 3. Pilihan E menunjukkan upaya sistematis dengan usulan tertulis, namun pembahasan hanya bersama pimpinan membuat partisipasi tim menjadi tidak optimal, sehingga mendapat skor 2. Pilihan B paling rendah karena menyusun laporan sendiri tanpa melibatkan tim mengurangi unsur kolaborasi dan dapat melemahkan komitmen bersama dalam pelaksanaan keputusan, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  85,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda sebagai pegawai di kantor pelayanan publik sering menerima masukan dari atasan, rekan kerja, dan masyarakat terkait cara Anda memberikan pelayanan. Anda ingin menjadikan masukan tersebut sebagai bahan pengembangan diri agar kualitas layanan semakin baik. Apa yang Anda lakukan?',
  NULL,
  '{"A":"Memperhatikan setiap masukan dengan serius dan berusaha belajar dari kritik tersebut agar kualitas pelayanan terus meningkat.","B":"Meminta arahan langsung kepada atasan setiap kali menerima kritik agar langkah perbaikan lebih terarah.","C":"Mengumpulkan masukan yang diterima dan menjadikannya bahan evaluasi rutin untuk melihat perkembangan kinerja.","D":"Mencatat semua masukan lalu menyusun rencana perbaikan secara bertahap sesuai tingkat prioritas pelayanan.","E":"Mengajak rekan kerja berdiskusi untuk membahas masukan yang diterima dan mencari cara memperbaikinya bersama."}'::jsonb,
  '{"A":5,"B":1,"C":2,"D":4,"E":3}'::jsonb,
  'A',
  'Dalam konteks pelayanan publik, jejaring kerja bukan hanya relasi antarpegawai tetapi juga keterhubungan dengan atasan dan masyarakat sebagai penerima layanan. Semakin terbuka seseorang terhadap masukan dan semakin konsisten menjadikannya sebagai bahan pengembangan diri, maka semakin tinggi nilainya. Pilihan A paling tepat karena menunjukkan sikap terbuka menerima kritik dan menjadikannya sarana belajar untuk meningkatkan kualitas pelayanan secara berkelanjutan. Ini mencerminkan nilai Kompeten, Akuntabel, dan Berorientasi Pelayanan, sehingga mendapat skor 5. Pilihan D juga baik karena mencatat masukan dan menyusun rencana perbaikan bertahap sesuai prioritas menunjukkan sistematika dan profesionalisme, sehingga mendapat skor 4. Pilihan E cukup baik karena mengajak rekan kerja berdiskusi mencerminkan nilai Kolaboratif, namun belum sepenuhnya menunjukkan komitmen pengembangan diri yang kuat, sehingga mendapat skor 3. Pilihan C menunjukkan evaluasi rutin yang bermanfaat, tetapi belum secara eksplisit menggambarkan tindakan konkret perbaikan, sehingga mendapat skor 2. Pilihan B paling rendah karena terlalu bergantung pada arahan atasan dan kurang menunjukkan inisiatif pribadi dalam mengelola masukan sebagai bagian dari pengembangan profesional, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  86,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda sebagai kepala seksi pelayanan di sebuah dinas memimpin tim dengan latar belakang dan pengalaman yang berbeda. Dalam rapat evaluasi, muncul perbedaan pendapat tentang cara terbaik menangani pengaduan masyarakat yang cukup rumit. Anda perlu menjaga suasana tetap kondusif dan keputusan tetap berkualitas. Apa yang Anda lakukan?',
  NULL,
  '{"A":"Mengatur ulang komposisi tim agar perbedaan pendapat tidak kembali menimbulkan perdebatan.","B":"Mendorong tim berdiskusi lebih mendalam sampai ditemukan solusi yang dapat diterima bersama.","C":"Menyimpulkan berbagai masukan yang muncul lalu memilih solusi dengan mempertimbangkan semua pendapat.","D":"Menunjuk satu anggota yang paling berpengalaman untuk memimpin pembahasan solusi yang akan diterapkan.","E":"Mengambil keputusan berdasarkan pendapat yang paling banyak disetujui agar rapat segera selesai."}'::jsonb,
  '{"A":1,"B":5,"C":4,"D":3,"E":2}'::jsonb,
  'B',
  'Memimpin tim dengan latar belakang berbeda menuntut kemampuan menjaga harmoni sekaligus menghasilkan keputusan berkualitas. Dalam jejaring kerja, semakin kuat ruang dialog dan semakin inklusif proses pencarian solusi, maka semakin tinggi kualitas kolaborasinya. Pilihan B paling tepat karena mendorong diskusi mendalam hingga ditemukan solusi yang dapat diterima bersama. Ini mencerminkan nilai Kolaboratif, Harmonis, dan Akuntabel, karena keputusan dihasilkan melalui proses partisipatif yang matang, sehingga mendapat skor 5. Pilihan C juga baik karena menyimpulkan berbagai masukan dan mempertimbangkan semua pendapat sebelum memilih solusi menunjukkan kepemimpinan yang adil dan rasional, sehingga mendapat skor 4. Pilihan D cukup tepat karena menunjuk anggota berpengalaman dapat menjaga kualitas teknis pembahasan, namun ruang partisipasi menjadi lebih terbatas, sehingga mendapat skor 3. Pilihan E berorientasi pada efektivitas waktu dengan mengikuti suara terbanyak, tetapi belum tentu menghasilkan solusi paling komprehensif, sehingga mendapat skor 2. Pilihan A paling rendah karena mengatur ulang komposisi tim demi menghindari perbedaan justru mengurangi dinamika sehat dalam diskusi dan tidak mencerminkan kemampuan mengelola keberagaman pendapat, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  87,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda baru ditempatkan sebagai pegawai di sebuah kantor pemerintahan dengan rekan kerja yang memiliki gaya komunikasi dan latar belakang yang berbeda. Agar pekerjaan berjalan lancar dan hubungan kerja terbangun dengan baik, Anda ingin mulai membangun komunikasi yang efektif sejak awal. Apa yang Anda lakukan?',
  NULL,
  '{"A":"Mengamati cara kerja dan karakter rekan terlebih dahulu lalu mulai membangun komunikasi secara bertahap.","B":"Fokus menyelesaikan tugas pribadi lebih dulu sebelum aktif membangun hubungan dengan rekan kerja.","C":"Mengajak beberapa rekan berbincang santai agar suasana kerja terasa lebih nyaman dan terbuka.","D":"Membangun komunikasi lebih intens dengan rekan yang memiliki jabatan penting dalam unit kerja.","E":"Aktif hadir dalam setiap rapat tim dan terlibat dalam diskusi agar memahami pola kerja bersama."}'::jsonb,
  '{"A":4,"B":2,"C":3,"D":1,"E":5}'::jsonb,
  'E',
  'Sebagai pegawai baru di lingkungan pemerintahan, keberhasilan membangun jejaring kerja sangat ditentukan oleh kemampuan memahami pola kerja bersama dan terlibat aktif dalam dinamika tim. Semakin cepat seseorang beradaptasi dan semakin luas keterlibatannya dalam komunikasi tim, maka semakin besar peluang terciptanya kolaborasi yang efektif. Pilihan E paling tepat karena aktif hadir dalam setiap rapat dan terlibat dalam diskusi menunjukkan komitmen memahami pola kerja bersama secara langsung. Ini mencerminkan nilai Kolaboratif, Adaptif, dan Harmonis, sehingga mendapat skor 5. Pilihan A juga baik karena mengamati karakter dan gaya kerja rekan terlebih dahulu menunjukkan kehati-hatian dan kecerdasan sosial, namun sifatnya lebih pasif dibanding keterlibatan langsung, sehingga mendapat skor 4. Pilihan C cukup baik karena membangun suasana santai dapat mencairkan hubungan kerja, tetapi belum tentu menyentuh aspek profesional dalam koordinasi pekerjaan, sehingga mendapat skor 3. Pilihan B menunjukkan fokus pada tanggung jawab pribadi, namun kurang membangun relasi kerja yang diperlukan dalam tim, sehingga mendapat skor 2. Pilihan D paling rendah karena membangun komunikasi hanya dengan rekan yang memiliki jabatan penting menunjukkan orientasi hierarkis dan tidak mencerminkan semangat kolaborasi menyeluruh, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  88,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda sebagai staf penyusun laporan di sebuah dinas sering menerima saran dari atasan dan rekan kerja terkait hasil kerja Anda. Anda ingin menjadikan saran tersebut sebagai bahan pengembangan diri agar kualitas pekerjaan semakin baik. Apa yang Anda lakukan?',
  NULL,
  '{"A":"Meminta rekan kerja menjelaskan saran secara langsung agar lebih memahami bagian yang harus diperbaiki.","B":"Mengumpulkan semua saran lalu menyusun rencana perbaikan bertahap sesuai tingkat prioritas pekerjaan.","C":"Mencari tambahan masukan dari pegawai yan g lebih berpengalaman agar mendapat sudut pandang lebih luas.","D":"Menganalisis saran yang diterima lalu memasukkannya ke dalam rencana pengembangan diri jangka panjang.","E":"Menerima semua saran dengan terbuka dan berusaha memperbaiki setiap bagian yang dinilai perlu ditingkatkan."}'::jsonb,
  '{"A":3,"B":4,"C":2,"D":1,"E":5}'::jsonb,
  'E',
  'Dalam konteks pengembangan diri berbasis jejaring kerja, semakin terbuka seseorang terhadap masukan dan semakin konsisten mengubahnya menjadi perbaikan nyata, maka semakin tinggi nilainya. Pilihan E paling tepat karena menerima semua saran secara terbuka dan langsung berupaya memperbaiki bagian yang perlu ditingkatkan menunjukkan sikap Kompeten, Akuntabel, dan berorientasi pada peningkatan kualitas kerja secara nyata, sehingga mendapat skor 5. Pilihan B juga baik karena menyusun rencana perbaikan bertahap sesuai prioritas menunjukkan sistematika dan profesionalisme dalam mengelola masukan, sehingga mendapat skor 4. Pilihan A cukup baik karena meminta penjelasan langsung membantu memperjelas arah perbaikan, namun belum menunjukkan tindakan konkret secara menyeluruh, sehingga mendapat skor 3. Pilihan C menunjukkan upaya memperluas sudut pandang dengan mencari masukan tambahan, tetapi belum tentu langsung berdampak pada perbaikan hasil kerja, sehingga mendapat skor 2. Pilihan D paling rendah karena hanya memasukkan saran dalam rencana jangka panjang tanpa menunjukkan respons nyata dalam waktu dekat, sehingga kurang mencerminkan kecepatan adaptasi terhadap kebutuhan pekerjaan, dan mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  89,
  'TKP',
  'Jejaring Kerja',
  'sedang',
  'Anda sebagai kepala seksi di sebuah dinas memimpin tim yang tersebar di beberapa wilayah kerja. Dalam pelaksanaan program, sering terjadi keterlambatan laporan, kurang koordinasi, dan miskomunikasi antarpegawai. Anda ingin meningkatkan kinerja tim agar program berjalan lebih efektif dan terpantau. Apa yang Anda lakukan?',
  NULL,
  '{"A":"Menerapkan aturan pengamanan dokumen serta menggunakan sistem kerja bersama yang lebih terintegrasi.","B":"Menekankan kembali pentingnya tenggat waktu dan memberi peringatan jika laporan tidak tepat waktu.","C":"Mendorong pegawai meningkatkan manajemen waktu agar pekerjaan dapat diselesaikan lebih teratur.","D":"Menyusun sistem pelaporan yang jelas serta menetapkan rapat rutin untuk memperkuat koordinasi tim.","E":"Mengalihkan sebagian pekerjaan kepada pihak luar agar beban kerja pegawai menjadi lebih ringan."}'::jsonb,
  '{"A":4,"B":3,"C":2,"D":5,"E":1}'::jsonb,
  'D',
  'Memimpin tim yang tersebar di beberapa wilayah membutuhkan sistem koordinasi yang jelas dan konsisten. Semakin terstruktur sistem komunikasi dan semakin rutin evaluasi dilakukan, maka semakin tinggi efektivitas jejaring kerja internal. Pilihan D paling tepat karena menyusun sistem pelaporan yang jelas serta menetapkan rapat rutin memperkuat koordinasi dan meminimalkan miskomunikasi. Ini mencerminkan nilai Kolaboratif, Akuntabel, dan kepemimpinan yang sistematis, sehingga mendapat skor 5. Pilihan A juga baik karena menerapkan sistem kerja terintegrasi meningkatkan keamanan dan efisiensi, namun belum secara langsung menyentuh pembenahan pola komunikasi tim secara menyeluruh, sehingga mendapat skor 4. Pilihan B menekankan disiplin tenggat waktu yang penting untuk kinerja, tetapi lebih bersifat pengawasan daripada perbaikan sistem koordinasi, sehingga mendapat skor 3. Pilihan C mendorong peningkatan manajemen waktu individu yang bermanfaat, namun masalah utama adalah koordinasi tim sehingga dampaknya lebih terbatas, sehingga mendapat skor 2. Pilihan E paling rendah karena mengalihkan pekerjaan ke pihak luar tidak menyelesaikan akar masalah komunikasi internal dan dapat melemahkan kapasitas tim, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  90,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Anda sebagai kepala bidang pelayanan di sebuah kantor kecamatan melihat banyak warga mengeluh karena proses pengurusan dokumen sering terlambat. Setelah Anda telusuri, ternyata alur kerja antarbagian kurang jelas dan komunikasi belum berjalan dengan baik. Jika kondisi ini terus dibiarkan, kepercayaan masyarakat bisa menurun. Apa langkah paling tepat yang Anda lakukan?',
  NULL,
  '{"A":"Mengusulkan penggunaan sistem digital untuk mempercepat proses dan memudahkan koordinasi antarbagian.","B":"Membuat laporan kinerja harian untuk memantau pekerjaan setiap pegawai secara lebih terkontrol.","C":"Memberikan pelatihan kepada pegawai agar lebih cepat dan sigap dalam melayani kebutuhan masyarakat.","D":"Mengajukan penambahan pegawai agar beban kerja terbagi lebih merata di setiap bagian pelayanan.","E":"Mengadakan rapat evaluasi rutin antarbagian untuk memperbaiki alur kerja dan memperkuat koordinasi bersama."}'::jsonb,
  '{"A":3,"B":1,"C":4,"D":2,"E":5}'::jsonb,
  'E',
  'Dalam pelayanan publik, kepercayaan masyarakat sangat dipengaruhi oleh kejelasan alur kerja dan kualitas koordinasi antarbagian. Semakin sistematis perbaikan yang dilakukan dan semakin kuat sinergi antarunit, maka semakin tinggi dampaknya terhadap kualitas layanan. Pilihan E paling tepat karena mengadakan rapat evaluasi rutin antarbagian langsung menyasar akar masalah yaitu kurangnya koordinasi dan ketidakjelasan alur kerja. Ini mencerminkan nilai Berorientasi Pelayanan, Kolaboratif, dan Akuntabel, sehingga mendapat skor 5. Pilihan C juga baik karena pelatihan meningkatkan kompetensi pegawai dalam melayani masyarakat, namun belum tentu menyelesaikan masalah sistem koordinasi antarbagian, sehingga mendapat skor 4. Pilihan A menunjukkan upaya modernisasi melalui sistem digital yang relevan, tetapi jika alur kerja belum jelas maka digitalisasi saja tidak cukup efektif, sehingga mendapat skor 3. Pilihan D mengusulkan penambahan pegawai yang dapat membantu beban kerja, namun belum tentu menyentuh masalah utama komunikasi dan sistem kerja, sehingga mendapat skor 2. Pilihan B paling rendah karena laporan kinerja harian bersifat kontrol administratif dan tidak langsung memperbaiki koordinasi antarbagian yang menjadi akar permasalahan, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  91,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Anda sebagai lurah ingin memperluas layanan kesehatan bagi warga karena banyak masyarakat kesulitan mendapat akses yang cepat dan terjangkau. Untuk mendapatkan dukungan dari kementerian dan dinas terkait, Anda perlu membangun kerja sama yang kuat dan tepat sasaran. Langkah Anda akan menentukan apakah program benar-benar berjalan atau hanya berhenti di rencana. Apa yang Anda lakukan?',
  NULL,
  '{"A":"Membuat rencana kerja tahunan yang memuat program kesehatan lalu menyosialisasikannya kepada masyarakat.","B":"Mengadakan diskusi internal dengan perangkat kelurahan untuk membahas kendala akses layanan kesehatan.","C":"Menjalin komunikasi dengan instansi terkait untuk menyamakan prioritas dan memastikan dukungan sesuai kebutuhan warga.","D":"Menyusun proposal lengkap berbasis data kebutuhan warga agar setiap instansi memahami urgensi program tersebut.","E":"Menugaskan staf melakukan survei lapangan guna memperkuat dasar perencanaan layanan kesehatan yang dibutuhkan."}'::jsonb,
  '{"A":2,"B":1,"C":5,"D":4,"E":3}'::jsonb,
  'C',
  'Sebagai lurah yang ingin memperluas layanan kesehatan, keberhasilan program sangat ditentukan oleh kemampuan membangun jejaring lintas instansi secara strategis dan selaras dengan kebutuhan warga. Semakin kuat sinergi yang dibangun dan semakin tepat sasaran dukungan yang diperoleh, maka semakin besar peluang program berjalan nyata dan berkelanjutan. Pilihan C paling tepat karena menjalin komunikasi dengan instansi terkait untuk menyamakan prioritas dan memastikan dukungan sesuai kebutuhan warga secara langsung menyasar aspek kolaborasi eksternal yang menjadi kunci realisasi program. Ini mencerminkan nilai Berorientasi Pelayanan, Kolaboratif, dan Akuntabel, sehingga mendapat skor 5. Pilihan D juga sangat baik karena menyusun proposal berbasis data kebutuhan warga menunjukkan perencanaan yang kuat dan argumentatif, namun masih bersifat dokumen pendukung sebelum terjalin kesepahaman prioritas lintas instansi, sehingga mendapat skor 4. Pilihan E cukup tepat karena survei lapangan memperkuat dasar perencanaan, tetapi dampaknya masih pada tahap pengumpulan data internal, sehingga mendapat skor 3. Pilihan A berfokus pada rencana kerja tahunan dan sosialisasi, namun belum membangun dukungan konkret dari kementerian atau dinas terkait, sehingga mendapat skor 2. Pilihan B paling rendah karena diskusi internal saja tidak cukup untuk memperluas layanan tanpa membangun kerja sama eksternal, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  92,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Anda sebagai dokter di rumah sakit umum ingin meningkatkan kepuasan pasien karena muncul keluhan tentang pelayanan yang kurang responsif. Anda menyadari bahwa pelayanan yang baik bukan hanya soal tindakan medis, tetapi juga cara berinteraksi dengan pasien. Apa langkah paling tepat yang Anda lakukan?',
  NULL,
  '{"A":"Menggunakan bahasa yang sopan dan menghormati pasien agar suasana pelayanan terasa lebih nyaman.","B":"Menyediakan waktu untuk mendengar keluhan pasien serta memberi penjelasan yang jelas dan mudah dipahami.","C":"Menjaga kerahasiaan data pasien sesuai aturan yang berlaku di rumah sakit.","D":"Menunjukkan sikap empati dan kepedulian terhadap kondisi pasien agar mereka merasa diperhatikan.","E":"Memantau perkembangan kesehatan pasien dan memberi saran lanjutan setelah pemeriksaan selesai."}'::jsonb,
  '{"A":2,"B":5,"C":1,"D":4,"E":3}'::jsonb,
  'B',
  'Pelayanan kesehatan yang berkualitas tidak hanya ditentukan oleh tindakan medis, tetapi juga kualitas komunikasi dan empati terhadap pasien. Semakin responsif dan semakin jelas interaksi yang diberikan kepada pasien, maka semakin tinggi tingkat kepuasan pelayanan. Pilihan B paling tepat karena menyediakan waktu untuk mendengar keluhan serta memberi penjelasan yang jelas dan mudah dipahami menunjukkan pelayanan yang komprehensif dan humanis. Hal ini mencerminkan nilai Berorientasi Pelayanan, Kompeten, dan Harmonis, sehingga mendapat skor 5. Pilihan D juga sangat baik karena menunjukkan empati dan kepedulian sehingga pasien merasa diperhatikan, namun belum secara eksplisit menyentuh aspek komunikasi informatif yang utuh, sehingga mendapat skor 4. Pilihan E cukup tepat karena memantau perkembangan dan memberi saran lanjutan menunjukkan tanggung jawab profesional, namun belum secara langsung memperbaiki keluhan tentang responsivitas, sehingga mendapat skor 3. Pilihan A menunjukkan kesopanan yang penting dalam etika pelayanan, tetapi masih pada level dasar interaksi, sehingga mendapat skor 2. Pilihan C paling rendah karena menjaga kerahasiaan data adalah kewajiban standar yang memang harus dilakukan, namun tidak secara langsung menjawab persoalan kepuasan dan respons pelayanan, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  93,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Anda sebagai pimpinan rumah sakit daerah ingin menjaga kualitas layanan tetap baik meskipun anggaran dan sumber daya terbatas. Beberapa cabang memiliki kebutuhan berbeda dan penggunaan alat serta obat belum merata. Anda perlu mengambil langkah yang membuat pengelolaan sumber daya lebih efisien tanpa menurunkan mutu pelayanan. Apa yang Anda lakukan?',
  NULL,
  '{"A":"Menjalin kerja sama dengan pemasok untuk mendapatkan harga obat dan alat medis yang lebih hemat.","B":"Menyusun anggaran rinci lalu membagi sumber daya sesuai prioritas kebutuhan tiap unit pelayanan.","C":"Mengadakan pelatihan tenaga medis agar penggunaan alat dan obat menjadi lebih tepat guna.","D":"Mengurangi pengadaan alat yang jarang digunakan agar fokus pada kebutuhan yang lebih mendesak.","E":"Melakukan evaluasi rutin untuk memantau penggunaan sumber daya dan memastikan efisiensi berjalan baik."}'::jsonb,
  '{"A":1,"B":4,"C":3,"D":2,"E":5}'::jsonb,
  'E',
  'Dalam kondisi anggaran dan sumber daya terbatas, kepemimpinan yang efektif harus mampu menjaga kualitas layanan melalui pengelolaan yang sistematis dan berkelanjutan. Semakin konsisten evaluasi dilakukan dan semakin terukur efisiensi yang dicapai, maka semakin tinggi nilainya. Pilihan E paling tepat karena melakukan evaluasi rutin untuk memantau penggunaan sumber daya memastikan efisiensi berjalan tanpa mengorbankan mutu pelayanan. Ini mencerminkan nilai Akuntabel, Kompeten, dan Berorientasi Pelayanan, sehingga mendapat skor 5. Pilihan B juga sangat baik karena menyusun anggaran rinci dan membagi sumber daya sesuai prioritas menunjukkan perencanaan strategis, sehingga mendapat skor 4. Pilihan C cukup tepat karena pelatihan tenaga medis meningkatkan efektivitas penggunaan alat dan obat, namun belum menyentuh sistem pengawasan berkelanjutan, sehingga mendapat skor 3. Pilihan D menunjukkan upaya rasionalisasi pengadaan, tetapi berisiko jika kebutuhan mendadak muncul tanpa evaluasi komprehensif, sehingga mendapat skor 2. Pilihan A paling rendah karena fokus pada negosiasi harga pemasok saja belum menjamin distribusi dan efisiensi penggunaan sumber daya secara menyeluruh, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  94,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Anda sebagai petugas pelayanan di kantor perizinan usaha menerima pengajuan izin dari seorang warga yang ingin membuka usaha kecil. Setelah Anda periksa, ada beberapa dokumen yang belum sesuai dengan persyaratan yang berlaku. Jika langsung ditolak, warga tersebut harus mengulang proses dari awal. Apa langkah paling tepat yang Anda lakukan?',
  NULL,
  '{"A":"Menyampaikan bahwa berkas belum bisa diproses dan meminta warga datang kembali setelah semua syarat lengkap.","B":"Menawarkan bantuan mengurus kekurangan dokumen terlebih dahulu lalu menunda proses pengajuan ke waktu berikutnya.","C":"Menyarankan warga berkonsultasi dengan pihak lain agar berkasnya lebih cepat disetujui.","D":"Menjelaskan dengan sopan letak kekurangan berkas serta memberi panduan yang jelas untuk melengkapinya.","E":"Memberi kesempatan warga melengkapi dokumen dalam batas waktu tertentu tanpa mengulang proses dari awal."}'::jsonb,
  '{"A":3,"B":1,"C":2,"D":5,"E":4}'::jsonb,
  'D',
  'Pelayanan publik yang baik harus memadukan kepatuhan pada aturan dengan pendekatan yang membantu masyarakat memahami proses secara jelas. Semakin solutif dan semakin memudahkan warga tanpa melanggar ketentuan, maka semakin tinggi nilainya. Pilihan D paling tepat karena menjelaskan dengan sopan letak kekurangan berkas serta memberi panduan yang jelas menunjukkan pelayanan yang informatif, edukatif, dan tidak merugikan warga. Ini mencerminkan nilai Berorientasi Pelayanan, Harmonis, dan Akuntabel, sehingga mendapat skor 5. Pilihan E juga sangat baik karena memberi kesempatan melengkapi dokumen dalam batas waktu tertentu tanpa mengulang proses menunjukkan fleksibilitas dalam koridor aturan, sehingga mendapat skor 4. Pilihan A cukup tepat karena menyampaikan ketentuan sesuai aturan, tetapi kurang memberi solusi konkret yang membantu warga memahami langkah perbaikan, sehingga mendapat skor 3. Pilihan C menunjukkan upaya memberi alternatif, namun belum tentu memastikan warga mendapat arahan yang tepat dan sesuai prosedur resmi, sehingga mendapat skor 2. Pilihan B paling rendah karena menawarkan bantuan mengurus kekurangan dokumen berpotensi melampaui kewenangan dan mengaburkan batas profesionalitas pelayanan, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  95,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Anda baru ditunjuk sebagai kepala unit pelayanan di sebuah kantor pemerintah yang sering mendapat keluhan karena respons terhadap masyarakat dinilai lambat. Jika kondisi ini tidak segera diperbaiki, kepercayaan publik bisa semakin menurun. Anda ingin melakukan perubahan yang berdampak nyata dan berkelanjutan. Apa langkah paling tepat yang Anda lakukan?',
  NULL,
  '{"A":"Membuat program penghargaan bagi pegawai yang mampu menunjukkan peningkatan kualitas dan kecepatan pelayanan.","B":"Mengajak masyarakat mengisi survei kepuasan untuk mengetahui kekurangan layanan dan dasar perbaikan ke depan.","C":"Meninjau ulang aturan internal yang memperlambat proses agar alur pelayanan menjadi lebih sederhana.","D":"Mengusulkan penambahan jumlah pegawai agar beban kerja berkurang dan pel ayanan lebih cepat.","E":"Mengumpulkan seluruh pegawai untuk menyepakati target baru yang fokus pada peningkatan kualitas pelayanan."}'::jsonb,
  '{"A":1,"B":5,"C":3,"D":2,"E":4}'::jsonb,
  'B',
  'Sebagai kepala unit pelayanan, perubahan yang berdampak nyata dan berkelanjutan harus berbasis kebutuhan masyarakat dan disertai perbaikan sistem. Semakin partisipatif proses evaluasi dan semakin berbasis data kebutuhan publik, maka semakin tinggi nilainya. Pilihan B paling tepat karena mengajak masyarakat mengisi survei kepuasan memberi dasar objektif untuk mengetahui kekurangan layanan serta arah perbaikan yang tepat sasaran. Ini mencerminkan nilai Berorientasi Pelayanan, Akuntabel, dan Kolaboratif, sehingga mendapat skor 5. Pilihan E juga baik karena menyepakati target baru bersama pegawai menunjukkan komitmen internal terhadap peningkatan kualitas, sehingga mendapat skor 4. Pilihan C cukup tepat karena meninjau ulang aturan internal dapat mempercepat alur pelayanan, namun belum berbasis masukan langsung dari masyarakat sebagai penerima layanan, sehingga mendapat skor 3. Pilihan D menunjukkan solusi penambahan pegawai, tetapi belum tentu menyentuh akar masalah sistem dan koordinasi, sehingga mendapat skor 2. Pilihan A paling rendah karena program penghargaan hanya memotivasi individu tanpa terlebih dahulu mengidentifikasi sumber masalah pelayanan secara menyeluruh, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  96,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Anda sebagai kepala dinas sosial di sebuah kabupaten menghadapi masalah penyaluran bantuan sembako yang sering terlambat ke wilayah pegunungan dan pulau kecil. Kondisi jalan sulit dan jarak tempuh cukup jauh membuat distribusi tidak merata. Anda ingin memastikan bantuan sampai tepat waktu dan tepat sasaran tanpa membuang anggaran. Apa langkah paling tepat yang Anda lakukan?',
  NULL,
  '{"A":"Mengalokasikan anggaran tambahan untuk memperbaiki sarana pendukung distribusi di wilayah terpencil.","B":"Melakukan pendataan ulang wilayah untuk menentukan daerah yang harus mendapat prioritas bantuan lebih dulu.","C":"Membentuk tim khusus yang fokus menangani distribusi di wilayah paling sulit agar bantuan lebih cepat sampai.","D":"Membuat sistem pemantauan rutin agar penyaluran bantuan dapat diawasi dan dievaluasi secara berkala.","E":"Mengajak masyarakat setempat bekerja sama agar proses penyaluran bantuan lebih mudah menjangkau wilayah sulit."}'::jsonb,
  '{"A":2,"B":1,"C":5,"D":4,"E":3}'::jsonb,
  'C',
  'Sebagai kepala dinas sosial, tantangan distribusi bantuan di wilayah sulit harus diselesaikan dengan pendekatan strategis yang tepat sasaran dan efisien anggaran. Semakin langsung solusi menyentuh akar masalah distribusi dan semakin spesifik intervensinya, maka semakin tinggi nilainya. Pilihan C paling tepat karena membentuk tim khusus yang fokus menangani distribusi di wilayah paling sulit merupakan langkah konkret, terarah, dan responsif terhadap kendala geografis. Ini mencerminkan nilai Berorientasi Pelayanan, Akuntabel, dan kepemimpinan yang adaptif, sehingga mendapat skor 5. Pilihan D juga sangat baik karena sistem pemantauan rutin memperkuat kontrol dan evaluasi distribusi secara berkelanjutan, sehingga mendapat skor 4. Pilihan E cukup tepat karena melibatkan masyarakat setempat membantu efektivitas lapangan, namun tetap membutuhkan struktur pengendalian yang kuat, sehingga mendapat skor 3. Pilihan A menunjukkan perhatian pada sarana pendukung, tetapi menambah anggaran belum tentu menyelesaikan manajemen distribusi jika sistem belum diperbaiki, sehingga mendapat skor 2. Pilihan B paling rendah karena pendataan ulang saja tidak secara langsung mempercepat distribusi bantuan yang sudah jelas mengalami kendala teknis, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  97,
  'TKP',
  'Pelayanan Publik',
  'sedang',
  'Anda sebagai petugas layanan di kantor pelayanan terpadu menerima keluhan dari seorang warga terkait pelayanan yang kurang memuaskan minggu lalu. Pelayanan tersebut bukan Anda yang menangani, tetapi warga tersebut tetap menyampaikan protes kepada Anda hari ini. Situasi ini bisa memengaruhi citra kantor jika tidak ditangani dengan baik. Apa langkah paling tepat yang Anda lakukan?',
  NULL,
  '{"A":"Mengarahkan warga untuk menemui petugas yang menangani sebelumnya agar masalah dibahas lebih detail.","B":"Mencatat keluhan warga lalu menyampaikan kepada pihak terkait untuk segera ditindaklanjuti.","C":"Menyampaikan bahwa Anda akan menunggu petugas sebelumnya agar penanganan dilakukan oleh yang bersangkutan.","D":"Menjelaskan bahwa pelayanan sebelumnya ditangani petugas lain sambil menawarkan bantuan untuk menyelesaikan masalah tersebut.","E":"Mendengarkan keluhan dengan empati, meminta maaf atas ketidaknyamanan, dan memberi solusi yang jelas dan tepat."}'::jsonb,
  '{"A":1,"B":4,"C":2,"D":3,"E":5}'::jsonb,
  'E',
  'Dalam pelayanan publik, setiap petugas adalah representasi institusi. Semakin empatik dan semakin solutif respons terhadap keluhan, maka semakin tinggi kualitas pelayanan. Pilihan E paling tepat karena mendengarkan keluhan dengan empati, meminta maaf atas ketidaknyamanan, serta memberi solusi jelas menunjukkan tanggung jawab kolektif dan profesionalisme. Ini mencerminkan nilai Berorientasi Pelayanan, Harmonis, dan Akuntabel, sehingga mendapat skor 5. Pilihan B juga baik karena mencatat dan menyampaikan keluhan untuk ditindaklanjuti menunjukkan tanggung jawab administratif, sehingga mendapat skor 4. Pilihan D cukup tepat karena tetap menawarkan bantuan meskipun bukan penanggung jawab sebelumnya, namun belum sepenuhnya menyentuh aspek empati dan solusi langsung, sehingga mendapat skor 3. Pilihan C menunjukkan upaya menunggu petugas sebelumnya, tetapi berpotensi memperlambat penyelesaian masalah, sehingga mendapat skor 2. Pilihan A paling rendah karena langsung mengarahkan warga ke petugas lain tanpa upaya awal membantu dapat memperburuk persepsi pelayanan, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  98,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda sebagai pegawai di sebuah instansi pemerintah mengikuti diskusi daring internal yang membahas kebijakan publik yang sedang ramai diperbincangkan. Dalam diskusi tersebut muncul perbedaan pendapat yang cukup tajam dan berpotensi memecah suasana kerja. Anda ingin tetap menjaga sikap profesional dan menghargai keberagaman pandangan. Apa sikap yang Anda ambil?',
  NULL,
  '{"A":"Mendengarkan setiap pendapat dengan terbuka lalu menyampaikan pandangan Anda secara sopan dan tidak memihak.","B":"Mengurangi intensitas diskusi jika suasana mulai panas sambil mencoba menyampaikan pandangan yang seimbang.","C":"Mengajak rekan kerja mengikuti pandangan mayoritas agar perbedaan tidak semakin meluas.","D":"Memilih tidak terlibat dalam diskusi agar tidak menimbulkan konflik di lingkungan kerja.","E":"Menyampaikan pendapat pribadi dengan tenang serta tetap menghormati pandangan yang berbeda dari rekan kerja."}'::jsonb,
  '{"A":5,"B":3,"C":2,"D":1,"E":4}'::jsonb,
  'A',
  'Dalam diskusi kebijakan publik yang memunculkan perbedaan tajam, profesionalisme ditunjukkan melalui sikap terbuka, toleran, dan menghargai keberagaman pandangan. Semakin inklusif dan semakin mampu menjaga harmoni tanpa kehilangan prinsip profesional, maka semakin tinggi nilainya. Pilihan A paling tepat karena mendengarkan setiap pendapat dengan terbuka lalu menyampaikan pandangan secara sopan dan tidak memihak menunjukkan sikap moderat dan menjunjung nilai keberagaman. Ini mencerminkan nilai Harmonis, Loyal pada institusi, dan semangat anti radikalisme yang menolak sikap eksklusif, sehingga mendapat skor 5. Pilihan E juga sangat baik karena menyampaikan pendapat dengan tenang dan menghormati perbedaan menjaga profesionalisme, sehingga mendapat skor 4. Pilihan B cukup tepat karena mencoba menyeimbangkan suasana diskusi, namun belum sepenuhnya menunjukkan keterbukaan dialog yang kuat, sehingga mendapat skor 3. Pilihan C menunjukkan kecenderungan mengikuti mayoritas demi meredam perbedaan, tetapi kurang mencerminkan sikap kritis dan independen, sehingga mendapat skor 2. Pilihan D paling rendah karena memilih tidak terlibat mengurangi ruang dialog sehat yang penting dalam lingkungan kerja profesional, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  99,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda sebagai ketua panitia kegiatan lintas agama di lingkungan masyarakat berencana mengadakan dialog untuk memperkuat toleransi. Namun, muncul penolakan dari sekelompok pihak yang tidak setuju dengan kegiatan tersebut. Anda ingin tetap menjaga keamanan sekaligus mempertahankan nilai kebersamaan. Apa langkah yang Anda ambil?',
  NULL,
  '{"A":"Menyesuaikan konsep kegiatan agar tetap berjalan tanpa memicu ketegangan dengan pihak yang menolak.","B":"Berkoordinasi dengan aparat keamanan agar kegiatan tetap aman dan terhindar dari gangguan.","C":"Mengajak panitia berdiskusi untuk menyusun strategi yang lebih matang dalam menghadapi situasi ini.","D":"Menggandeng pihak berwenang untuk membuka ruang dialog antara pihak yang menolak dan pihak pendukung kegiatan.","E":"Mengadakan forum terbuka yang melibatkan semua pihak agar setiap pandangan didengar dan tercapai kesepahaman."}'::jsonb,
  '{"A":2,"B":1,"C":4,"D":3,"E":5}'::jsonb,
  'E',
  'Dalam kegiatan lintas agama, tantangan penolakan harus disikapi dengan pendekatan inklusif yang menjaga keamanan sekaligus memperkuat nilai kebersamaan. Semakin terbuka ruang dialog yang dibangun dan semakin banyak pihak dilibatkan secara setara, maka semakin tinggi dampak pencegahan polarisasi. Pilihan E paling tepat karena mengadakan forum terbuka yang melibatkan semua pihak memberi ruang setiap pandangan didengar sehingga tercapai kesepahaman bersama. Ini mencerminkan nilai Harmonis, Kolaboratif, dan semangat moderasi, sehingga mendapat skor 5. Pilihan C juga sangat baik karena menyusun strategi matang bersama panitia menunjukkan kesiapan organisasi dalam menghadapi dinamika sosial, sehingga mendapat skor 4. Pilihan D cukup tepat karena menggandeng pihak berwenang membuka ruang dialog terarah, namun ruang partisipasinya lebih terbatas dibanding forum terbuka, sehingga mendapat skor 3. Pilihan A menunjukkan kompromi dengan menyesuaikan konsep kegiatan, tetapi berpotensi mengurangi substansi tujuan awal, sehingga mendapat skor 2. Pilihan B paling rendah karena fokus pada keamanan saja tanpa membangun dialog sosial berkelanjutan belum menyentuh akar perbedaan pandangan, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  100,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda sebagai kepala bagian SDM di sebuah instansi pemerintah melihat adanya penyebaran konten provokatif di grup internal pegawai. Untuk mencegah berkembangnya paham radikal di lingkungan kerja, Anda ingin mengadakan kegiatan edukatif yang berdampak luas dan tidak menimbulkan polarisasi. Apa langkah paling tepat yang Anda lakukan?',
  NULL,
  '{"A":"Mengundang satu tokoh agama untuk menjelaskan pentingnya menjaga persatuan dalam menghadapi paham radikal.","B":"Menghadirkan tokoh masyarakat yang berpengaruh agar pegawai lebih sadar tentang bahaya radikalisme.","C":"Mengundang pakar sosial dan psikologi untuk membahas faktor penyebab radikalisme dan cara pencegahannya.","D":"Menyelenggarakan forum yang melibatkan tokoh agama, tokoh masyarakat, dan pakar agar sudut pandang yang disampaikan lebih beragam.","E":"Mengadakan diskusi internal bersama pegawai untuk menyusun langkah pencegahan di lingkungan kerja."}'::jsonb,
  '{"A":1,"B":4,"C":3,"D":5,"E":2}'::jsonb,
  'D',
  'Pencegahan radikalisme di lingkungan kerja harus dilakukan secara komprehensif agar tidak menimbulkan polarisasi baru. Semakin beragam perspektif yang dihadirkan dan semakin edukatif pendekatannya, maka semakin tinggi nilainya. Pilihan D paling tepat karena menyelenggarakan forum yang melibatkan tokoh agama, tokoh masyarakat, dan pakar menciptakan sudut pandang beragam dan objektif. Ini mencerminkan nilai Harmonis, Kolaboratif, dan komitmen menjaga persatuan secara inklusif, sehingga mendapat skor 5. Pilihan B juga baik karena menghadirkan tokoh masyarakat berpengaruh memperkuat pesan persatuan, sehingga mendapat skor 4. Pilihan C cukup tepat karena pakar sosial dan psikologi memberi pemahaman mendalam, namun tanpa perspektif keagamaan dan sosial lain dampaknya kurang menyeluruh, sehingga mendapat skor 3. Pilihan E menunjukkan diskusi internal yang bermanfaat, tetapi skalanya terbatas dan belum tentu memberi sudut pandang luas, sehingga mendapat skor 2. Pilihan A paling rendah karena hanya menghadirkan satu tokoh agama berpotensi dipersepsikan tidak mewakili keberagaman perspektif, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  101,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda sebagai aparatur kelurahan mendapat laporan adanya kelompok warga yang mulai terpengaruh narasi intoleran di media sosial. Anda ingin mengambil langkah pencegahan agar kondisi tetap aman dan harmonis. Pendekatan apa yang paling efektif Anda lakukan?',
  NULL,
  '{"A":"Mengadakan pertemuan terbuka agar warga dapat menyampaikan pandangan dan memperkuat rasa kebersamaan.","B":"Menyelenggarakan program edukasi tentang nilai kebangsaan dan pemikiran moderat secara rutin dan terarah.","C":"Bekerja sama dengan tokoh masyarakat untuk mendukung kampanye melawan radikalisme secara berkelanjutan.","D":"Membentuk sistem pemantauan warga untuk mendeteksi lebih awal munculnya pemikiran radikal di lingkungan tersebut.","E":"Menggandeng lembaga pendidikan setempat untuk memberikan pemahaman tentang bahaya radikalisme kepada generasi muda."}'::jsonb,
  '{"A":2,"B":5,"C":3,"D":1,"E":4}'::jsonb,
  'B',
  'Pencegahan narasi intoleran harus dilakukan melalui edukasi berkelanjutan yang membangun kesadaran kritis masyarakat. Semakin sistematis dan semakin terarah program yang dibuat, maka semakin tinggi nilainya. Pilihan B paling tepat karena menyelenggarakan program edukasi nilai kebangsaan dan pemikiran moderat secara rutin menciptakan benteng preventif jangka panjang. Ini mencerminkan nilai Loyal pada NKRI, Harmonis, dan Berorientasi Pelayanan sosial, sehingga mendapat skor 5. Pilihan E juga sangat baik karena menggandeng lembaga pendidikan memberi dampak pada generasi muda, sehingga mendapat skor 4. Pilihan C cukup tepat karena bekerja sama dengan tokoh masyarakat memperkuat legitimasi sosial, sehingga mendapat skor 3. Pilihan A membuka ruang dialog, namun belum tentu berkelanjutan tanpa program terstruktur, sehingga mendapat skor 2. Pilihan D paling rendah karena pendekatan pemantauan berisiko menimbulkan ketidakpercayaan jika tidak disertai edukasi yang membangun, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  102,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda sebagai staf kecamatan menerima informasi bahwa ada kegiatan tertutup di salah satu wilayah yang diduga menyebarkan paham intoleran secara terstruktur. Jika tidak ditangani dengan tepat, hal ini bisa memicu keresahan warga. Anda ingin mengambil langkah yang tepat tanpa memperkeruh situasi. Apa yang Anda lakukan?',
  NULL,
  '{"A":"Mengumpulkan informasi yang akurat lalu berdiskusi dengan tokoh masyarakat untuk merumuskan langkah yang bijak.","B":"Mengadakan kegiatan kebersamaan warga untuk memperkuat pemahaman tentang bahaya radikalisme dan pentingnya persatuan.","C":"Melaporkan dugaan tersebut kepada aparat berwenang agar dilakukan penanganan sesuai prosedur hukum.","D":"Mengimbau warga untuk menjaga jarak dari kelompok tersebut agar tidak terpengaruh ajaran mereka.","E":"Mengajak perwakilan kelompok tersebut berdialog untuk memahami tujuan mereka dan mencari solusi damai."}'::jsonb,
  '{"A":5,"B":2,"C":3,"D":1,"E":4}'::jsonb,
  'A',
  'Menangani dugaan penyebaran intoleransi harus dilakukan secara hati-hati agar tidak memperkeruh situasi. Semakin berbasis data dan semakin melibatkan tokoh masyarakat dalam perumusan langkah, maka semakin tinggi nilainya. Pilihan A paling tepat karena mengumpulkan informasi akurat lalu berdiskusi dengan tokoh masyarakat mencerminkan pendekatan bijak dan preventif. Ini mencerminkan nilai Akuntabel, Harmonis, dan kepemimpinan yang moderat, sehingga mendapat skor 5. Pilihan E juga sangat baik karena membuka ruang dialog dengan kelompok terkait untuk memahami tujuan mereka dan mencari solusi damai, sehingga mendapat skor 4. Pilihan C cukup tepat karena melaporkan ke aparat adalah langkah formal, namun tanpa pemetaan sosial dapat memicu ketegangan, sehingga mendapat skor 3. Pilihan B memperkuat kebersamaan warga, tetapi belum menyasar kelompok yang diduga menyebarkan narasi intoleran, sehingga mendapat skor 2. Pilihan D paling rendah karena sekadar mengimbau warga menjaga jarak tidak menyelesaikan akar persoalan, sehingga mendapat skor 1..',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  103,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda sebagai guru di sebuah sekolah negeri melihat beberapa siswa mulai terpapar konten intoleran dari media sosial. Anda ingin mencegah berkembangnya pemikiran radikal tanpa membuat mereka merasa disalahkan atau dikucilkan. Apa langkah paling tepat yang Anda lakukan?',
  NULL,
  '{"A":"Membuat kampanye terbuka di media sosial sekolah yang secara tegas menolak paham radikal.","B":"Mengadakan dialog kelas tentang pentingnya toleransi dan berpikir kritis dalam menyaring informasi.","C":"Melaporkan akun yang menyebarkan konten radikal kepada pihak berwenang agar segera ditindak.","D":"Membentuk forum diskusi agar siswa dapat menyampaikan pendapat sambil dikenalkan nilai kebangsaan.","E":"Mengedukasi orang tua agar lebih aktif mengawasi aktivitas daring anak-anak mereka."}'::jsonb,
  '{"A":2,"B":4,"C":1,"D":5,"E":3}'::jsonb,
  'D',
  'Dalam lingkungan sekolah, pencegahan radikalisme harus dilakukan melalui pendekatan edukatif dan dialogis agar siswa tidak merasa dihakimi. Semakin partisipatif forum yang dibangun dan semakin menanamkan nilai kebangsaan secara reflektif, maka semakin tinggi nilainya. Pilihan D paling tepat karena membentuk forum diskusi memberi ruang siswa menyampaikan pendapat sekaligus dikenalkan nilai kebangsaan secara dialogis. Ini mencerminkan nilai Harmonis dan pendekatan pendidikan moderat, sehingga mendapat skor 5. Pilihan B juga sangat baik karena dialog kelas tentang toleransi dan berpikir kritis memperkuat literasi, sehingga mendapat skor 4. Pilihan E cukup tepat karena melibatkan orang tua membantu pengawasan, sehingga mendapat skor 3. Pilihan A menunjukkan sikap tegas, namun kampanye terbuka tanpa dialog berisiko terasa menghakimi, sehingga mendapat skor 2. Pilihan C paling rendah karena pelaporan langsung tanpa pendekatan edukatif dapat memperlebar jarak dan rasa tidak percaya, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  104,
  'TKP',
  'Anti Radikalisme',
  'sedang',
  'Anda sebagai guru di sebuah sekolah negeri mendengar salah satu guru lain sering menyampaikan pandangan yang bernuansa intoleran saat diskusi informal. Anda khawatir hal ini bisa memengaruhi siswa dan lingkungan sekolah. Anda ingin memastikan situasi ini ditangani dengan bijak tanpa menimbulkan konflik baru. Apa langkah yang Anda ambil?',
  NULL,
  '{"A":"Melaporkan hal tersebut kepada kepala sekolah agar dapat ditindak sesuai aturan yang berlaku.","B":"Membuat kegiatan literasi kebangsaan di sekolah untuk memperkuat nilai toleransi secara umum.","C":"Menjaga jarak dari rekan tersebut agar tidak terlibat dalam pembahasan yang sensitif.","D":"Mengajak rekan tersebut berdialog untuk memahami pandangannya dan meluruskan jika ada kesalahpahaman.","E":"Mengamati lebih lanjut sikap dan perilakunya sebelum mengambil langkah lanjutan agar tidak salah menilai."}'::jsonb,
  '{"A":3,"B":2,"C":1,"D":5,"E":4}'::jsonb,
  'D',
  'Menangani pandangan intoleran di lingkungan sekolah membutuhkan pendekatan dialogis agar tidak memicu konflik baru. Semakin langsung klarifikasi dilakukan secara profesional dan terbuka, maka semakin tinggi nilainya. Pilihan D paling tepat karena mengajak rekan berdialog untuk memahami pandangan dan meluruskan kesalahpahaman mencerminkan sikap moderat dan solutif. Ini mencerminkan nilai Harmonis dan Kolaboratif, sehingga mendapat skor 5. Pilihan E juga baik karena mengamati lebih lanjut menunjukkan kehati-hatian sebelum mengambil tindakan, sehingga mendapat skor 4. Pilihan A cukup tepat karena melaporkan ke kepala sekolah dapat menjadi langkah formal, namun belum tentu menjadi solusi awal yang dialogis, sehingga mendapat skor 3. Pilihan B memperkuat literasi kebangsaan, tetapi tidak langsung menyasar sumber persoalan, sehingga mendapat skor 2. Pilihan C paling rendah karena menjaga jarak tidak menyelesaikan masalah dan berpotensi membiarkan pengaruh terus berkembang, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  105,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Anda sebagai ketua forum warga di lingkungan yang terdiri dari berbagai suku dan budaya sedang menyiapkan perayaan hari besar daerah. Terjadi perbedaan pendapat tentang unsur budaya mana yang lebih ditonjolkan. Anda ingin menjaga persatuan sekaligus menghargai keberagaman. Apa langkah paling tepat?',
  NULL,
  '{"A":"Mendorong semua pihak saling mendengarkan sebelum memutuskan konsep acara bersama.","B":"Membuat aturan diskusi agar perbedaan tidak berkembang menjadi konflik.","C":"Memberi apresiasi kepada pihak yang menunjukkan sikap paling terbuka.","D":"Mengajak perwakilan setiap budaya berdiskusi untuk menemukan titik temu yang adil.","E":"Mengadakan sesi khusus membahas pentingnya toleransi dalam kegiatan bersama."}'::jsonb,
  '{"A":5,"B":2,"C":1,"D":4,"E":3}'::jsonb,
  'A',
  'Dalam forum warga yang majemuk, menjaga persatuan berarti memastikan proses pengambilan keputusan berlangsung inklusif dan menghargai semua pihak. Semakin kuat budaya saling mendengar dan semakin adil proses mencapai titik temu, maka semakin tinggi nilainya. Pilihan A paling tepat karena mendorong semua pihak saling mendengarkan sebelum memutuskan konsep acara membangun suasana dialog yang sehat, menurunkan potensi konflik, dan memperkuat kebersamaan. Ini mencerminkan nilai Harmonis dan komunikasi inklusif, sehingga mendapat skor 5. Pilihan D juga sangat baik karena mengajak perwakilan setiap budaya mencari titik temu yang adil menunjukkan inklusivitas yang terstruktur, sehingga mendapat skor 4. Pilihan E cukup tepat karena sesi khusus tentang toleransi memperkuat pemahaman, namun belum tentu menyelesaikan perbedaan konsep acara secara langsung, sehingga mendapat skor 3. Pilihan B membuat aturan diskusi membantu ketertiban, tetapi fokusnya lebih pada kontrol daripada membangun kesepahaman, sehingga mendapat skor 2. Pilihan C paling rendah karena apresiasi pada pihak terbuka bersifat simbolik dan tidak langsung menyelesaikan inti perbedaan pendapat, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  106,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Anda sebagai relawan kesehatan ditugaskan bekerja sama dengan relawan lain yang memiliki kebiasaan dan cara berkomunikasi berbeda karena latar belakang budaya yang tidak sama. Anda merasa kurang nyaman, tetapi program pelayanan harus tetap berjalan dengan baik. Apa sikap paling tepat yang Anda lakukan?',
  NULL,
  '{"A":"Menerima tugas tersebut dan menjaga hubungan profesional sambil mengesampingkan perbedaan yang ada.","B":"Membicarakan perbedaan secara terbuka agar tidak mengganggu komunikasi selama pelayanan berlangsung.","C":"Fokus pada target pelayanan tanpa terlalu memikirkan perbedaan budaya yang ada.","D":"Menghargai keberagaman dan berusaha memahami latar belakang rekan agar kerja sama berjalan lebih efektif.","E":"Meminta koordinator mengganti pasangan kerja agar suasana lebih nyaman bagi Anda."}'::jsonb,
  '{"A":4,"B":3,"C":2,"D":5,"E":1}'::jsonb,
  'D',
  'Kerja sama lintas budaya menuntut kemampuan menghargai perbedaan sekaligus membangun komunikasi efektif agar pelayanan tetap berjalan. Semakin besar upaya memahami latar belakang rekan dan menyesuaikan cara berinteraksi secara profesional, maka semakin tinggi nilainya. Pilihan D paling tepat karena menghargai keberagaman dan berusaha memahami latar belakang rekan menunjukkan kedewasaan sosial, empati, dan adaptasi komunikasi yang berdampak langsung pada efektivitas kerja sama. Ini mencerminkan nilai Harmonis dan Kolaboratif, sehingga mendapat skor 5. Pilihan A juga baik karena menjaga hubungan profesional dan tetap menjalankan tugas menunjukkan keteguhan, tetapi belum menyentuh upaya memahami perbedaan agar kolaborasi makin efektif, sehingga mendapat skor 4. Pilihan B cukup tepat karena membicarakan perbedaan secara terbuka dapat mencegah miskomunikasi, namun efektivitasnya bergantung pada cara penyampaian dan kesiapan pihak lain, sehingga mendapat skor 3. Pilihan C fokus pada target saja membantu penyelesaian tugas, tetapi berisiko membiarkan hambatan komunikasi tetap ada, sehingga mendapat skor 2. Pilihan E paling rendah karena meminta ganti pasangan kerja mengurangi kesempatan membangun toleransi dan adaptasi, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  107,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Anda sebagai atlet muda dalam tim daerah merasa kurang dilibatkan dalam diskusi strategi karena berasal dari latar budaya yang berbeda dengan mayoritas tim. Anda ingin tetap berkontribusi dan dihargai dalam tim. Apa langkah paling tepat yang Anda lakukan?',
  NULL,
  '{"A":"Mengajukan diri secara aktif dalam diskusi dan menyampaikan pendapat dengan percaya diri.","B":"Membangun komunikasi santai di luar latihan agar hubungan dengan rekan lebih dekat.","C":"Mengusulkan sesi khusus membahas pentingnya keberagaman dalam tim olahraga.","D":"Membuktikan kemampuan melalui latihan tanpa banyak terlibat dalam diskusi.","E":"Berbicara dengan pelatih untuk meminta arahan agar bisa lebih terlibat dalam tim."}'::jsonb,
  '{"A":5,"B":3,"C":2,"D":1,"E":4}'::jsonb,
  'A',
  'Dalam tim olahraga, kontribusi yang dihargai lahir dari keberanian berkomunikasi dan menunjukkan kapasitas secara terbuka. Semakin aktif seseorang berpartisipasi dalam diskusi dan menyampaikan gagasan dengan percaya diri, maka semakin besar peluang diterima tanpa memperlebar jarak sosial. Pilihan A paling tepat karena mengajukan diri aktif dalam diskusi dan menyampaikan pendapat dengan percaya diri menunjukkan proaktif, asertif, dan berorientasi kontribusi. Ini mencerminkan nilai Percaya diri yang sehat dan komunikasi inklusif, sehingga mendapat skor 5. Pilihan E juga sangat baik karena berbicara dengan pelatih meminta arahan adalah langkah strategis yang tetap profesional dan terarah, sehingga mendapat skor 4. Pilihan B cukup tepat karena membangun komunikasi santai dapat mempererat relasi, namun belum tentu meningkatkan keterlibatan dalam diskusi strategi, sehingga mendapat skor 3. Pilihan C mengusulkan sesi khusus tentang keberagaman baik untuk edukasi, tetapi kurang langsung membantu keterlibatan diri dalam strategi, sehingga mendapat skor 2. Pilihan D paling rendah karena hanya membuktikan lewat latihan tanpa terlibat diskusi membuat peluang kontribusi strategis tetap tertutup, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  108,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Anda baru bekerja di museum nasional dengan rekan kerja dari berbagai negara. Anda merasa kebiasaan kerja mereka berbeda dengan kebiasaan Anda. Agar dapat beradaptasi secara profesional, langkah apa yang paling tepat Anda ambil?',
  NULL,
  '{"A":"Bertanya secara terbuka dalam rapat agar ekspektasi kerja lebih jelas.","B":"Mengamati kebiasaan kerja rekan dan menyesuaikan diri secara perlahan.","C":"Mencari referensi tentang adaptasi lintas budaya melalui sumber belajar tambahan.","D":"Berdiskusi dengan pegawai senior untuk memahami budaya kerja yang berlaku.","E":"Tetap menggunakan cara kerja sendiri selama hasil pekerjaan tetap baik."}'::jsonb,
  '{"A":4,"B":3,"C":2,"D":5,"E":1}'::jsonb,
  'D',
  'Adaptasi profesional di lingkungan multinasional membutuhkan pemahaman budaya kerja yang berlaku agar standar kerja selaras dan minim gesekan. Semakin tepat sumber informasi yang digunakan dan semakin cepat memperoleh kejelasan budaya kerja, maka semakin tinggi nilainya. Pilihan D paling tepat karena berdiskusi dengan pegawai senior membantu memahami budaya kerja yang berlaku secara praktis, termasuk norma tidak tertulis yang sering menentukan kelancaran koordinasi. Ini mencerminkan nilai Adaptif, Kolaboratif, dan pembelajaran kontekstual, sehingga mendapat skor 5. Pilihan A juga baik karena bertanya terbuka dalam rapat membuat ekspektasi jelas, namun ruangnya lebih formal dan belum tentu detail pada kebiasaan kerja harian, sehingga mendapat skor 4. Pilihan B cukup tepat karena mengamati dan menyesuaikan diri perlahan membantu adaptasi bertahap, tetapi lebih lambat dan berisiko salah tafsir, sehingga mendapat skor 3. Pilihan C mencari referensi adaptasi lintas budaya bermanfaat, namun tidak sekuat sumber internal yang memahami konteks museum tersebut, sehingga mendapat skor 2. Pilihan E paling rendah karena tetap menggunakan cara kerja sendiri dapat menghambat kolaborasi dan memperbesar jarak budaya kerja, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  109,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Anda ditugaskan menjadi dosen tamu di kampus daerah dengan budaya belajar yang berbeda dari tempat Anda sebelumnya. Mahasiswa memiliki gaya komunikasi yang tidak biasa bagi Anda. Agar proses belajar tetap efektif, sikap apa yang Anda ambil?',
  NULL,
  '{"A":"Mengusulkan pergantian tugas jika merasa kesulitan beradaptasi.","B":"Mengajak mahasiswa menyesuaikan diri dengan metode pengajaran Anda.","C":"Menggunakan metode standar yang biasa Anda pakai dengan sedikit penyesuaian.","D":"Meminta bantuan staf kampus untuk memahami kebiasaan belajar mahasiswa setempat.","E":"Mempelajari budaya lokal dan menyesuaikan metode pengajaran agar lebih sesuai dengan karakter mahasiswa."}'::jsonb,
  '{"A":1,"B":2,"C":3,"D":4,"E":5}'::jsonb,
  'E',
  'Sebagai dosen tamu, efektivitas belajar sangat dipengaruhi kemampuan pengajar menyesuaikan pendekatan dengan karakter mahasiswa. Semakin proaktif memahami budaya lokal dan semakin relevan metode yang digunakan, maka semakin tinggi dampaknya. Pilihan E paling tepat karena mempelajari budaya lokal dan menyesuaikan metode pengajaran menunjukkan adaptasi yang matang, empati, dan fokus pada keberhasilan pembelajaran. Ini mencerminkan nilai Adaptif, Kompeten, dan komunikasi inklusif, sehingga mendapat skor 5. Pilihan D juga sangat baik karena meminta bantuan staf kampus membantu memahami kebiasaan belajar secara cepat dan akurat, sehingga mendapat skor 4. Pilihan C cukup tepat karena menggunakan metode standar dengan sedikit penyesuaian tetap menjaga struktur, namun berisiko kurang sesuai dengan karakter mahasiswa setempat, sehingga mendapat skor 3. Pilihan B meminta mahasiswa menyesuaikan diri dengan metode Anda menunjukkan pendekatan satu arah yang kurang inklusif, sehingga mendapat skor 2. Pilihan A paling rendah karena mengusulkan pergantian tugas menunjukkan ketidakmauan beradaptasi dan mengurangi tanggung jawab profesional, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

INSERT INTO questions (sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, skor_tkp, kunci, pembahasan, pembahasan_gambar, status)
VALUES (
  'part-28',
  110,
  'TKP',
  'Sosial Budaya',
  'sedang',
  'Anda sebagai koordinator kru dalam acara internasional melihat anggota tim mulai terpecah karena perbedaan budaya dan gaya kerja. Jika tidak segera ditangani, kerja sama tim bisa terganggu. Apa langkah paling tepat yang Anda lakukan?',
  NULL,
  '{"A":"Mengarahkan tim untuk menghindari pembahasan isu perbedaan budaya agar tidak terjadi konflik.","B":"Membuat proyek kolaboratif yang melibatkan semua anggota agar fokus pada tujuan bersama.","C":"Mengadakan pertemuan untuk membahas pentingnya saling menghargai perbedaan.","D":"Menekankan pentingnya toleransi tanpa membuat langkah kerja baru.","E":"Mengundang pembicara yang berpengalaman dalam kerja lintas budaya untuk berbagi inspirasi."}'::jsonb,
  '{"A":1,"B":5,"C":2,"D":3,"E":4}'::jsonb,
  'B',
  'Perpecahan tim lintas budaya harus ditangani dengan langkah yang menyatukan kerja pada tujuan bersama, bukan sekadar imbauan normatif. Semakin konkret langkah kolaboratif yang dibuat dan semakin banyak anggota terlibat dalam satu sistem kerja, maka semakin tinggi efektivitasnya. Pilihan B paling tepat karena membuat proyek kolaboratif yang melibatkan semua anggota mengalihkan energi dari perbedaan menuju tujuan bersama, sekaligus membangun interaksi kerja yang nyata. Ini mencerminkan nilai Kolaboratif dan Harmonis, sehingga mendapat skor 5. Pilihan E juga sangat baik karena menghadirkan pembicara berpengalaman memberi inspirasi dan perspektif praktis, sehingga mendapat skor 4. Pilihan D cukup tepat karena menekankan toleransi membantu sikap, namun tanpa langkah kerja baru dampaknya bisa terbatas, sehingga mendapat skor 3. Pilihan C membahas pentingnya saling menghargai bermanfaat, tetapi cenderung normatif jika tidak diikuti mekanisme kerja kolaboratif, sehingga mendapat skor 2. Pilihan A paling rendah karena menghindari pembahasan isu perbedaan budaya justru menutup ruang pemahaman dan membuat masalah berpotensi terpendam, sehingga mendapat skor 1.',
  NULL,
  'published'
) ON CONFLICT (sumber, nomor) DO UPDATE SET
  soal = EXCLUDED.soal,
  opsi = EXCLUDED.opsi,
  skor_tkp = EXCLUDED.skor_tkp,
  kunci = EXCLUDED.kunci,
  pembahasan = EXCLUDED.pembahasan,
  topik = EXCLUDED.topik,
  status = 'published';

COMMIT;