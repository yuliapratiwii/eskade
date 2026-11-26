import json, os, glob
from PIL import Image

def find_grid(im):
    w, h = im.size
    gray = im.convert('L')
    
    # Threshold image to binary
    bw = gray.point(lambda p: 0 if p < 128 else 255, '1')
    
    # Find vertical lines
    vert_candidates = []
    for x in range(w):
        black_cnt = sum(1 for y in range(h) if bw.getpixel((x, y)) == 0)
        if black_cnt > h * 0.65:
            vert_candidates.append(x)
            
    # Group consecutive x coordinates
    vert_lines = []
    if vert_candidates:
        curr = [vert_candidates[0]]
        for x in vert_candidates[1:]:
            if x == curr[-1] + 1:
                curr.append(x)
            else:
                vert_lines.append(int(sum(curr)/len(curr)))
                curr = [x]
        vert_lines.append(int(sum(curr)/len(curr)))
        
    if len(vert_lines) < 3:
        vert_lines = [int(w * 0.05), int(w * 0.45), int(w * 0.95)]
    else:
        vert_lines = [vert_lines[0], vert_lines[1], vert_lines[-1]]
        
    # Find horizontal lines between vert_lines[0] and vert_lines[2]
    x_min, x_max = vert_lines[0], vert_lines[2]
    horiz_candidates = []
    for y in range(h):
        black_cnt = sum(1 for x in range(x_min, x_max + 1) if bw.getpixel((x, y)) == 0)
        if black_cnt > (x_max - x_min) * 0.65:
            horiz_candidates.append(y)
            
    horiz_lines = []
    if horiz_candidates:
        curr = [horiz_candidates[0]]
        for y in horiz_candidates[1:]:
            if y == curr[-1] + 1:
                curr.append(y)
            else:
                horiz_lines.append(int(sum(curr)/len(curr)))
                curr = [y]
        horiz_lines.append(int(sum(curr)/len(curr)))
        
    if len(horiz_lines) < 6:
        horiz_lines = [int(h * r / 5.0) for r in range(6)]
    else:
        horiz_lines = horiz_lines[:6]
        
    return vert_lines, horiz_lines

def extract_digit_crop(im, vert, horiz, r):
    x0, x1 = vert[1] + 2, vert[2] - 2
    y0, y1 = horiz[r] + 2, horiz[r+1] - 2
    crop = im.convert('L').crop((x0, y0, x1, y1))
    cw, ch = crop.size
    
    # Bounding box of dark pixels
    min_x, min_y, max_x, max_y = cw, ch, -1, -1
    for y in range(ch):
        for x in range(cw):
            if crop.getpixel((x, y)) < 128:
                min_x = min(min_x, x)
                min_y = min(min_y, y)
                max_x = max(max_x, x)
                max_y = max(max_y, y)
                
    if max_x == -1:
        return None
    return crop.crop((min_x, min_y, max_x + 1, max_y + 1))

def normalize_digit(crop):
    resized = crop.resize((12, 16), Image.Resampling.BILINEAR)
    return [1 if resized.getpixel((x, y)) < 128 else 0 for y in range(16) for x in range(12)]

# Build templates
templates = {1: [], 2: [], 3: [], 4: [], 5: []}

for img_path, known in [
    ('scrapt/gambar/21060079229d.jpg', [3, 5, 1, 2, 4]),
    ('scrapt/gambar/a8f6ee86d1c2.png', [5, 4, 3, 2, 1]),
    ('scrapt/gambar/9c7f974c61c7.png', [5, 1, 2, 3, 4])
]:
    if os.path.exists(img_path):
        im = Image.open(img_path)
        vert, horiz = find_grid(im)
        for r in range(5):
            d_crop = extract_digit_crop(im, vert, horiz, r)
            if d_crop:
                templates[known[r]].append(normalize_digit(d_crop))

def classify_digit(crop):
    norm = normalize_digit(crop)
    best_digit = None
    best_dist = 999999
    
    for digit, t_list in templates.items():
        for t in t_list:
            dist = sum(1 for a, b in zip(norm, t) if a != b)
            if dist < best_dist:
                best_dist = dist
                best_digit = digit
                
    return best_digit, best_dist

def parse_image_scores(img_path):
    im = Image.open(img_path)
    vert, horiz = find_grid(im)
    res = {}
    options = ['A', 'B', 'C', 'D', 'E']
    for r in range(5):
        crop = extract_digit_crop(im, vert, horiz, r)
        if crop:
            digit, dist = classify_digit(crop)
            res[options[r]] = digit
    return res

with open('scrapt/alfaiz_soal.json', 'r', encoding='utf-8') as f:
    data = json.load(f)

target_parts = ['PART 29', 'PART 36', 'PART 37', 'PART 38']
target_tkp = [q for q in data if any(p in q['paket'] for p in target_parts) and q['subtes'] == 'TKP']

print(f'Total TKP questions to process: {len(target_tkp)}')

results = []
valid_count = 0
invalid_count = 0
match_kunci_count = 0

for idx, q in enumerate(target_tkp):
    img_rel = q.get('gambar', [None])[0]
    img_path = os.path.join('scrapt', img_rel) if img_rel else None
    
    scores = {}
    is_valid = False
    if img_path and os.path.exists(img_path):
        scores = parse_image_scores(img_path)
        vals = sorted(scores.values())
        is_valid = (vals == [1, 2, 3, 4, 5])
        
    if is_valid:
        valid_count += 1
        # Check if score 5 matches raw kunci
        kunci_5 = [opt for opt, sc in scores.items() if sc == 5]
        if kunci_5 and kunci_5[0] == q['kunci']:
            match_kunci_count += 1
        else:
            print(f'Mismatch on {q["id"]}: score 5 is {kunci_5}, raw kunci is {q["kunci"]}')
    else:
        invalid_count += 1
        print(f'Invalid permutation on {q["id"]} ({q["paket"]} No {q["no"]}): {scores}')
        
    results.append({
        'id': q['id'],
        'paket': q['paket'],
        'no': q['no'],
        'scores': scores,
        'is_valid': is_valid,
        'kunci': q['kunci']
    })

print(f'Valid permutations [1,2,3,4,5]: {valid_count} / {len(target_tkp)}')
print(f'Invalid count: {invalid_count}')
print(f'Match with raw kunci (skor 5): {match_kunci_count} / {len(target_tkp)}')

with open('scripts/parsed_new_tkp_scores.json', 'w', encoding='utf-8') as f:
    json.dump(results, f, indent=2)
print('Saved to scripts/parsed_new_tkp_scores.json')
