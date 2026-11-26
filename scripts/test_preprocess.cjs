function preprocessMarkdown(content) {
  if (!content) return '';
  return content
    .replace(/\\\[([\s\S]*?)\\\]/g, (_, math) => {
      const clean = math.replace(/\\\s+/g, ' ').trim();
      return '$$' + clean + '$$';
    })
    .replace(/\\\(([\s\S]*?)\\\)/g, (_, math) => {
      const clean = math.replace(/\\\s+/g, ' ').trim();
      return '$' + clean + '$';
    })
    .replace(/\\\s*([><=])/g, ' $1 ')
    .replace(/(\d)\s*\\,\s*/g, (m, d) => d + ', ')
    .replace(/(\d)(\\d?frac\{)/g, (m, d, f) => d + '\\ ' + f)
    .replace(/\\frac\{([^}]+)\}\{-\\frac\{([^}]+)\}\{([^}]+)\}\}/g, (m, a, b, c) => '\\frac{' + a + '}{\\left(-\\frac{' + b + '}{' + c + '}\\right)}');
}

const q1 = '$3\\frac{3}{4}+11\\left(2\\frac{2}{11}\\right)-\\frac{3}{4}-\\frac{9}{-\\frac{1}{3}}$  =...';
console.log('q1 processed:\n', preprocessMarkdown(q1));

const q2 = '$1\\, 3\\,\\frac{11}{5},\\frac{16}{14},....$';
console.log('\nq2 processed:\n', preprocessMarkdown(q2));
