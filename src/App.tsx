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
import { AccessUnlock } from './components/AccessUnlock';

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
import { storage, SavedAccount } from './services/storage';
import { buildStreamUrl } from './utils/parseXtreamUrl';
import { cleanupLegacyNativeDownloads, isTvEnvironment } from './utils/downloadHelper';
import { useTvNavigation } from './utils/tvNavigation';

const MediaPlayer = lazy(() => import('./components/MediaPlayer').then((module) => ({ default: module.MediaPlayer })));
const VodCatalog = lazy(() => import('./components/VodCatalog').then((module) => ({ default: module.VodCatalog })));
const LiveCatalog = lazy(() => import('./components/LiveCatalog').then((module) => ({ default: module.LiveCatalog })));
const SeriesCatalog = lazy(() => import('./components/SeriesCatalog').then((module) => ({ default: module.SeriesCatalog })));
const FavoritesView = lazy(() => import('./components/FavoritesView').then((module) => ({ default: module.FavoritesView })));

export default function App() {
  const isTv = isTvEnvironment();
  useTvNavigation(isTv);
  const [serverUrl, setServerUrl] = useState<string>('');
  const [username, setUsername] = useState<string>('');
  const [password, setPassword] = useState<string>('');
  const [authData, setAuthData] = useState<XtreamAuthResponse | null>(null);
  const [safeMode, setSafeMode] = useState(false);
  const [accessRequired, setAccessRequired] = useState(false);

  const [activeTab, setActiveTab] = useState<'live' | 'movies' | 'series' | 'recent' | 'favorites'>('live');
  const [showTvHome, setShowTvHome] = useState<boolean>(true);
  const [activeMedia, setActiveMedia] = useState<PlayableMediaItem | null>(null);
  const [selectedSeriesForModal, setSelectedSeriesForModal] = useState<string | number | null>(null);

  const [isLoadingCatalog, setIsLoadingCatalog] = useState<boolean>(false);
  const [isRefreshingCatalog, setIsRefreshingCatalog] = useState<boolean>(false);
  const [lastRefreshedAt, setLastRefreshedAt] = useState<number | null>(null);
  const [refreshSuccessMessage, setRefreshSuccessMessage] = useState<string | null>(null);
  const [errorMessage, setErrorMessage] = useState<string | null>(null);
  const [showServerInfo, setShowServerInfo] = useState<boolean>(false);
  const [showSettingsSyncModal, setShowSettingsSyncModal] = useState<boolean>(false);
  const [isRemoteLoginPage, setIsRemoteLoginPage] = useState<boolean>(() => {
    if (typeof window === 'undefined') return false;
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

  useEffect(() => {
    const requireAccess = () => setAccessRequired(true);
    window.addEventListener('xtream-access-required', requireAccess);
    return () => window.removeEventListener('xtream-access-required', requireAccess);
  }, []);

  useEffect(() => {
    if (!isTv) return;
    const handleTvBack = () => {
      if (activeMedia) {
        setActiveMedia(null);
      } else if (showServerInfo) {
        setShowServerInfo(false);
      } else if (showSettingsSyncModal) {
        setShowSettingsSyncModal(false);
      } else if (selectedSeriesForModal) {
        setSelectedSeriesForModal(null);
      } else if (!showTvHome) {
        setShowTvHome(true);
      }
    };
    window.addEventListener('android-tv-back', handleTvBack);
    return () => window.removeEventListener('android-tv-back', handleTvBack);
  }, [isTv, activeMedia, showServerInfo, showSettingsSyncModal, selectedSeriesForModal, showTvHome]);

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

        // Default to active tab in requested order: Live TV -> Film & VOD -> Serie TV
        if (fetchedLiveStreams.length > 0) {
          setActiveTab('live');
        } else if (fetchedVodStreams.length > 0) {
          setActiveTab('movies');
        } else if (fetchedSeries.length > 0) {
          setActiveTab('series');
        } else {
          setActiveTab('recent');
        }
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
      try {
        const response = await fetch('/api/runtime-config');
        const runtime = (await response.json()) as { safeMode?: boolean; accessRequired?: boolean };
        if (cancelled) return;
        setSafeMode(Boolean(runtime.safeMode));
        if (isRemoteLoginPage) return;
        setAccessRequired(Boolean(runtime.accessRequired));
        if (runtime.accessRequired) return;
        if (!runtime.safeMode) sessionStorage.removeItem('xtream_safe_mode');
        if (runtime.safeMode) {
          sessionStorage.setItem('xtream_safe_mode', '1');
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
      } catch (e) {
        console.error('Error restoring app session:', e);
        return;
      }

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

  const handlePlayDirect = (media: PlayableMediaItem) => {
    setActiveMedia(media);
    window.scrollTo({ top: 0, behavior: 'smooth' });
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
    setErrorMessage(null);
    setRefreshSuccessMessage(null);
  };

  const handleNextChannel = () => {
    if (!activeMedia || activeMedia.type !== 'live' || liveStreams.length === 0) return;
    const currentStreamId = activeMedia.id.replace('live_', '');
    const currentIndex = liveStreams.findIndex((s) => String(s.stream_id) === String(currentStreamId));
    const nextIndex = currentIndex === -1 ? 0 : (currentIndex + 1) % liveStreams.length;
    const nextStream = liveStreams[nextIndex];
    if (nextStream) {
      const streamUrl = buildStreamUrl(
        serverUrl,
        username,
        password,
        'live',
        nextStream.stream_id,
        'm3u8',
        false
      );
      setActiveMedia({
        id: `live_${nextStream.stream_id}`,
        title: nextStream.name,
        type: 'live',
        streamUrl,
        poster: nextStream.stream_icon,
        categoryName: 'Canale Live TV',
        containerExtension: 'm3u8',
      });
    }
  };

  const handlePreviousChannel = () => {
    if (!activeMedia || activeMedia.type !== 'live' || liveStreams.length === 0) return;
    const currentStreamId = activeMedia.id.replace('live_', '');
    const currentIndex = liveStreams.findIndex((s) => String(s.stream_id) === String(currentStreamId));
    const prevIndex = currentIndex === -1 ? liveStreams.length - 1 : (currentIndex - 1 + liveStreams.length) % liveStreams.length;
    const prevStream = liveStreams[prevIndex];
    if (prevStream) {
      const streamUrl = buildStreamUrl(
        serverUrl,
        username,
        password,
        'live',
        prevStream.stream_id,
        'm3u8',
        false
      );
      setActiveMedia({
        id: `live_${prevStream.stream_id}`,
        title: prevStream.name,
        type: 'live',
        streamUrl,
        poster: prevStream.stream_icon,
        categoryName: 'Canale Live TV',
        containerExtension: 'm3u8',
      });
    }
  };

  const isConnected = Boolean(serverUrl && username && password);
  const currentAccountKey = serverUrl && username ? `${serverUrl}_${username}` : undefined;

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

  if (accessRequired) return <AccessUnlock />;

  return (
    <Suspense fallback={<div className="min-h-screen bg-zinc-950 text-zinc-300 flex items-center justify-center">Caricamento…</div>}>
    <div className="min-h-screen bg-zinc-950 text-zinc-100 flex flex-col selection:bg-emerald-500/30 selection:text-emerald-200 w-full max-w-full overflow-x-hidden">
      {safeMode && (
        <div className="sticky top-0 z-[110] flex items-center justify-center gap-2 border-b border-emerald-400/40 bg-emerald-950 px-3 py-1.5 text-xs font-bold tracking-[0.16em] text-emerald-200 shadow-lg" role="status">
          <span className="h-2 w-2 rounded-full bg-emerald-400" aria-hidden="true" />
          MODALITÀ SICURA · MOCK LOCALE
        </div>
      )}
      {downloadFeedback && (
        <div className="fixed top-5 left-1/2 -translate-x-1/2 z-[100] max-w-[90vw] px-5 py-3 rounded-2xl bg-zinc-900/95 border border-cyan-500/70 text-white shadow-2xl flex items-center gap-3">
          {downloadFeedback.status === 'finished' ? (
            <CheckCircle2 className="w-5 h-5 text-emerald-400 shrink-0" />
          ) : (
            <LoaderCircle className="w-5 h-5 text-cyan-400 shrink-0 animate-spin" />
          )}
          <div className="min-w-0">
            <p className="text-sm font-bold">
              {downloadFeedback.status === 'started'
                ? 'Download in corso…'
                : downloadFeedback.status === 'exporting'
                  ? 'Download completato — scegli dove salvare'
                  : 'File salvato'}
            </p>
            <p className="text-xs text-zinc-400 truncate">{downloadFeedback.title}</p>
          </div>
        </div>
      )}

      {/* Top banner remains visible on TV, matching the original TV layout. */}
      <Navbar
        serverUrl={serverUrl}
        username={username}
        authData={authData}
        onSelectAccount={handleSelectSavedAccount}
        onOpenServerInfo={() => setShowServerInfo(true)}
        onDisconnect={handleDisconnect}
        onOpenSettingsSync={() => setShowSettingsSyncModal(true)}
      />

      {/* Main Content Area */}
      <main className="flex-1 w-full max-w-[2400px] mx-auto px-3 sm:px-6 lg:px-8 py-4 sm:py-6 space-y-6 overflow-x-hidden">
        {/* Refresh Success Notification Banner */}
        {refreshSuccessMessage && (
          <div className="p-4 rounded-2xl bg-emerald-950/90 border border-emerald-800 text-emerald-200 flex items-center justify-between gap-3 animate-in fade-in shadow-xl">
            <div className="flex items-center gap-3 text-sm font-semibold">
              <CheckCircle2 className="w-5 h-5 text-emerald-400 shrink-0" />
              <span>{refreshSuccessMessage}</span>
            </div>
            <button
              onClick={() => setRefreshSuccessMessage(null)}
              className="text-sm font-bold text-emerald-400 hover:text-white px-2.5 py-1 rounded-lg hover:bg-emerald-900/40 cursor-pointer"
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
              onClose={() => setActiveMedia(null)}
              onNext={activeMedia.type === 'live' && liveStreams.length > 1 ? handleNextChannel : undefined}
              onPrevious={activeMedia.type === 'live' && liveStreams.length > 1 ? handlePreviousChannel : undefined}
              accountKey={currentAccountKey}
            />
          </section>
        )}

        {/* Error Notification Banner */}
        {errorMessage && (
          <div className="p-4 sm:p-5 rounded-2xl bg-rose-950/80 border border-rose-800 text-rose-200 flex items-start justify-between gap-3 animate-in fade-in shadow-xl">
            <div className="flex items-start gap-3.5">
              <AlertCircle className="w-6 h-6 text-rose-400 shrink-0 mt-0.5" />
              <div>
                <h4 className="text-base font-bold text-rose-300">Errore di Connessione</h4>
                <p className="text-sm text-rose-300/90 mt-1 leading-relaxed">{errorMessage}</p>
              </div>
            </div>
            <button
              onClick={() => setErrorMessage(null)}
              className="text-xs sm:text-sm font-bold text-rose-400 hover:text-white px-3 py-1.5 rounded-lg hover:bg-rose-900/60 transition cursor-pointer"
            >
              Chiudi
            </button>
          </div>
        )}

        {/* Android TV home: large, remote-friendly entry points. */}
        {isTv && isConnected && !isLoadingCatalog && showTvHome && !activeMedia && (
          <section className="tv-home min-h-[68vh] flex flex-col justify-center py-8">
            <div className="text-center mb-10">
              <h2 className="text-4xl font-black text-white">Cosa vuoi guardare?</h2>
              <p className="text-xl text-zinc-400 mt-3">Usa le frecce del telecomando e premi OK</p>
            </div>
            <div className="grid grid-cols-3 gap-8 max-w-6xl mx-auto w-full">
              <button
                type="button"
                autoFocus
                onClick={() => { setActiveTab('live'); setShowTvHome(false); }}
                className="tv-home-card min-h-64 rounded-3xl bg-zinc-900 border-2 border-zinc-700 flex flex-col items-center justify-center gap-5 text-white"
              >
                <Tv className="w-20 h-20 text-rose-400" />
                <span className="text-3xl font-black">LIVE TV</span>
                <span className="text-lg text-zinc-400">{liveStreams.length} canali</span>
              </button>
              <button
                type="button"
                onClick={() => { setActiveTab('movies'); setShowTvHome(false); }}
                className="tv-home-card min-h-64 rounded-3xl bg-zinc-900 border-2 border-zinc-700 flex flex-col items-center justify-center gap-5 text-white"
              >
                <Film className="w-20 h-20 text-emerald-400" />
                <span className="text-3xl font-black">FILM</span>
                <span className="text-lg text-zinc-400">{vodStreams.length} titoli</span>
              </button>
              <button
                type="button"
                onClick={() => { setActiveTab('series'); setShowTvHome(false); }}
                className="tv-home-card min-h-64 rounded-3xl bg-zinc-900 border-2 border-zinc-700 flex flex-col items-center justify-center gap-5 text-white"
              >
                <Layers className="w-20 h-20 text-blue-400" />
                <span className="text-3xl font-black">SERIE TV</span>
                <span className="text-lg text-zinc-400">{seriesList.length} serie</span>
              </button>
            </div>
          </section>
        )}

        {/* Connected Catalog Navigation Tabs */}
        {isConnected && !isLoadingCatalog && (!isTv || !showTvHome) && (
          <div className="tv-catalog-nav flex flex-col lg:flex-row lg:items-center justify-between gap-4 border-b border-zinc-800/90 pb-4">
            <div className="flex flex-wrap items-center gap-2 sm:gap-3">
              {isTv && (
                <button
                  type="button"
                  onClick={() => setShowTvHome(true)}
                  className="flex items-center gap-2.5 px-5 py-3 rounded-2xl text-base font-bold bg-zinc-900 text-emerald-300 border border-emerald-700"
                >
                  Home TV
                </button>
              )}
              {/* 1. Live TV */}
              <button
                onClick={() => setActiveTab('live')}
                className={`flex items-center gap-2.5 px-4 sm:px-5 py-2.5 rounded-2xl text-sm sm:text-base font-bold transition cursor-pointer shadow-md ${
                  activeTab === 'live'
                    ? 'bg-rose-600 text-white shadow-rose-950/60 scale-105'
                    : 'bg-zinc-900 text-zinc-300 hover:text-white hover:bg-zinc-850 border border-zinc-800'
                }`}
              >
                <Tv className="w-5 h-5 text-rose-400" />
                Live TV
                <span className="text-xs px-2 py-0.5 rounded-full bg-black/50 font-mono">
                  {liveStreams.length}
                </span>
              </button>

              {/* 2. Film & VOD */}
              <button
                onClick={() => setActiveTab('movies')}
                className={`flex items-center gap-2.5 px-4 sm:px-5 py-2.5 rounded-2xl text-sm sm:text-base font-bold transition cursor-pointer shadow-md ${
                  activeTab === 'movies'
                    ? 'bg-emerald-600 text-white shadow-emerald-950/60 scale-105'
                    : 'bg-zinc-900 text-zinc-300 hover:text-white hover:bg-zinc-850 border border-zinc-800'
                }`}
              >
                <Film className="w-5 h-5 text-emerald-400" />
                Film & VOD
                <span className="text-xs px-2 py-0.5 rounded-full bg-black/50 font-mono">
                  {vodStreams.length}
                </span>
              </button>

              {/* 3. Serie TV */}
              <button
                onClick={() => setActiveTab('series')}
                className={`flex items-center gap-2.5 px-4 sm:px-5 py-2.5 rounded-2xl text-sm sm:text-base font-bold transition cursor-pointer shadow-md ${
                  activeTab === 'series'
                    ? 'bg-blue-600 text-white shadow-blue-950/60 scale-105'
                    : 'bg-zinc-900 text-zinc-300 hover:text-white hover:bg-zinc-850 border border-zinc-800'
                }`}
              >
                <Layers className="w-5 h-5 text-blue-400" />
                Serie TV
                <span className="text-xs px-2 py-0.5 rounded-full bg-black/50 font-mono">
                  {seriesList.length}
                </span>
              </button>

              {/* 4. Novità & Recenti */}
              <button
                onClick={() => setActiveTab('recent')}
                className={`flex items-center gap-2.5 px-4 sm:px-5 py-2.5 rounded-2xl text-sm sm:text-base font-bold transition cursor-pointer shadow-md ${
                  activeTab === 'recent'
                    ? 'bg-gradient-to-r from-amber-500 to-orange-500 text-white shadow-amber-950/60 scale-105'
                    : 'bg-zinc-900 text-zinc-300 hover:text-white hover:bg-zinc-850 border border-zinc-800'
                }`}
              >
                <Sparkles className="w-5 h-5 text-amber-200" />
                Novità & Recenti
              </button>

              {/* 5. Preferiti & Continua a Guardare */}
              <button
                onClick={() => setActiveTab('favorites')}
                className={`flex items-center gap-2.5 px-4 sm:px-5 py-2.5 rounded-2xl text-sm sm:text-base font-bold transition cursor-pointer shadow-md ${
                  activeTab === 'favorites'
                    ? 'bg-zinc-800 text-white border-2 border-amber-400/80 shadow-amber-950/50 scale-105'
                    : 'bg-zinc-900 text-zinc-300 hover:text-white hover:bg-zinc-850 border border-zinc-800'
                }`}
              >
                <Star className="w-5 h-5 text-amber-400" />
                Preferiti & Cronologia
              </button>
            </div>

            {/* Dedicated Aggiorna Catalogo Action Button */}
            <div className="flex items-center gap-3 shrink-0">
              <button
                onClick={handleRefreshCatalog}
                disabled={isRefreshingCatalog}
                className="flex items-center gap-2 px-5 py-2.5 rounded-2xl text-sm sm:text-base font-bold bg-gradient-to-r from-emerald-600 to-teal-600 hover:from-emerald-500 hover:to-teal-500 text-white shadow-xl shadow-emerald-950/50 transition cursor-pointer disabled:opacity-50"
                title="Ricarica tutti i contenuti dal server Xtream"
              >
                <RefreshCw className={`w-4 h-4 sm:w-5 sm:h-5 ${isRefreshingCatalog ? 'animate-spin' : ''}`} />
                <span>{isRefreshingCatalog ? 'Aggiornamento...' : 'Aggiorna Catalogo'}</span>
              </button>

              {lastRefreshedAt && (
                <span className="hidden xl:inline text-xs text-zinc-400 font-mono">
                  Sync: {new Date(lastRefreshedAt).toLocaleTimeString('it-IT', { hour: '2-digit', minute: '2-digit' })}
                </span>
              )}
            </div>
          </div>
        )}

        {/* Catalog Views Content */}
        {isLoadingCatalog ? (
          <div className="py-28 text-center">
            <div className="w-14 h-14 border-4 border-emerald-500/20 border-t-emerald-500 rounded-full animate-spin mx-auto mb-4"></div>
            <h3 className="text-lg sm:text-xl font-bold text-white">
              Recupero catalogo dal server Xtream...
            </h3>
            <p className="text-sm text-zinc-400 mt-1.5 max-w-md mx-auto">
              Caricamento categorie, canali in diretta, film VOD e serie TV per l'account specificato.
            </p>
          </div>
        ) : isConnected ? (
          isTv && showTvHome ? null : (
          <Suspense fallback={<div className="mt-4 py-16 text-center text-zinc-400">Caricamento sezione…</div>}>
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
                onPlay={handlePlayDirect}
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
          />
        )}
      </main>

      {/* Server & Account Info Modal */}
      {showServerInfo && (
        <ServerInfoModal
          authData={authData}
          serverUrl={serverUrl}
          onClose={() => setShowServerInfo(false)}
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

      {/* Footer */}
      <footer className="w-full border-t border-zinc-900 bg-zinc-950 py-4 text-center text-xs sm:text-sm text-zinc-600">
        Xtream Player &bull; Riproduttore multimediale per server Xtream Codes
      </footer>
    </div>
    </Suspense>
  );
}
