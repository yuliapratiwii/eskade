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
        if black_cnt > h * 0.7:
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
        # Fallback to proportional
        vert_lines = [int(w * 0.05), int(w * 0.45), int(w * 0.95)]
    else:
        # Pick 3: left, middle, right
        vert_lines = [vert_lines[0], vert_lines[1], vert_lines[-1]]
        
    # Find horizontal lines between vert_lines[0] and vert_lines[2]
    x_min, x_max = vert_lines[0], vert_lines[2]
    horiz_candidates = []
    for y in range(h):
        black_cnt = sum(1 for x in range(x_min, x_max + 1) if bw.getpixel((x, y)) == 0)
        if black_cnt > (x_max - x_min) * 0.7:
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
        # Fallback to 5 equal rows
        horiz_lines = [int(h * r / 5.0) for r in range(6)]
    else:
        # Ensure 6 lines
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
    # Resize to 12 x 16 binary
    resized = crop.resize((12, 16), Image.Resampling.BILINEAR)
    return [1 if resized.getpixel((x, y)) < 128 else 0 for y in range(16) for x in range(12)]

# Build templates from known images:
# 21060079229d.jpg: row 0=3, row 1=5, row 2=1, row 3=2, row 4=4
# a8f6ee86d1c2.png: row 0=5, row 1=4, row 2=3, row 3=2, row 4=1
templates = {1: [], 2: [], 3: [], 4: [], 5: []}

for img_path, known in [
    ('scrapt/gambar/21060079229d.jpg', [3, 5, 1, 2, 4]),
    ('scrapt/gambar/a8f6ee86d1c2.png', [5, 4, 3, 2, 1])
]:
    im = Image.open(img_path)
    vert, horiz = find_grid(im)
    for r in range(5):
        d_crop = extract_digit_crop(im, vert, horiz, r)
        templates[known[r]].append(normalize_digit(d_crop))

def classify_digit(crop):
    norm = normalize_digit(crop)
    best_digit = None
    best_dist = 999999
    
    for digit, t_list in templates.items():
        for t in t_list:
            # Hamming distance
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

# Now let's test on all 90 TKP questions!
with open('scrapt/part.json', 'r', encoding='utf-8') as f:
    data = json.load(f)

tkp = [d for d in data if d.get('subtes') == 'TKP']

results = []
valid_count = 0
invalid_count = 0

for idx, q in enumerate(tkp):
    img_rel = q.get('gambar', [None])[0]
    img_path = os.path.join('scrapt', img_rel) if img_rel else None
    
    if img_path and os.path.exists(img_path):
        scores = parse_image_scores(img_path)
        vals = sorted(scores.values())
        is_valid = (vals == [1, 2, 3, 4, 5])
        if is_valid:
            valid_count += 1
        else:
            invalid_count += 1
        results.append({
            'idx': idx + 1,
            'id': q['id'],
            'paket': q['paket'],
            'no': q['no'],
            'scores': scores,
            'is_valid': is_valid,
            'img': img_rel
        })
    else:
        invalid_count += 1
        results.append({
            'idx': idx + 1,
            'id': q['id'],
            'paket': q['paket'],
            'no': q['no'],
            'scores': None,
            'is_valid': False,
            'img': None
        })

print(f'Total TKP questions: {len(tkp)}')
print(f'Valid permutations [1,2,3,4,5]: {valid_count} / {len(tkp)}')
print(f'Invalid count: {invalid_count}')

if invalid_count > 0:
    print('Invalid items:')
    for r in results:
        if not r['is_valid']:
            print(r)

with open('scripts/parsed_tkp_scores.json', 'w', encoding='utf-8') as f:
    json.dump(results, f, indent=2)
