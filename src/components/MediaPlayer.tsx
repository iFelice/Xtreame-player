import { RemoteImage } from './RemoteImage';
import React, { useEffect, useRef, useState, useCallback, useReducer } from 'react';
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
  PictureInPicture2,
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
import { triggerMediaDownload, isDirectFileDownload, isTvEnvironment } from '../utils/downloadHelper';
import { getSecureImageUrl } from '../utils/imageUrl';
import { initialPlaybackState, isPlaybackLoading, playbackReducer } from '../player/playbackState';
import { destroyMediaEngines, releaseVideoElement, selectMediaEngine } from '../player/mediaEngine';
import { HLS_CONFIG, MPEGTS_CONFIG } from '../player/engineConfig';
import { canFallbackToMpegTs, isPublicMockStream } from '../player/streamFormat';
import { useIsMobileViewport } from '../utils/mobileLayout';
import { MobilePlayerErrorPanel } from './MobilePlayerErrorPanel';
import { AppleUnsupportedFormatPanel } from './AppleUnsupportedFormatPanel';
import { isAppleMobile } from '../utils/appleMobile';
import { STATIC_DEPLOY } from '../utils/deployTarget';
import { getPlaybackStreamUrl } from '../utils/streamUrl';
import { needsVlcOnAppleMobile } from '../utils/vlc';
import { shouldShowPipButton } from '../utils/pictureInPicture';

interface MediaPlayerProps {
  media: PlayableMediaItem | null;
  onClose: () => void;
  onNext?: () => void;
  onPrevious?: () => void;
  onFullscreenChange?: (isFullscreen: boolean) => void;
  accountKey?: string;
}

export const MediaPlayer: React.FC<MediaPlayerProps> = ({
  media,
  onClose,
  onNext,
  onPrevious,
  onFullscreenChange,
  accountKey,
}) => {
  const videoRef = useRef<HTMLVideoElement | null>(null);
  const containerRef = useRef<HTMLDivElement | null>(null);
  const hlsRef = useRef<Hls | null>(null);
  const mpegtsRef = useRef<any>(null);
  const destroyEngines = useCallback(() => {
    destroyMediaEngines({ hls: hlsRef.current, mpegts: mpegtsRef.current });
    hlsRef.current = null;
    mpegtsRef.current = null;
  }, []);

  const [playback, dispatchPlayback] = useReducer(playbackReducer, initialPlaybackState);
  const isPlaying = playback.status === 'playing';
  const isLoading = isPlaybackLoading(playback);
  const errorMessage = playback.error;
  const setIsPlaying = useCallback((playing: boolean) => {
    dispatchPlayback({ type: playing ? 'PLAYING' : 'PAUSE' });
  }, []);
  const setIsLoading = useCallback((loading: boolean) => {
    dispatchPlayback({ type: loading ? 'WAITING' : 'READY' });
  }, []);
  const setErrorMessage = useCallback((message: string | null) => {
    dispatchPlayback(message ? { type: 'FAIL', message } : { type: 'RESET_ERROR' });
  }, []);
  const [currentTime, setCurrentTime] = useState<number>(0);
  const [duration, setDuration] = useState<number>(0);
  const [showBufferingIndicator, setShowBufferingIndicator] = useState(false);
  const [startupSeconds, setStartupSeconds] = useState(0);
  const [volume, setVolume] = useState<number>(1);
  const [isMuted, setIsMuted] = useState<boolean>(false);
  const [isFullscreen, setIsFullscreen] = useState<boolean>(false);
  const [isWindowFullscreen, setIsWindowFullscreen] = useState<boolean>(false);
  const [playbackSpeed, setPlaybackSpeed] = useState<number>(1);
  const isTv = isTvEnvironment();
  const isMobile = useIsMobileViewport();
  const appleMobile = isAppleMobile();
  const needsExternalPlayer = Boolean(media && needsVlcOnAppleMobile(media.type, media.containerExtension, appleMobile));
  const staticDeploy = STATIC_DEPLOY;
  const isNative = typeof window !== 'undefined' && (Capacitor.isNativePlatform() || window.location.protocol === 'capacitor:');
  const isSafeMode = typeof window !== 'undefined' && !staticDeploy && !isNative && sessionStorage.getItem('xtream_safe_mode') === '1';
  const canSwitchLiveFormat = Boolean(!appleMobile && media?.type === 'live' && !isPublicMockStream(media.streamUrl));
  const [aspectRatio, setAspectRatio] = useState<'contain' | '16_9' | '4_3' | 'cover' | 'fill'>('contain');
  const [showSettings, setShowSettings] = useState<boolean>(false);
  // WebKit reports PiP availability per video element, and only after the
  // element exists, so the button appears once the source is ready.
  const [showPipButton, setShowPipButton] = useState<boolean>(() => shouldShowPipButton(appleMobile, null));
  const [controlsVisible, setControlsVisible] = useState<boolean>(true);
  const [useProxy, setUseProxy] = useState<boolean>(() => {
    // A Capacitor WebView has no Express server behind capacitor://localhost.
    // Never restore a web proxy preference when running the native app.
    if (isNative || staticDeploy) return false;
    try {
      // Safe development must never inherit a previous "direct stream" choice.
      if (sessionStorage.getItem('xtream_safe_mode') === '1') return true;
      const saved = localStorage.getItem('xtream_use_proxy');
      if (saved !== null) return saved === 'true';
      return true; // Web deployment uses the Express proxy by default.
    } catch {
      return true;
    }
  });
  const [liveFormat, setLiveFormat] = useState<'m3u8' | 'ts'>('m3u8');
  const hideControlsTimerRef = useRef<any>(null);
  const startupTimeoutRef = useRef<ReturnType<typeof setTimeout> | null>(null);
  const bufferingTimeoutRef = useRef<ReturnType<typeof setTimeout> | null>(null);
  const bufferingUiDelayRef = useRef<ReturnType<typeof setTimeout> | null>(null);
  const lastHistoryWriteRef = useRef(0);
  const seekPlaybackIntentRef = useRef<boolean | null>(null);
  const desiredPlayingRef = useRef(true);
  const hasStartedPlaybackRef = useRef(false);
  const playbackAttempt = playback.attempt;

  const clearPlaybackWatchdogs = useCallback(() => {
    if (startupTimeoutRef.current) clearTimeout(startupTimeoutRef.current);
    if (bufferingTimeoutRef.current) clearTimeout(bufferingTimeoutRef.current);
    startupTimeoutRef.current = null;
    bufferingTimeoutRef.current = null;
  }, []);

  useEffect(() => () => {
    if (hideControlsTimerRef.current) clearTimeout(hideControlsTimerRef.current);
    if (bufferingUiDelayRef.current) clearTimeout(bufferingUiDelayRef.current);
  }, []);

  useEffect(() => {
    if (needsExternalPlayer || playback.status !== 'loading') {
      setStartupSeconds(0);
      return;
    }
    setStartupSeconds(0);
    const timer = window.setInterval(() => setStartupSeconds((value) => value + 1), 1000);
    return () => window.clearInterval(timer);
  }, [playback.status, media?.id, needsExternalPlayer]);

  // Keep the app shell (mobile section bar and page padding) in sync with the
  // player takeover, whether it comes from the document or the window mode.
  useEffect(() => {
    onFullscreenChange?.(Boolean(isFullscreen || isWindowFullscreen));
  }, [isFullscreen, isWindowFullscreen, onFullscreenChange]);

  useEffect(() => () => onFullscreenChange?.(false), [onFullscreenChange]);

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

  // iOS plays fullscreen through the native video element and only reports the
  // exit with webkitendfullscreen, so mirror it back into the player state.
  useEffect(() => {
    const video = videoRef.current;
    if (!video) return;
    const handleNativeFullscreenEnd = () => {
      setIsFullscreen(false);
      setIsWindowFullscreen(false);
    };
    video.addEventListener('webkitendfullscreen', handleNativeFullscreenEnd);
    return () => video.removeEventListener('webkitendfullscreen', handleNativeFullscreenEnd);
  }, [media?.id]);

  // Static and native builds always unwrap saved proxy URLs before playback.
  const getEffectiveUrl = useCallback(() => {
    if (!media) return '';
    return getPlaybackStreamUrl(media, { useProxy, isNative, isAppleMobile: appleMobile, liveFormat });
  }, [media, useProxy, liveFormat, isNative, appleMobile]);

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
    if (!url) {
      setIsLoading(false);
      setErrorMessage('Il link diretto dello stream non è disponibile.');
      return;
    }
    if (bufferingUiDelayRef.current) clearTimeout(bufferingUiDelayRef.current);
    bufferingUiDelayRef.current = null;
    setShowBufferingIndicator(false);
    lastHistoryWriteRef.current = 0;
    desiredPlayingRef.current = true;
    seekPlaybackIntentRef.current = null;
    dispatchPlayback({ type: 'LOAD' });
    hasStartedPlaybackRef.current = false;
    clearPlaybackWatchdogs();

    // A stream must produce playable media within 20 seconds. Browsers can
    // otherwise leave a fetch pending forever without dispatching an error.
    startupTimeoutRef.current = setTimeout(() => {
      if (hasStartedPlaybackRef.current || video.currentTime > 0 || video.readyState >= 3) return;
      video.pause();
      destroyEngines();
      setIsPlaying(false);
      setIsLoading(false);
      setErrorMessage('Il contenuto non ha risposto entro 20 secondi. Riprova oppure torna al catalogo.');
    }, 20_000);

    // Engine cleanup is centralized and idempotent.
    destroyEngines();

    const isLive = media.type === 'live';
    const allowsMpegTsFallback = !appleMobile && canFallbackToMpegTs(media.type, media.streamUrl);
    const failOrFallback = (message: string) => {
      if (allowsMpegTsFallback) {
        setLiveFormat('ts');
      } else {
        setIsLoading(false);
        setErrorMessage(message);
      }
    };
    const engine = selectMediaEngine({
      isLive,
      liveFormat: appleMobile ? 'm3u8' : liveFormat,
      mediaExtension: media.containerExtension,
      supportsMpegTs: mpegts.isSupported(),
      supportsHlsJs: Hls.isSupported(),
      supportsNativeHls: Boolean(video.canPlayType('application/vnd.apple.mpegurl')),
      isAppleMobile: appleMobile,
    });

    if (engine === 'mpegts') {
      // Engine diagnostics may contain provider URLs with credentials.
      mpegts.LoggingControl.enableAll = false;
      // Enhanced Real-time MPEG-TS streaming with higher buffer & latency protection
      try {
        const player = mpegts.createPlayer(
          {
            type: 'mpegts',
            isLive: true,
            url,
          },
          MPEGTS_CONFIG
        );
        mpegtsRef.current = player;
        player.attachMediaElement(video);
        player.load();

        player.on(mpegts.Events.MEDIA_INFO, () => {
          setIsLoading(false);
          setIsPlaying(true);
        });

        player.on(mpegts.Events.ERROR, () => {
          // Engine diagnostics may contain the stream URL and credentials.
          console.warn('Errore del motore MPEG-TS.');
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
          .catch(() => {
            console.warn('Playback waiting on user action.');
            setIsLoading(false);
          });
      } catch {
        console.error('MPEG-TS init failed, falling back to HLS.');
        setLiveFormat('m3u8');
      }
    } else if (engine === 'hls-js') {
      // Enhanced HLS.js streaming configuration for smooth and stable playback
      const hls = new Hls(HLS_CONFIG);

      hlsRef.current = hls;
      hls.loadSource(url);
      hls.attachMedia(video);

      hls.on(Hls.Events.MANIFEST_PARSED, () => {
        setIsLoading(false);
        video
          .play()
          .then(() => setIsPlaying(true))
          .catch(() => {
            console.warn('Autoplay prevented.');
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
              if (isHttps && !useProxy && !staticDeploy) {
                setErrorMessage(
                  'Il browser blocca lo stream HTTP diretto. Clicca su "Attiva Proxy HTTPS" sotto.'
                );
                setIsLoading(false);
              } else {
                failOrFallback('Impossibile scaricare la playlist HLS. Verifica la connessione e riprova.');
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
                failOrFallback('Il browser non è riuscito a decodificare il flusso HLS.');
              }
            }
            break;
          default:
            hls.destroy();
            failOrFallback('Errore HLS non recuperabile. Riprova oppure torna al catalogo.');
            break;
        }
      });
    } else if (engine === 'native-hls') {
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
        .catch(() => {
          console.warn('Autoplay prevented or playback error.');
          setIsLoading(false);
        });
    }

    return () => {
      clearPlaybackWatchdogs();
      destroyEngines();

      // Stop WebKit/AVFoundation from continuing to buffer a multi-GB VOD
      // after the player is closed or another title is selected.
      releaseVideoElement(video);
    };
  }, [media, getEffectiveUrl, liveFormat, playbackAttempt, clearPlaybackWatchdogs, destroyEngines, appleMobile, staticDeploy, useProxy]);

  // Video event handlers
  const refreshPipAvailability = useCallback(() => {
    setShowPipButton(shouldShowPipButton(appleMobile, videoRef.current));
  }, [appleMobile]);

  // The video element exists as soon as a title is selected, so ask it before
  // any media event arrives (WebKit needs no decoding to answer).
  useEffect(() => {
    refreshPipAvailability();
  }, [refreshPipAvailability, media?.id]);

  const handlePlaybackReady = () => {
    hasStartedPlaybackRef.current = true;
    refreshPipAvailability();
    if (startupTimeoutRef.current) clearTimeout(startupTimeoutRef.current);
    if (bufferingTimeoutRef.current) clearTimeout(bufferingTimeoutRef.current);
    startupTimeoutRef.current = null;
    bufferingTimeoutRef.current = null;
    if (bufferingUiDelayRef.current) clearTimeout(bufferingUiDelayRef.current);
    bufferingUiDelayRef.current = null;
    setShowBufferingIndicator(false);
    setIsLoading(false);
  };

  const handleWaiting = () => {
    setIsLoading(true);
    if (hasStartedPlaybackRef.current && !bufferingUiDelayRef.current) {
      bufferingUiDelayRef.current = setTimeout(() => {
        bufferingUiDelayRef.current = null;
        if (videoRef.current?.readyState !== undefined && videoRef.current.readyState < 3) {
          setShowBufferingIndicator(true);
        }
      }, 1000);
    }
    if (!hasStartedPlaybackRef.current || bufferingTimeoutRef.current) return;
    bufferingTimeoutRef.current = setTimeout(() => {
      const video = videoRef.current;
      if (!video || video.readyState >= 3) return;
      video.pause();
      hlsRef.current?.stopLoad();
      setIsPlaying(false);
      setIsLoading(false);
      setErrorMessage('La riproduzione è rimasta in buffering per oltre 15 secondi. Controlla la connessione e riprova.');
    }, 15_000);
  };

  const handleTimeUpdate = () => {
    if (videoRef.current) {
      setCurrentTime(videoRef.current.currentTime);
      const elapsed = videoRef.current.currentTime;
      if (media && videoRef.current.duration > 0 && Math.abs(elapsed - lastHistoryWriteRef.current) >= 5) {
        lastHistoryWriteRef.current = elapsed;
        storage.saveHistory(media, elapsed, videoRef.current.duration, accountKey);
      }
    }
  };

  const handleLoadedMetadata = () => {
    if (videoRef.current) {
      setDuration(videoRef.current.duration || 0);
    }
    refreshPipAvailability();
  };

  const togglePlay = () => {
    if (!videoRef.current) return;
    if (desiredPlayingRef.current) {
      desiredPlayingRef.current = false;
      videoRef.current.pause();
      setIsPlaying(false);
    } else {
      // An explicit Play click supersedes every delayed event from the seek.
      desiredPlayingRef.current = true;
      seekPlaybackIntentRef.current = null;
      videoRef.current.play().catch(() => {
        desiredPlayingRef.current = false;
        setIsPlaying(false);
      });
      setIsPlaying(true);
    }
  };

  const handleSeek = (e: React.ChangeEvent<HTMLInputElement>) => {
    const video = videoRef.current;
    const time = parseFloat(e.target.value);
    setCurrentTime(time);
    if (!video) return;

    // Some browsers emit a transient play event while seeking HLS. Preserve
    // the user's state from before the seek instead of trusting that event.
    if (seekPlaybackIntentRef.current === null) {
      seekPlaybackIntentRef.current = desiredPlayingRef.current && !video.paused;
    }
    video.currentTime = time;
    if (seekPlaybackIntentRef.current === false) video.pause();
  };

  const finishSeekInteraction = () => {
    if (seekPlaybackIntentRef.current === false) {
      desiredPlayingRef.current = false;
      videoRef.current?.pause();
      setIsPlaying(false);
    }
  };

  const handleSeeked = () => {
    const video = videoRef.current;
    if (!video) return;
    const shouldResume = seekPlaybackIntentRef.current ?? desiredPlayingRef.current;
    if (shouldResume) seekPlaybackIntentRef.current = null;
    if (shouldResume) {
      void video.play().catch(() => setIsPlaying(false));
    } else {
      video.pause();
      setIsPlaying(false);
    }
  };

  const handleVideoPlay = () => {
    // HLS/Chrome may emit play while a paused seek is settling. The visual
    // state follows the user's explicit intent, never that transient event.
    if (!desiredPlayingRef.current) {
      videoRef.current?.pause();
      setIsPlaying(false);
      return;
    }
    setIsPlaying(true);
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
      } catch {
        console.warn('Native requestFullscreen fallback to full window.');
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
      const video = videoRef.current as HTMLVideoElement & {
        webkitPresentationMode?: string;
        webkitSupportsPresentationMode?: (mode: string) => boolean;
        webkitSetPresentationMode?: (mode: string) => void;
      };
      if (document.pictureInPictureElement) {
        await document.exitPictureInPicture();
        return;
      }
      // In the Home Screen web app document.pictureInPictureEnabled stays true
      // although requestPictureInPicture() is unsupported (WebKit bug 303885);
      // the WebKit presentation mode is the reliable path on Apple mobile.
      if (appleMobile && video.webkitSupportsPresentationMode?.('picture-in-picture') && video.webkitSetPresentationMode) {
        video.webkitSetPresentationMode(
          video.webkitPresentationMode === 'picture-in-picture' ? 'inline' : 'picture-in-picture',
        );
        return;
      }
      if (document.pictureInPictureEnabled && video.requestPictureInPicture) {
        await video.requestPictureInPicture();
      }
    } catch {
      console.error('Picture-in-Picture non disponibile.');
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
  if (needsExternalPlayer) {
    return (
      <AppleUnsupportedFormatPanel
        key={`${media.type}-${media.id}`}
        streamUrl={media.streamUrl}
        title={media.title}
        containerExtension={media.containerExtension}
        onClose={onClose}
      />
    );
  }

  return (
    <div
      ref={containerRef}
      data-media-player="true"
      onMouseMove={showControlsTemporarily}
      className={`transition-all duration-300 ${
        isWindowFullscreen
          ? 'fixed inset-0 z-[99999] w-screen h-screen bg-black flex items-center justify-center select-none overflow-hidden safe-area-screen'
          : 'relative w-full bg-black select-none overflow-hidden rounded-3xl shadow-2xl border border-separator aspect-video max-h-[72vh] flex items-center justify-center group mx-auto'
      }`}
    >
      {/* Video Element with exact aspect ratio & fit control (Guaranteed NO cropping with object-contain) */}
      <video
        ref={videoRef}
        playsInline
        x-webkit-airplay="allow"
        preload="metadata"
        onTimeUpdate={handleTimeUpdate}
        onLoadedMetadata={handleLoadedMetadata}
        onLoadedData={handlePlaybackReady}
        onCanPlay={handlePlaybackReady}
        onPlay={handleVideoPlay}
        onPause={() => setIsPlaying(false)}
        onSeeked={handleSeeked}
        onWaiting={handleWaiting}
        onPlaying={handlePlaybackReady}
        onError={() => {
          clearPlaybackWatchdogs();
          if (!appleMobile && videoRef.current && (videoRef.current.currentTime > 1 || videoRef.current.readyState >= 3 || videoRef.current.videoWidth > 0)) {
            console.warn('HTML5 video onError ignored because video is actively playing');
            return;
          }
          // Static/native builds have no Express proxy; on Apple mobile keep
          // the error visible instead of switching sources automatically.
          if (!staticDeploy && !isNative && !appleMobile && !useProxy) {
            console.log('Video error on direct stream, auto-switching to proxy...');
            setUseProxy(true);
            return;
          }
          if (appleMobile && videoRef.current) {
            videoRef.current.pause();
            setIsPlaying(false);
          }
          setIsLoading(false);
          setErrorMessage(appleMobile
            ? 'Errore di caricamento del flusso video. Verifica la connessione e riprova.'
            : 'Errore di caricamento del flusso video. Verifica se il canale o server IPTV è attivo, oppure prova a cambiare formato (.ts / .m3u8).'
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
      {(playback.status === 'loading' || showBufferingIndicator) && !errorMessage && (
        <div
          className={`absolute inset-0 flex flex-col items-center justify-center bg-surface-1/70 pointer-events-none overflow-hidden ${
            isMobile ? 'px-4 py-16' : ''
          }`}
        >
          {!isMobile && (media.backdrop || media.poster) && (
            <RemoteImage
              src={getSecureImageUrl(media.backdrop || media.poster || '')}
              alt=""
              aria-hidden="true"
              className="absolute inset-0 h-full w-full object-cover opacity-25 blur-sm scale-105"
            />
          )}
          <div className="absolute inset-0 bg-linear-to-b from-black via-black/55 to-black/70" />
          {isMobile ? (
            <div className="relative z-10 flex flex-col items-center text-center">
              <div className="w-8 h-8 border-[3px] border-accent/20 border-t-accent rounded-full animate-spin mb-1.5"></div>
              <span className="text-label text-xs leading-4 font-bold tracking-wide">
                {showBufferingIndicator ? 'Buffering…' : 'Caricamento…'}
              </span>
            </div>
          ) : (
            <div className="relative z-10 flex flex-col items-center px-6 text-center">
              <div className="w-14 h-14 border-4 border-accent/20 border-t-accent rounded-full animate-spin mb-4"></div>
              <span className="text-label text-sm sm:text-base font-bold tracking-wide">
                {showBufferingIndicator
                  ? 'Buffering del flusso…'
                  : startupSeconds < 3
                    ? 'Connessione al server…'
                    : startupSeconds < 7
                      ? 'Preparazione del video…'
                      : 'Il canale sta rispondendo, ancora un momento…'}
              </span>
              <span className="mt-2 max-w-md truncate text-xs text-label-secondary">{media.title}</span>
            </div>
          )}
        </div>
      )}

      {/* Error Overlay */}
      {errorMessage && (!videoRef.current || videoRef.current.paused || videoRef.current.currentTime === 0) &&
        (isMobile ? (
          <MobilePlayerErrorPanel
            message={errorMessage}
            canSwitchFormat={canSwitchLiveFormat}
            formatLabel={`Passa a formato ${liveFormat === 'm3u8' ? 'MPEG-TS (.ts)' : 'HLS (.m3u8)'}`}
            showProxyOption={!staticDeploy && !isNative && !isSafeMode}
            proxyLabel={useProxy ? '⚡ Passa a Stream Diretto' : '🛡️ Attiva Proxy HTTPS'}
            proxyFilled={!useProxy}
            onRetry={() => dispatchPlayback({ type: 'RETRY' })}
            onClose={onClose}
            onToggleFormat={() => setLiveFormat(liveFormat === 'm3u8' ? 'ts' : 'm3u8')}
            onToggleProxy={() => {
              const nextVal = !useProxy;
              setUseProxy(nextVal);
              try {
                localStorage.setItem('xtream_use_proxy', String(nextVal));
              } catch {}
              setErrorMessage(null);
              setIsLoading(true);
            }}
          />
        ) : (
          <div className="absolute inset-0 flex flex-col items-center justify-center bg-surface-0/95 p-6 text-center z-30">
            <AlertCircle className="w-14 h-14 text-danger mb-3 animate-pulse" />
            <h3 className="text-lg sm:text-xl font-bold text-label mb-2">Impossibile riprodurre lo stream</h3>
            <p className="text-sm sm:text-base text-label-secondary max-w-md mb-6 leading-relaxed">{errorMessage}</p>

            <div className="flex flex-wrap items-center justify-center gap-3">
              <button
                onClick={() => {
                  dispatchPlayback({ type: 'RETRY' });
                }}
                className="px-5 py-3 bg-accent hover:bg-accent-strong text-on-accent rounded-xl text-sm sm:text-base font-bold flex items-center gap-2 transition cursor-pointer shadow-lg"
              >
                <RefreshCw className="w-4 h-4" />
                Riprova
              </button>

              <button
                onClick={onClose}
                className="px-5 py-3 bg-surface-1 hover:bg-surface-2 text-label rounded-xl text-sm sm:text-base font-bold flex items-center gap-2 transition cursor-pointer border border-separator-strong"
              >
                <X className="w-4 h-4" />
                Torna al catalogo
              </button>

              {canSwitchLiveFormat && (
                <button
                  onClick={() => setLiveFormat(liveFormat === 'm3u8' ? 'ts' : 'm3u8')}
                  className="px-5 py-3 bg-live hover:brightness-110 text-on-accent rounded-xl text-sm sm:text-base font-bold flex items-center gap-2 transition cursor-pointer shadow-lg"
                >
                  Passa a formato {liveFormat === 'm3u8' ? 'MPEG-TS (.ts)' : 'HLS (.m3u8)'}
                </button>
              )}

              {!staticDeploy && !isNative && !isSafeMode && (
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
                      ? 'bg-accent hover:bg-accent-strong text-on-accent '
                      : 'bg-surface-1 hover:bg-surface-2 text-label border border-separator-strong'
                  }`}
                >
                  {useProxy ? '⚡ Passa a Stream Diretto' : '🛡️ Attiva Proxy HTTPS'}
                </button>
              )}

            </div>
          </div>
        ))}

      {/* Side floating channel zapping buttons for Live TV (not on mobile) */}
      {!isMobile && media.type === 'live' && onPrevious && (
        <button
          type="button"
          onClick={(e) => {
            e.stopPropagation();
            onPrevious();
          }}
          className={`absolute left-4 top-1/2 -translate-y-1/2 p-3 sm:p-4 rounded-full bg-surface-0/85 text-label hover:bg-live hover:text-on-accent shadow-2xl border border-white/20 transition-all z-20 cursor-pointer ${
            controlsVisible ? 'opacity-100 scale-100' : 'opacity-0 scale-95 pointer-events-none'
          }`}
          title="Canale Precedente (⏮️ / Freccia Sinistra / P)"
        >
          <ChevronLeft className="w-6 h-6 sm:w-8 sm:h-8" />
        </button>
      )}

      {!isMobile && media.type === 'live' && onNext && (
        <button
          type="button"
          onClick={(e) => {
            e.stopPropagation();
            onNext();
          }}
          className={`absolute right-4 top-1/2 -translate-y-1/2 p-3 sm:p-4 rounded-full bg-surface-0/85 text-label hover:bg-live hover:text-on-accent shadow-2xl border border-white/20 transition-all z-20 cursor-pointer ${
            controlsVisible ? 'opacity-100 scale-100' : 'opacity-0 scale-95 pointer-events-none'
          }`}
          title="Canale Successivo (⏭️ / Freccia Destra / N)"
        >
          <ChevronRight className="w-6 h-6 sm:w-8 sm:h-8" />
        </button>
      )}

      {/* Top Header Bar (Title & Actions - clean without duplicate format buttons) */}
      <div
        className={`absolute top-0 left-0 right-0 p-4 sm:p-6 bg-linear-to-b from-black/95 via-black/60 to-transparent transition-opacity duration-300 z-20 flex items-center justify-between ${isMobile ? 'gap-2' : ''} ${
          controlsVisible || !isPlaying ? 'opacity-100' : 'opacity-0 pointer-events-none'
        }`}
      >
        <div className={`flex items-center gap-3 min-w-0 ${isMobile ? 'flex-1' : ''}`}>
          <div className="p-2 sm:p-2.5 rounded-2xl bg-accent/20 text-accent-strong border border-accent/30 shrink-0">
            {media.type === 'movie' ? (
              <Film className="w-6 h-6" />
            ) : (
              <Tv className="w-6 h-6" />
            )}
          </div>
          <div className={`min-w-0 ${isMobile ? 'flex-1' : ''}`}>
            <div className="flex min-w-0 items-center gap-2">
              <h2 className="min-w-0 text-label font-bold text-base sm:text-xl truncate whitespace-nowrap drop-shadow-md">
                {media.title}
              </h2>
              {media.type === 'live' && (
                <div className="flex items-center gap-1.5 shrink-0 ml-1">
                  {onPrevious && (
                    <button
                      type="button"
                      onClick={onPrevious}
                      className={`flex items-center justify-center rounded-lg bg-surface-1/90 hover:bg-live text-label-secondary hover:text-on-accent transition cursor-pointer border border-separator-strong/60 ${
                        isMobile ? 'w-10 h-10 p-0' : 'p-1 sm:p-1.5'
                      }`}
                      title="Canale Precedente"
                    >
                      <ChevronLeft className="w-4 h-4" />
                    </button>
                  )}
                  {onNext && (
                    <button
                      type="button"
                      onClick={onNext}
                      className={`flex items-center justify-center rounded-lg bg-surface-1/90 hover:bg-live text-label-secondary hover:text-on-accent transition cursor-pointer border border-separator-strong/60 ${
                        isMobile ? 'w-10 h-10 p-0' : 'p-1 sm:p-1.5'
                      }`}
                      title="Canale Successivo"
                    >
                      <ChevronRight className="w-4 h-4" />
                    </button>
                  )}
                </div>
              )}
            </div>
            <div className="flex items-center gap-2.5 text-xs sm:text-sm text-label-secondary mt-1">
              {media.categoryName && <span className="font-semibold text-label-secondary">{media.categoryName}</span>}
              {media.containerExtension && (
                <span className="uppercase px-2 py-0.5 rounded bg-surface-1 text-label-secondary text-xs  font-bold">
                  {media.containerExtension}
                </span>
              )}
            </div>
          </div>
        </div>

        <div className="flex items-center gap-2">
          {!staticDeploy && !isTv && media.type !== 'live' && isDirectFileDownload(media.containerExtension) && (
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
              className="p-2 sm:p-2.5 bg-series hover:brightness-110 text-on-accent rounded-2xl transition cursor-pointer shadow-lg"
            >
              <Download className="w-5 h-5 sm:w-6 sm:h-6" />
            </button>
          )}

          <button
            onClick={onClose}
            className="p-2 sm:p-2.5 text-label-secondary hover:text-label hover:bg-white/10 rounded-2xl transition cursor-pointer"
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
          className="absolute z-20 w-16 h-16 sm:w-22 sm:h-22 rounded-full bg-accent/90 hover:bg-accent-strong text-on-accent flex items-center justify-center shadow-2xl transition-transform transform hover:scale-110 active:scale-95 cursor-pointer"
        >
          <Play className="w-8 h-8 sm:w-11 sm:h-11 ml-1 fill-white" />
        </button>
      )}

      {/* Bottom Controls Bar */}
      <div
        className={`absolute bottom-0 left-0 right-0 bg-linear-to-t from-black/95 via-black/75 to-transparent transition-opacity duration-300 z-20 ${
          isMobile ? 'px-2 py-3' : 'p-4 sm:p-6'
        } ${controlsVisible || !isPlaying ? 'opacity-100' : 'opacity-0 pointer-events-none'}`}
      >
        {/* Timeline Scrub Bar */}
        {media.type !== 'live' && duration > 0 && (
          <div className="flex items-center gap-3 mb-3">
            <span className="text-xs sm:text-sm  text-label min-w-14 text-right font-bold">
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
                onPointerUp={finishSeekInteraction}
                onKeyUp={finishSeekInteraction}
                className="w-full h-2 bg-surface-2 rounded-lg appearance-none cursor-pointer accent focus:outline-hidden hover:h-2.5 transition-all"
              />
            </div>
            <span className="text-xs sm:text-sm  text-label-secondary min-w-14 font-semibold">
              {formatTime(duration)}
            </span>
          </div>
        )}

        {/* Buttons Row: single line on mobile, untouched layout from md upwards */}
        <div
          className={`flex items-center justify-between ${isMobile ? 'gap-1 flex-nowrap' : 'gap-2 flex-wrap'}${
            !isTv ? ' glass rounded-full border border-glass-edge px-2 py-1' : ''
          }`}
        >
          <div className={`flex items-center ${isMobile ? 'gap-1' : 'gap-2 sm:gap-3'}`}>
            <button
              onClick={togglePlay}
              className={`flex items-center justify-center text-label hover:text-accent-strong hover:bg-white/10 rounded-2xl transition cursor-pointer ${
                isMobile ? 'w-10 h-10 p-0' : 'p-2 sm:p-2.5'
              }`}
              title={desiredPlayingRef.current ? 'Pausa (Spazio)' : 'Riproduci (Spazio)'}
            >
              {desiredPlayingRef.current ? <Pause className="w-6 h-6 fill-current" /> : <Play className="w-6 h-6 fill-current" />}
            </button>

            {/* Live TV Previous & Next Channel buttons (mobile uses the header arrows) */}
            {!isMobile && media.type === 'live' && (
              <>
                {onPrevious && (
                  <button
                    onClick={onPrevious}
                    className="p-2 text-label-secondary hover:text-label hover:bg-white/10 rounded-2xl transition cursor-pointer"
                    title="Canale Precedente (⏮️ / Freccia Sinistra / P)"
                  >
                    <SkipBack className="w-5 h-5 sm:w-6 sm:h-6" />
                  </button>
                )}
                {onNext && (
                  <button
                    onClick={onNext}
                    className="p-2 text-label-secondary hover:text-label hover:bg-white/10 rounded-2xl transition cursor-pointer"
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
                  className={`flex items-center justify-center text-label-secondary hover:text-label hover:bg-white/10 rounded-2xl transition cursor-pointer ${
                    isMobile ? 'w-10 h-10 p-0' : 'p-2'
                  }`}
                  title="Indietro 10 secondi (Freccia Sinistra)"
                >
                  <RotateCcw className="w-5 h-5 sm:w-6 sm:h-6" />
                </button>
                <button
                  onClick={() => handleSkip(10)}
                  className={`flex items-center justify-center text-label-secondary hover:text-label hover:bg-white/10 rounded-2xl transition cursor-pointer ${
                    isMobile ? 'w-10 h-10 p-0' : 'p-2'
                  }`}
                  title="Avanti 10 secondi (Freccia Destra)"
                >
                  <RotateCw className="w-5 h-5 sm:w-6 sm:h-6" />
                </button>
              </>
            )}

            {/* Volume Control: iOS cannot set video volume from JS, so mobile keeps only mute */}
            <div className={`flex items-center group/vol ${isMobile ? 'gap-0' : 'gap-1.5 ml-1 sm:ml-2'}`}>
              <button
                onClick={toggleMute}
                className={`flex items-center justify-center text-label-secondary hover:text-label hover:bg-white/10 rounded-2xl transition cursor-pointer ${
                  isMobile ? 'w-10 h-10 p-0' : 'p-2'
                }`}
                title={isMuted ? 'Riattiva audio (M)' : 'Silenzia (M)'}
              >
                {isMuted || volume === 0 ? (
                  <VolumeX className="w-5 h-5 sm:w-6 sm:h-6 text-danger" />
                ) : (
                  <Volume2 className="w-5 h-5 sm:w-6 sm:h-6" />
                )}
              </button>
              {!isMobile && (
                <input
                  type="range"
                  min={0}
                  max={1}
                  step={0.05}
                  value={isMuted ? 0 : volume}
                  onChange={handleVolumeChange}
                  className="w-16 sm:w-24 h-1.5 bg-surface-2 rounded-lg appearance-none cursor-pointer accent opacity-80 group-hover/vol:opacity-100 transition-opacity"
                />
              )}
            </div>

            {media.type === 'live' && (
              <div className="hidden sm:flex items-center gap-1.5 px-3 py-1 rounded-xl bg-live/80 border border-live/60 text-on-accent text-xs sm:text-sm font-bold">
                <span className="w-2.5 h-2.5 rounded-full bg-on-accent animate-pulse"></span>
                DIRETTA TV
              </div>
            )}
          </div>

          <div className={`flex items-center ${isMobile ? 'gap-1' : 'gap-2'}`}>
            {/* Aspect Ratio Toggle (icon only on mobile, label kept for screen readers) */}
            <button
              onClick={cycleAspectRatio}
              aria-label={`Formato video: ${getAspectLabel()}`}
              className={`text-xs sm:text-sm font-bold text-label hover:text-label bg-surface-1 hover:bg-surface-2 rounded-xl border border-separator-strong transition cursor-pointer flex items-center justify-center shadow-md ${
                isMobile ? 'w-10 h-10 p-0' : 'px-3.5 sm:px-4 py-2 gap-2'
              }`}
              title="Cambia formato video: Adatta 100% (non taglia), 16:9, 4:3, Zoom, Riempi"
            >
              <Ratio className="w-4 h-4 text-accent-strong" />
              {!isMobile && <span>{getAspectLabel()}</span>}
            </button>

            {/* Playback Speed (for VOD, desktop/TV only) */}
            {!isMobile && media.type !== 'live' && (
              <div className="relative">
                <button
                  onClick={() => setShowSettings(!showSettings)}
                  className="px-3 py-2 text-xs sm:text-sm font-bold text-label-secondary hover:text-label hover:bg-white/10 rounded-xl border border-separator-strong transition cursor-pointer"
                  title="Velocità di riproduzione"
                >
                  {playbackSpeed}x
                </button>
                {showSettings && (
                  <div className="absolute bottom-full right-0 mb-2 py-1 px-1 bg-surface-0 border border-separator-strong rounded-xl shadow-2xl flex flex-col gap-1 min-w-28 z-30">
                    {[0.5, 0.75, 1, 1.25, 1.5, 2].map((s) => (
                      <button
                        key={s}
                        onClick={() => handleSpeedChange(s)}
                        className={`px-3 py-1.5 text-xs sm:text-sm text-left rounded-lg hover:bg-surface-1 transition cursor-pointer ${
                          playbackSpeed === s ? 'text-accent-strong font-bold' : 'text-label-secondary font-medium'
                        }`}
                      >
                        {s}x {s === 1 && '(Normale)'}
                      </button>
                    ))}
                  </div>
                )}
              </div>
            )}

            {/* PiP Button: on Apple mobile only when the video element can
                actually enter Picture-in-Picture. */}
            {showPipButton && (
              <button
                onClick={togglePiP}
                className={`flex items-center justify-center text-label-secondary hover:text-label hover:bg-white/10 rounded-2xl transition cursor-pointer ${
                  isMobile ? 'w-10 h-10 p-0' : 'p-2 sm:p-2.5'
                }`}
                title="Picture in Picture (Finestra fluttuante)"
              >
                <PictureInPicture2 className="w-5 h-5 sm:w-6 sm:h-6" />
              </button>
            )}

            {/* Fullscreen Button */}
            <button
              onClick={toggleFullscreen}
              className={`flex items-center justify-center text-label-secondary hover:text-label hover:bg-white/10 rounded-2xl transition cursor-pointer ${
                isMobile ? 'w-10 h-10 p-0' : 'p-2 sm:p-2.5'
              }`}
              title={isFullscreen || isWindowFullscreen ? 'Esci da schermo intero (F / Esc)' : 'Schermo intero (F)'}
            >
              {isFullscreen || isWindowFullscreen ? (
                <Minimize2 className="w-5 h-5 sm:w-6 sm:h-6 text-accent-strong" />
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
