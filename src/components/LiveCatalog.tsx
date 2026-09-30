import React, { useState, useMemo, useEffect } from 'react';
import { Search, Tv, Star, Play, Layers, LayoutGrid, List, ChevronRight, Radio } from 'lucide-react';
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
        <span className={`${size === 'sm' ? 'text-xs' : 'text-sm'} tracking-wider leading-none font-bold`}>
          {initials}
        </span>
        <Tv className={`${size === 'sm' ? 'w-3 h-3' : 'w-4 h-4'} text-zinc-500 mt-1 opacity-70`} />
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
  activeMediaId?: string | null;
  isLoading?: boolean;
  accountKey?: string;
}

export const LiveCatalog: React.FC<LiveCatalogProps> = ({
  categories,
  streams,
  serverUrl,
  username,
  password,
  onPlay,
  activeMediaId,
  isLoading = false,
  accountKey,
}) => {
  // Always default to the FIRST category (never "all" to prevent freezing with 5,000+ DOM nodes)
  const [selectedCategory, setSelectedCategory] = useState<string>(() => {
    return categories[0]?.category_id ? String(categories[0].category_id) : '';
  });

  const [categorySearch, setCategorySearch] = useState<string>('');
  const [searchQuery, setSearchQuery] = useState<string>('');
  const [visibleLimit, setVisibleLimit] = useState<number>(60);
  const [viewMode, setViewMode] = useState<'grid' | 'list'>(() => {
    try {
      return (localStorage.getItem('xtream_live_view_mode') as 'grid' | 'list') || 'grid';
    } catch {
      return 'grid';
    }
  });

  // Ensure first category is selected if categories arrive asynchronously
  useEffect(() => {
    if (categories.length > 0) {
      if (!selectedCategory || !categories.some((c) => String(c.category_id) === String(selectedCategory))) {
        setSelectedCategory(String(categories[0].category_id));
      }
    }
  }, [categories, selectedCategory]);

  // Reset pagination limit when category or search changes
  useEffect(() => {
    setVisibleLimit(60);
  }, [selectedCategory, searchQuery]);

  const handleToggleViewMode = (mode: 'grid' | 'list') => {
    setViewMode(mode);
    try {
      localStorage.setItem('xtream_live_view_mode', mode);
    } catch {}
  };

  // Category counts computed once
  const categoryCounts = useMemo(() => {
    const counts: Record<string, number> = {};
    for (const stream of streams) {
      const cat = stream.category_id || 'uncategorized';
      counts[cat] = (counts[cat] || 0) + 1;
    }
    return counts;
  }, [streams]);

  // Filtered categories for left sidebar
  const filteredCategories = useMemo(() => {
    if (!categorySearch.trim()) return categories;
    const q = categorySearch.toLowerCase();
    return categories.filter((c) => c.category_name.toLowerCase().includes(q));
  }, [categories, categorySearch]);

  const currentCategory = useMemo(() => {
    return categories.find((c) => String(c.category_id) === String(selectedCategory));
  }, [categories, selectedCategory]);

  // Filter streams strictly for the selected category + search inside that category
  const filteredStreams = useMemo(() => {
    if (!selectedCategory) return [];
    return streams.filter((stream) => {
      if (String(stream.category_id) !== String(selectedCategory)) return false;
      if (!searchQuery.trim()) return true;
      return stream.name.toLowerCase().includes(searchQuery.toLowerCase());
    });
  }, [streams, selectedCategory, searchQuery]);

  const visibleStreams = useMemo(() => {
    return filteredStreams.slice(0, visibleLimit);
  }, [filteredStreams, visibleLimit]);

  const handlePlayLive = (stream: XtreamLiveStream) => {
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
      categoryName: currentCategory?.category_name || 'Canale Live TV',
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
      categoryName: currentCategory?.category_name || 'Canale Live TV',
      containerExtension: 'm3u8',
    };
    storage.toggleFavorite(item, accountKey);
  };

  return (
    <div className="space-y-4">
      {/* Master - Detail Dual Column Layout */}
      <div className="flex flex-col lg:flex-row gap-4 sm:gap-6 items-start">
        {/* Left Column: Categories List */}
        <aside className="w-full lg:w-80 xl:w-96 shrink-0 bg-zinc-900/80 border border-zinc-800/90 rounded-2xl p-3 sm:p-4 flex flex-col space-y-3.5 shadow-xl">
          <div className="flex items-center justify-between px-1">
            <div className="flex items-center gap-2.5">
              <Layers className="w-5 h-5 text-rose-400" />
              <h3 className="text-sm sm:text-base font-bold text-white tracking-wide uppercase">
                Categorie ({categories.length})
              </h3>
            </div>
            <span className="text-xs text-zinc-400 font-mono font-semibold">Live TV</span>
          </div>

          {/* Search Category */}
          <div className="relative">
            <Search className="w-4 h-4 absolute left-3.5 top-1/2 -translate-y-1/2 text-zinc-500" />
            <input
              type="text"
              value={categorySearch}
              onChange={(e) => setCategorySearch(e.target.value)}
              placeholder="Filtra categorie..."
              className="w-full pl-9 pr-3.5 py-2.5 bg-zinc-950 border border-zinc-800 rounded-xl text-sm text-white placeholder-zinc-500 focus:outline-hidden focus:border-rose-500 transition"
            />
          </div>

          {/* Scrollable Categories List */}
          <div className="space-y-1.5 max-h-[50vh] lg:max-h-[680px] overflow-y-auto pr-1">
            {filteredCategories.length === 0 ? (
              <div className="py-8 text-center text-zinc-500 text-sm">
                Nessuna categoria trovata
              </div>
            ) : (
              filteredCategories.map((cat) => {
                const count = categoryCounts[cat.category_id] || 0;
                const isSelected = String(cat.category_id) === String(selectedCategory);
                return (
                  <button
                    key={cat.category_id}
                    onClick={() => {
                      setSelectedCategory(String(cat.category_id));
                      setSearchQuery('');
                    }}
                    className={`w-full text-left px-3.5 py-2.5 sm:py-3 rounded-xl text-sm sm:text-base font-semibold flex items-center justify-between transition cursor-pointer group ${
                      isSelected
                        ? 'bg-rose-600 text-white shadow-lg shadow-rose-950/50'
                        : 'text-zinc-300 hover:bg-zinc-850 hover:text-white'
                    }`}
                  >
                    <span className="truncate pr-2">{cat.category_name}</span>
                    <span
                      className={`text-xs font-mono font-bold px-2 py-0.5 rounded-full shrink-0 ${
                        isSelected
                          ? 'bg-rose-800/90 text-rose-100'
                          : 'bg-zinc-800 text-zinc-400 group-hover:text-zinc-200'
                      }`}
                    >
                      {count}
                    </span>
                  </button>
                );
              })
            )}
          </div>
        </aside>

        {/* Right Column: Channels of the Selected Category */}
        <section className="flex-1 w-full min-w-0 bg-zinc-900/40 border border-zinc-800/80 rounded-2xl p-4 sm:p-6 flex flex-col space-y-4 shadow-xl">
          {/* Header of the Selected Category */}
          <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-3 pb-4 border-b border-zinc-800">
            <div className="min-w-0">
              <h2 className="text-lg sm:text-xl font-bold text-white flex items-center gap-2.5 truncate">
                <Tv className="w-6 h-6 text-rose-400 shrink-0" />
                <span className="truncate">{currentCategory?.category_name || 'Canali'}</span>
              </h2>
              <p className="text-xs sm:text-sm text-zinc-400 mt-1">
                Mostrando <strong className="text-zinc-200">{filteredStreams.length}</strong> canali
                {searchQuery ? ` per "${searchQuery}"` : ''}
              </p>
            </div>

            {/* Controls: Search in Category & View Mode Switcher */}
            <div className="flex items-center gap-2.5 shrink-0">
              <div className="relative flex-1 sm:w-72">
                <Search className="w-4 h-4 absolute left-3.5 top-1/2 -translate-y-1/2 text-zinc-500" />
                <input
                  type="text"
                  value={searchQuery}
                  onChange={(e) => setSearchQuery(e.target.value)}
                  placeholder="Cerca canale in questa categoria..."
                  className="w-full pl-9 pr-3.5 py-2 bg-zinc-950 border border-zinc-700/80 rounded-xl text-xs sm:text-sm text-white placeholder-zinc-500 focus:outline-hidden focus:border-rose-500 transition"
                />
              </div>

              <div className="flex items-center p-1 bg-zinc-950 border border-zinc-800 rounded-xl shrink-0">
                <button
                  type="button"
                  onClick={() => handleToggleViewMode('grid')}
                  className={`p-1.5 rounded-lg text-xs transition cursor-pointer ${
                    viewMode === 'grid'
                      ? 'bg-rose-600 text-white shadow-xs'
                      : 'text-zinc-400 hover:text-white'
                  }`}
                  title="Vista a Icone / Griglia"
                >
                  <LayoutGrid className="w-4 h-4" />
                </button>
                <button
                  type="button"
                  onClick={() => handleToggleViewMode('list')}
                  className={`p-1.5 rounded-lg text-xs transition cursor-pointer ${
                    viewMode === 'list'
                      ? 'bg-rose-600 text-white shadow-xs'
                      : 'text-zinc-400 hover:text-white'
                  }`}
                  title="Vista a Lista Compatta"
                >
                  <List className="w-4 h-4" />
                </button>
              </div>
            </div>
          </div>

          {/* Channels Content */}
          {isLoading ? (
            <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 xl:grid-cols-5 2xl:grid-cols-6 gap-3">
              {Array.from({ length: 10 }).map((_, i) => (
                <div key={i} className="h-28 bg-zinc-900 animate-pulse rounded-xl border border-zinc-800"></div>
              ))}
            </div>
          ) : filteredStreams.length === 0 ? (
            <div className="py-20 text-center text-zinc-400 bg-zinc-900/30 rounded-2xl border border-dashed border-zinc-800">
              <Tv className="w-14 h-14 mx-auto text-zinc-600 mb-3" />
              <p className="text-base font-semibold text-zinc-300">Nessun canale trovato in questa categoria</p>
              <p className="text-xs text-zinc-500 mt-1">
                {searchQuery ? 'Prova a cercare un altro nome' : 'Scegli un\'altra categoria dalla colonna a sinistra'}
              </p>
            </div>
          ) : viewMode === 'list' ? (
            /* Lista con Cornice sul Canale Attivo */
            <div className="space-y-2">
              {visibleStreams.map((stream, idx) => {
                const isFav = storage.isFavorite(`live_${stream.stream_id}`, accountKey);
                const isPlayingThis = activeMediaId === `live_${stream.stream_id}`;

                return (
                  <div
                    key={stream.stream_id}
                    onClick={() => handlePlayLive(stream)}
                    className={`group flex items-center justify-between p-3 sm:p-4 rounded-2xl transition cursor-pointer gap-2 sm:gap-4 shadow-sm ${
                      isPlayingThis
                        ? 'bg-rose-950/80 border-2 border-rose-500 ring-4 ring-rose-500/50 shadow-2xl shadow-rose-950/90 scale-[1.02]'
                        : 'bg-zinc-900/90 hover:bg-zinc-850 border border-zinc-800/90 hover:border-rose-500/50'
                    }`}
                  >
                    <div className="flex items-center gap-3 sm:gap-4 min-w-0 flex-1">
                      <span className="font-mono text-sm sm:text-base font-bold text-zinc-500 w-8 text-right shrink-0">
                        {stream.num || idx + 1}
                      </span>
                      <div className="w-12 h-12 sm:w-14 sm:h-14 rounded-2xl bg-zinc-950 border border-zinc-800 p-0.5 flex items-center justify-center overflow-hidden shrink-0">
                        <ChannelLogo icon={stream.stream_icon} name={stream.name} size="sm" />
                      </div>
                      <div className="min-w-0 flex-1">
                        <div className="flex items-center gap-2">
                          <h4 className="text-base sm:text-lg font-bold text-white truncate group-hover:text-rose-400 transition">
                            {stream.name}
                          </h4>
                          {isPlayingThis && (
                            <span className="px-2.5 py-0.5 rounded-full bg-rose-600 text-white text-xs font-bold uppercase tracking-wider animate-pulse flex items-center gap-1 shrink-0">
                              <Radio className="w-3.5 h-3.5" /> In Onda
                            </span>
                          )}
                        </div>
                        <div className="flex items-center gap-2 text-xs sm:text-sm text-zinc-400 font-mono mt-0.5">
                          <span>ID #{stream.stream_id}</span>
                        </div>
                      </div>
                    </div>

                    <div className="flex items-center gap-2.5 shrink-0">
                      <span className="hidden sm:flex items-center gap-1 px-2.5 py-1 rounded-lg bg-rose-950/80 text-rose-400 text-xs sm:text-sm font-bold border border-rose-800/40">
                        <span className="w-2 h-2 rounded-full bg-rose-500 animate-pulse"></span>
                        LIVE
                      </span>
                      <button
                        onClick={(e) => {
                          e.stopPropagation();
                          toggleFavorite(stream);
                        }}
                        className="p-2 rounded-xl text-zinc-400 hover:text-amber-400 hover:bg-zinc-800 transition cursor-pointer"
                        title="Aggiungi ai Preferiti"
                      >
                        <Star className={`w-5 h-5 ${isFav ? 'text-amber-400 fill-amber-400' : ''}`} />
                      </button>
                      <button
                        onClick={(e) => {
                          e.stopPropagation();
                          handlePlayLive(stream);
                        }}
                        className={`px-4 sm:px-5 py-2 rounded-xl text-xs sm:text-sm font-bold flex items-center gap-1.5 shadow-md transition cursor-pointer ${
                          isPlayingThis
                            ? 'bg-rose-500 text-white'
                            : 'bg-rose-600 hover:bg-rose-500 text-white'
                        }`}
                      >
                        <Play className="w-4 h-4 fill-current" />
                        <span>Guarda</span>
                      </button>
                    </div>
                  </div>
                );
              })}
            </div>
          ) : (
            /* Griglia a Icone / Card con Cornice sul Canale Attivo */
            <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 xl:grid-cols-5 2xl:grid-cols-6 gap-3 sm:gap-4">
              {visibleStreams.map((stream) => {
                const isFav = storage.isFavorite(`live_${stream.stream_id}`, accountKey);
                const isPlayingThis = activeMediaId === `live_${stream.stream_id}`;

                return (
                  <div
                    key={stream.stream_id}
                    onClick={() => handlePlayLive(stream)}
                    className={`group relative rounded-2xl p-4 shadow-md transition-all cursor-pointer flex flex-col justify-between ${
                      isPlayingThis
                        ? 'bg-rose-950/80 border-2 border-rose-500 ring-4 ring-rose-500/50 shadow-2xl shadow-rose-950/90 scale-[1.02]'
                        : 'bg-zinc-900 border border-zinc-800 hover:border-rose-500/50 hover:-translate-y-1'
                    }`}
                  >
                    {/* Top: Logo and Fav */}
                    <div className="flex items-start justify-between gap-2 mb-3">
                      <div className="w-16 h-16 rounded-2xl bg-zinc-950 border border-zinc-800 p-1 flex items-center justify-center overflow-hidden shrink-0">
                        <ChannelLogo icon={stream.stream_icon} name={stream.name} size="md" />
                      </div>

                      <div className="flex items-center gap-1.5">
                        {isPlayingThis ? (
                          <span className="flex items-center gap-1 px-2.5 py-0.5 rounded-full bg-rose-600 text-white text-xs font-bold uppercase tracking-wide">
                            <span className="w-2 h-2 rounded-full bg-white animate-ping"></span>
                            In Onda
                          </span>
                        ) : (
                          <span className="flex items-center gap-1 px-2 py-0.5 rounded-lg bg-rose-950/80 text-rose-400 text-xs font-bold border border-rose-800/40">
                            <span className="w-2 h-2 rounded-full bg-rose-500 animate-pulse"></span>
                            LIVE
                          </span>
                        )}

                        <button
                          onClick={(e) => {
                            e.stopPropagation();
                            toggleFavorite(stream);
                          }}
                          className="p-1.5 rounded-lg text-zinc-400 hover:text-amber-400 hover:bg-zinc-800 transition cursor-pointer"
                          title="Preferiti"
                        >
                          <Star className={`w-4 h-4 ${isFav ? 'text-amber-400 fill-amber-400' : ''}`} />
                        </button>
                      </div>
                    </div>

                    {/* Channel Name */}
                    <div className="mt-1">
                      <h4 className="text-sm sm:text-base font-bold text-white group-hover:text-rose-400 transition-colors line-clamp-2">
                        {stream.name}
                      </h4>
                      <div className="flex items-center justify-between text-xs sm:text-sm text-zinc-400 font-mono mt-2.5">
                        <span>#{stream.stream_id}</span>
                        <span className="text-rose-400 opacity-0 group-hover:opacity-100 transition-opacity flex items-center gap-1 font-bold">
                          <Play className="w-3.5 h-3.5 fill-current" /> Guarda
                        </span>
                      </div>
                    </div>
                  </div>
                );
              })}
            </div>
          )}

          {/* Load More Button */}
          {filteredStreams.length > visibleLimit && (
            <div className="pt-4 text-center">
              <button
                type="button"
                onClick={() => setVisibleLimit((prev) => prev + 60)}
                className="px-6 py-3 rounded-xl bg-zinc-900 hover:bg-zinc-850 border border-zinc-800 text-sm font-bold text-zinc-200 hover:text-white transition cursor-pointer shadow-lg inline-flex items-center gap-2"
              >
                <span>Mostra altri canali ({filteredStreams.length - visibleLimit} rimanenti)</span>
                <ChevronRight className="w-4 h-4 text-rose-400" />
              </button>
            </div>
          )}
        </section>
      </div>
    </div>
  );
};
