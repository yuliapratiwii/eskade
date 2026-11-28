"""
Langkah 1: ambil 2 part milikmu sendiri, simpan mentah di laptopmu, lalu cetak SKEMA (nama field + tipe data, tanpa isi).
Prasyarat: Chrome debug jalan (port 9222) dan kamu sudah login di casn.privatalfaiz.id.
Jalankan: python eksplor.py     -> hasil: raw/*.json (JANGAN dikirim), skema.txt (aman dikirim)
"""
from playwright.sync_api import sync_playwright
import json, os

API = "https://service26.tryoutsiswa.com"
TRYOUT_KU = 1967224
PARTS = [(12584, 6469339), (12585, 7483150)]      # (jadwalUjianID, jadwalUjianAbsensiID) dari jejak_api.json milikmu

hdr, bodies = {}, {}

def on_req(req):
    if not req.url.startswith(API + "/api/"): return
    h = req.headers
    keep = {k: v for k, v in h.items() if k == "authorization" or k.startswith("x-")}
    if keep and not hdr: hdr.update(keep)                   # hanya di memori, tidak ditulis ke file
    if req.method == "POST" and req.post_data:
        bodies[req.url.replace(API, "")] = req.post_data

def skema(x, nama="$", out=None, depth=0):
    """cetak struktur saja: nama field, tipe, panjang; TIDAK mencetak nilai"""
    out = [] if out is None else out
    pad = "  " * depth
    if isinstance(x, dict):
        out.append(f"{pad}{nama}: objek ({len(x)} field)")
        for k, v in x.items(): skema(v, k, out, depth + 1)
    elif isinstance(x, list):
        out.append(f"{pad}{nama}: daftar [{len(x)} item]")
        if x: skema(x[0], "item[0]", out, depth + 1)
    elif isinstance(x, str):
        flag = (" +html" if "<" in x else "") + (" +img" if "<img" in x.lower() else "") + (" +tabel" if "<table" in x.lower() else "")
        out.append(f"{pad}{nama}: teks (panjang {len(x)}){flag}")
    else:
        out.append(f"{pad}{nama}: {type(x).__name__}")
    return out

with sync_playwright() as p:
    b = p.chromium.connect_over_cdp("http://localhost:9222")
    ctx = b.contexts[0]
    ctx.on("request", on_req)
    page = next((pg for pg in ctx.pages if "privatalfaiz" in pg.url), ctx.pages[0])
    print("memuat ulang halaman supaya header sesi terbaca...")
    page.reload()
    for _ in range(40):
        if hdr: break
        page.wait_for_timeout(500)
    if not hdr:
        raise SystemExit("header sesi belum terbaca; klik-klik sebentar di halaman Chrome lalu jalankan ulang")
    print("header sesi terbaca (nama saja):", list(hdr))

    os.makedirs("raw", exist_ok=True)
    lines = []
    for jid, aid in PARTS:
        url = f"{API}/api/ujian/pembahasan/{jid}?jadwalUjianAbsensiID={aid}&tryoutKuID={TRYOUT_KU}"
        r = ctx.request.get(url, headers=hdr)
        print(jid, "->", r.status)
        if not r.ok: continue
        data = r.json()
        json.dump(data, open(f"raw/pembahasan_{jid}.json", "w", encoding="utf-8"), ensure_ascii=False)
        lines += [f"=== pembahasan {jid} ==="] + skema(data) + [""]
        page.wait_for_timeout(1500)                           # jeda antar request

    # skema body request POST (kunci dan tipe saja) -> tahu cara memanggil daftar tryout
    for path, raw in bodies.items():
        try: lines += [f"=== body POST {path} ==="] + skema(json.loads(raw)) + [""]
        except Exception: lines += [f"=== body POST {path} === (bukan JSON, panjang {len(raw)})", ""]
    open("skema.txt", "w", encoding="utf-8").write("\n".join(lines))
    print("\n".join(lines[:80]))
    print("\nselesai -> skema.txt (kirim ini), raw/ (simpan, jangan dikirim)")
    b.close()
