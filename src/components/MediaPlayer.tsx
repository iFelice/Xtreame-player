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
  X,
  Tv,
  Film,
  AlertCircle,
  RefreshCw,
  Cast,
  Download,
  ChevronLeft,
  ChevronRight,
  SkipBack,
  SkipForward,
  Ratio,
} from 'lucide-react';
import Hls from 'hls.js';
import mpegts from 'mpegts.js';
import { Capacitor } from '@capacitor/core';
import { PlayableMediaItem } from '../types/xtream';
import { storage } from '../services/storage';
import { triggerMediaDownload, isTvEnvironment } from '../utils/downloadHelper';

interface MediaPlayerProps {
  media: PlayableMediaItem | null;
  onClose: () => void;
  onNext?: () => void;
  onPrevious?: () => void;
  accountKey?: string;
}

export const MediaPlayer: React.FC<MediaPlayerProps> = ({
  media,
  onClose,
  onNext,
  onPrevious,
  accountKey,
}) => {
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
  const [isWindowFullscreen, setIsWindowFullscreen] = useState<boolean>(false);
  const [isLoading, setIsLoading] = useState<boolean>(true);
  const [errorMessage, setErrorMessage] = useState<string | null>(null);
  const [playbackSpeed, setPlaybackSpeed] = useState<number>(1);
  const isTv = isTvEnvironment();
  const isNative = typeof window !== 'undefined' && (Capacitor.isNativePlatform() || window.location.protocol === 'capacitor:');
  const [aspectRatio, setAspectRatio] = useState<'contain' | '16_9' | '4_3' | 'cover' | 'fill'>('contain');
  const [showSettings, setShowSettings] = useState<boolean>(false);
  const [controlsVisible, setControlsVisible] = useState<boolean>(true);
  const [useProxy, setUseProxy] = useState<boolean>(() => {
    // A Capacitor WebView has no Express server behind capacitor://localhost.
    // Never restore a web proxy preference when running the native app.
    if (isNative) return false;
    try {
      const saved = localStorage.getItem('xtream_use_proxy');
      if (saved !== null) return saved === 'true';
      return true; // Web deployment uses the Express proxy by default.
    } catch {
      return true;
    }
  });
  const [liveFormat, setLiveFormat] = useState<'m3u8' | 'ts'>('m3u8');
  const hideControlsTimerRef = useRef<any>(null);

  // Sync fullscreen state with native browser events
  useEffect(() => {
    const handleFsChange = () => {
      const isDocFs = Boolean(document.fullscreenElement || (document as any).webkitFullscreenElement);
      setIsFullscreen(isDocFs);
      if (!isDocFs && !isWindowFullscreen) {
        setIsWindowFullscreen(false);
      }
    };
    document.addEventListener('fullscreenchange', handleFsChange);
    document.addEventListener('webkitfullscreenchange', handleFsChange);
    return () => {
      document.removeEventListener('fullscreenchange', handleFsChange);
      document.removeEventListener('webkitfullscreenchange', handleFsChange);
    };
  }, [isWindowFullscreen]);

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

    // Native Capacitor builds cannot use relative Express routes. Unwrap any
    // previously generated proxy URL and always connect to the IPTV host.
    if (isNative && target.startsWith('/api/proxy/stream?url=')) {
      const query = target.split('?')[1] || '';
      return new URLSearchParams(query).get('url') || target;
    }
    if (isNative) return target;

    if (useProxy) {
      if (target.startsWith('/api/proxy/stream')) {
        return target;
      }
      return `/api/proxy/stream?url=${encodeURIComponent(target)}`;
    }

    if (target.startsWith('/api/proxy/stream?url=')) {
      const query = target.split('?')[1] || '';
      return new URLSearchParams(query).get('url') || target;
    }
    return target;
  }, [media, useProxy, liveFormat, isNative]);

  // Activity timer to hide controls during playback
  const showControlsTemporarily = useCallback(() => {
    setControlsVisible(true);
    if (hideControlsTimerRef.current) clearTimeout(hideControlsTimerRef.current);
    if (isPlaying) {
      hideControlsTimerRef.current = setTimeout(() => {
        setControlsVisible(false);
        setShowSettings(false);
      }, 4000);
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
      // Enhanced Real-time MPEG-TS streaming with higher buffer & latency protection
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
            liveBufferLatencyChasing: false,
            liveBufferLatencyMaxLatency: 12.0,
            liveBufferLatencyMinRemain: 2.0,
            autoCleanupSourceBuffer: true,
            autoCleanupMaxBackwardDuration: 40,
            autoCleanupMinBackwardDuration: 20,
            fixAudioTimestampGap: true,
            accurateSeek: false,
          }
        );
        mpegtsRef.current = player;
        player.attachMediaElement(video);
        player.load();

        player.on(mpegts.Events.MEDIA_INFO, () => {
          setIsLoading(false);
          setIsPlaying(true);
        });

        player.on(mpegts.Events.ERROR, (errorType: string, errorDetail: string, info: any) => {
          console.warn('mpegts event warning/error:', errorType, errorDetail, info);
          if (video && (video.currentTime > 1 || video.readyState >= 2)) {
            return;
          }
          if (!video || video.currentTime === 0) {
            setErrorMessage('Impossibile caricare il flusso live MPEG-TS. Clicca su Riprova o Proxy.');
            setIsLoading(false);
          }
        });

        video
          .play()
          .then(() => {
            setIsLoading(false);
            setIsPlaying(true);
          })
          .catch((e) => {
            console.warn('Playback waiting on user action:', e);
            setIsLoading(false);
          });
      } catch (err: any) {
        console.error('MPEG-TS init failed, falling back to HLS:', err);
        setLiveFormat('m3u8');
      }
    } else if (isLive && liveFormat === 'm3u8' && Hls.isSupported()) {
      // Enhanced HLS.js streaming configuration for smooth and stable playback
      const hls = new Hls({
        enableWorker: true,
        lowLatencyMode: false,
        backBufferLength: 60,
        maxBufferLength: 60,
        maxMaxBufferLength: 120,
        maxBufferSize: 60 * 1000 * 1000,
        highBufferWatchdogPeriod: 2,
        nudgeMaxRetry: 10,
      });

      hlsRef.current = hls;
      hls.loadSource(url);
      hls.attachMedia(video);

      hls.on(Hls.Events.MANIFEST_PARSED, () => {
        setIsLoading(false);
        video
          .play()
          .then(() => setIsPlaying(true))
          .catch((e) => {
            console.warn('Autoplay prevented:', e);
            setIsLoading(false);
          });
      });

      hls.on(Hls.Events.ERROR, (_event, data) => {
        if (!data.fatal) return;

        console.warn('HLS fatal error:', data.type, data.details);
        switch (data.type) {
          case Hls.ErrorTypes.NETWORK_ERROR:
            if (video && (video.currentTime > 1 || video.readyState >= 2)) {
              hls.startLoad();
            } else {
              const isHttps = typeof window !== 'undefined' && window.location.protocol === 'https:';
              if (isHttps && !useProxy) {
                setErrorMessage(
                  'Il browser blocca lo stream HTTP diretto. Clicca su "Attiva Proxy HTTPS" sotto.'
                );
                setIsLoading(false);
              } else {
                setLiveFormat('ts');
              }
            }
            break;
          case Hls.ErrorTypes.MEDIA_ERROR:
            try {
              hls.recoverMediaError();
            } catch {
              try {
                hls.swapAudioCodec();
                hls.recoverMediaError();
              } catch {
                hls.destroy();
                setLiveFormat('ts');
              }
            }
            break;
          default:
            hls.destroy();
            setLiveFormat('ts');
            break;
        }
      });
    } else if (isLive && video.canPlayType('application/vnd.apple.mpegurl')) {
      // Native Apple HLS (iOS Safari, macOS Safari / Catalyst)
      video.src = url;
      video.load();
      video
        .play()
        .then(() => {
          setIsLoading(false);
          setIsPlaying(true);
        })
        .catch(() => {
          setIsLoading(false);
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

      // Stop WebKit/AVFoundation from continuing to buffer a multi-GB VOD
      // after the player is closed or another title is selected.
      video.pause();
      video.removeAttribute('src');
      video.load();
    };
  }, [media, getEffectiveUrl, liveFormat]);

  // Video event handlers
  const handleTimeUpdate = () => {
    if (videoRef.current) {
      setCurrentTime(videoRef.current.currentTime);
      if (media && videoRef.current.duration > 0 && Math.floor(videoRef.current.currentTime) % 5 === 0) {
        storage.saveHistory(media, videoRef.current.currentTime, videoRef.current.duration, accountKey);
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
    if (document.fullscreenElement || (document as any).webkitFullscreenElement || isWindowFullscreen) {
      setIsFullscreen(false);
      setIsWindowFullscreen(false);
      try {
        if (document.fullscreenElement) {
          await document.exitFullscreen();
        } else if ((document as any).webkitExitFullscreen) {
          (document as any).webkitExitFullscreen();
        }
      } catch (err) {}
    } else {
      setIsFullscreen(true);
      setIsWindowFullscreen(true);
      try {
        if (containerRef.current?.requestFullscreen) {
          await containerRef.current.requestFullscreen();
        } else if ((containerRef.current as any)?.webkitRequestFullscreen) {
          (containerRef.current as any).webkitRequestFullscreen();
        } else if ((videoRef.current as any)?.webkitEnterFullscreen) {
          (videoRef.current as any).webkitEnterFullscreen();
        }
      } catch (err) {
        console.warn('Native requestFullscreen fallback to full window', err);
      }
    }
  };

  const cycleAspectRatio = () => {
    const modes: Array<'contain' | '16_9' | '4_3' | 'cover' | 'fill'> = ['contain', '16_9', '4_3', 'cover', 'fill'];
    const idx = modes.indexOf(aspectRatio);
    const next = modes[(idx + 1) % modes.length];
    setAspectRatio(next);
  };

  const getAspectLabel = () => {
    switch (aspectRatio) {
      case 'contain':
        return 'Adatta 100% (Originale)';
      case '16_9':
        return '16:9 Panoramico';
      case '4_3':
        return '4:3 TV Classica';
      case 'cover':
        return 'Espandi / Zoom';
      case 'fill':
        return 'Riempi Schermo';
      default:
        return 'Formato';
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

  // Keyboard controls
  useEffect(() => {
    const handleKeyDown = (e: KeyboardEvent) => {
      if (['INPUT', 'TEXTAREA'].includes((e.target as HTMLElement).tagName)) return;

      if (e.code === 'Space') {
        e.preventDefault();
        togglePlay();
      } else if (e.code === 'ArrowRight' || e.code === 'KeyN' || e.code === 'PageDown') {
        e.preventDefault();
        if (media?.type === 'live' && onNext) {
          onNext();
        } else {
          handleSkip(10);
        }
      } else if (e.code === 'ArrowLeft' || e.code === 'KeyP' || e.code === 'PageUp') {
        e.preventDefault();
        if (media?.type === 'live' && onPrevious) {
          onPrevious();
        } else {
          handleSkip(-10);
        }
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
        if (isWindowFullscreen) {
          setIsWindowFullscreen(false);
          setIsFullscreen(false);
        } else {
          onClose();
        }
      }
    };

    window.addEventListener('keydown', handleKeyDown);
    return () => window.removeEventListener('keydown', handleKeyDown);
  }, [isPlaying, duration, isMuted, onClose, isWindowFullscreen]);

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
      data-media-player="true"
      onMouseMove={showControlsTemporarily}
      className={`transition-all duration-300 ${
        isWindowFullscreen
          ? 'fixed inset-0 z-[99999] w-screen h-screen bg-black flex items-center justify-center select-none overflow-hidden'
          : 'relative w-full bg-black select-none overflow-hidden rounded-3xl shadow-2xl border border-zinc-800 aspect-video max-h-[72vh] flex items-center justify-center group mx-auto'
      }`}
    >
      {/* Video Element with exact aspect ratio & fit control (Guaranteed NO cropping with object-contain) */}
      <video
        ref={videoRef}
        playsInline
        preload="metadata"
        onTimeUpdate={handleTimeUpdate}
        onLoadedMetadata={handleLoadedMetadata}
        onLoadedData={() => setIsLoading(false)}
        onCanPlay={() => setIsLoading(false)}
        onPlay={() => setIsPlaying(true)}
        onPause={() => setIsPlaying(false)}
        onWaiting={() => setIsLoading(true)}
        onPlaying={() => setIsLoading(false)}
        onError={() => {
          if (videoRef.current && (videoRef.current.currentTime > 1 || videoRef.current.readyState >= 3 || videoRef.current.videoWidth > 0)) {
            console.warn('HTML5 video onError ignored because video is actively playing');
            return;
          }
          // The fallback exists only on web: native Capacitor builds have no
          // Express proxy available at capacitor://localhost.
          if (!isNative && !useProxy) {
            console.log('Video error on direct stream, auto-switching to proxy...');
            setUseProxy(true);
            return;
          }
          setIsLoading(false);
          setErrorMessage(
            'Errore di caricamento del flusso video. Verifica se il canale o server IPTV è attivo, oppure prova a cambiare formato (.ts / .m3u8).'
          );
        }}
        onClick={togglePlay}
        style={{
          objectFit:
            aspectRatio === 'cover'
              ? 'cover'
              : aspectRatio === 'fill'
              ? 'fill'
              : 'contain',
          transform: aspectRatio === 'cover' ? 'scale(1.18)' : 'none',
        }}
        className={`cursor-pointer transition-all duration-200 ${
          aspectRatio === 'fill'
            ? 'w-full h-full object-fill'
            : aspectRatio === 'cover'
            ? 'w-full h-full min-w-full min-h-full object-cover'
            : aspectRatio === '16_9'
            ? 'w-full h-full max-w-full max-h-full aspect-video object-fill'
            : aspectRatio === '4_3'
            ? 'h-full aspect-[4/3] max-w-full object-fill mx-auto'
            : 'w-full h-full max-w-full max-h-full object-contain'
        }`}
      />

      {/* Loading Spinner */}
      {isLoading && !errorMessage && (
        <div className="absolute inset-0 flex flex-col items-center justify-center bg-black/60 pointer-events-none backdrop-blur-xs">
          <div className="w-14 h-14 border-4 border-emerald-500/20 border-t-emerald-500 rounded-full animate-spin mb-3"></div>
          <span className="text-zinc-200 text-sm sm:text-base font-bold tracking-wide">
            Caricamento stream multimediale...
          </span>
        </div>
      )}

      {/* Error Overlay */}
      {errorMessage && (!videoRef.current || videoRef.current.paused || videoRef.current.currentTime === 0) && (
        <div className="absolute inset-0 flex flex-col items-center justify-center bg-zinc-950/95 p-6 text-center z-30">
          <AlertCircle className="w-14 h-14 text-rose-500 mb-3 animate-pulse" />
          <h3 className="text-lg sm:text-xl font-bold text-white mb-2">Impossibile riprodurre lo stream</h3>
          <p className="text-sm sm:text-base text-zinc-300 max-w-md mb-6 leading-relaxed">{errorMessage}</p>

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
              className="px-5 py-3 bg-emerald-600 hover:bg-emerald-500 text-white rounded-xl text-sm sm:text-base font-bold flex items-center gap-2 transition cursor-pointer shadow-lg"
            >
              <RefreshCw className="w-4 h-4" />
              Riprova
            </button>

            {media.type === 'live' && (
              <button
                onClick={() => setLiveFormat(liveFormat === 'm3u8' ? 'ts' : 'm3u8')}
                className="px-5 py-3 bg-rose-600 hover:bg-rose-500 text-white rounded-xl text-sm sm:text-base font-bold flex items-center gap-2 transition cursor-pointer shadow-lg"
              >
                Passa a formato {liveFormat === 'm3u8' ? 'MPEG-TS (.ts)' : 'HLS (.m3u8)'}
              </button>
            )}

            {!isNative && (
              <button
                onClick={() => {
                  const nextVal = !useProxy;
                  setUseProxy(nextVal);
                  try {
                    localStorage.setItem('xtream_use_proxy', String(nextVal));
                  } catch {}
                  setErrorMessage(null);
                  setIsLoading(true);
                }}
                className={`px-5 py-3 rounded-xl text-sm sm:text-base font-bold flex items-center gap-2 transition cursor-pointer shadow-lg ${
                  !useProxy
                    ? 'bg-emerald-600 hover:bg-emerald-500 text-white shadow-emerald-950/50'
                    : 'bg-zinc-800 hover:bg-zinc-700 text-zinc-200 border border-zinc-700'
                }`}
              >
                {useProxy ? '⚡ Passa a Stream Diretto' : '🛡️ Attiva Proxy HTTPS'}
              </button>
            )}

          </div>
        </div>
      )}

      {/* Side floating channel zapping buttons for Live TV */}
      {media.type === 'live' && onPrevious && (
        <button
          type="button"
          onClick={(e) => {
            e.stopPropagation();
            onPrevious();
          }}
          className={`absolute left-4 top-1/2 -translate-y-1/2 p-3 sm:p-4 rounded-full bg-black/75 hover:bg-rose-600 text-white shadow-2xl backdrop-blur-md border border-white/20 transition-all z-20 cursor-pointer ${
            controlsVisible ? 'opacity-100 scale-100' : 'opacity-0 scale-95 pointer-events-none'
          }`}
          title="Canale Precedente (⏮️ / Freccia Sinistra / P)"
        >
          <ChevronLeft className="w-6 h-6 sm:w-8 sm:h-8" />
        </button>
      )}

      {media.type === 'live' && onNext && (
        <button
          type="button"
          onClick={(e) => {
            e.stopPropagation();
            onNext();
          }}
          className={`absolute right-4 top-1/2 -translate-y-1/2 p-3 sm:p-4 rounded-full bg-black/75 hover:bg-rose-600 text-white shadow-2xl backdrop-blur-md border border-white/20 transition-all z-20 cursor-pointer ${
            controlsVisible ? 'opacity-100 scale-100' : 'opacity-0 scale-95 pointer-events-none'
          }`}
          title="Canale Successivo (⏭️ / Freccia Destra / N)"
        >
          <ChevronRight className="w-6 h-6 sm:w-8 sm:h-8" />
        </button>
      )}

      {/* Top Header Bar (Title & Actions - clean without duplicate format buttons) */}
      <div
        className={`absolute top-0 left-0 right-0 p-4 sm:p-6 bg-gradient-to-b from-black/95 via-black/60 to-transparent transition-opacity duration-300 z-20 flex items-center justify-between ${
          controlsVisible || !isPlaying ? 'opacity-100' : 'opacity-0 pointer-events-none'
        }`}
      >
        <div className="flex items-center gap-3 min-w-0">
          <div className="p-2 sm:p-2.5 rounded-2xl bg-emerald-500/20 text-emerald-400 border border-emerald-500/30 shrink-0">
            {media.type === 'movie' ? (
              <Film className="w-6 h-6" />
            ) : (
              <Tv className="w-6 h-6" />
            )}
          </div>
          <div className="min-w-0">
            <div className="flex items-center gap-2">
              <h2 className="text-white font-bold text-base sm:text-xl truncate drop-shadow-md">
                {media.title}
              </h2>
              {media.type === 'live' && (
                <div className="flex items-center gap-1.5 shrink-0 ml-1">
                  {onPrevious && (
                    <button
                      type="button"
                      onClick={onPrevious}
                      className="p-1 sm:p-1.5 rounded-lg bg-zinc-800/90 hover:bg-rose-600 text-zinc-300 hover:text-white transition cursor-pointer border border-zinc-700/60"
                      title="Canale Precedente"
                    >
                      <ChevronLeft className="w-4 h-4" />
                    </button>
                  )}
                  {onNext && (
                    <button
                      type="button"
                      onClick={onNext}
                      className="p-1 sm:p-1.5 rounded-lg bg-zinc-800/90 hover:bg-rose-600 text-zinc-300 hover:text-white transition cursor-pointer border border-zinc-700/60"
                      title="Canale Successivo"
                    >
                      <ChevronRight className="w-4 h-4" />
                    </button>
                  )}
                </div>
              )}
            </div>
            <div className="flex items-center gap-2.5 text-xs sm:text-sm text-zinc-300 mt-1">
              {media.categoryName && <span className="font-semibold text-zinc-300">{media.categoryName}</span>}
              {media.containerExtension && (
                <span className="uppercase px-2 py-0.5 rounded bg-zinc-800 text-zinc-300 text-xs font-mono font-bold">
                  {media.containerExtension}
                </span>
              )}
            </div>
          </div>
        </div>

        <div className="flex items-center gap-2">
          {!isTv && media.type !== 'live' && (
            <button
              type="button"
              onClick={(e) => {
                e.stopPropagation();
                e.preventDefault();
                void triggerMediaDownload(
                  media.streamUrl,
                  media.title,
                  media.type === 'series' ? 'episode' : 'movie',
                  media.poster,
                  media.containerExtension || 'mp4',
                  accountKey
                );
              }}
              title="Scarica nella cartella locale dell’app"
              aria-label="Scarica video"
              className="p-2 sm:p-2.5 bg-cyan-600 hover:bg-cyan-500 text-white rounded-2xl transition cursor-pointer shadow-lg"
            >
              <Download className="w-5 h-5 sm:w-6 sm:h-6" />
            </button>
          )}

          <button
            onClick={onClose}
            className="p-2 sm:p-2.5 text-zinc-300 hover:text-white hover:bg-white/10 rounded-2xl transition cursor-pointer"
            title="Chiudi lettore"
          >
            <X className="w-6 h-6 sm:w-7 sm:h-7" />
          </button>
        </div>
      </div>


      {/* Center Big Play Button (when paused) */}
      {!isPlaying && !isLoading && !errorMessage && (
        <button
          onClick={togglePlay}
          className="absolute z-20 w-16 h-16 sm:w-22 sm:h-22 rounded-full bg-emerald-600/90 hover:bg-emerald-500 text-white flex items-center justify-center shadow-2xl transition-transform transform hover:scale-110 active:scale-95 cursor-pointer"
        >
          <Play className="w-8 h-8 sm:w-11 sm:h-11 ml-1 fill-white" />
        </button>
      )}

      {/* Bottom Controls Bar */}
      <div
        className={`absolute bottom-0 left-0 right-0 p-4 sm:p-6 bg-gradient-to-t from-black/95 via-black/75 to-transparent transition-opacity duration-300 z-20 ${
          controlsVisible || !isPlaying ? 'opacity-100' : 'opacity-0 pointer-events-none'
        }`}
      >
        {/* Timeline Scrub Bar */}
        {media.type !== 'live' && duration > 0 && (
          <div className="flex items-center gap-3 mb-3">
            <span className="text-xs sm:text-sm font-mono text-zinc-200 min-w-14 text-right font-bold">
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
                className="w-full h-2 bg-zinc-700 rounded-lg appearance-none cursor-pointer accent-emerald-500 focus:outline-hidden hover:h-2.5 transition-all"
              />
            </div>
            <span className="text-xs sm:text-sm font-mono text-zinc-400 min-w-14 font-semibold">
              {formatTime(duration)}
            </span>
          </div>
        )}

        {/* Buttons Row */}
        <div className="flex items-center justify-between gap-2 flex-wrap">
          <div className="flex items-center gap-2 sm:gap-3">
            <button
              onClick={togglePlay}
              className="p-2 sm:p-2.5 text-white hover:text-emerald-400 hover:bg-white/10 rounded-2xl transition cursor-pointer"
              title={isPlaying ? 'Pausa (Spazio)' : 'Riproduci (Spazio)'}
            >
              {isPlaying ? <Pause className="w-6 h-6 fill-current" /> : <Play className="w-6 h-6 fill-current" />}
            </button>

            {/* Live TV Previous & Next Channel buttons */}
            {media.type === 'live' && (
              <>
                {onPrevious && (
                  <button
                    onClick={onPrevious}
                    className="p-2 text-zinc-300 hover:text-white hover:bg-white/10 rounded-2xl transition cursor-pointer"
                    title="Canale Precedente (⏮️ / Freccia Sinistra / P)"
                  >
                    <SkipBack className="w-5 h-5 sm:w-6 sm:h-6" />
                  </button>
                )}
                {onNext && (
                  <button
                    onClick={onNext}
                    className="p-2 text-zinc-300 hover:text-white hover:bg-white/10 rounded-2xl transition cursor-pointer"
                    title="Canale Successivo (⏭️ / Freccia Destra / N)"
                  >
                    <SkipForward className="w-5 h-5 sm:w-6 sm:h-6" />
                  </button>
                )}
              </>
            )}

            {media.type !== 'live' && (
              <>
                <button
                  onClick={() => handleSkip(-10)}
                  className="p-2 text-zinc-300 hover:text-white hover:bg-white/10 rounded-2xl transition cursor-pointer"
                  title="Indietro 10 secondi (Freccia Sinistra)"
                >
                  <RotateCcw className="w-5 h-5 sm:w-6 sm:h-6" />
                </button>
                <button
                  onClick={() => handleSkip(10)}
                  className="p-2 text-zinc-300 hover:text-white hover:bg-white/10 rounded-2xl transition cursor-pointer"
                  title="Avanti 10 secondi (Freccia Destra)"
                >
                  <RotateCw className="w-5 h-5 sm:w-6 sm:h-6" />
                </button>
              </>
            )}

            {/* Volume Control */}
            <div className="flex items-center gap-1.5 ml-1 sm:ml-2 group/vol">
              <button
                onClick={toggleMute}
                className="p-2 text-zinc-300 hover:text-white hover:bg-white/10 rounded-2xl transition cursor-pointer"
                title={isMuted ? 'Riattiva audio (M)' : 'Silenzia (M)'}
              >
                {isMuted || volume === 0 ? (
                  <VolumeX className="w-5 h-5 sm:w-6 sm:h-6 text-rose-400" />
                ) : (
                  <Volume2 className="w-5 h-5 sm:w-6 sm:h-6" />
                )}
              </button>
              <input
                type="range"
                min={0}
                max={1}
                step={0.05}
                value={isMuted ? 0 : volume}
                onChange={handleVolumeChange}
                className="w-16 sm:w-24 h-1.5 bg-zinc-700 rounded-lg appearance-none cursor-pointer accent-emerald-500 opacity-80 group-hover/vol:opacity-100 transition-opacity"
              />
            </div>

            {media.type === 'live' && (
              <div className="hidden sm:flex items-center gap-1.5 px-3 py-1 rounded-xl bg-rose-950/80 border border-rose-800/60 text-rose-400 text-xs sm:text-sm font-bold">
                <span className="w-2.5 h-2.5 rounded-full bg-rose-500 animate-pulse"></span>
                DIRETTA TV
              </div>
            )}
          </div>

          <div className="flex items-center gap-2">
            {/* Aspect Ratio Toggle (Adatta / 16:9 / 4:3 / Zoom / Riempi) */}
            <button
              onClick={cycleAspectRatio}
              className="px-3.5 sm:px-4 py-2 text-xs sm:text-sm font-bold text-zinc-100 hover:text-white bg-zinc-800 hover:bg-zinc-700 rounded-xl border border-zinc-600 transition cursor-pointer flex items-center gap-2 shadow-md"
              title="Cambia formato video: Adatta 100% (non taglia), 16:9, 4:3, Zoom, Riempi"
            >
              <Ratio className="w-4 h-4 text-emerald-400" />
              <span>{getAspectLabel()}</span>
            </button>

            {/* Playback Speed (for VOD) */}
            {media.type !== 'live' && (
              <div className="relative">
                <button
                  onClick={() => setShowSettings(!showSettings)}
                  className="px-3 py-2 text-xs sm:text-sm font-bold text-zinc-300 hover:text-white hover:bg-white/10 rounded-xl border border-zinc-700 transition cursor-pointer"
                  title="Velocità di riproduzione"
                >
                  {playbackSpeed}x
                </button>
                {showSettings && (
                  <div className="absolute bottom-full right-0 mb-2 py-1 px-1 bg-zinc-900 border border-zinc-700 rounded-xl shadow-2xl flex flex-col gap-1 min-w-28 z-30">
                    {[0.5, 0.75, 1, 1.25, 1.5, 2].map((s) => (
                      <button
                        key={s}
                        onClick={() => handleSpeedChange(s)}
                        className={`px-3 py-1.5 text-xs sm:text-sm text-left rounded-lg hover:bg-zinc-800 transition cursor-pointer ${
                          playbackSpeed === s ? 'text-emerald-400 font-bold' : 'text-zinc-300 font-medium'
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
              className="p-2 sm:p-2.5 text-zinc-300 hover:text-white hover:bg-white/10 rounded-2xl transition cursor-pointer"
              title="Picture in Picture (Finestra fluttuante)"
            >
              <Cast className="w-5 h-5 sm:w-6 sm:h-6" />
            </button>

            {/* Fullscreen Button */}
            <button
              onClick={toggleFullscreen}
              className="p-2 sm:p-2.5 text-zinc-300 hover:text-white hover:bg-white/10 rounded-2xl transition cursor-pointer"
              title={isFullscreen || isWindowFullscreen ? 'Esci da schermo intero (F / Esc)' : 'Schermo intero (F)'}
            >
              {isFullscreen || isWindowFullscreen ? (
                <Minimize2 className="w-5 h-5 sm:w-6 sm:h-6 text-emerald-400" />
              ) : (
                <Maximize2 className="w-5 h-5 sm:w-6 sm:h-6" />
              )}
            </button>
          </div>
        </div>
      </div>

    </div>
  );
};
