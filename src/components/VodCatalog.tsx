import React, { useState, useMemo } from 'react';
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
  ExternalLink,
  ArrowDownUp,
  Download,
} from 'lucide-react';
import { XtreamCategory, XtreamVodStream, XtreamVodDetails, PlayableMediaItem } from '../types/xtream';
import { buildStreamUrl, formatDuration } from '../utils/parseXtreamUrl';
import { xtreamClient } from '../services/xtreamClient';
import { storage } from '../services/storage';
import { sortVodStreams } from '../utils/recentSorting';
import { startMediaDownload } from '../utils/downloadManager';

interface VodCatalogProps {
  categories: XtreamCategory[];
  streams: XtreamVodStream[];
  serverUrl: string;
  username: string;
  password: string;
  onPlay: (item: PlayableMediaItem) => void;
  isLoading?: boolean;
}

export const VodCatalog: React.FC<VodCatalogProps> = ({
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
  const [sortBy, setSortBy] = useState<'recent' | 'rating' | 'name' | 'id'>('recent');
  const [activeMovieDetail, setActiveMovieDetail] = useState<{
    stream: XtreamVodStream;
    details: XtreamVodDetails | null;
    isLoading: boolean;
  } | null>(null);

  // Compute category counts
  const categoryCounts = useMemo(() => {
    const counts: Record<string, number> = { all: streams.length };
    for (const stream of streams) {
      const cat = stream.category_id || 'uncategorized';
      counts[cat] = (counts[cat] || 0) + 1;
    }
    return counts;
  }, [streams]);

  // Filtered and sorted streams
  const filteredStreams = useMemo(() => {
    const matched = streams.filter((stream) => {
      const matchesCategory =
        selectedCategory === 'all' || String(stream.category_id) === String(selectedCategory);
      const matchesSearch =
        !searchQuery.trim() ||
        stream.name.toLowerCase().includes(searchQuery.toLowerCase());
      return matchesCategory && matchesSearch;
    });

    return sortVodStreams(matched, sortBy);
  }, [streams, selectedCategory, searchQuery, sortBy]);

  const handleOpenDetails = async (stream: XtreamVodStream) => {
    setActiveMovieDetail({ stream, details: null, isLoading: true });
    try {
      const info = await xtreamClient.getVodInfo(serverUrl, username, password, stream.stream_id);
      setActiveMovieDetail({ stream, details: info, isLoading: false });
    } catch {
      setActiveMovieDetail({ stream, details: null, isLoading: false });
    }
  };

  const handlePlayStream = (stream: XtreamVodStream, details?: XtreamVodDetails | null) => {
    const ext = stream.container_extension || details?.movie_data?.container_extension || 'mp4';
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
      poster: stream.stream_icon || details?.info?.movie_image,
      backdrop: details?.info?.backdrop_path?.[0] || details?.info?.cover_big,
      rating: stream.rating || details?.info?.rating,
      description: details?.info?.plot || details?.info?.description,
      containerExtension: ext,
      year: stream.year || details?.info?.releasedate?.substring(0, 4),
    };

    onPlay(mediaItem);
    setActiveMovieDetail(null);
  };

  return (
    <div className="space-y-6">
      {/* Top Search & Category Filter Bar */}
      <div className="flex flex-col md:flex-row gap-4 items-stretch md:items-center justify-between bg-zinc-900/60 p-4 rounded-2xl border border-zinc-800">
        {/* Search Input */}
        <div className="relative flex-1">
          <Search className="w-4 h-4 absolute left-3.5 top-1/2 -translate-y-1/2 text-zinc-400" />
          <input
            type="text"
            value={searchQuery}
            onChange={(e) => setSearchQuery(e.target.value)}
            placeholder="Cerca film per titolo..."
            className="w-full pl-10 pr-4 py-2.5 bg-zinc-950/80 border border-zinc-700/80 rounded-xl text-white placeholder-zinc-500 text-sm focus:outline-hidden focus:border-emerald-500"
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

        {/* Category & Sorting Selectors */}
        <div className="flex flex-wrap items-center gap-2">
          {/* Sorting Dropdown */}
          <div className="flex items-center gap-1.5">
            <ArrowDownUp className="w-4 h-4 text-emerald-400 shrink-0" />
            <select
              value={sortBy}
              onChange={(e) => setSortBy(e.target.value as any)}
              aria-label="Ordina film"
              className="bg-zinc-950 border border-zinc-700 rounded-xl px-3 py-2.5 text-xs sm:text-sm text-zinc-200 focus:outline-hidden focus:border-emerald-500"
            >
              <option value="recent">🕒 Più Recenti (Novità)</option>
              <option value="rating">⭐ Valutazione Migliore</option>
              <option value="name">🔤 Titolo (A-Z)</option>
              <option value="id">🔢 ID Decrescente</option>
            </select>
          </div>

          {/* Category Select Dropdown */}
          <div className="flex items-center gap-1.5">
            <Layers className="w-4 h-4 text-zinc-400 shrink-0" />
            <select
              value={selectedCategory}
              onChange={(e) => setSelectedCategory(e.target.value)}
              aria-label="Filtra per categoria film"
              className="bg-zinc-950 border border-zinc-700 rounded-xl px-3 py-2.5 text-xs sm:text-sm text-zinc-200 focus:outline-hidden focus:border-emerald-500 max-w-xs"
            >
              <option value="all">Tutte le Categorie ({streams.length})</option>
              {categories.map((cat) => (
                <option key={cat.category_id} value={cat.category_id}>
                  {cat.category_name} ({categoryCounts[cat.category_id] || 0})
                </option>
              ))}
            </select>
          </div>
        </div>
      </div>

      {/* Stream Count Indicator */}
      <div className="flex items-center justify-between text-xs text-zinc-400 px-1">
        <span>
          Mostrando <strong className="text-zinc-200">{filteredStreams.length}</strong> film su {streams.length} totali
        </span>
        {selectedCategory !== 'all' && (
          <button
            onClick={() => setSelectedCategory('all')}
            className="text-emerald-400 hover:underline"
          >
            Azzera filtro categoria
          </button>
        )}
      </div>

      {/* Movie Grid */}
      {isLoading ? (
        <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5 xl:grid-cols-6 gap-4">
          {Array.from({ length: 12 }).map((_, i) => (
            <div key={i} className="aspect-2/3 bg-zinc-900 animate-pulse rounded-xl border border-zinc-800"></div>
          ))}
        </div>
      ) : filteredStreams.length === 0 ? (
        <div className="py-16 text-center text-zinc-400 bg-zinc-900/30 rounded-2xl border border-dashed border-zinc-800">
          <Film className="w-12 h-12 mx-auto text-zinc-600 mb-3" />
          <p className="text-base font-medium text-zinc-300">Nessun film trovato</p>
          <p className="text-xs text-zinc-500 mt-1">
            {searchQuery ? 'Prova a modificare i termini di ricerca' : 'Nessun contenuto disponibile in questa categoria'}
          </p>
        </div>
      ) : (
        <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5 xl:grid-cols-6 gap-4">
          {filteredStreams.map((stream) => {
            const isFav = storage.isFavorite(`movie_${stream.stream_id}`);
            return (
              <div
                key={stream.stream_id}
                className="group relative bg-zinc-900 border border-zinc-800/80 hover:border-emerald-500/50 rounded-xl overflow-hidden shadow-lg transition-all duration-300 hover:-translate-y-1 flex flex-col"
              >
                {/* Poster Container */}
                <div className="relative aspect-2/3 bg-zinc-950 overflow-hidden">
                  {stream.stream_icon ? (
                    <img
                      src={stream.stream_icon}
                      alt={stream.name}
                      loading="lazy"
                      onError={(e) => {
                        // Fallback placeholder
                        (e.target as HTMLElement).style.display = 'none';
                      }}
                      className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-300"
                    />
                  ) : null}

                  {/* Fallback film icon */}
                  <div className="absolute inset-0 -z-10 flex flex-col items-center justify-center p-3 text-zinc-600 bg-zinc-950">
                    <Film className="w-10 h-10 mb-2 opacity-50" />
                    <span className="text-[11px] text-center line-clamp-2 text-zinc-400">
                      {stream.name}
                    </span>
                  </div>

                  {/* Rating Badge */}
                  {stream.rating && stream.rating !== '0' && (
                    <div className="absolute top-2 left-2 px-1.5 py-0.5 rounded bg-black/80 backdrop-blur-xs text-amber-400 border border-amber-500/30 text-[11px] font-semibold flex items-center gap-1">
                      <Star className="w-3 h-3 fill-amber-400 text-amber-400" />
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
                      storage.toggleFavorite(item);
                      // Force update
                      setSelectedCategory((c) => c);
                    }}
                    aria-label={isFav ? "Rimuovi dai preferiti" : "Aggiungi ai preferiti"}
                    className="absolute top-2 right-2 p-1.5 rounded-lg bg-black/70 hover:bg-black text-zinc-300 hover:text-amber-400 transition"
                  >
                    <Star className={`w-3.5 h-3.5 ${isFav ? 'fill-amber-400 text-amber-400' : ''}`} />
                  </button>

                  {/* Hover Overlay with Action Buttons */}
                  <div className="absolute inset-0 bg-black/75 opacity-0 group-hover:opacity-100 transition-opacity duration-200 flex flex-col items-center justify-center p-3 gap-2">
                    <button
                      onClick={() => handlePlayStream(stream)}
                      className="w-12 h-12 rounded-full bg-emerald-500 hover:bg-emerald-400 text-white flex items-center justify-center shadow-lg transform transition hover:scale-110 active:scale-95 cursor-pointer"
                      title="Riproduci ora"
                    >
                      <Play className="w-6 h-6 ml-0.5 fill-white" />
                    </button>

                    <div className="flex items-center gap-1.5">
                      <button
                        onClick={() => handleOpenDetails(stream)}
                        className="px-2.5 py-1 rounded-lg bg-zinc-800 hover:bg-zinc-700 text-zinc-200 text-xs font-medium flex items-center gap-1 border border-zinc-700 transition cursor-pointer"
                      >
                        <Info className="w-3.5 h-3.5" />
                        Dettagli
                      </button>

                      <button
                        onClick={(e) => {
                          e.stopPropagation();
                          startMediaDownload({
                            serverUrl,
                            username,
                            password,
                            type: 'movie',
                            streamId: stream.stream_id,
                            title: stream.name,
                            containerExtension: stream.container_extension || 'mp4',
                            poster: stream.stream_icon,
                          });
                        }}
                        className="p-1 rounded-lg bg-zinc-800 hover:bg-cyan-950/80 text-zinc-300 hover:text-cyan-300 border border-zinc-700 hover:border-cyan-700 transition cursor-pointer"
                        title="Scarica film sul dispositivo"
                      >
                        <Download className="w-3.5 h-3.5" />
                      </button>
                    </div>
                  </div>
                </div>

                {/* Card Title & Info */}
                <div className="p-2.5 flex-1 flex flex-col justify-between">
                  <h3
                    className="text-xs font-medium text-zinc-200 line-clamp-2 group-hover:text-emerald-400 transition-colors"
                    title={stream.name}
                  >
                    {stream.name}
                  </h3>
                  <div className="flex items-center justify-between text-[11px] text-zinc-500 mt-1.5 pt-1.5 border-t border-zinc-800/60">
                    <span className="uppercase font-mono text-[10px] text-zinc-400">
                      .{stream.container_extension || 'mp4'}
                    </span>
                    <span className="text-zinc-500 font-mono text-[10px]">#{stream.stream_id}</span>
                  </div>
                </div>
              </div>
            );
          })}
        </div>
      )}

      {/* Movie Details Modal */}
      {activeMovieDetail && (
        <div className="fixed inset-0 z-50 bg-black/80 backdrop-blur-xs flex items-center justify-center p-4">
          <div className="relative w-full max-w-2xl bg-zinc-900 border border-zinc-800 rounded-2xl overflow-hidden shadow-2xl animate-in fade-in duration-200">
            {/* Modal Backdrop Banner */}
            {activeMovieDetail.details?.info?.backdrop_path?.[0] && (
              <div className="h-44 w-full relative overflow-hidden bg-black">
                <img
                  src={activeMovieDetail.details.info.backdrop_path[0]}
                  alt="Backdrop"
                  className="w-full h-full object-cover opacity-40 blur-xs"
                />
                <div className="absolute inset-0 bg-gradient-to-t from-zinc-900 to-transparent"></div>
              </div>
            )}

            {/* Close button */}
            <button
              onClick={() => setActiveMovieDetail(null)}
              className="absolute top-3 right-3 z-10 p-2 text-zinc-400 hover:text-white bg-black/50 hover:bg-black/80 rounded-full transition"
            >
              <X className="w-5 h-5" />
            </button>

            {/* Content Area */}
            <div className="p-6 relative">
              <div className="flex flex-col sm:flex-row gap-5 items-start">
                {/* Poster */}
                <div className="w-32 sm:w-40 aspect-2/3 shrink-0 rounded-xl overflow-hidden border border-zinc-700 bg-zinc-950 shadow-md">
                  <img
                    src={
                      activeMovieDetail.details?.info?.movie_image ||
                      activeMovieDetail.stream.stream_icon
                    }
                    alt={activeMovieDetail.stream.name}
                    className="w-full h-full object-cover"
                  />
                </div>

                {/* Details info */}
                <div className="flex-1 min-w-0">
                  <h2 className="text-xl font-bold text-white mb-1.5">
                    {activeMovieDetail.stream.name}
                  </h2>

                  <div className="flex flex-wrap items-center gap-3 text-xs text-zinc-400 mb-3">
                    {activeMovieDetail.details?.info?.releasedate && (
                      <span className="flex items-center gap-1">
                        <Calendar className="w-3.5 h-3.5 text-zinc-400" />
                        {activeMovieDetail.details.info.releasedate}
                      </span>
                    )}

                    {(activeMovieDetail.details?.info?.duration ||
                      activeMovieDetail.details?.info?.duration_secs) && (
                      <span className="flex items-center gap-1">
                        <Clock className="w-3.5 h-3.5 text-zinc-400" />
                        {formatDuration(
                          activeMovieDetail.details.info.duration_secs ||
                            activeMovieDetail.details.info.duration
                        )}
                      </span>
                    )}

                    {activeMovieDetail.stream.rating && (
                      <span className="flex items-center gap-1 text-amber-400 font-semibold">
                        <Star className="w-3.5 h-3.5 fill-amber-400" />
                        {activeMovieDetail.stream.rating} / 10
                      </span>
                    )}

                    <span className="uppercase px-1.5 py-0.5 rounded bg-zinc-800 text-zinc-300 font-mono text-[10px]">
                      {activeMovieDetail.stream.container_extension || 'mp4'}
                    </span>
                  </div>

                  {/* Genre */}
                  {activeMovieDetail.details?.info?.genre && (
                    <p className="text-xs text-emerald-400 mb-2 font-medium">
                      {activeMovieDetail.details.info.genre}
                    </p>
                  )}

                  {/* Synopsis */}
                  <p className="text-xs sm:text-sm text-zinc-300 line-clamp-4 leading-relaxed mb-4">
                    {activeMovieDetail.details?.info?.plot ||
                      activeMovieDetail.details?.info?.description ||
                      'Nessuna trama disponibile per questo titolo.'}
                  </p>

                  {/* Cast / Director */}
                  {activeMovieDetail.details?.info?.director && (
                    <p className="text-xs text-zinc-400 mb-1">
                      <strong className="text-zinc-300">Regia:</strong>{' '}
                      {activeMovieDetail.details.info.director}
                    </p>
                  )}
                  {activeMovieDetail.details?.info?.cast && (
                    <p className="text-xs text-zinc-400 line-clamp-1 mb-4">
                      <strong className="text-zinc-300">Cast:</strong>{' '}
                      {activeMovieDetail.details.info.cast}
                    </p>
                  )}

                  {/* Action Buttons */}
                  <div className="flex flex-wrap items-center gap-3 mt-4">
                    <button
                      onClick={() =>
                        handlePlayStream(
                          activeMovieDetail.stream,
                          activeMovieDetail.details
                        )
                      }
                      className="px-5 py-2.5 rounded-xl bg-emerald-600 hover:bg-emerald-500 text-white font-medium text-sm flex items-center gap-2 shadow-lg shadow-emerald-950/40 transition cursor-pointer"
                    >
                      <Play className="w-4 h-4 fill-white" />
                      Avvia Riproduzione
                    </button>

                    <button
                      onClick={() => {
                        startMediaDownload({
                          serverUrl,
                          username,
                          password,
                          type: 'movie',
                          streamId: activeMovieDetail.stream.stream_id,
                          title: activeMovieDetail.stream.name,
                          containerExtension: activeMovieDetail.stream.container_extension || 'mp4',
                          poster: activeMovieDetail.stream.stream_icon,
                        });
                      }}
                      className="px-4 py-2.5 rounded-xl bg-zinc-800 hover:bg-cyan-950/80 border border-zinc-700 hover:border-cyan-700 text-zinc-200 hover:text-cyan-300 text-sm font-medium flex items-center gap-2 transition cursor-pointer"
                      title="Scarica film per vederlo offline"
                    >
                      <Download className="w-4 h-4 text-cyan-400" />
                      Scarica Film
                    </button>

                    <button
                      onClick={() => setActiveMovieDetail(null)}
                      className="px-4 py-2.5 rounded-xl bg-zinc-800 hover:bg-zinc-700 text-zinc-300 text-sm font-medium transition cursor-pointer"
                    >
                      Chiudi
                    </button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      )}
    </div>
  );
};
