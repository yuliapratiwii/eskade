# Try Out SKD CPNS (Platform Belajar Mandiri & Panel Admin)

Aplikasi web simulasi ujian Seleksi Kompetensi Dasar (SKD) Calon Pegawai Negeri Sipil (CPNS) berbasis Next.js App Router, TypeScript, dan Tailwind CSS dengan antarmuka mobile-first, bahasa Indonesia, dan Panel Administrator terintegrasi untuk pengelolaan bank soal.

---

## 🚀 Cara Menjalankan

### 1. Masuk ke Direktori Web
```bash
cd web
```

### 2. Konfigurasi Environment (`.env.local`)
Pastikan file `.env.local` berada di folder `web/` dengan variabel berikut (hanya publishable key yang digunakan di sisi frontend):
```env
NEXT_PUBLIC_SUPABASE_URL=https://<YOUR_PROJECT_REF>.supabase.co
NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY=<YOUR_PUBLISHABLE_KEY>
```
> **Catatan Keamanan**: File `.env.local` sudah terdaftar di `.gitignore` dan tidak boleh di-commit. Aplikasi web hanya menggunakan publishable key dan sesi otentikasi login pengguna. JANGAN pernah memakai atau menyimpan `service_role` / secret key di dalam kode aplikasi.

### 3. Instalasi Dependensi
```bash
npm install
```

### 4. Menjalankan Server Development
```bash
npm run dev
```
Buka peramban di [http://localhost:3000](http://localhost:3000).

### 5. Build Produksi
```bash
npm run build
npm start
```

---

## 🛡️ Panduan Akses Administrator

### Cara Menjadikan User Sebagai Admin
1. Daftarkan akun baru Anda melalui halaman `/daftar` di aplikasi web.
2. Buka dashboard Supabase proyek Anda: **SQL Editor** > **New query**.
3. Jalankan perintah SQL berikut (ganti email dengan email akun Anda):
   ```sql
   update profiles
   set role = 'admin'
   where id = (select id from auth.users where email = 'emailkamu@gmail.com');
   ```
4. Masuk kembali ke aplikasi web. Header aplikasi akan menampilkan tombol **"Panel Admin"** dan Anda dapat mengakses `/admin` serta seluruh menu turunannya.
5. Admin juga dapat mempromosikan atau mendemosikan akun pengguna lain secara visual melalui menu **Kelola User** (`/admin/user`).

### Proteksi Keamanan Server-Side
- Akses ke rute `/admin` dan seluruh subpath-nya dijaga ketat di dua lapisan:
  1. **Next.js Middleware**: Memeriksa sesi dan kolom `profiles.role`. Pengguna non-admin otomatis dialihkan ke dashboard (`/`).
  2. **Admin Server Layout Guard**: Server component yang memvalidasi ulang hak akses sebelum merender konten admin.
  3. **Row Level Security (RLS)**: Database PostgreSQL Supabase menolak operasi tulis pada tabel `questions`, `exams`, `exam_questions`, dan bucket storage `soal-img` jika user bukan admin.

---

## 📋 Fitur Panel Admin (`/admin`)

### 1. Bank Soal (`/admin/soal`)
- Tabel interaktif dengan filter: **Subtes** (TWK, TIU, TKP), **Topik**, **Status** (Draft / Published), **Sumber**, dan **Pencarian teks soal**.
- Paginasi data responsif (15 soal per halaman) dengan penghitung total.
- **Aksi Massal (Bulk Action)**:
  - *Terbitkan*: Mengubah status soal terpilih menjadi `published`.
  - *Jadikan Draft*: Mengubah status menjadi `draft`.
  - *Ubah Topik*: Memperbarui topik seluruh soal terpilih sekaligus.
  - *Hapus Massal*: Menghapus soal terpilih dengan dialog konfirmasi aman.

### 2. Form Tambah & Edit Soal (`/admin/soal/baru` & `/admin/soal/[id]`)
- Pengaturan: Subtes, Topik (dropdown sesuai subtes + input topik baru), Tingkat kesulitan (*mudah/sedang/sulit*), Status publikasi, dan Sumber/Nomor.
- **Live Preview $\LaTeX$ & Markdown**: Editor soal dan pembahasan dilengkapi tab Pratinjau langsung yang dirender dengan KaTeX persis seperti pada lembar ujian peserta.
- **Logika Penilaian Khusus**:
  - **TWK & TIU**: Memilih huruf Kunci Jawaban benar (A, B, C, D, atau E).
  - **TKP**: Mengisi skor bobot 1 hingga 5 untuk setiap opsi A–E (disimpan ke `skor_tkp`), kunci dikosongkan, dan topik diisi aspek TKP (*Pelayanan Publik, Jejaring Kerja, Sosial Budaya, TIK, Profesionalisme, Anti Radikalisme*).
- **Upload Gambar**: Mendukung unggah gambar soal figural dan gambar penjelas pembahasan ke bucket Storage `soal-img` folder `manual/` dengan validasi tipe (PNG, JPG, WEBP) dan ukuran maksimal 2 MB.

### 3. Impor Massal JSON (`/admin/impor`)
- Unggah file `.json` atau tempel teks JSON.
- **Alur Validasi & Pratinjau Cerdas**:
  1. Memvalidasi struktur format data per butir soal (subtes, teks soal, opsi A–E, kunci untuk TWK/TIU atau bobot skor untuk TKP).
  2. Mendeteksi potensi duplikasi terhadap bank soal yang sudah ada di database berdasarkan teks soal yang dinormalisasi.
  3. Menampilkan tabel pratinjau yang memisahkan baris valid, baris error dengan alasan spesifik, serta peringatan kemungkinan duplikat.
  4. Tombol eksekusi hanya mengimpor baris yang valid ke database dengan status awal **Draft** dan penomoran otomatis berurutan.
- Disediakan tombol **"Unduh Contoh JSON"** untuk kemudahan referensi format.

#### Format Data JSON Impor
```json
[
  {
    "subtes": "TIU",
    "topik": "Silogisme",
    "level": "sedang",
    "soal": "Semua peserta ujian yang lulus wajib mengikuti orientasi. Sebagian sarjana hukum lulus ujian SKD CPNS. Kesimpulan yang tepat adalah...",
    "opsi": {
      "A": "Semua sarjana hukum wajib mengikuti orientasi.",
      "B": "Sebagian sarjana hukum wajib mengikuti orientasi.",
      "C": "Semua yang mengikuti orientasi adalah sarjana hukum.",
      "D": "Sebagian yang lulus bukan sarjana hukum.",
      "E": "Tidak ada sarjana hukum yang mengikuti orientasi."
    },
    "kunci": "B",
    "pembahasan": "Berdasarkan premis silogisme...",
    "gambar_url": null
  },
  {
    "subtes": "TKP",
    "topik": "Pelayanan Publik",
    "level": "sedang",
    "soal": "Ketika melayani warga...",
    "opsi": {
      "A": "Pilihan A...",
      "B": "Pilihan B...",
      "C": "Pilihan C...",
      "D": "Pilihan D...",
      "E": "Pilihan E..."
    },
    "skor_tkp": {
      "A": 2,
      "B": 5,
      "C": 4,
      "D": 1,
      "E": 1
    },
    "pembahasan": "Opsi B berorientasi pada pelayanan prima...",
    "gambar_url": null
  }
]
```

#### Alur Menerbitkan Soal (Publishing Workflow)
1. **Input Soal**: Tambahkan soal baru via form atau lakukan impor massal via berkas JSON.
2. **Review Draft**: Soal hasil impor otomatis masuk dengan status `draft` (belum dapat dilihat oleh peserta ujian).
3. **Pemeriksaan Kualitas**: Periksa teks, kelengkapan formula matematika, dan gambar di Bank Soal.
4. **Terbitkan**: Pilih soal yang sudah siap, lalu klik **"Terbitkan"** (status berubah menjadi `published`). Soal langsung aktif di bank soal ujian mandiri maupun dapat dimasukkan ke paket try out.

### 4. Analisis Kualitas Soal (`/admin/kualitas`)
- Mengagregasi data pengerjaan dari seluruh sesi peserta: total frekuensi dijawab dan persentase akurasi benar.
- **Deteksi Anomali ("Perlu Dicek")**:
  - Soal yang telah dijawab $\ge 5$ kali dengan akurasi $< 20\%$ otomatis ditandai sebagai indikasi kunci jawaban salah atau kalimat soal ambigu.
  - Soal dengan akurasi $> 95\%$ ditandai sebagai soal yang terlalu mudah.
  - Dilengkapi tombol cepat untuk langsung membuka halaman edit soal.

### 5. Manajemen Paket Try Out (`/admin/paket`)
- Membuat dan menyusun paket ujian terstandar pada tabel `exams` dan `exam_questions`.
- Fitur penyusunan urutan butir soal dengan tombol *Geser Naik*, *Geser Turun*, dan *Hapus dari Paket*.
- Modal pemilihan soal dari bank soal terbit dengan filter subtes dan pencarian.
- Pengaturan durasi pengerjaan dalam menit dan toggle status aktif.
- **Integrasi Dashboard Peserta**: Paket try out yang berstatus aktif otomatis muncul di halaman utama pengguna sebagai pilihan *"Paket Try Out Terjadwal"*.

### 6. Kelola Hak Akses Pengguna (`/admin/user`)
- Menampilkan daftar akun terdaftar: Nama, User ID (UUID), Peran saat ini, Target ujian, dan Tanggal pendaftaran.
- Tombol ubah hak akses pengguna (*Jadikan Admin* / *Jadikan User*).
- **Proteksi Admin Terakhir**: Sistem secara otomatis memblokir aksi penurunan role jika akun tersebut merupakan satu-satunya administrator yang tersisa di sistem.

---

## 📈 Halaman Progres & Capaian Belajar (`/progres`)

Halaman analitik personal untuk membantu peserta mengidentifikasi topik kelemahan, mengukur efisiensi waktu pengerjaan, dan memantau kemajuan skor try out secara komprehensif.

### Metrik & Aturan Perhitungan:
1. **Ringkasan Aktivitas**:
   - Total soal yang pernah dikerjakan dan akurasi kumulatif.
   - Rata-rata skor dari 5 percobaan try out terakhir.
   - Progres harian (*today's count*) vs target soal harian (default 30 soal, tersimpan di `localStorage` dan dapat diubah pengguna).
   - Hitung mundur sisa hari menuju perkiraan tanggal ujian SKD (tersimpan di `profiles.target_ujian`).
2. **Grafik Tren Skor (`recharts`)**:
   - Memetakan pergerakan skor TWK, TIU, dan Skor Total per sesi try out.
   - Dilengkapi garis referensi putus-putus untuk Passing Grade TWK (65) dan TIU (80) dari `config.ts`.
   - Filter tampilan: *10 Percobaan Terakhir* atau *Semua Percobaan*.
3. **Akurasi & Kecepatan per Topik**:
   - Diagram batang horizontal persentase akurasi yang diurutkan dari topik paling lemah ke paling dikuasai.
   - Topik dengan jumlah pengerjaan $< 3$ soal diberi label *"Data Masih Sedikit"*.
   - Waktu pengerjaan rata-rata dibandingkan dengan standar waktu ujian: $\text{Target} = 55\text{ detik/soal}$ ($100\text{ menit} / 110\text{ soal}$). Topik yang melampaui 55 detik otomatis ditandai *"Lebih lambat dari target"*.
4. **Prioritas Belajar (Rekomendasi Cerdas)**:
   - Menampilkan 5 topik teratas yang akurasinya $< 60\%$ **atau** kecepatan pengerjaannya lebih lambat dari target 55 detik.
   - Topik yang mengalami kedua masalah tersebut diposisikan di urutan teratas.
   - Tombol satu klik *"Latihan Topik Ini"* langsung mengarahkan pengguna ke sesi latihan dengan topik terkait sudah otomatis terpilih.
5. **Bank Soal Salah & Penguasaan**:
   - Mencatat seluruh soal yang pernah dijawab salah oleh pengguna beserta frekuensi salah dan tanggal terakhir salah.
   - **Kriteria "Dikuasai"**: Suatu butir soal dipindahkan dari tab *"Perlu Dilatih"* ke tab *"Dikuasai"* apabila pada **2 percobaan terbaru** terhadap soal tersebut, pengguna menjawabnya benar secara berturut-turut.
   - Tombol *"Latih Semua Soal Belum Dikuasai"* membuka mode *Ulangi Soal Salah*.
6. **Streak Harian & Peta Aktivitas 12 Minggu**:
   - **Streak Harian**: Dihitung berdasarkan hari berturut-turut di mana pengguna menyelesaikan minimal **10 soal** per hari.
   - **Peta Aktivitas 12 Minggu**: Matriks kontribusi 84 hari terakhir bergaya GitHub yang dibangun menggunakan **CSS Grid murni** tanpa library pihak ketiga dengan 4 gradasi warna intensitas latihan.
7. **Lencana Pencapaian Dinamis (Badges)**:
   - Dihitung secara komputasional langsung dari histori pengerjaan tanpa membutuhkan tabel baru:
     - *10 Benar Beruntun*
     - *Streak 7 Hari*
     - *100 Soal Terselesaikan*
     - *Skor di Atas Passing Grade*
     - *Try Out Penuh Pertama*
8. **Penyempurnaan Halaman Hasil Ujian (`/ujian/[attemptId]/hasil`)**:
   - Menampilkan kartu analisis topik yang menyumbang kesalahan terbanyak pada sesi pengerjaan tersebut beserta tombol cepat untuk melatihnya.
   - Menampilkan perbandingan perolehan skor terhadap sesi pengerjaan sebelumnya (apakah meningkat $+X$ poin atau menurun).

---

## 🎨 Konfigurasi Styling (Tailwind CSS v4 & Next.js Webpack)

Pada Next.js dengan Webpack bundler, penggunaan Tailwind CSS v4 (`@import "tailwindcss";` di `globals.css`) memerlukan paket `@tailwindcss/postcss` dan file konfigurasi `postcss.config.mjs`:

```javascript
// postcss.config.mjs
export default {
  plugins: {
    '@tailwindcss/postcss': {},
  },
};
```

Pengaturan ini memastikan utility classes Tailwind v4 dikompilasi secara optimal menjadi stylesheet berukuran ringkas (~54 KB) pada runtime development maupun production build, mencegah tampilan unstyled HTML dan ikon berukuran tidak terkontrol.

---

---

## 🛠️ Tech Stack

- **Framework**: Next.js 16 (App Router)
- **Bahasa**: TypeScript (Strict Mode)
- **Styling**: Tailwind CSS
- **Backend & Database**: Supabase (PostgreSQL, Row Level Security, Storage Buckets, Auth SSR)
- **Markdown & Math**: `react-markdown`, `remark-gfm`, `remark-math`, `rehype-katex`, `katex`
- **Visualisasi & Grafik**: `recharts`
- **Ikon UI**: `lucide-react`
- **Konfigurasi Aturan Ujian**: [web/src/lib/config.ts](src/lib/config.ts)
