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

export interface DownloadItem {
  id: string; // e.g. movie_123 or series_456_s1_e2
  title: string;
  type: 'movie' | 'episode' | 'series';
  streamUrl: string;
  downloadUrl: string;
  poster?: string;
  containerExtension?: string;
  seriesName?: string;
  seasonNum?: number;
  episodeNum?: number;
  downloadedAt: number;
}

export interface AppIconTheme {
  id: string;
  name: string;
  colorName: string;
  path: string;
  previewGradient: string;
}

export const AVAILABLE_APP_ICONS: AppIconTheme[] = [
  {
    id: 'emerald',
    name: 'Smeraldo Cyber',
    colorName: 'Verde Neon',
    path: '/favicon.svg',
    previewGradient: 'from-emerald-500 to-teal-600',
  },
  {
    id: 'purple',
    name: 'Ametista Neon',
    colorName: 'Viola Cyberpunk',
    path: '/favicon-purple.svg',
    previewGradient: 'from-purple-500 to-pink-600',
  },
  {
    id: 'red',
    name: 'Rubino Cinema',
    colorName: 'Rosso Scarlatto',
    path: '/favicon-red.svg',
    previewGradient: 'from-rose-500 to-red-700',
  },
  {
    id: 'blue',
    name: 'Zaffiro Spaziale',
    colorName: 'Blu Elettrico',
    path: '/favicon-blue.svg',
    previewGradient: 'from-blue-500 to-indigo-600',
  },
  {
    id: 'gold',
    name: 'Oro Deluxe',
    colorName: 'Oro Lux',
    path: '/favicon-gold.svg',
    previewGradient: 'from-amber-400 to-yellow-600',
  },
];

const ACCOUNTS_KEY = 'xtream_saved_accounts';
const FAVORITES_KEY = 'xtream_favorites';
const HISTORY_KEY = 'xtream_watch_history';
const LAST_ACCOUNT_KEY = 'xtream_last_account';
const DOWNLOADS_KEY = 'xtream_downloads';
const APP_ICON_KEY = 'xtream_app_icon';

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

  getDownloads(): DownloadItem[] {
    try {
      const data = localStorage.getItem(DOWNLOADS_KEY);
      return data ? JSON.parse(data) : [];
    } catch {
      return [];
    }
  },

  addDownload(item: DownloadItem): void {
    try {
      const list = this.getDownloads().filter((d) => d.id !== item.id);
      list.unshift(item);
      localStorage.setItem(DOWNLOADS_KEY, JSON.stringify(list.slice(0, 200)));
    } catch (e) {
      console.error('Failed to add download record:', e);
    }
  },

  removeDownload(id: string): void {
    try {
      const list = this.getDownloads().filter((d) => d.id !== id);
      localStorage.setItem(DOWNLOADS_KEY, JSON.stringify(list));
    } catch (e) {
      console.error('Failed to remove download:', e);
    }
  },

  clearDownloads(): void {
    localStorage.removeItem(DOWNLOADS_KEY);
  },

  getAppIcon(): string {
    try {
      return localStorage.getItem(APP_ICON_KEY) || '/favicon.svg';
    } catch {
      return '/favicon.svg';
    }
  },

  setAppIcon(iconPath: string): void {
    try {
      localStorage.setItem(APP_ICON_KEY, iconPath);
      // Update link[rel="icon"] dynamically
      const link = document.querySelector("link[rel='icon']") as HTMLLinkElement | null;
      if (link) link.href = iconPath;
      const appleLink = document.querySelector("link[rel='apple-touch-icon']") as HTMLLinkElement | null;
      if (appleLink) appleLink.href = iconPath;
    } catch (e) {
      console.error('Failed to set app icon:', e);
    }
  },
};
