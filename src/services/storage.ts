import { PlayableMediaItem, XtreamParsedUrl } from '../types/xtream';
import { isUnknownArray, readVersioned, writeVersioned } from './versionedStorage';

export interface SavedAccount {
  id: string;
  name: string;
  serverUrl: string;
  username: string;
  password: string;
  lastUsed: number;
  originalLink?: string;
  status?: string;
  expDate?: string;
}

export interface WatchHistoryItem {
  media: PlayableMediaItem;
  currentTime: number;
  duration: number;
  timestamp: number;
}

const ACCOUNTS_KEY = 'xtream_saved_accounts';
const FAVORITES_KEY = 'xtream_favorites';
const HISTORY_KEY = 'xtream_watch_history';
const LAST_ACCOUNT_KEY = 'xtream_last_account';

const isRecord = (value: unknown): value is Record<string, unknown> =>
  Boolean(value) && typeof value === 'object' && !Array.isArray(value);

function readObjectArray<T>(key: string): T[] {
  return readVersioned(localStorage, key, [], isUnknownArray).filter(isRecord) as T[];
}

function writeData<T>(key: string, data: T): void {
  writeVersioned(localStorage, key, data);
}

function isSavedAccount(value: unknown): value is SavedAccount {
  if (!isRecord(value)) return false;
  return ['id', 'name', 'serverUrl', 'username', 'password'].every(
    (field) => typeof value[field] === 'string'
  );
}

export const storage = {
  getAccounts(): SavedAccount[] {
    try {
      return readObjectArray<SavedAccount>(ACCOUNTS_KEY).filter(isSavedAccount);
    } catch {
      return [];
    }
  },

  saveAccount(account: SavedAccount): void {
    try {
      const existing = this.getAccounts();
      const filtered = existing.filter(
        (a) =>
          !(
            a.serverUrl.toLowerCase() === account.serverUrl.toLowerCase() &&
            a.username.toLowerCase() === account.username.toLowerCase()
          )
      );
      filtered.unshift({ ...account, lastUsed: Date.now() });
      writeData(ACCOUNTS_KEY, filtered.slice(0, 10));
      writeData(LAST_ACCOUNT_KEY, account);
    } catch (e) {
      console.error('Failed to save account:', e);
    }
  },

  getLastAccount(): SavedAccount | null {
    try {
      return readVersioned(localStorage, LAST_ACCOUNT_KEY, null, (value): value is SavedAccount | null => value === null || isSavedAccount(value));
    } catch {
      return null;
    }
  },

  clearLastAccount(): void {
    try {
      localStorage.removeItem(LAST_ACCOUNT_KEY);
    } catch (e) {
      console.error('Failed to clear last account:', e);
    }
  },

  deleteAccount(id: string): void {
    try {
      const existing = this.getAccounts().filter((a) => a.id !== id);
      writeData(ACCOUNTS_KEY, existing);
    } catch (e) {
      console.error('Failed to delete account:', e);
    }
  },

  getFavorites(accountKey?: string): PlayableMediaItem[] {
    try {
      const key = accountKey ? `${FAVORITES_KEY}_${accountKey}` : FAVORITES_KEY;
      return readObjectArray<PlayableMediaItem>(key);
    } catch {
      return [];
    }
  },

  isFavorite(id: string, accountKey?: string): boolean {
    const favs = this.getFavorites(accountKey);
    return favs.some((f) => f.id === id);
  },

  toggleFavorite(item: PlayableMediaItem, accountKey?: string): boolean {
    try {
      const key = accountKey ? `${FAVORITES_KEY}_${accountKey}` : FAVORITES_KEY;
      const favs = this.getFavorites(accountKey);
      const index = favs.findIndex((f) => f.id === item.id);
      let isFav = false;
      if (index >= 0) {
        favs.splice(index, 1);
        isFav = false;
      } else {
        favs.unshift(item);
        isFav = true;
      }
      writeData(key, favs.slice(0, 100));
      return isFav;
    } catch {
      return false;
    }
  },

  getHistory(accountKey?: string): WatchHistoryItem[] {
    try {
      const key = accountKey ? `${HISTORY_KEY}_${accountKey}` : HISTORY_KEY;
      return readObjectArray<WatchHistoryItem>(key);
    } catch {
      return [];
    }
  },

  saveHistory(media: PlayableMediaItem, currentTime: number, duration: number, accountKey?: string): void {
    if (!media || !media.id) return;
    try {
      const key = accountKey ? `${HISTORY_KEY}_${accountKey}` : HISTORY_KEY;
      const list = this.getHistory(accountKey).filter((h) => h.media.id !== media.id);
      list.unshift({
        media,
        currentTime,
        duration,
        timestamp: Date.now(),
      });
      writeData(key, list.slice(0, 50));
    } catch (e) {
      console.error('Failed to save history:', e);
    }
  },

  clearHistory(accountKey?: string): void {
    const key = accountKey ? `${HISTORY_KEY}_${accountKey}` : HISTORY_KEY;
    localStorage.removeItem(key);
  },
};
