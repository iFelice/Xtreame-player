import { RemoteImage } from './RemoteImage';
import React, { useState, useMemo, useEffect, useRef } from 'react';
import {
  Search,
  Tv,
  Star,
  Play,
  X,
  Clock,
  ChevronUp,
  ChevronDown,
  ArrowDownUp,
  Radio,
  Download,
  Check,
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
import { VirtualizedMediaGrid } from './VirtualizedMediaGrid';
import { ListPositionIndicator } from './ListPositionIndicator';
import { triggerMediaDownload, isTvEnvironment } from '../utils/downloadHelper';
import { AppleDownloadLink } from './AppleDownloadLink';
import { useTouchCardMode } from '../utils/useTouchCardMode';
import { showsHoverVeil } from '../utils/touchDevice';
import { CollapsibleCategoryPanel } from './CollapsibleCategoryPanel';
import { STATIC_DEPLOY } from '../utils/deployTarget';

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
  const [, refreshFavorites] = useState(0);
  const seriesListRef = useRef<HTMLDivElement | null>(null);
  const isTv = isTvEnvironment();
  // Touch cards (TV excluded) open the series on a tap and must not render the
  // hover veil: it is invisible there but would still receive the taps.
  const touchCardMode = useTouchCardMode(isTv);

  // Always default to the first category to avoid freezing with 4,000+ series
  const [selectedCategory, setSelectedCategory] = useState<string>(() => {
    return categories[0]?.category_id ? String(categories[0].category_id) : '';
  });

  const [searchQuery, setSearchQuery] = useState<string>('');
  const [sortBy, setSortBy] = useState<'recent' | 'rating' | 'name' | 'id'>('recent');
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

  const scrollSeries = (direction: 'up' | 'down') => {
    if (seriesListRef.current) {
      const delta = direction === 'up' ? -360 : 360;
      seriesListRef.current.scrollBy({ top: delta, behavior: 'smooth' });
    }
  };

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

  // Natural list order preserved (all series visible and naturally scrollable)
  const visibleSeries = filteredSeries;

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

    // Close the season/episode dialog before handing control to the player.
    // Also clear externally requested series so the dialog cannot reopen on render.
    setActiveSeriesDetail(null);
    onClearSelectedSeries?.();
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
          contentListRef={seriesListRef}
          accent="series"
          panelId="series-category-panel"
        />

        {/* Right Column: Series in the Selected Category (extended down to bottom of page) */}
        <section className={`media-content-panel flex-1 w-full min-w-0 bg-surface-0/90 border border-separator rounded-3xl ${isTv ? 'p-4 sm:p-6' : 'p-2.5 md:p-6'} flex flex-col shadow-xl h-[calc(100vh-210px)] min-h-[680px]`}>
          {/* Header of the Selected Category */}
          <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-4 pb-4 border-b border-separator shrink-0">
            <div className="min-w-0">
              <h2 className="text-xl sm:text-2xl font-black text-label flex items-center gap-3 truncate">
                <Tv className="w-7 h-7 text-series shrink-0" />
                <span className="truncate">{currentCategory?.category_name || 'Serie TV'}</span>
              </h2>
              <ListPositionIndicator
                scrollRef={seriesListRef}
                total={filteredSeries.length}
                label="serie TV"
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
                  placeholder="Cerca serie TV in questa categoria..."
                  className="w-full pl-12 pr-4 py-2.5 bg-surface-0 border border-separator-strong/80 rounded-2xl text-xs sm:text-base text-label placeholder-label-tertiary focus:outline-hidden focus:border-series transition shadow-inner font-medium"
                />
              </div>

              {/* Up/Down Scroll Buttons for Series */}
              <div className="flex items-center gap-1 bg-surface-0 border border-separator p-1 rounded-2xl">
                <button
                  type="button"
                  onClick={() => scrollSeries('up')}
                  className="p-2 rounded-xl bg-surface-1 hover:bg-surface-2 text-label-secondary hover:text-label transition cursor-pointer"
                  title="Scorri serie su (▲)"
                >
                  <ChevronUp className="w-4 h-4" />
                </button>
                <button
                  type="button"
                  onClick={() => scrollSeries('down')}
                  className="p-2 rounded-xl bg-surface-1 hover:bg-surface-2 text-label-secondary hover:text-label transition cursor-pointer"
                  title="Scorri serie giù (▼)"
                >
                  <ChevronDown className="w-4 h-4" />
                </button>
              </div>
            </div>
          </div>

          {/* Series Grid taking full remaining height */}
          <div ref={seriesListRef} className="flex-1 min-h-0 overflow-y-auto scroll-smooth pr-1.5 mt-3">
            {isLoading ? (
              <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 xl:grid-cols-5 2xl:grid-cols-6 gap-4">
                {Array.from({ length: 10 }).map((_, i) => (
                  <div key={i} className="aspect-2/3 bg-surface-0 animate-pulse rounded-xl border border-separator"></div>
                ))}
              </div>
            ) : filteredSeries.length === 0 ? (
              <div className="py-20 text-center text-label-secondary bg-surface-0/30 rounded-2xl border border-dashed border-separator">
                <Tv className="w-14 h-14 mx-auto text-label-tertiary mb-3" />
                <p className="text-base font-semibold text-label-secondary">Nessuna serie TV trovata in questa categoria</p>
                <p className="text-xs text-label-tertiary mt-1">
                  {searchQuery ? 'Prova a modificare i termini di ricerca' : 'Seleziona un\'altra categoria a sinistra'}
                </p>
              </div>
            ) : (
              <VirtualizedMediaGrid
                items={visibleSeries}
                scrollRef={seriesListRef}
                getKey={(series) => series.series_id}
                renderItem={(series, index) => {
                  const isFav = storage.isFavorite(`series_${series.series_id}`, accountKey);
                  const isPlayingThis =
                    activeMediaId === `series_${series.series_id}` ||
                    (activeMediaId && activeMediaId.startsWith(`series_${series.series_id}_`));

                  return (
                    <div
                      key={series.series_id}
                      data-media-index={index + 1}
                      tabIndex={0}
                      onClick={() => handleOpenSeries(series)}
                      className={`group relative rounded-2xl overflow-hidden shadow-lg transition-all duration-300 flex flex-col cursor-pointer ${
                        isPlayingThis
                          ? 'bg-series/15 border-2 border-series ring-2 ring-series/40 shadow-2xl scale-[1.02]'
                          : 'bg-surface-0 border border-separator/80 hover:border-series/60 hover:-translate-y-1'
                      }`}
                    >
                    {/* Cover Container */}
                    <div className="relative aspect-2/3 bg-surface-0 overflow-hidden">
                      {series.cover ? (
                        <RemoteImage
                          src={getSecureImageUrl(series.cover)}
                          alt={series.name}
                          referrerPolicy="no-referrer"
                          loading="lazy"
                          decoding="async"
                          onError={(e) => {
                            (e.target as HTMLElement).style.display = 'none';
                          }}
                          className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-300"
                        />
                      ) : null}

                      {/* Fallback TV icon */}
                      <div className="absolute inset-0 -z-10 flex flex-col items-center justify-center p-3 text-label-tertiary bg-surface-0">
                        <Tv className="w-12 h-12 mb-2 opacity-50 text-series" />
                        <span className="text-xs text-center line-clamp-2 text-label-secondary">
                          {series.name}
                        </span>
                      </div>

                      {/* Rating */}
                      {series.rating && series.rating !== '0' && (
                        <div className="absolute top-2 left-2 px-2.5 py-0.5 rounded-lg bg-surface-0/85 text-favorite border border-favorite/30 text-xs font-bold flex items-center gap-1">
                          <Star className="w-3.5 h-3.5 fill-favorite" />
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
                          refreshFavorites((value) => value + 1);
                        }}
                        aria-label={isFav ? "Rimuovi dai preferiti" : "Aggiungi ai preferiti"}
                        className="absolute z-30 top-2 right-2 p-2 rounded-xl bg-surface-1/80 hover:bg-surface-1 text-label-secondary hover:text-favorite transition cursor-pointer"
                      >
                        <Star className={`w-4 h-4 ${isFav ? 'fill-favorite text-favorite' : ''}`} />
                      </button>

                      {/* Hover Overlay (desktop/TV only) */}
                      {showsHoverVeil(touchCardMode) && (
                      <div className="absolute inset-0 bg-surface-1/75 opacity-0 group-hover:opacity-100 transition-opacity duration-200 flex flex-col items-center justify-center p-3 gap-2">
                        <span className="px-4 py-2 rounded-xl bg-series hover:brightness-110 text-on-accent text-xs font-bold flex items-center gap-1.5 shadow-lg transform transition hover:scale-105">
                          <Play className="w-4 h-4 fill-white" />
                          Sfoglia Episodi
                        </span>
                      </div>
                      )}
                    </div>

                    {/* Card Title & Info */}
                    <div className="p-3 flex-1 flex flex-col justify-between">
                      <h3
                        className="text-sm sm:text-base font-bold text-label line-clamp-2 group-hover:text-series transition-colors"
                        title={series.name}
                      >
                        {series.name}
                      </h3>
                      <div className="flex items-center justify-between text-xs text-label-tertiary mt-2 pt-1.5 border-t border-separator/60 ">
                        <span>SERIE TV</span>
                        <span>#{series.series_id}</span>
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

      {/* Episode Selection Modal */}
      {activeSeriesDetail && (
        <div className="fixed inset-0 z-50 flex items-center justify-center safe-area-overlay bg-black/50 animate-in fade-in">
          <div className="glass border border-glass-edge rounded-3xl max-w-4xl w-full overflow-hidden shadow-2xl flex flex-col max-h-[90vh]">
            {/* Modal Header */}
            <div className="p-4 sm:p-5 border-b border-separator flex items-center justify-between">
              <div className="flex items-center gap-3 min-w-0 pr-4">
                <div className="p-2.5 rounded-2xl bg-series/20 text-series border border-series/30 shrink-0">
                  <Tv className="w-6 h-6" />
                </div>
                <div className="min-w-0">
                  <h3 className="text-base sm:text-lg font-bold text-label truncate">
                    {activeSeriesDetail.series.name}
                  </h3>
                  <p className="text-xs sm:text-sm text-label-secondary">Seleziona stagione ed episodio</p>
                </div>
              </div>

              <button
                onClick={() => {
                  setActiveSeriesDetail(null);
                  if (onClearSelectedSeries) onClearSelectedSeries();
                }}
                className="p-1.5 rounded-xl text-label-secondary hover:text-label hover:bg-surface-1 transition cursor-pointer"
              >
                <X className="w-5 h-5" />
              </button>
            </div>

            {/* Modal Content */}
            <div className="p-4 sm:p-6 overflow-y-auto space-y-6">
              {activeSeriesDetail.isLoading ? (
                <div className="py-20 flex flex-col items-center justify-center text-label-secondary">
                  <div className="w-12 h-12 border-4 border-series/20 border-t-series rounded-full animate-spin mb-3"></div>
                  <span className="text-sm font-medium">Caricamento stagioni ed episodi...</span>
                </div>
              ) : activeSeriesDetail.info?.episodes && Object.keys(activeSeriesDetail.info.episodes).length > 0 ? (
                <>
                  {/* Season Selection Pills */}
                  <div>
                    <h4 className="text-xs sm:text-sm font-bold text-label-secondary mb-3 uppercase tracking-wider">
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
                              ? 'bg-series text-on-accent shadow-md'
                              : 'bg-surface-0 hover:bg-surface-1 text-label-secondary border border-separator'
                          }`}
                        >
                          Stagione {seasonNum}
                        </button>
                      ))}
                    </div>
                  </div>

                  {/* Episodes List for Selected Season */}
                  <div>
                    <h4 className="text-xs sm:text-sm font-bold text-label-secondary mb-3 uppercase tracking-wider">
                      Episodi (Stagione {activeSeriesDetail.selectedSeason})
                    </h4>
                    <div className="grid grid-cols-1 sm:grid-cols-2 gap-3">
                      {(
                        activeSeriesDetail.info.episodes[activeSeriesDetail.selectedSeason] || []
                      ).map((ep) => (
                        <div
                          key={ep.id}
                          className="flex items-center justify-between p-3.5 rounded-2xl bg-surface-0 border border-separator/80 hover:border-series/40 transition gap-3 shadow-sm"
                        >
                          <div className="min-w-0 flex-1">
                            <div className="flex items-center gap-2 mb-1">
                              <span className="text-xs sm:text-sm  font-bold text-series shrink-0">
                                E{ep.episode_num}
                              </span>
                              <h5 className="text-xs sm:text-sm font-bold text-label truncate" title={ep.title}>
                                {ep.title || `Episodio ${ep.episode_num}`}
                              </h5>
                            </div>
                            {ep.info?.duration_secs && (
                              <p className="text-xs text-label-secondary ">
                                {formatDuration(ep.info.duration_secs)}
                              </p>
                            )}
                          </div>

                          <div className="flex items-center gap-2 shrink-0">
                            {!STATIC_DEPLOY && !isTv && (
                              <button
                                type="button"
                                onClick={(e) => {
                                  e.stopPropagation();
                                  e.preventDefault();
                                  const ext = ep.container_extension || 'mp4';
                                  const streamUrl = buildStreamUrl(
                                    serverUrl,
                                    username,
                                    password,
                                    'series',
                                    ep.id,
                                    ext,
                                    false
                                  );
                                  const title = `${activeSeriesDetail.series.name} - S${activeSeriesDetail.selectedSeason}E${ep.episode_num} - ${ep.title || 'Episodio'}`;
                                  triggerMediaDownload(
                                    streamUrl,
                                    title,
                                    'episode',
                                    ep.info?.movie_image || activeSeriesDetail.series.cover,
                                    ext,
                                    accountKey
                                  );
                                }}
                                title="Scarica nella cartella locale dell’app"
                                aria-label="Scarica episodio"
                                className="p-2 rounded-xl bg-surface-1 hover:bg-surface-2 text-series hover:text-label transition cursor-pointer"
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
                                'series',
                                ep.id,
                                ep.container_extension || 'mp4',
                                false
                              )}
                              containerExtension={ep.container_extension}
                              variant="compact"
                            />

                            <button
                              onClick={() =>
                                handlePlayEpisode(ep, activeSeriesDetail.selectedSeason)
                              }
                              className="px-3.5 py-1.5 rounded-xl bg-series hover:brightness-110 text-on-accent text-xs sm:text-sm font-bold flex items-center gap-1.5 transition shrink-0 cursor-pointer shadow-md"
                            >
                              <Play className="w-3.5 h-3.5 fill-white" />
                              Guarda
                            </button>
                          </div>
                        </div>
                      ))}
                    </div>
                  </div>
                </>
              ) : (
                <div className="py-12 text-center text-label-secondary text-sm">
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
