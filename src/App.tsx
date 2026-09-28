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

  const [activeTab, setActiveTab] = useState<'movies' | 'live' | 'series' | 'favorites'>('movies');
  const [activeMedia, setActiveMedia] = useState<PlayableMediaItem | null>(null);

  const [isLoadingCatalog, setIsLoadingCatalog] = useState<boolean>(false);
  const [errorMessage, setErrorMessage] = useState<string | null>(null);
  const [showServerInfo, setShowServerInfo] = useState<boolean>(false);
  const [showPrivacyModal, setShowPrivacyModal] = useState<boolean>(false);

  // Catalog data
  const [vodCategories, setVodCategories] = useState<XtreamCategory[]>([]);
  const [vodStreams, setVodStreams] = useState<XtreamVodStream[]>([]);
  const [liveCategories, setLiveCategories] = useState<XtreamCategory[]>([]);
  const [liveStreams, setLiveStreams] = useState<XtreamLiveStream[]>([]);
  const [seriesCategories, setSeriesCategories] = useState<XtreamCategory[]>([]);
  const [seriesList, setSeriesList] = useState<XtreamSeries[]>([]);

  // Load last saved account if any on startup
  useEffect(() => {
    const last = storage.getLastAccount();
    if (last) {
      setServerUrl(last.serverUrl);
      setUsername(last.username);
      setPassword(last.password);
    }
  }, []);

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

        // Default to active tab based on what content is available
        if (fetchedVodStreams.length > 0) {
          setActiveTab('movies');
        } else if (fetchedLiveStreams.length > 0) {
          setActiveTab('live');
        } else if (fetchedSeries.length > 0) {
          setActiveTab('series');
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

  const isConnected = Boolean(serverUrl && username && password);

  return (
    <div className="min-h-screen bg-zinc-950 text-zinc-100 flex flex-col selection:bg-emerald-500/30 selection:text-emerald-200">
      {/* Top Navbar */}
      <Navbar
        serverUrl={serverUrl}
        username={username}
        authData={authData}
        onSelectAccount={handleSelectSavedAccount}
        onOpenServerInfo={() => setShowServerInfo(true)}
        onOpenPrivacy={() => setShowPrivacyModal(true)}
        onDisconnect={handleDisconnect}
      />

      {/* Main Content Area */}
      <main className="flex-1 max-w-7xl w-full mx-auto px-4 sm:px-6 py-6 space-y-6">
        {/* Active Media Player View */}
        {activeMedia && (
          <section className="space-y-2 animate-in fade-in slide-in-from-top-4 duration-300">
            <MediaPlayer media={activeMedia} onClose={() => setActiveMedia(null)} />
          </section>
        )}

        {/* Input Bar (Always accessible to paste new links or change stream) */}
        <section>
          <UrlInputBar
            onPlayDirect={handlePlayDirect}
            onConnectCatalog={handleConnectCatalog}
            currentConnectedServer={serverUrl}
            isLoading={isLoadingCatalog}
          />
        </section>

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
          <div className="flex flex-wrap items-center justify-between gap-3 border-b border-zinc-800 pb-3">
            <div className="flex items-center gap-1.5 sm:gap-2">
              <button
                onClick={() => setActiveTab('movies')}
                className={`flex items-center gap-2 px-4 py-2 rounded-xl text-xs sm:text-sm font-medium transition cursor-pointer ${
                  activeTab === 'movies'
                    ? 'bg-emerald-600 text-white shadow-lg shadow-emerald-950/40'
                    : 'bg-zinc-900 text-zinc-400 hover:text-zinc-200 hover:bg-zinc-800'
                }`}
              >
                <Film className="w-4 h-4" />
                Film & VOD
                <span className="text-[10px] px-1.5 py-0.5 rounded-full bg-black/40">
                  {vodStreams.length}
                </span>
              </button>

              <button
                onClick={() => setActiveTab('live')}
                className={`flex items-center gap-2 px-4 py-2 rounded-xl text-xs sm:text-sm font-medium transition cursor-pointer ${
                  activeTab === 'live'
                    ? 'bg-rose-600 text-white shadow-lg shadow-rose-950/40'
                    : 'bg-zinc-900 text-zinc-400 hover:text-zinc-200 hover:bg-zinc-800'
                }`}
              >
                <Tv className="w-4 h-4" />
                Canali Live
                <span className="text-[10px] px-1.5 py-0.5 rounded-full bg-black/40">
                  {liveStreams.length}
                </span>
              </button>

              <button
                onClick={() => setActiveTab('series')}
                className={`flex items-center gap-2 px-4 py-2 rounded-xl text-xs sm:text-sm font-medium transition cursor-pointer ${
                  activeTab === 'series'
                    ? 'bg-blue-600 text-white shadow-lg shadow-blue-950/40'
                    : 'bg-zinc-900 text-zinc-400 hover:text-zinc-200 hover:bg-zinc-800'
                }`}
              >
                <Layers className="w-4 h-4" />
                Serie TV
                <span className="text-[10px] px-1.5 py-0.5 rounded-full bg-black/40">
                  {seriesList.length}
                </span>
              </button>

              <button
                onClick={() => setActiveTab('favorites')}
                className={`flex items-center gap-2 px-4 py-2 rounded-xl text-xs sm:text-sm font-medium transition cursor-pointer ${
                  activeTab === 'favorites'
                    ? 'bg-amber-600 text-white shadow-lg shadow-amber-950/40'
                    : 'bg-zinc-900 text-zinc-400 hover:text-zinc-200 hover:bg-zinc-800'
                }`}
              >
                <Star className="w-4 h-4" />
                Preferiti & Recenti
              </button>
            </div>

            <div className="hidden lg:flex items-center gap-2 text-xs text-zinc-400">
              <span className="flex items-center gap-1.5 bg-emerald-950/50 border border-emerald-800/40 text-emerald-400 px-2.5 py-1 rounded-lg">
                <ShieldCheck className="w-3.5 h-3.5" />
                Proxy CORS Attivo
              </span>
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

            {activeTab === 'series' && (
              <SeriesCatalog
                categories={seriesCategories}
                seriesList={seriesList}
                serverUrl={serverUrl}
                username={username}
                password={password}
                onPlay={handlePlayDirect}
                isLoading={isLoadingCatalog}
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
                          true
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

      {/* Footer */}
      <footer className="w-full border-t border-zinc-900 bg-zinc-950 py-4 text-center text-xs text-zinc-600">
        Xtream StreamPlayer &bull; Riproduttore multimediale universale per server Xtream Codes con proxy CORS integrato
      </footer>
    </div>
  );
}
