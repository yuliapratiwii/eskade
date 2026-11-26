import os
import re
import json
import pypdf

# Paths
ROOT_DIR = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
PDF_PATH = r'C:\Users\raven\.gemini\antigravity\brain\943c9b6c-4902-49af-9b68-71c070cdc9b6\.user_uploaded\media_1795441918645_0f01dd61.pdf'
CLEAN_JSON_PATH = os.path.join(ROOT_DIR, 'web', 'public', 'soal_clean.json')

OUT_MASTER_JSON_WEB = os.path.join(ROOT_DIR, 'web', 'public', 'soal_master_twt.json')
OUT_MASTER_JSON_DOC = os.path.join(ROOT_DIR, 'soal', 'soal_master_twt.json')
OUT_BANK_JSON_WEB = os.path.join(ROOT_DIR, 'web', 'public', 'soal_bank_soal_twt.json')
OUT_BANK_JSON_DOC = os.path.join(ROOT_DIR, 'soal', 'soal_bank_soal_twt.json')
OUT_MASTER_MD = os.path.join(ROOT_DIR, 'soal', 'kumpulan_soal_dan_pembahasan_master_skd_twt.md')
OUT_MIGRATION_SQL = os.path.join(ROOT_DIR, 'supabase', 'migrations', '009_seed_master_twt_soal.sql')

# Topic normalization mapping
TOPIC_MAP = {
    'Nasionalisme': 'Nasionalisme',
    'Integritas': 'Integritas',
    'Bela Negara': 'Bela Negara',
    'Pilar Negara': 'Pilar Negara',
    'Bahasa Negara': 'Bahasa Indonesia',
    'Verbal - Analogi': 'Analogi',
    'Verbal - Silogisme': 'Silogisme',
    'Verbal - Analitis': 'Analitis',
    'Numerik - Berhitung': 'Berhitung',
    'Numerik - Deret': 'Deret Angka',
    'Numerik - Perbandingan': 'Perbandingan Kuantitatif',
    'Numerik - Soal Cerita': 'Soal Cerita',
    'Pelayanan publik': 'Pelayanan Publik',
    'Jejaring kerja': 'Jejaring Kerja',
    'Sosial budaya': 'Sosial Budaya',
    'Teknologi informasi': 'Teknologi Informasi dan Komunikasi',
    'Profesionalisme': 'Profesionalisme',
    'Antiradikalisme': 'Anti Radikalisme'
}

def clean_text(text):
    if not text:
        return ''
    # Normalize spaces and newlines
    lines = [l.strip() for l in text.split('\n')]
    return ' '.join([l for l in lines if l])

def parse_master_pdf():
    reader = pypdf.PdfReader(PDF_PATH)
    full_text = []
    for p in reader.pages[4:]:  # Skip intro pages 1-4
        t = p.extract_text()
        t = re.sub(r'By HRT\s+MASTER SKD CPNS \| Paket 1 \| By HRT\s+\d+', '', t)
        t = re.sub(r'BAGIAN (TWK|TIU|TKP) - LATIHAN SOAL[^\n]*\n[^\n]*', '', t)
        full_text.append(t)
    joined = '\n'.join(full_text)

    pattern = re.compile(r'SOAL\s+(\d{3})\s*\|\s*(TWK|TIU|TKP)\s*\|\s*([^\n\r]+)')
    matches = list(pattern.finditer(joined))

    parsed_questions = []

    for i, m in enumerate(matches):
        num_str = m.group(1)
        num = int(num_str)
        subtes = m.group(2)
        raw_topik = m.group(3).strip()
        topik = TOPIC_MAP.get(raw_topik, raw_topik)

        if 266 <= num <= 295:
            # Exclude figural questions
            continue

        start_pos = m.end()
        end_pos = matches[i+1].start() if i+1 < len(matches) else len(joined)
        block = joined[start_pos:end_pos].strip()

        kunci_match = re.search(r'Kunci:\s*([A-E])(?:\s*\|\s*Skor TKP:\s*([^\n]+))?', block)
        if not kunci_match:
            raise ValueError(f"Soal #{num}: Kunci not found")

        kunci = kunci_match.group(1).strip()
        skor_tkp_raw = kunci_match.group(2)

        pembahasan_match = re.search(r'Pembahasan:\s*(.+)$', block, re.DOTALL)
        pembahasan = clean_text(pembahasan_match.group(1)) if pembahasan_match else ''

        before_kunci = block[:kunci_match.start()].strip()
        opt_a_match = re.search(r'(?:^|\n)\s*A\.\s*', before_kunci)
        if not opt_a_match:
            raise ValueError(f"Soal #{num}: Option A not found")

        stem = clean_text(before_kunci[:opt_a_match.start()])
        options_text = before_kunci[opt_a_match.start():].strip()

        opts = {}
        opt_matches = list(re.finditer(r'(?:^|\n)\s*([A-E])\.\s*(.+?)(?=(?:\n\s*[A-E]\.|\Z))', options_text, re.DOTALL))
        for om in opt_matches:
            lbl = om.group(1)
            val = clean_text(om.group(2))
            opts[lbl] = val

        for k in ['A', 'B', 'C', 'D', 'E']:
            if k not in opts or not opts[k]:
                raise ValueError(f"Soal #{num}: Option {k} missing")

        skor_tkp = None
        if subtes == 'TKP':
            if not skor_tkp_raw:
                raise ValueError(f"Soal #{num}: Skor TKP missing")
            skor_tkp = {}
            for part in skor_tkp_raw.split(','):
                part = part.strip()
                if '=' in part:
                    k_lbl, k_val = part.split('=', 1)
                    skor_tkp[k_lbl.strip()] = int(k_val.strip())
            for k in ['A', 'B', 'C', 'D', 'E']:
                if k not in skor_tkp:
                    raise ValueError(f"Soal #{num}: Skor TKP for {k} missing")

        parsed_questions.append({
            'nomor_original': num,
            'subtes': subtes,
            'topik': topik,
            'raw_topik': raw_topik,
            'soal': stem,
            'opsi': opts,
            'kunci': kunci,
            'skor_tkp': skor_tkp,
            'pembahasan': pembahasan
        })

    return parsed_questions

def main():
    print("1. Parsing questions from Master PDF...")
    master_q = parse_master_pdf()
    print(f"   Successfully parsed {len(master_q)} non-figural questions.")

    # 2. Extract Bank Soal I twt questions from clean json
    print("2. Extracting Bank Soal I questions from soal_clean.json...")
    with open(CLEAN_JSON_PATH, 'r', encoding='utf-8') as f:
        existing_data = json.load(f)

    bank_soal_twt = [q for q in existing_data if q.get('sumber') == 'twt']
    print(f"   Found {len(bank_soal_twt)} Bank Soal I twt questions.")

    # Write web/public/soal_bank_soal_twt.json and copy to soal
    with open(OUT_BANK_JSON_WEB, 'w', encoding='utf-8') as f:
        json.dump(bank_soal_twt, f, indent=2, ensure_ascii=False)
    with open(OUT_BANK_JSON_DOC, 'w', encoding='utf-8') as f:
        json.dump(bank_soal_twt, f, indent=2, ensure_ascii=False)
    print(f"   Saved {OUT_BANK_JSON_WEB} and {OUT_BANK_JSON_DOC}")

    # 3. Create standalone JSON for Master Twt
    # In soal_master_twt.json, sequential nomor 1 to 470
    master_json_list = []
    for idx, q in enumerate(master_q):
        master_json_list.append({
            'sumber': 'twt',
            'nomor': idx + 1,
            'subtes': q['subtes'],
            'topik': q['topik'],
            'level': 'sedang',
            'soal': q['soal'],
            'gambar_url': None,
            'opsi': q['opsi'],
            'kunci': q['kunci'],
            'pembahasan': q['pembahasan'],
            'skor_tkp': q['skor_tkp'],
            'status': 'published'
        })

    with open(OUT_MASTER_JSON_WEB, 'w', encoding='utf-8') as f:
        json.dump(master_json_list, f, indent=2, ensure_ascii=False)
    with open(OUT_MASTER_JSON_DOC, 'w', encoding='utf-8') as f:
        json.dump(master_json_list, f, indent=2, ensure_ascii=False)
    print(f"   Saved {OUT_MASTER_JSON_WEB} and {OUT_MASTER_JSON_DOC} ({len(master_json_list)} soal)")

    # 4. Generate Markdown Document
    print("4. Generating Markdown document...")
    md_lines = [
        "# Kumpulan Soal dan Pembahasan MASTER SKD CPNS Paket 1 (Twitter / twt)",
        "**Penyusun:** By HRT (Edisi Persiapan Mandiri 2026)  ",
        "**Sumber:** Twitter / X (twt)  ",
        "**Total Soal:** 470 Butir (TWK: 135, TIU: 130 non-figural, TKP: 205)  ",
        "*(Catatan: 30 Soal Figural No. 266–295 tidak disertakan sesuai preferensi bebas figural)*\n",
        "---\n"
    ]

    current_subtes = None
    for idx, q in enumerate(master_q):
        s = q['subtes']
        if s != current_subtes:
            current_subtes = s
            title_map = {
                'TWK': 'Bagian I: Tes Wawasan Kebangsaan (TWK) - 135 Soal',
                'TIU': 'Bagian II: Tes Intelegensia Umum (TIU) - 130 Soal Non-Figural',
                'TKP': 'Bagian III: Tes Karakteristik Pribadi (TKP) - 205 Soal'
            }
            md_lines.append(f"\n## {title_map.get(s, s)}\n\n---\n")

        nomor = idx + 1
        md_lines.append(f"### Soal Nomor {nomor} ({s} - {q['topik']})\n")
        md_lines.append(f"{q['soal']}\n")

        for opt in ['A', 'B', 'C', 'D', 'E']:
            opt_text = q['opsi'][opt]
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

    with open(OUT_MASTER_MD, 'w', encoding='utf-8') as f:
        f.write("\n".join(md_lines))
    print(f"   Saved {OUT_MASTER_MD} ({(os.path.getsize(OUT_MASTER_MD)/1024):.1f} KB)")

    # 5. Merge into web/public/soal_clean.json
    print("5. Merging questions into soal_clean.json...")
    non_twt = [q for q in existing_data if q.get('sumber') != 'twt']
    # Bank soal twt keeps nomor 1..100
    # Master twt gets nomor 101..570
    master_clean_list = []
    for idx, q in enumerate(master_q):
        master_clean_list.append({
            'sumber': 'twt',
            'nomor': 100 + idx + 1,
            'subtes': q['subtes'],
            'topik': q['topik'],
            'level': 'sedang',
            'soal': q['soal'],
            'gambar': None,
            'gambar_url': None,
            'opsi': q['opsi'],
            'kunci': q['kunci'],
            'pembahasan': q['pembahasan'],
            'pembahasanGambar': None,
            'pembahasan_gambar': None,
            'skor_tkp': q['skor_tkp'],
            'status': 'published'
        })

    combined = non_twt + bank_soal_twt + master_clean_list
    with open(CLEAN_JSON_PATH, 'w', encoding='utf-8') as f:
        json.dump(combined, f, indent=2, ensure_ascii=False)
    print(f"   Updated {CLEAN_JSON_PATH}: Total {len(combined)} questions (112 Try Out + 100 Bank Soal twt + 470 Master twt).")

    # 6. Generate Supabase Migration 009
    print("6. Generating Supabase Migration 009...")
    def escape_sql_str(s):
        if s is None:
            return 'NULL'
        return "'" + str(s).replace("'", "''") + "'"

    def escape_sql_json(obj):
        if obj is None:
            return 'NULL'
        return "'" + json.dumps(obj, ensure_ascii=False).replace("'", "''") + "'::jsonb"

    sql_parts = [
        "-- Migration 009: Seed 470 Soal MASTER SKD CPNS Paket 1 dari Sumber Twt (By HRT)",
        "-- TWK: 135 soal (Nomor 101-235), TIU: 130 soal (Nomor 236-365), TKP: 205 soal (Nomor 366-570)",
        "-- Catatan: 30 soal figural (266-295) dikecualikan.",
        "",
        "-- Hapus soal master twt lama jika ada (idempotent, nomor 101-570)",
        "DELETE FROM exam_questions WHERE question_id IN (SELECT id FROM questions WHERE sumber = 'twt' AND nomor > 100);",
        "DELETE FROM attempt_answers WHERE question_id IN (SELECT id FROM questions WHERE sumber = 'twt' AND nomor > 100);",
        "DELETE FROM questions WHERE sumber = 'twt' AND nomor > 100;",
        "",
        "INSERT INTO questions (",
        "  sumber, nomor, subtes, topik, level, soal, gambar_url, opsi, kunci, pembahasan, pembahasan_gambar, skor_tkp, status",
        ")",
        "VALUES"
    ]

    value_rows = []
    for item in master_clean_list:
        row = f"""(
  {escape_sql_str(item['sumber'])},
  {item['nomor']},
  {escape_sql_str(item['subtes'])},
  {escape_sql_str(item['topik'])},
  {escape_sql_str(item['level'])},
  {escape_sql_str(item['soal'])},
  NULL,
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
    print(f"   Generated {OUT_MIGRATION_SQL} ({(os.path.getsize(OUT_MIGRATION_SQL)/1024):.1f} KB)")
    print("\nAll tasks completed successfully!")

if __name__ == '__main__':
    main()
