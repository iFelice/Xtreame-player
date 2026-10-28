import React, { useState, useEffect } from 'react';
import { Tv, Send, CheckCircle2, AlertCircle, Sparkles, ArrowLeft, Shield, Wifi } from 'lucide-react';
import { parseXtreamUrl } from '../utils/parseXtreamUrl';
import { STATIC_DEPLOY } from '../utils/deployTarget';
import { buildPairingSubmitRequest, getPairingRelayUrl, PAIRING_RELAY_REQUIRED_MESSAGE } from '../services/pairingRequests';

interface RemoteLoginViewProps {
  onBackToApp?: () => void;
  initialCode?: string;
}

export const RemoteLoginView: React.FC<RemoteLoginViewProps> = ({ onBackToApp, initialCode }) => {
  const [code, setCode] = useState(initialCode || '');
  const [server, setServer] = useState('');
  const [username, setUsername] = useState('');
  const [password, setPassword] = useState('');
  const [quickLink, setQuickLink] = useState('');
  const [isSubmitting, setIsSubmitting] = useState(false);
  const [statusMessage, setStatusMessage] = useState<{ type: 'success' | 'error'; text: string } | null>(null);
  const [useQuickLink, setUseQuickLink] = useState(false);
  const relayMissing = STATIC_DEPLOY && !getPairingRelayUrl();

  useEffect(() => {
    try {
      const params = new URLSearchParams(window.location.search);
      const urlCode = params.get('code') || params.get('pin');
      if (urlCode) {
        setCode(urlCode.trim());
      }
    } catch {}
  }, []);

  // When quickLink changes, auto-fill server, username, and password
  const handleQuickLinkChange = (value: string) => {
    setQuickLink(value);
    const parsed = parseXtreamUrl(value);
    if (parsed) {
      if (parsed.serverUrl) setServer(parsed.serverUrl);
      if (parsed.username) setUsername(parsed.username);
      if (parsed.password) setPassword(parsed.password);
    }
  };

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setStatusMessage(null);
    if (relayMissing) {
      setStatusMessage({ type: 'error', text: PAIRING_RELAY_REQUIRED_MESSAGE });
      return;
    }

    const cleanCode = code.trim();
    const cleanServer = server.trim();
    const cleanUser = username.trim();
    const cleanPass = password.trim();

    if (!cleanCode) {
      setStatusMessage({ type: 'error', text: 'Inserisci il codice PIN visualizzato sulla TV.' });
      return;
    }

    if (!cleanServer || !cleanUser || !cleanPass) {
      setStatusMessage({ type: 'error', text: 'Compila tutti i campi (Server, Username e Password).' });
      return;
    }

    setIsSubmitting(true);

    try {
      // Preserve the Express endpoint in normal builds; static hosting uses only the relay.
      const request = STATIC_DEPLOY
        ? buildPairingSubmitRequest({ native: false, nativeServer: '' })
        : { url: '/api/session/submit', method: 'POST' as const };
      const res = await fetch(request.url, {
        method: request.method || 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          code: cleanCode,
          server: cleanServer,
          username: cleanUser,
          password: cleanPass,
          originalLink: quickLink.trim() || undefined,
        }),
      });

      const data = await res.json();

      if (res.ok && (STATIC_DEPLOY ? data.ok : data.success)) {
        setStatusMessage({
          type: 'success',
          text: 'Credenziali inviate con successo alla TV! Lo schermo della TV si aggiornerà automaticamente tra un istante.',
        });
      } else {
        const message = res.status === 409
          ? 'Questo PIN è già stato completato.'
          : res.status === 429
            ? 'Troppi tentativi. Attendi qualche minuto prima di riprovare.'
            : 'Codice PIN errato o sessione scaduta. Verifica il PIN sulla TV.';
        setStatusMessage({ type: 'error', text: message });
      }
    } catch (err: any) {
      setStatusMessage({
        type: 'error',
        text: 'Errore di connessione al server: controlla la tua connessione internet (Wi-Fi o 5G).',
      });
    } finally {
      setIsSubmitting(false);
    }
  };

  return (
    <div className="min-h-screen bg-surface-0 text-label flex flex-col justify-center items-center p-4 sm:p-6 selection:bg-accent/15 selection:text-accent-strong">
      <div className="w-full max-w-md bg-surface-0 border border-separator rounded-3xl p-6 sm:p-8 shadow-2xl relative overflow-hidden">
        {/* Glow ambient background effect */}
        <div className="absolute -top-24 -right-24 w-48 h-48 bg-accent/10 rounded-full blur-3xl pointer-events-none"></div>
        <div className="absolute -bottom-24 -left-24 w-48 h-48 bg-series/10 rounded-full blur-3xl pointer-events-none"></div>

        {/* Top bar with back button if applicable */}
        <div className="flex items-center justify-between mb-6">
          <div className="flex items-center gap-2.5">
            <div className="w-10 h-10 rounded-xl bg-accent/10 border border-accent/30 flex items-center justify-center text-accent-strong shadow-inner">
              <Tv className="w-5 h-5" />
            </div>
            <div>
              <h1 className="text-lg font-bold text-label tracking-tight flex items-center gap-1.5">
                Xtream TV Connect
              </h1>
              <div className="flex items-center gap-1 text-[11px] text-label-secondary">
                <Wifi className="w-3 h-3 text-accent-strong" />
                <span>Funziona da qualsiasi Wi-Fi o rete 5G</span>
              </div>
            </div>
          </div>

          {onBackToApp && (
            <button
              onClick={onBackToApp}
              className="p-2 text-label-secondary hover:text-label hover:bg-surface-1 rounded-xl transition"
              title="Torna all'app"
            >
              <ArrowLeft className="w-5 h-5" />
            </button>
          )}
        </div>

        <p className="text-xs text-label-secondary leading-relaxed mb-5 bg-surface-1/40 p-3 rounded-xl border border-separator">
          Inserisci qui sotto i dati del tuo abbonamento Xtream Codes per trasmetterli istantaneamente alla tua Smart TV senza dover usare il telecomando!
        </p>

        {relayMissing && (
          <div role="alert" className="mb-4 rounded-xl border border-danger/40 bg-danger/15 p-3 text-sm font-semibold text-label">
            {PAIRING_RELAY_REQUIRED_MESSAGE}
          </div>
        )}

        <form onSubmit={handleSubmit} className="space-y-4">
          {/* PIN Input */}
          <div>
            <label className="block text-xs font-semibold text-label-secondary mb-1.5 uppercase tracking-wider">
              Codice PIN TV
            </label>
            <div className="relative">
              <input
                type="text"
                maxLength={6}
                value={code}
                onChange={(e) => setCode(e.target.value.replace(/\D/g, ''))}
                placeholder="Es. 842190"
                className="w-full px-4 py-3 bg-surface-0 border border-separator-strong focus:border-accent rounded-xl text-center text-xl  font-bold tracking-widest text-accent-strong focus:outline-hidden transition shadow-inner"
                required
              />
            </div>
            <p className="text-[11px] text-label-secondary mt-1">
              Inserisci il codice a 6 cifre mostrato sullo schermo della TV
            </p>
          </div>

          {/* Toggle between quick link and fields */}
          <div className="flex items-center justify-between pt-1">
            <span className="text-xs text-label-secondary font-medium">Metodo di inserimento:</span>
            <button
              type="button"
              onClick={() => setUseQuickLink(!useQuickLink)}
              className="text-xs text-accent-strong hover:text-accent-strong underline underline-offset-2 transition cursor-pointer"
            >
              {useQuickLink ? 'Inserisci Campi Separati' : 'Incolla Link Completo'}
            </button>
          </div>

          {useQuickLink ? (
            <div>
              <label className="block text-xs font-semibold text-label-secondary mb-1.5">
                Link Xtream Codes Completo
              </label>
              <textarea
                rows={3}
                value={quickLink}
                onChange={(e) => handleQuickLinkChange(e.target.value)}
                placeholder="http://server.esempio:8080/movie/demo/demo/123.mp4"
                className="w-full px-3.5 py-2.5 bg-surface-0 border border-separator-strong focus:border-accent rounded-xl text-xs text-label placeholder-label-tertiary focus:outline-hidden transition resize-none"
              />
              <p className="text-[11px] text-label-secondary mt-1">
                Il sistema estrarrà automaticamente Host, Username e Password dal link.
              </p>
            </div>
          ) : null}

          {/* Server URL */}
          <div>
            <label className="block text-xs font-semibold text-label-secondary mb-1.5">
              URL Server Xtream
            </label>
            <input
              type="text"
              value={server}
              onChange={(e) => setServer(e.target.value)}
              placeholder="http://server.esempio:8080"
              className="w-full px-3.5 py-2.5 bg-surface-0 border border-separator-strong focus:border-accent rounded-xl text-sm text-label placeholder-label-tertiary focus:outline-hidden transition"
              required
            />
          </div>

          {/* Username */}
          <div>
            <label className="block text-xs font-semibold text-label-secondary mb-1.5">
              Username
            </label>
            <input
              type="text"
              value={username}
              onChange={(e) => setUsername(e.target.value)}
              placeholder="Il tuo username"
              className="w-full px-3.5 py-2.5 bg-surface-0 border border-separator-strong focus:border-accent rounded-xl text-sm text-label placeholder-label-tertiary focus:outline-hidden transition"
              required
            />
          </div>

          {/* Password */}
          <div>
            <label className="block text-xs font-semibold text-label-secondary mb-1.5">
              Password
            </label>
            <input
              type="password"
              value={password}
              onChange={(e) => setPassword(e.target.value)}
              placeholder="La tua password"
              className="w-full px-3.5 py-2.5 bg-surface-0 border border-separator-strong focus:border-accent rounded-xl text-sm text-label placeholder-label-tertiary focus:outline-hidden transition"
              required
            />
          </div>

          {/* Submit Button */}
          <button
            type="submit"
            disabled={isSubmitting}
            className="w-full mt-2 py-3.5 px-4 bg-accent hover:bg-accent-strong active:bg-accent text-on-accent font-bold rounded-xl transition flex items-center justify-center gap-2 shadow-lg  cursor-pointer disabled:opacity-50"
          >
            {isSubmitting ? (
              <span className="flex items-center gap-2 text-sm">
                <span className="w-4 h-4 border-2 border-separator-strong border-t-transparent rounded-full animate-spin"></span>
                Invio alla TV in corso...
              </span>
            ) : (
              <>
                <Send className="w-4 h-4" />
                <span>INVIA ALLA TV</span>
              </>
            )}
          </button>
        </form>

        {/* Status Message */}
        {statusMessage && (
          <div
            className={`mt-4 p-3.5 rounded-xl border flex items-start gap-2.5 text-xs animate-in fade-in ${
              statusMessage.type === 'success'
                ? 'bg-accent/15 border-accent/40 text-label'
                : 'bg-danger/15 border-danger/40 text-label'
            }`}
          >
            {statusMessage.type === 'success' ? (
              <CheckCircle2 className="w-4 h-4 text-accent shrink-0 mt-0.5" />
            ) : (
              <AlertCircle className="w-4 h-4 text-danger shrink-0 mt-0.5" />
            )}
            <div className="leading-relaxed font-medium">{statusMessage.text}</div>
          </div>
        )}

        {/* Security badge */}
        <div className="mt-6 pt-4 border-t border-separator/80 flex items-center justify-center gap-1.5 text-[11px] text-label-tertiary">
          <Shield className="w-3.5 h-3.5 text-accent-strong" />
          <span>Connessione sicura crittografata diretta</span>
        </div>
      </div>
    </div>
  );
};
