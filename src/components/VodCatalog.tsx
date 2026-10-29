import { RemoteImage } from './RemoteImage';
import React, { useState, useMemo, useEffect, useRef } from 'react';
import {
  Search,
  Film,
  Star,
  Play,
  Info,
  Calendar,
  Clock,
  Sparkles,
  X,
  ArrowDownUp,
  ChevronUp,
  ChevronDown,
  Radio,
  Download,
} from 'lucide-react';
import { XtreamCategory, XtreamVodStream, PlayableMediaItem } from '../types/xtream';
import { buildStreamUrl } from '../utils/parseXtreamUrl';
import { storage } from '../services/storage';
import { sortVodStreams } from '../utils/recentSorting';
import { getSecureImageUrl } from '../utils/imageUrl';
import { VirtualizedMediaGrid } from './VirtualizedMediaGrid';
import { ListPositionIndicator } from './ListPositionIndicator';
import { triggerMediaDownload, isDirectFileDownload, isTvEnvironment } from '../utils/downloadHelper';
import { CollapsibleCategoryPanel } from './CollapsibleCategoryPanel';
import { STATIC_DEPLOY } from '../utils/deployTarget';
import { AppleDownloadLink } from './AppleDownloadLink';
import { MovieDetailModal } from './MovieDetailModal';
import { useTouchCardMode } from '../utils/useTouchCardMode';
import { showsHoverVeil } from '../utils/touchDevice';

interface VodCatalogProps {
  categories: XtreamCategory[];
  streams: XtreamVodStream[];
  serverUrl: string;
  username: string;
  password: string;
  onPlay: (item: PlayableMediaItem) => void;
  activeMediaId?: string | null;
  isLoading?: boolean;
  accountKey?: string;
}

export const VodCatalog: React.FC<VodCatalogProps> = ({
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
  const moviesListRef = useRef<HTMLDivElement | null>(null);
  const isTv = isTvEnvironment();
  // Touch cards (iPhone/iPad and other pointer-less screens, TV excluded) have
  // no hover veil: a tap opens the movie sheet instead of playing at once.
  const touchCardMode = useTouchCardMode(isTv);

  // Always default to the first category to avoid rendering 20,000 items at once
  const [selectedCategory, setSelectedCategory] = useState<string>(() => {
    return categories[0]?.category_id ? String(categories[0].category_id) : '';
  });

  const [searchQuery, setSearchQuery] = useState<string>('');
  const [sortBy, setSortBy] = useState<'recent' | 'rating' | 'name' | 'id'>('recent');
  const [activeMovieDetail, setActiveMovieDetail] = useState<XtreamVodStream | null>(null);

  // Sync first category if categories load asynchronously
  useEffect(() => {
    if (categories.length > 0) {
      if (!selectedCategory || !categories.some((c) => String(c.category_id) === String(selectedCategory))) {
        setSelectedCategory(String(categories[0].category_id));
      }
    }
  }, [categories, selectedCategory]);

  const scrollMovies = (direction: 'up' | 'down') => {
    if (moviesListRef.current) {
      const delta = direction === 'up' ? -360 : 360;
      moviesListRef.current.scrollBy({ top: delta, behavior: 'smooth' });
    }
  };

  // Compute category counts
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

  // Filtered and sorted streams for selected category only
  const filteredStreams = useMemo(() => {
    if (!selectedCategory) return [];
    const matched = streams.filter((stream) => {
      if (String(stream.category_id) !== String(selectedCategory)) return false;
      if (!searchQuery.trim()) return true;
      return stream.name.toLowerCase().includes(searchQuery.toLowerCase());
    });

    return sortVodStreams(matched, sortBy);
  }, [streams, selectedCategory, searchQuery, sortBy]);

  // Natural list order preserved (all movies visible and naturally scrollable)
  const visibleStreams = filteredStreams;

  const handleOpenDetails = (stream: XtreamVodStream) => {
    setActiveMovieDetail(stream);
  };

  const movieDetailTarget = activeMovieDetail
    ? {
        id: activeMovieDetail.stream_id,
        title: activeMovieDetail.name,
        poster: activeMovieDetail.stream_icon,
        containerExtension: activeMovieDetail.container_extension,
        streamUrl: buildStreamUrl(
          serverUrl,
          username,
          password,
          'movie',
          activeMovieDetail.stream_id,
          activeMovieDetail.container_extension || 'mp4',
          false
        ),
      }
    : null;

  const handlePlayStream = (stream: XtreamVodStream) => {
    const ext = stream.container_extension || 'mp4';
    const streamUrl = buildStreamUrl(
      serverUrl,
      username,
      password,
      'movie',
      stream.stream_id,
      ext,
      false
    );

    const mediaItem: PlayableMediaItem = {
      id: `movie_${stream.stream_id}`,
      title: stream.name,
      type: 'movie',
      streamUrl,
      poster: stream.stream_icon,
      categoryName: currentCategory?.category_name || 'Film VOD',
      containerExtension: ext,
    };

    onPlay(mediaItem);
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
          contentListRef={moviesListRef}
          accent="accent"
          panelId="vod-category-panel"
        />

        {/* Right Column: Movies in the Selected Category (extended down to bottom of page) */}
        <section className={`media-content-panel flex-1 w-full min-w-0 bg-surface-0/90 border border-separator rounded-3xl ${isTv ? 'p-4 sm:p-6' : 'p-2.5 md:p-6'} flex flex-col shadow-xl h-[calc(100vh-210px)] min-h-[680px]`}>
          {/* Header of the Selected Category */}
          <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-4 pb-4 border-b border-separator shrink-0">
            <div className="min-w-0">
              <h2 className="text-xl sm:text-2xl font-black text-label flex items-center gap-3 truncate">
                <Film className="w-7 h-7 text-accent-strong shrink-0" />
                <span className="truncate">{currentCategory?.category_name || 'Film'}</span>
              </h2>
              <ListPositionIndicator
                scrollRef={moviesListRef}
                total={filteredStreams.length}
                label="film"
                searchQuery={searchQuery}
                layout="grid"
              />
            </div>

            {/* Controls: Sort, Search & Scroll Arrows */}
            <div className="flex flex-wrap items-center gap-3 shrink-0">
              <div className="flex items-center gap-2 bg-surface-0 border border-separator rounded-2xl px-3 py-2 text-xs sm:text-sm font-semibold">
                <ArrowDownUp className="w-4 h-4 text-label-secondary shrink-0" />
                <select
                  value={sortBy}
                  onChange={(e) => setSortBy(e.target.value as any)}
                  className="bg-transparent text-label text-xs sm:text-sm font-bold focus:outline-hidden cursor-pointer"
                >
                  <option value="recent">🕒 Più Recenti</option>
                  <option value="rating">⭐ Valutazione</option>
                  <option value="name">🔤 Titolo (A-Z)</option>
                  <option value="id">🔢 ID</option>
                </select>
              </div>

              <div className="relative flex-1 sm:w-72">
                <Search className="w-5 h-5 absolute left-4 top-1/2 -translate-y-1/2 text-label-secondary" />
                <input
                  type="text"
                  value={searchQuery}
                  onChange={(e) => setSearchQuery(e.target.value)}
                  placeholder="Cerca film in questa categoria..."
                  className="w-full pl-12 pr-4 py-2.5 bg-surface-0 border border-separator-strong/80 rounded-2xl text-xs sm:text-base text-label placeholder-label-tertiary focus:outline-hidden focus:border-accent transition shadow-inner font-medium"
                />
              </div>

              {/* Up/Down Scroll Buttons for Movies */}
              <div className="flex items-center gap-1 bg-surface-0 border border-separator p-1 rounded-2xl">
                <button
                  type="button"
                  onClick={() => scrollMovies('up')}
                  className="p-2 rounded-xl bg-surface-1 hover:bg-surface-2 text-label-secondary hover:text-label transition cursor-pointer"
                  title="Scorri film su (▲)"
                >
                  <ChevronUp className="w-4 h-4" />
                </button>
                <button
                  type="button"
                  onClick={() => scrollMovies('down')}
                  className="p-2 rounded-xl bg-surface-1 hover:bg-surface-2 text-label-secondary hover:text-label transition cursor-pointer"
                  title="Scorri film giù (▼)"
                >
                  <ChevronDown className="w-4 h-4" />
                </button>
              </div>
            </div>
          </div>

          {/* Movie Grid taking full remaining height */}
          <div ref={moviesListRef} className="flex-1 min-h-0 overflow-y-auto scroll-smooth pr-1.5 mt-3">
            {isLoading ? (
            <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 xl:grid-cols-5 2xl:grid-cols-6 gap-4">
              {Array.from({ length: 10 }).map((_, i) => (
                <div key={i} className="aspect-2/3 bg-surface-0 animate-pulse rounded-xl border border-separator"></div>
              ))}
            </div>
          ) : filteredStreams.length === 0 ? (
            <div className="py-20 text-center text-label-secondary bg-surface-0/30 rounded-2xl border border-dashed border-separator">
              <Film className="w-14 h-14 mx-auto text-label-tertiary mb-3" />
              <p className="text-base font-semibold text-label-secondary">Nessun film trovato in questa categoria</p>
              <p className="text-xs text-label-tertiary mt-1">
                {searchQuery ? 'Prova a cercare un altro titolo' : 'Seleziona un\'altra categoria a sinistra'}
              </p>
            </div>
          ) : (
            <VirtualizedMediaGrid
              items={visibleStreams}
              scrollRef={moviesListRef}
              getKey={(stream) => stream.stream_id}
              renderItem={(stream, index) => {
                const isFav = storage.isFavorite(`movie_${stream.stream_id}`, accountKey);
                const isPlayingThis = activeMediaId === `movie_${stream.stream_id}`;

                const handleDirectDownload = (e: React.MouseEvent) => {
                  e.stopPropagation();
                  e.preventDefault();
                  const ext = stream.container_extension || 'mp4';
                  const streamUrl = buildStreamUrl(
                    serverUrl,
                    username,
                    password,
                    'movie',
                    stream.stream_id,
                    ext,
                    false
                  );
                  triggerMediaDownload(
                    streamUrl,
                    stream.name,
                    'movie',
                    stream.stream_icon,
                    ext,
                    accountKey
                  );
                };

                return (
                  <div
                    key={stream.stream_id}
                    data-media-index={index + 1}
                    tabIndex={0}
                    onKeyDown={(event) => {
                      if (event.key === 'Enter') handleOpenDetails(stream);
                    }}
                    onClick={touchCardMode ? () => handleOpenDetails(stream) : undefined}
                    className={`group relative rounded-2xl overflow-hidden shadow-lg transition-all duration-300 flex flex-col ${
                      isPlayingThis
                        ? 'bg-accent/15 border-2 border-accent ring-2 ring-accent/40 shadow-2xl scale-[1.02]'
                        : 'bg-surface-0 border border-separator/80 hover:border-accent/50 hover:-translate-y-1'
                    }`}
                  >
                    {/* Poster Container */}
                    <div className="relative aspect-2/3 bg-surface-0 overflow-hidden">
                      {stream.stream_icon ? (
                        <RemoteImage
                          src={getSecureImageUrl(stream.stream_icon)}
                          alt={stream.name}
                          referrerPolicy="no-referrer"
                          loading="lazy"
                          decoding="async"
                          onError={(e) => {
                            (e.target as HTMLElement).style.display = 'none';
                          }}
                          className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-300"
                        />
                      ) : null}

                      {/* Fallback film icon */}
                      <div className="absolute inset-0 -z-10 flex flex-col items-center justify-center p-3 text-label-tertiary bg-surface-0">
                        <Film className="w-12 h-12 mb-2 opacity-50 text-accent-strong" />
                        <span className="text-xs text-center line-clamp-2 text-label-secondary">
                          {stream.name}
                        </span>
                      </div>

                      {/* Playing Badge */}
                      {isPlayingThis && (
                        <div className="absolute top-2 left-2 px-2.5 py-1 rounded-full bg-accent text-on-accent text-xs font-bold tracking-wide uppercase shadow-lg flex items-center gap-1">
                          <Radio className="w-3.5 h-3.5" /> In Riproduzione
                        </div>
                      )}

                      {/* Rating Badge */}
                      {(!isPlayingThis && stream.rating && stream.rating !== '0') && (
                        <div className="absolute top-2 left-2 px-2 py-0.5 rounded-lg bg-surface-0/85 text-favorite border border-favorite/30 text-xs font-bold flex items-center gap-1">
                          <Star className="w-3.5 h-3.5 fill-favorite text-favorite" />
                          {typeof stream.rating === 'number' ? stream.rating.toFixed(1) : stream.rating}
                        </div>
                      )}

                      {/* Top-Right Badges: Direct Download + Favorite directly on poster */}
                      <div className="absolute top-2 right-2 flex items-center gap-1 z-10">
                        {!STATIC_DEPLOY && !isTv && isDirectFileDownload(stream.container_extension) && (
                          <button
                            onClick={handleDirectDownload}
                            title="Scarica questo film nella cartella Download del Mac"
                            aria-label="Scarica film"
                            className="p-2 rounded-xl bg-surface-0/85 text-label hover:bg-accent hover:text-on-accent transition cursor-pointer shadow-lg"
                          >
                            <Download className="w-4 h-4" />
                          </button>
                        )}

                        {/* Static Apple build: long-press on the direct file link. */}
                        <AppleDownloadLink
                          streamUrl={buildStreamUrl(
                            serverUrl,
                            username,
                            password,
                            'movie',
                            stream.stream_id,
                            stream.container_extension || 'mp4',
                            false
                          )}
                          containerExtension={stream.container_extension}
                          variant="compact"
                        />

                        <button
                          onClick={(e) => {
                            e.stopPropagation();
                            const item: PlayableMediaItem = {
                              id: `movie_${stream.stream_id}`,
                              title: stream.name,
                              type: 'movie',
                              streamUrl: buildStreamUrl(serverUrl, username, password, 'movie', stream.stream_id, stream.container_extension || 'mp4', false),
                              poster: stream.stream_icon,
                              containerExtension: stream.container_extension,
                            };
                            storage.toggleFavorite(item, accountKey);
                            refreshFavorites((value) => value + 1);
                          }}
                          aria-label={isFav ? "Rimuovi dai preferiti" : "Aggiungi ai preferiti"}
                          className="relative z-30 p-2 rounded-xl bg-surface-0/85 hover:bg-surface-1 text-label-secondary hover:text-favorite transition cursor-pointer shadow-lg"
                        >
                          <Star className={`w-4 h-4 ${isFav ? 'fill-favorite text-favorite' : ''}`} />
                        </button>
                      </div>

                      {/* Hover Overlay with Action Buttons (desktop/TV only: on
                          touch it would be invisible but still receive taps). */}
                      {showsHoverVeil(touchCardMode) && (
                      <div className="absolute inset-0 bg-surface-1/75 opacity-0 group-hover:opacity-100 transition-opacity duration-200 flex flex-col items-center justify-center p-3 gap-2.5">
                        <button
                          onClick={() => handlePlayStream(stream)}
                          className="w-14 h-14 rounded-full bg-accent hover:bg-accent-strong text-on-accent flex items-center justify-center shadow-xl transform transition hover:scale-110 active:scale-95 cursor-pointer"
                          title="Riproduci ora"
                        >
                          <Play className="w-7 h-7 ml-0.5 fill-white" />
                        </button>

                        <div className="flex items-center gap-2 mt-1">
                          <button
                            onClick={() => handleOpenDetails(stream)}
                            className="px-3 py-1.5 rounded-xl bg-surface-1 hover:bg-surface-2 text-label text-xs font-semibold flex items-center gap-1.5 transition cursor-pointer"
                            title="Trama e dettagli"
                          >
                            <Info className="w-4 h-4" />
                            Dettagli
                          </button>

                        </div>
                      </div>
                      )}
                    </div>

                    {/* Movie Info below Poster */}
                    <div className="p-3 flex-1 flex flex-col justify-between">
                      <h4 className="text-sm sm:text-base font-bold text-label line-clamp-1 group-hover:text-accent-strong transition">
                        {stream.name}
                      </h4>
                      <div className="flex items-center justify-between text-xs text-label-secondary mt-1.5 ">
                        <span className="uppercase">{stream.container_extension || 'MP4'}</span>
                        <span>#{stream.stream_id}</span>
                      </div>
                    </div>
                  </div>
                );
              }}
            />
          )}
          </div>
        </section>
      </div>

      {/* Movie Details Modal: shared sheet, also used by Recent and Favorites. */}
      <MovieDetailModal
        movie={movieDetailTarget}
        credentials={{ serverUrl, username, password }}
        accountKey={accountKey}
        onClose={() => setActiveMovieDetail(null)}
        onPlay={() => {
          if (activeMovieDetail) handlePlayStream(activeMovieDetail);
          setActiveMovieDetail(null);
        }}
      />

    </div>
  );
};
