"""
Ambil soal + pembahasan dari TRYOUT MILIKMU SENDIRI di casn.privatalfaiz.id (untuk belajar pribadi).

Prasyarat:  pip install playwright requests beautifulsoup4
            Chrome debug jalan (port 9222) dan kamu sudah login di casn.privatalfaiz.id
Jalankan:   python alfaiz_scrape.py                # semua tryout & part milikmu yang sudah dikerjakan
            python alfaiz_scrape.py --maks 2       # uji dulu 2 part saja
            python alfaiz_scrape.py --basis0       # kalau kunci jawaban terbaca bergeser (lihat ringkasan.txt)
            python alfaiz_scrape.py --ulang        # abaikan cache raw/ dan ambil ulang
Hasil di folder alfaiz_out/:  alfaiz_soal.json, alfaiz_soal.md, gambar/, raw/, ringkasan.txt

Yang dilakukan skrip ini hanya memakai daftar resmi di akunmu (bukan menebak ID), dan melewati part yang belum
ada hasil pengerjaannya. Pelan-pelan (jeda antar request). Jangan dibagikan ulang hasilnya (konten berbayar).
"""
import json, os, re, sys, time, hashlib
from collections import Counter
from urllib.parse import urljoin
from bs4 import BeautifulSoup

try: sys.stdout.reconfigure(encoding="utf-8", errors="replace")
except Exception: pass

API = "https://service26.tryoutsiswa.com"
SITE = "https://casn.privatalfaiz.id/"
TRYOUT_KU_IDS = [1967224]          # tambahkan ID tryout lain milikmu di sini kalau perlu
JEDA = 2.0                          # detik antar request besar
OUT = "alfaiz_out"

# ---------------------------------------------------------------- util
def collect(o, key, out=None):
    """kumpulkan semua dict (di mana pun letaknya) yang punya field `key`"""
    out = [] if out is None else out
    if isinstance(o, dict):
        if key in o: out.append(o)
        for v in o.values(): collect(v, key, out)
    elif isinstance(o, list):
        for v in o: collect(v, key, out)
    return out

def subtes(nama):
    n = (nama or "").lower()
    if "kebangsaan" in n or "twk" in n: return "TWK"
    if "intelegensi" in n or "tiu" in n: return "TIU"
    if "karakteristik" in n or "tkp" in n: return "TKP"
    return nama or "?"

ILLEGAL = re.compile(r"[\x00-\x08\x0b\x0c\x0e-\x1f]")
def txt(h, md=False):
    """HTML -> teks. Gambar jadi ![gambar](path) di mode md, [gambar: path] di mode teks. Tabel jadi tabel md."""
    if not h: return ""
    s = BeautifulSoup(h, "html.parser")
    for im in s.find_all("img"):
        src = im.get("src", "")
        im.replace_with(f"\n\n![gambar]({src})\n\n" if md else f" [gambar: {src}] ")
    for t in s.find_all("table"):
        rows = [[c.get_text(" ", strip=True) for c in r.find_all(["th", "td"])] for r in t.find_all("tr")]
        if md and rows:
            n = max(map(len, rows)); rows = [r + [""] * (n - len(r)) for r in rows]
            lines = ["| " + " | ".join(r) + " |" for r in rows]; lines.insert(1, "|" + "---|" * n)
            t.replace_with("\n\n" + "\n".join(lines) + "\n\n")
        else:
            t.replace_with("\n" + "\n".join(" | ".join(r) for r in rows) + "\n")
    for b in s.find_all(["p", "div", "br", "tr", "li"]): b.insert_after("\n")
    out = s.get_text(" ")
    out = re.sub(r"[ \t]+", " ", out); out = re.sub(r" ?\n ?", "\n", out)
    out = re.sub(r" ([.,:;!?)\]])", r"\1", out); out = re.sub(r"([(\[]) ", r"\1", out)
    return ILLEGAL.sub("", re.sub(r"\n{3,}", "\n\n", out).strip())

# ---------------------------------------------------------------- API
class Api:
    def __init__(self, ctx, hdr): self.ctx, self.hdr = ctx, hdr
    def _go(self, fn):
        for att in range(4):
            r = fn()
            if r.status in (401, 403):
                raise SystemExit(f"Sesi ditolak ({r.status}). Login ulang di Chrome, lalu jalankan lagi.")
            if r.status == 429 or r.status >= 500:
                time.sleep(4 * (att + 1)); continue
            return r if r.ok else None
        return None
    def get_json(self, url):
        r = self._go(lambda: self.ctx.request.get(url, headers=self.hdr))
        try: return r.json() if r else None
        except Exception: return None
    def get_bytes(self, url):
        r = self._go(lambda: self.ctx.request.get(url))
        return r.body() if r else None

def get_session(p):
    b = p.chromium.connect_over_cdp("http://localhost:9222")
    ctx = b.contexts[0]
    hdr, cap = {}, {}
    def on_req(req):
        if not req.url.startswith(API + "/api/"): return
        h = req.headers
        keep = {k: v for k, v in h.items() if k == "authorization" or k.startswith("x-")}
        if keep and not hdr: hdr.update(keep)                           # hanya di memori
        if req.method == "POST" and req.url.split("?")[0].endswith("/api/global/tryoutku") and req.post_data:
            cap["list"] = {"url": req.url, "body": req.post_data, "ct": h.get("content-type", "application/json")}
    ctx.on("request", on_req)
    page = next((pg for pg in ctx.pages if "privatalfaiz" in pg.url), ctx.pages[0])
    page.goto(SITE + "#!/tryout-ku"); page.reload()
    t0 = time.time()
    while time.time() - t0 < 20 and not (hdr and ("list" in cap or time.time() - t0 > 8)):
        page.wait_for_timeout(500)
    if not hdr: raise SystemExit("Header sesi belum terbaca. Pastikan sudah login di Chrome itu, lalu jalankan lagi.")
    return ctx, hdr, cap

def discover(api, cap):
    ids = list(TRYOUT_KU_IDS)
    c = cap.get("list")
    if c:                                         # ulang panggilan daftar "Tryout-ku" yang dibuat aplikasinya sendiri
        r = api._go(lambda: api.ctx.request.post(c["url"], data=c["body"], headers={**api.hdr, "content-type": c["ct"]}))
        if r:
            try:
                for d in collect(r.json(), "tryoutKuID"):
                    if isinstance(d["tryoutKuID"], int) and d["tryoutKuID"] not in ids: ids.append(d["tryoutKuID"])
            except Exception: pass
    return ids

def list_parts(api, tk):
    parts, skip = {}, 0
    while skip < 500:
        js = api.get_json(f"{API}/api/global/tryoutku/paket?Keyword=&PageSize=10&filters=&pageSize=10&skip={skip}&tryoutKuID={tk}")
        new = 0
        for d in collect(js, "jadwalUjianID"):
            j = d["jadwalUjianID"]
            if isinstance(j, int) and j not in parts: parts[j] = d.get("nama") or ""; new += 1
        if not new: break
        skip += 10; time.sleep(JEDA)
    return parts

def find_absensi(api, tk, jid):
    for path in (f"hasil-paket?incDetailHasil=true&jadwalUjianID={jid}&tryoutKuID={tk}",
                 f"paket?incSummaryPaket=true&jadwalUjianID={jid}&tryoutKuID={tk}"):
        js = api.get_json(f"{API}/api/global/tryoutku/{path}")
        ids = [d["jadwalUjianAbsensiID"] for d in collect(js, "jadwalUjianAbsensiID")
               if isinstance(d["jadwalUjianAbsensiID"], int) and d["jadwalUjianAbsensiID"]]
        if ids: return max(ids)
        time.sleep(0.5)
    return None

# ---------------------------------------------------------------- gambar
def localize(html, api, cache, out=OUT):
    """unduh <img> ke gambar/ dan ganti src menjadi path lokal"""
    if not html or "<img" not in html.lower(): return html or "", []
    soup, files = BeautifulSoup(html, "html.parser"), []
    for im in soup.find_all("img"):
        src = im.get("src") or ""
        if not src or src.startswith("data:"): continue
        url = urljoin(SITE, src)
        if url not in cache:
            ext = os.path.splitext(url.split("?")[0])[1].lower()
            ext = ext if ext in (".png", ".jpg", ".jpeg", ".gif", ".webp", ".svg") else ".png"
            name = hashlib.md5(url.encode()).hexdigest()[:12] + ext
            if os.path.exists(f"{out}/gambar/{name}"):
                cache[url] = f"gambar/{name}"                      # sudah ada, tidak perlu unduh
            else:
                data = api.get_bytes(url)
                if data:
                    open(f"{out}/gambar/{name}", "wb").write(data); cache[url] = f"gambar/{name}"
                else: cache[url] = None
                time.sleep(0.3)
        if cache[url]: im["src"] = cache[url]; files.append(cache[url])
    return str(soup), files

# ---------------------------------------------------------------- baris soal
def build_rows(js, tk, jid, api, cache, basis0=False):
    d = (js or {}).get("data") or {}
    rows = []
    for pel in d.get("ujianPelajaran") or []:
        st = subtes(pel.get("namaPelajaran"))
        for n, q in enumerate(pel.get("dataSoal") or [], 1):
            files = []
            def loc(h):
                h2, f = localize(h, api, cache); files.extend(f); return h2
            q_html = loc(q.get("pertanyaan"))
            e_html = loc(q.get("pembahasan"))
            o_html = {chr(64 + i): loc(q.get(f"pilihan{i}")) for i in range(1, 12) if (q.get(f"pilihan{i}") or "").strip()}
            raw = q.get("jawabanBenar")
            idx = (raw if basis0 else raw - 1) if isinstance(raw, int) else -1
            kunci = chr(65 + idx) if 0 <= idx < 11 and chr(65 + idx) in o_html else ""
            rows.append({"id": f"{jid}-{q.get('soalID')}", "tryoutKuID": tk, "jadwalUjianID": jid, "paket": d.get("nama"),
                         "subtes": st, "pelajaran": pel.get("namaPelajaran"), "no": n, "bab": q.get("bab"),
                         "soal": txt(q_html), "opsi": {k: txt(v) for k, v in o_html.items()},
                         "kunci": kunci, "kunci_raw": raw, "skor": q.get("skor"), "jenis": q.get("jenis"),
                         "pembahasan": txt(e_html), "keterangan": q.get("keterangan") or "",
                         "gambar": sorted(set(files)),
                         "soal_html": q_html, "opsi_html": o_html, "pembahasan_html": e_html})
    return rows

# ---------------------------------------------------------------- keluaran
def write_md(rows, path):
    L = ["# Soal & pembahasan (tryout milikku)", "", f"Total {len(rows)} soal.", ""]
    cp = cs = None
    for r in rows:
        if r["jadwalUjianID"] != cp: L += ["", f"## {r['paket']}", ""]; cp, cs = r["jadwalUjianID"], None
        if r["subtes"] != cs: L += [f"### {r['subtes']}", ""]; cs = r["subtes"]
        L += [f"#### {r['jadwalUjianID']} · no {r['no']}", ""]
        L += [txt(r["soal_html"], md=True).replace("\n", "  \n"), ""]
        for k, v in r["opsi_html"].items(): L.append(f"- **{k}.** " + txt(v, md=True).replace("\n", " "))
        L += ["", f"**Kunci:** {r['kunci'] or '(lihat kunci_raw=' + str(r['kunci_raw']) + ')'}", ""]
        if r["pembahasan_html"]: L += ["**Pembahasan:** " + txt(r["pembahasan_html"], md=True).replace("\n", "  \n"), ""]
        L += ["---", ""]
    open(path, "w", encoding="utf-8").write("\n".join(L))

def ringkasan(rows):
    """ringkasan tanpa isi soal -> aman dikirim untuk pengecekan kunci/TKP"""
    L = [f"total soal: {len(rows)} | part: {len({r['jadwalUjianID'] for r in rows})}"]
    for st in sorted({r["subtes"] for r in rows}):
        rs = [r for r in rows if r["subtes"] == st]
        L += [f"\n[{st}] {len(rs)} soal",
              f"  kunci_raw (sebaran): {dict(sorted(Counter(r['kunci_raw'] for r in rs).items(), key=lambda x: str(x[0])))}",
              f"  kunci terisi: {sum(1 for r in rs if r['kunci'])}/{len(rs)}",
              f"  jenis: {dict(Counter(r['jenis'] for r in rs))}",
              f"  skor (nilai unik): {sorted({r['skor'] for r in rs if r['skor'] is not None})[:8]}",
              f"  jumlah opsi: {dict(Counter(len(r['opsi']) for r in rs))}",
              f"  keterangan terisi: {sum(1 for r in rs if r['keterangan'])} | bergambar: {sum(1 for r in rs if r['gambar'])}"]
        img = lambda h: "<img" in (h or "").lower()
        files = Counter(f for r in rs for f in r["gambar"])
        L += [f"  gambar di: soal={sum(1 for r in rs if img(r['soal_html']))}, "
              f"opsi={sum(1 for r in rs if any(img(v) for v in r['opsi_html'].values()))}, "
              f"pembahasan={sum(1 for r in rs if img(r['pembahasan_html']))}",
              f"  file gambar unik: {len(files)} | paling sering berulang: {files.most_common(1)[0][1] if files else 0}x"]
    return "\n".join(L)

# ---------------------------------------------------------------- main
def main():
    a = sys.argv[1:]
    basis0, ulang = "--basis0" in a, "--ulang" in a
    maks = int(a[a.index("--maks") + 1]) if "--maks" in a else None
    from playwright.sync_api import sync_playwright
    os.makedirs(f"{OUT}/raw", exist_ok=True); os.makedirs(f"{OUT}/gambar", exist_ok=True)
    rows, cache, n = [], {}, 0
    with sync_playwright() as p:
        ctx, hdr, cap = get_session(p)
        api = Api(ctx, hdr)
        tks = discover(api, cap)
        print("tryoutKuID:", tks)
        for tk in tks:
            parts = list_parts(api, tk)
            print(f"[{tk}] {len(parts)} part ditemukan")
            for jid in sorted(parts):
                if maks and n >= maks: break
                rawf = f"{OUT}/raw/pembahasan_{jid}.json"
                if os.path.exists(rawf) and not ulang:
                    js = json.load(open(rawf, encoding="utf-8")); print(f"  part {jid}: dari cache")
                else:
                    aid = find_absensi(api, tk, jid)
                    if not aid: print(f"  part {jid}: belum ada hasil pengerjaan -> dilewati"); continue
                    js = api.get_json(f"{API}/api/ujian/pembahasan/{jid}?jadwalUjianAbsensiID={aid}&tryoutKuID={tk}")
                    if not (js and js.get("data")): print(f"  part {jid}: pembahasan belum tersedia -> dilewati"); continue
                    json.dump(js, open(rawf, "w", encoding="utf-8"), ensure_ascii=False)
                    print(f"  part {jid}: OK"); time.sleep(JEDA)
                rows += build_rows(js, tk, jid, api, cache, basis0); n += 1
    json.dump(rows, open(f"{OUT}/alfaiz_soal.json", "w", encoding="utf-8"), ensure_ascii=False, indent=1)
    write_md(rows, f"{OUT}/alfaiz_soal.md")
    rs = ringkasan(rows); open(f"{OUT}/ringkasan.txt", "w", encoding="utf-8").write(rs)
    print("\n" + rs + f"\n\nselesai -> {OUT}/")

if __name__ == "__main__":
    main()
