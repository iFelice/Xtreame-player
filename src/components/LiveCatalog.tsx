import { RemoteImage } from './RemoteImage';
import React, { useState, useMemo, useEffect, useRef } from 'react';
import {
  Search,
  Tv,
  Star,
  Play,
  Layers,
  LayoutGrid,
  List,
  ChevronRight,
  Radio,
  ChevronUp,
  ChevronDown,
} from 'lucide-react';
import { XtreamCategory, XtreamLiveStream, PlayableMediaItem } from '../types/xtream';
import { buildStreamUrl } from '../utils/parseXtreamUrl';
import { storage } from '../services/storage';
import { getSecureImageUrl } from '../utils/imageUrl';
import { ListPositionPill } from './ListPositionPill';

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
      <div className="w-full h-full flex flex-col items-center justify-center bg-gradient-to-br from-zinc-800 to-zinc-950 text-rose-400 font-bold font-mono rounded-xl shadow-inner border border-zinc-800 select-none p-1">
        <span className={`${size === 'sm' ? 'text-xs sm:text-sm' : 'text-sm sm:text-base'} tracking-wider leading-none font-bold`}>
          {initials}
        </span>
        <Tv className={`${size === 'sm' ? 'w-3.5 h-3.5' : 'w-5 h-5'} text-zinc-500 mt-1 opacity-70`} />
      </div>
    );
  }

  return (
    <RemoteImage
      src={getSecureImageUrl(icon)}
      alt={name}
      referrerPolicy="no-referrer"
      loading="lazy"
      onError={() => setHasError(true)}
      onRemoteError={() => setHasError(true)}
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
  const [, refreshFavorites] = useState(0);
  const categoriesListRef = useRef<HTMLDivElement | null>(null);
  const channelsListRef = useRef<HTMLDivElement | null>(null);

  // Always default to the FIRST category (never "all" to prevent freezing)
  const [selectedCategory, setSelectedCategory] = useState<string>(() => {
    return categories[0]?.category_id ? String(categories[0].category_id) : '';
  });

  const [categorySearch, setCategorySearch] = useState<string>('');
  const [searchQuery, setSearchQuery] = useState<string>('');
  const [viewMode, setViewMode] = useState<'grid' | 'list'>('list');

  // Ensure first category is selected if categories arrive asynchronously
  useEffect(() => {
    if (categories.length > 0) {
      if (!selectedCategory || !categories.some((c) => String(c.category_id) === String(selectedCategory))) {
        setSelectedCategory(String(categories[0].category_id));
      }
    }
  }, [categories, selectedCategory]);

  const handleToggleViewMode = (mode: 'grid' | 'list') => {
    setViewMode(mode);
    try {
      localStorage.setItem('xtream_live_view_mode', mode);
    } catch {}
  };

  const scrollCategories = (direction: 'up' | 'down') => {
    if (categoriesListRef.current) {
      const delta = direction === 'up' ? -260 : 260;
      categoriesListRef.current.scrollBy({ top: delta, behavior: 'smooth' });
    }
  };

  const scrollChannels = (direction: 'up' | 'down') => {
    if (channelsListRef.current) {
      const delta = direction === 'up' ? -360 : 360;
      channelsListRef.current.scrollBy({ top: delta, behavior: 'smooth' });
    }
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

  // Natural list order preserved (all channels visible, scrollable naturally)
  const visibleStreams = filteredStreams;

  // Auto-scroll selected channel to the top of the viewport without changing array order
  useEffect(() => {
    if (!activeMediaId || !activeMediaId.startsWith('live_')) return;
    const activeStreamId = activeMediaId.replace('live_', '');
    const timer = setTimeout(() => {
      const elem = document.getElementById(`live-channel-${activeStreamId}`);
      if (elem && channelsListRef.current) {
        const container = channelsListRef.current;
        const containerTop = container.getBoundingClientRect().top;
        const elemTop = elem.getBoundingClientRect().top;
        const targetScroll = container.scrollTop + (elemTop - containerTop);
        container.scrollTo({ top: Math.max(0, targetScroll), behavior: 'smooth' });
      }
    }, 100);
    return () => clearTimeout(timer);
  }, [activeMediaId]);

  const handlePlayLive = (stream: XtreamLiveStream) => {
    // Scroll selected channel to top of viewport immediately
    const elem = document.getElementById(`live-channel-${stream.stream_id}`);
    if (elem && channelsListRef.current) {
      const container = channelsListRef.current;
      const containerTop = container.getBoundingClientRect().top;
      const elemTop = elem.getBoundingClientRect().top;
      const targetScroll = container.scrollTop + (elemTop - containerTop);
      container.scrollTo({ top: Math.max(0, targetScroll), behavior: 'smooth' });
    }

    const streamUrl = stream.direct_source || buildStreamUrl(
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
    refreshFavorites((value) => value + 1);
  };

  return (
    <div className="media-catalog space-y-4">
      {/* Master - Detail Dual Column Layout */}
      <div className="media-browser-layout flex flex-col lg:flex-row gap-4 sm:gap-6 items-stretch">
        {/* Left Column: Categories List (extended down to bottom of page) */}
        <aside className="media-category-panel w-full lg:w-84 xl:w-96 shrink-0 bg-zinc-900/90 border border-zinc-800 rounded-3xl p-4 sm:p-5 flex flex-col shadow-xl h-[calc(100vh-210px)] min-h-[680px]">
          <div className="flex items-center justify-between px-1 shrink-0">
            <div className="flex items-center gap-2.5">
              <Layers className="w-6 h-6 text-rose-400" />
              <h3 className="text-base sm:text-lg font-black text-white tracking-wide uppercase">
                Categorie ({categories.length})
              </h3>
            </div>
            {/* Scroll Navigation Arrows for TV / Remote */}
            <div className="flex items-center gap-1">
              <button
                type="button"
                onClick={() => scrollCategories('up')}
                className="p-1.5 rounded-xl bg-zinc-800 hover:bg-zinc-700 text-zinc-300 hover:text-white transition cursor-pointer shadow-xs"
                title="Scorri su (▲)"
              >
                <ChevronUp className="w-4 h-4" />
              </button>
              <button
                type="button"
                onClick={() => scrollCategories('down')}
                className="p-1.5 rounded-xl bg-zinc-800 hover:bg-zinc-700 text-zinc-300 hover:text-white transition cursor-pointer shadow-xs"
                title="Scorri giù (▼)"
              >
                <ChevronDown className="w-4 h-4" />
              </button>
            </div>
          </div>

          {/* Search Category */}
          <div className="relative shrink-0 mt-3">
            <Search className="w-5 h-5 absolute left-4 top-1/2 -translate-y-1/2 text-zinc-400" />
            <input
              type="text"
              value={categorySearch}
              onChange={(e) => setCategorySearch(e.target.value)}
              placeholder="Filtra categorie..."
              className="w-full pl-12 pr-4 py-3 bg-zinc-950 border border-zinc-700/80 rounded-2xl text-sm sm:text-base font-medium text-white placeholder-zinc-500 focus:outline-hidden focus:border-rose-500 transition shadow-inner"
            />
          </div>

          {/* Scrollable Categories List taking full remaining height */}
          <div
            ref={categoriesListRef}
            className="flex-1 min-h-0 space-y-2 overflow-y-auto scroll-smooth pr-1.5 mt-3"
          >
            {filteredCategories.length === 0 ? (
              <div className="py-10 text-center text-zinc-500 text-sm sm:text-base font-medium">
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
                    className={`w-full text-left px-4 py-3 sm:py-3.5 rounded-2xl text-sm sm:text-base font-bold flex items-center justify-between transition cursor-pointer group ${
                      isSelected
                        ? 'bg-rose-600 text-white shadow-xl shadow-rose-950/60 scale-[1.02]'
                        : 'text-zinc-200 hover:bg-zinc-850 hover:text-white bg-zinc-950/40 border border-zinc-850'
                    }`}
                  >
                    <span className="truncate pr-2">{cat.category_name}</span>
                    <span
                      className={`text-xs sm:text-sm font-mono font-bold px-2.5 py-0.5 rounded-full shrink-0 ${
                        isSelected
                          ? 'bg-rose-800 text-white'
                          : 'bg-zinc-800 text-zinc-300 group-hover:text-white'
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

        {/* Right Column: Channels of the Selected Category (extended down to bottom of page) */}
        <section className="media-content-panel relative flex-1 w-full min-w-0 bg-zinc-900/90 border border-zinc-800 rounded-3xl p-4 sm:p-6 flex flex-col shadow-xl h-[calc(100vh-210px)] min-h-[680px]">
          {/* Header of the Selected Category */}
          <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-4 pb-4 border-b border-zinc-800 shrink-0">
            <div className="min-w-0">
              <h2 className="text-xl sm:text-2xl font-black text-white flex items-center gap-3 truncate">
                <Tv className="w-7 h-7 text-rose-400 shrink-0" />
                <span className="truncate">{currentCategory?.category_name || 'Canali'}</span>
              </h2>
              <p className="text-xs sm:text-sm text-zinc-400 font-medium mt-1">
                Mostrando <strong className="text-zinc-100">{filteredStreams.length}</strong> canali
                {searchQuery ? ` per "${searchQuery}"` : ''}
              </p>
            </div>

            {/* Controls: Search in Category, View Switcher & Scroll Arrows */}
            <div className="flex items-center gap-3 shrink-0 flex-wrap">
              <div className="relative flex-1 sm:w-80">
                <Search className="w-5 h-5 absolute left-4 top-1/2 -translate-y-1/2 text-zinc-400" />
                <input
                  type="text"
                  value={searchQuery}
                  onChange={(e) => setSearchQuery(e.target.value)}
                  placeholder="Cerca canale in questa categoria..."
                  className="w-full pl-12 pr-4 py-3 bg-zinc-950 border border-zinc-700/80 rounded-2xl text-sm sm:text-base text-white placeholder-zinc-500 focus:outline-hidden focus:border-rose-500 transition shadow-inner font-medium"
                />
              </div>

              {/* Up/Down Scroll Buttons for Channels */}
              <div className="flex items-center gap-1 bg-zinc-950 border border-zinc-800 p-1 rounded-2xl">
                <button
                  type="button"
                  onClick={() => scrollChannels('up')}
                  className="p-2 rounded-xl bg-zinc-850 hover:bg-zinc-750 text-zinc-300 hover:text-white transition cursor-pointer"
                  title="Scorri canali su (▲)"
                >
                  <ChevronUp className="w-4 h-4" />
                </button>
                <button
                  type="button"
                  onClick={() => scrollChannels('down')}
                  className="p-2 rounded-xl bg-zinc-850 hover:bg-zinc-750 text-zinc-300 hover:text-white transition cursor-pointer"
                  title="Scorri canali giù (▼)"
                >
                  <ChevronDown className="w-4 h-4" />
                </button>
              </div>

              <div className="flex items-center p-1 bg-zinc-950 border border-zinc-800 rounded-2xl shrink-0">
                <button
                  type="button"
                  onClick={() => handleToggleViewMode('list')}
                  className={`p-2 rounded-xl text-xs sm:text-sm font-bold transition cursor-pointer flex items-center gap-1.5 ${
                    viewMode === 'list'
                      ? 'bg-rose-600 text-white shadow-md'
                      : 'text-zinc-400 hover:text-white'
                  }`}
                  title="Vista a Lista"
                >
                  <List className="w-4 h-4" />
                </button>
                <button
                  type="button"
                  onClick={() => handleToggleViewMode('grid')}
                  className={`p-2 rounded-xl text-xs sm:text-sm font-bold transition cursor-pointer flex items-center gap-1.5 ${
                    viewMode === 'grid'
                      ? 'bg-rose-600 text-white shadow-md'
                      : 'text-zinc-400 hover:text-white'
                  }`}
                  title="Vista a Griglia"
                >
                  <LayoutGrid className="w-4 h-4" />
                </button>
              </div>
            </div>
          </div>

          {/* Channels Content (flex-1 taking remaining matching height) */}
          <div
            ref={channelsListRef}
            className="flex-1 min-h-0 overflow-y-auto scroll-smooth pr-1.5 mt-3"
          >
            {isLoading ? (
              <div className="grid grid-cols-1 gap-3">
                {Array.from({ length: 8 }).map((_, i) => (
                  <div key={i} className="h-16 bg-zinc-900 animate-pulse rounded-2xl border border-zinc-800"></div>
                ))}
              </div>
            ) : filteredStreams.length === 0 ? (
              <div className="py-24 text-center text-zinc-400 bg-zinc-950/40 rounded-3xl border border-dashed border-zinc-800">
                <Tv className="w-16 h-16 mx-auto text-zinc-600 mb-3" />
                <p className="text-lg font-bold text-zinc-300">Nessun canale trovato in questa categoria</p>
                <p className="text-sm text-zinc-500 mt-1">
                  {searchQuery ? 'Prova a cercare un altro nome' : 'Scegli un\'altra categoria dalla colonna a sinistra'}
                </p>
              </div>
            ) : (
              <div>
                {viewMode === 'list' ? (
                  /* Lista Canali con Cornice sul Canale Attivo che scala con auto-scroll */
                  <div className="space-y-2.5">
                    {visibleStreams.map((stream, idx) => {
                      const isFav = storage.isFavorite(`live_${stream.stream_id}`, accountKey);
                      const isPlayingThis = activeMediaId === `live_${stream.stream_id}`;

                      return (
                        <div
                          key={stream.stream_id}
                          id={`live-channel-${stream.stream_id}`}
                          data-media-index={idx + 1}
                          tabIndex={0}
                          onClick={() => handlePlayLive(stream)}
                          className={`group flex items-center justify-between p-3.5 sm:p-4 rounded-2xl transition-all cursor-pointer gap-3 sm:gap-5 shadow-sm scroll-mt-2 ${
                            isPlayingThis
                              ? 'bg-rose-950/90 border-2 border-rose-500 ring-4 ring-rose-500/50 shadow-2xl shadow-rose-950/90 scale-[1.01]'
                              : 'bg-zinc-950/60 hover:bg-zinc-850 border border-zinc-800/90 hover:border-rose-500/50'
                          }`}
                        >
                        <div className="flex items-center gap-3.5 sm:gap-5 min-w-0 flex-1">
                          <span className="font-mono text-sm sm:text-base font-bold text-zinc-400 w-8 sm:w-10 text-right shrink-0">
                            {idx + 1}
                          </span>
                          <div className="w-12 h-12 sm:w-14 sm:h-14 rounded-2xl bg-zinc-950 border border-zinc-800 p-1 flex items-center justify-center overflow-hidden shrink-0 shadow-inner">
                            <ChannelLogo icon={stream.stream_icon} name={stream.name} size="sm" />
                          </div>
                          <div className="min-w-0 flex-1">
                            <div className="flex items-center gap-2.5 flex-wrap">
                              <h4 className="text-base sm:text-lg font-black text-white truncate group-hover:text-rose-400 transition">
                                {stream.name}
                              </h4>
                              {isPlayingThis && (
                                <span className="px-2.5 py-0.5 rounded-full bg-rose-600 text-white text-xs font-bold uppercase tracking-wider animate-pulse flex items-center gap-1.5 shrink-0 shadow-md">
                                  <Radio className="w-3.5 h-3.5" /> In Onda
                                </span>
                              )}
                            </div>
                            <div className="flex items-center gap-3 text-xs sm:text-sm text-zinc-400 font-mono mt-1 font-semibold">
                              <span>ID #{stream.stream_id}</span>
                            </div>
                          </div>
                        </div>

                        <div className="flex items-center gap-2.5 shrink-0">
                          <span className="hidden sm:flex items-center gap-1.5 px-3 py-1 rounded-xl bg-rose-950/80 text-rose-400 text-xs sm:text-sm font-bold border border-rose-800/40">
                            <span className="w-2.5 h-2.5 rounded-full bg-rose-500 animate-pulse"></span>
                            LIVE
                          </span>
                          <button
                            onClick={(e) => {
                              e.stopPropagation();
                              toggleFavorite(stream);
                            }}
                            className="p-2.5 rounded-xl text-zinc-400 hover:text-amber-400 hover:bg-zinc-800 transition cursor-pointer"
                            title="Aggiungi ai Preferiti"
                          >
                            <Star className={`w-5 h-5 ${isFav ? 'text-amber-400 fill-amber-400' : ''}`} />
                          </button>
                          <button
                            onClick={(e) => {
                              e.stopPropagation();
                              handlePlayLive(stream);
                            }}
                            className={`px-4 sm:px-6 py-2.5 rounded-xl text-sm sm:text-base font-extrabold flex items-center gap-2 shadow-md transition cursor-pointer ${
                              isPlayingThis
                                ? 'bg-rose-500 text-white shadow-rose-950/60'
                                : 'bg-rose-600 hover:bg-rose-500 text-white shadow-rose-950/40'
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
                /* Griglia Canali */
                <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 xl:grid-cols-5 2xl:grid-cols-6 gap-4">
                  {visibleStreams.map((stream, idx) => {
                    const isFav = storage.isFavorite(`live_${stream.stream_id}`, accountKey);
                    const isPlayingThis = activeMediaId === `live_${stream.stream_id}`;

                    return (
                      <div
                        key={stream.stream_id}
                        id={`live-channel-${stream.stream_id}`}
                        data-media-index={idx + 1}
                        tabIndex={0}
                        onClick={() => handlePlayLive(stream)}
                        className={`group relative rounded-3xl p-4 shadow-lg transition-all cursor-pointer flex flex-col justify-between scroll-mt-2 ${
                          isPlayingThis
                            ? 'bg-rose-950/90 border-2 border-rose-500 ring-4 ring-rose-500/50 shadow-2xl shadow-rose-950/90 scale-[1.02]'
                            : 'bg-zinc-950/70 border border-zinc-800 hover:border-rose-500/60 hover:-translate-y-1'
                        }`}
                      >
                        {/* Top: Logo and Fav */}
                        <div className="flex items-start justify-between gap-2 mb-3">
                          <div className="w-16 h-16 rounded-2xl bg-zinc-900 border border-zinc-800 p-1 flex items-center justify-center overflow-hidden shrink-0 shadow-inner">
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
                          <div className="flex items-center justify-between text-xs sm:text-sm text-zinc-400 font-mono mt-2.5 font-semibold">
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
            </div>
          )}
          </div>

          <ListPositionPill
            scrollRef={channelsListRef}
            total={filteredStreams.length}
            layout={viewMode === 'grid' ? 'grid' : 'list'}
          />
        </section>
      </div>
    </div>
  );
};
