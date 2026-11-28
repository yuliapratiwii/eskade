from playwright.sync_api import sync_playwright
import json

log = []

def on_resp(r):
    if r.request.resource_type in ("xhr", "fetch"):
        ukuran = r.headers.get("content-length", "?")
        log.append({"method": r.request.method, "status": r.status,
                    "url": r.url, "ukuran": ukuran})
        print(f"[{len(log)}] {r.request.method} {r.status} {r.url[:110]}")

with sync_playwright() as p:
    b = p.chromium.connect_over_cdp("http://localhost:9222")
    ctx = b.contexts[0]
    ctx.on("response", on_resp)
    page = ctx.pages[0]
    print("MEREKAM... Sekarang di Chrome: tekan F5, klik 'Pilih Soal', pilih Tipe Soal,")
    print("klik beberapa nomor soal. Selesai? Tekan Ctrl+C di sini.")
    try:
        while True:
            page.wait_for_timeout(500)      # memberi Playwright kesempatan memproses event
    except KeyboardInterrupt:
        pass
    json.dump(log, open("jejak_api.json", "w", encoding="utf-8"), indent=1)
    print(f"\ntersimpan: {len(log)} request -> jejak_api.json")
    b.close()