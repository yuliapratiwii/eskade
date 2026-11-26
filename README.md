# Aplikasi Simulasi Try Out SKD CPNS (CAT BKN)

Aplikasi web modern berbasis **Next.js 16 (App Router)** dan **Supabase** untuk latihan soal, try out resmi standar CAT BKN, evaluasi progres, analisis kelemahan per subtes/topik, serta manajemen bank soal admin.

---

## 📁 Struktur Direktori Proyek

```text
SKD/
├── soal/      # Arsip dokumen asli Word (.docx), PDF, dan Markdown sumber soal
├── scripts/             # Skrip utilitas, otomatisasi, dan automated testing
├── supabase/            # Migrasi database SQL (skema, tabel, RLS, & seed data)
│   └── migrations/      # File migrasi terurut (001 s/d 006)
├── web/                 # Aplikasi Web Utama (Next.js 16 + Tailwind CSS)
│   ├── public/          # Aset statis gambar soal (/gambar, dll) & soal_clean.json
│   └── src/             # Source code React components, page routes, & logic
└── README.md            # Dokumentasi proyek
```

---

## 🚀 Cara Menjalankan Lokal (Development)

1. Masuk ke folder web:
   ```bash
   cd web
   ```
2. Jalankan server lokal:
   ```bash
   npm run dev
   ```
3. Buka browser di `http://localhost:3000`.

---

## 🧪 Menjalankan Automated Testing

Dari root proyek, Anda dapat menguji seluruh integritas sistem kapan saja:
```bash
# 1. Uji integritas bank soal, formula LaTeX, dan fisik gambar
node scripts/test_integrity.cjs

# 2. Uji algoritma distribusi merata topik & deduplikasi paket
node scripts/test_topic_distribution.cjs

# 3. Uji kompilasi build produksi Next.js
npm --prefix web run build
```

---

## ☁️ Siap Deploy ke Vercel (100% Free)
- **Framework Preset:** Next.js
- **Root Directory:** `web`
- **Environment Variables:**
  - `NEXT_PUBLIC_SUPABASE_URL`
  - `NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY`
