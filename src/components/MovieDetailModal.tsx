import React, { useEffect, useState } from 'react';
import { Play, X, Download } from 'lucide-react';
import { XtreamVodDetails } from '../types/xtream';
import { xtreamClient } from '../services/xtreamClient';
import { formatDuration } from '../utils/parseXtreamUrl';
import { getSecureImageUrl } from '../utils/imageUrl';
import { triggerMediaDownload, isDirectFileDownload, isTvEnvironment } from '../utils/downloadHelper';
import { STATIC_DEPLOY } from '../utils/deployTarget';
import { RemoteImage } from './RemoteImage';
import { AppleDownloadLink } from './AppleDownloadLink';

/** Everything the detail sheet needs, from a catalog row or a saved favorite. */
export interface MovieDetailTarget {
  id: string | number;
  title: string;
  poster?: string;
  containerExtension?: string;
  streamUrl: string;
}

interface MovieDetailModalProps {
  movie: MovieDetailTarget | null;
  /** Present only when the Xtream credentials are known: adds plot and metadata. */
  credentials?: { serverUrl: string; username: string; password: string } | null;
  accountKey?: string;
  onClose: () => void;
  onPlay: (movie: MovieDetailTarget) => void;
}

/**
 * Single movie sheet for the Film card, the Recent card and the Favorites card.
 * It fetches the plot itself when credentials are available, so every entry
 * point shows the same content: synopsis, "Guarda Film" and the download
 * control of the current build.
 */
export const MovieDetailModal: React.FC<MovieDetailModalProps> = ({
  movie,
  credentials,
  accountKey,
  onClose,
  onPlay,
}) => {
  const [details, setDetails] = useState<XtreamVodDetails | null>(null);
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const isTv = isTvEnvironment();

  const streamId = movie?.id;
  const canFetchDetails = Boolean(credentials && streamId !== undefined && streamId !== null && /^\d+$/.test(String(streamId)));
  const serverUrl = credentials?.serverUrl;
  const username = credentials?.username;
  const password = credentials?.password;

  // Depend on primitives only: callers rebuild the target object on every
  // render, so an object dependency would refetch in a loop.
  useEffect(() => {
    setDetails(null);
    if (!canFetchDetails || !serverUrl || !username || !password) {
      setIsLoading(false);
      return;
    }

    let cancelled = false;
    setIsLoading(true);
    xtreamClient
      .getVodInfo(serverUrl, username, password, streamId as string)
      .then((info) => {
        if (!cancelled) setDetails(info);
      })
      .catch(() => {
        if (!cancelled) setDetails(null);
      })
      .finally(() => {
        if (!cancelled) setIsLoading(false);
      });

    return () => {
      cancelled = true;
    };
  }, [streamId, canFetchDetails, serverUrl, username, password]);

  if (!movie) return null;

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center safe-area-overlay bg-black/50 animate-in fade-in">
      <div className="glass border border-glass-edge rounded-3xl max-w-2xl w-full overflow-hidden shadow-2xl flex flex-col max-h-[90vh]">
        {/* Header */}
        <div className="p-4 sm:p-5 border-b border-separator flex items-center justify-between">
          <h3 className="text-base sm:text-lg font-bold text-label truncate pr-4">
            {movie.title}
          </h3>
          <button
            onClick={onClose}
            aria-label="Chiudi dettagli"
            className="p-1.5 rounded-xl text-label-secondary hover:text-label hover:bg-surface-1 transition cursor-pointer"
          >
            <X className="w-5 h-5" />
          </button>
        </div>

        {/* Content */}
        <div className="p-5 sm:p-6 overflow-y-auto space-y-4">
          <div className="flex flex-col sm:flex-row gap-5">
            {movie.poster && (
              <RemoteImage
                src={getSecureImageUrl(movie.poster)}
                alt={movie.title}
                className="w-36 sm:w-44 aspect-2/3 object-cover rounded-2xl shadow-xl shrink-0"
              />
            )}
            <div className="space-y-2.5 flex-1">
              {isLoading && <p className="text-sm text-label-secondary">Caricamento dettagli…</p>}

              {details?.info?.plot && (
                <div>
                  <h4 className="text-xs font-bold text-label-secondary uppercase tracking-wider mb-1">Trama:</h4>
                  <p className="text-sm text-label leading-relaxed">
                    {details.info.plot}
                  </p>
                </div>
              )}

              {details?.info?.genre && (
                <div className="text-sm text-label-secondary">
                  <strong className="text-label-secondary">Genere:</strong> {details.info.genre}
                </div>
              )}

              {details?.info?.releasedate && (
                <div className="text-sm text-label-secondary">
                  <strong className="text-label-secondary">Data uscita:</strong> {details.info.releasedate}
                </div>
              )}

              {details?.info?.duration && (
                <div className="text-sm text-label-secondary">
                  <strong className="text-label-secondary">Durata:</strong> {formatDuration(details.info.duration)}
                </div>
              )}
            </div>
          </div>
        </div>

        {/* Footer with play and download buttons */}
        <div className="p-4 sm:p-5 border-t border-separator flex items-center justify-end gap-3 bg-surface-0/50">
          {!STATIC_DEPLOY && !isTv && isDirectFileDownload(movie.containerExtension) && (
            <button
              type="button"
              onClick={() => {
                const ext = movie.containerExtension || 'mp4';
                triggerMediaDownload(
                  movie.streamUrl,
                  movie.title,
                  'movie',
                  movie.poster,
                  ext,
                  accountKey
                );
              }}
              title="Scarica nella cartella locale dell’app"
              aria-label="Scarica film"
              className="p-3 rounded-xl border border-separator-strong hover:border-series bg-surface-0 hover:bg-surface-1 text-series hover:text-label transition cursor-pointer"
            >
              <Download className="w-5 h-5" />
            </button>
          )}

          {/* Static Apple build: long-press on the direct file link. */}
          <AppleDownloadLink
            streamUrl={movie.streamUrl}
            containerExtension={movie.containerExtension}
          />

          <button
            onClick={() => onPlay(movie)}
            className="px-6 py-3 bg-accent hover:bg-accent-strong text-on-accent rounded-xl text-sm font-bold flex items-center gap-2 shadow-xl  transition cursor-pointer"
          >
            <Play className="w-5 h-5 fill-white" />
            Guarda Film
          </button>
        </div>
      </div>
    </div>
  );
};
