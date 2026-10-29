import { RemoteImage } from './RemoteImage';
import React, { useState, useEffect } from 'react';
import { Star, Clock, Play, Trash2, Film, Tv, Radio } from 'lucide-react';
import { PlayableMediaItem } from '../types/xtream';
import { storage, WatchHistoryItem } from '../services/storage';
import { getSecureImageUrl } from '../utils/imageUrl';
import { isTvEnvironment } from '../utils/downloadHelper';
import { MovieDetailModal } from './MovieDetailModal';
import { useTouchCardMode } from '../utils/useTouchCardMode';
import { showsHoverVeil } from '../utils/touchDevice';

interface FavoritesViewProps {
  onPlay: (item: PlayableMediaItem) => void;
  onOpenSeries: (seriesId: string | number) => void;
  accountKey?: string;
  /** Optional Xtream credentials: they add plot and metadata to the movie sheet. */
  serverUrl?: string;
  username?: string;
  password?: string;
}

export const FavoritesView: React.FC<FavoritesViewProps> = ({
  onPlay,
  onOpenSeries,
  accountKey,
  serverUrl,
  username,
  password,
}) => {
  const [favorites, setFavorites] = useState<PlayableMediaItem[]>([]);
  const [history, setHistory] = useState<WatchHistoryItem[]>([]);
  const [activeMovie, setActiveMovie] = useState<PlayableMediaItem | null>(null);
  const isTv = isTvEnvironment();
  // Touch cards (TV excluded) open the movie sheet instead of playing at once.
  const touchCardMode = useTouchCardMode(isTv);

  const loadData = () => {
    setFavorites(storage.getFavorites(accountKey));
    setHistory(storage.getHistory(accountKey));
  };

  useEffect(() => {
    loadData();
  }, [accountKey]);

  const handleRemoveFavorite = (id: string, e: React.MouseEvent) => {
    e.stopPropagation();
    storage.toggleFavorite({ id } as PlayableMediaItem, accountKey);
    loadData();
  };

  const handleClearHistory = () => {
    if (confirm('Vuoi davvero cancellare la cronologia di riproduzione?')) {
      storage.clearHistory(accountKey);
      setHistory([]);
    }
  };

  const openFavorite = (item: PlayableMediaItem) => {
    if (item.type === 'series') {
      onOpenSeries(item.id.replace(/^series_/, ''));
      return;
    }
    if (item.type === 'movie' && touchCardMode) {
      setActiveMovie(item);
      return;
    }
    // Live channels keep starting with a single tap, also on touch.
    onPlay(item);
  };

  const movieDetailTarget = activeMovie
    ? {
        id: activeMovie.id.replace(/^movie_/, ''),
        title: activeMovie.title,
        poster: activeMovie.poster,
        containerExtension: activeMovie.containerExtension,
        streamUrl: activeMovie.streamUrl,
      }
    : null;

  const formatTime = (secs: number) => {
    if (isNaN(secs) || secs <= 0) return '00:00';
    const m = Math.floor(secs / 60);
    const s = Math.floor(secs % 60);
    return `${m}:${s.toString().padStart(2, '0')}`;
  };

  return (
    <div className="space-y-10">
      {/* Continue Watching / History Section */}
      <div>
        <div className="flex items-center justify-between mb-4">
          <div className="flex items-center gap-2.5">
            <Clock className="w-6 h-6 text-accent-strong" />
            <h2 className="text-xl sm:text-2xl font-bold text-label">Continua a Guardare</h2>
            <span className="text-xs sm:text-sm font-semibold px-2.5 py-0.5 rounded-full bg-surface-1 text-label">
              {history.length}
            </span>
          </div>

          {history.length > 0 && (
            <button
              onClick={handleClearHistory}
              className="text-xs sm:text-sm font-medium text-label-secondary hover:text-danger transition flex items-center gap-1.5 cursor-pointer p-1"
            >
              <Trash2 className="w-4 h-4" />
              Svuota cronologia
            </button>
          )}
        </div>

        {history.length === 0 ? (
          <div className="py-10 text-center text-label-secondary bg-surface-0/40 rounded-2xl border border-dashed border-separator text-sm sm:text-base">
            Nessun contenuto recente. Avvia un canale live, film o serie per ritrovarlo qui!
          </div>
        ) : (
          <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-4">
            {history.map((h, i) => {
              const progressPct =
                h.duration > 0 ? Math.min(100, Math.round((h.currentTime / h.duration) * 100)) : 0;
              return (
                <div
                  key={`${h.media.id}_${i}`}
                  onClick={() => onPlay(h.media)}
                  className="group flex gap-3.5 p-3.5 bg-surface-0/80 hover:bg-surface-1 border border-separator hover:border-accent/50 rounded-2xl transition cursor-pointer items-center shadow-md"
                >
                  <div className="w-24 h-16 bg-surface-0 rounded-xl overflow-hidden shrink-0 relative flex items-center justify-center border border-separator">
                    {h.media.poster ? (
                      <RemoteImage
                        src={getSecureImageUrl(h.media.poster)}
                        alt={h.media.title}
                        referrerPolicy="no-referrer"
                        className="w-full h-full object-cover"
                      />
                    ) : (
                      <Film className="w-7 h-7 text-label-tertiary" />
                    )}
                    <div className="absolute inset-0 bg-surface-1/40 group-hover:bg-accent/15 flex items-center justify-center transition">
                      <Play className="w-7 h-7 fill-white text-label drop-shadow" />
                    </div>
                  </div>

                  <div className="flex-1 min-w-0">
                    <h3 className="text-sm sm:text-base font-bold text-label group-hover:text-accent-strong transition truncate">
                      {h.media.title}
                    </h3>
                    <div className="flex items-center justify-between text-xs text-label-secondary mt-1 font-medium">
                      <span>{h.media.type === 'live' ? 'Diretta' : formatTime(h.currentTime)}</span>
                      {progressPct > 0 && <span className="font-bold text-accent-strong">{progressPct}%</span>}
                    </div>

                    {progressPct > 0 && (
                      <div className="w-full h-1.5 bg-surface-1 rounded-full mt-2 overflow-hidden">
                        <div
                          className="h-full bg-accent rounded-full"
                          style={{ width: `${progressPct}%` }}
                        ></div>
                      </div>
                    )}
                  </div>
                </div>
              );
            })}
          </div>
        )}
      </div>

      {/* Starred Favorites Section */}
      <div>
        <div className="flex items-center gap-2.5 mb-4">
          <Star className="w-6 h-6 text-favorite fill-favorite" />
          <h2 className="text-xl sm:text-2xl font-bold text-label">I Tuoi Preferiti</h2>
          <span className="text-xs sm:text-sm font-semibold px-2.5 py-0.5 rounded-full bg-surface-1 text-label">
            {favorites.length}
          </span>
        </div>

        {favorites.length === 0 ? (
          <div className="py-14 text-center text-label-secondary bg-surface-0/40 rounded-2xl border border-dashed border-separator text-sm sm:text-base">
            Nessun preferito salvato. Clicca sull'icona della stella ★ su qualsiasi canale, film o serie per aggiungerlo qui!
          </div>
        ) : (
          <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5 xl:grid-cols-6 2xl:grid-cols-7 gap-4">
            {favorites.map((item) => (
              <div
                key={item.id}
                onClick={() => openFavorite(item)}
                className="group relative bg-surface-0 border border-separator hover:border-favorite/60 rounded-2xl overflow-hidden shadow-lg transition-all cursor-pointer flex flex-col justify-between hover:-translate-y-1"
              >
                <div className="relative aspect-2/3 bg-surface-0 flex items-center justify-center overflow-hidden">
                  {item.poster ? (
                    <RemoteImage
                      src={getSecureImageUrl(item.poster)}
                      alt={item.title}
                      referrerPolicy="no-referrer"
                      className="w-full h-full object-cover group-hover:scale-105 transition duration-300"
                    />
                  ) : (
                    <div className="flex flex-col items-center justify-center p-3 text-label-tertiary">
                      {item.type === 'live' ? <Tv className="w-10 h-10 text-danger" /> : <Film className="w-10 h-10 text-accent-strong" />}
                      <span className="text-xs text-label-secondary text-center mt-2 line-clamp-2">{item.title}</span>
                    </div>
                  )}

                  <button
                    onClick={(e) => handleRemoveFavorite(item.id, e)}
                    className="absolute z-20 top-2 right-2 p-2 rounded-xl bg-surface-1/80 hover:bg-danger text-favorite hover:text-danger transition shadow-lg cursor-pointer"
                    title="Rimuovi dai preferiti"
                  >
                    <Star className="w-4 h-4 fill-favorite" />
                  </button>

                  {/* Hover veil (desktop/TV only): on touch it is invisible but
                      would still swallow the tap aimed at the card. */}
                  {showsHoverVeil(touchCardMode) && (
                  <div className="absolute inset-0 bg-surface-1/60 opacity-0 group-hover:opacity-100 flex items-center justify-center transition">
                    <div className="w-12 h-12 rounded-full bg-accent flex items-center justify-center text-on-accent shadow-xl transform group-hover:scale-110 transition">
                      <Play className="w-6 h-6 ml-0.5 fill-white" />
                    </div>
                  </div>
                  )}
                </div>

                <div className="p-3">
                  <h4 className="text-sm font-bold text-label truncate group-hover:text-accent-strong transition">
                    {item.title}
                  </h4>
                  <div className="flex items-center justify-between text-xs text-label-secondary mt-1">
                    <span className="uppercase font-semibold text-[11px] px-1.5 py-0.5 rounded bg-surface-1 text-label-secondary">
                      {item.type}
                    </span>
                    {item.categoryName && (
                      <span className="truncate text-label-tertiary text-[11px] ml-1">{item.categoryName}</span>
                    )}
                  </div>
                </div>
              </div>
            ))}
          </div>
        )}
      </div>

      {/* Shared movie sheet, opened by a tap on a touch device. */}
      <MovieDetailModal
        movie={movieDetailTarget}
        credentials={
          serverUrl && username && password ? { serverUrl, username, password } : null
        }
        accountKey={accountKey}
        onClose={() => setActiveMovie(null)}
        onPlay={(movie) => {
          const item = activeMovie ?? favorites.find((favorite) => favorite.id === `movie_${movie.id}`);
          setActiveMovie(null);
          if (item) onPlay(item);
        }}
      />
    </div>
  );
};
