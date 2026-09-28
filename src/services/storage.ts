import { PlayableMediaItem, XtreamParsedUrl } from '../types/xtream';

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

export const storage = {
  getAccounts(): SavedAccount[] {
    try {
      const data = localStorage.getItem(ACCOUNTS_KEY);
      return data ? JSON.parse(data) : [];
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
      localStorage.setItem(ACCOUNTS_KEY, JSON.stringify(filtered.slice(0, 10)));
      localStorage.setItem(LAST_ACCOUNT_KEY, JSON.stringify(account));
    } catch (e) {
      console.error('Failed to save account:', e);
    }
  },

  getLastAccount(): SavedAccount | null {
    try {
      const data = localStorage.getItem(LAST_ACCOUNT_KEY);
      return data ? JSON.parse(data) : null;
    } catch {
      return null;
    }
  },

  deleteAccount(id: string): void {
    try {
      const existing = this.getAccounts().filter((a) => a.id !== id);
      localStorage.setItem(ACCOUNTS_KEY, JSON.stringify(existing));
    } catch (e) {
      console.error('Failed to delete account:', e);
    }
  },

  getFavorites(): PlayableMediaItem[] {
    try {
      const data = localStorage.getItem(FAVORITES_KEY);
      return data ? JSON.parse(data) : [];
    } catch {
      return [];
    }
  },

  isFavorite(id: string): boolean {
    const favs = this.getFavorites();
    return favs.some((f) => f.id === id);
  },

  toggleFavorite(item: PlayableMediaItem): boolean {
    try {
      const favs = this.getFavorites();
      const index = favs.findIndex((f) => f.id === item.id);
      let isFav = false;
      if (index >= 0) {
        favs.splice(index, 1);
        isFav = false;
      } else {
        favs.unshift(item);
        isFav = true;
      }
      localStorage.setItem(FAVORITES_KEY, JSON.stringify(favs.slice(0, 100)));
      return isFav;
    } catch {
      return false;
    }
  },

  getHistory(): WatchHistoryItem[] {
    try {
      const data = localStorage.getItem(HISTORY_KEY);
      return data ? JSON.parse(data) : [];
    } catch {
      return [];
    }
  },

  saveHistory(media: PlayableMediaItem, currentTime: number, duration: number): void {
    if (!media || !media.id) return;
    try {
      const list = this.getHistory().filter((h) => h.media.id !== media.id);
      list.unshift({
        media,
        currentTime,
        duration,
        timestamp: Date.now(),
      });
      localStorage.setItem(HISTORY_KEY, JSON.stringify(list.slice(0, 50)));
    } catch (e) {
      console.error('Failed to save history:', e);
    }
  },

  clearHistory(): void {
    localStorage.removeItem(HISTORY_KEY);
  },
};
