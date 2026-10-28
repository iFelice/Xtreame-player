import { RemoteImage } from './RemoteImage';
import React, { useState, useMemo } from 'react';
import {
  Sparkles,
  Film,
  Tv,
  Star,
  Play,
  Calendar,
  Clock,
  ChevronRight,
  TrendingUp,
  Download,
} from 'lucide-react';
import {
  XtreamVodStream,
  XtreamSeries,
  PlayableMediaItem,
} from '../types/xtream';
import { sortVodStreams, sortSeriesList, formatRecentDate } from '../utils/recentSorting';
import { buildStreamUrl } from '../utils/parseXtreamUrl';
import { storage } from '../services/storage';
import { isTvEnvironment, triggerMediaDownload } from '../utils/downloadHelper';
import { getSecureImageUrl } from '../utils/imageUrl';
import { STATIC_DEPLOY } from '../utils/deployTarget';

interface RecentProductsShelfProps {
  vodStreams: XtreamVodStream[];
  seriesList: XtreamSeries[];
  serverUrl: string;
  username: string;
  password: string;
  onPlay: (item: PlayableMediaItem) => void;
  onOpenSeries: (series: XtreamSeries) => void;
  onNavigateToTab: (tab: 'movies' | 'series') => void;
}

export const RecentProductsShelf: React.FC<RecentProductsShelfProps> = ({
  vodStreams,
  seriesList,
  serverUrl,
  username,
  password,
  onPlay,
  onOpenSeries,
  onNavigateToTab,
}) => {
  const isTv = isTvEnvironment();
  const [activeType, setActiveType] = useState<'movies' | 'series'>('movies');
  const [displayCount, setDisplayCount] = useState<number>(18);

  // Compute sorted items
  const recentMovies = useMemo(() => {
    return sortVodStreams(vodStreams, 'recent').slice(0, displayCount);
  }, [vodStreams, displayCount]);

  const recentSeries = useMemo(() => {
    return sortSeriesList(seriesList, 'recent').slice(0, displayCount);
  }, [seriesList, displayCount]);

  const handlePlayMovie = (movie: XtreamVodStream) => {
    const ext = movie.container_extension || 'mp4';
    const streamUrl = buildStreamUrl(
      serverUrl,
      username,
      password,
      'movie',
      movie.stream_id,
      ext,
      false
    );

    const mediaItem: PlayableMediaItem = {
      id: `movie_${movie.stream_id}`,
      title: movie.name,
      type: 'movie',
      streamUrl,
      poster: movie.stream_icon,
      rating: movie.rating,
      containerExtension: ext,
      year: movie.year,
      categoryName: 'Novità Recente',
    };

    onPlay(mediaItem);
  };

  if (vodStreams.length === 0 && seriesList.length === 0) return null;

  return (
    <section className="bg-surface-0/60 border border-separator rounded-3xl p-5 sm:p-6 shadow-xl space-y-5">
      {/* Shelf Header */}
      <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-4 border-b border-separator/80 pb-4">
        <div className="flex items-center gap-3">
          <div className="w-10 h-10 rounded-2xl bg-fresh/10 text-fresh border border-fresh/30 flex items-center justify-center">
            <Sparkles className="w-5 h-5 text-fresh" />
          </div>
          <div>
            <div className="flex items-center gap-2">
              <h2 className="text-base sm:text-lg font-bold text-label tracking-tight">
                Ultimi Arrivi & Aggiunti di Recente
              </h2>
              <span className="px-2 py-0.5 rounded-full bg-fresh text-on-accent text-[10px] font-semibold border border-fresh/50">
                Novità
              </span>
            </div>
            <p className="text-xs text-label-secondary">
              I film e le serie TV caricati più di recente sul server Xtream
            </p>
          </div>
        </div>

        {/* Tab switch buttons (Film vs Serie) */}
        <div className="flex items-center gap-2">
          {vodStreams.length > 0 && (
            <button
              onClick={() => setActiveType('movies')}
              className={`flex items-center gap-1.5 px-3.5 py-1.5 rounded-xl text-xs font-medium transition cursor-pointer ${
                activeType === 'movies'
                  ? 'bg-accent text-on-accent shadow-md'
                  : 'bg-surface-0 text-label-secondary hover:text-label border border-separator'
              }`}
            >
              <Film className="w-3.5 h-3.5" />
              Ultimi Film ({vodStreams.length})
            </button>
          )}

          {seriesList.length > 0 && (
            <button
              onClick={() => setActiveType('series')}
              className={`flex items-center gap-1.5 px-3.5 py-1.5 rounded-xl text-xs font-medium transition cursor-pointer ${
                activeType === 'series'
                  ? 'bg-series text-on-accent shadow-md'
                  : 'bg-surface-0 text-label-secondary hover:text-label border border-separator'
              }`}
            >
              <Tv className="w-3.5 h-3.5" />
              Ultime Serie ({seriesList.length})
            </button>
          )}
        </div>
      </div>

      {/* Grid of recent items */}
      {activeType === 'movies' ? (
        <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-6 gap-3.5">
          {recentMovies.map((movie) => {
            const isFav = storage.isFavorite(`movie_${movie.stream_id}`);
            const dateStr = formatRecentDate(movie.added);
            return (
              <div
                key={movie.stream_id}
                onClick={() => handlePlayMovie(movie)}
                className="group relative bg-surface-0 border border-separator/90 hover:border-accent/60 rounded-xl overflow-hidden shadow-lg transition-all duration-300 hover:-translate-y-1 flex flex-col cursor-pointer"
              >
                {/* Poster */}
                <div className="relative aspect-2/3 bg-surface-0 overflow-hidden">
                  {movie.stream_icon ? (
                    <RemoteImage
                      src={getSecureImageUrl(movie.stream_icon)}
                      alt={movie.name}
                      referrerPolicy="no-referrer"
                      loading="lazy"
                      onError={(e) => {
                        (e.target as HTMLElement).style.display = 'none';
                      }}
                      className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-300"
                    />
                  ) : null}

                  {/* Fallback film icon */}
                  <div className="absolute inset-0 -z-10 flex flex-col items-center justify-center p-3 text-label-tertiary bg-surface-0">
                    <Film className="w-8 h-8 mb-1.5 opacity-50" />
                    <span className="text-[10px] text-center line-clamp-2 text-label-secondary">
                      {movie.name}
                    </span>
                  </div>

                  {/* Date Added Badge */}
                  <div className="absolute top-2 left-2 px-2 py-0.5 rounded-md bg-surface-0/85 text-accent-strong border border-accent/30 text-[10px] font-medium flex items-center gap-1">
                    <Calendar className="w-3 h-3 text-accent-strong" />
                    {dateStr}
                  </div>

                  {/* Rating */}
                  {movie.rating && movie.rating !== '0' && (
                    <div className="absolute bottom-2 left-2 px-1.5 py-0.5 rounded bg-surface-0/85 text-favorite border border-favorite/30 text-[10px] font-semibold flex items-center gap-1">
                      <Star className="w-2.5 h-2.5 fill-favorite" />
                      {typeof movie.rating === 'number' ? movie.rating.toFixed(1) : movie.rating}
                    </div>
                  )}

                  {/* Favorite button */}
                  <button
                    onClick={(e) => {
                      e.stopPropagation();
                      const item: PlayableMediaItem = {
                        id: `movie_${movie.stream_id}`,
                        title: movie.name,
                        type: 'movie',
                        streamUrl: buildStreamUrl(
                          serverUrl,
                          username,
                          password,
                          'movie',
                          movie.stream_id,
                          movie.container_extension || 'mp4',
                          false
                        ),
                        poster: movie.stream_icon,
                        containerExtension: movie.container_extension,
                      };
                      storage.toggleFavorite(item);
                      setDisplayCount((c) => c);
                    }}
                    aria-label={isFav ? "Rimuovi dai preferiti" : "Aggiungi ai preferiti"}
                    className="absolute top-2 right-2 p-1.5 rounded-lg bg-surface-1/70 hover:bg-surface-1 text-label-secondary hover:text-favorite transition"
                  >
                    <Star
                      className={`w-3.5 h-3.5 ${isFav ? 'fill-favorite text-favorite' : ''}`}
                    />
                  </button>

                  {/* Hover play & download buttons */}
                  <div className="absolute inset-0 bg-surface-1/70 opacity-0 group-hover:opacity-100 transition-opacity flex flex-col items-center justify-center gap-2">
                    <div className="w-11 h-11 rounded-full bg-accent flex items-center justify-center text-on-accent shadow-xl transform group-hover:scale-110 transition">
                      <Play className="w-5 h-5 ml-0.5 fill-white" />
                    </div>

                    {!STATIC_DEPLOY && !isTv && (
                      <button
                        onClick={(e) => {
                          e.stopPropagation();
                          const extension = movie.container_extension || 'mp4';
                          const streamUrl = buildStreamUrl(
                            serverUrl,
                            username,
                            password,
                            'movie',
                            movie.stream_id,
                            extension,
                            false
                          );
                          void triggerMediaDownload(
                            streamUrl,
                            movie.name,
                            'movie',
                            movie.stream_icon,
                            extension
                          );
                        }}
                        className="p-2 rounded-lg bg-surface-0/90 text-label-secondary hover:bg-series hover:text-on-accent border border-separator-strong hover:border-series transition"
                        title="Scarica nella cartella locale dell’app"
                        aria-label="Scarica film"
                      >
                        <Download className="w-4 h-4" />
                      </button>
                    )}
                  </div>
                </div>

                {/* Info */}
                <div className="p-2.5 flex-1 flex flex-col justify-between">
                  <h4
                    className="text-xs font-medium text-label line-clamp-2 group-hover:text-accent-strong transition-colors"
                    title={movie.name}
                  >
                    {movie.name}
                  </h4>
                  <div className="flex items-center justify-between text-[10px] text-label-tertiary mt-2 pt-1 border-t border-separator">
                    <span className="uppercase ">.{movie.container_extension || 'mp4'}</span>
                    <span className=" text-label-secondary">#{movie.stream_id}</span>
                  </div>
                </div>
              </div>
            );
          })}
        </div>
      ) : (
        <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-6 gap-3.5">
          {recentSeries.map((series) => {
            const isFav = storage.isFavorite(`series_${series.series_id}`);
            const dateStr = formatRecentDate(series.last_modified || series.releaseDate);
            return (
              <div
                key={series.series_id}
                onClick={() => onOpenSeries(series)}
                className="group relative bg-surface-0 border border-separator/90 hover:border-series/60 rounded-xl overflow-hidden shadow-lg transition-all duration-300 hover:-translate-y-1 flex flex-col cursor-pointer"
              >
                {/* Cover */}
                <div className="relative aspect-2/3 bg-surface-0 overflow-hidden">
                  {series.cover ? (
                    <RemoteImage
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
                  <div className="absolute inset-0 -z-10 flex flex-col items-center justify-center p-3 text-label-tertiary bg-surface-0">
                    <Tv className="w-8 h-8 mb-1.5 opacity-50" />
                    <span className="text-[10px] text-center line-clamp-2 text-label-secondary">
                      {series.name}
                    </span>
                  </div>

                  {/* Date Added Badge */}
                  <div className="absolute top-2 left-2 px-2 py-0.5 rounded-md bg-surface-0/85 text-fresh border border-fresh/30 text-[10px] font-medium flex items-center gap-1">
                    <Calendar className="w-3 h-3 text-fresh" />
                    {dateStr}
                  </div>

                  {/* Rating */}
                  {series.rating && series.rating !== '0' && (
                    <div className="absolute bottom-2 left-2 px-1.5 py-0.5 rounded bg-surface-0/85 text-favorite border border-favorite/30 text-[10px] font-semibold flex items-center gap-1">
                      <Star className="w-2.5 h-2.5 fill-favorite" />
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
                      setDisplayCount((c) => c);
                    }}
                    aria-label={isFav ? "Rimuovi dai preferiti" : "Aggiungi ai preferiti"}
                    className="absolute top-2 right-2 p-1.5 rounded-lg bg-surface-1/70 hover:bg-surface-1 text-label-secondary hover:text-favorite transition"
                  >
                    <Star
                      className={`w-3.5 h-3.5 ${isFav ? 'fill-favorite text-favorite' : ''}`}
                    />
                  </button>

                  {/* Hover Open Episodes overlay */}
                  <div className="absolute inset-0 bg-surface-1/60 opacity-0 group-hover:opacity-100 transition-opacity flex items-center justify-center">
                    <div className="px-3 py-1.5 rounded-xl bg-series text-on-accent text-xs font-semibold flex items-center gap-1.5 shadow-xl">
                      <Play className="w-3.5 h-3.5 fill-white" />
                      Vedi Episodi
                    </div>
                  </div>
                </div>

                {/* Info */}
                <div className="p-2.5 flex-1 flex flex-col justify-between">
                  <h4
                    className="text-xs font-medium text-label line-clamp-2 group-hover:text-series transition-colors"
                    title={series.name}
                  >
                    {series.name}
                  </h4>
                  <div className="flex items-center justify-between text-[10px] text-label-tertiary mt-2 pt-1 border-t border-separator">
                    <span>Serie TV</span>
                    <span className=" text-label-secondary">#{series.series_id}</span>
                  </div>
                </div>
              </div>
            );
          })}
        </div>
      )}

      {/* Bottom Action Footer */}
      <div className="flex items-center justify-between pt-2 text-xs">
        <button
          onClick={() =>
            setDisplayCount((prev) => (prev >= 60 ? 18 : prev + 18))
          }
          className="text-label-secondary hover:text-label transition font-medium underline underline-offset-4"
        >
          {displayCount >= 60 ? 'Mostra meno' : 'Carica altri recenti (+18)'}
        </button>

        <button
          onClick={() => onNavigateToTab(activeType)}
          className="flex items-center gap-1 text-accent-strong hover:text-accent-strong transition font-semibold"
        >
          Esplora l'intero catalogo {activeType === 'movies' ? 'Film' : 'Serie'}
          <ChevronRight className="w-4 h-4" />
        </button>
      </div>
    </section>
  );
};
