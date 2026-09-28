import React, { useEffect, useRef, useState, useCallback } from 'react';
import {
  Play,
  Pause,
  Volume2,
  VolumeX,
  Maximize2,
  Minimize2,
  RotateCcw,
  RotateCw,
  Settings,
  X,
  ExternalLink,
  Copy,
  Check,
  Tv,
  Film,
  AlertCircle,
  RefreshCw,
  Cast,
  Download,
} from 'lucide-react';
import Hls from 'hls.js';
import mpegts from 'mpegts.js';
import { PlayableMediaItem } from '../types/xtream';
import { storage } from '../services/storage';

interface MediaPlayerProps {
  media: PlayableMediaItem | null;
  onClose: () => void;
  onNext?: () => void;
  onPrevious?: () => void;
}

export const MediaPlayer: React.FC<MediaPlayerProps> = ({ media, onClose }) => {
  const videoRef = useRef<HTMLVideoElement | null>(null);
  const containerRef = useRef<HTMLDivElement | null>(null);
  const hlsRef = useRef<Hls | null>(null);
  const mpegtsRef = useRef<any>(null);

  const [isPlaying, setIsPlaying] = useState<boolean>(false);
  const [currentTime, setCurrentTime] = useState<number>(0);
  const [duration, setDuration] = useState<number>(0);
  const [volume, setVolume] = useState<number>(1);
  const [isMuted, setIsMuted] = useState<boolean>(false);
  const [isFullscreen, setIsFullscreen] = useState<boolean>(false);
  const [isLoading, setIsLoading] = useState<boolean>(true);
  const [errorMessage, setErrorMessage] = useState<string | null>(null);
  const [playbackSpeed, setPlaybackSpeed] = useState<number>(1);
  const [aspectRatio, setAspectRatio] = useState<'contain' | 'cover' | 'fill'>('contain');
  const [showSettings, setShowSettings] = useState<boolean>(false);
  const [copiedLink, setCopiedLink] = useState<boolean>(false);
  const [controlsVisible, setControlsVisible] = useState<boolean>(true);
  const [useProxy, setUseProxy] = useState<boolean>(true);
  const [liveFormat, setLiveFormat] = useState<'m3u8' | 'ts'>('m3u8');
  const hideControlsTimerRef = useRef<any>(null);

  // Derive source URL: either through backend proxy or direct
  const getEffectiveUrl = useCallback(() => {
    if (!media) return '';
    let target = media.streamUrl;

    // Handle live stream format conversion (m3u8 vs ts)
    if (media.type === 'live') {
      if (liveFormat === 'm3u8') {
        target = target.replace(/\.ts(\?|$)/i, '.m3u8$1');
      } else {
        target = target.replace(/\.m3u8(\?|$)/i, '.ts$1');
      }
    }

    if (useProxy) {
      if (target.startsWith('/api/proxy/stream')) {
        return target;
      }
      return `/api/proxy/stream?url=${encodeURIComponent(target)}`;
    }

    if (target.startsWith('/api/proxy/stream?url=')) {
      const match = target.match(/url=([^&]+)/);
      if (match && match[1]) {
        return decodeURIComponent(match[1]);
      }
    }
    return target;
  }, [media, useProxy, liveFormat]);

  // Activity timer to hide controls during playback
  const showControlsTemporarily = useCallback(() => {
    setControlsVisible(true);
    if (hideControlsTimerRef.current) clearTimeout(hideControlsTimerRef.current);
    if (isPlaying) {
      hideControlsTimerRef.current = setTimeout(() => {
        setControlsVisible(false);
        setShowSettings(false);
      }, 3500);
    }
  }, [isPlaying]);

  // Load and play video
  useEffect(() => {
    if (!media || !videoRef.current) return;

    const video = videoRef.current;
    const url = getEffectiveUrl();
    setIsLoading(true);
    setErrorMessage(null);

    // Destroy existing HLS / mpegts instances if any
    if (hlsRef.current) {
      hlsRef.current.destroy();
      hlsRef.current = null;
    }
    if (mpegtsRef.current) {
      mpegtsRef.current.destroy();
      mpegtsRef.current = null;
    }

    const isLive = media.type === 'live';

    if (isLive && liveFormat === 'ts' && mpegts.isSupported()) {
      // Real-time MPEG-TS streaming via mpegts.js (MediaSource demuxer)
      try {
        const player = mpegts.createPlayer(
          {
            type: 'mpegts',
            isLive: true,
            url,
          },
          {
            enableWorker: true,
            lazyLoad: false,
            liveBufferLatencyChasing: true,
            liveBufferLatencyMaxLatency: 2.0,
            liveBufferLatencyMinRemain: 0.3,
            autoCleanupSourceBuffer: true,
          }
        );
        mpegtsRef.current = player;
        player.attachMediaElement(video);
        player.load();

        player.on(mpegts.Events.MEDIA_INFO, () => {
          setIsLoading(false);
          setIsPlaying(true);
        });

        player.on(mpegts.Events.ERROR, (errorType: string, errorDetail: string) => {
          console.warn('mpegts error:', errorType, errorDetail);
          // Try auto-fallback to HLS if TS encounters a stream issue
          if (liveFormat === 'ts') {
            console.log('Tentativo di fallback automatico su formato HLS (.m3u8)...');
            setLiveFormat('m3u8');
          } else {
            setErrorMessage('Impossibile caricare il flusso live MPEG-TS.');
            setIsLoading(false);
          }
        });

        video
          .play()
          .then(() => {
            setIsLoading(false);
            setIsPlaying(true);
          })
          .catch(() => {});
      } catch (err: any) {
        console.warn('mpegts init failed, falling back:', err);
        setLiveFormat('m3u8');
      }
    } else if (isLive && liveFormat === 'm3u8' && Hls.isSupported()) {
      const hls = new Hls({
        enableWorker: true,
        lowLatencyMode: true,
        backBufferLength: 60,
        maxBufferLength: 30,
        liveSyncDurationCount: 3,
        liveMaxLatencyDurationCount: 10,
        fragLoadingTimeOut: 25000,
        manifestLoadingTimeOut: 25000,
      });
      hlsRef.current = hls;

      hls.loadSource(url);
      hls.attachMedia(video);

      hls.on(Hls.Events.MANIFEST_PARSED, () => {
        setIsLoading(false);
        video.play().catch(() => setIsPlaying(false));
      });

      hls.on(Hls.Events.FRAG_LOADED, () => {
        setIsLoading(false);
      });

      hls.on(Hls.Events.ERROR, (_event, data) => {
        console.warn('HLS Event Error:', data);
        if (data.fatal) {
          switch (data.type) {
            case Hls.ErrorTypes.NETWORK_ERROR:
              hls.destroy();
              // Try TS format fallback
              setLiveFormat('ts');
              break;
            case Hls.ErrorTypes.MEDIA_ERROR:
              hls.recoverMediaError();
              break;
            default:
              hls.destroy();
              setErrorMessage(
                'Errore di caricamento HLS. Prova a passare al formato MPEG-TS (.ts) tramite il pulsante in alto.'
              );
              setIsLoading(false);
              break;
          }
        }
      });
    } else {
      // Standard video source (MP4, MKV, WebM)
      video.src = url;
      video.load();
      video
        .play()
        .then(() => {
          setIsLoading(false);
          setIsPlaying(true);
        })
        .catch((err) => {
          console.warn('Autoplay prevented or playback error:', err);
          setIsLoading(false);
        });
    }

    return () => {
      if (hlsRef.current) {
        hlsRef.current.destroy();
        hlsRef.current = null;
      }
      if (mpegtsRef.current) {
        mpegtsRef.current.destroy();
        mpegtsRef.current = null;
      }
    };
  }, [media, getEffectiveUrl, liveFormat]);

  // Video event handlers
  const handleTimeUpdate = () => {
    if (videoRef.current) {
      setCurrentTime(videoRef.current.currentTime);
      // Save history progress every 5 seconds
      if (media && videoRef.current.duration > 0 && Math.floor(videoRef.current.currentTime) % 5 === 0) {
        storage.saveHistory(media, videoRef.current.currentTime, videoRef.current.duration);
      }
    }
  };

  const handleLoadedMetadata = () => {
    if (videoRef.current) {
      setDuration(videoRef.current.duration || 0);
      setIsLoading(false);
    }
  };

  const togglePlay = () => {
    if (!videoRef.current) return;
    if (isPlaying) {
      videoRef.current.pause();
      setIsPlaying(false);
    } else {
      videoRef.current.play().catch(() => {});
      setIsPlaying(true);
    }
  };

  const handleSeek = (e: React.ChangeEvent<HTMLInputElement>) => {
    const time = parseFloat(e.target.value);
    setCurrentTime(time);
    if (videoRef.current) {
      videoRef.current.currentTime = time;
    }
  };

  const handleSkip = (seconds: number) => {
    if (videoRef.current) {
      videoRef.current.currentTime = Math.max(0, Math.min(videoRef.current.currentTime + seconds, duration));
    }
  };

  const handleVolumeChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    const val = parseFloat(e.target.value);
    setVolume(val);
    if (videoRef.current) {
      videoRef.current.volume = val;
      setIsMuted(val === 0);
    }
  };

  const toggleMute = () => {
    if (!videoRef.current) return;
    const nextMuted = !isMuted;
    setIsMuted(nextMuted);
    videoRef.current.muted = nextMuted;
  };

  const toggleFullscreen = async () => {
    if (!containerRef.current) return;
    if (!document.fullscreenElement) {
      try {
        await containerRef.current.requestFullscreen();
        setIsFullscreen(true);
      } catch (err) {
        console.error('Fullscreen error:', err);
      }
    } else {
      try {
        await document.exitFullscreen();
        setIsFullscreen(false);
      } catch (err) {
        console.error('Exit fullscreen error:', err);
      }
    }
  };

  const togglePiP = async () => {
    if (!videoRef.current) return;
    try {
      if (document.pictureInPictureElement) {
        await document.exitPictureInPicture();
      } else if (document.pictureInPictureEnabled) {
        await videoRef.current.requestPictureInPicture();
      }
    } catch (e) {
      console.error('PiP error:', e);
    }
  };

  const handleSpeedChange = (speed: number) => {
    setPlaybackSpeed(speed);
    if (videoRef.current) {
      videoRef.current.playbackRate = speed;
    }
    setShowSettings(false);
  };

  const copyDirectStreamLink = () => {
    if (!media) return;
    const directUrl = media.streamUrl.startsWith('/api/proxy/stream?url=')
      ? decodeURIComponent(media.streamUrl.replace('/api/proxy/stream?url=', ''))
      : media.streamUrl;
    navigator.clipboard.writeText(directUrl);
    setCopiedLink(true);
    setTimeout(() => setCopiedLink(false), 2500);
  };

  // Keyboard controls
  useEffect(() => {
    const handleKeyDown = (e: KeyboardEvent) => {
      // Don't trigger if typing in an input
      if (['INPUT', 'TEXTAREA'].includes((e.target as HTMLElement).tagName)) return;

      if (e.code === 'Space') {
        e.preventDefault();
        togglePlay();
      } else if (e.code === 'ArrowRight') {
        e.preventDefault();
        handleSkip(10);
      } else if (e.code === 'ArrowLeft') {
        e.preventDefault();
        handleSkip(-10);
      } else if (e.code === 'ArrowUp') {
        e.preventDefault();
        setVolume((v) => {
          const next = Math.min(1, v + 0.1);
          if (videoRef.current) videoRef.current.volume = next;
          return next;
        });
      } else if (e.code === 'ArrowDown') {
        e.preventDefault();
        setVolume((v) => {
          const next = Math.max(0, v - 0.1);
          if (videoRef.current) videoRef.current.volume = next;
          return next;
        });
      } else if (e.code === 'KeyF') {
        e.preventDefault();
        toggleFullscreen();
      } else if (e.code === 'KeyM') {
        e.preventDefault();
        toggleMute();
      } else if (e.code === 'Escape' && !document.fullscreenElement) {
        onClose();
      }
    };

    window.addEventListener('keydown', handleKeyDown);
    return () => window.removeEventListener('keydown', handleKeyDown);
  }, [isPlaying, duration, isMuted, onClose]);

  const formatTime = (secs: number) => {
    if (isNaN(secs) || secs <= 0) return '00:00';
    const h = Math.floor(secs / 3600);
    const m = Math.floor((secs % 3600) / 60);
    const s = Math.floor(secs % 60);
    if (h > 0) {
      return `${h}:${m.toString().padStart(2, '0')}:${s.toString().padStart(2, '0')}`;
    }
    return `${m.toString().padStart(2, '0')}:${s.toString().padStart(2, '0')}`;
  };

  if (!media) return null;

  return (
    <div
      ref={containerRef}
      onMouseMove={showControlsTemporarily}
      className="relative w-full bg-black select-none overflow-hidden rounded-xl shadow-2xl border border-zinc-800 aspect-video max-h-[85vh] flex flex-col justify-center items-center group"
    >
      {/* Video Element */}
      <video
        ref={videoRef}
        playsInline
        onTimeUpdate={handleTimeUpdate}
        onLoadedMetadata={handleLoadedMetadata}
        onPlay={() => setIsPlaying(true)}
        onPause={() => setIsPlaying(false)}
        onWaiting={() => setIsLoading(true)}
        onPlaying={() => setIsLoading(false)}
        onError={() => {
          setIsLoading(false);
          setErrorMessage(
            'Errore di caricamento del flusso video. Verifica se il server è attivo o prova a disattivare/attivare il proxy.'
          );
        }}
        onClick={togglePlay}
        className={`w-full h-full cursor-pointer transition-all duration-200 ${
          aspectRatio === 'cover'
            ? 'object-cover'
            : aspectRatio === 'fill'
            ? 'object-fill'
            : 'object-contain'
        }`}
      />

      {/* Loading Spinner */}
      {isLoading && !errorMessage && (
        <div className="absolute inset-0 flex flex-col items-center justify-center bg-black/60 pointer-events-none backdrop-blur-xs">
          <div className="w-14 h-14 border-4 border-emerald-500/20 border-t-emerald-500 rounded-full animate-spin mb-3"></div>
          <span className="text-zinc-200 text-sm font-medium tracking-wide">
            Caricamento stream multimediale...
          </span>
        </div>
      )}

      {/* Error Overlay */}
      {errorMessage && (
        <div className="absolute inset-0 flex flex-col items-center justify-center bg-zinc-950/90 p-6 text-center z-30">
          <AlertCircle className="w-12 h-12 text-rose-500 mb-3 animate-pulse" />
          <h3 className="text-lg font-semibold text-white mb-2">Impossibile riprodurre lo stream</h3>
          <p className="text-sm text-zinc-300 max-w-md mb-5 leading-relaxed">{errorMessage}</p>

          <div className="flex flex-wrap items-center justify-center gap-3">
            <button
              onClick={() => {
                setErrorMessage(null);
                setIsLoading(true);
                if (videoRef.current) {
                  videoRef.current.load();
                  videoRef.current.play().catch(() => {});
                }
              }}
              className="px-4 py-2 bg-emerald-600 hover:bg-emerald-500 text-white rounded-lg text-sm font-medium flex items-center gap-2 transition"
            >
              <RefreshCw className="w-4 h-4" />
              Riprova
            </button>

            {media.type === 'live' && (
              <button
                onClick={() => setLiveFormat(liveFormat === 'm3u8' ? 'ts' : 'm3u8')}
                className="px-4 py-2 bg-rose-600 hover:bg-rose-500 text-white rounded-lg text-sm font-medium flex items-center gap-2 transition"
              >
                Passa a formato {liveFormat === 'm3u8' ? 'MPEG-TS (.ts)' : 'HLS (.m3u8)'}
              </button>
            )}

            <button
              onClick={() => setUseProxy(!useProxy)}
              className="px-4 py-2 bg-zinc-800 hover:bg-zinc-700 text-zinc-200 rounded-lg text-sm font-medium flex items-center gap-2 border border-zinc-700 transition"
            >
              {useProxy ? 'Prova Stream Diretto (No Proxy)' : 'Attiva Proxy Server'}
            </button>

            <button
              onClick={copyDirectStreamLink}
              className="px-4 py-2 bg-zinc-800 hover:bg-zinc-700 text-zinc-200 rounded-lg text-sm font-medium flex items-center gap-2 border border-zinc-700 transition"
            >
              {copiedLink ? <Check className="w-4 h-4 text-emerald-400" /> : <Copy className="w-4 h-4" />}
              Copia Link per VLC
            </button>
          </div>
        </div>
      )}

      {/* Top Header Bar (Title & Close) */}
      <div
        className={`absolute top-0 left-0 right-0 p-4 bg-gradient-to-b from-black/90 via-black/50 to-transparent transition-opacity duration-300 z-20 flex items-center justify-between ${
          controlsVisible || !isPlaying ? 'opacity-100' : 'opacity-0 pointer-events-none'
        }`}
      >
        <div className="flex items-center gap-3 min-w-0">
          <div className="p-2 rounded-lg bg-emerald-500/20 text-emerald-400 border border-emerald-500/30">
            {media.type === 'movie' ? (
              <Film className="w-5 h-5" />
            ) : (
              <Tv className="w-5 h-5" />
            )}
          </div>
          <div className="min-w-0">
            <h2 className="text-white font-medium text-base truncate drop-shadow-md">
              {media.title}
            </h2>
            <div className="flex items-center gap-2 text-xs text-zinc-400">
              {media.categoryName && <span>{media.categoryName}</span>}
              {media.containerExtension && (
                <span className="uppercase px-1.5 py-0.5 rounded bg-zinc-800 text-zinc-300 text-[10px] font-mono">
                  {media.containerExtension}
                </span>
              )}
              {media.type === 'live' && (
                <>
                  <span className="flex items-center gap-1 text-rose-400 font-semibold text-[11px]">
                    <span className="w-2 h-2 rounded-full bg-rose-500 animate-ping"></span>
                    LIVE
                  </span>
                  <button
                    onClick={() => setLiveFormat(liveFormat === 'm3u8' ? 'ts' : 'm3u8')}
                    className="px-1.5 py-0.5 rounded bg-zinc-800 hover:bg-zinc-700 text-zinc-200 text-[10px] font-mono border border-zinc-700 transition"
                    title="Clicca per alternare tra HLS (.m3u8) e MPEG-TS (.ts)"
                  >
                    Formato: {liveFormat.toUpperCase()}
                  </button>
                </>
              )}
              {useProxy ? (
                <span className="text-emerald-400 text-[10px] bg-emerald-950/70 border border-emerald-800/60 px-1.5 py-0.5 rounded">
                  Proxy CORS Attivo
                </span>
              ) : (
                <span className="text-amber-400 text-[10px] bg-amber-950/70 border border-amber-800/60 px-1.5 py-0.5 rounded">
                  Stream Diretto
                </span>
              )}
            </div>
          </div>
        </div>

        <div className="flex items-center gap-2">
          {media.type !== 'live' && (
            <button
              onClick={() => {
                const currentStreamUrl = getEffectiveUrl();
                const cleanName = media.title.replace(/[/\\?%*:|"<>]/g, '_');
                const ext = media.containerExtension || 'mp4';
                const cleanUrl = currentStreamUrl.includes('&download=1')
                  ? currentStreamUrl
                  : `${currentStreamUrl}&download=1&filename=${encodeURIComponent(`${cleanName}.${ext}`)}`;

                const a = document.createElement('a');
                a.href = cleanUrl;
                a.download = `${cleanName}.${ext}`;
                document.body.appendChild(a);
                a.click();
                setTimeout(() => document.body.removeChild(a), 1000);

                storage.addDownload({
                  id: `${media.type}_${media.id}_${Date.now()}`,
                  title: media.title,
                  type: media.type === 'movie' ? 'movie' : 'episode',
                  streamUrl: cleanUrl.replace('&download=1', ''),
                  downloadUrl: cleanUrl,
                  poster: media.poster,
                  containerExtension: ext,
                  downloadedAt: Date.now(),
                });
              }}
              title="Scarica questo video sul tuo computer/dispositivo"
              className="p-2 text-zinc-300 hover:text-cyan-400 hover:bg-white/10 rounded-lg transition cursor-pointer"
            >
              <Download className="w-5 h-5" />
            </button>
          )}

          <button
            onClick={copyDirectStreamLink}
            title="Copia link stream per VLC o lettore esterno"
            className="p-2 text-zinc-300 hover:text-white hover:bg-white/10 rounded-lg transition"
          >
            {copiedLink ? <Check className="w-5 h-5 text-emerald-400" /> : <Copy className="w-5 h-5" />}
          </button>
          <button
            onClick={onClose}
            className="p-2 text-zinc-300 hover:text-white hover:bg-white/10 rounded-lg transition"
            title="Chiudi lettore"
          >
            <X className="w-6 h-6" />
          </button>
        </div>
      </div>

      {/* Center Big Play Button (when paused) */}
      {!isPlaying && !isLoading && !errorMessage && (
        <button
          onClick={togglePlay}
          className="absolute z-20 w-16 h-16 rounded-full bg-emerald-600/90 hover:bg-emerald-500 text-white flex items-center justify-center shadow-lg transition-transform transform hover:scale-110 active:scale-95"
        >
          <Play className="w-8 h-8 ml-1 fill-white" />
        </button>
      )}

      {/* Bottom Controls Bar */}
      <div
        className={`absolute bottom-0 left-0 right-0 p-4 bg-gradient-to-t from-black/95 via-black/70 to-transparent transition-opacity duration-300 z-20 ${
          controlsVisible || !isPlaying ? 'opacity-100' : 'opacity-0 pointer-events-none'
        }`}
      >
        {/* Timeline Scrub Bar (for VOD/Series, or seekable streams) */}
        {media.type !== 'live' && duration > 0 && (
          <div className="flex items-center gap-3 mb-3">
            <span className="text-xs font-mono text-zinc-300 min-w-12 text-right">
              {formatTime(currentTime)}
            </span>
            <div className="relative flex-1 group/bar py-1 cursor-pointer">
              <input
                type="range"
                min={0}
                max={duration || 100}
                step={0.1}
                value={currentTime}
                onChange={handleSeek}
                className="w-full h-1.5 bg-zinc-700 rounded-lg appearance-none cursor-pointer accent-emerald-500 focus:outline-hidden hover:h-2 transition-all"
              />
            </div>
            <span className="text-xs font-mono text-zinc-400 min-w-12">
              {formatTime(duration)}
            </span>
          </div>
        )}

        {/* Buttons Row */}
        <div className="flex items-center justify-between">
          <div className="flex items-center gap-2">
            <button
              onClick={togglePlay}
              className="p-2 text-white hover:text-emerald-400 hover:bg-white/10 rounded-lg transition"
              title={isPlaying ? 'Pausa (Spazio)' : 'Riproduci (Spazio)'}
            >
              {isPlaying ? <Pause className="w-5 h-5 fill-current" /> : <Play className="w-5 h-5 fill-current" />}
            </button>

            {media.type !== 'live' && (
              <>
                <button
                  onClick={() => handleSkip(-10)}
                  className="p-2 text-zinc-300 hover:text-white hover:bg-white/10 rounded-lg transition"
                  title="Indietro 10 secondi (Freccia Sinistra)"
                >
                  <RotateCcw className="w-4 h-4" />
                </button>
                <button
                  onClick={() => handleSkip(10)}
                  className="p-2 text-zinc-300 hover:text-white hover:bg-white/10 rounded-lg transition"
                  title="Avanti 10 secondi (Freccia Destra)"
                >
                  <RotateCw className="w-4 h-4" />
                </button>
              </>
            )}

            {/* Volume Control */}
            <div className="flex items-center gap-1.5 ml-2 group/vol">
              <button
                onClick={toggleMute}
                className="p-2 text-zinc-300 hover:text-white hover:bg-white/10 rounded-lg transition"
                title={isMuted ? 'Riattiva audio (M)' : 'Silenzia (M)'}
              >
                {isMuted || volume === 0 ? (
                  <VolumeX className="w-5 h-5 text-rose-400" />
                ) : (
                  <Volume2 className="w-5 h-5" />
                )}
              </button>
              <input
                type="range"
                min={0}
                max={1}
                step={0.05}
                value={isMuted ? 0 : volume}
                onChange={handleVolumeChange}
                className="w-16 h-1 bg-zinc-700 rounded-lg appearance-none cursor-pointer accent-emerald-500 opacity-70 group-hover/vol:opacity-100 transition-opacity"
              />
            </div>

            {media.type === 'live' && (
              <div className="flex items-center gap-1.5 px-2.5 py-1 rounded bg-rose-950/60 border border-rose-800/50 text-rose-400 text-xs font-semibold">
                <span className="w-2 h-2 rounded-full bg-rose-500 animate-pulse"></span>
                DIRETTA TV
              </div>
            )}
          </div>

          <div className="flex items-center gap-2">
            {/* Aspect Ratio Toggle */}
            <button
              onClick={() => {
                const modes: Array<'contain' | 'cover' | 'fill'> = ['contain', 'cover', 'fill'];
                const next = modes[(modes.indexOf(aspectRatio) + 1) % modes.length];
                setAspectRatio(next);
              }}
              className="px-2 py-1 text-xs font-medium text-zinc-300 hover:text-white hover:bg-white/10 rounded border border-zinc-700 transition"
              title="Cambia formato video (Adatta / Riempi / 16:9)"
            >
              {aspectRatio === 'contain' ? 'Adatta' : aspectRatio === 'cover' ? 'Espandi' : 'Riempi'}
            </button>

            {/* Playback Speed (for VOD) */}
            {media.type !== 'live' && (
              <div className="relative">
                <button
                  onClick={() => setShowSettings(!showSettings)}
                  className="px-2 py-1 text-xs font-medium text-zinc-300 hover:text-white hover:bg-white/10 rounded border border-zinc-700 transition"
                  title="Velocità di riproduzione"
                >
                  {playbackSpeed}x
                </button>
                {showSettings && (
                  <div className="absolute bottom-full right-0 mb-2 py-1 px-1 bg-zinc-900 border border-zinc-700 rounded-lg shadow-xl flex flex-col gap-1 min-w-24 z-30">
                    {[0.5, 0.75, 1, 1.25, 1.5, 2].map((s) => (
                      <button
                        key={s}
                        onClick={() => handleSpeedChange(s)}
                        className={`px-3 py-1 text-xs text-left rounded hover:bg-zinc-800 transition ${
                          playbackSpeed === s ? 'text-emerald-400 font-semibold' : 'text-zinc-300'
                        }`}
                      >
                        {s}x {s === 1 && '(Normale)'}
                      </button>
                    ))}
                  </div>
                )}
              </div>
            )}

            {/* PiP Button */}
            <button
              onClick={togglePiP}
              className="p-2 text-zinc-300 hover:text-white hover:bg-white/10 rounded-lg transition"
              title="Picture in Picture (Finestra fluttuante)"
            >
              <Cast className="w-5 h-5" />
            </button>

            {/* Fullscreen Button */}
            <button
              onClick={toggleFullscreen}
              className="p-2 text-zinc-300 hover:text-white hover:bg-white/10 rounded-lg transition"
              title={isFullscreen ? 'Esci da schermo intero (F)' : 'Schermo intero (F)'}
            >
              {isFullscreen ? <Minimize2 className="w-5 h-5" /> : <Maximize2 className="w-5 h-5" />}
            </button>
          </div>
        </div>
      </div>
    </div>
  );
};
