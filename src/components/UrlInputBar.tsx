import React, { useState, useEffect } from 'react';
import {
  Link2,
  Play,
  Layers,
  Sparkles,
  Clipboard,
  Check,
  Eye,
  EyeOff,
  Server,
  User,
  Key,
  Film,
  Tv,
  HelpCircle,
  QrCode,
  Smartphone,
  AlertCircle,
} from 'lucide-react';
import { parseXtreamUrl, buildStreamUrl } from '../utils/parseXtreamUrl';
import { xtreamClient } from '../services/xtreamClient';
import { XtreamParsedUrl, PlayableMediaItem } from '../types/xtream';

interface UrlInputBarProps {
  onPlayDirect: (media: PlayableMediaItem) => void;
  onConnectCatalog: (parsed: XtreamParsedUrl) => void;
  currentConnectedServer?: string | null;
  isLoading?: boolean;
  onOpenTvQrLogin?: () => void;
}

const EXAMPLE_LINK = 'http://reload.loginflash.com/movie/User/Password/10112.mp4';

export const UrlInputBar: React.FC<UrlInputBarProps> = ({
  onPlayDirect,
  onConnectCatalog,
  currentConnectedServer,
  isLoading = false,
  onOpenTvQrLogin,
}) => {
  const [urlInput, setUrlInput] = useState<string>('');
  const [parsed, setParsed] = useState<XtreamParsedUrl | null>(null);
  const [showPassword, setShowPassword] = useState<boolean>(false);
  const [copiedExample, setCopiedExample] = useState<boolean>(false);
  const [manualMode, setManualMode] = useState<boolean>(false);
  const [isAuthenticating, setIsAuthenticating] = useState<boolean>(false);
  const [directPlayError, setDirectPlayError] = useState<string | null>(null);

  // Manual inputs fallback
  const [manualHost, setManualHost] = useState<string>('');
  const [manualUser, setManualUser] = useState<string>('');
  const [manualPass, setManualPass] = useState<string>('');

  // Auto-parse input
  useEffect(() => {
    if (!urlInput.trim()) {
      setParsed(null);
      setDirectPlayError(null);
      return;
    }
    const res = parseXtreamUrl(urlInput);
    setDirectPlayError(null);
    setParsed(res);
  }, [urlInput]);

  const handlePasteClipboard = async () => {
    try {
      const text = await navigator.clipboard.readText();
      if (text) {
        setUrlInput(text.trim());
      }
    } catch {
      // Fallback if clipboard API is blocked in iframe
      const sample = prompt('Incolla qui il tuo link Xtream Codes:');
      if (sample) setUrlInput(sample.trim());
    }
  };

  const handleLoadExample = () => {
    setUrlInput(EXAMPLE_LINK);
    setCopiedExample(true);
    setTimeout(() => setCopiedExample(false), 2000);
  };

  const handlePlayDirectClick = async () => {
    if (!parsed || !parsed.username || !parsed.password || isAuthenticating) return;

    setDirectPlayError(null);
    setIsAuthenticating(true);
    try {
      // Il proxy è chiuso: prima della riproduzione serve un login riuscito
      // verso questo provider, che abilita l'origine sul server.
      const auth = await xtreamClient.authenticate(
        parsed.serverUrl,
        parsed.username,
        parsed.password
      );
      if (auth.user_info?.status === 'Disabled') {
        setDirectPlayError('Questo account Xtream risulta disabilitato sul server.');
        return;
      }
      if (auth.user_info?.auth === 0) {
        setDirectPlayError('Nome utente o password non corretti per questo server Xtream.');
        return;
      }
    } catch (err: any) {
      console.error('Errore di accesso prima della riproduzione diretta:', err);
      setDirectPlayError(
        err?.message ||
          'Impossibile connettersi al server Xtream Codes. Verifica il link o la raggiungibilità del server.'
      );
      return;
    } finally {
      setIsAuthenticating(false);
    }

    const streamType: 'movie' | 'series' | 'live' =
      parsed.streamType === 'live' ? 'live' : parsed.streamType === 'series' ? 'series' : 'movie';
    const streamId = parsed.streamId || '10112';
    const ext = parsed.containerExtension || 'mp4';

    const proxiedStreamUrl = buildStreamUrl(
      parsed.serverUrl,
      parsed.username,
      parsed.password,
      streamType,
      streamId,
      ext,
      false
    );

    const mediaItem: PlayableMediaItem = {
      id: `${parsed.host}_${streamType}_${streamId}`,
      title: `Stream Diretto #${streamId} (${streamType.toUpperCase()})`,
      type: streamType === 'series' ? 'series' : streamType === 'live' ? 'live' : 'movie',
      streamUrl: proxiedStreamUrl,
      categoryName: 'Riproduzione Rapida da URL',
      containerExtension: ext,
    };

    onPlayDirect(mediaItem);
  };

  const handleConnectCatalogClick = () => {
    if (manualMode) {
      if (!manualHost || !manualUser || !manualPass) return;
      const cleanHost = manualHost.startsWith('http') ? manualHost : `http://${manualHost}`;
      const manualParsed = parseXtreamUrl(`${cleanHost}/player_api.php?username=${encodeURIComponent(manualUser)}&password=${encodeURIComponent(manualPass)}`);
      if (manualParsed) onConnectCatalog(manualParsed);
      return;
    }

    if (!parsed || !parsed.serverUrl || !parsed.username || !parsed.password) return;
    onConnectCatalog(parsed);
  };

  const hasValidCreds = Boolean(
    (parsed && parsed.serverUrl && parsed.username && parsed.password) ||
    (manualMode && manualHost && manualUser && manualPass)
  );

  return (
    <div className="w-full bg-surface-0/90 border border-separator rounded-2xl p-4 sm:p-5 shadow-xl backdrop-blur-md">
      {/* Top row: Label & quick actions */}
      <div className="flex flex-wrap items-center justify-between gap-2 mb-3">
        <div className="flex items-center gap-2">
          <div className="w-2.5 h-2.5 rounded-full bg-accent animate-pulse"></div>
          <label htmlFor="xtream-link" className="text-sm font-semibold text-label tracking-wide">
            Incolla Link o URL Xtream Codes
          </label>
        </div>

        <div className="flex items-center gap-2 text-xs">
          {onOpenTvQrLogin && (
            <button
              type="button"
              onClick={onOpenTvQrLogin}
              className="flex items-center gap-1.5 px-3 py-1.5 rounded-lg bg-accent hover:bg-accent-strong text-on-accent font-bold transition cursor-pointer shadow-md "
              title="Accedi facilmente dalla TV o Fire Stick inquadrando un QR Code dal tuo smartphone"
            >
              <QrCode className="w-3.5 h-3.5" />
              <span>Accesso TV con QR Code</span>
            </button>
          )}

          <button
            type="button"
            onClick={handleLoadExample}
            className="flex items-center gap-1.5 px-3 py-1.5 rounded-lg bg-accent/10 hover:bg-accent/20 text-accent-strong border border-accent/30 transition cursor-pointer font-medium"
            title="Incolla l'esempio: http://reload.loginflash.com/movie/User/Password/10112.mp4"
          >
            <Sparkles className="w-3.5 h-3.5 text-label-secondary" />
            {copiedExample ? 'Caricato!' : 'Carica Link Esempio'}
          </button>

          <button
            type="button"
            onClick={() => setManualMode(!manualMode)}
            className="text-label-secondary hover:text-label transition underline underline-offset-2"
          >
            {manualMode ? 'Modalità Link Singolo' : 'Inserimento Manuale (Host/User/Pass)'}
          </button>
        </div>
      </div>

      {/* Main Input Area */}
      {!manualMode ? (
        <div className="space-y-3">
          <div className="relative flex items-center">
            <div className="absolute left-3.5 text-label-tertiary pointer-events-none">
              <Link2 className="w-5 h-5" />
            </div>
            <input
              id="xtream-link"
              type="text"
              value={urlInput}
              onChange={(e) => setUrlInput(e.target.value)}
              placeholder="es. http://reload.loginflash.com/movie/User/Password/10112.mp4 o get.php"
              className="w-full pl-11 pr-24 py-3 bg-surface-0/80 border border-separator-strong/80 rounded-xl text-label placeholder-label-tertiary text-sm focus:outline-hidden focus:border-accent focus:ring-2 focus:ring-accent/20  transition"
            />
            <div className="absolute right-2 flex items-center gap-1">
              {urlInput && (
                <button
                  type="button"
                  onClick={() => setUrlInput('')}
                  className="px-2 py-1 text-xs text-label-secondary hover:text-label rounded hover:bg-surface-1 transition"
                >
                  Cancella
                </button>
              )}
              <button
                type="button"
                onClick={handlePasteClipboard}
                className="p-1.5 text-label-secondary hover:text-label hover:bg-surface-1 rounded-lg transition"
                title="Incolla dagli appunti"
              >
                <Clipboard className="w-4 h-4" />
              </button>
            </div>
          </div>
        </div>
      ) : (
        /* Manual input fields */
        <div className="grid grid-cols-1 sm:grid-cols-3 gap-3">
          <div>
            <label className="text-xs text-label-secondary block mb-1">Server Host (con porta)</label>
            <input
              type="text"
              value={manualHost}
              onChange={(e) => setManualHost(e.target.value)}
              placeholder="http://reload.loginflash.com"
              className="w-full px-3 py-2 bg-surface-0/80 border border-separator-strong rounded-lg text-label text-xs  focus:border-accent focus:outline-hidden"
            />
          </div>
          <div>
            <label className="text-xs text-label-secondary block mb-1">Nome Utente</label>
            <input
              type="text"
              value={manualUser}
              onChange={(e) => setManualUser(e.target.value)}
              placeholder="User"
              className="w-full px-3 py-2 bg-surface-0/80 border border-separator-strong rounded-lg text-label text-xs  focus:border-accent focus:outline-hidden"
            />
          </div>
          <div>
            <label className="text-xs text-label-secondary block mb-1">Password</label>
            <input
              type="password"
              value={manualPass}
              onChange={(e) => setManualPass(e.target.value)}
              placeholder="Password"
              className="w-full px-3 py-2 bg-surface-0/80 border border-separator-strong rounded-lg text-label text-xs  focus:border-accent focus:outline-hidden"
            />
          </div>
        </div>
      )}

      {/* Auto-detected Parameter Badges */}
      {parsed && parsed.serverUrl && (
        <div className="mt-3.5 p-3 rounded-xl bg-surface-0/60 border border-separator/80 flex flex-wrap items-center justify-between gap-3 text-xs">
          <div className="flex flex-wrap items-center gap-3">
            <div className="flex items-center gap-1.5 text-label-secondary">
              <Server className="w-3.5 h-3.5 text-accent-strong" />
              <span className="text-label-tertiary">Host:</span>
              <span className=" text-label font-medium">{parsed.host}</span>
            </div>

            {parsed.username && (
              <div className="flex items-center gap-1.5 text-label-secondary">
                <User className="w-3.5 h-3.5 text-series" />
                <span className="text-label-tertiary">Utente:</span>
                <span className=" text-label font-medium">{parsed.username}</span>
              </div>
            )}

            {parsed.password && (
              <div className="flex items-center gap-1.5 text-label-secondary">
                <Key className="w-3.5 h-3.5 text-favorite" />
                <span className="text-label-tertiary">Password:</span>
                <span className=" text-label">
                  {showPassword ? parsed.password : '••••••••'}
                </span>
                <button
                  type="button"
                  onClick={() => setShowPassword(!showPassword)}
                  className="p-0.5 text-label-secondary hover:text-label ml-0.5"
                >
                  {showPassword ? <EyeOff className="w-3 h-3" /> : <Eye className="w-3 h-3" />}
                </button>
              </div>
            )}

            {parsed.isDirectStream && parsed.streamId && (
              <div className="flex items-center gap-1.5 px-2 py-0.5 rounded bg-accent/15 border border-accent/40 text-label font-medium">
                {parsed.streamType === 'live' ? (
                  <Tv className="w-3 h-3 text-accent" />
                ) : (
                  <Film className="w-3 h-3 text-accent" />
                )}
                <span>
                  {parsed.streamType === 'movie'
                    ? 'Film VOD'
                    : parsed.streamType === 'series'
                    ? 'Episodio Serie'
                    : 'Canale Live'}
                  : ID #{parsed.streamId}
                </span>
                {parsed.containerExtension && (
                  <span className="uppercase text-[10px] bg-surface-2 text-label-secondary px-1 rounded">
                    .{parsed.containerExtension}
                  </span>
                )}
              </div>
            )}
          </div>
        </div>
      )}

      {/* Action Buttons */}
      <div className="mt-4 flex flex-wrap items-center gap-3">
        {/* Direct Play button if a specific stream URL was pasted */}
        {parsed?.isDirectStream && (
          <button
            type="button"
            onClick={handlePlayDirectClick}
            disabled={!hasValidCreds || isAuthenticating}
            className="flex-1 min-w-[200px] flex items-center justify-center gap-2 px-5 py-2.5 rounded-xl bg-accent hover:bg-accent-strong text-on-accent font-medium text-sm shadow-lg  transition disabled:opacity-50 disabled:cursor-not-allowed cursor-pointer"
          >
            {isAuthenticating ? (
              <>
                <div className="w-4 h-4 border-2 border-white/30 border-t-white rounded-full animate-spin"></div>
                Verifica credenziali...
              </>
            ) : (
              <>
                <Play className="w-4 h-4 fill-white" />
                Riproduci Subito Questo Video (#{parsed.streamId})
              </>
            )}
          </button>
        )}

        {/* Explore entire server catalog */}
        <button
          type="button"
          onClick={handleConnectCatalogClick}
          disabled={!hasValidCreds || isLoading}
          className="flex-1 min-w-[220px] flex items-center justify-center gap-2 px-5 py-2.5 rounded-xl bg-surface-1 hover:bg-surface-2 text-label font-medium text-sm border border-separator-strong hover:border-separator-strong shadow-md transition disabled:opacity-50 disabled:cursor-not-allowed cursor-pointer"
        >
          {isLoading ? (
            <div className="w-4 h-4 border-2 border-separator-strong border-t-white rounded-full animate-spin"></div>
          ) : (
            <Layers className="w-4 h-4 text-accent-strong" />
          )}
          {isLoading ? 'Connessione al server in corso...' : 'Esplora Intero Catalogo del Server'}
        </button>
      </div>

      {/* Direct-play login error */}
      {directPlayError && (
        <div
          role="alert"
          className="mt-3 flex items-start gap-2.5 p-3 rounded-xl bg-danger/15 border border-danger/40 text-label shadow-lg"
        >
          <AlertCircle className="w-4 h-4 text-danger shrink-0 mt-0.5" />
          <div className="min-w-0 flex-1">
            <p className="text-xs sm:text-sm font-bold text-label">Errore di Connessione</p>
            <p className="text-xs sm:text-sm text-label mt-0.5 leading-relaxed">{directPlayError}</p>
          </div>
          <button
            type="button"
            onClick={() => setDirectPlayError(null)}
            className="text-xs font-bold text-label hover:underline px-2 py-1 rounded-lg hover:bg-danger/20 transition cursor-pointer shrink-0"
          >
            Chiudi
          </button>
        </div>
      )}

      {/* Quick Help Tip */}
      <div className="mt-3 flex items-center gap-1.5 text-[11px] text-label-secondary">
        <HelpCircle className="w-3.5 h-3.5 text-label-tertiary shrink-0" />
        <span>
          Supporta qualsiasi link Xtream Codes (es. <code className="text-label-secondary">/movie/User/Pass/id.mp4</code>, <code className="text-label-secondary">/series/...</code>, <code className="text-label-secondary">/live/...</code> o playlist <code className="text-label-secondary">get.php</code>). Il server proxy integrato gestisce automaticamente le restrizioni CORS e HTTP/HTTPS.
        </span>
      </div>
    </div>
  );
};
