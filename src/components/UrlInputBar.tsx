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
} from 'lucide-react';
import { parseXtreamUrl, buildStreamUrl } from '../utils/parseXtreamUrl';
import { XtreamParsedUrl, PlayableMediaItem } from '../types/xtream';

interface UrlInputBarProps {
  onPlayDirect: (media: PlayableMediaItem) => void;
  onConnectCatalog: (parsed: XtreamParsedUrl) => void;
  currentConnectedServer?: string | null;
  isLoading?: boolean;
}

const EXAMPLE_LINK = 'http://reload.loginflash.com/movie/User/Password/10112.mp4';

export const UrlInputBar: React.FC<UrlInputBarProps> = ({
  onPlayDirect,
  onConnectCatalog,
  currentConnectedServer,
  isLoading = false,
}) => {
  const [urlInput, setUrlInput] = useState<string>('');
  const [parsed, setParsed] = useState<XtreamParsedUrl | null>(null);
  const [showPassword, setShowPassword] = useState<boolean>(false);
  const [copiedExample, setCopiedExample] = useState<boolean>(false);
  const [manualMode, setManualMode] = useState<boolean>(false);

  // Manual inputs fallback
  const [manualHost, setManualHost] = useState<string>('');
  const [manualUser, setManualUser] = useState<string>('');
  const [manualPass, setManualPass] = useState<string>('');

  // Auto-parse input
  useEffect(() => {
    if (!urlInput.trim()) {
      setParsed(null);
      return;
    }
    const res = parseXtreamUrl(urlInput);
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

  const handlePlayDirectClick = () => {
    if (!parsed || !parsed.username || !parsed.password) return;

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
    <div className="w-full bg-zinc-900/90 border border-zinc-800 rounded-2xl p-4 sm:p-5 shadow-xl backdrop-blur-md">
      {/* Top row: Label & quick actions */}
      <div className="flex flex-wrap items-center justify-between gap-2 mb-3">
        <div className="flex items-center gap-2">
          <div className="w-2.5 h-2.5 rounded-full bg-emerald-500 animate-pulse"></div>
          <label htmlFor="xtream-link" className="text-sm font-semibold text-white tracking-wide">
            Incolla Link o URL Xtream Codes
          </label>
        </div>

        <div className="flex items-center gap-2 text-xs">
          <button
            type="button"
            onClick={handleLoadExample}
            className="flex items-center gap-1.5 px-3 py-1.5 rounded-lg bg-emerald-500/10 hover:bg-emerald-500/20 text-emerald-400 border border-emerald-500/30 transition cursor-pointer font-medium"
            title="Incolla l'esempio: http://reload.loginflash.com/movie/User/Password/10112.mp4"
          >
            <Sparkles className="w-3.5 h-3.5" />
            {copiedExample ? 'Caricato!' : 'Carica Link Esempio'}
          </button>

          <button
            type="button"
            onClick={() => setManualMode(!manualMode)}
            className="text-zinc-400 hover:text-zinc-200 transition underline underline-offset-2"
          >
            {manualMode ? 'Modalità Link Singolo' : 'Inserimento Manuale (Host/User/Pass)'}
          </button>
        </div>
      </div>

      {/* Main Input Area */}
      {!manualMode ? (
        <div className="space-y-3">
          <div className="relative flex items-center">
            <div className="absolute left-3.5 text-zinc-500 pointer-events-none">
              <Link2 className="w-5 h-5" />
            </div>
            <input
              id="xtream-link"
              type="text"
              value={urlInput}
              onChange={(e) => setUrlInput(e.target.value)}
              placeholder="es. http://reload.loginflash.com/movie/User/Password/10112.mp4 o get.php"
              className="w-full pl-11 pr-24 py-3 bg-zinc-950/80 border border-zinc-700/80 rounded-xl text-white placeholder-zinc-500 text-sm focus:outline-hidden focus:border-emerald-500 focus:ring-2 focus:ring-emerald-500/20 font-mono transition"
            />
            <div className="absolute right-2 flex items-center gap-1">
              {urlInput && (
                <button
                  type="button"
                  onClick={() => setUrlInput('')}
                  className="px-2 py-1 text-xs text-zinc-400 hover:text-white rounded hover:bg-zinc-800 transition"
                >
                  Cancella
                </button>
              )}
              <button
                type="button"
                onClick={handlePasteClipboard}
                className="p-1.5 text-zinc-300 hover:text-white hover:bg-zinc-800 rounded-lg transition"
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
            <label className="text-xs text-zinc-400 block mb-1">Server Host (con porta)</label>
            <input
              type="text"
              value={manualHost}
              onChange={(e) => setManualHost(e.target.value)}
              placeholder="http://reload.loginflash.com"
              className="w-full px-3 py-2 bg-zinc-950/80 border border-zinc-700 rounded-lg text-white text-xs font-mono focus:border-emerald-500 focus:outline-hidden"
            />
          </div>
          <div>
            <label className="text-xs text-zinc-400 block mb-1">Nome Utente</label>
            <input
              type="text"
              value={manualUser}
              onChange={(e) => setManualUser(e.target.value)}
              placeholder="User"
              className="w-full px-3 py-2 bg-zinc-950/80 border border-zinc-700 rounded-lg text-white text-xs font-mono focus:border-emerald-500 focus:outline-hidden"
            />
          </div>
          <div>
            <label className="text-xs text-zinc-400 block mb-1">Password</label>
            <input
              type="password"
              value={manualPass}
              onChange={(e) => setManualPass(e.target.value)}
              placeholder="Password"
              className="w-full px-3 py-2 bg-zinc-950/80 border border-zinc-700 rounded-lg text-white text-xs font-mono focus:border-emerald-500 focus:outline-hidden"
            />
          </div>
        </div>
      )}

      {/* Auto-detected Parameter Badges */}
      {parsed && parsed.serverUrl && (
        <div className="mt-3.5 p-3 rounded-xl bg-zinc-950/60 border border-zinc-800/80 flex flex-wrap items-center justify-between gap-3 text-xs">
          <div className="flex flex-wrap items-center gap-3">
            <div className="flex items-center gap-1.5 text-zinc-300">
              <Server className="w-3.5 h-3.5 text-emerald-400" />
              <span className="text-zinc-500">Host:</span>
              <span className="font-mono text-white font-medium">{parsed.host}</span>
            </div>

            {parsed.username && (
              <div className="flex items-center gap-1.5 text-zinc-300">
                <User className="w-3.5 h-3.5 text-blue-400" />
                <span className="text-zinc-500">Utente:</span>
                <span className="font-mono text-white font-medium">{parsed.username}</span>
              </div>
            )}

            {parsed.password && (
              <div className="flex items-center gap-1.5 text-zinc-300">
                <Key className="w-3.5 h-3.5 text-amber-400" />
                <span className="text-zinc-500">Password:</span>
                <span className="font-mono text-zinc-200">
                  {showPassword ? parsed.password : '••••••••'}
                </span>
                <button
                  type="button"
                  onClick={() => setShowPassword(!showPassword)}
                  className="p-0.5 text-zinc-400 hover:text-zinc-200 ml-0.5"
                >
                  {showPassword ? <EyeOff className="w-3 h-3" /> : <Eye className="w-3 h-3" />}
                </button>
              </div>
            )}

            {parsed.isDirectStream && parsed.streamId && (
              <div className="flex items-center gap-1.5 px-2 py-0.5 rounded bg-emerald-950/80 border border-emerald-800/60 text-emerald-400 font-medium">
                {parsed.streamType === 'live' ? (
                  <Tv className="w-3 h-3" />
                ) : (
                  <Film className="w-3 h-3" />
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
                  <span className="uppercase text-[10px] bg-emerald-900/60 px-1 rounded font-mono">
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
            disabled={!hasValidCreds}
            className="flex-1 min-w-[200px] flex items-center justify-center gap-2 px-5 py-2.5 rounded-xl bg-gradient-to-r from-emerald-600 to-teal-600 hover:from-emerald-500 hover:to-teal-500 text-white font-medium text-sm shadow-lg shadow-emerald-950/40 transition disabled:opacity-50 disabled:cursor-not-allowed cursor-pointer"
          >
            <Play className="w-4 h-4 fill-white" />
            Riproduci Subito Questo Video (#{parsed.streamId})
          </button>
        )}

        {/* Explore entire server catalog */}
        <button
          type="button"
          onClick={handleConnectCatalogClick}
          disabled={!hasValidCreds || isLoading}
          className="flex-1 min-w-[220px] flex items-center justify-center gap-2 px-5 py-2.5 rounded-xl bg-zinc-800 hover:bg-zinc-700 text-zinc-100 font-medium text-sm border border-zinc-700 hover:border-zinc-600 shadow-md transition disabled:opacity-50 disabled:cursor-not-allowed cursor-pointer"
        >
          {isLoading ? (
            <div className="w-4 h-4 border-2 border-zinc-400 border-t-white rounded-full animate-spin"></div>
          ) : (
            <Layers className="w-4 h-4 text-emerald-400" />
          )}
          {isLoading ? 'Connessione al server in corso...' : 'Esplora Intero Catalogo del Server'}
        </button>
      </div>

      {/* Quick Help Tip */}
      <div className="mt-3 flex items-center gap-1.5 text-[11px] text-zinc-400">
        <HelpCircle className="w-3.5 h-3.5 text-zinc-500 shrink-0" />
        <span>
          Supporta qualsiasi link Xtream Codes (es. <code className="text-zinc-300">/movie/User/Pass/id.mp4</code>, <code className="text-zinc-300">/series/...</code>, <code className="text-zinc-300">/live/...</code> o playlist <code className="text-zinc-300">get.php</code>). Il server proxy integrato gestisce automaticamente le restrizioni CORS e HTTP/HTTPS.
        </span>
      </div>
    </div>
  );
};
