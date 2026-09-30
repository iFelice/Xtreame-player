import React, { useState, useMemo, useEffect } from 'react';
import {
  Search,
  Tv,
  Star,
  Play,
  Layers,
  Sparkles,
  X,
  Clock,
  Calendar,
  ChevronRight,
  Film,
  ArrowDownUp,
  Download,
} from 'lucide-react';
import {
  XtreamCategory,
  XtreamSeries,
  XtreamSeriesInfo,
  XtreamEpisode,
  PlayableMediaItem,
} from '../types/xtream';
import { buildStreamUrl, formatDuration } from '../utils/parseXtreamUrl';
import { xtreamClient } from '../services/xtreamClient';
import { storage } from '../services/storage';
import { sortSeriesList } from '../utils/recentSorting';
import { startMediaDownload } from '../utils/downloadManager';
import { getSecureImageUrl } from '../utils/imageUrl';

interface SeriesCatalogProps {
  categories: XtreamCategory[];
  seriesList: XtreamSeries[];
  serverUrl: string;
  username: string;
  password: string;
  onPlay: (item: PlayableMediaItem) => void;
  isLoading?: boolean;
  selectedSeriesId?: string | number | null;
  onClearSelectedSeries?: () => void;
}

export const SeriesCatalog: React.FC<SeriesCatalogProps> = ({
  categories,
  seriesList,
  serverUrl,
  username,
  password,
  onPlay,
  isLoading = false,
  selectedSeriesId,
  onClearSelectedSeries,
}) => {
  const [selectedCategory, setSelectedCategory] = useState<string>('all');
  const [searchQuery, setSearchQuery] = useState<string>('');
  const [sortBy, setSortBy] = useState<'recent' | 'rating' | 'name' | 'id'>('recent');
  const [activeSeriesDetail, setActiveSeriesDetail] = useState<{
    series: XtreamSeries;
    info: XtreamSeriesInfo | null;
    isLoading: boolean;
    selectedSeason: string;
  } | null>(null);

  // Category counts
  const categoryCounts = useMemo(() => {
    const counts: Record<string, number> = { all: seriesList.length };
    for (const item of seriesList) {
      const cat = item.category_id || 'uncategorized';
      counts[cat] = (counts[cat] || 0) + 1;
    }
    return counts;
  }, [seriesList]);

  const filteredSeries = useMemo(() => {
    const matched = seriesList.filter((item) => {
      const matchesCategory =
        selectedCategory === 'all' || String(item.category_id) === String(selectedCategory);
      const matchesSearch =
        !searchQuery.trim() ||
        item.name.toLowerCase().includes(searchQuery.toLowerCase());
      return matchesCategory && matchesSearch;
    });

    return sortSeriesList(matched, sortBy);
  }, [seriesList, selectedCategory, searchQuery, sortBy]);

  useEffect(() => {
    if (selectedSeriesId && seriesList.length > 0) {
      const found = seriesList.find((s) => String(s.series_id) === String(selectedSeriesId));
      if (found) {
        handleOpenSeries(found);
      }
    }
  }, [selectedSeriesId, seriesList]);

  const handleOpenSeries = async (series: XtreamSeries) => {
    setActiveSeriesDetail({
      series,
      info: null,
      isLoading: true,
      selectedSeason: '1',
    });

    try {
      const data = await xtreamClient.getSeriesInfo(serverUrl, username, password, series.series_id);
      // Determine initial season key (often '1' or the first available key in episodes)
      const seasonKeys = data.episodes ? Object.keys(data.episodes) : ['1'];
      const firstSeason = seasonKeys.length > 0 ? seasonKeys[0] : '1';

      setActiveSeriesDetail({
        series,
        info: data,
        isLoading: false,
        selectedSeason: firstSeason,
      });
    } catch {
      setActiveSeriesDetail((prev) => (prev ? { ...prev, isLoading: false } : null));
    }
  };

  const handlePlayEpisode = (series: XtreamSeries, episode: XtreamEpisode, seasonNum: string) => {
    const ext = episode.container_extension || 'mp4';
    const streamUrl = buildStreamUrl(
      serverUrl,
      username,
      password,
      'series',
      episode.id,
      ext,
      false
    );

    const mediaItem: PlayableMediaItem = {
      id: `series_${episode.id}`,
      title: `${series.name} - S${seasonNum.padStart(2, '0')}E${String(episode.episode_num).padStart(2, '0')}: ${episode.title || `Episodio ${episode.episode_num}`}`,
      type: 'series',
      streamUrl,
      poster: episode.info?.movie_image || series.cover,
      categoryName: 'Serie TV',
      description: episode.info?.plot,
      containerExtension: ext,
      seriesName: series.name,
      seasonNumber: parseInt(seasonNum, 10),
      episodeNumber: typeof episode.episode_num === 'number' ? episode.episode_num : parseInt(episode.episode_num, 10),
    };

    onPlay(mediaItem);
    setActiveSeriesDetail(null);
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
            placeholder="Cerca serie TV per titolo..."
            className="w-full pl-10 pr-4 py-2.5 bg-zinc-950/80 border border-zinc-700/80 rounded-xl text-white placeholder-zinc-500 text-sm focus:outline-hidden focus:border-blue-500"
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
            <ArrowDownUp className="w-4 h-4 text-blue-400 shrink-0" />
            <select
              value={sortBy}
              onChange={(e) => setSortBy(e.target.value as any)}
              aria-label="Ordina serie TV"
              className="bg-zinc-950 border border-zinc-700 rounded-xl px-3 py-2.5 text-xs sm:text-sm text-zinc-200 focus:outline-hidden focus:border-blue-500"
            >
              <option value="recent">🕒 Più Recenti / Aggiornate</option>
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
              aria-label="Filtra per categoria serie TV"
              className="bg-zinc-950 border border-zinc-700 rounded-xl px-3 py-2.5 text-xs sm:text-sm text-zinc-200 focus:outline-hidden focus:border-blue-500 max-w-xs"
            >
              <option value="all">Tutte le Serie ({seriesList.length})</option>
              {categories.map((cat) => (
                <option key={cat.category_id} value={cat.category_id}>
                  {cat.category_name} ({categoryCounts[cat.category_id] || 0})
                </option>
              ))}
            </select>
          </div>
        </div>
      </div>

      {/* Info count */}
      <div className="flex items-center justify-between text-xs text-zinc-400 px-1">
        <span>
          Mostrando <strong className="text-zinc-200">{filteredSeries.length}</strong> serie TV su {seriesList.length} totali
        </span>
        {selectedCategory !== 'all' && (
          <button
            onClick={() => setSelectedCategory('all')}
            className="text-blue-400 hover:underline"
          >
            Azzera filtro categoria
          </button>
        )}
      </div>

      {/* Grid of series */}
      {isLoading ? (
        <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5 xl:grid-cols-6 2xl:grid-cols-7 3xl:grid-cols-8 4xl:grid-cols-10 gap-4">
          {Array.from({ length: 14 }).map((_, i) => (
            <div key={i} className="aspect-2/3 bg-zinc-900 animate-pulse rounded-xl border border-zinc-800"></div>
          ))}
        </div>
      ) : filteredSeries.length === 0 ? (
        <div className="py-16 text-center text-zinc-400 bg-zinc-900/30 rounded-2xl border border-dashed border-zinc-800">
          <Tv className="w-12 h-12 mx-auto text-zinc-600 mb-3" />
          <p className="text-base font-medium text-zinc-300">Nessuna serie TV trovata</p>
          <p className="text-xs text-zinc-500 mt-1">
            {searchQuery ? 'Prova a modificare i termini di ricerca' : 'Nessuna serie disponibile in questa categoria'}
          </p>
        </div>
      ) : (
        <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5 xl:grid-cols-6 2xl:grid-cols-7 3xl:grid-cols-8 4xl:grid-cols-10 gap-4">
          {filteredSeries.map((series) => {
            const isFav = storage.isFavorite(`series_${series.series_id}`);
            return (
              <div
                key={series.series_id}
                onClick={() => handleOpenSeries(series)}
                className="group relative bg-zinc-900 border border-zinc-800 hover:border-blue-500/50 rounded-xl overflow-hidden shadow-lg transition-all duration-300 hover:-translate-y-1 flex flex-col cursor-pointer"
              >
                {/* Cover Container */}
                <div className="relative aspect-2/3 bg-zinc-950 overflow-hidden">
                  {series.cover ? (
                    <img
                      src={getSecureImageUrl(series.cover)}
                      alt={series.name}
                      referrerPolicy="no-referrer"
                      loading="lazy"
                      onError={(e) => {
                        (e.target as HTMLElement).style.display = 'none';
                      }}
                      className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-300"
                    />
                  ) : null}

                  {/* Fallback TV icon */}
                  <div className="absolute inset-0 -z-10 flex flex-col items-center justify-center p-3 text-zinc-600 bg-zinc-950">
                    <Tv className="w-10 h-10 mb-2 opacity-50" />
                    <span className="text-[11px] text-center line-clamp-2 text-zinc-400">
                      {series.name}
                    </span>
                  </div>

                  {/* Rating */}
                  {series.rating && series.rating !== '0' && (
                    <div className="absolute top-2 left-2 px-1.5 py-0.5 rounded bg-black/80 backdrop-blur-xs text-amber-400 border border-amber-500/30 text-[11px] font-semibold flex items-center gap-1">
                      <Star className="w-3 h-3 fill-amber-400" />
                      {series.rating}
                    </div>
                  )}

                  {/* Favorite */}
                  <button
                    onClick={(e) => {
                      e.stopPropagation();
                      const item: PlayableMediaItem = {
                        id: `series_${series.series_id}`,
                        title: series.name,
                        type: 'series',
                        streamUrl: '',
                        poster: series.cover,
                      };
                      storage.toggleFavorite(item);
                      setSelectedCategory((c) => c);
                    }}
                    aria-label={isFav ? "Rimuovi dai preferiti" : "Aggiungi ai preferiti"}
                    className="absolute top-2 right-2 p-1.5 rounded-lg bg-black/70 hover:bg-black text-zinc-300 hover:text-amber-400 transition"
                  >
                    <Star className={`w-3.5 h-3.5 ${isFav ? 'fill-amber-400 text-amber-400' : ''}`} />
                  </button>

                  {/* Hover Overlay */}
                  <div className="absolute inset-0 bg-black/75 opacity-0 group-hover:opacity-100 transition-opacity duration-200 flex flex-col items-center justify-center p-3 gap-2">
                    <span className="px-3 py-1.5 rounded-xl bg-blue-600 text-white text-xs font-semibold flex items-center gap-1.5 shadow-md">
                      <Play className="w-3.5 h-3.5 fill-white" />
                      Episodi
                    </span>
                  </div>
                </div>

                {/* Card Title & Info */}
                <div className="p-2.5 flex-1 flex flex-col justify-between">
                  <h3
                    className="text-xs font-medium text-zinc-200 line-clamp-2 group-hover:text-blue-400 transition-colors"
                    title={series.name}
                  >
                    {series.name}
                  </h3>
                  <div className="flex items-center justify-between text-[11px] text-zinc-500 mt-1.5 pt-1.5 border-t border-zinc-800/60">
                    <span className="text-zinc-400 text-[10px]">Serie TV</span>
                    <span className="text-zinc-500 font-mono text-[10px]">#{series.series_id}</span>
                  </div>
                </div>
              </div>
            );
          })}
        </div>
      )}

      {/* Series Detail & Episodes Modal */}
      {activeSeriesDetail && (
        <div className="fixed inset-0 z-50 bg-black/85 backdrop-blur-xs flex items-center justify-center p-4">
          <div className="relative w-full max-w-4xl max-h-[90vh] bg-zinc-900 border border-zinc-800 rounded-2xl overflow-hidden shadow-2xl flex flex-col animate-in fade-in duration-200">
            {/* Modal Header */}
            <div className="p-5 border-b border-zinc-800 flex items-start justify-between gap-4 bg-zinc-950/70">
              <div className="flex gap-4 items-center">
                <div className="w-16 h-24 rounded-lg overflow-hidden shrink-0 border border-zinc-700 bg-zinc-900">
                  <img
                    src={getSecureImageUrl(
                      activeSeriesDetail.info?.info?.cover || activeSeriesDetail.series.cover
                    )}
                    alt={activeSeriesDetail.series.name}
                    referrerPolicy="no-referrer"
                    className="w-full h-full object-cover"
                  />
                </div>
                <div>
                  <h2 className="text-xl font-bold text-white mb-1">
                    {activeSeriesDetail.series.name}
                  </h2>
                  <div className="flex flex-wrap items-center gap-3 text-xs text-zinc-400">
                    {activeSeriesDetail.info?.info?.genre && (
                      <span className="text-blue-400 font-medium">
                        {activeSeriesDetail.info.info.genre}
                      </span>
                    )}
                    {activeSeriesDetail.series.rating && (
                      <span className="flex items-center gap-1 text-amber-400 font-semibold">
                        <Star className="w-3.5 h-3.5 fill-amber-400" />
                        {activeSeriesDetail.series.rating} / 10
                      </span>
                    )}
                  </div>
                  {activeSeriesDetail.info?.info?.plot && (
                    <p className="text-xs text-zinc-300 line-clamp-2 mt-2 max-w-2xl">
                      {activeSeriesDetail.info.info.plot}
                    </p>
                  )}
                </div>
              </div>

              <button
                onClick={() => setActiveSeriesDetail(null)}
                className="p-2 text-zinc-400 hover:text-white bg-zinc-800/80 hover:bg-zinc-800 rounded-full transition shrink-0"
              >
                <X className="w-5 h-5" />
              </button>
            </div>

            {/* Seasons Tab Selector */}
            {activeSeriesDetail.info?.episodes && (
              <div className="px-5 py-3 border-b border-zinc-800/80 bg-zinc-950/40 flex items-center gap-2 overflow-x-auto">
                <span className="text-xs font-semibold text-zinc-400 mr-2 shrink-0">Stagioni:</span>
                {Object.keys(activeSeriesDetail.info.episodes).map((seasonKey) => {
                  const isSelected = activeSeriesDetail.selectedSeason === seasonKey;
                  const count = activeSeriesDetail.info?.episodes?.[seasonKey]?.length || 0;
                  return (
                    <button
                      key={seasonKey}
                      onClick={() =>
                        setActiveSeriesDetail((prev) =>
                          prev ? { ...prev, selectedSeason: seasonKey } : null
                        )
                      }
                      className={`px-3 py-1.5 rounded-lg text-xs font-medium shrink-0 transition ${
                        isSelected
                          ? 'bg-blue-600 text-white shadow-md'
                          : 'bg-zinc-800 text-zinc-300 hover:bg-zinc-700'
                      }`}
                    >
                      Stagione {seasonKey} ({count})
                    </button>
                  );
                })}
              </div>
            )}

            {/* Episodes List Container */}
            <div className="flex-1 overflow-y-auto p-5 space-y-3">
              {activeSeriesDetail.isLoading ? (
                <div className="py-16 flex flex-col items-center justify-center">
                  <div className="w-10 h-10 border-4 border-blue-500/20 border-t-blue-500 rounded-full animate-spin mb-3"></div>
                  <span className="text-zinc-400 text-sm">Caricamento episodi in corso...</span>
                </div>
              ) : activeSeriesDetail.info?.episodes?.[activeSeriesDetail.selectedSeason] ? (
                <div className="grid grid-cols-1 md:grid-cols-2 gap-3">
                  {activeSeriesDetail.info.episodes[activeSeriesDetail.selectedSeason].map(
                    (episode) => (
                      <div
                        key={episode.id}
                        onClick={() =>
                          handlePlayEpisode(
                            activeSeriesDetail.series,
                            episode,
                            activeSeriesDetail.selectedSeason
                          )
                        }
                        className="group flex gap-3 p-3 bg-zinc-950/60 hover:bg-zinc-800/70 border border-zinc-800 hover:border-blue-500/50 rounded-xl transition cursor-pointer items-center"
                      >
                        {/* Thumbnail */}
                        <div className="w-24 h-16 rounded-lg bg-zinc-900 border border-zinc-800 overflow-hidden shrink-0 relative flex items-center justify-center">
                          {episode.info?.movie_image ? (
                            <img
                              src={episode.info.movie_image}
                              alt={episode.title}
                              className="w-full h-full object-cover"
                            />
                          ) : (
                            <Film className="w-6 h-6 text-zinc-600" />
                          )}
                          <div className="absolute inset-0 bg-black/40 group-hover:bg-blue-600/30 transition flex items-center justify-center">
                            <Play className="w-6 h-6 fill-white text-white drop-shadow group-hover:scale-110 transition" />
                          </div>
                        </div>

                        {/* Title & Plot */}
                        <div className="flex-1 min-w-0">
                          <div className="flex items-center justify-between gap-2">
                            <span className="text-xs font-semibold text-white group-hover:text-blue-400 transition truncate">
                              Ep. {episode.episode_num} - {episode.title || `Episodio ${episode.episode_num}`}
                            </span>
                            {episode.info?.duration && (
                              <span className="text-[11px] text-zinc-500 shrink-0 font-mono">
                                {formatDuration(episode.info.duration)}
                              </span>
                            )}
                          </div>
                          {episode.info?.plot && (
                            <p className="text-[11px] text-zinc-400 line-clamp-2 mt-1">
                              {episode.info.plot}
                            </p>
                          )}
                        </div>

                        {/* Download Episode Button */}
                        <button
                          onClick={(e) => {
                            e.stopPropagation();
                            startMediaDownload({
                              serverUrl,
                              username,
                              password,
                              type: 'episode',
                              streamId: episode.id,
                              title: episode.title || `Episodio ${episode.episode_num}`,
                              containerExtension: episode.container_extension || 'mp4',
                              poster: episode.info?.movie_image || activeSeriesDetail.series.cover,
                              seriesName: activeSeriesDetail.series.name,
                              seasonNum: Number(activeSeriesDetail.selectedSeason) || 1,
                              episodeNum: Number(episode.episode_num) || 1,
                            });
                          }}
                          className="p-2 rounded-lg bg-zinc-900 hover:bg-cyan-950/80 border border-zinc-800 hover:border-cyan-700 text-zinc-400 hover:text-cyan-300 transition shrink-0 cursor-pointer"
                          title="Scarica questo episodio"
                        >
                          <Download className="w-4 h-4" />
                        </button>
                      </div>
                    )
                  )}
                </div>
              ) : (
                <div className="py-12 text-center text-zinc-500">
                  Nessun episodio trovato per questa stagione.
                </div>
              )}
            </div>
          </div>
        </div>
      )}
    </div>
  );
};
