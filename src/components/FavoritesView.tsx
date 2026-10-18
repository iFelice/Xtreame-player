import { RemoteImage } from './RemoteImage';
import React, { useState, useEffect } from 'react';
import { Star, Clock, Play, Trash2, Film, Tv, Radio } from 'lucide-react';
import { PlayableMediaItem } from '../types/xtream';
import { storage, WatchHistoryItem } from '../services/storage';
import { getSecureImageUrl } from '../utils/imageUrl';

interface FavoritesViewProps {
  onPlay: (item: PlayableMediaItem) => void;
  onOpenSeries: (seriesId: string | number) => void;
  accountKey?: string;
}

export const FavoritesView: React.FC<FavoritesViewProps> = ({ onPlay, onOpenSeries, accountKey }) => {
  const [favorites, setFavorites] = useState<PlayableMediaItem[]>([]);
  const [history, setHistory] = useState<WatchHistoryItem[]>([]);

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
            <Clock className="w-6 h-6 text-emerald-400" />
            <h2 className="text-xl sm:text-2xl font-bold text-white">Continua a Guardare</h2>
            <span className="text-xs sm:text-sm font-semibold px-2.5 py-0.5 rounded-full bg-zinc-800 text-zinc-200">
              {history.length}
            </span>
          </div>

          {history.length > 0 && (
            <button
              onClick={handleClearHistory}
              className="text-xs sm:text-sm font-medium text-zinc-400 hover:text-rose-400 transition flex items-center gap-1.5 cursor-pointer p-1"
            >
              <Trash2 className="w-4 h-4" />
              Svuota cronologia
            </button>
          )}
        </div>

        {history.length === 0 ? (
          <div className="py-10 text-center text-zinc-400 bg-zinc-900/40 rounded-2xl border border-dashed border-zinc-800 text-sm sm:text-base">
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
                  className="group flex gap-3.5 p-3.5 bg-zinc-900/80 hover:bg-zinc-850 border border-zinc-800 hover:border-emerald-500/50 rounded-2xl transition cursor-pointer items-center shadow-md"
                >
                  <div className="w-24 h-16 bg-zinc-950 rounded-xl overflow-hidden shrink-0 relative flex items-center justify-center border border-zinc-800">
                    {h.media.poster ? (
                      <RemoteImage
                        src={getSecureImageUrl(h.media.poster)}
                        alt={h.media.title}
                        referrerPolicy="no-referrer"
                        className="w-full h-full object-cover"
                      />
                    ) : (
                      <Film className="w-7 h-7 text-zinc-600" />
                    )}
                    <div className="absolute inset-0 bg-black/40 group-hover:bg-emerald-600/30 flex items-center justify-center transition">
                      <Play className="w-7 h-7 fill-white text-white drop-shadow" />
                    </div>
                  </div>

                  <div className="flex-1 min-w-0">
                    <h3 className="text-sm sm:text-base font-bold text-zinc-100 group-hover:text-emerald-400 transition truncate">
                      {h.media.title}
                    </h3>
                    <div className="flex items-center justify-between text-xs text-zinc-400 mt-1 font-medium">
                      <span>{h.media.type === 'live' ? 'Diretta' : formatTime(h.currentTime)}</span>
                      {progressPct > 0 && <span className="font-bold text-emerald-400">{progressPct}%</span>}
                    </div>

                    {progressPct > 0 && (
                      <div className="w-full h-1.5 bg-zinc-800 rounded-full mt-2 overflow-hidden">
                        <div
                          className="h-full bg-emerald-500 rounded-full"
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
          <Star className="w-6 h-6 text-amber-400 fill-amber-400" />
          <h2 className="text-xl sm:text-2xl font-bold text-white">I Tuoi Preferiti</h2>
          <span className="text-xs sm:text-sm font-semibold px-2.5 py-0.5 rounded-full bg-zinc-800 text-zinc-200">
            {favorites.length}
          </span>
        </div>

        {favorites.length === 0 ? (
          <div className="py-14 text-center text-zinc-400 bg-zinc-900/40 rounded-2xl border border-dashed border-zinc-800 text-sm sm:text-base">
            Nessun preferito salvato. Clicca sull'icona della stella ★ su qualsiasi canale, film o serie per aggiungerlo qui!
          </div>
        ) : (
          <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5 xl:grid-cols-6 2xl:grid-cols-7 gap-4">
            {favorites.map((item) => (
              <div
                key={item.id}
                onClick={() => item.type === 'series'
                  ? onOpenSeries(item.id.replace(/^series_/, ''))
                  : onPlay(item)}
                className="group relative bg-zinc-900 border border-zinc-800 hover:border-amber-500/60 rounded-2xl overflow-hidden shadow-lg transition-all cursor-pointer flex flex-col justify-between hover:-translate-y-1"
              >
                <div className="relative aspect-2/3 bg-zinc-950 flex items-center justify-center overflow-hidden">
                  {item.poster ? (
                    <RemoteImage
                      src={getSecureImageUrl(item.poster)}
                      alt={item.title}
                      referrerPolicy="no-referrer"
                      className="w-full h-full object-cover group-hover:scale-105 transition duration-300"
                    />
                  ) : (
                    <div className="flex flex-col items-center justify-center p-3 text-zinc-600">
                      {item.type === 'live' ? <Tv className="w-10 h-10 text-rose-500" /> : <Film className="w-10 h-10 text-emerald-500" />}
                      <span className="text-xs text-zinc-400 text-center mt-2 line-clamp-2">{item.title}</span>
                    </div>
                  )}

                  <button
                    onClick={(e) => handleRemoveFavorite(item.id, e)}
                    className="absolute z-20 top-2 right-2 p-2 rounded-xl bg-black/80 hover:bg-rose-950 text-amber-400 hover:text-rose-400 transition shadow-lg cursor-pointer"
                    title="Rimuovi dai preferiti"
                  >
                    <Star className="w-4 h-4 fill-amber-400" />
                  </button>

                  <div className="absolute inset-0 bg-black/60 opacity-0 group-hover:opacity-100 flex items-center justify-center transition">
                    <div className="w-12 h-12 rounded-full bg-emerald-500 flex items-center justify-center text-white shadow-xl transform group-hover:scale-110 transition">
                      <Play className="w-6 h-6 ml-0.5 fill-white" />
                    </div>
                  </div>
                </div>

                <div className="p-3">
                  <h4 className="text-sm font-bold text-zinc-100 truncate group-hover:text-emerald-400 transition">
                    {item.title}
                  </h4>
                  <div className="flex items-center justify-between text-xs text-zinc-400 mt-1">
                    <span className="uppercase font-semibold text-[11px] px-1.5 py-0.5 rounded bg-zinc-800 text-zinc-300">
                      {item.type}
                    </span>
                    {item.categoryName && (
                      <span className="truncate text-zinc-500 text-[11px] ml-1">{item.categoryName}</span>
                    )}
                  </div>
                </div>
              </div>
            ))}
          </div>
        )}
      </div>
    </div>
  );
};
