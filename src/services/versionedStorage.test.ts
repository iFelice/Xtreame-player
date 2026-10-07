import { describe, expect, it } from 'vitest';
import {
  isString,
  isUnknownArray,
  readVersioned,
  STORAGE_SCHEMA_VERSION,
  StorageAdapter,
  writeVersioned,
} from './versionedStorage';

class MemoryStorage implements StorageAdapter {
  values = new Map<string, string>();
  getItem(key: string) { return this.values.get(key) ?? null; }
  setItem(key: string, value: string) { this.values.set(key, value); }
  removeItem(key: string) { this.values.delete(key); }
}

describe('versioned storage', () => {
  it('writes data in a versioned envelope', () => {
    const adapter = new MemoryStorage();
    writeVersioned(adapter, 'settings', ['one']);
    const stored = JSON.parse(adapter.getItem('settings')!);
    expect(stored).toMatchObject({ version: STORAGE_SCHEMA_VERSION, data: ['one'] });
    expect(stored.updatedAt).toEqual(expect.any(Number));
  });

  it('migrates valid legacy values without data loss', () => {
    const adapter = new MemoryStorage();
    adapter.setItem('favorites', JSON.stringify([{ id: 'movie_1' }]));
    expect(readVersioned(adapter, 'favorites', [], isUnknownArray)).toEqual([{ id: 'movie_1' }]);
    expect(JSON.parse(adapter.getItem('favorites')!)).toMatchObject({
      version: STORAGE_SCHEMA_VERSION,
      data: [{ id: 'movie_1' }],
    });
  });

  it('returns a safe fallback for corrupted JSON', () => {
    const adapter = new MemoryStorage();
    adapter.setItem('favorites', '{broken');
    expect(readVersioned(adapter, 'favorites', [], isUnknownArray)).toEqual([]);
  });

  it('rejects data with an unexpected shape or future schema', () => {
    const adapter = new MemoryStorage();
    adapter.setItem('icon', JSON.stringify({ version: 99, data: 42 }));
    expect(readVersioned(adapter, 'icon', '/favicon.svg', isString)).toBe('/favicon.svg');
  });
});
