import os
import json
import re

ROOT_DIR = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
SOURCE_JSON = os.path.join(ROOT_DIR, 'soal_semua.json')
CLEAN_JSON_PATH = os.path.join(ROOT_DIR, 'web', 'public', 'soal_clean.json')

OUT_WEB_JSON_PUBLIC = os.path.join(ROOT_DIR, 'web', 'public', 'soal_web.json')
OUT_WEB_JSON_DOC = os.path.join(ROOT_DIR, 'soal', 'soal_web.json')
OUT_WEB_MD = os.path.join(ROOT_DIR, 'soal', 'kumpulan_soal_dan_pembahasan_web.md')
OUT_MIGRATION_SQL = os.path.join(ROOT_DIR, 'supabase', 'migrations', '011_seed_web_soal.sql')

# Topic normalization
TOPIC_MAP = {
    'Analitis': 'Analitis',
    'Analogi': 'Analogi',
    'Anti Radikalisme': 'Anti Radikalisme',
    'Bahasa Negara': 'Bahasa Indonesia',
    'Bela Negara': 'Bela Negara',
    'Berhitung': 'Berhitung',
    'Bhinneka Tunggal Ika': 'Bhinneka Tunggal Ika',
    'Deret Angka': 'Deret Angka',
    'Integritas': 'Integritas',
    'Jejaring Kerja': 'Jejaring Kerja',
    'Kecukupan Data': 'Kecukupan Data',
    'NKRI': 'NKRI & Integrasi',
    'Nasionalisme': 'Nasionalisme',
    'Pancasila': 'Pancasila',
    'Pelayanan Publik': 'Pelayanan Publik',
    'Penguatan dan Pelemahan Argumen': 'Logika & Penalaran',
    'Perbandingan Kuantitatif': 'Perbandingan Kuantitatif',
    'Pola Bilangan dalam Tabel': 'Soal Tabel',
    'Profesionalisme': 'Profesionalisme',
    'Silogisme': 'Silogisme',
    'Soal Cerita': 'Soal Cerita',
    'Soal Cerita Tabel': 'Soal Cerita',
    'Sosial Budaya': 'Sosial Budaya',
    'Teknologi Informasi dan Komunikasi': 'Teknologi Informasi dan Komunikasi',
    'UUD 1945': 'UUD 1945',
    'Ketidaksamaan': 'Figural Ketaksamaan',
    'Serial': 'Figural Serial'
}

# IDs of exact duplicates to exclude (clean deduplication)
EXCLUDE_IDS = {'TIU-deret-007', 'TIU-deret-020'}

def clean_text(text):
    if not text:
        return ''
    return ' '.join(str(text).strip().split())

def main():
    print("1. Membaca soal_semua.json...")
    with open(SOURCE_JSON, 'r', encoding='utf-8') as f:
        raw_data = json.load(f)

    print(f"   Total butir dalam file: {len(raw_data)}")

    processed_list = []
    skipped_duplicates = 0
    figural_with_image_count = 0
    figural_text_count = 0

    for item in raw_data:
        q_id = str(item.get('id', '')).strip()

        # Deduplikasi: lewati 2 soal deret angka yang persis sama
        if q_id in EXCLUDE_IDS:
            skipped_duplicates += 1
            continue

        bab = item.get('bab', '')
        subtes = str(item.get('subtes', '')).upper().strip()

        # Tentukan topik
        if 'figanalogi' in q_id.lower():
            topik = 'Figural Analogi'
        else:
            topik = TOPIC_MAP.get(bab, bab)

        soal = item.get('soal', '').strip()
        opsi = dict(item.get('opsi', {}))
        kunci = item.get('kunci')
        pembahasan = item.get('pembahasan', '').strip()
        raw_gambar = item.get('gambar')

        gambar_url = None
        if raw_gambar:
            gambar_filename = os.path.basename(raw_gambar)
            gambar_url = f"/gambar/{gambar_filename}"
            figural_with_image_count += 1
            # Rapikan label opsi jika nilainya placeholder '[gambar]'
            for k in ['A', 'B', 'C', 'D', 'E']:
                if opsi.get(k) == '[gambar]':
                    opsi[k] = f"Pilihan {k}"
        elif 'fig' in q_id.lower() or bab in ['Ketidaksamaan', 'Serial']:
            figural_text_count += 1

        # Perbaiki soal TIU-banding-001 s.d. 008 yang opsi E-nya belum ada
        if len(opsi) == 4 and 'E' not in opsi:
            opsi['E'] = 'Informasi pada soal tidak cukup untuk menentukan hubungan P dan Q'

        # Pastikan 5 opsi A-E lengkap
        for k in ['A', 'B', 'C', 'D', 'E']:
            if k not in opsi:
                opsi[k] = '-'

        # Format skor_tkp untuk TKP
        skor_tkp = None
        if subtes == 'TKP':
            raw_skor = item.get('skor_tkp')
            if isinstance(raw_skor, list) and len(raw_skor) == 5:
                skor_tkp = {
                    'A': raw_skor[0],
                    'B': raw_skor[1],
                    'C': raw_skor[2],
                    'D': raw_skor[3],
                    'E': raw_skor[4],
                }
            elif isinstance(raw_skor, dict):
                skor_tkp = raw_skor
            else:
                # 84 soal TKP tanpa skor_tkp eksplisit: kunci adalah opsi terbaik (nilai 5)
                best_key = kunci if kunci in ['A', 'B', 'C', 'D', 'E'] else 'A'
                skor_tkp = {}
                score_pool = [4, 3, 2, 1]
                idx_p = 0
                for k in ['A', 'B', 'C', 'D', 'E']:
                    if k == best_key:
                        skor_tkp[k] = 5
                    else:
                        skor_tkp[k] = score_pool[idx_p]
                        idx_p += 1

            # Pastikan kunci TKP diisi opsi dengan skor 5
            best_opt = max(skor_tkp.items(), key=lambda x: x[1])[0]
            kunci = best_opt

        processed_list.append({
            'original_id': q_id,
            'subtes': subtes,
            'topik': topik,
            'level': 'sedang',
            'soal': soal,
            'gambar_url': gambar_url,
            'opsi': opsi,
            'kunci': kunci,
            'skor_tkp': skor_tkp,
            'pembahasan': pembahasan
        })

    print(f"   Duplikat internal dilewati: {skipped_duplicates} butir ({', '.join(EXCLUDE_IDS)})")
    print(f"   Soal figural bergambar: {figural_with_image_count} butir")
    print(f"   Soal figural teks: {figural_text_count} butir")
    print(f"   Total soal bersih siap pakai: {len(processed_list)} butir")

    # 2. Buat file JSON mandiri untuk user impor mandiri
    print("\n2. Membuat file soal_web.json untuk impor mandiri...")
    web_json_data = []
    for idx, q in enumerate(processed_list):
        web_json_data.append({
            'sumber': 'web',
            'nomor': idx + 1,
            'subtes': q['subtes'],
            'topik': q['topik'],
            'level': 'sedang',
            'soal': q['soal'],
            'gambar_url': q['gambar_url'],
            'opsi': q['opsi'],
            'kunci': q['kunci'],
            'pembahasan': q['pembahasan'],
            'skor_tkp': q['skor_tkp'],
            'status': 'published'
        })

    with open(OUT_WEB_JSON_PUBLIC, 'w', encoding='utf-8') as f:
        json.dump(web_json_data, f, indent=2, ensure_ascii=False)
    with open(OUT_WEB_JSON_DOC, 'w', encoding='utf-8') as f:
        json.dump(web_json_data, f, indent=2, ensure_ascii=False)
    print(f"   ✓ Disimpan di {OUT_WEB_JSON_PUBLIC} & {OUT_WEB_JSON_DOC} ({(os.path.getsize(OUT_WEB_JSON_PUBLIC)/1024):.1f} KB)")

    # 3. Buat dokumen Markdown
    print("\n3. Membuat dokumen Markdown kumpulan_soal_dan_pembahasan_web.md...")
    md_lines = [
        "# Kumpulan Soal dan Pembahasan SKD CPNS (Sumber: Web)",
        "**Sumber:** Web  ",
        f"**Total Soal:** {len(processed_list)} Butir  ",
        f"*(TWK: {sum(1 for q in processed_list if q['subtes']=='TWK')}, TIU: {sum(1 for q in processed_list if q['subtes']=='TIU')}, TKP: {sum(1 for q in processed_list if q['subtes']=='TKP')})*  ",
        f"*(Figural Bergambar: {figural_with_image_count} butir, Figural Teks: {figural_text_count} butir)*\n",
        "---\n"
    ]

    current_subtes = None
    for idx, q in enumerate(processed_list):
        s = q['subtes']
        if s != current_subtes:
            current_subtes = s
            sub_count = sum(1 for x in processed_list if x['subtes'] == s)
            md_lines.append(f"\n## Bagian: {s} ({sub_count} Soal)\n\n---\n")

        nomor = idx + 1
        md_lines.append(f"### Soal Nomor {nomor} ({s} - {q['topik']})\n")
        if q['gambar_url']:
            md_lines.append(f"![Gambar Soal Nomor {nomor}]({q['gambar_url']})\n")
        md_lines.append(f"{q['soal']}\n")

        for opt in ['A', 'B', 'C', 'D', 'E']:
            opt_text = q['opsi'].get(opt, '-')
            if s == 'TKP' and q['skor_tkp']:
                score = q['skor_tkp'].get(opt, 0)
                md_lines.append(f"* **{opt}.** {opt_text} *(Skor: {score})*")
            else:
                md_lines.append(f"* **{opt}.** {opt_text}")

        md_lines.append(f"\n#### Pembahasan Nomor {nomor}\n")
        if s == 'TKP' and q['skor_tkp']:
            scores_str = ", ".join([f"{k}={v}" for k, v in q['skor_tkp'].items()])
            md_lines.append(f"* **Opsi Terbaik (Skor 5):** **{q['kunci']}**")
            md_lines.append(f"* **Bobot Skor:** {scores_str}")
        else:
            md_lines.append(f"* **Jawaban:** **{q['kunci']}**")
        md_lines.append(f"* **Penjelasan:**\n  {q['pembahasan']}\n")
        md_lines.append("---\n")

    with open(OUT_WEB_MD, 'w', encoding='utf-8') as f:
        f.write("\n".join(md_lines))
    print(f"   ✓ Disimpan di {OUT_WEB_MD} ({(os.path.getsize(OUT_WEB_MD)/1024):.1f} KB)")

    # 4. Gabungkan ke soal_clean.json
    print("\n4. Menggabungkan ke web/public/soal_clean.json...")
    with open(CLEAN_JSON_PATH, 'r', encoding='utf-8') as f:
        clean_existing = json.load(f)

    # Filter out existing 'web'
    filtered_clean = [q for q in clean_existing if q.get('sumber') != 'web']

    clean_new_list = []
    for idx, q in enumerate(processed_list):
        clean_new_list.append({
            'sumber': 'web',
            'nomor': idx + 1,
            'subtes': q['subtes'],
            'topik': q['topik'],
            'level': 'sedang',
            'soal': q['soal'],
            'gambar': q['gambar_url'],
            'gambar_url': q['gambar_url'],
            'opsi': q['opsi'],
            'kunci': q['kunci'],
            'pembahasan': q['pembahasan'],
            'pembahasanGambar': None,
            'pembahasan_gambar': None,
            'skor_tkp': q['skor_tkp'],
            'status': 'published'
        })

    combined_clean = filtered_clean + clean_new_list
    with open(CLEAN_JSON_PATH, 'w', encoding='utf-8') as f:
        json.dump(combined_clean, f, indent=2, ensure_ascii=False)
    print(f"   ✓ soal_clean.json kini memiliki total {len(combined_clean)} butir soal (sebelumnya {len(clean_existing)}).")

    # 5. Buat migrasi SQL: 011_seed_web_soal.sql
    print("\n5. Membuat migrasi SQL: 011_seed_web_soal.sql...")
    def escape_sql_str(s):
        if s is None:
            return 'NULL'
        return "'" + str(s).replace("'", "''") + "'"

    def escape_sql_json(obj):
        if obj is None:
            return 'NULL'
        return "'" + json.dumps(obj, ensure_ascii=False).replace("'", "''") + "'::jsonb"

    sql_parts = [
        f"-- Migration 011: Seed {len(clean_new_list)} Soal SKD CPNS dari Sumber Web",
        "-- TWK: " + str(sum(1 for q in clean_new_list if q['subtes']=='TWK')) + " soal, " +
        "TIU: " + str(sum(1 for q in clean_new_list if q['subtes']=='TIU')) + " soal, " +
        "TKP: " + str(sum(1 for q in clean_new_list if q['subtes']=='TKP')) + " soal",
        f"-- Termasuk {figural_with_image_count} soal figural bergambar + {figural_text_count} soal figural teks.",
        "",
        "-- Hapus soal web lama jika ada (idempotent)",
        "DELETE FROM exam_questions WHERE question_id IN (SELECT id FROM questions WHERE sumber = 'web');",
        "DELETE FROM attempt_answers WHERE question_id IN (SELECT id FROM questions WHERE sumber = 'web');",
        "DELETE FROM questions WHERE sumber = 'web';",
        "",
        "INSERT INTO questions (",
        "  sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, kunci, pembahasan, pembahasan_gambar, skor_tkp, status",
        ")",
        "VALUES"
    ]

    value_rows = []
    for item in clean_new_list:
        row = f"""(
  {escape_sql_str(item['sumber'])},
  {item['nomor']},
  {escape_sql_str(item['subtes'])},
  {escape_sql_str(item['topik'])},
  {escape_sql_str(item['level'])},
  {escape_sql_str(item['soal'])},
  {escape_sql_str(item['gambar_url'])},
  {escape_sql_json(item['opsi'])},
  {escape_sql_str(item['kunci'])},
  {escape_sql_str(item['pembahasan'])},
  NULL,
  {escape_sql_json(item['skor_tkp'])},
  'published'
)"""
        value_rows.append(row)

    sql_parts.append(",\n".join(value_rows) + ";\n")
    full_sql = "\n".join(sql_parts)

    with open(OUT_MIGRATION_SQL, 'w', encoding='utf-8') as f:
        f.write(full_sql)
    print(f"   ✓ Generated {OUT_MIGRATION_SQL} ({(os.path.getsize(OUT_MIGRATION_SQL)/1024):.1f} KB)")
    print("\nSeluruh proses pemrosesan soal sumber web selesai dengan sukses!")

if __name__ == '__main__':
    main()
