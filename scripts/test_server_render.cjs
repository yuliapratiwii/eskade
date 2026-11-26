const http = require('http');
const { spawn } = require('child_process');
const path = require('path');

console.log('=== TEST 3: UJI RENDERING PRODUCTION SERVER (NEXT.JS) ===\n');

const PORT = 3055;
const nextBin = path.join(__dirname, '..', 'web', 'node_modules', 'next', 'dist', 'bin', 'next');

const srv = spawn(process.execPath, [nextBin, 'start', '-p', String(PORT)], {
  cwd: path.join(__dirname, '..', 'web'),
  env: { ...process.env, NODE_ENV: 'production' },
  stdio: ['ignore', 'pipe', 'pipe'],
});

srv.stdout.on('data', (d) => {
  console.log('STDOUT:', d.toString());
  const msg = d.toString();
  if (msg.includes('Ready in') || msg.includes('started server') || msg.includes('localhost:')) {
    runProbes();
  }
});

srv.stderr.on('data', (d) => {
  console.error('STDERR:', d.toString());
});

let probesDone = false;

async function checkUrl(urlPath) {
  return new Promise((resolve) => {
    http
      .get(
        {
          hostname: '127.0.0.1',
          port: PORT,
          path: urlPath,
          family: 4,
        },
        (res) => {
          let body = '';
          res.on('data', (c) => (body += c));
          res.on('end', () => {
            resolve({ status: res.statusCode, length: body.length, headers: res.headers });
          });
        }
      )
      .on('error', (e) => {
        resolve({ error: e.message });
      });
  });
}

async function runProbes() {
  if (probesDone) return;
  probesDone = true;

  // Tunggu 1 detik agar port benar-benar listening
  await new Promise((r) => setTimeout(r, 1000));

  console.log('Server berjalan di port ' + PORT + '. Menguji probe HTTP...\n');

  const routesToTest = [
    { path: '/login', expect: 200 },
    { path: '/daftar', expect: 200 },
    { path: '/_not-found', expect: [200, 307, 308, 404] },
    // Route yang diproteksi auth middleware akan redirect (307/308) ke /login jika belum login
    { path: '/', expect: [200, 307, 308] },
    { path: '/admin', expect: [200, 307, 308] },
    { path: '/admin/paket', expect: [200, 307, 308] },
    { path: '/progres', expect: [200, 307, 308] },
  ];

  let successCount = 0;
  for (const r of routesToTest) {
    const res = await checkUrl(r.path);
    const expected = Array.isArray(r.expect) ? r.expect : [r.expect];
    const isOk = expected.includes(res.status);
    console.log(
      `Probe [${r.path}] -> Status: ${res.status !== undefined ? res.status : res.error} (${isOk ? 'OK' : 'FAIL'}), Size: ${res.length || 0} bytes`
    );
    if (isOk) successCount++;
  }

  srv.kill('SIGTERM');

  console.log(`\nHasil Probe: ${successCount}/${routesToTest.length} rute beroperasi sesuai spesifikasi.`);
  if (successCount === routesToTest.length) {
    console.log('\n>>> STATUS TEST 3: LULUS 100% <<<');
    process.exit(0);
  } else {
    console.error('\n>>> STATUS TEST 3: GAGAL <<<');
    process.exit(1);
  }
}

// Timeout fallback
setTimeout(() => {
  if (!probesDone) {
    console.error('Server startup timeout (15s)');
    srv.kill('SIGKILL');
    process.exit(1);
  }
}, 15000);
