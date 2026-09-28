import React, { useState, useMemo } from 'react';
import { Search, Tv, Star, Play, Layers, Radio, Sparkles } from 'lucide-react';
import { XtreamCategory, XtreamLiveStream, PlayableMediaItem } from '../types/xtream';
import { buildStreamUrl } from '../utils/parseXtreamUrl';
import { storage } from '../services/storage';

interface LiveCatalogProps {
  categories: XtreamCategory[];
  streams: XtreamLiveStream[];
  serverUrl: string;
  username: string;
  password: string;
  onPlay: (item: PlayableMediaItem) => void;
  isLoading?: boolean;
}

export const LiveCatalog: React.FC<LiveCatalogProps> = ({
  categories,
  streams,
  serverUrl,
  username,
  password,
  onPlay,
  isLoading = false,
}) => {
  const [selectedCategory, setSelectedCategory] = useState<string>('all');
  const [searchQuery, setSearchQuery] = useState<string>('');

  // Category counts
  const categoryCounts = useMemo(() => {
    const counts: Record<string, number> = { all: streams.length };
    for (const stream of streams) {
      const cat = stream.category_id || 'uncategorized';
      counts[cat] = (counts[cat] || 0) + 1;
    }
    return counts;
  }, [streams]);

  const filteredStreams = useMemo(() => {
    return streams.filter((stream) => {
      const matchesCategory =
        selectedCategory === 'all' || String(stream.category_id) === String(selectedCategory);
      const matchesSearch =
        !searchQuery.trim() ||
        stream.name.toLowerCase().includes(searchQuery.toLowerCase());
      return matchesCategory && matchesSearch;
    });
  }, [streams, selectedCategory, searchQuery]);

  const handlePlayLive = (stream: XtreamLiveStream) => {
    const streamUrl = buildStreamUrl(
      serverUrl,
      username,
      password,
      'live',
      stream.stream_id,
      'm3u8',
      true
    );

    const mediaItem: PlayableMediaItem = {
      id: `live_${stream.stream_id}`,
      title: stream.name,
      type: 'live',
      streamUrl,
      poster: stream.stream_icon,
      categoryName: 'Canale Live TV',
      containerExtension: 'm3u8',
    };

    onPlay(mediaItem);
  };

  return (
    <div className="space-y-6">
      {/* Search & Category Filter */}
      <div className="flex flex-col md:flex-row gap-4 items-stretch md:items-center justify-between bg-zinc-900/60 p-4 rounded-2xl border border-zinc-800">
        <div className="relative flex-1">
          <Search className="w-4 h-4 absolute left-3.5 top-1/2 -translate-y-1/2 text-zinc-400" />
          <input
            type="text"
            value={searchQuery}
            onChange={(e) => setSearchQuery(e.target.value)}
            placeholder="Cerca canale in diretta..."
            className="w-full pl-10 pr-4 py-2.5 bg-zinc-950/80 border border-zinc-700/80 rounded-xl text-white placeholder-zinc-500 text-sm focus:outline-hidden focus:border-rose-500"
          />
          {searchQuery && (
            <button
              onClick={() => setSearchQuery('')}
              className="absolute right-3 top-1/2 -translate-y-1/2 text-xs text-zinc-400 hover:text-white"
            >
              ✕
            </button>
          )}
        </div>

        <div className="flex items-center gap-2">
          <Layers className="w-4 h-4 text-rose-400 shrink-0" />
          <select
            value={selectedCategory}
            onChange={(e) => setSelectedCategory(e.target.value)}
            aria-label="Filtra per categoria canali"
            className="bg-zinc-950 border border-zinc-700 rounded-xl px-3 py-2.5 text-sm text-zinc-200 focus:outline-hidden focus:border-rose-500 max-w-xs"
          >
            <option value="all">Tutti i Canali ({streams.length})</option>
            {categories.map((cat) => (
              <option key={cat.category_id} value={cat.category_id}>
                {cat.category_name} ({categoryCounts[cat.category_id] || 0})
              </option>
            ))}
          </select>
        </div>
      </div>

      {/* Info count */}
      <div className="flex items-center justify-between text-xs text-zinc-400 px-1">
        <span>
          Mostrando <strong className="text-zinc-200">{filteredStreams.length}</strong> canali su {streams.length} totali
        </span>
        {selectedCategory !== 'all' && (
          <button
            onClick={() => setSelectedCategory('all')}
            className="text-rose-400 hover:underline"
          >
            Azzera filtro categoria
          </button>
        )}
      </div>

      {/* Grid of channels */}
      {isLoading ? (
        <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5 xl:grid-cols-6 gap-3">
          {Array.from({ length: 12 }).map((_, i) => (
            <div key={i} className="h-28 bg-zinc-900 animate-pulse rounded-xl border border-zinc-800"></div>
          ))}
        </div>
      ) : filteredStreams.length === 0 ? (
        <div className="py-16 text-center text-zinc-400 bg-zinc-900/30 rounded-2xl border border-dashed border-zinc-800">
          <Tv className="w-12 h-12 mx-auto text-zinc-600 mb-3" />
          <p className="text-base font-medium text-zinc-300">Nessun canale live trovato</p>
          <p className="text-xs text-zinc-500 mt-1">
            {searchQuery ? 'Prova a cercare un altro nome' : 'Nessun canale in questa categoria'}
          </p>
        </div>
      ) : (
        <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5 xl:grid-cols-6 gap-3">
          {filteredStreams.map((stream) => {
            const isFav = storage.isFavorite(`live_${stream.stream_id}`);
            return (
              <div
                key={stream.stream_id}
                onClick={() => handlePlayLive(stream)}
                className="group relative bg-zinc-900 border border-zinc-800 hover:border-rose-500/50 rounded-xl p-3 shadow-md hover:-translate-y-0.5 transition-all cursor-pointer flex flex-col justify-between"
              >
                {/* Channel top: Logo and Fav */}
                <div className="flex items-start justify-between gap-2 mb-2">
                  <div className="w-12 h-12 rounded-lg bg-zinc-950 border border-zinc-800 p-1 flex items-center justify-center overflow-hidden shrink-0">
                    {stream.stream_icon ? (
                      <img
                        src={stream.stream_icon}
                        alt={stream.name}
                        loading="lazy"
                        onError={(e) => {
                          (e.target as HTMLElement).style.display = 'none';
                        }}
                        className="w-full h-full object-contain"
                      />
                    ) : (
                      <Tv className="w-6 h-6 text-zinc-600" />
                    )}
                  </div>

                  <div className="flex items-center gap-1">
                    <span className="flex items-center gap-1 px-1.5 py-0.5 rounded bg-rose-950/80 text-rose-400 text-[10px] font-semibold border border-rose-800/40">
                      <span className="w-1.5 h-1.5 rounded-full bg-rose-500 animate-pulse"></span>
                      LIVE
                    </span>

                    <button
                      onClick={(e) => {
                        e.stopPropagation();
                        const item: PlayableMediaItem = {
                          id: `live_${stream.stream_id}`,
                          title: stream.name,
                          type: 'live',
                          streamUrl: buildStreamUrl(serverUrl, username, password, 'live', stream.stream_id, 'ts', true),
                          poster: stream.stream_icon,
                          containerExtension: 'ts',
                        };
                        storage.toggleFavorite(item);
                        setSelectedCategory((c) => c);
                      }}
                      aria-label={isFav ? "Rimuovi dai preferiti" : "Aggiungi ai preferiti"}
                      className="p-1 rounded text-zinc-400 hover:text-amber-400 transition"
                    >
                      <Star className={`w-3.5 h-3.5 ${isFav ? 'fill-amber-400 text-amber-400' : ''}`} />
                    </button>
                  </div>
                </div>

                {/* Channel Name */}
                <div>
                  <h3
                    className="text-xs font-semibold text-zinc-200 line-clamp-2 group-hover:text-rose-400 transition-colors"
                    title={stream.name}
                  >
                    {stream.name}
                  </h3>
                  <div className="flex items-center justify-between mt-2 pt-1.5 border-t border-zinc-800/60 text-[10px] text-zinc-500">
                    <span>ID #{stream.stream_id}</span>
                    <span className="group-hover:text-rose-400 flex items-center gap-1 font-medium transition">
                      <Play className="w-3 h-3 fill-current" />
                      Guarda
                    </span>
                  </div>
                </div>
              </div>
            );
          })}
        </div>
      )}
    </div>
  );
};
