import React, { useEffect, useMemo, useRef, useState } from 'react';
import { Film, Layers, Play, Search, Tv, X } from 'lucide-react';
import type { PlayableMediaItem, XtreamLiveStream, XtreamSeries, XtreamVodStream } from '../types/xtream';
import { buildStreamUrl } from '../utils/parseXtreamUrl';
import { buildCatalogIndex, hasMinQueryLength, searchIndex } from '../utils/catalogSearch';
import { getSecureImageUrl } from '../utils/imageUrl';
import { storage } from '../services/storage';
import { RemoteImage } from './RemoteImage';
import { LiveChannelListRow } from './LiveChannelRow';
import { MovieDetailModal } from './MovieDetailModal';

/** Ritardo durante la digitazione: la ricerca è locale, ma i cataloghi sono grandi. */
export const SEARCH_DEBOUNCE_MS = 250;

const MIN_CHARS_HINT = 'Scrivi almeno 2 caratteri per cercare in Live, Film e Serie.';

interface SearchPageProps {
  liveStreams: XtreamLiveStream[];
  movies: XtreamVodStream[];
  seriesList: XtreamSeries[];
  serverUrl: string;
  username: string;
  password: string;
  onPlay: (item: PlayableMediaItem) => void;
  /** Serie TV: apre la stessa vista con stagioni ed episodi della sezione Serie. */
  onOpenSeries: (series: XtreamSeries) => void;
  onClose: () => void;
  activeMediaId?: string | null;
  accountKey?: string;
}

interface ResultRowProps {
  poster?: string;
  title: string;
  subtitle: string;
  /** `movies` o `series`: identifica il gruppo di provenienza del risultato. */
  group: 'movies' | 'series';
  resultId: string | number;
  onSelect: () => void;
}

/** Riga compatta di un risultato: tocco o clic uguale alla sezione di origine. */
const ResultRow: React.FC<ResultRowProps> = ({ poster, title, subtitle, group, resultId, onSelect }) => (
  <button
    type="button"
    data-search-result={group}
    data-result-id={String(resultId)}
    onClick={onSelect}
    className="w-full flex items-center gap-3 p-2.5 rounded-2xl bg-surface-0/70 border border-separator/90 hover:border-accent/50 hover:bg-surface-1 transition text-left cursor-pointer"
  >
    <div className="w-10 h-14 sm:w-12 sm:h-16 rounded-xl bg-surface-0 border border-separator overflow-hidden shrink-0 flex items-center justify-center">
      {poster ? (
        <RemoteImage
          src={getSecureImageUrl(poster)}
          alt={title}
          referrerPolicy="no-referrer"
          loading="lazy"
          decoding="async"
          className="w-full h-full object-cover"
        />
      ) : (
        <Film className="w-5 h-5 text-label-tertiary" />
      )}
    </div>
    <div className="min-w-0 flex-1">
      <h4 className="text-sm sm:text-base font-bold text-label line-clamp-2">{title}</h4>
      <p className="text-xs text-label-secondary mt-0.5 truncate">{subtitle}</p>
    </div>
    <Play className="w-4 h-4 text-label-secondary shrink-0" />
  </button>
);

/**
 * Vista "Cerca": una sola casella che interroga tutto il catalogo già in
 * memoria (Live, Film, Serie), con le stesse regole della ricerca dell'app
 * Android TV. Nessuna richiesta al server: solo il catalogo scaricato al login.
 */
export const SearchPage: React.FC<SearchPageProps> = ({
  liveStreams,
  movies,
  seriesList,
  serverUrl,
  username,
  password,
  onPlay,
  onOpenSeries,
  onClose,
  activeMediaId,
  accountKey,
}) => {
  const [query, setQuery] = useState('');
  const [deferredQuery, setDeferredQuery] = useState('');
  const [activeMovie, setActiveMovie] = useState<XtreamVodStream | null>(null);
  const inputRef = useRef<HTMLInputElement | null>(null);

  // Fuoco automatico all'apertura: su mobile la tastiera deve comparire subito.
  useEffect(() => {
    inputRef.current?.focus();
  }, []);

  // La ricerca parte dopo una pausa: nessun filtro a ogni singolo carattere.
  useEffect(() => {
    const timer = setTimeout(() => setDeferredQuery(query), SEARCH_DEBOUNCE_MS);
    return () => clearTimeout(timer);
  }, [query]);

  // I nomi normalizzati si calcolano una volta sola per catalogo.
  const index = useMemo(
    () => buildCatalogIndex({ live: liveStreams, movies, series: seriesList }),
    [liveStreams, movies, seriesList],
  );
  const results = useMemo(() => searchIndex(index, deferredQuery), [index, deferredQuery]);
  const isSearching = hasMinQueryLength(deferredQuery);

  const handlePlayLive = (stream: XtreamLiveStream) => {
    const streamUrl =
      stream.direct_source ||
      buildStreamUrl(serverUrl, username, password, 'live', stream.stream_id, 'm3u8', false);
    onPlay({
      id: `live_${stream.stream_id}`,
      title: stream.name,
      type: 'live',
      streamUrl,
      poster: stream.stream_icon,
      categoryName: 'Canale Live TV',
      containerExtension: 'm3u8',
    });
    onClose();
  };

  const toggleLiveFavorite = (stream: XtreamLiveStream) => {
    storage.toggleFavorite(
      {
        id: `live_${stream.stream_id}`,
        title: stream.name,
        type: 'live',
        streamUrl: buildStreamUrl(serverUrl, username, password, 'live', stream.stream_id, 'm3u8', false),
        poster: stream.stream_icon,
        categoryName: 'Canale Live TV',
        containerExtension: 'm3u8',
      },
      accountKey,
    );
  };

  const handlePlayMovie = (movie: XtreamVodStream) => {
    const extension = movie.container_extension || 'mp4';
    onPlay({
      id: `movie_${movie.stream_id}`,
      title: movie.name,
      type: 'movie',
      streamUrl: buildStreamUrl(serverUrl, username, password, 'movie', movie.stream_id, extension, false),
      poster: movie.stream_icon,
      categoryName: 'Film VOD',
      containerExtension: extension,
    });
    setActiveMovie(null);
    onClose();
  };

  const handleOpenSeries = (series: XtreamSeries) => {
    setActiveMovie(null);
    onOpenSeries(series);
    onClose();
  };

  // Scheda film condivisa con Film, Novità e Preferiti.
  const movieDetailTarget = activeMovie
    ? {
        id: activeMovie.stream_id,
        title: activeMovie.name,
        poster: activeMovie.stream_icon,
        containerExtension: activeMovie.container_extension,
        streamUrl: buildStreamUrl(
          serverUrl,
          username,
          password,
          'movie',
          activeMovie.stream_id,
          activeMovie.container_extension || 'mp4',
          false,
        ),
      }
    : null;

  return (
    <section
      data-search-page="true"
      className="mt-4 space-y-4 safe-area-page"
      aria-label="Cerca nel catalogo"
    >
      <div className="rounded-3xl border border-separator bg-surface-0/90 p-3 sm:p-4 shadow-xl">
        <div className="flex items-center gap-2">
          <div className="relative flex-1 min-w-0">
            <Search className="w-5 h-5 absolute left-4 top-1/2 -translate-y-1/2 text-label-secondary" />
            <input
              ref={inputRef}
              type="text"
              value={query}
              onChange={(event) => setQuery(event.target.value)}
              placeholder="Cerca in Live, Film e Serie..."
              aria-label="Cerca in Live, Film e Serie"
              autoComplete="off"
              className="w-full pl-12 pr-4 py-2.5 bg-surface-0 border border-separator-strong/80 rounded-2xl text-sm sm:text-base text-label placeholder-label-tertiary focus:outline-hidden focus:border-accent transition shadow-inner font-medium"
            />
          </div>
          <button
            type="button"
            onClick={onClose}
            aria-label="Chiudi ricerca"
            title="Chiudi ricerca"
            className="w-11 h-11 rounded-2xl bg-surface-0 border border-separator-strong/80 text-label-secondary hover:text-label hover:bg-surface-1 transition cursor-pointer shadow-md flex items-center justify-center shrink-0"
          >
            <X className="w-5 h-5" />
          </button>
        </div>
      </div>

      {!isSearching ? (
        <p data-search-hint="true" className="text-sm text-label-secondary px-1">
          {MIN_CHARS_HINT}
        </p>
      ) : results.isEmpty ? (
        <p data-search-empty="true" className="text-sm font-semibold text-label-secondary px-1">
          Nessun risultato
        </p>
      ) : (
        <div className="space-y-5">
          {results.live.length > 0 && (
            <section data-search-group="live" className="space-y-2.5">
              <h3 className="flex items-center gap-2 text-base sm:text-lg font-black text-label px-1">
                <Tv className="w-5 h-5 text-live shrink-0" />
                Live
                <span className="text-xs font-bold text-label-secondary">{results.live.length}</span>
              </h3>
              <div className="space-y-2.5">
                {results.live.map((stream, position) => (
                  <LiveChannelListRow
                    key={stream.stream_id}
                    stream={stream}
                    index={position}
                    isFavorite={storage.isFavorite(`live_${stream.stream_id}`, accountKey)}
                    isPlaying={activeMediaId === `live_${stream.stream_id}`}
                    onPlay={handlePlayLive}
                    onToggleFavorite={toggleLiveFavorite}
                  />
                ))}
              </div>
            </section>
          )}

          {results.movies.length > 0 && (
            <section data-search-group="movies" className="space-y-2.5">
              <h3 className="flex items-center gap-2 text-base sm:text-lg font-black text-label px-1">
                <Film className="w-5 h-5 text-accent-strong shrink-0" />
                Film
                <span className="text-xs font-bold text-label-secondary">{results.movies.length}</span>
              </h3>
              <div className="grid grid-cols-1 sm:grid-cols-2 xl:grid-cols-3 gap-2.5">
                {results.movies.map((movie) => (
                  <ResultRow
                    key={movie.stream_id}
                    group="movies"
                    resultId={movie.stream_id}
                    poster={movie.stream_icon}
                    title={movie.name}
                    subtitle={`Film · ${(movie.container_extension || 'MP4').toUpperCase()}`}
                    onSelect={() => setActiveMovie(movie)}
                  />
                ))}
              </div>
            </section>
          )}

          {results.series.length > 0 && (
            <section data-search-group="series" className="space-y-2.5">
              <h3 className="flex items-center gap-2 text-base sm:text-lg font-black text-label px-1">
                <Layers className="w-5 h-5 text-series shrink-0" />
                Serie
                <span className="text-xs font-bold text-label-secondary">{results.series.length}</span>
              </h3>
              <div className="grid grid-cols-1 sm:grid-cols-2 xl:grid-cols-3 gap-2.5">
                {results.series.map((series) => (
                  <ResultRow
                    key={series.series_id}
                    group="series"
                    resultId={series.series_id}
                    poster={series.cover}
                    title={series.name}
                    subtitle="Serie TV · stagioni ed episodi"
                    onSelect={() => handleOpenSeries(series)}
                  />
                ))}
              </div>
            </section>
          )}
        </div>
      )}

      <MovieDetailModal
        movie={movieDetailTarget}
        credentials={{ serverUrl, username, password }}
        accountKey={accountKey}
        onClose={() => setActiveMovie(null)}
        onPlay={() => {
          if (activeMovie) handlePlayMovie(activeMovie);
        }}
      />
    </section>
  );
};
