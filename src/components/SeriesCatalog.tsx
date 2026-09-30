import React, { useState, useMemo, useEffect } from 'react';
import {
  Search,
  Tv,
  Star,
  Play,
  Layers,
  X,
  Clock,
  ChevronRight,
  ArrowDownUp,
  Radio,
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
import { getSecureImageUrl } from '../utils/imageUrl';

interface SeriesCatalogProps {
  categories: XtreamCategory[];
  seriesList: XtreamSeries[];
  serverUrl: string;
  username: string;
  password: string;
  onPlay: (item: PlayableMediaItem) => void;
  activeMediaId?: string | null;
  isLoading?: boolean;
  selectedSeriesId?: string | number | null;
  onClearSelectedSeries?: () => void;
  accountKey?: string;
}

export const SeriesCatalog: React.FC<SeriesCatalogProps> = ({
  categories,
  seriesList,
  serverUrl,
  username,
  password,
  onPlay,
  activeMediaId,
  isLoading = false,
  selectedSeriesId,
  onClearSelectedSeries,
  accountKey,
}) => {
  // Always default to the first category to avoid freezing with 4,000+ series
  const [selectedCategory, setSelectedCategory] = useState<string>(() => {
    return categories[0]?.category_id ? String(categories[0].category_id) : '';
  });

  const [categorySearch, setCategorySearch] = useState<string>('');
  const [searchQuery, setSearchQuery] = useState<string>('');
  const [sortBy, setSortBy] = useState<'recent' | 'rating' | 'name' | 'id'>('recent');
  const [visibleLimit, setVisibleLimit] = useState<number>(40);
  const [activeSeriesDetail, setActiveSeriesDetail] = useState<{
    series: XtreamSeries;
    info: XtreamSeriesInfo | null;
    isLoading: boolean;
    selectedSeason: string;
  } | null>(null);

  // Sync first category if categories arrive asynchronously
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

  // Direct modal trigger if selectedSeriesId is passed
  useEffect(() => {
    if (selectedSeriesId && seriesList.length > 0) {
      const found = seriesList.find((s) => String(s.series_id) === String(selectedSeriesId));
      if (found) {
        handleOpenSeries(found);
      }
    }
  }, [selectedSeriesId, seriesList]);

  // Compute category counts
  const categoryCounts = useMemo(() => {
    const counts: Record<string, number> = {};
    for (const item of seriesList) {
      const cat = item.category_id || 'uncategorized';
      counts[cat] = (counts[cat] || 0) + 1;
    }
    return counts;
  }, [seriesList]);

  const filteredCategories = useMemo(() => {
    if (!categorySearch.trim()) return categories;
    const q = categorySearch.toLowerCase();
    return categories.filter((c) => c.category_name.toLowerCase().includes(q));
  }, [categories, categorySearch]);

  const currentCategory = useMemo(() => {
    return categories.find((c) => String(c.category_id) === String(selectedCategory));
  }, [categories, selectedCategory]);

  // Filtered and sorted series for selected category only
  const filteredSeries = useMemo(() => {
    if (!selectedCategory) return [];
    const matched = seriesList.filter((item) => {
      if (String(item.category_id) !== String(selectedCategory)) return false;
      if (!searchQuery.trim()) return true;
      return item.name.toLowerCase().includes(searchQuery.toLowerCase());
    });

    return sortSeriesList(matched, sortBy);
  }, [seriesList, selectedCategory, searchQuery, sortBy]);

  const visibleSeries = useMemo(() => {
    return filteredSeries.slice(0, visibleLimit);
  }, [filteredSeries, visibleLimit]);

  const handleOpenSeries = async (series: XtreamSeries) => {
    setActiveSeriesDetail({
      series,
      info: null,
      isLoading: true,
      selectedSeason: '1',
    });

    try {
      const data = await xtreamClient.getSeriesInfo(
        serverUrl,
        username,
        password,
        series.series_id
      );

      const firstSeason =
        data && data.episodes
          ? Object.keys(data.episodes)[0] || '1'
          : '1';

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

  const handlePlayEpisode = (episode: XtreamEpisode, seasonNum: string) => {
    if (!activeSeriesDetail) return;
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
      id: `episode_${episode.id}`,
      title: `${activeSeriesDetail.series.name} - S${seasonNum}E${episode.episode_num}: ${episode.title || 'Episodio'}`,
      type: 'series',
      streamUrl,
      poster: episode.info?.movie_image || activeSeriesDetail.series.cover,
      categoryName: currentCategory?.category_name || 'Serie TV',
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
              <Layers className="w-5 h-5 text-blue-400" />
              <h3 className="text-sm sm:text-base font-bold text-white tracking-wide uppercase">
                Categorie Serie ({categories.length})
              </h3>
            </div>
            <span className="text-xs text-zinc-400 font-mono font-semibold">SERIE</span>
          </div>

          {/* Search Category */}
          <div className="relative">
            <Search className="w-4 h-4 absolute left-3.5 top-1/2 -translate-y-1/2 text-zinc-500" />
            <input
              type="text"
              value={categorySearch}
              onChange={(e) => setCategorySearch(e.target.value)}
              placeholder="Filtra categorie serie..."
              className="w-full pl-9 pr-3.5 py-2.5 bg-zinc-950 border border-zinc-800 rounded-xl text-sm text-white placeholder-zinc-500 focus:outline-hidden focus:border-blue-500 transition"
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
                        ? 'bg-blue-600 text-white shadow-lg shadow-blue-950/50'
                        : 'text-zinc-300 hover:bg-zinc-850 hover:text-white'
                    }`}
                  >
                    <span className="truncate pr-2">{cat.category_name}</span>
                    <span
                      className={`text-xs font-mono font-bold px-2 py-0.5 rounded-full shrink-0 ${
                        isSelected
                          ? 'bg-blue-800/90 text-blue-100'
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

        {/* Right Column: Series in the Selected Category */}
        <section className="flex-1 w-full min-w-0 bg-zinc-900/40 border border-zinc-800/80 rounded-2xl p-4 sm:p-6 flex flex-col space-y-4 shadow-xl">
          {/* Header of the Selected Category */}
          <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-3 pb-4 border-b border-zinc-800">
            <div className="min-w-0">
              <h2 className="text-lg sm:text-xl font-bold text-white flex items-center gap-2.5 truncate">
                <Tv className="w-6 h-6 text-blue-400 shrink-0" />
                <span className="truncate">{currentCategory?.category_name || 'Serie TV'}</span>
              </h2>
              <p className="text-xs sm:text-sm text-zinc-400 mt-1">
                Mostrando <strong className="text-zinc-200">{filteredSeries.length}</strong> serie TV
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
                  placeholder="Cerca serie TV in questa categoria..."
                  className="w-full pl-9 pr-3.5 py-2 bg-zinc-950 border border-zinc-700/80 rounded-xl text-xs sm:text-sm text-white placeholder-zinc-500 focus:outline-hidden focus:border-blue-500 transition"
                />
              </div>
            </div>
          </div>

          {/* Series Grid */}
          {isLoading ? (
            <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 xl:grid-cols-5 2xl:grid-cols-6 gap-4">
              {Array.from({ length: 10 }).map((_, i) => (
                <div key={i} className="aspect-2/3 bg-zinc-900 animate-pulse rounded-xl border border-zinc-800"></div>
              ))}
            </div>
          ) : filteredSeries.length === 0 ? (
            <div className="py-20 text-center text-zinc-400 bg-zinc-900/30 rounded-2xl border border-dashed border-zinc-800">
              <Tv className="w-14 h-14 mx-auto text-zinc-600 mb-3" />
              <p className="text-base font-semibold text-zinc-300">Nessuna serie TV trovata in questa categoria</p>
              <p className="text-xs text-zinc-500 mt-1">
                {searchQuery ? 'Prova a modificare i termini di ricerca' : 'Seleziona un\'altra categoria a sinistra'}
              </p>
            </div>
          ) : (
            <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 xl:grid-cols-5 2xl:grid-cols-6 gap-4 sm:gap-5">
              {visibleSeries.map((series) => {
                const isFav = storage.isFavorite(`series_${series.series_id}`, accountKey);

                return (
                  <div
                    key={series.series_id}
                    onClick={() => handleOpenSeries(series)}
                    className="group relative bg-zinc-900 border border-zinc-800 hover:border-blue-500/60 rounded-2xl overflow-hidden shadow-lg transition-all duration-300 hover:-translate-y-1 flex flex-col cursor-pointer"
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
                        <Tv className="w-12 h-12 mb-2 opacity-50 text-blue-500" />
                        <span className="text-xs text-center line-clamp-2 text-zinc-400">
                          {series.name}
                        </span>
                      </div>

                      {/* Rating */}
                      {series.rating && series.rating !== '0' && (
                        <div className="absolute top-2 left-2 px-2.5 py-0.5 rounded-lg bg-black/80 backdrop-blur-xs text-amber-400 border border-amber-500/30 text-xs font-bold flex items-center gap-1">
                          <Star className="w-3.5 h-3.5 fill-amber-400" />
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
                          storage.toggleFavorite(item, accountKey);
                          setSelectedCategory((c) => c);
                        }}
                        aria-label={isFav ? "Rimuovi dai preferiti" : "Aggiungi ai preferiti"}
                        className="absolute top-2 right-2 p-2 rounded-xl bg-black/80 hover:bg-black text-zinc-300 hover:text-amber-400 transition cursor-pointer"
                      >
                        <Star className={`w-4 h-4 ${isFav ? 'fill-amber-400 text-amber-400' : ''}`} />
                      </button>

                      {/* Hover Overlay */}
                      <div className="absolute inset-0 bg-black/75 opacity-0 group-hover:opacity-100 transition-opacity duration-200 flex flex-col items-center justify-center p-3 gap-2">
                        <span className="px-4 py-2 rounded-xl bg-blue-600 hover:bg-blue-500 text-white text-xs font-bold flex items-center gap-1.5 shadow-lg transform transition hover:scale-105">
                          <Play className="w-4 h-4 fill-white" />
                          Sfoglia Episodi
                        </span>
                      </div>
                    </div>

                    {/* Card Title & Info */}
                    <div className="p-3 flex-1 flex flex-col justify-between">
                      <h3
                        className="text-sm sm:text-base font-bold text-zinc-200 line-clamp-2 group-hover:text-blue-400 transition-colors"
                        title={series.name}
                      >
                        {series.name}
                      </h3>
                      <div className="flex items-center justify-between text-xs text-zinc-500 mt-2 pt-1.5 border-t border-zinc-800/60 font-mono">
                        <span>SERIE TV</span>
                        <span>#{series.series_id}</span>
                      </div>
                    </div>
                  </div>
                );
              })}
            </div>
          )}

          {/* Load More Button */}
          {filteredSeries.length > visibleLimit && (
            <div className="pt-4 text-center">
              <button
                type="button"
                onClick={() => setVisibleLimit((prev) => prev + 40)}
                className="px-6 py-3 rounded-xl bg-zinc-900 hover:bg-zinc-850 border border-zinc-800 text-sm font-bold text-zinc-200 hover:text-white transition cursor-pointer shadow-lg inline-flex items-center gap-2"
              >
                <span>Mostra altre serie TV ({filteredSeries.length - visibleLimit} rimanenti)</span>
                <ChevronRight className="w-4 h-4 text-blue-400" />
              </button>
            </div>
          )}
        </section>
      </div>

      {/* Episode Selection Modal */}
      {activeSeriesDetail && (
        <div className="fixed inset-0 z-50 flex items-center justify-center p-3 sm:p-4 bg-black/85 backdrop-blur-sm animate-in fade-in">
          <div className="bg-zinc-950 border border-zinc-800 rounded-3xl max-w-4xl w-full overflow-hidden shadow-2xl flex flex-col max-h-[90vh]">
            {/* Modal Header */}
            <div className="p-4 sm:p-5 border-b border-zinc-800 flex items-center justify-between bg-zinc-900/50">
              <div className="flex items-center gap-3 min-w-0 pr-4">
                <div className="p-2.5 rounded-2xl bg-blue-500/20 text-blue-400 border border-blue-500/30 shrink-0">
                  <Tv className="w-6 h-6" />
                </div>
                <div className="min-w-0">
                  <h3 className="text-base sm:text-lg font-bold text-white truncate">
                    {activeSeriesDetail.series.name}
                  </h3>
                  <p className="text-xs sm:text-sm text-zinc-400">Seleziona stagione ed episodio</p>
                </div>
              </div>

              <button
                onClick={() => {
                  setActiveSeriesDetail(null);
                  if (onClearSelectedSeries) onClearSelectedSeries();
                }}
                className="p-1.5 rounded-xl text-zinc-400 hover:text-white hover:bg-zinc-800 transition cursor-pointer"
              >
                <X className="w-5 h-5" />
              </button>
            </div>

            {/* Modal Content */}
            <div className="p-4 sm:p-6 overflow-y-auto space-y-6">
              {activeSeriesDetail.isLoading ? (
                <div className="py-20 flex flex-col items-center justify-center text-zinc-400">
                  <div className="w-12 h-12 border-4 border-blue-500/20 border-t-blue-500 rounded-full animate-spin mb-3"></div>
                  <span className="text-sm font-medium">Caricamento stagioni ed episodi...</span>
                </div>
              ) : activeSeriesDetail.info?.episodes && Object.keys(activeSeriesDetail.info.episodes).length > 0 ? (
                <>
                  {/* Season Selection Pills */}
                  <div>
                    <h4 className="text-xs sm:text-sm font-bold text-zinc-400 mb-3 uppercase tracking-wider">
                      Stagioni
                    </h4>
                    <div className="flex flex-wrap gap-2">
                      {Object.keys(activeSeriesDetail.info.episodes).map((seasonNum) => (
                        <button
                          key={seasonNum}
                          onClick={() =>
                            setActiveSeriesDetail((prev) =>
                              prev ? { ...prev, selectedSeason: seasonNum } : null
                            )
                          }
                          className={`px-4 py-2 rounded-xl text-xs sm:text-sm font-semibold transition cursor-pointer ${
                            activeSeriesDetail.selectedSeason === seasonNum
                              ? 'bg-blue-600 text-white shadow-md'
                              : 'bg-zinc-900 hover:bg-zinc-800 text-zinc-300 border border-zinc-800'
                          }`}
                        >
                          Stagione {seasonNum}
                        </button>
                      ))}
                    </div>
                  </div>

                  {/* Episodes List for Selected Season */}
                  <div>
                    <h4 className="text-xs sm:text-sm font-bold text-zinc-400 mb-3 uppercase tracking-wider">
                      Episodi (Stagione {activeSeriesDetail.selectedSeason})
                    </h4>
                    <div className="grid grid-cols-1 sm:grid-cols-2 gap-3">
                      {(
                        activeSeriesDetail.info.episodes[activeSeriesDetail.selectedSeason] || []
                      ).map((ep) => (
                        <div
                          key={ep.id}
                          className="flex items-center justify-between p-3.5 rounded-2xl bg-zinc-900 border border-zinc-800/80 hover:border-blue-500/40 transition gap-3 shadow-sm"
                        >
                          <div className="min-w-0 flex-1">
                            <div className="flex items-center gap-2 mb-1">
                              <span className="text-xs sm:text-sm font-mono font-bold text-blue-400 shrink-0">
                                E{ep.episode_num}
                              </span>
                              <h5 className="text-xs sm:text-sm font-bold text-white truncate" title={ep.title}>
                                {ep.title || `Episodio ${ep.episode_num}`}
                              </h5>
                            </div>
                            {ep.info?.duration_secs && (
                              <p className="text-xs text-zinc-400 font-mono">
                                {formatDuration(ep.info.duration_secs)}
                              </p>
                            )}
                          </div>

                          <button
                            onClick={() =>
                              handlePlayEpisode(ep, activeSeriesDetail.selectedSeason)
                            }
                            className="px-3 py-1.5 rounded-xl bg-blue-600 hover:bg-blue-500 text-white text-xs sm:text-sm font-bold flex items-center gap-1.5 transition shrink-0 cursor-pointer shadow-md"
                          >
                            <Play className="w-3.5 h-3.5 fill-white" />
                            Guarda
                          </button>
                        </div>
                      ))}
                    </div>
                  </div>
                </>
              ) : (
                <div className="py-12 text-center text-zinc-400 text-sm">
                  Nessun episodio disponibile per questa serie.
                </div>
              )}
            </div>
          </div>
        </div>
      )}
    </div>
  );
};
