import React, { memo, useMemo } from 'react';
import ReactMarkdown, { Components } from 'react-markdown';
import remarkGfm from 'remark-gfm';
import remarkMath from 'remark-math';
import rehypeKatex from 'rehype-katex';
import 'katex/dist/katex.min.css';

interface MarkdownRendererProps {
  content: string;
  className?: string;
}

function preprocessMarkdown(content: string): string {
  if (!content) return '';
  return content
    // Convert \[ ... \] to $$ ... $$ (display math)
    .replace(/\\\[([\s\S]*?)\\\]/g, (_, math) => {
      const clean = math.replace(/\\\s+/g, ' ').trim();
      return `$$${clean}$$`;
    })
    // Convert \( ... \) to $ ... $ (inline math)
    .replace(/\\\(([\s\S]*?)\\\)/g, (_, math) => {
      const clean = math.replace(/\\\s+/g, ' ').trim();
      return `$${clean}$`;
    })
    // Also clean escaped comparison operators \ >, \ <, \ =
    .replace(/\\\s*([><=])/g, ' $1 ')
    // Fix number sequence backslash comma (e.g. 1\, 3\, -> 1, 3, )
    .replace(/(\d)\s*\\,\s*/g, (m, d) => `${d}, `)
    // Fix mixed fractions: integer directly followed by fraction (e.g. 3\frac{3}{4} -> 3\ \frac{3}{4})
    .replace(/(\d)(\\d?frac\{)/g, (m, d, f) => `${d}\\ ${f}`)
    // Fix nested fraction with negative denominator \frac{9}{-\frac{1}{3}} -> \frac{9}{\left(-\frac{1}{3}\right)}
    .replace(/\\frac\{([^}]+)\}\{-\\frac\{([^}]+)\}\{([^}]+)\}\}/g, (m, a, b, c) => `\\frac{${a}}{\\left(-\\frac{${b}}{${c}}\\right)}`);
}

const REMARK_PLUGINS = [remarkGfm, remarkMath];
const REHYPE_PLUGINS: any[] = [
  [
    rehypeKatex,
    {
      output: 'html',
      throwOnError: false,
      strict: false,
    },
  ],
];

const MARKDOWN_COMPONENTS: Components = {
  table: ({ node, ...props }) => (
    <div className="overflow-x-auto my-3 border border-slate-200 rounded-lg shadow-xs">
      <table className="min-w-full divide-y divide-slate-200 text-xs md:text-sm" {...props} />
    </div>
  ),
  th: ({ node, ...props }) => (
    <th className="bg-slate-100 px-3 py-2 text-left font-semibold text-slate-700" {...props} />
  ),
  td: ({ node, ...props }) => (
    <td className="px-3 py-2 border-t border-slate-100 text-slate-700" {...props} />
  ),
  p: ({ node, ...props }) => <p className="mb-2 last:mb-0" {...props} />,
  ul: ({ node, ...props }) => <ul className="list-disc pl-5 my-2 space-y-1" {...props} />,
  ol: ({ node, ...props }) => <ol className="list-decimal pl-5 my-2 space-y-1" {...props} />,
  img: ({ node, src, alt, ...props }) => {
    const resolvedSrc = typeof src === 'string' && src.startsWith('gambar/') ? `/${src}` : src;
    return (
      // eslint-disable-next-line @next/next/no-img-element
      <img
        src={resolvedSrc}
        className="max-w-full h-auto rounded-md my-2 border border-slate-200"
        alt={alt || 'Gambar'}
        {...props}
      />
    );
  },
};

export const MarkdownRenderer: React.FC<MarkdownRendererProps> = memo(({ content, className = '' }) => {
  const formattedContent = useMemo(() => preprocessMarkdown(content || ''), [content]);

  return (
    <div className={`prose prose-slate max-w-none text-slate-800 leading-relaxed text-sm md:text-base ${className}`}>
      <ReactMarkdown
        remarkPlugins={REMARK_PLUGINS}
        rehypePlugins={REHYPE_PLUGINS}
        components={MARKDOWN_COMPONENTS}
      >
        {formattedContent}
      </ReactMarkdown>
    </div>
  );
});

MarkdownRenderer.displayName = 'MarkdownRenderer';
