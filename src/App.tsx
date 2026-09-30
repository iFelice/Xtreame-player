import React, { useState, useEffect, useCallback } from 'react';
import {
  Film,
  Tv,
  Layers,
  Star,
  Sparkles,
  AlertCircle,
  RefreshCw,
  HelpCircle,
  CheckCircle2,
  ExternalLink,
  ShieldCheck,
  Zap,
  Download,
} from 'lucide-react';
import { Navbar } from './components/Navbar';
import { UrlInputBar } from './components/UrlInputBar';
import { MediaPlayer } from './components/MediaPlayer';
import { VodCatalog } from './components/VodCatalog';
import { LiveCatalog } from './components/LiveCatalog';
import { SeriesCatalog } from './components/SeriesCatalog';
import { FavoritesView } from './components/FavoritesView';
import { ServerInfoModal } from './components/ServerInfoModal';
import { PrivacyDeployModal } from './components/PrivacyDeployModal';
import { RecentProductsShelf } from './components/RecentProductsShelf';
import { InstallAppModal } from './components/InstallAppModal';
import { DownloadsView } from './components/DownloadsView';
import { PasteLinkModal } from './components/PasteLinkModal';
import { SettingsSyncModal } from './components/SettingsSyncModal';
import { TvQrLoginModal } from './components/TvQrLoginModal';
import { RemoteLoginView } from './components/RemoteLoginView';

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
import { parseXtreamUrl, buildStreamUrl } from './utils/parseXtreamUrl';

export default function App() {
  const [serverUrl, setServerUrl] = useState<string>('');
  const [username, setUsername] = useState<string>('');
  const [password, setPassword] = useState<string>('');
  const [authData, setAuthData] = useState<XtreamAuthResponse | null>(null);

  const [activeTab, setActiveTab] = useState<'live' | 'movies' | 'series' | 'recent' | 'downloads' | 'favorites'>('live');
  const [activeMedia, setActiveMedia] = useState<PlayableMediaItem | null>(null);
  const [selectedSeriesForModal, setSelectedSeriesForModal] = useState<string | number | null>(null);

  const [isLoadingCatalog, setIsLoadingCatalog] = useState<boolean>(false);
  const [isRefreshingCatalog, setIsRefreshingCatalog] = useState<boolean>(false);
  const [lastRefreshedAt, setLastRefreshedAt] = useState<number | null>(null);
  const [appIcon, setAppIconState] = useState<string>(storage.getAppIcon());
  const [refreshSuccessMessage, setRefreshSuccessMessage] = useState<string | null>(null);
  const [errorMessage, setErrorMessage] = useState<string | null>(null);
  const [showServerInfo, setShowServerInfo] = useState<boolean>(false);
  const [showPrivacyModal, setShowPrivacyModal] = useState<boolean>(false);
  const [showInstallAppModal, setShowInstallAppModal] = useState<boolean>(false);
  const [showPasteLinkModal, setShowPasteLinkModal] = useState<boolean>(false);
  const [showSettingsSyncModal, setShowSettingsSyncModal] = useState<boolean>(false);
  const [showTvQrModal, setShowTvQrModal] = useState<boolean>(false);
  const [isRemoteLoginPage, setIsRemoteLoginPage] = useState<boolean>(() => {
    if (typeof window === 'undefined') return false;
    const path = window.location.pathname.toLowerCase();
    const search = new URLSearchParams(window.location.search);
    return path.includes('remote-login') || search.get('page') === 'remote-login' || search.has('code');
  });
  const [savedAccounts, setSavedAccounts] = useState<SavedAccount[]>(() => storage.getAccounts());
  const [deferredPrompt, setDeferredPrompt] = useState<any>(null);

  // Catalog data
  const [vodCategories, setVodCategories] = useState<XtreamCategory[]>([]);
  const [vodStreams, setVodStreams] = useState<XtreamVodStream[]>([]);
  const [liveCategories, setLiveCategories] = useState<XtreamCategory[]>([]);
  const [liveStreams, setLiveStreams] = useState<XtreamLiveStream[]>([]);
  const [seriesCategories, setSeriesCategories] = useState<XtreamCategory[]>([]);
  const [seriesList, setSeriesList] = useState<XtreamSeries[]>([]);

  // Capture PWA install prompt
  useEffect(() => {
    const handler = (e: any) => {
      e.preventDefault();
      setDeferredPrompt(e);
    };
    window.addEventListener('beforeinstallprompt', handler);
    return () => window.removeEventListener('beforeinstallprompt', handler);
  }, []);

  // Sync app icon on startup
  useEffect(() => {
    const current = storage.getAppIcon();
    setAppIconState(current);
    const link = document.querySelector("link[rel='icon']") as HTMLLinkElement | null;
    if (link) link.href = current;
    const apple = document.querySelector("link[rel='apple-touch-icon']") as HTMLLinkElement | null;
    if (apple) apple.href = current;
  }, []);

  // Load last saved account if any on startup is handled below after connectToServer is initialized

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
        `Catalogo aggiornato con successo: ${fetchedLiveStreams.length} canali live, ${fetchedVodStreams.length} film, ${fetchedSeries.length} serie TV.`
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

  // On app startup: check URL query parameters first (?server=...&user=...&pass=...) or load last account
  useEffect(() => {
    try {
      const searchParams = new URLSearchParams(window.location.search);
      const paramServer = searchParams.get('server') || searchParams.get('url');
      const paramUser = searchParams.get('user') || searchParams.get('username');
      const paramPass = searchParams.get('pass') || searchParams.get('password');
      const paramSettings = searchParams.get('settings') || searchParams.get('setup');

      if (paramServer && paramUser && paramPass) {
        connectToServer(paramServer, paramUser, paramPass);
        return;
      }

      if (paramSettings) {
        setShowSettingsSyncModal(true);
      }
    } catch (e) {
      console.error('Error reading URL params:', e);
    }

    const last = storage.getLastAccount();
    if (last && last.serverUrl && last.username && last.password) {
      setServerUrl(last.serverUrl);
      setUsername(last.username);
      setPassword(last.password);
      // Connessione automatica al login salvato (mantiene l'accesso memorizzato)
      connectToServer(last.serverUrl, last.username, last.password, last.originalLink);
    }
  }, [connectToServer]);

  const handlePlayDirect = (media: PlayableMediaItem) => {
    setActiveMedia(media);
    // Smooth scroll to top player
    window.scrollTo({ top: 0, behavior: 'smooth' });
  };

  const handleConnectCatalog = (parsed: XtreamParsedUrl) => {
    connectToServer(parsed.serverUrl, parsed.username, parsed.password, parsed.originalUrl);
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
    <div className="min-h-screen bg-zinc-950 text-zinc-100 flex flex-col selection:bg-emerald-500/30 selection:text-emerald-200 w-full max-w-full overflow-x-hidden">
      {/* Top Navbar */}
      <Navbar
        serverUrl={serverUrl}
        username={username}
        authData={authData}
        onSelectAccount={handleSelectSavedAccount}
        onOpenServerInfo={() => setShowServerInfo(true)}
        onOpenPrivacy={() => setShowPrivacyModal(true)}
        onDisconnect={handleDisconnect}
        onOpenPasteLink={() => setShowPasteLinkModal(true)}
        onOpenSettingsSync={() => setShowSettingsSyncModal(true)}
        onInstallApp={() => setShowInstallAppModal(true)}
        onOpenTvQrLogin={() => setShowTvQrModal(true)}
      />

      {/* Main Content Area */}
      <main className="flex-1 w-full max-w-[2400px] mx-auto px-3 sm:px-6 lg:px-8 py-4 sm:py-6 space-y-5 sm:space-y-6 overflow-x-hidden">
        {/* Refresh Success Notification Banner */}
        {refreshSuccessMessage && (
          <div className="p-3.5 rounded-2xl bg-emerald-950/80 border border-emerald-800/80 text-emerald-200 flex items-center justify-between gap-3 animate-in fade-in shadow-lg">
            <div className="flex items-center gap-2.5 text-xs font-medium">
              <CheckCircle2 className="w-4 h-4 text-emerald-400 shrink-0" />
              <span>{refreshSuccessMessage}</span>
            </div>
            <button
              onClick={() => setRefreshSuccessMessage(null)}
              className="text-xs text-emerald-400 hover:text-white px-2 py-0.5"
            >
              ✕
            </button>
          </div>
        )}
        {/* Active Media Player View */}
        {activeMedia && (
          <section className="space-y-2 animate-in fade-in slide-in-from-top-4 duration-300">
            <MediaPlayer
              media={activeMedia}
              onClose={() => setActiveMedia(null)}
              onNext={activeMedia.type === 'live' && liveStreams.length > 1 ? handleNextChannel : undefined}
              onPrevious={activeMedia.type === 'live' && liveStreams.length > 1 ? handlePreviousChannel : undefined}
            />
          </section>
        )}

        {/* Input Bar (Shown when not connected, or accessible anytime from 'Incolla Link' in the head) */}
        {!isConnected && (
          <section>
            <UrlInputBar
              onPlayDirect={handlePlayDirect}
              onConnectCatalog={handleConnectCatalog}
              currentConnectedServer={serverUrl}
              isLoading={isLoadingCatalog}
              onOpenTvQrLogin={() => setShowTvQrModal(true)}
            />
          </section>
        )}

        {/* Error Notification Banner */}
        {errorMessage && (
          <div className="p-4 rounded-2xl bg-rose-950/60 border border-rose-800/80 text-rose-200 flex items-start justify-between gap-3 animate-in fade-in">
            <div className="flex items-start gap-3">
              <AlertCircle className="w-5 h-5 text-rose-400 shrink-0 mt-0.5" />
              <div>
                <h4 className="text-sm font-semibold text-rose-300">Errore di Connessione</h4>
                <p className="text-xs text-rose-300/80 mt-0.5 leading-relaxed">{errorMessage}</p>
                <div className="mt-2 text-[11px] text-zinc-400">
                  Suggerimento: se il server blocca le chiamate API o è offline, puoi comunque cliccare su 
                  <strong className="text-zinc-200"> "Riproduci Subito Questo Video"</strong> per provare lo streaming diretto tramite proxy.
                </div>
              </div>
            </div>
            <button
              onClick={() => setErrorMessage(null)}
              className="text-xs text-rose-400 hover:text-white px-2 py-1 rounded hover:bg-rose-900/40 transition"
            >
              Chiudi
            </button>
          </div>
        )}

        {/* Connected Catalog Navigation Tabs */}
        {isConnected && !isLoadingCatalog && (
          <div className="flex flex-col md:flex-row md:items-center justify-between gap-3 border-b border-zinc-800 pb-3">
            <div className="flex flex-wrap items-center gap-1.5 sm:gap-2">
              {/* 1. Live TV first */}
              <button
                onClick={() => setActiveTab('live')}
                className={`flex items-center gap-2 px-3.5 sm:px-4 py-2 rounded-xl text-xs sm:text-sm font-medium transition cursor-pointer ${
                  activeTab === 'live'
                    ? 'bg-rose-600 text-white shadow-lg shadow-rose-950/40'
                    : 'bg-zinc-900 text-zinc-400 hover:text-zinc-200 hover:bg-zinc-800'
                }`}
              >
                <Tv className="w-4 h-4 text-rose-400" />
                Live TV
                <span className="text-[10px] px-1.5 py-0.5 rounded-full bg-black/40">
                  {liveStreams.length}
                </span>
              </button>

              {/* 2. Film & VOD second */}
              <button
                onClick={() => setActiveTab('movies')}
                className={`flex items-center gap-2 px-3.5 sm:px-4 py-2 rounded-xl text-xs sm:text-sm font-medium transition cursor-pointer ${
                  activeTab === 'movies'
                    ? 'bg-emerald-600 text-white shadow-lg shadow-emerald-950/40'
                    : 'bg-zinc-900 text-zinc-400 hover:text-zinc-200 hover:bg-zinc-800'
                }`}
              >
                <Film className="w-4 h-4 text-emerald-400" />
                Film & VOD
                <span className="text-[10px] px-1.5 py-0.5 rounded-full bg-black/40">
                  {vodStreams.length}
                </span>
              </button>

              {/* 3. Serie TV third */}
              <button
                onClick={() => setActiveTab('series')}
                className={`flex items-center gap-2 px-3.5 sm:px-4 py-2 rounded-xl text-xs sm:text-sm font-medium transition cursor-pointer ${
                  activeTab === 'series'
                    ? 'bg-blue-600 text-white shadow-lg shadow-blue-950/40'
                    : 'bg-zinc-900 text-zinc-400 hover:text-zinc-200 hover:bg-zinc-800'
                }`}
              >
                <Layers className="w-4 h-4 text-blue-400" />
                Serie TV
                <span className="text-[10px] px-1.5 py-0.5 rounded-full bg-black/40">
                  {seriesList.length}
                </span>
              </button>

              {/* 4. Novità & Recenti */}
              <button
                onClick={() => setActiveTab('recent')}
                className={`flex items-center gap-2 px-3.5 sm:px-4 py-2 rounded-xl text-xs sm:text-sm font-medium transition cursor-pointer ${
                  activeTab === 'recent'
                    ? 'bg-gradient-to-r from-amber-500 to-orange-500 text-white shadow-lg shadow-amber-950/40'
                    : 'bg-zinc-900 text-zinc-400 hover:text-zinc-200 hover:bg-zinc-800'
                }`}
              >
                <Sparkles className="w-4 h-4 text-amber-200" />
                Novità & Recenti
              </button>

              {/* 5. I Miei Download */}
              <button
                onClick={() => setActiveTab('downloads')}
                className={`flex items-center gap-2 px-3.5 sm:px-4 py-2 rounded-xl text-xs sm:text-sm font-medium transition cursor-pointer ${
                  activeTab === 'downloads'
                    ? 'bg-cyan-600 text-white shadow-lg shadow-cyan-950/40'
                    : 'bg-zinc-900 text-zinc-400 hover:text-zinc-200 hover:bg-zinc-800'
                }`}
              >
                <Download className="w-4 h-4 text-cyan-400" />
                I Miei Download
              </button>

              {/* 6. Preferiti */}
              <button
                onClick={() => setActiveTab('favorites')}
                className={`flex items-center gap-2 px-3.5 sm:px-4 py-2 rounded-xl text-xs sm:text-sm font-medium transition cursor-pointer ${
                  activeTab === 'favorites'
                    ? 'bg-zinc-800 text-white border border-zinc-700 shadow-md'
                    : 'bg-zinc-900 text-zinc-400 hover:text-zinc-200 hover:bg-zinc-800'
                }`}
              >
                <Star className="w-4 h-4 text-amber-400" />
                Preferiti
              </button>
            </div>

            {/* Dedicated Prominent Aggiorna Catalogo Action Button */}
            <div className="flex items-center gap-2 shrink-0">
              <button
                onClick={handleRefreshCatalog}
                disabled={isRefreshingCatalog}
                className="flex items-center gap-2 px-4 py-2 rounded-xl text-xs sm:text-sm font-semibold bg-gradient-to-r from-emerald-600 to-teal-600 hover:from-emerald-500 hover:to-teal-500 text-white shadow-lg shadow-emerald-950/50 transition cursor-pointer disabled:opacity-50"
                title="Ricarica tutti i contenuti dal server Xtream"
              >
                <RefreshCw className={`w-4 h-4 ${isRefreshingCatalog ? 'animate-spin' : ''}`} />
                <span>{isRefreshingCatalog ? 'Aggiornamento in corso...' : 'Aggiorna Catalogo'}</span>
              </button>

              {lastRefreshedAt && (
                <span className="hidden xl:inline text-[11px] text-zinc-400">
                  Ultimo sync: {new Date(lastRefreshedAt).toLocaleTimeString('it-IT', { hour: '2-digit', minute: '2-digit' })}
                </span>
              )}
            </div>
          </div>
        )}

        {/* Catalog Views Content */}
        {isLoadingCatalog ? (
          <div className="py-24 text-center">
            <div className="w-12 h-12 border-4 border-emerald-500/20 border-t-emerald-500 rounded-full animate-spin mx-auto mb-4"></div>
            <h3 className="text-base font-semibold text-white">
              Recupero catalogo dal server Xtream...
            </h3>
            <p className="text-xs text-zinc-400 mt-1 max-w-sm mx-auto">
              Caricamento categorie, canali in diretta, film VOD e serie TV per l'account specificato.
            </p>
          </div>
        ) : isConnected ? (
          <div className="mt-4">
            {activeTab === 'live' && (
              <LiveCatalog
                categories={liveCategories}
                streams={liveStreams}
                serverUrl={serverUrl}
                username={username}
                password={password}
                onPlay={handlePlayDirect}
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

            {activeTab === 'downloads' && (
              <DownloadsView
                onPlay={handlePlayDirect}
                onExploreContent={(tab) => setActiveTab(tab)}
              />
            )}

            {activeTab === 'favorites' && <FavoritesView onPlay={handlePlayDirect} />}
          </div>
        ) : (
          /* Empty State / Welcome Guide when not connected yet */
          <div className="py-8 space-y-6">
            <div className="p-6 sm:p-8 rounded-3xl bg-gradient-to-br from-zinc-900/90 to-zinc-950/90 border border-zinc-800 shadow-2xl relative overflow-hidden">
              <div className="absolute top-0 right-0 w-96 h-96 bg-emerald-500/5 rounded-full blur-3xl pointer-events-none"></div>

              <div className="max-w-2xl">
                <div className="flex flex-wrap items-center gap-3 mb-4">
                  <div className="inline-flex items-center gap-2 px-3 py-1 rounded-full bg-emerald-500/10 border border-emerald-500/20 text-emerald-400 text-xs font-semibold">
                    <Sparkles className="w-3.5 h-3.5" />
                    Xtream Codes Streaming Engine
                  </div>
                  <button
                    onClick={() => setShowPrivacyModal(true)}
                    className="inline-flex items-center gap-1.5 px-3 py-1 rounded-full bg-zinc-800/90 hover:bg-zinc-700 border border-zinc-700 text-zinc-300 text-xs transition cursor-pointer font-medium"
                  >
                    <ShieldCheck className="w-3.5 h-3.5 text-emerald-400" />
                    Vuoi proteggere i tuoi dati su Render o in Locale? Clicca qui
                  </button>
                </div>

                <h2 className="text-2xl sm:text-3xl font-extrabold text-white tracking-tight leading-tight">
                  Incolla il tuo link con credenziali e guarda subito i tuoi contenuti
                </h2>

                <p className="text-sm text-zinc-400 mt-3 leading-relaxed">
                  Questo lettore multimediale estrae automaticamente host del server, nome utente,
                  password e ID dello stream da qualsiasi link Xtream Codes. Puoi riprodurre il video
                  immediatamente oppure sincronizzare l'intero catalogo di Film, Serie TV e Canali Live.
                </p>

                {/* Example Quick-Play Card */}
                <div className="mt-6 p-4 rounded-2xl bg-zinc-950 border border-zinc-800 flex flex-col sm:flex-row items-start sm:items-center justify-between gap-4">
                  <div className="min-w-0">
                    <span className="text-[11px] font-semibold text-emerald-400 uppercase tracking-wider block mb-1">
                      Link di esempio (dal tuo prompt)
                    </span>
                    <code className="text-xs text-zinc-300 font-mono break-all block">
                      http://reload.loginflash.com/movie/User/Password/10112.mp4
                    </code>
                  </div>

                  <button
                    onClick={() => {
                      const sample = 'http://reload.loginflash.com/movie/User/Password/10112.mp4';
                      const parsed = parseXtreamUrl(sample);
                      if (parsed) {
                        const proxied = buildStreamUrl(
                          parsed.serverUrl,
                          parsed.username,
                          parsed.password,
                          'movie',
                          '10112',
                          'mp4',
                          false
                        );
                        handlePlayDirect({
                          id: 'sample_10112',
                          title: 'Film Esempio #10112 (reload.loginflash.com)',
                          type: 'movie',
                          streamUrl: proxied,
                          containerExtension: 'mp4',
                          categoryName: 'Esempio Prompt',
                        });
                      }
                    }}
                    className="shrink-0 px-4 py-2.5 rounded-xl bg-emerald-600 hover:bg-emerald-500 text-white font-medium text-xs shadow-md transition flex items-center gap-2 cursor-pointer"
                  >
                    <Zap className="w-4 h-4 fill-white" />
                    Prova Subito Esempio
                  </button>
                </div>
              </div>

              {/* Supported link types feature grid */}
              <div className="grid grid-cols-1 sm:grid-cols-3 gap-4 mt-8 pt-6 border-t border-zinc-800/80">
                <div className="p-4 rounded-xl bg-zinc-950/60 border border-zinc-800/80">
                  <div className="flex items-center gap-2 text-emerald-400 font-semibold text-xs mb-1">
                    <Film className="w-4 h-4" />
                    Film VOD
                  </div>
                  <p className="text-[11px] text-zinc-400">
                    Formato: <code className="text-zinc-300">/movie/User/Pass/id.mp4</code>. Con supporto
                    riavvolgimento, timeline seek e salto capitoli.
                  </p>
                </div>

                <div className="p-4 rounded-xl bg-zinc-950/60 border border-zinc-800/80">
                  <div className="flex items-center gap-2 text-rose-400 font-semibold text-xs mb-1">
                    <Tv className="w-4 h-4" />
                    Canali Live TV
                  </div>
                  <p className="text-[11px] text-zinc-400">
                    Formato: <code className="text-zinc-300">/live/User/Pass/id.ts</code> o{' '}
                    <code className="text-zinc-300">/User/Pass/id</code> in diretta streaming HLS/TS.
                  </p>
                </div>

                <div className="p-4 rounded-xl bg-zinc-950/60 border border-zinc-800/80">
                  <div className="flex items-center gap-2 text-blue-400 font-semibold text-xs mb-1">
                    <Layers className="w-4 h-4" />
                    Serie TV & M3U
                  </div>
                  <p className="text-[11px] text-zinc-400">
                    Formato: <code className="text-zinc-300">/series/User/Pass/id.mp4</code> o link playlist{' '}
                    <code className="text-zinc-300">get.php</code> con credenziali integrate.
                  </p>
                </div>
              </div>
            </div>

            {/* Saved Accounts & History if available */}
            <FavoritesView onPlay={handlePlayDirect} />
          </div>
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

      {/* Privacy & Render Deploy Modal */}
      {showPrivacyModal && (
        <PrivacyDeployModal onClose={() => setShowPrivacyModal(false)} />
      )}

      {/* Install App Modal */}
      {showInstallAppModal && (
        <InstallAppModal
          onClose={() => setShowInstallAppModal(false)}
          canPrompt={Boolean(deferredPrompt)}
          currentIcon={appIcon}
          onIconChange={(newIcon) => setAppIconState(newIcon)}
          onTriggerPrompt={() => {
            if (deferredPrompt) {
              deferredPrompt.prompt();
            }
          }}
        />
      )}

      {/* Paste Link Modal */}
      {showPasteLinkModal && (
        <PasteLinkModal
          onClose={() => setShowPasteLinkModal(false)}
          onPlayDirect={handlePlayDirect}
          onConnectCatalog={handleConnectCatalog}
          currentConnectedServer={serverUrl}
          isLoading={isLoadingCatalog}
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

      {/* Smart TV & Fire Stick QR Code & PIN Login Modal */}
      <TvQrLoginModal
        isOpen={showTvQrModal}
        onClose={() => setShowTvQrModal(false)}
        onSuccess={(creds) => {
          connectToServer(creds.server, creds.username, creds.password, creds.originalLink);
        }}
      />

      {/* Footer */}
      <footer className="w-full border-t border-zinc-900 bg-zinc-950 py-4 text-center text-xs text-zinc-600">
        Xtream StreamPlayer &bull; Riproduttore multimediale universale per server Xtream Codes con proxy CORS integrato
      </footer>
    </div>
  );
}
