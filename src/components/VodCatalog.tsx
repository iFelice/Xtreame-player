import React, { useState, useMemo, useEffect, useRef } from 'react';
import {
  Search,
  Film,
  Star,
  Play,
  Info,
  Calendar,
  Clock,
  Layers,
  Sparkles,
  X,
  ArrowDownUp,
  ChevronRight,
  ChevronUp,
  ChevronDown,
  Radio,
  Download,
} from 'lucide-react';
import { XtreamCategory, XtreamVodStream, XtreamVodDetails, PlayableMediaItem } from '../types/xtream';
import { buildStreamUrl, formatDuration } from '../utils/parseXtreamUrl';
import { xtreamClient } from '../services/xtreamClient';
import { storage } from '../services/storage';
import { sortVodStreams } from '../utils/recentSorting';
import { getSecureImageUrl } from '../utils/imageUrl';
import { triggerMediaDownload, isTvEnvironment } from '../utils/downloadHelper';

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
  const categoriesListRef = useRef<HTMLDivElement | null>(null);
  const moviesListRef = useRef<HTMLDivElement | null>(null);
  const isTv = isTvEnvironment();

  // Always default to the first category to avoid rendering 20,000 items at once
  const [selectedCategory, setSelectedCategory] = useState<string>(() => {
    return categories[0]?.category_id ? String(categories[0].category_id) : '';
  });

  const [categorySearch, setCategorySearch] = useState<string>('');
  const [searchQuery, setSearchQuery] = useState<string>('');
  const [sortBy, setSortBy] = useState<'recent' | 'rating' | 'name' | 'id'>('recent');
  const [activeMovieDetail, setActiveMovieDetail] = useState<{
    stream: XtreamVodStream;
    details: XtreamVodDetails | null;
    isLoading: boolean;
  } | null>(null);

  // Sync first category if categories load asynchronously
  useEffect(() => {
    if (categories.length > 0) {
      if (!selectedCategory || !categories.some((c) => String(c.category_id) === String(selectedCategory))) {
        setSelectedCategory(String(categories[0].category_id));
      }
    }
  }, [categories, selectedCategory]);

  const scrollCategories = (direction: 'up' | 'down') => {
    if (categoriesListRef.current) {
      const delta = direction === 'up' ? -260 : 260;
      categoriesListRef.current.scrollBy({ top: delta, behavior: 'smooth' });
    }
  };

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

  const filteredCategories = useMemo(() => {
    if (!categorySearch.trim()) return categories;
    const q = categorySearch.toLowerCase();
    return categories.filter((c) => c.category_name.toLowerCase().includes(q));
  }, [categories, categorySearch]);

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

  const handleOpenDetails = async (stream: XtreamVodStream) => {
    setActiveMovieDetail({ stream, details: null, isLoading: true });
    try {
      const info = await xtreamClient.getVodInfo(serverUrl, username, password, stream.stream_id);
      setActiveMovieDetail({ stream, details: info, isLoading: false });
    } catch {
      setActiveMovieDetail({ stream, details: null, isLoading: false });
    }
  };

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
    <div className="space-y-4">
      {/* Master - Detail Dual Column Layout */}
      <div className="flex flex-col lg:flex-row gap-4 sm:gap-6 items-stretch">
        {/* Left Column: Categories List (extended down to bottom of page) */}
        <aside className="w-full lg:w-80 xl:w-96 shrink-0 bg-zinc-900/90 border border-zinc-800 rounded-3xl p-4 sm:p-5 flex flex-col shadow-xl h-[calc(100vh-210px)] min-h-[680px]">
          <div className="flex items-center justify-between px-1 shrink-0">
            <div className="flex items-center gap-2.5">
              <Layers className="w-6 h-6 text-emerald-400" />
              <h3 className="text-base sm:text-lg font-black text-white tracking-wide uppercase">
                Categorie Film ({categories.length})
              </h3>
            </div>
            {/* TV / Remote Scroll Navigation Arrows */}
            <div className="flex items-center gap-1">
              <button
                type="button"
                onClick={() => scrollCategories('up')}
                className="p-1.5 rounded-xl bg-zinc-800 hover:bg-zinc-700 text-zinc-300 hover:text-white transition cursor-pointer shadow-xs"
                title="Scorri categorie su (▲)"
              >
                <ChevronUp className="w-4 h-4" />
              </button>
              <button
                type="button"
                onClick={() => scrollCategories('down')}
                className="p-1.5 rounded-xl bg-zinc-800 hover:bg-zinc-700 text-zinc-300 hover:text-white transition cursor-pointer shadow-xs"
                title="Scorri categorie giù (▼)"
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
              placeholder="Filtra categorie film..."
              className="w-full pl-12 pr-4 py-3 bg-zinc-950 border border-zinc-700/80 rounded-2xl text-sm sm:text-base font-medium text-white placeholder-zinc-500 focus:outline-hidden focus:border-emerald-500 transition shadow-inner"
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
                        ? 'bg-emerald-600 text-white shadow-xl shadow-emerald-950/60 scale-[1.02]'
                        : 'text-zinc-200 hover:bg-zinc-850 hover:text-white bg-zinc-950/40 border border-zinc-850'
                    }`}
                  >
                    <span className="truncate pr-2">{cat.category_name}</span>
                    <span
                      className={`text-xs sm:text-sm font-mono font-bold px-2.5 py-0.5 rounded-full shrink-0 ${
                        isSelected
                          ? 'bg-emerald-800 text-white'
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

        {/* Right Column: Movies in the Selected Category (extended down to bottom of page) */}
        <section className="flex-1 w-full min-w-0 bg-zinc-900/90 border border-zinc-800 rounded-3xl p-4 sm:p-6 flex flex-col shadow-xl h-[calc(100vh-210px)] min-h-[680px]">
          {/* Header of the Selected Category */}
          <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-4 pb-4 border-b border-zinc-800 shrink-0">
            <div className="min-w-0">
              <h2 className="text-xl sm:text-2xl font-black text-white flex items-center gap-3 truncate">
                <Film className="w-7 h-7 text-emerald-400 shrink-0" />
                <span className="truncate">{currentCategory?.category_name || 'Film'}</span>
              </h2>
              <p className="text-xs sm:text-sm text-zinc-400 font-medium mt-1">
                Mostrando <strong className="text-zinc-100">{filteredStreams.length}</strong> film
                {searchQuery ? ` per "${searchQuery}"` : ''}
              </p>
            </div>

            {/* Controls: Sort, Search & Scroll Arrows */}
            <div className="flex flex-wrap items-center gap-3 shrink-0">
              <div className="flex items-center gap-2 bg-zinc-950 border border-zinc-800 rounded-2xl px-3 py-2 text-xs sm:text-sm font-semibold">
                <ArrowDownUp className="w-4 h-4 text-zinc-400 shrink-0" />
                <select
                  value={sortBy}
                  onChange={(e) => setSortBy(e.target.value as any)}
                  className="bg-transparent text-zinc-100 text-xs sm:text-sm font-bold focus:outline-hidden cursor-pointer"
                >
                  <option value="recent">🕒 Più Recenti</option>
                  <option value="rating">⭐ Valutazione</option>
                  <option value="name">🔤 Titolo (A-Z)</option>
                  <option value="id">🔢 ID</option>
                </select>
              </div>

              <div className="relative flex-1 sm:w-72">
                <Search className="w-5 h-5 absolute left-4 top-1/2 -translate-y-1/2 text-zinc-400" />
                <input
                  type="text"
                  value={searchQuery}
                  onChange={(e) => setSearchQuery(e.target.value)}
                  placeholder="Cerca film in questa categoria..."
                  className="w-full pl-12 pr-4 py-2.5 bg-zinc-950 border border-zinc-700/80 rounded-2xl text-xs sm:text-base text-white placeholder-zinc-500 focus:outline-hidden focus:border-emerald-500 transition shadow-inner font-medium"
                />
              </div>

              {/* Up/Down Scroll Buttons for Movies */}
              <div className="flex items-center gap-1 bg-zinc-950 border border-zinc-800 p-1 rounded-2xl">
                <button
                  type="button"
                  onClick={() => scrollMovies('up')}
                  className="p-2 rounded-xl bg-zinc-850 hover:bg-zinc-750 text-zinc-300 hover:text-white transition cursor-pointer"
                  title="Scorri film su (▲)"
                >
                  <ChevronUp className="w-4 h-4" />
                </button>
                <button
                  type="button"
                  onClick={() => scrollMovies('down')}
                  className="p-2 rounded-xl bg-zinc-850 hover:bg-zinc-750 text-zinc-300 hover:text-white transition cursor-pointer"
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
                <div key={i} className="aspect-2/3 bg-zinc-900 animate-pulse rounded-xl border border-zinc-800"></div>
              ))}
            </div>
          ) : filteredStreams.length === 0 ? (
            <div className="py-20 text-center text-zinc-400 bg-zinc-900/30 rounded-2xl border border-dashed border-zinc-800">
              <Film className="w-14 h-14 mx-auto text-zinc-600 mb-3" />
              <p className="text-base font-semibold text-zinc-300">Nessun film trovato in questa categoria</p>
              <p className="text-xs text-zinc-500 mt-1">
                {searchQuery ? 'Prova a cercare un altro titolo' : 'Seleziona un\'altra categoria a sinistra'}
              </p>
            </div>
          ) : (
            <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 xl:grid-cols-5 2xl:grid-cols-6 gap-4 sm:gap-5">
              {visibleStreams.map((stream) => {
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
                    className={`group relative rounded-2xl overflow-hidden shadow-lg transition-all duration-300 flex flex-col ${
                      isPlayingThis
                        ? 'bg-emerald-950/80 border-2 border-emerald-400 ring-4 ring-emerald-500/50 shadow-2xl shadow-emerald-950/90 scale-[1.02]'
                        : 'bg-zinc-900 border border-zinc-800/80 hover:border-emerald-500/50 hover:-translate-y-1'
                    }`}
                  >
                    {/* Poster Container */}
                    <div className="relative aspect-2/3 bg-zinc-950 overflow-hidden">
                      {stream.stream_icon ? (
                        <img
                          src={getSecureImageUrl(stream.stream_icon)}
                          alt={stream.name}
                          referrerPolicy="no-referrer"
                          loading="lazy"
                          onError={(e) => {
                            (e.target as HTMLElement).style.display = 'none';
                          }}
                          className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-300"
                        />
                      ) : null}

                      {/* Fallback film icon */}
                      <div className="absolute inset-0 -z-10 flex flex-col items-center justify-center p-3 text-zinc-600 bg-zinc-950">
                        <Film className="w-12 h-12 mb-2 opacity-50 text-emerald-500" />
                        <span className="text-xs text-center line-clamp-2 text-zinc-400">
                          {stream.name}
                        </span>
                      </div>

                      {/* Playing Badge */}
                      {isPlayingThis && (
                        <div className="absolute top-2 left-2 px-2.5 py-1 rounded-full bg-emerald-600 text-white text-xs font-bold tracking-wide uppercase shadow-lg flex items-center gap-1">
                          <Radio className="w-3.5 h-3.5" /> In Riproduzione
                        </div>
                      )}

                      {/* Rating Badge */}
                      {(!isPlayingThis && stream.rating && stream.rating !== '0') && (
                        <div className="absolute top-2 left-2 px-2 py-0.5 rounded-lg bg-black/80 backdrop-blur-xs text-amber-400 border border-amber-500/30 text-xs font-bold flex items-center gap-1">
                          <Star className="w-3.5 h-3.5 fill-amber-400 text-amber-400" />
                          {typeof stream.rating === 'number' ? stream.rating.toFixed(1) : stream.rating}
                        </div>
                      )}

                      {/* Top-Right Badges: Direct Download + Favorite directly on poster */}
                      <div className="absolute top-2 right-2 flex items-center gap-1 z-10">
                        {!isTv && (
                          <button
                            onClick={handleDirectDownload}
                            title="Scarica questo film nella cartella Download del Mac"
                            aria-label="Scarica film"
                            className="p-2 rounded-xl backdrop-blur-md bg-black/80 hover:bg-emerald-600 text-zinc-300 hover:text-white transition cursor-pointer shadow-lg"
                          >
                            <Download className="w-4 h-4" />
                          </button>
                        )}

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
                            setSelectedCategory((c) => c);
                          }}
                          aria-label={isFav ? "Rimuovi dai preferiti" : "Aggiungi ai preferiti"}
                          className="p-2 rounded-xl bg-black/80 hover:bg-black text-zinc-300 hover:text-amber-400 transition cursor-pointer shadow-lg backdrop-blur-md"
                        >
                          <Star className={`w-4 h-4 ${isFav ? 'fill-amber-400 text-amber-400' : ''}`} />
                        </button>
                      </div>

                      {/* Hover Overlay with Action Buttons */}
                      <div className="absolute inset-0 bg-black/75 opacity-0 group-hover:opacity-100 transition-opacity duration-200 flex flex-col items-center justify-center p-3 gap-2.5">
                        <button
                          onClick={() => handlePlayStream(stream)}
                          className="w-14 h-14 rounded-full bg-emerald-500 hover:bg-emerald-400 text-white flex items-center justify-center shadow-xl transform transition hover:scale-110 active:scale-95 cursor-pointer"
                          title="Riproduci ora"
                        >
                          <Play className="w-7 h-7 ml-0.5 fill-white" />
                        </button>

                        <div className="flex items-center gap-2 mt-1">
                          <button
                            onClick={() => handleOpenDetails(stream)}
                            className="px-3 py-1.5 rounded-xl bg-zinc-800 hover:bg-zinc-700 text-white text-xs font-semibold flex items-center gap-1.5 transition cursor-pointer"
                            title="Trama e dettagli"
                          >
                            <Info className="w-4 h-4" />
                            Dettagli
                          </button>

                        </div>
                      </div>
                    </div>

                    {/* Movie Info below Poster */}
                    <div className="p-3 flex-1 flex flex-col justify-between">
                      <h4 className="text-sm sm:text-base font-bold text-white line-clamp-1 group-hover:text-emerald-400 transition">
                        {stream.name}
                      </h4>
                      <div className="flex items-center justify-between text-xs text-zinc-400 mt-1.5 font-mono">
                        <span className="uppercase">{stream.container_extension || 'MP4'}</span>
                        <span>#{stream.stream_id}</span>
                      </div>
                    </div>
                  </div>
                );
              })}
            </div>
          )}
          </div>
        </section>
      </div>

      {/* Movie Details Modal */}
      {activeMovieDetail && (
        <div className="fixed inset-0 z-50 flex items-center justify-center p-3 sm:p-4 bg-black/85 backdrop-blur-sm animate-in fade-in">
          <div className="bg-zinc-950 border border-zinc-800 rounded-3xl max-w-2xl w-full overflow-hidden shadow-2xl flex flex-col max-h-[90vh]">
            {/* Header */}
            <div className="p-4 sm:p-5 border-b border-zinc-800 flex items-center justify-between">
              <h3 className="text-base sm:text-lg font-bold text-white truncate pr-4">
                {activeMovieDetail.stream.name}
              </h3>
              <button
                onClick={() => setActiveMovieDetail(null)}
                className="p-1.5 rounded-xl text-zinc-400 hover:text-white hover:bg-zinc-800 transition cursor-pointer"
              >
                <X className="w-5 h-5" />
              </button>
            </div>

            {/* Content */}
            <div className="p-5 sm:p-6 overflow-y-auto space-y-4">
              <div className="flex flex-col sm:flex-row gap-5">
                {activeMovieDetail.stream.stream_icon && (
                  <img
                    src={getSecureImageUrl(activeMovieDetail.stream.stream_icon)}
                    alt={activeMovieDetail.stream.name}
                    className="w-36 sm:w-44 aspect-2/3 object-cover rounded-2xl shadow-xl shrink-0"
                  />
                )}
                <div className="space-y-2.5 flex-1">
                  {activeMovieDetail.details?.info?.plot && (
                    <div>
                      <h4 className="text-xs font-bold text-zinc-400 uppercase tracking-wider mb-1">Trama:</h4>
                      <p className="text-sm text-zinc-200 leading-relaxed">
                        {activeMovieDetail.details.info.plot}
                      </p>
                    </div>
                  )}

                  {activeMovieDetail.details?.info?.genre && (
                    <div className="text-sm text-zinc-300">
                      <strong className="text-zinc-400">Genere:</strong> {activeMovieDetail.details.info.genre}
                    </div>
                  )}

                  {activeMovieDetail.details?.info?.releasedate && (
                    <div className="text-sm text-zinc-300">
                      <strong className="text-zinc-400">Data uscita:</strong> {activeMovieDetail.details.info.releasedate}
                    </div>
                  )}

                  {activeMovieDetail.details?.info?.duration && (
                    <div className="text-sm text-zinc-300">
                      <strong className="text-zinc-400">Durata:</strong> {formatDuration(activeMovieDetail.details.info.duration)}
                    </div>
                  )}
                </div>
              </div>
            </div>

            {/* Footer with play and download buttons */}
            <div className="p-4 sm:p-5 border-t border-zinc-800 flex items-center justify-end gap-3 bg-zinc-900/50">
              {!isTv && (
                <button
                  type="button"
                  onClick={() => {
                    const ext = activeMovieDetail.stream.container_extension || 'mp4';
                    const streamUrl = buildStreamUrl(
                      serverUrl,
                      username,
                      password,
                      'movie',
                      activeMovieDetail.stream.stream_id,
                      ext,
                      false
                    );
                    triggerMediaDownload(
                      streamUrl,
                      activeMovieDetail.stream.name,
                      'movie',
                      activeMovieDetail.stream.stream_icon,
                      ext,
                      accountKey
                    );
                  }}
                  title="Scarica nella cartella locale dell’app"
                  aria-label="Scarica film"
                  className="p-3 rounded-xl border border-zinc-700 hover:border-cyan-500 bg-zinc-900 hover:bg-zinc-800 text-cyan-400 hover:text-white transition cursor-pointer"
                >
                  <Download className="w-5 h-5" />
                </button>
              )}

              <button
                onClick={() => {
                  handlePlayStream(activeMovieDetail.stream);
                  setActiveMovieDetail(null);
                }}
                className="px-6 py-3 bg-emerald-600 hover:bg-emerald-500 text-white rounded-xl text-sm font-bold flex items-center gap-2 shadow-xl shadow-emerald-950/50 transition cursor-pointer"
              >
                <Play className="w-5 h-5 fill-white" />
                Guarda Film
              </button>
            </div>
          </div>
        </div>
      )}

    </div>
  );
};
