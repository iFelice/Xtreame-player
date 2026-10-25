import React, { lazy, Suspense, useState, useEffect, useCallback } from 'react';
import {
  Film,
  Tv,
  Layers,
  Star,
  Sparkles,
  AlertCircle,
  RefreshCw,
  CheckCircle2,
  LoaderCircle,
} from 'lucide-react';
import { Navbar } from './components/Navbar';
import { LoginForm } from './components/LoginForm';
import { ServerInfoModal } from './components/ServerInfoModal';
import { RecentProductsShelf } from './components/RecentProductsShelf';
import { SettingsSyncModal } from './components/SettingsSyncModal';
import { RemoteLoginView } from './components/RemoteLoginView';
import { MobileSectionBar } from './components/MobileSectionBar';

import {
  XtreamParsedUrl,
  XtreamAuthResponse,
  XtreamCategory,
  XtreamVodStream,
  XtreamLiveStream,
  XtreamSeries,
  PlayableMediaItem,
} from './types/xtream';
import { xtreamClient } from './services/xtreamClient';
import { pingPairingRelayHealth } from './services/pairingRequests';
import { storage, SavedAccount } from './services/storage';
import { buildStreamUrl } from './utils/parseXtreamUrl';
import { cleanupLegacyNativeDownloads, isTvEnvironment } from './utils/downloadHelper';
import { exitTvApp, isDirectMode, isWebOsBuild } from './platform/runtime';
import {
  isBackKeyCode,
  resolveTvBackAction,
  resolveTvExitConfirmAction,
  type TvBackAction,
  type TvBackState,
} from './platform/tvBack';
import { closeTvOverlay, isTvOverlayOpen } from './platform/tvOverlays';
import { useTvNavigation } from './utils/tvNavigation';
import { chooseLiveZapChannels, wrapLiveChannelIndex } from './player/liveZapping';
import { chooseInitialTab, shouldShowMobileBar } from './utils/navigation';
import type { SectionTab } from './utils/navigation';

const MediaPlayer = lazy(() => import('./components/MediaPlayer').then((module) => ({ default: module.MediaPlayer })));
const VodCatalog = lazy(() => import('./components/VodCatalog').then((module) => ({ default: module.VodCatalog })));
const LiveCatalog = lazy(() => import('./components/LiveCatalog').then((module) => ({ default: module.LiveCatalog })));
const SeriesCatalog = lazy(() => import('./components/SeriesCatalog').then((module) => ({ default: module.SeriesCatalog })));
const FavoritesView = lazy(() => import('./components/FavoritesView').then((module) => ({ default: module.FavoritesView })));

export default function App() {
  // Il target webOS è sempre una TV anche se in futuro il suo user-agent
  // smettesse di corrispondere all'euristica di isTvEnvironment().
  const isTv = isTvEnvironment() || isWebOsBuild();
  useTvNavigation(isTv);
  useEffect(() => {
    const applyExitFocusStyle = (event: FocusEvent) => {
      const target = event.target;
      if (!(target instanceof HTMLElement) || !target.matches('[data-tv-exit-choice="exit"]')) return;
      target.style.setProperty('border-color', '#10B981', 'important');
      target.style.setProperty('background-color', '#10B981', 'important');
      target.style.setProperty('color', '#FFFFFF', 'important');
    };
    const clearExitFocusStyle = (event: FocusEvent) => {
      const target = event.target;
      if (!(target instanceof HTMLElement) || !target.matches('[data-tv-exit-choice="exit"]')) return;
      target.style.removeProperty('border-color');
      target.style.removeProperty('background-color');
      target.style.removeProperty('color');
    };
    document.addEventListener('focusin', applyExitFocusStyle, true);
    document.addEventListener('focusout', clearExitFocusStyle, true);
    return () => {
      document.removeEventListener('focusin', applyExitFocusStyle, true);
      document.removeEventListener('focusout', clearExitFocusStyle, true);
    };
  }, []);
  const [serverUrl, setServerUrl] = useState<string>('');
  const [username, setUsername] = useState<string>('');
  const [password, setPassword] = useState<string>('');
  const [authData, setAuthData] = useState<XtreamAuthResponse | null>(null);
  const [safeMode, setSafeMode] = useState(false);

  // Novità is the landing section on phones, desktop and TV alike.
  const [activeTab, setActiveTab] = useState<SectionTab>('recent');
  const [showTvHome, setShowTvHome] = useState<boolean>(false);
  const [activeMedia, setActiveMedia] = useState<PlayableMediaItem | null>(null);
  const [liveZapChannels, setLiveZapChannels] = useState<XtreamLiveStream[] | undefined>(undefined);
  const [isPlayerFullscreen, setIsPlayerFullscreen] = useState<boolean>(false);
  const [selectedSeriesForModal, setSelectedSeriesForModal] = useState<string | number | null>(null);

  const [isLoadingCatalog, setIsLoadingCatalog] = useState<boolean>(false);
  const [isRefreshingCatalog, setIsRefreshingCatalog] = useState<boolean>(false);
  const [lastRefreshedAt, setLastRefreshedAt] = useState<number | null>(null);
  const [refreshSuccessMessage, setRefreshSuccessMessage] = useState<string | null>(null);
  const [errorMessage, setErrorMessage] = useState<string | null>(null);
  const [showServerInfo, setShowServerInfo] = useState<boolean>(false);
  const [showSettingsSyncModal, setShowSettingsSyncModal] = useState<boolean>(false);
  // Only webOS needs an explicit "esci dall'app?" step: the Back key has no
  // system-level meaning there, so the app owns its own exit.
  const [showTvExitConfirm, setShowTvExitConfirm] = useState<boolean>(false);
  const [isRemoteLoginPage, setIsRemoteLoginPage] = useState<boolean>(() => {
    // La schermata RemoteLogin usa /api/session/submit (endpoint Express): su
    // webOS l'abbinamento passa solo dal relay esterno configurato e quella
    // route non esiste nel pacchetto .ipk.
    if (isWebOsBuild() || typeof window === 'undefined') return false;
    const path = window.location.pathname.toLowerCase();
    const search = new URLSearchParams(window.location.search);
    return path.includes('remote-login') || search.get('page') === 'remote-login' || search.has('code');
  });
  const [savedAccounts, setSavedAccounts] = useState<SavedAccount[]>(() => storage.getAccounts());
  const [downloadFeedback, setDownloadFeedback] = useState<{
    status: 'started' | 'exporting' | 'finished';
    title: string;
  } | null>(null);

  // Remove the hidden persistent files created by the previous download
  // implementation. This one-time migration immediately recovers that space.
  useEffect(() => {
    void cleanupLegacyNativeDownloads();
  }, []);

  useEffect(() => {
    pingPairingRelayHealth();
  }, []);

  useEffect(() => {
    let hideTimer: ReturnType<typeof setTimeout> | undefined;
    const handleDownloadStatus = (event: Event) => {
      const { status, title } = (event as CustomEvent<{ status: string; title: string }>).detail;
      if (hideTimer) clearTimeout(hideTimer);
      if (status === 'cancelled' || status === 'error') {
        setDownloadFeedback(null);
      } else if (status === 'finished') {
        setDownloadFeedback({ status: 'finished', title });
        hideTimer = setTimeout(() => setDownloadFeedback(null), 3000);
      } else {
        setDownloadFeedback({ status: status as 'started' | 'exporting', title });
      }
    };
    window.addEventListener('xtream-download-status', handleDownloadStatus);
    return () => {
      window.removeEventListener('xtream-download-status', handleDownloadStatus);
      if (hideTimer) clearTimeout(hideTimer);
    };
  }, []);


  // Catalog data
  const [vodCategories, setVodCategories] = useState<XtreamCategory[]>([]);
  const [vodStreams, setVodStreams] = useState<XtreamVodStream[]>([]);
  const [liveCategories, setLiveCategories] = useState<XtreamCategory[]>([]);
  const [liveStreams, setLiveStreams] = useState<XtreamLiveStream[]>([]);
  const [seriesCategories, setSeriesCategories] = useState<XtreamCategory[]>([]);
  const [seriesList, setSeriesList] = useState<XtreamSeries[]>([]);

  // Function to refresh the existing catalog
  const handleRefreshCatalog = async () => {
    if (!serverUrl || !username || !password) return;
    setIsRefreshingCatalog(true);
    setErrorMessage(null);
    try {
      const [
        fetchedVodCats,
        fetchedVodStreams,
        fetchedLiveCats,
        fetchedLiveStreams,
        fetchedSeriesCats,
        fetchedSeries,
      ] = await Promise.all([
        xtreamClient.getVodCategories(serverUrl, username, password).catch(() => []),
        xtreamClient.getVodStreams(serverUrl, username, password).catch(() => []),
        xtreamClient.getLiveCategories(serverUrl, username, password).catch(() => []),
        xtreamClient.getLiveStreams(serverUrl, username, password).catch(() => []),
        xtreamClient.getSeriesCategories(serverUrl, username, password).catch(() => []),
        xtreamClient.getSeries(serverUrl, username, password).catch(() => []),
      ]);

      setVodCategories(fetchedVodCats);
      setVodStreams(fetchedVodStreams);
      setLiveCategories(fetchedLiveCats);
      setLiveStreams(fetchedLiveStreams);
      setSeriesCategories(fetchedSeriesCats);
      setSeriesList(fetchedSeries);
      setLastRefreshedAt(Date.now());

      setRefreshSuccessMessage(
        `Catalogo aggiornato: ${fetchedLiveStreams.length} canali live, ${fetchedVodStreams.length} film, ${fetchedSeries.length} serie TV.`
      );
      setTimeout(() => setRefreshSuccessMessage(null), 4000);
    } catch (err: any) {
      console.error('Refresh error:', err);
      setErrorMessage(`Errore durante l'aggiornamento del catalogo: ${err.message}`);
    } finally {
      setIsRefreshingCatalog(false);
    }
  };

  // Connect to server and fetch all catalogs
  const connectToServer = useCallback(
    async (targetServer: string, user: string, pass: string, originalLink?: string) => {
      setIsLoadingCatalog(true);
      setErrorMessage(null);

      try {
        // 1. Authenticate
        const auth = await xtreamClient.authenticate(targetServer, user, pass);

        if (auth.user_info?.status === 'Disabled') {
          throw new Error('Questo account Xtream risulta disabilitato sul server.');
        }
        if (auth.user_info?.auth === 0) {
          throw new Error('Nome utente o password non corretti per questo server Xtream.');
        }

        setAuthData(auth);
        setServerUrl(targetServer);
        setUsername(user);
        setPassword(pass);

        // Save account to history
        storage.saveAccount({
          id: `${targetServer}_${user}`,
          name: `${user} @ ${targetServer.replace(/^https?:\/\//, '')}`,
          serverUrl: targetServer,
          username: user,
          password: pass,
          lastUsed: Date.now(),
          originalLink,
          status: auth.user_info?.status,
          expDate: auth.user_info?.exp_date || undefined,
        });
        setSavedAccounts(storage.getAccounts());

        // 2. Fetch categories and streams concurrently
        const [
          fetchedVodCats,
          fetchedVodStreams,
          fetchedLiveCats,
          fetchedLiveStreams,
          fetchedSeriesCats,
          fetchedSeries,
        ] = await Promise.all([
          xtreamClient.getVodCategories(targetServer, user, pass).catch(() => []),
          xtreamClient.getVodStreams(targetServer, user, pass).catch(() => []),
          xtreamClient.getLiveCategories(targetServer, user, pass).catch(() => []),
          xtreamClient.getLiveStreams(targetServer, user, pass).catch(() => []),
          xtreamClient.getSeriesCategories(targetServer, user, pass).catch(() => []),
          xtreamClient.getSeries(targetServer, user, pass).catch(() => []),
        ]);

        setVodCategories(fetchedVodCats);
        setVodStreams(fetchedVodStreams);
        setLiveCategories(fetchedLiveCats);
        setLiveStreams(fetchedLiveStreams);
        setSeriesCategories(fetchedSeriesCats);
        setSeriesList(fetchedSeries);
        setLastRefreshedAt(Date.now());

        // Land on Novità whenever there are movies or series; otherwise Live TV.
        setActiveTab(
          chooseInitialTab({
            live: fetchedLiveStreams.length,
            movies: fetchedVodStreams.length,
            series: fetchedSeries.length,
          })
        );
        // A successful login always starts from the catalog, never from TV Home.
        setShowTvHome(false);
      } catch (err: any) {
        console.error('Connection error:', err);
        setErrorMessage(
          err.message ||
            'Impossibile connettersi al server Xtream Codes. Verifica il link o la raggiungibilità del server.'
        );
      } finally {
        setIsLoadingCatalog(false);
      }
    },
    []
  );

  // Safe development always selects the local mock and never restores real accounts.
  useEffect(() => {
    let cancelled = false;

    const restoreSession = async () => {
      // Modalità diretta (Capacitor, pacchetto webOS da file://): non esiste
      // alcun Express da interrogare, quindi la safe mode è semplicemente
      // spenta e si passa subito al ripristino dell'ultimo account.
      let runtimeSafeMode = false;
      if (!isDirectMode()) {
        try {
          const response = await fetch('/api/runtime-config');
          const runtime = (await response.json()) as { safeMode?: boolean };
          runtimeSafeMode = Boolean(runtime.safeMode);
        } catch (e) {
          // Il runtime config è un dettaglio del deploy web: se non risponde
          // (servizio statico, proxy spento, rete instabile) l'app deve
          // comunque riaprire l'ultimo account salvato.
          console.warn('Runtime config non disponibile, ripristino account regolare:', e);
        }
      }
      if (cancelled) return;
      setSafeMode(runtimeSafeMode);
      try {
        if (runtimeSafeMode) sessionStorage.setItem('xtream_safe_mode', '1');
        else sessionStorage.removeItem('xtream_safe_mode');
      } catch {
        // Storage non disponibile (TV in modalità privata): nessun blocco.
      }
      if (isRemoteLoginPage) return;
      if (runtimeSafeMode) {
        connectToServer('http://localhost:3333', 'demo', 'demo');
        return;
      }

      const searchParams = new URLSearchParams(window.location.search);
      const paramServer = searchParams.get('server') || searchParams.get('url');
      const paramUser = searchParams.get('user') || searchParams.get('username');
      const paramPass = searchParams.get('pass') || searchParams.get('password');
      const paramSettings = searchParams.get('settings') || searchParams.get('setup');

      if (paramServer && paramUser && paramPass) {
        connectToServer(paramServer, paramUser, paramPass);
        return;
      }
      if (paramSettings) setShowSettingsSyncModal(true);

      const last = storage.getLastAccount();
      if (last?.serverUrl && last.username && last.password) {
        setServerUrl(last.serverUrl);
        setUsername(last.username);
        setPassword(last.password);
        connectToServer(last.serverUrl, last.username, last.password, last.originalLink);
      }
    };

    void restoreSession();
    return () => { cancelled = true; };
  }, [connectToServer, isRemoteLoginPage]);

  const makeLiveMedia = (stream: XtreamLiveStream, categoryName?: string): PlayableMediaItem => ({
    id: `live_${stream.stream_id}`,
    title: stream.name,
    type: 'live',
    streamUrl: stream.direct_source || buildStreamUrl(
      serverUrl, username, password, 'live', stream.stream_id, 'm3u8', false
    ),
    poster: stream.stream_icon,
    categoryName: categoryName || liveCategories.find((category) => String(category.category_id) === String(stream.category_id))?.category_name || 'Canale Live TV',
    containerExtension: 'm3u8',
  });

  const handlePlayDirect = (
    media: PlayableMediaItem,
    origin?: { channels: XtreamLiveStream[]; categoryName: string }
  ) => {
    if (media.type === 'live') {
      setLiveZapChannels(chooseLiveZapChannels(origin?.channels, liveStreams));
      if (origin?.categoryName) media = { ...media, categoryName: origin.categoryName };
    } else {
      setLiveZapChannels(undefined);
    }
    setActiveMedia(media);
    window.scrollTo({ top: 0, behavior: 'smooth' });
  };

  const handleFavoritePlay = (media: PlayableMediaItem) => {
    if (media.type !== 'live') {
      handlePlayDirect(media);
      return;
    }
    const favoriteIds = storage.getFavorites(currentAccountKey)
      .filter((favorite) => favorite.type === 'live')
      .map((favorite) => favorite.id.replace(/^live_/, ''));
    const channels = favoriteIds
      .map((id) => liveStreams.find((stream) => String(stream.stream_id) === id))
      .filter((stream): stream is XtreamLiveStream => Boolean(stream));
    handlePlayDirect(media, { channels, categoryName: 'Preferiti' });
  };

  const handleSelectSavedAccount = (account: SavedAccount) => {
    connectToServer(account.serverUrl, account.username, account.password, account.originalLink);
  };

  const handleDisconnect = () => {
    storage.clearLastAccount();
    setServerUrl('');
    setUsername('');
    setPassword('');
    setAuthData(null);
    setVodCategories([]);
    setVodStreams([]);
    setLiveCategories([]);
    setLiveStreams([]);
    setSeriesCategories([]);
    setSeriesList([]);
    setActiveMedia(null);
    setLiveZapChannels(undefined);
    setErrorMessage(null);
    setRefreshSuccessMessage(null);
  };

  const stepLiveChannel = (delta: -1 | 1) => {
    if (!activeMedia || activeMedia.type !== 'live') return;
    const channels = chooseLiveZapChannels(liveZapChannels, liveStreams);
    if (!channels.length) return;
    const currentId = activeMedia.id.replace('live_', '');
    const currentIndex = channels.findIndex((stream) => String(stream.stream_id) === currentId);
    const nextIndex = wrapLiveChannelIndex(currentIndex < 0 ? (delta === 1 ? -1 : 0) : currentIndex, delta, channels.length);
    const nextStream = channels[nextIndex];
    if (!nextStream) return;
    const categoryName = liveZapChannels === undefined
      ? undefined
      : activeMedia.categoryName;
    setActiveMedia(makeLiveMedia(nextStream, categoryName));
  };

  const handleNextChannel = () => stepLiveChannel(1);
  const handlePreviousChannel = () => stepLiveChannel(-1);
  const handleSelectLiveChannel = (stream: XtreamLiveStream) => {
    const channels = chooseLiveZapChannels(liveZapChannels, liveStreams);
    setLiveZapChannels(channels);
    setActiveMedia(makeLiveMedia(stream, activeMedia?.categoryName));
  };

  const isConnected = Boolean(serverUrl && username && password);
  const currentAccountKey = serverUrl && username ? `${serverUrl}_${username}` : undefined;
  const showMobileBar = shouldShowMobileBar({
    isTv,
    isConnected,
    isLoadingCatalog,
    isPlayerFullscreen,
  });

  // ── Tasto Indietro del telecomando ────────────────────────────────────────
  // La scelta di cosa chiudere sta in `resolveTvBackAction` (funzione pura,
  // coperta dai test); qui si legge lo stato reale e si esegue il comando.
  const buildTvBackState = useCallback((): TvBackState => {
    return {
      playerOpen: Boolean(activeMedia),
      serverInfoOpen: showServerInfo,
      settingsSyncOpen: showSettingsSyncModal,
      tvPairingOpen: isTvOverlayOpen('tv-pairing'),
      seriesModalOpen: selectedSeriesForModal !== null || isTvOverlayOpen('series-modal'),
      categoryPanelOpen: isTvOverlayOpen('category-panel'),
      showTvHome: Boolean(isTv && isConnected && !isLoadingCatalog && showTvHome && !activeMedia),
      exitConfirmOpen: showTvExitConfirm,
      // Su webOS il lettore gestisce da solo il 461 (come fa Escape con il
      // proprio schermo intero): l'App non deve chiuderlo una seconda volta.
      playerHandlesBack: isWebOsBuild() && Boolean(activeMedia),
      canExitApp: isWebOsBuild(),
    };
  }, [
    activeMedia,
    showServerInfo,
    showSettingsSyncModal,
    selectedSeriesForModal,
    showTvHome,
    showTvExitConfirm,
    isTv,
    isConnected,
    isLoadingCatalog,
  ]);

  const applyTvBackAction = useCallback((action: TvBackAction) => {
    switch (action.type) {
      case 'close-layer':
        switch (action.layer) {
          case 'player':
            setActiveMedia(null);
            break;
          case 'server-info':
            setShowServerInfo(false);
            break;
          case 'settings-sync':
            setShowSettingsSyncModal(false);
            break;
          case 'tv-pairing':
            closeTvOverlay('tv-pairing');
            break;
          case 'series-modal':
            if (!closeTvOverlay('series-modal')) setSelectedSeriesForModal(null);
            break;
          case 'category-panel':
            closeTvOverlay('category-panel');
            break;
        }
        return;
      case 'show-tv-home':
        setShowTvHome(true);
        return;
      case 'open-exit-confirm':
        setShowTvExitConfirm(true);
        return;
      case 'close-exit-confirm':
        setShowTvExitConfirm(false);
        return;
      case 'exit-app':
        setShowTvExitConfirm(false);
        exitTvApp();
        return;
      case 'none':
      default:
        return;
    }
  }, []);

  const handleTvBackPress = useCallback(() => {
    applyTvBackAction(resolveTvBackAction(buildTvBackState()));
  }, [applyTvBackAction, buildTvBackState]);

  useEffect(() => {
    if (!isTv && !isWebOsBuild()) return;
    // 1) Bridge Capacitor (Android TV): evento dedicato.
    window.addEventListener('android-tv-back', handleTvBackPress);
    // 2) webOS: il tasto Indietro arriva come keyCode 461 (key "GoBack",
    //    `code` vuoto) perché l'app è pacchettizzata con
    //    "disableBackHistoryAPI": true. Si riconosce solo per keyCode.
    const handleKeyDown = (event: KeyboardEvent) => {
      if (!isWebOsBuild() || !isBackKeyCode(event.keyCode)) return;
      // The mounted player owns Back so it can close nested live layers and
      // its controls bar before the App considers closing the player itself.
      if (activeMedia && !showTvExitConfirm) return;
      event.preventDefault();
      handleTvBackPress();
    };
    if (isWebOsBuild()) window.addEventListener('keydown', handleKeyDown);
    return () => {
      window.removeEventListener('android-tv-back', handleTvBackPress);
      window.removeEventListener('keydown', handleKeyDown);
    };
  }, [isTv, handleTvBackPress, activeMedia, showTvExitConfirm]);

  const handleTvExitChoice = (confirmed: boolean) => {
    applyTvBackAction(resolveTvExitConfirmAction(confirmed));
  };

  if (isRemoteLoginPage) {
    return (
      <RemoteLoginView
        onBackToApp={() => {
          window.history.pushState({}, '', '/');
          setIsRemoteLoginPage(false);
        }}
      />
    );
  }

  return (
    <Suspense fallback={<div className="min-h-screen bg-surface-0 text-label-secondary flex items-center justify-center">Caricamento…</div>}>
    <div className="min-h-screen bg-surface-0 text-label flex flex-col selection:bg-accent/15 selection:text-accent-strong w-full max-w-full overflow-x-clip">
      <div className="sticky top-0 z-40">
        {safeMode && (
          <div className="flex items-center justify-center gap-2 border-b border-accent/40 bg-accent px-3 py-1.5 text-xs font-bold tracking-[0.16em] text-on-accent shadow-lg" role="status">
            <span className="h-2 w-2 rounded-full bg-on-accent" aria-hidden="true" />
            MODALITÀ SICURA · MOCK LOCALE
          </div>
        )}
        <Navbar
          serverUrl={serverUrl}
          username={username}
          authData={authData}
          onSelectAccount={handleSelectSavedAccount}
          onOpenServerInfo={() => setShowServerInfo(true)}
          onDisconnect={handleDisconnect}
          onOpenSettingsSync={() => setShowSettingsSyncModal(true)}
          onRefreshCatalog={handleRefreshCatalog}
          isRefreshingCatalog={isRefreshingCatalog}
          lastRefreshedAt={lastRefreshedAt}
        />
      </div>
      {downloadFeedback && (
        <div className="fixed top-5 left-1/2 -translate-x-1/2 z-[100] max-w-[90vw] px-5 py-3 rounded-2xl bg-surface-0/95 border border-series/70 text-label shadow-2xl flex items-center gap-3">
          {downloadFeedback.status === 'finished' ? (
            <CheckCircle2 className="w-5 h-5 text-accent shrink-0" />
          ) : (
            <LoaderCircle className="w-5 h-5 text-series shrink-0 animate-spin" />
          )}
          <div className="min-w-0">
            <p className="text-sm font-bold">
              {downloadFeedback.status === 'started'
                ? 'Download in corso…'
                : downloadFeedback.status === 'exporting'
                  ? 'Download completato — scegli dove salvare'
                  : 'File salvato'}
            </p>
            <p className="text-xs text-label-secondary truncate">{downloadFeedback.title}</p>
          </div>
        </div>
      )}

      {/* Main Content Area */}
      <main className={`flex-1 w-full max-w-[2400px] mx-auto px-3 sm:px-6 lg:px-8 py-4 sm:py-6 space-y-6 overflow-x-hidden ${showMobileBar ? 'pb-[calc(56px+env(safe-area-inset-bottom)+1.5rem)] md:pb-6' : ''}`}>
        {/* Refresh Success Notification Banner */}
        {refreshSuccessMessage && (
          <div className="p-4 rounded-2xl bg-accent/15 border border-accent/40 text-label flex items-center justify-between gap-3 animate-in fade-in shadow-xl">
            <div className="flex items-center gap-3 text-sm font-semibold">
              <CheckCircle2 className="w-5 h-5 text-accent shrink-0" />
              <span>{refreshSuccessMessage}</span>
            </div>
            <button
              onClick={() => setRefreshSuccessMessage(null)}
              className="text-sm font-bold text-accent hover:text-label px-2.5 py-1 rounded-lg hover:bg-accent/20 cursor-pointer"
            >
              ✕
            </button>
          </div>
        )}

        {/* Active Media Player View */}
        {activeMedia && (
          <section className="space-y-3 animate-in fade-in slide-in-from-top-4 duration-300">
            <MediaPlayer
              media={activeMedia}
              liveChannels={activeMedia.type === 'live' ? chooseLiveZapChannels(liveZapChannels, liveStreams) : undefined}
              onSelectLiveChannel={handleSelectLiveChannel}
              onClose={() => setActiveMedia(null)}
              onNext={activeMedia.type === 'live' && chooseLiveZapChannels(liveZapChannels, liveStreams).length > 1 ? handleNextChannel : undefined}
              onPrevious={activeMedia.type === 'live' && chooseLiveZapChannels(liveZapChannels, liveStreams).length > 1 ? handlePreviousChannel : undefined}
              onFullscreenChange={setIsPlayerFullscreen}
              accountKey={currentAccountKey}
            />
          </section>
        )}

        {/* Error Notification Banner */}
        {errorMessage && (
          <div className="p-4 sm:p-5 rounded-2xl bg-danger/15 border border-danger/40 text-label flex items-start justify-between gap-3 animate-in fade-in shadow-xl">
            <div className="flex items-start gap-3.5">
              <AlertCircle className="w-6 h-6 text-danger shrink-0 mt-0.5" />
              <div>
                <h4 className="text-base font-bold text-label">Errore di Connessione</h4>
                <p className="text-sm text-label mt-1 leading-relaxed">{errorMessage}</p>
              </div>
            </div>
            <button
              onClick={() => setErrorMessage(null)}
              className="text-xs sm:text-sm font-bold text-label hover:underline px-3 py-1.5 rounded-lg hover:bg-danger/20 transition cursor-pointer"
            >
              Chiudi
            </button>
          </div>
        )}

        {/* Android TV home: large, remote-friendly entry points. */}
        {isTv && isConnected && !isLoadingCatalog && showTvHome && !activeMedia && (
          <section className="tv-home min-h-[68vh] flex flex-col justify-center py-8">
            <div className="text-center mb-10">
              <h2 className="text-4xl font-black text-label">Cosa vuoi guardare?</h2>
              <p className="text-xl text-label-secondary mt-3">Usa le frecce del telecomando e premi OK</p>
            </div>
            <div className="grid grid-cols-3 gap-8 max-w-6xl mx-auto w-full">
              <button
                type="button"
                autoFocus
                onClick={() => { setActiveTab('live'); setShowTvHome(false); }}
                className="tv-home-card min-h-64 rounded-3xl bg-surface-0 border-2 border-separator-strong flex flex-col items-center justify-center gap-5 text-label"
              >
                <Tv className="w-20 h-20 text-danger" />
                <span className="text-3xl font-black">LIVE TV</span>
                <span className="text-lg text-label-secondary">{liveStreams.length} canali</span>
              </button>
              <button
                type="button"
                onClick={() => { setActiveTab('movies'); setShowTvHome(false); }}
                className="tv-home-card min-h-64 rounded-3xl bg-surface-0 border-2 border-separator-strong flex flex-col items-center justify-center gap-5 text-label"
              >
                <Film className="w-20 h-20 text-accent-strong" />
                <span className="text-3xl font-black">FILM</span>
                <span className="text-lg text-label-secondary">{vodStreams.length} titoli</span>
              </button>
              <button
                type="button"
                onClick={() => { setActiveTab('series'); setShowTvHome(false); }}
                className="tv-home-card min-h-64 rounded-3xl bg-surface-0 border-2 border-separator-strong flex flex-col items-center justify-center gap-5 text-label"
              >
                <Layers className="w-20 h-20 text-series" />
                <span className="text-3xl font-black">SERIE TV</span>
                <span className="text-lg text-label-secondary">{seriesList.length} serie</span>
              </button>
            </div>
          </section>
        )}

        {/* Connected Catalog Navigation Tabs (desktop/tablet and TV only; mobile uses the bottom bar) */}
        {isConnected && !isLoadingCatalog && (!isTv || !showTvHome) && (
          <div className="tv-catalog-nav hidden md:flex flex-col lg:flex-row lg:items-center justify-between gap-4 border-b border-separator/90 pb-4">
            <div className="flex flex-wrap items-center gap-2 sm:gap-3">
              {isTv && (
                <button
                  type="button"
                  onClick={() => setShowTvHome(true)}
                  className="flex items-center gap-2.5 px-5 py-3 rounded-2xl text-base font-bold bg-surface-0 text-accent-strong border border-accent"
                >
                  Home TV
                </button>
              )}
              {/* 1. Live TV */}
              <button
                onClick={() => setActiveTab('live')}
                className={`flex items-center gap-2.5 px-4 sm:px-5 py-2.5 rounded-2xl text-sm sm:text-base font-bold transition cursor-pointer shadow-md ${
                  activeTab === 'live'
                    ? 'bg-live text-on-accent  scale-105'
                    : 'bg-surface-0 text-label-secondary hover:text-label hover:bg-surface-1 border border-separator'
                }`}
              >
                <Tv className={`w-5 h-5 ${activeTab === 'live' ? 'text-inherit' : 'text-live'}`} />
                Live TV
                <span className="text-xs px-2 py-0.5 rounded-full bg-surface-1/50 ">
                  {liveStreams.length}
                </span>
              </button>

              {/* 2. Film & VOD */}
              <button
                onClick={() => setActiveTab('movies')}
                className={`flex items-center gap-2.5 px-4 sm:px-5 py-2.5 rounded-2xl text-sm sm:text-base font-bold transition cursor-pointer shadow-md ${
                  activeTab === 'movies'
                    ? 'bg-accent text-on-accent  scale-105'
                    : 'bg-surface-0 text-label-secondary hover:text-label hover:bg-surface-1 border border-separator'
                }`}
              >
                <Film className={`w-5 h-5 ${activeTab === 'movies' ? 'text-inherit' : 'text-accent'}`} />
                Film & VOD
                <span className="text-xs px-2 py-0.5 rounded-full bg-surface-1/50 ">
                  {vodStreams.length}
                </span>
              </button>

              {/* 3. Serie TV */}
              <button
                onClick={() => setActiveTab('series')}
                className={`flex items-center gap-2.5 px-4 sm:px-5 py-2.5 rounded-2xl text-sm sm:text-base font-bold transition cursor-pointer shadow-md ${
                  activeTab === 'series'
                    ? 'bg-series text-on-accent  scale-105'
                    : 'bg-surface-0 text-label-secondary hover:text-label hover:bg-surface-1 border border-separator'
                }`}
              >
                <Layers className={`w-5 h-5 ${activeTab === 'series' ? 'text-inherit' : 'text-series'}`} />
                Serie TV
                <span className="text-xs px-2 py-0.5 rounded-full bg-surface-1/50 ">
                  {seriesList.length}
                </span>
              </button>

              {/* 4. Novità & Recenti */}
              <button
                onClick={() => setActiveTab('recent')}
                className={`flex items-center gap-2.5 px-4 sm:px-5 py-2.5 rounded-2xl text-sm sm:text-base font-bold transition cursor-pointer shadow-md ${
                  activeTab === 'recent'
                    ? 'bg-fresh text-on-accent scale-105'
                    : 'bg-surface-0 text-label-secondary hover:text-label hover:bg-surface-1 border border-separator'
                }`}
              >
                <Sparkles className={`w-5 h-5 ${activeTab === 'recent' ? 'text-inherit' : 'text-fresh'}`} />
                Novità & Recenti
              </button>

              {/* 5. Preferiti & Continua a Guardare */}
              <button
                onClick={() => setActiveTab('favorites')}
                className={`flex items-center gap-2.5 px-4 sm:px-5 py-2.5 rounded-2xl text-sm sm:text-base font-bold transition cursor-pointer shadow-md ${
                  activeTab === 'favorites'
                    ? 'bg-favorite hover:brightness-110 text-on-accent border-2 border-favorite/80 scale-105'
                    : 'bg-surface-0 text-label-secondary hover:text-label hover:bg-surface-1 border border-separator'
                }`}
              >
                <Star className={`w-5 h-5 ${activeTab === 'favorites' ? 'text-inherit' : 'text-favorite'}`} />
                Preferiti & Cronologia
              </button>
            </div>

            {/* Dedicated Aggiorna Catalogo Action Button */}
            <div className="flex items-center gap-3 shrink-0">
              <button
                onClick={handleRefreshCatalog}
                disabled={isRefreshingCatalog}
                className="flex items-center gap-2 px-5 py-2.5 rounded-2xl text-sm sm:text-base font-bold bg-accent hover:bg-accent-strong text-on-accent shadow-xl  transition cursor-pointer disabled:opacity-50"
                title="Ricarica tutti i contenuti dal server Xtream"
              >
                <RefreshCw className={`w-4 h-4 sm:w-5 sm:h-5 ${isRefreshingCatalog ? 'animate-spin' : ''}`} />
                <span>{isRefreshingCatalog ? 'Aggiornamento...' : 'Aggiorna Catalogo'}</span>
              </button>

              {lastRefreshedAt && (
                <span className="hidden xl:inline text-xs text-label-secondary ">
                  Sync: {new Date(lastRefreshedAt).toLocaleTimeString('it-IT', { hour: '2-digit', minute: '2-digit' })}
                </span>
              )}
            </div>
          </div>
        )}

        {/* Catalog Views Content */}
        {isLoadingCatalog ? (
          <div className="py-28 text-center">
            <div className="w-14 h-14 border-4 border-accent/20 border-t-accent rounded-full animate-spin mx-auto mb-4"></div>
            <h3 className="text-lg sm:text-xl font-bold text-label">
              Recupero catalogo dal server Xtream...
            </h3>
            <p className="text-sm text-label-secondary mt-1.5 max-w-md mx-auto">
              Caricamento categorie, canali in diretta, film VOD e serie TV per l'account specificato.
            </p>
          </div>
        ) : isConnected ? (
          isTv && showTvHome ? null : (
          <Suspense fallback={<div className="mt-4 py-16 text-center text-label-secondary">Caricamento sezione…</div>}>
          <div className="mt-4">
            {activeTab === 'live' && (
              <LiveCatalog
                categories={liveCategories}
                streams={liveStreams}
                serverUrl={serverUrl}
                username={username}
                password={password}
                onPlay={handlePlayDirect}
                activeMediaId={activeMedia?.id}
                accountKey={currentAccountKey}
                isLoading={isLoadingCatalog}
              />
            )}

            {activeTab === 'movies' && (
              <VodCatalog
                categories={vodCategories}
                streams={vodStreams}
                serverUrl={serverUrl}
                username={username}
                password={password}
                onPlay={handlePlayDirect}
                activeMediaId={activeMedia?.id}
                accountKey={currentAccountKey}
                isLoading={isLoadingCatalog}
              />
            )}

            {activeTab === 'series' && (
              <SeriesCatalog
                categories={seriesCategories}
                seriesList={seriesList}
                serverUrl={serverUrl}
                username={username}
                password={password}
                onPlay={handlePlayDirect}
                activeMediaId={activeMedia?.id}
                accountKey={currentAccountKey}
                isLoading={isLoadingCatalog}
                selectedSeriesId={selectedSeriesForModal}
                onClearSelectedSeries={() => setSelectedSeriesForModal(null)}
              />
            )}

            {activeTab === 'recent' && (
              <RecentProductsShelf
                vodStreams={vodStreams}
                seriesList={seriesList}
                serverUrl={serverUrl}
                username={username}
                password={password}
                onPlay={handlePlayDirect}
                onOpenSeries={(series) => {
                  setSelectedSeriesForModal(series.series_id);
                  setActiveTab('series');
                }}
                onNavigateToTab={(tab) => setActiveTab(tab)}
              />
            )}

            {activeTab === 'favorites' && (
              <FavoritesView
                onPlay={handleFavoritePlay}
                onOpenSeries={(seriesId) => {
                  setSelectedSeriesForModal(seriesId);
                  setActiveTab('series');
                }}
                accountKey={currentAccountKey}
              />
            )}
          </div>
          </Suspense>
          )
        ) : (
          /* Clean Dedicated Login Form when not logged in (zero links/favorites before login) */
          <LoginForm
            onLogin={(targetServer, user, pass) => connectToServer(targetServer, user, pass)}
            isLoading={isLoadingCatalog}
            pairingEnabled
          />
        )}
      </main>

      {/* Server & Account Info Modal */}
      {showServerInfo && (
        <ServerInfoModal
          authData={authData}
          serverUrl={serverUrl}
          onClose={() => setShowServerInfo(false)}
          lastRefreshedAt={lastRefreshedAt}
        />
      )}

      {/* Settings & QR Code Sync Modal */}
      <SettingsSyncModal
        isOpen={showSettingsSyncModal}
        onClose={() => setShowSettingsSyncModal(false)}
        currentServer={serverUrl || ''}
        currentUsername={username || ''}
        currentPassword={password || ''}
        onSaveAndConnect={(newServer, newUser, newPass) => {
          connectToServer(newServer, newUser, newPass);
        }}
        savedAccounts={savedAccounts}
        onSelectAccount={handleSelectSavedAccount}
        onDeleteAccount={(id) => {
          storage.deleteAccount(id);
          setSavedAccounts(storage.getAccounts());
        }}
      />

      {/* webOS: the Back key on the TV home screen asks before closing the app. */}
      {isWebOsBuild() && showTvExitConfirm && (
        <div
          role="dialog"
          aria-modal="true"
          aria-labelledby="tv-exit-title"
          className="fixed inset-0 z-[120] flex items-center justify-center bg-black/85 p-6"
        >
          <div className="w-full max-w-2xl rounded-3xl border-2 border-separator-strong bg-surface-0 p-8 text-center shadow-2xl">
            <h2 id="tv-exit-title" className="text-3xl font-black text-label">
              Vuoi uscire?
            </h2>
            <p className="mt-3 text-lg text-label-secondary">
              L'app viene chiusa. Gli account salvati restano sul televisore.
            </p>
            <div className="mt-8 flex items-center justify-center gap-4">
              {/* Annulla riceve il focus: un secondo Indietro chiude la conferma. */}
              <button
                type="button"
                autoFocus
                data-tv-exit-choice="cancel"
                onClick={() => handleTvExitChoice(false)}
                className="min-w-40 rounded-2xl border-2 border-separator-strong bg-surface-1 px-6 py-3 text-xl font-bold text-label transition hover:bg-surface-2"
              >
                Annulla
              </button>
              <button
                type="button"
                data-tv-exit-choice="exit"
                onFocus={(event) => {
                  event.currentTarget.style.borderColor = '#10B981';
                  event.currentTarget.style.backgroundColor = '#10B981';
                  event.currentTarget.style.color = '#FFFFFF';
                }}
                onBlur={(event) => {
                  event.currentTarget.style.removeProperty('border-color');
                  event.currentTarget.style.removeProperty('background-color');
                  event.currentTarget.style.removeProperty('color');
                }}
                onClick={() => handleTvExitChoice(true)}
                className="min-w-40 rounded-2xl border-2 border-separator-strong bg-surface-1 px-6 py-3 text-xl font-bold text-label transition hover:bg-surface-2 focus-visible:border-[#10B981] focus-visible:bg-[#10B981] focus-visible:text-white"
              >
                Esci
              </button>
            </div>
          </div>
        </div>
      )}

      {/* Footer */}
      <footer className={`w-full border-t border-separator bg-surface-0 py-4 text-center text-xs sm:text-sm text-label-tertiary ${showMobileBar ? 'mb-[calc(56px+env(safe-area-inset-bottom))] md:mb-0' : ''}`}>
        FelixVisionPlayer &bull; Riproduttore multimediale per server Xtream Codes
      </footer>

      {/* Mobile bottom section bar */}
      {showMobileBar && (
        <MobileSectionBar
          activeTab={activeTab}
          onSelect={(tab) => setActiveTab(tab)}
        />
      )}
    </div>
    </Suspense>
  );
}
