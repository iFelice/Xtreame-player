import React, { useState, useEffect } from 'react';
import { Star, Clock, Play, Trash2, Film, Tv, Radio } from 'lucide-react';
import { PlayableMediaItem } from '../types/xtream';
import { storage, WatchHistoryItem } from '../services/storage';

interface FavoritesViewProps {
  onPlay: (item: PlayableMediaItem) => void;
}

export const FavoritesView: React.FC<FavoritesViewProps> = ({ onPlay }) => {
  const [favorites, setFavorites] = useState<PlayableMediaItem[]>([]);
  const [history, setHistory] = useState<WatchHistoryItem[]>([]);

  const loadData = () => {
    setFavorites(storage.getFavorites());
    setHistory(storage.getHistory());
  };

  useEffect(() => {
    loadData();
  }, []);

  const handleRemoveFavorite = (id: string, e: React.MouseEvent) => {
    e.stopPropagation();
    storage.toggleFavorite({ id } as PlayableMediaItem);
    loadData();
  };

  const handleClearHistory = () => {
    if (confirm('Vuoi davvero cancellare la cronologia di riproduzione?')) {
      storage.clearHistory();
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
    <div className="space-y-8">
      {/* Continue Watching / History Section */}
      <div>
        <div className="flex items-center justify-between mb-4">
          <div className="flex items-center gap-2">
            <Clock className="w-5 h-5 text-emerald-400" />
            <h2 className="text-lg font-bold text-white">Continua a Guardare</h2>
            <span className="text-xs px-2 py-0.5 rounded-full bg-zinc-800 text-zinc-300">
              {history.length}
            </span>
          </div>

          {history.length > 0 && (
            <button
              onClick={handleClearHistory}
              className="text-xs text-zinc-400 hover:text-rose-400 transition flex items-center gap-1"
            >
              <Trash2 className="w-3.5 h-3.5" />
              Svuota cronologia
            </button>
          )}
        </div>

        {history.length === 0 ? (
          <div className="py-8 text-center text-zinc-500 bg-zinc-900/30 rounded-xl border border-dashed border-zinc-800 text-sm">
            Nessun contenuto recente. Avvia un film o canale per vederlo qui!
          </div>
        ) : (
          <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-3">
            {history.map((h, i) => {
              const progressPct =
                h.duration > 0 ? Math.min(100, Math.round((h.currentTime / h.duration) * 100)) : 0;
              return (
                <div
                  key={`${h.media.id}_${i}`}
                  onClick={() => onPlay(h.media)}
                  className="group flex gap-3 p-3 bg-zinc-900/70 hover:bg-zinc-800 border border-zinc-800 hover:border-emerald-500/40 rounded-xl transition cursor-pointer items-center"
                >
                  <div className="w-20 h-14 bg-zinc-950 rounded-lg overflow-hidden shrink-0 relative flex items-center justify-center">
                    {h.media.poster ? (
                      <img
                        src={h.media.poster}
                        alt={h.media.title}
                        className="w-full h-full object-cover"
                      />
                    ) : (
                      <Film className="w-6 h-6 text-zinc-600" />
                    )}
                    <div className="absolute inset-0 bg-black/40 group-hover:bg-emerald-600/20 flex items-center justify-center transition">
                      <Play className="w-6 h-6 fill-white text-white drop-shadow" />
                    </div>
                  </div>

                  <div className="flex-1 min-w-0">
                    <h3 className="text-xs font-semibold text-zinc-200 group-hover:text-emerald-400 transition truncate">
                      {h.media.title}
                    </h3>
                    <div className="flex items-center justify-between text-[11px] text-zinc-400 mt-1">
                      <span>{h.media.type === 'live' ? 'Diretta' : formatTime(h.currentTime)}</span>
                      {progressPct > 0 && <span>{progressPct}%</span>}
                    </div>

                    {progressPct > 0 && (
                      <div className="w-full h-1 bg-zinc-800 rounded-full mt-1.5 overflow-hidden">
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
        <div className="flex items-center gap-2 mb-4">
          <Star className="w-5 h-5 text-amber-400 fill-amber-400" />
          <h2 className="text-lg font-bold text-white">I Tuoi Preferiti</h2>
          <span className="text-xs px-2 py-0.5 rounded-full bg-zinc-800 text-zinc-300">
            {favorites.length}
          </span>
        </div>

        {favorites.length === 0 ? (
          <div className="py-12 text-center text-zinc-500 bg-zinc-900/30 rounded-xl border border-dashed border-zinc-800 text-sm">
            Nessun preferito salvato. Clicca sull'icona della stella ★ su qualsiasi film o canale per aggiungerlo qui!
          </div>
        ) : (
          <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-6 gap-3">
            {favorites.map((item) => (
              <div
                key={item.id}
                onClick={() => onPlay(item)}
                className="group relative bg-zinc-900 border border-zinc-800 hover:border-amber-500/50 rounded-xl overflow-hidden shadow-md transition cursor-pointer flex flex-col justify-between"
              >
                <div className="relative aspect-2/3 bg-zinc-950 flex items-center justify-center">
                  {item.poster ? (
                    <img
                      src={item.poster}
                      alt={item.title}
                      className="w-full h-full object-cover group-hover:scale-105 transition duration-200"
                    />
                  ) : (
                    <Film className="w-8 h-8 text-zinc-700" />
                  )}

                  <button
                    onClick={(e) => handleRemoveFavorite(item.id, e)}
                    className="absolute top-2 right-2 p-1.5 rounded-lg bg-black/80 hover:bg-rose-950 text-amber-400 hover:text-rose-400 transition"
                    title="Rimuovi dai preferiti"
                  >
                    <Star className="w-3.5 h-3.5 fill-amber-400" />
                  </button>

                  <div className="absolute inset-0 bg-black/60 opacity-0 group-hover:opacity-100 flex items-center justify-center transition">
                    <div className="w-10 h-10 rounded-full bg-emerald-500 flex items-center justify-center text-white">
                      <Play className="w-5 h-5 ml-0.5 fill-white" />
                    </div>
                  </div>
                </div>

                <div className="p-2">
                  <h4 className="text-xs font-medium text-zinc-200 truncate group-hover:text-emerald-400">
                    {item.title}
                  </h4>
                  <span className="text-[10px] text-zinc-500 uppercase mt-0.5 block">
                    {item.type}
                  </span>
                </div>
              </div>
            ))}
          </div>
        )}
      </div>
    </div>
  );
};
