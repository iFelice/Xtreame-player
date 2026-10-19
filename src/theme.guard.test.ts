import { readdirSync, readFileSync } from 'node:fs';
import { join, relative } from 'node:path';
import { describe, expect, it } from 'vitest';

const root = join(import.meta.dirname, '.');
const palette = ['slate','gray','zinc','neutral','stone','red','orange','amber','yellow','lime','green','emerald','teal','cyan','sky','blue','indigo','violet','purple','fuchsia','pink','rose'].join('|');
const utility = ['bg','text','border','ring','ring-offset','from','via','to','shadow','outline','fill','stroke','divide','placeholder','caret','accent','decoration'].join('|');
const bannedPaletteClass = new RegExp('\\b(?:' + utility + ')-(' + palette + ')-\\d');
const bannedMono = 'font' + '-mono';

function sourceFiles(directory: string): string[] {
  return readdirSync(directory, { withFileTypes: true }).flatMap((entry) => {
    const path = join(directory, entry.name);
    return entry.isDirectory() ? sourceFiles(path) : /\.(ts|tsx|css)$/.test(entry.name) ? [path] : [];
  });
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
});
