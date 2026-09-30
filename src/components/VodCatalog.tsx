import React, { useState, useMemo, useEffect } from 'react';
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
  Radio,
} from 'lucide-react';
import { XtreamCategory, XtreamVodStream, XtreamVodDetails, PlayableMediaItem } from '../types/xtream';
import { buildStreamUrl, formatDuration } from '../utils/parseXtreamUrl';
import { xtreamClient } from '../services/xtreamClient';
import { storage } from '../services/storage';
import { sortVodStreams } from '../utils/recentSorting';
import { getSecureImageUrl } from '../utils/imageUrl';

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
  // Always default to the first category to avoid rendering 20,000 items at once
  const [selectedCategory, setSelectedCategory] = useState<string>(() => {
    return categories[0]?.category_id ? String(categories[0].category_id) : '';
  });

  const [categorySearch, setCategorySearch] = useState<string>('');
  const [searchQuery, setSearchQuery] = useState<string>('');
  const [sortBy, setSortBy] = useState<'recent' | 'rating' | 'name' | 'id'>('recent');
  const [visibleLimit, setVisibleLimit] = useState<number>(40);
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

  useEffect(() => {
    setVisibleLimit(40);
  }, [selectedCategory, searchQuery, sortBy]);

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

  const visibleStreams = useMemo(() => {
    return filteredStreams.slice(0, visibleLimit);
  }, [filteredStreams, visibleLimit]);

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
      <div className="flex flex-col lg:flex-row gap-4 sm:gap-6 items-start">
        {/* Left Column: Categories List */}
        <aside className="w-full lg:w-80 xl:w-96 shrink-0 bg-zinc-900/80 border border-zinc-800/90 rounded-2xl p-3 sm:p-4 flex flex-col space-y-3.5 shadow-xl">
          <div className="flex items-center justify-between px-1">
            <div className="flex items-center gap-2.5">
              <Layers className="w-5 h-5 text-emerald-400" />
              <h3 className="text-sm sm:text-base font-bold text-white tracking-wide uppercase">
                Categorie Film ({categories.length})
              </h3>
            </div>
            <span className="text-xs text-zinc-400 font-mono font-semibold">VOD</span>
          </div>

          {/* Search Category */}
          <div className="relative">
            <Search className="w-4 h-4 absolute left-3.5 top-1/2 -translate-y-1/2 text-zinc-500" />
            <input
              type="text"
              value={categorySearch}
              onChange={(e) => setCategorySearch(e.target.value)}
              placeholder="Filtra categorie film..."
              className="w-full pl-9 pr-3.5 py-2.5 bg-zinc-950 border border-zinc-800 rounded-xl text-sm text-white placeholder-zinc-500 focus:outline-hidden focus:border-emerald-500 transition"
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
                        ? 'bg-emerald-600 text-white shadow-lg shadow-emerald-950/50'
                        : 'text-zinc-300 hover:bg-zinc-850 hover:text-white'
                    }`}
                  >
                    <span className="truncate pr-2">{cat.category_name}</span>
                    <span
                      className={`text-xs font-mono font-bold px-2 py-0.5 rounded-full shrink-0 ${
                        isSelected
                          ? 'bg-emerald-800/90 text-emerald-100'
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

        {/* Right Column: Movies in the Selected Category */}
        <section className="flex-1 w-full min-w-0 bg-zinc-900/40 border border-zinc-800/80 rounded-2xl p-4 sm:p-6 flex flex-col space-y-4 shadow-xl">
          {/* Header of the Selected Category */}
          <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-3 pb-4 border-b border-zinc-800">
            <div className="min-w-0">
              <h2 className="text-lg sm:text-xl font-bold text-white flex items-center gap-2.5 truncate">
                <Film className="w-6 h-6 text-emerald-400 shrink-0" />
                <span className="truncate">{currentCategory?.category_name || 'Film'}</span>
              </h2>
              <p className="text-xs sm:text-sm text-zinc-400 mt-1">
                Mostrando <strong className="text-zinc-200">{filteredStreams.length}</strong> film
                {searchQuery ? ` per "${searchQuery}"` : ''}
              </p>
            </div>

            {/* Controls: Sort and Search */}
            <div className="flex flex-wrap items-center gap-2.5 shrink-0">
              <div className="flex items-center gap-1.5 bg-zinc-950 border border-zinc-800 rounded-xl px-2.5 py-1.5 text-xs sm:text-sm">
                <ArrowDownUp className="w-4 h-4 text-zinc-400 shrink-0" />
                <select
                  value={sortBy}
                  onChange={(e) => setSortBy(e.target.value as any)}
                  className="bg-transparent text-zinc-200 text-xs sm:text-sm focus:outline-hidden cursor-pointer"
                >
                  <option value="recent">🕒 Più Recenti</option>
                  <option value="rating">⭐ Valutazione</option>
                  <option value="name">🔤 Titolo (A-Z)</option>
                  <option value="id">🔢 ID</option>
                </select>
              </div>

              <div className="relative flex-1 sm:w-72">
                <Search className="w-4 h-4 absolute left-3.5 top-1/2 -translate-y-1/2 text-zinc-500" />
                <input
                  type="text"
                  value={searchQuery}
                  onChange={(e) => setSearchQuery(e.target.value)}
                  placeholder="Cerca film in questa categoria..."
                  className="w-full pl-9 pr-3.5 py-2 bg-zinc-950 border border-zinc-700/80 rounded-xl text-xs sm:text-sm text-white placeholder-zinc-500 focus:outline-hidden focus:border-emerald-500 transition"
                />
              </div>
            </div>
          </div>

          {/* Movie Grid */}
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

                      {/* Favorite button */}
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
                        className="absolute top-2 right-2 p-2 rounded-xl bg-black/80 hover:bg-black text-zinc-300 hover:text-amber-400 transition cursor-pointer"
                      >
                        <Star className={`w-4 h-4 ${isFav ? 'fill-amber-400 text-amber-400' : ''}`} />
                      </button>

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

          {/* Load More Button */}
          {filteredStreams.length > visibleLimit && (
            <div className="pt-4 text-center">
              <button
                type="button"
                onClick={() => setVisibleLimit((prev) => prev + 40)}
                className="px-6 py-3 rounded-xl bg-zinc-900 hover:bg-zinc-850 border border-zinc-800 text-sm font-bold text-zinc-200 hover:text-white transition cursor-pointer shadow-lg inline-flex items-center gap-2"
              >
                <span>Mostra altri film ({filteredStreams.length - visibleLimit} rimanenti)</span>
                <ChevronRight className="w-4 h-4 text-emerald-400" />
              </button>
            </div>
          )}
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

            {/* Footer with play button */}
            <div className="p-4 sm:p-5 border-t border-zinc-800 flex items-center justify-end gap-3 bg-zinc-900/50">
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
