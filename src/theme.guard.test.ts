import { readdirSync, readFileSync } from 'node:fs';
import { join, relative } from 'node:path';
import { describe, expect, it } from 'vitest';

const root = join(import.meta.dirname, '.');
const palette = ['slate','gray','zinc','neutral','stone','red','orange','amber','yellow','lime','green','emerald','teal','cyan','sky','blue','indigo','violet','purple','fuchsia','pink','rose'].join('|');
const utility = ['bg','text','border','ring','ring-offset','from','via','to','shadow','outline','fill','stroke','divide','placeholder','caret','accent','decoration'].join('|');
const bannedPaletteClass = new RegExp('\\b(?:' + utility + ')-(' + palette + ')-\\d');
const bannedMono = 'font' + '-mono';
const bannedBackdropBlur = 'backdrop' + '-blur';
const bannedBackdropFilter = 'backdrop' + '-filter';
const filledColors = ['accent','accent-strong','live','series','fresh','favorite','danger'];
const fillBases = filledColors.map((color) => 'bg-' + color);
const forbiddenText = ['text-' + 'label', 'text-' + 'white', 'text-' + 'label-secondary'];

function sourceFiles(directory: string): string[] {
  return readdirSync(directory, { withFileTypes: true }).flatMap((entry) => {
    const path = join(directory, entry.name);
    return entry.isDirectory() ? sourceFiles(path) : /\.(ts|tsx|css)$/.test(entry.name) ? [path] : [];
  });
}

function classNameValues(source: string): Array<{ value: string; offset: number }> {
  const values: Array<{ value: string; offset: number }> = [];
  const attribute = /className\s*=\s*/g;
  let match: RegExpExecArray | null;
  while ((match = attribute.exec(source))) {
    let start = attribute.lastIndex;
    const quote = source[start];
    if (quote === '"' || quote === "'") {
      const end = source.indexOf(quote, start + 1);
      if (end >= 0) values.push({ value: source.slice(start + 1, end), offset: start + 1 });
      continue;
    }
    if (quote !== '{') continue;
    start++;
    while (/\s/.test(source[start] ?? '')) start++;
    if (source[start] === '`') {
      let i = start + 1;
      let segmentStart = i;
      let expressionDepth = 0;
      while (i < source.length) {
        const char = source[i];
        if (char === '`' && source[i - 1] !== '\\' && expressionDepth === 0) {
          values.push({ value: source.slice(segmentStart, i), offset: segmentStart });
          break;
        }
        if (char === '$' && source[i + 1] === '{' && expressionDepth === 0) {
          values.push({ value: source.slice(segmentStart, i), offset: segmentStart });
          expressionDepth = 1;
          i += 2;
          const exprStart = i;
          let depth = 1;
          let quoteChar = '';
          while (i < source.length && depth > 0) {
            const c = source[i];
            if (quoteChar) {
              if (c === quoteChar && source[i - 1] !== '\\') quoteChar = '';
            } else if (c === '"' || c === "'" || c === '`') quoteChar = c;
            else if (c === '{') depth++;
            else if (c === '}') depth--;
            i++;
          }
          const expression = source.slice(exprStart, i - 1);
          const literals = /(['"`])([\s\S]*?)\1/g;
          let literal: RegExpExecArray | null;
          while ((literal = literals.exec(expression))) values.push({ value: literal[2], offset: exprStart + literal.index + 1 });
          expressionDepth = 0;
          segmentStart = i;
          continue;
        }
        i++;
      }
    } else {
      let i = start;
      let depth = 1;
      let quoteChar = '';
      while (i < source.length && depth > 0) {
        const char = source[i];
        if (quoteChar) {
          if (char === quoteChar && source[i - 1] !== '\\') quoteChar = '';
        } else if (char === '"' || char === "'" || char === '`') quoteChar = char;
        else if (char === '{') depth++;
        else if (char === '}') depth--;
        i++;
      }
      const expression = source.slice(start + 1, Math.max(start + 1, i - 1));
      const literals = /(['"`])([\s\S]*?)\1/g;
      let literal: RegExpExecArray | null;
      while ((literal = literals.exec(expression))) values.push({ value: literal[2], offset: start + 1 + literal.index + 1 });
    }
  }
  return values;
}

function classViolations(value: string): string[] {
  const tokens = value.split(/\s+/).filter(Boolean);
  const errors: string[] = [];
  for (const token of tokens) {
    const match = token.match(/^((?:[\w-]+:)*)bg-([\w-]+)(\/\d+)?$/);
    if (match && !match[3] && tokens.includes(`${match[1]}hover:bg-${match[2]}`)) {
      errors.push(`base and identical hover fill: ${token}`);
    }
  }
  const states = ['', 'hover:', 'group-hover:', 'focus:'];
  for (const state of states) {
    for (const base of fillBases) {
      if (!tokens.includes(`${state}${base}`)) continue;
      const hasStateText = tokens.some((token) => token.startsWith(state + 'text-'));
      const hasBadText = forbiddenText.some((text) =>
        tokens.includes(`${state}${text}`) || (state !== '' && !hasStateText && tokens.includes(text))
      );
      if (hasBadText) errors.push(`${state}${base} paired with low-contrast text`);
    }
  }
  return errors;
}


const gradientStopClass = /^(?:[^:\s]+:)*(?:from|via|to)-/i;
const gradientClass = /^(?:[^:\s]+:)*bg-(?:linear|radial|conic)-/i;

const filledTintClass = /^(?:[^:\s]+:)*bg-(?:accent|accent-strong|live|series|fresh|favorite|danger)\/(\d{1,3})$/i;
const onAccentTextClass = /^(?:[^:\s]+:)*text-on-accent$/i;

function semiOpaqueFillViolations(value: string): string[] {
  const tokens = value.split(/\s+/).filter(Boolean);
  if (tokens.some((token) => onAccentTextClass.test(token))) return [];
  return tokens.flatMap((token) => {
    const match = token.match(filledTintClass);
    if (!match) return [];
    const opacity = Number(match[1]);
    if (opacity < 30 || opacity > 99) return [];
    return [`semi-opaque fill without text-on-accent: ${token}`];
  });
}

function gradientStopViolations(value: string): string[] {
  const tokens = value.split(/\s+/).filter(Boolean);
  if (tokens.some((token) => gradientClass.test(token))) return [];
  return tokens
    .filter((token) => gradientStopClass.test(token))
    .map((token) => `gradient color stop without bg-linear/bg-radial/bg-conic: ${token}`);
}

function onAccentViolations(value: string): string[] {
  const tokens = value.split(/\s+/).filter(Boolean);
  const errors: string[] = [];
  const allowed = ['accent','accent-strong','live','series','fresh','favorite'];
  const foregroundTokens = tokens.filter((token) => /^(?:[\w-]+:)*text-on-accent$/.test(token));
  for (const foreground of foregroundTokens) {
    const state = foreground.slice(0, foreground.length - 'text-on-accent'.length);
    const hasAllowedFill = tokens.some((token) => {
      if (!token.startsWith(state + 'bg-')) return false;
      const match = token.slice(state.length).match(/^bg-(accent|accent-strong|live|series|fresh|favorite|danger)(?:\/(\d+))?$/);
      if (!match) return false;
      if (match[1] === 'danger') return match[2] === undefined;
      return match[2] === undefined || Number(match[2]) >= 80 && Number(match[2]) <= 100;
    });
    if (!hasAllowedFill) errors.push(`${foreground} without an allowed colored fill`);
  }
  return errors;
}

export function backdropViolationsInFile(relativePath: string, content: string): string[] {
  const normalized = relativePath.replace(/\\/g, '/');
  if (normalized === 'index.css' || normalized === 'src/index.css') return [];
  if (!/\.(ts|tsx)$/.test(normalized)) return [];
  const label = normalized.startsWith('src/') ? normalized : `src/${normalized}`;
  const violations: string[] = [];
  const lines = content.split(/\r?\n/);
  lines.forEach((line, index) => {
    if (line.includes(bannedBackdropBlur) || line.includes(bannedBackdropFilter)) {
      violations.push(
        `${label}:${index + 1}: il vetro si ottiene solo con la classe glass (${line.trim()})`
      );
    }
  });
  return violations;
}

describe('theme token guard', () => {
  it('does not use default Tailwind palette classes or monospace font utility', () => {
    const violations: string[] = [];
    for (const file of sourceFiles(root)) {
      const lines = readFileSync(file, 'utf8').split(/\r?\n/);
      lines.forEach((line, index) => {
        if (bannedPaletteClass.test(line) || line.includes(bannedMono)) {
          violations.push(`${relative(root, file)}:${index + 1}: ${line.trim()}`);
        }
      });
    }
    expect(violations, violations.join('\n')).toEqual([]);
  });

  it('checks className fills, matching hover states, and foreground contrast', () => {
    const violations: string[] = [];
    for (const file of sourceFiles(root)) {
      const source = readFileSync(file, 'utf8');
      for (const { value, offset } of classNameValues(source)) {
        for (const violation of classViolations(value)) {
          const line = source.slice(0, offset).split('\n').length;
          violations.push(`${relative(root, file)}:${line}: ${violation} [${value}]`);
        }
      }
    }
    expect(violations, violations.join('\n')).toEqual([]);
  });

  it('does not use semi-opaque colored fills without on-accent text', () => {
    const violations: string[] = [];
    for (const file of sourceFiles(root)) {
      const source = readFileSync(file, 'utf8');
      for (const { value, offset } of classNameValues(source)) {
        for (const violation of semiOpaqueFillViolations(value)) {
          const line = source.slice(0, offset).split('\n').length;
          violations.push(`${relative(root, file)}:${line}: ${violation} [${value}]`);
        }
      }
    }
    expect(violations, violations.join('\n')).toEqual([]);
  });

  it('does not leave gradient color stops without a gradient class', () => {
    const violations: string[] = [];
    for (const file of sourceFiles(root)) {
      const source = readFileSync(file, 'utf8');
      for (const { value, offset } of classNameValues(source)) {
        for (const violation of gradientStopViolations(value)) {
          const line = source.slice(0, offset).split('\n').length;
          violations.push(`${relative(root, file)}:${line}: ${violation} [${value}]`);
        }
      }
    }
    expect(violations, violations.join('\n')).toEqual([]);
  });

  it('allows on-accent text only over sufficiently opaque colored fills', () => {
    const violations: string[] = [];
    for (const file of sourceFiles(root)) {
      const source = readFileSync(file, 'utf8');
      for (const { value, offset } of classNameValues(source)) {
        for (const violation of onAccentViolations(value)) {
          const line = source.slice(0, offset).split('\n').length;
          violations.push(`${relative(root, file)}:${line}: ${violation}`);
        }
      }
    }
    expect(violations, violations.join('\n')).toEqual([]);
  });

  it('forbids direct backdrop blur/filter utilities in TypeScript files (use glass only)', () => {
    const violations: string[] = [];
    for (const file of sourceFiles(root)) {
      const rel = relative(root, file);
      violations.push(...backdropViolationsInFile(rel, readFileSync(file, 'utf8')));
    }
    expect(violations, violations.join('\n')).toEqual([]);

    expect(
      backdropViolationsInFile(
        'components/Example.tsx',
        `const ok = 1;\n<div className="${bannedBackdropBlur}-md" />\nconst css = "${bannedBackdropFilter}: blur(4px)";`
      )
    ).toEqual([
      `src/components/Example.tsx:2: il vetro si ottiene solo con la classe glass (<div className="${bannedBackdropBlur}-md" />)`,
      `src/components/Example.tsx:3: il vetro si ottiene solo con la classe glass (const css = "${bannedBackdropFilter}: blur(4px)";)`,
    ]);
    expect(
      backdropViolationsInFile('index.css', readFileSync(join(root, 'index.css'), 'utf8'))
    ).toEqual([]);
  });
});
