import * as fs from 'fs';
import * as path from 'path';

export const MAX_ALLOWED_ORIGINS = 5;

export interface AllowedHostsStoreOptions {
  filePath: string;
  maxOrigins?: number;
}

/**
 * Normalizes a URL to its origin in the explicit form protocol+host+port
 * (e.g. http://provider.example:8080), filling in default ports so the same
 * provider always maps to the same entry regardless of how the link was typed.
 */
export function normalizeOrigin(rawUrl: string): string | null {
  try {
    const url = new URL(rawUrl);
    if (url.protocol !== 'http:' && url.protocol !== 'https:') return null;
    const port = url.port || (url.protocol === 'https:' ? '443' : '80');
    return `${url.protocol}//${url.hostname}:${port}`;
  } catch {
    return null;
  }
}

/**
 * File-backed list of provider origins the proxy is allowed to contact.
 * An origin enters the list only after a successful Xtream login; entries are
 * kept most-recently-used first and the least recently used is evicted once
 * the list exceeds maxOrigins. The file is read once at startup and rewritten
 * atomically (temp file + rename) after every change.
 */
export function createAllowedHostsStore(options: AllowedHostsStoreOptions) {
  const maxOrigins = options.maxOrigins ?? MAX_ALLOWED_ORIGINS;
  const filePath = options.filePath;
  let writeCounter = 0;

  const readFromDisk = (): string[] => {
    try {
      const parsed = JSON.parse(fs.readFileSync(filePath, 'utf8'));
      if (!parsed || !Array.isArray(parsed.origins)) return [];
      const unique: string[] = [];
      for (const entry of parsed.origins) {
        if (typeof entry !== 'string') continue;
        const origin = normalizeOrigin(entry);
        if (origin && !unique.includes(origin)) unique.push(origin);
        if (unique.length >= maxOrigins) break;
      }
      return unique;
    } catch {
      // Missing or corrupt file: start with an empty list.
      return [];
    }
  };

  let origins: string[] = readFromDisk();

  const persist = (): void => {
    fs.mkdirSync(path.dirname(filePath), { recursive: true });
    const tempPath = `${filePath}.tmp-${process.pid}-${writeCounter++}`;
    fs.writeFileSync(tempPath, `${JSON.stringify({ origins }, null, 2)}\n`, 'utf8');
    fs.renameSync(tempPath, filePath);
  };

  const list = (): string[] => [...origins];

  const isAllowed = (origin: string): boolean => origins.includes(origin);

  const add = (origin: string): string | null => {
    const normalized = normalizeOrigin(origin) ?? (origins.includes(origin) ? origin : null);
    if (!normalized) return null;
    origins = [normalized, ...origins.filter((existing) => existing !== normalized)];
    if (origins.length > maxOrigins) origins = origins.slice(0, maxOrigins);
    persist();
    return normalized;
  };

  // Marks the origin as used without rewriting the file on every request.
  const touch = (origin: string): void => {
    if (!origins.includes(origin)) return;
    origins = [origin, ...origins.filter((existing) => existing !== origin)];
  };

  const clear = (): void => {
    origins = [];
    persist();
  };

  return { add, clear, isAllowed, list, touch };
}

export type AllowedHostsStore = ReturnType<typeof createAllowedHostsStore>;
