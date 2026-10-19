import React, { useState, useMemo, useEffect, useRef } from 'react';
import {
  Search,
  Tv,
  Star,
  Play,
  LayoutGrid,
  List,
  ChevronUp,
  ChevronDown,
} from 'lucide-react';
import { XtreamCategory, XtreamLiveStream, PlayableMediaItem } from '../types/xtream';
import { buildStreamUrl } from '../utils/parseXtreamUrl';
import { storage } from '../services/storage';
import { ListPositionIndicator } from './ListPositionIndicator';
import { CollapsibleCategoryPanel } from './CollapsibleCategoryPanel';
import { ChannelLogo, LiveChannelListRow } from './LiveChannelRow';

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
  const channelsListRef = useRef<HTMLDivElement | null>(null);

  // Always default to the FIRST category (never "all" to prevent freezing)
  const [selectedCategory, setSelectedCategory] = useState<string>(() => {
    return categories[0]?.category_id ? String(categories[0].category_id) : '';
  });

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
        <CollapsibleCategoryPanel
          categories={categories}
          selectedCategory={selectedCategory}
          onSelectCategory={(categoryId) => {
            setSelectedCategory(categoryId);
            setSearchQuery('');
          }}
          categoryCounts={categoryCounts}
          contentListRef={channelsListRef}
          accent="live"
          panelId="live-category-panel"
        />

        {/* Right Column: Channels of the Selected Category (extended down to bottom of page) */}
        <section className="media-content-panel flex-1 w-full min-w-0 bg-surface-0/90 border border-separator rounded-3xl p-4 sm:p-6 flex flex-col shadow-xl h-[calc(100vh-210px)] min-h-[680px]">
          {/* Header of the Selected Category */}
          <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-4 pb-4 border-b border-separator shrink-0">
            <div className="min-w-0">
              <h2 className="text-xl sm:text-2xl font-black text-label flex items-center gap-3 truncate">
                <Tv className="w-7 h-7 text-live shrink-0" />
                <span className="truncate">{currentCategory?.category_name || 'Canali'}</span>
              </h2>
              <ListPositionIndicator
                scrollRef={channelsListRef}
                total={filteredStreams.length}
                label="canali"
                searchQuery={searchQuery}
                layout={viewMode === 'grid' ? 'grid' : 'list'}
              />
            </div>

            {/* Controls: Search in Category, View Switcher & Scroll Arrows */}
            <div className="flex items-center gap-3 shrink-0 flex-wrap">
              <div className="relative flex-1 sm:w-80">
                <Search className="w-5 h-5 absolute left-4 top-1/2 -translate-y-1/2 text-label-secondary" />
                <input
                  type="text"
                  value={searchQuery}
                  onChange={(e) => setSearchQuery(e.target.value)}
                  placeholder="Cerca canale in questa categoria..."
                  className="w-full pl-12 pr-4 py-3 bg-surface-0 border border-separator-strong/80 rounded-2xl text-sm sm:text-base text-label placeholder-label-tertiary focus:outline-hidden focus:border-live transition shadow-inner font-medium"
                />
              </div>

              {/* Up/Down Scroll Buttons for Channels */}
              <div className="flex items-center gap-1 bg-surface-0 border border-separator p-1 rounded-2xl">
                <button
                  type="button"
                  onClick={() => scrollChannels('up')}
                  className="p-2 rounded-xl bg-surface-1 hover:bg-surface-2 text-label-secondary hover:text-label transition cursor-pointer"
                  title="Scorri canali su (▲)"
                >
                  <ChevronUp className="w-4 h-4" />
                </button>
                <button
                  type="button"
                  onClick={() => scrollChannels('down')}
                  className="p-2 rounded-xl bg-surface-1 hover:bg-surface-2 text-label-secondary hover:text-label transition cursor-pointer"
                  title="Scorri canali giù (▼)"
                >
                  <ChevronDown className="w-4 h-4" />
                </button>
              </div>

              <div className="flex items-center p-1 bg-surface-0 border border-separator rounded-2xl shrink-0">
                <button
                  type="button"
                  onClick={() => handleToggleViewMode('list')}
                  className={`p-2 rounded-xl text-xs sm:text-sm font-bold transition cursor-pointer flex items-center gap-1.5 ${
                    viewMode === 'list'
                      ? 'bg-live text-on-accent shadow-md'
                      : 'text-label-secondary hover:text-label'
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
                      ? 'bg-live text-on-accent shadow-md'
                      : 'text-label-secondary hover:text-label'
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
                  <div key={i} className="h-16 bg-surface-0 animate-pulse rounded-2xl border border-separator"></div>
                ))}
              </div>
            ) : filteredStreams.length === 0 ? (
              <div className="py-24 text-center text-label-secondary bg-surface-0/40 rounded-3xl border border-dashed border-separator">
                <Tv className="w-16 h-16 mx-auto text-label-tertiary mb-3" />
                <p className="text-lg font-bold text-label-secondary">Nessun canale trovato in questa categoria</p>
                <p className="text-sm text-label-tertiary mt-1">
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
                        <LiveChannelListRow
                          key={stream.stream_id}
                          stream={stream}
                          index={idx}
                          isFavorite={isFav}
                          isPlaying={isPlayingThis}
                          onPlay={handlePlayLive}
                          onToggleFavorite={toggleFavorite}
                        />
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
                            ? 'bg-live/15 border-2 border-live ring-2 ring-live/40 shadow-2xl scale-[1.02]'
                            : 'bg-surface-0/70 border border-separator hover:border-live/60 hover:-translate-y-1'
                        }`}
                      >
                        {/* Top: Logo and Fav */}
                        <div className="flex items-start justify-between gap-2 mb-3">
                          <div className="w-16 h-16 rounded-2xl bg-surface-0 border border-separator p-1 flex items-center justify-center overflow-hidden shrink-0 shadow-inner">
                            <ChannelLogo icon={stream.stream_icon} name={stream.name} size="md" />
                          </div>

                          <div className="flex items-center gap-1.5">
                            {isPlayingThis ? (
                              <span className="flex items-center gap-1 px-2.5 py-0.5 rounded-full bg-live text-on-accent text-xs font-bold uppercase tracking-wide">
                                <span className="w-2 h-2 rounded-full bg-white animate-ping"></span>
                                In Onda
                              </span>
                            ) : (
                              <span className="flex items-center gap-1 px-2 py-0.5 rounded-lg bg-live/80 text-on-accent text-xs font-bold border border-live/40">
                                <span className="w-2 h-2 rounded-full bg-on-accent animate-pulse"></span>
                                LIVE
                              </span>
                            )}

                            <button
                              onClick={(e) => {
                                e.stopPropagation();
                                toggleFavorite(stream);
                              }}
                              className="p-1.5 rounded-lg text-label-secondary hover:text-favorite hover:bg-surface-1 transition cursor-pointer"
                              title="Preferiti"
                            >
                              <Star className={`w-4 h-4 ${isFav ? 'text-favorite fill-favorite' : ''}`} />
                            </button>
                          </div>
                        </div>

                        {/* Channel Name */}
                        <div className="mt-1">
                          <h4 className="text-sm sm:text-base font-bold text-label group-hover:text-live transition-colors line-clamp-2">
                            {stream.name}
                          </h4>
                          <div className="flex items-center justify-between text-xs sm:text-sm text-label-secondary  mt-2.5 font-semibold">
                            <span>#{stream.stream_id}</span>
                            <span className="text-live opacity-0 group-hover:opacity-100 transition-opacity flex items-center gap-1 font-bold">
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
        </section>
      </div>
    </div>
  );
};
