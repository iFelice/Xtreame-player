import { beforeEach, describe, expect, it, vi } from 'vitest';

const memory = new Map<string, string>();
const localStorageMock = {
  getItem: (key: string) => memory.get(key) ?? null,
  setItem: (key: string, value: string) => memory.set(key, String(value)),
  removeItem: (key: string) => memory.delete(key),
  clear: () => memory.clear(),
  key: (index: number) => [...memory.keys()][index] ?? null,
  get length() { return memory.size; },
};
vi.stubGlobal('localStorage', localStorageMock);

import { storage, type SavedAccount } from './storage';
import type { PlayableMediaItem } from '../types/xtream';

const account = (id: string, serverUrl = 'http://localhost:3333'): SavedAccount => ({
  id, name: id, serverUrl, username: 'demo', password: 'demo', lastUsed: 1,
});
const media: PlayableMediaItem = {
  id: 'live_1', title: 'Demo', type: 'live', streamUrl: 'http://localhost/live/1.m3u8',
};

describe('desktop persistence', () => {
  beforeEach(() => memory.clear());

  it('deduplicates accounts case-insensitively and restores the latest account', () => {
    storage.saveAccount(account('old', 'HTTP://LOCALHOST:3333'));
    storage.saveAccount(account('new', 'http://localhost:3333'));
    expect(storage.getAccounts()).toHaveLength(1);
    expect(storage.getAccounts()[0].id).toBe('new');
    expect(storage.getLastAccount()?.id).toBe('new');
    storage.clearLastAccount();
    expect(storage.getLastAccount()).toBeNull();
  });

  it('isolates favorites and history by account', () => {
    expect(storage.toggleFavorite(media, 'account-a')).toBe(true);
    expect(storage.isFavorite(media.id, 'account-a')).toBe(true);
    expect(storage.isFavorite(media.id, 'account-b')).toBe(false);

    storage.saveHistory(media, 12, 60, 'account-a');
    storage.saveHistory(media, 22, 60, 'account-a');
    expect(storage.getHistory('account-a')).toHaveLength(1);
    expect(storage.getHistory('account-a')[0].currentTime).toBe(22);
    expect(storage.getHistory('account-b')).toEqual([]);
  });

  it('ignores malformed persisted account data', () => {
    localStorage.setItem('xtream_saved_accounts', JSON.stringify({ version: 1, data: [{ id: 4 }] }));
    expect(storage.getAccounts()).toEqual([]);
  });
});
