import React, { useState, useMemo } from 'react';
import { Search, Tv, Star, Play, Layers, LayoutGrid, List } from 'lucide-react';
import { XtreamCategory, XtreamLiveStream, PlayableMediaItem } from '../types/xtream';
import { buildStreamUrl } from '../utils/parseXtreamUrl';
import { storage } from '../services/storage';
import { getSecureImageUrl } from '../utils/imageUrl';

// Smart Channel Logo component with styled fallback initials to avoid black boxes
const ChannelLogo: React.FC<{ icon?: string; name: string; size?: 'sm' | 'md' }> = ({
  icon,
  name,
  size = 'md',
}) => {
  const [hasError, setHasError] = useState(false);

  // Extract clean recognizable initials (e.g. Rai 1 HD -> R1, Canale 5 -> C5, TG3 -> TG3)
  const initials = useMemo(() => {
    const cleaned = name
      .replace(/\[.*?\]|\(.*?\)|HD|FHD|4K|UHD|IT:|ITA:|IT|HEVC|H\.265/gi, '')
      .trim();
    const parts = cleaned.split(/\s+/).filter(Boolean);
    if (parts.length >= 2) {
      return (parts[0][0] + parts[1][0]).toUpperCase();
    }
    return (cleaned.slice(0, 3) || 'TV').toUpperCase();
  }, [name]);

  if (!icon || hasError) {
    return (
      <div className="w-full h-full flex flex-col items-center justify-center bg-gradient-to-br from-zinc-800 to-zinc-950 text-rose-400 font-bold font-mono rounded-lg shadow-inner border border-zinc-800 select-none p-0.5">
        <span className={`${size === 'sm' ? 'text-[10px]' : 'text-xs'} tracking-wider leading-none font-bold`}>
          {initials}
        </span>
        <Tv className={`${size === 'sm' ? 'w-2.5 h-2.5' : 'w-3 h-3'} text-zinc-500 mt-0.5 opacity-70`} />
      </div>
    );
  }

  return (
    <img
      src={getSecureImageUrl(icon)}
      alt={name}
      referrerPolicy="no-referrer"
      loading="lazy"
      onError={() => setHasError(true)}
      className="w-full h-full object-contain"
    />
  );
};

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
  const [viewMode, setViewMode] = useState<'grid' | 'list'>(() => {
    try {
      return (localStorage.getItem('xtream_live_view_mode') as 'grid' | 'list') || 'grid';
    } catch {
      return 'grid';
    }
  });

  const handleToggleViewMode = (mode: 'grid' | 'list') => {
    setViewMode(mode);
    try {
      localStorage.setItem('xtream_live_view_mode', mode);
    } catch {}
  };

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
    // Default to HLS (.m3u8) as in 000player for superior stability across all devices
    const streamUrl = buildStreamUrl(
      serverUrl,
      username,
      password,
      'live',
      stream.stream_id,
      'm3u8',
      false
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

  const toggleFavorite = (stream: XtreamLiveStream) => {
    const streamUrl = buildStreamUrl(
      serverUrl,
      username,
      password,
      'live',
      stream.stream_id,
      'm3u8',
      false
    );
    const item: PlayableMediaItem = {
      id: `live_${stream.stream_id}`,
      title: stream.name,
      type: 'live',
      streamUrl,
      poster: stream.stream_icon,
      categoryName: 'Canale Live TV',
      containerExtension: 'm3u8',
    };
    storage.toggleFavorite(item);
  };

  return (
    <div className="space-y-6">
      {/* Search, Category Filter & View Mode Bar */}
      <div className="flex flex-col md:flex-row gap-3 items-stretch md:items-center justify-between bg-zinc-900/60 p-3 sm:p-4 rounded-2xl border border-zinc-800">
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
              className="absolute right-3 top-1/2 -translate-y-1/2 text-xs text-zinc-400 hover:text-white cursor-pointer"
            >
              ✕
            </button>
          )}
        </div>

        <div className="flex items-center gap-2 w-full md:w-auto">
          {/* Category Select */}
          <div className="flex items-center gap-2 flex-1 md:flex-initial">
            <Layers className="w-4 h-4 text-rose-400 shrink-0" />
            <select
              value={selectedCategory}
              onChange={(e) => setSelectedCategory(e.target.value)}
              aria-label="Filtra per categoria canali"
              className="w-full md:max-w-xs bg-zinc-950 border border-zinc-700 rounded-xl px-3 py-2.5 text-sm text-zinc-200 focus:outline-hidden focus:border-rose-500"
            >
              <option value="all">Tutti i Canali ({streams.length})</option>
              {categories.map((cat) => (
                <option key={cat.category_id} value={cat.category_id}>
                  {cat.category_name} ({categoryCounts[cat.category_id] || 0})
                </option>
              ))}
            </select>
          </div>

          {/* View Mode Toggle: Grid (Icone) vs List (Lista) */}
          <div className="flex items-center bg-zinc-950 border border-zinc-800 rounded-xl p-1 shrink-0">
            <button
              type="button"
              onClick={() => handleToggleViewMode('grid')}
              className={`px-2.5 py-1.5 rounded-lg text-xs transition cursor-pointer flex items-center gap-1.5 ${
                viewMode === 'grid'
                  ? 'bg-rose-600 text-white shadow-xs font-semibold'
                  : 'text-zinc-400 hover:text-zinc-200'
              }`}
              title="Vista a Icone / Card"
            >
              <LayoutGrid className="w-3.5 h-3.5" />
              <span className="hidden sm:inline">Icone</span>
            </button>
            <button
              type="button"
              onClick={() => handleToggleViewMode('list')}
              className={`px-2.5 py-1.5 rounded-lg text-xs transition cursor-pointer flex items-center gap-1.5 ${
                viewMode === 'list'
                  ? 'bg-rose-600 text-white shadow-xs font-semibold'
                  : 'text-zinc-400 hover:text-zinc-200'
              }`}
              title="Vista a Lista compatta"
            >
              <List className="w-3.5 h-3.5" />
              <span className="hidden sm:inline">Lista</span>
            </button>
          </div>
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
            className="text-rose-400 hover:underline cursor-pointer"
          >
            Azzera filtro categoria
          </button>
        )}
      </div>

      {/* Channels display */}
      {isLoading ? (
        <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5 xl:grid-cols-6 2xl:grid-cols-7 3xl:grid-cols-8 4xl:grid-cols-10 gap-3 sm:gap-4">
          {Array.from({ length: 14 }).map((_, i) => (
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
      ) : viewMode === 'list' ? (
        /* Vista a Lista compatta */
        <div className="space-y-2">
          {filteredStreams.map((stream, idx) => {
            const isFav = storage.isFavorite(`live_${stream.stream_id}`);
            return (
              <div
                key={stream.stream_id}
                onClick={() => handlePlayLive(stream)}
                className="group flex items-center justify-between p-2.5 sm:p-3 rounded-2xl bg-zinc-900/70 hover:bg-zinc-850 border border-zinc-800/80 hover:border-rose-500/50 transition cursor-pointer gap-2 sm:gap-4 shadow-xs"
              >
                <div className="flex items-center gap-2.5 sm:gap-3.5 min-w-0 flex-1">
                  <span className="font-mono text-xs text-zinc-500 w-7 text-right shrink-0">
                    {stream.num || idx + 1}
                  </span>
                  <div className="w-10 h-10 sm:w-11 sm:h-11 rounded-xl bg-zinc-950 border border-zinc-800 p-1 flex items-center justify-center overflow-hidden shrink-0">
                    <ChannelLogo icon={stream.stream_icon} name={stream.name} size="sm" />
                  </div>
                  <div className="min-w-0 flex-1">
                    <h4 className="text-xs sm:text-sm font-semibold text-white truncate group-hover:text-rose-400 transition">
                      {stream.name}
                    </h4>
                    <div className="flex items-center gap-2 text-[10px] sm:text-[11px] text-zinc-400">
                      <span className="font-mono text-zinc-500">ID: #{stream.stream_id}</span>
                      {categoryCounts[stream.category_id] && (
                        <span className="text-zinc-400 truncate hidden xs:inline">
                          &bull; {categories.find((c) => String(c.category_id) === String(stream.category_id))?.category_name}
                        </span>
                      )}
                    </div>
                  </div>
                </div>

                <div className="flex items-center gap-1.5 sm:gap-2 shrink-0">
                  <span className="hidden sm:flex items-center gap-1 px-1.5 py-0.5 rounded bg-rose-950/80 text-rose-400 text-[10px] font-semibold border border-rose-800/40">
                    <span className="w-1.5 h-1.5 rounded-full bg-rose-500 animate-pulse"></span>
                    LIVE
                  </span>
                  <button
                    onClick={(e) => {
                      e.stopPropagation();
                      toggleFavorite(stream);
                    }}
                    className="p-1.5 rounded-lg text-zinc-400 hover:text-amber-400 hover:bg-zinc-800 transition cursor-pointer"
                    title="Aggiungi ai Preferiti"
                  >
                    <Star className={`w-4 h-4 ${isFav ? 'text-amber-400 fill-amber-400' : ''}`} />
                  </button>
                  <button
                    onClick={(e) => {
                      e.stopPropagation();
                      handlePlayLive(stream);
                    }}
                    className="px-2.5 sm:px-3 py-1.5 rounded-xl bg-rose-600 hover:bg-rose-500 text-white text-xs font-semibold flex items-center gap-1 shadow-sm transition cursor-pointer"
                  >
                    <Play className="w-3.5 h-3.5 fill-current" />
                    <span className="hidden sm:inline">Guarda</span>
                  </button>
                </div>
              </div>
            );
          })}
        </div>
      ) : (
        /* Vista a Icone / Card */
        <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5 xl:grid-cols-6 2xl:grid-cols-7 3xl:grid-cols-8 4xl:grid-cols-10 gap-3 sm:gap-4">
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
                    <ChannelLogo icon={stream.stream_icon} name={stream.name} size="md" />
                  </div>

                  <div className="flex items-center gap-1">
                    <span className="flex items-center gap-1 px-1.5 py-0.5 rounded bg-rose-950/80 text-rose-400 text-[10px] font-semibold border border-rose-800/40">
                      <span className="w-1.5 h-1.5 rounded-full bg-rose-500 animate-pulse"></span>
                      LIVE
                    </span>

                    <button
                      onClick={(e) => {
                        e.stopPropagation();
                        toggleFavorite(stream);
                      }}
                      className="p-1 rounded text-zinc-400 hover:text-amber-400 hover:bg-zinc-800 transition cursor-pointer"
                      title="Preferiti"
                    >
                      <Star className={`w-3.5 h-3.5 ${isFav ? 'text-amber-400 fill-amber-400' : ''}`} />
                    </button>
                  </div>
                </div>

                {/* Channel Name */}
                <div className="mt-1">
                  <h4 className="text-xs font-semibold text-white group-hover:text-rose-400 transition-colors line-clamp-2">
                    {stream.name}
                  </h4>
                  <div className="flex items-center justify-between text-[10px] text-zinc-500 font-mono mt-2">
                    <span>ID #{stream.stream_id}</span>
                    <span className="text-rose-400 opacity-0 group-hover:opacity-100 transition-opacity flex items-center gap-0.5">
                      <Play className="w-2.5 h-2.5 fill-current" /> Guarda
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
