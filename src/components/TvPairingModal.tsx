import { RemoteImage } from './RemoteImage';
import React, { useState, useEffect, useRef } from 'react';
import QRCode from 'qrcode';
import {
  Tv,
  Smartphone,
  QrCode as QrIcon,
  RefreshCw,
  CheckCircle2,
  AlertCircle,
  Copy,
  Check,
  Send,
  X,
  ShieldCheck,
  KeyRound,
  History,
} from 'lucide-react';
import { storage } from '../services/storage';
import { parseXtreamUrl } from '../utils/parseXtreamUrl';
import { Capacitor } from '@capacitor/core';
import { isTvEnvironment } from '../utils/downloadHelper';
import {
  buildPairingCreateRequest,
  buildPairingStatusRequest,
  buildPairingSubmitRequest,
  buildPairingWebUrl,
  formatShortServiceUrl,
  getPairingRelayUrl,
  PAIRING_RELAY_REQUIRED_MESSAGE,
} from '../services/pairingRequests';
import { isStaticDeploy } from '../utils/deployTarget';

const DEFAULT_PAIRING_SERVER = 'https://login-extream-neyt.onrender.com';

// Native platforms use the separate pairing service. Pointing
// xtream_pairing_server at this same-origin-only instance is unsupported.
function nativePairingServer(): string {
  return (localStorage.getItem('xtream_pairing_server') || DEFAULT_PAIRING_SERVER).replace(/\/+$/, '');
}

function pairingWebUrl(code?: string): string {
  const relayUrl = getPairingRelayUrl();
  return buildPairingWebUrl(code, {
    native: Capacitor.isNativePlatform(),
    nativeServer: nativePairingServer(),
    origin: typeof window !== 'undefined' ? window.location.origin : '',
    relayUrl,
  });
}

interface TvPairingModalProps {
  isOpen: boolean;
  pairingEnabled?: boolean;
  onClose: () => void;
  onConnectAccount: (server: string, username: string, pass: string) => void;
  initialCode?: string | null;
}

export const TvPairingModal: React.FC<TvPairingModalProps> = ({
  isOpen,
  pairingEnabled = false,
  onClose,
  onConnectAccount,
  initialCode = null,
}) => {
  // Mode: 'tv' (displays QR + PIN to receive creds) or 'remote' (sends creds to TV)
  const [mode, setMode] = useState<'tv' | 'remote'>(initialCode ? 'remote' : 'tv');

  // TV receiver state
  const [pinCode, setPinCode] = useState<string>('');
  const [pollToken, setPollToken] = useState<string | null>(null);
  const [qrDataUrl, setQrDataUrl] = useState<string>('');
  const [expiresIn, setExpiresIn] = useState<number>(600);
  const [isWaitingForPhone, setIsWaitingForPhone] = useState<boolean>(true);
  const [receivedSuccess, setReceivedSuccess] = useState<boolean>(false);
  const [pollError, setPollError] = useState<string | null>(null);

  // Smartphone sender state
  const [remotePin, setRemotePin] = useState<string>(initialCode || '');
  const [remoteServer, setRemoteServer] = useState<string>('');
  const [remoteUser, setRemoteUser] = useState<string>('');
  const [remotePass, setRemotePass] = useState<string>('');
  const [remotePastedLink, setRemotePastedLink] = useState<string>('');
  const [isSending, setIsSending] = useState<boolean>(false);
  const [sendSuccessMessage, setSendSuccessMessage] = useState<string | null>(null);
  const [sendErrorMessage, setSendErrorMessage] = useState<string | null>(null);
  const [copiedLink, setCopiedLink] = useState<boolean>(false);

  const pollIntervalRef = useRef<any>(null);
  const timerIntervalRef = useRef<any>(null);
  const expiresAtRef = useRef<number>(0);
  const creationStartedRef = useRef<boolean>(false);
  const savedAccounts = storage.getAccounts();
  const isTv = isTvEnvironment();
  const relayMissing = isStaticDeploy() && !getPairingRelayUrl();

  // If initialCode changes, set remotePin and switch mode
  useEffect(() => {
    if (initialCode) {
      setRemotePin(initialCode);
      setMode('remote');
    }
  }, [initialCode]);

  // Generate PIN and QR Code when opening TV mode or renewing
  const generateNewSession = async () => {
    const relayUrl = getPairingRelayUrl();
    const useRelay = Boolean(relayUrl);
    const native = Capacitor.isNativePlatform();
    if (relayMissing) {
      setPollError(PAIRING_RELAY_REQUIRED_MESSAGE);
      setIsWaitingForPhone(false);
      return;
    }
    if (!useRelay && !native && !pairingEnabled) return;

    try {
      setPollError(null);
      setReceivedSuccess(false);
      setIsWaitingForPhone(true);
      setPinCode('');
      setPollToken(null);
      setQrDataUrl('');

      const request = buildPairingCreateRequest({
        native,
        nativeServer: nativePairingServer(),
        relayUrl,
      });
      const fetchInit: RequestInit = {};
      if (request.method) fetchInit.method = request.method;
      if (request.headers) fetchInit.headers = request.headers;

      const res = await fetch(
        request.url,
        Object.keys(fetchInit).length > 0 ? fetchInit : undefined,
      );
      if (!res.ok) {
        throw new Error('Impossibile creare sessione TV');
      }
      const data = await res.json();
      const code = data.code;
      const lifetime =
        (useRelay || !native) && typeof data.expiresInSeconds === 'number'
          ? data.expiresInSeconds
          : 600;
      setPinCode(code);
      setPollToken(useRelay || !native ? data.pollToken : null);
      setExpiresIn(lifetime);
      expiresAtRef.current = Date.now() + lifetime * 1000;

      // Create QR Code containing direct pairing URL (<VITE_PAIRING_RELAY_URL>/?code=<PIN> when relay is configured)
      const pairUrl = pairingWebUrl(code);
      const qrPixelSize = isTvEnvironment() ? 240 : 200;

      const qrUrl = await QRCode.toDataURL(pairUrl, {
        errorCorrectionLevel: 'M',
        width: qrPixelSize,
        margin: 2,
        color: {
          dark: '#000000',
          light: '#ffffff',
        },
      });
      setQrDataUrl(qrUrl);
    } catch (err: any) {
      console.error('TV Session create error:', err);
      const base = pairingWebUrl();
      setPollError(
        `Server di collegamento non raggiungibile (${base}). Verifica l’indirizzo nella schermata di login e premi Riprova.`
      );
    }
  };

  // Poll for TV session status
  useEffect(() => {
    if (!isOpen || mode !== 'tv' || !pinCode) {
      if (pollIntervalRef.current) clearInterval(pollIntervalRef.current);
      if (timerIntervalRef.current) clearInterval(timerIntervalRef.current);
      return;
    }

    // Countdown timer: on expiry, automatically renew PIN and QR code
    timerIntervalRef.current = setInterval(() => {
      setExpiresIn((prev) => {
        if (prev <= 1) {
          clearInterval(timerIntervalRef.current);
          if (pollIntervalRef.current) clearInterval(pollIntervalRef.current);
          void generateNewSession();
          return 0;
        }
        return prev - 1;
      });
    }, 1000);

    // Polling every 2.5 seconds
    pollIntervalRef.current = setInterval(async () => {
      try {
        const relayUrl = getPairingRelayUrl();
        const useRelay = Boolean(relayUrl);
        const native = Capacitor.isNativePlatform();
        const request = buildPairingStatusRequest(pinCode, {
          native,
          nativeServer: nativePairingServer(),
          pollToken,
          relayUrl,
        });
        const res = await fetch(
          request.url,
          request.headers ? { headers: request.headers } : undefined,
        );
        if (!res.ok) {
          if ((useRelay || !native) && res.status === 404 && Date.now() >= expiresAtRef.current) {
            clearInterval(pollIntervalRef.current);
            clearInterval(timerIntervalRef.current);
            void generateNewSession();
          }
          return;
        }

        const data = await res.json();
        const credentials =
          data.status === 'ready' && data.credentials
            ? data.credentials
            : data.status === 'completed' && data.data
              ? data.data
              : null;

        if (credentials) {
          clearInterval(pollIntervalRef.current);
          clearInterval(timerIntervalRef.current);
          setReceivedSuccess(true);
          setIsWaitingForPhone(false);

          // Auto-connect after 1.5 seconds animation
          setTimeout(() => {
            onConnectAccount(credentials.server, credentials.username, credentials.password);
            onClose();
          }, 1500);
        }
      } catch (e) {
        // Silently retry polling
      }
    }, 2500);

    return () => {
      if (pollIntervalRef.current) clearInterval(pollIntervalRef.current);
      if (timerIntervalRef.current) clearInterval(timerIntervalRef.current);
    };
  }, [isOpen, mode, pinCode, pollToken, onConnectAccount, onClose]);

  // Create at most once per modal opening. The ref also prevents React
  // StrictMode's development effect replay from consuming a second session.
  useEffect(() => {
    if (!isOpen) {
      creationStartedRef.current = false;
      return;
    }
    const relayUrl = getPairingRelayUrl();
    const native = Capacitor.isNativePlatform();
    if (mode !== 'tv' || pinCode || creationStartedRef.current || relayMissing) return;
    if (!relayUrl && !native && !pairingEnabled) return;
    creationStartedRef.current = true;
    void generateNewSession();
  }, [isOpen, mode, pinCode, pairingEnabled, relayMissing]);

  // Handle remote form paste link
  const handlePastedLinkChange = (value: string) => {
    setRemotePastedLink(value);
    const parsed = parseXtreamUrl(value);
    if (parsed && parsed.serverUrl) {
      setRemoteServer(parsed.serverUrl);
      setRemoteUser(parsed.username || '');
      setRemotePass(parsed.password || '');
    }
  };

  // Handle send credentials to TV
  const handleSendToTv = async (e: React.FormEvent) => {
    e.preventDefault();
    setSendErrorMessage(null);
    setSendSuccessMessage(null);

    const code = remotePin.trim();
    const server = remoteServer.trim();
    const username = remoteUser.trim();
    const password = remotePass.trim();

    if (!code || code.length < 6) {
      setSendErrorMessage('Inserisci un codice PIN valido a 6 cifre.');
      return;
    }

    if (!server || !username || !password) {
      setSendErrorMessage('Compila tutti i campi (Server, Username e Password).');
      return;
    }

    try {
      setIsSending(true);
      const submitReq = buildPairingSubmitRequest({
        native: Capacitor.isNativePlatform(),
        nativeServer: nativePairingServer(),
        relayUrl: getPairingRelayUrl(),
      });
      const res = await fetch(submitReq.url, {
        method: submitReq.method || 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ code, server, username, password }),
      });

      const data = await res.json();
      if (!res.ok) {
        throw new Error(data.error || 'Codice PIN non valido o scaduto.');
      }

      setSendSuccessMessage('🎉 Credenziali inviate con successo! La tua TV si sta connettendo ora.');
    } catch (err: any) {
      setSendErrorMessage(err.message || 'Errore durante l\'invio. Controlla il PIN visualizzato sulla TV.');
    } finally {
      setIsSending(false);
    }
  };

  // Select an existing account to send to TV
  const handleSelectExistingAccount = (acc: any) => {
    setRemoteServer(acc.serverUrl);
    setRemoteUser(acc.username);
    setRemotePass(acc.password);
  };

  const copyPairLink = () => {
    if (!pinCode) return;
    navigator.clipboard.writeText(pairingWebUrl(pinCode));
    setCopiedLink(true);
    setTimeout(() => setCopiedLink(false), 2000);
  };

  if (!isOpen) return null;

  const minutes = Math.floor(expiresIn / 60);
  const seconds = expiresIn % 60;
  const formattedTime = `${minutes.toString().padStart(2, '0')}:${seconds.toString().padStart(2, '0')}`;
  const currentServiceUrl = pairingWebUrl();
  const shortServiceUrl = formatShortServiceUrl(currentServiceUrl);
  const qrSizeClasses = isTv ? 'w-52 h-52' : 'w-44 h-44 sm:w-52 sm:h-52';

  return (
    <div className="tv-pairing-modal fixed inset-0 z-50 flex items-center justify-center bg-black/50 safe-area-overlay overflow-y-auto animate-in fade-in duration-200">
      <div className="tv-pairing-panel glass border border-glass-edge rounded-3xl max-w-2xl w-full shadow-2xl overflow-hidden relative my-auto">
        {/* Header Tabs */}
        <div className="flex items-center justify-between border-b border-separator p-4 sm:p-5">
          <div className="flex items-center gap-3">
            <div className="w-10 h-10 rounded-2xl bg-accent/10 border border-accent/30 flex items-center justify-center text-accent-strong">
              {mode === 'tv' ? <Tv className="w-5 h-5" /> : <Smartphone className="w-5 h-5" />}
            </div>
            <div>
              <h3 className="text-lg font-bold text-label flex items-center gap-2">
                {mode === 'tv' ? 'Accedi su Smart TV con Smartphone' : 'Invia Credenziali alla TV'}
              </h3>
              <p className="text-xs text-label-secondary">
                {mode === 'tv'
                  ? 'Collega la TV istantaneamente inquadrando il QR code o inserendo il PIN'
                  : 'Inserisci il PIN mostrato sullo schermo della TV e invia i dati'}
              </p>
            </div>
          </div>

          <div className="flex items-center gap-2">
            <button
              onClick={() => setMode(mode === 'tv' ? 'remote' : 'tv')}
              className="text-xs font-semibold px-3 py-1.5 rounded-xl border border-separator-strong bg-surface-1 hover:bg-surface-2 text-label transition cursor-pointer"
            >
              {mode === 'tv' ? 'Passa a: Invia da Smartphone' : 'Passa a: Schermo TV (Ricevi)'}
            </button>
            <button
              onClick={onClose}
              className="p-2 text-label-secondary hover:text-label rounded-xl hover:bg-surface-1 transition cursor-pointer"
              title="Chiudi"
            >
              <X className="w-5 h-5" />
            </button>
          </div>
        </div>

        {relayMissing && (
          <div role="alert" className="m-5 rounded-xl border border-danger/40 bg-danger/15 p-4 text-sm font-semibold text-label">
            {PAIRING_RELAY_REQUIRED_MESSAGE}
          </div>
        )}

        {/* MODAL CONTENT: TV MODE (SHOW QR & PIN) */}
        {!relayMissing && mode === 'tv' && (
          <div className="p-5 sm:p-7 space-y-6">
            {receivedSuccess ? (
              <div className="p-8 text-center space-y-4 animate-in zoom-in-95 duration-300">
                <div className="w-20 h-20 rounded-full bg-accent/20 border-2 border-accent text-accent-strong mx-auto flex items-center justify-center shadow-lg  animate-bounce">
                  <CheckCircle2 className="w-10 h-10" />
                </div>
                <h4 className="text-2xl font-bold text-label">Credenziali Ricevute con Successo!</h4>
                <p className="text-sm text-label-secondary max-w-md mx-auto">
                  Lo smartphone ha configurato la TV. Le credenziali saranno riportate nella schermata di accesso.
                </p>
                <div className="w-8 h-8 border-3 border-accent border-t-transparent rounded-full animate-spin mx-auto mt-4"></div>
              </div>
            ) : (
              <div className="grid grid-cols-1 md:grid-cols-2 gap-6 items-center">
                {/* Left Side: QR Code + PIN + short service address */}
                <div className="flex flex-col items-center justify-center bg-surface-0/80 p-5 rounded-2xl border border-separator/90 text-center">
                  <div className="bg-white p-3 rounded-2xl shadow-xl shadow-black/50">
                    {qrDataUrl ? (
                      <RemoteImage
                        src={qrDataUrl}
                        alt="QR Code per accoppiamento TV"
                        className={`${qrSizeClasses} object-contain rounded-lg`}
                      />
                    ) : (
                      <div className={`${qrSizeClasses} flex items-center justify-center text-label-secondary`}>
                        <RefreshCw className="w-8 h-8 animate-spin" />
                      </div>
                    )}
                  </div>

                  {pinCode && (
                    <div className="mt-3 space-y-0.5">
                      <div
                        data-testid="qr-pin-display"
                        className="text-2xl sm:text-3xl font-extrabold tracking-widest text-accent-strong"
                      >
                        {pinCode}
                      </div>
                      <div
                        data-testid="qr-short-service-url"
                        className="text-xs text-label-secondary"
                      >
                        {shortServiceUrl}
                      </div>
                    </div>
                  )}

                  <div className="mt-3 flex items-center gap-2 text-xs text-label-secondary">
                    <QrIcon className="w-4 h-4 text-accent-strong" />
                    <span>Inquadra con la fotocamera del telefono</span>
                  </div>

                  <button
                    onClick={copyPairLink}
                    className="mt-2.5 flex items-center gap-1.5 text-xs text-label-secondary hover:text-accent-strong transition"
                  >
                    {copiedLink ? <Check className="w-3.5 h-3.5 text-accent-strong" /> : <Copy className="w-3.5 h-3.5" />}
                    <span>{copiedLink ? 'Link Copiato!' : 'Copia Link di Accoppiamento'}</span>
                  </button>
                </div>

                {/* Right Side: Big PIN & Instructions */}
                <div className="space-y-5">
                  <div className="space-y-1">
                    <span className="text-xs font-semibold uppercase tracking-wider text-accent-strong">
                      Oppure inserisci questo PIN
                    </span>
                    <h4 className="text-sm text-label-secondary">
                      Vai su <strong className="text-label ">{shortServiceUrl || currentServiceUrl}</strong> da smartphone o PC e digita:
                    </h4>
                  </div>

                  {/* Big PIN Display */}
                  <div className="flex items-center justify-center gap-2 sm:gap-2.5">
                    {pinCode ? (
                      pinCode.split('').map((digit, idx) => (
                        <div
                          key={idx}
                          className="w-10 h-14 sm:w-12 sm:h-16 rounded-xl bg-surface-0 border-2 border-accent/60 shadow-lg  flex items-center justify-center text-2xl sm:text-3xl font-extrabold  text-accent-strong"
                        >
                          {digit}
                        </div>
                      ))
                    ) : (
                      <div className="text-sm text-label-secondary flex items-center gap-2">
                        <RefreshCw className="w-4 h-4 animate-spin" /> Generazione PIN...
                      </div>
                    )}
                  </div>

                  {/* Status & Timer */}
                  <div className="flex items-center justify-between text-xs p-3 rounded-xl bg-surface-0/60 border border-separator">
                    <div className="flex items-center gap-2 text-label-secondary">
                      <span className="w-2.5 h-2.5 rounded-full bg-accent animate-pulse"></span>
                      <span>In attesa di ricezione dallo smartphone...</span>
                    </div>
                    <span className=" text-label-secondary">
                      Scade tra: <strong className="text-favorite font-semibold">{formattedTime}</strong>
                    </span>
                  </div>

                  {pollError && (
                    <div className="text-xs text-label flex items-center gap-2 bg-danger/15 p-3 rounded-xl border border-danger/40">
                      <AlertCircle className="w-4 h-4 text-danger shrink-0" />
                      <span>{pollError}</span>
                    </div>
                  )}

                  <div className="flex items-center justify-between pt-2">
                    <button
                      onClick={generateNewSession}
                      className="flex items-center gap-2 px-3 py-2 rounded-xl bg-surface-1 hover:bg-surface-2 text-xs font-medium text-label transition cursor-pointer border border-separator-strong/80"
                    >
                      <RefreshCw className="w-3.5 h-3.5" />
                      Genera Nuovo PIN
                    </button>
                    <span className="text-[11px] text-label-tertiary">
                      Nessun account o login richiesto
                    </span>
                  </div>
                </div>
              </div>
            )}
          </div>
        )}

        {/* MODAL CONTENT: REMOTE SENDER MODE (FROM SMARTPHONE) */}
        {!relayMissing && mode === 'remote' && (
          <div className="p-5 sm:p-7 space-y-5">
            {sendSuccessMessage ? (
              <div className="p-6 text-center space-y-4 bg-accent/15 border border-accent/40 rounded-2xl animate-in zoom-in-95 text-label">
                <CheckCircle2 className="w-12 h-12 text-accent mx-auto" />
                <h4 className="text-xl font-bold text-label">{sendSuccessMessage}</h4>
                <p className="text-xs text-label">
                  Puoi guardare lo schermo della TV: il catalogo dei canali e film si caricherà automaticamente tra pochi istanti!
                </p>
                <button
                  type="button"
                  onClick={() => setSendSuccessMessage(null)}
                  className="px-4 py-2 bg-surface-1 hover:bg-surface-2 text-label text-xs font-semibold rounded-xl transition cursor-pointer"
                >
                  Invia Altre Credenziali o Nuovo PIN
                </button>
              </div>
            ) : (
              <form onSubmit={handleSendToTv} className="space-y-4">
                {/* PIN Code Field */}
                <div>
                  <label className="block text-xs font-semibold text-label-secondary mb-1.5">
                    Codice PIN a 6 Cifre (mostrato sullo schermo della TV)
                  </label>
                  <div className="relative">
                    <KeyRound className="w-4 h-4 absolute left-3.5 top-3.5 text-label-tertiary" />
                    <input
                      type="text"
                      maxLength={6}
                      value={remotePin}
                      onChange={(e) => setRemotePin(e.target.value.replace(/\D/g, ''))}
                      placeholder="Es: 123456"
                      className="w-full pl-10 pr-4 py-2.5 rounded-xl bg-surface-0 border border-separator-strong/80 text-label  text-lg tracking-widest focus:border-accent focus:outline-none placeholder:text-label-tertiary"
                      required
                    />
                  </div>
                </div>

                {/* Quick Select from Saved Accounts on this Device */}
                {savedAccounts.length > 0 && (
                  <div className="p-3 bg-surface-0/60 border border-separator rounded-2xl space-y-2">
                    <div className="flex items-center gap-1.5 text-xs font-medium text-accent-strong">
                      <History className="w-3.5 h-3.5" />
                      <span>Scegli un tuo account già salvato su questo telefono:</span>
                    </div>
                    <div className="flex flex-wrap gap-2">
                      {savedAccounts.map((acc) => (
                        <button
                          key={acc.id}
                          type="button"
                          onClick={() => handleSelectExistingAccount(acc)}
                          className="px-2.5 py-1.5 rounded-lg bg-surface-1 hover:bg-surface-2 text-label text-xs border border-separator-strong transition flex items-center gap-1.5 cursor-pointer"
                        >
                          <span className="w-1.5 h-1.5 rounded-full bg-accent"></span>
                          <span className="font-semibold">{acc.username}</span>
                          <span className="text-[10px] text-label-secondary truncate max-w-[140px]">
                            @{acc.serverUrl.replace(/^https?:\/\//, '')}
                          </span>
                        </button>
                      ))}
                    </div>
                  </div>
                )}

                {/* Paste Xtream Link Helper */}
                <div>
                  <label className="block text-xs font-semibold text-label-secondary mb-1.5">
                    Incolla Link Completo Xtream (Opzionale)
                  </label>
                  <input
                    type="text"
                    value={remotePastedLink}
                    onChange={(e) => handlePastedLinkChange(e.target.value)}
                    placeholder="http://server.com:8080/get.php?username=... o link m3u"
                    className="w-full px-3.5 py-2 rounded-xl bg-surface-0 border border-separator-strong/80 text-xs text-label placeholder:text-label-tertiary focus:border-accent focus:outline-none"
                  />
                </div>

                {/* Manual Server, Username, Password */}
                <div className="space-y-3">
                  <div>
                    <label className="block text-xs text-label-secondary mb-1">
                      URL Server Xtream (es. http://server.com:8080)
                    </label>
                    <input
                      type="text"
                      value={remoteServer}
                      onChange={(e) => setRemoteServer(e.target.value)}
                      placeholder="http://esempio.com:8080"
                      className="w-full px-3.5 py-2 rounded-xl bg-surface-0 border border-separator-strong/80 text-sm text-label focus:border-accent focus:outline-none"
                      required
                    />
                  </div>

                  <div className="grid grid-cols-1 sm:grid-cols-2 gap-3">
                    <div>
                      <label className="block text-xs text-label-secondary mb-1">Username</label>
                      <input
                        type="text"
                        value={remoteUser}
                        onChange={(e) => setRemoteUser(e.target.value)}
                        placeholder="Nome utente"
                        className="w-full px-3.5 py-2 rounded-xl bg-surface-0 border border-separator-strong/80 text-sm text-label focus:border-accent focus:outline-none"
                        required
                      />
                    </div>
                    <div>
                      <label className="block text-xs text-label-secondary mb-1">Password</label>
                      <input
                        type="password"
                        value={remotePass}
                        onChange={(e) => setRemotePass(e.target.value)}
                        placeholder="Password"
                        className="w-full px-3.5 py-2 rounded-xl bg-surface-0 border border-separator-strong/80 text-sm text-label focus:border-accent focus:outline-none"
                        required
                      />
                    </div>
                  </div>
                </div>

                {sendErrorMessage && (
                  <div className="p-3 rounded-xl bg-danger/15 border border-danger/40 text-label text-xs flex items-center gap-2">
                    <AlertCircle className="w-4 h-4 text-danger shrink-0" />
                    <span>{sendErrorMessage}</span>
                  </div>
                )}

                <button
                  type="submit"
                  disabled={isSending}
                  className="w-full py-3.5 rounded-2xl bg-accent hover:bg-accent-strong text-on-accent font-bold text-sm shadow-xl  transition transform active:scale-98 cursor-pointer flex items-center justify-center gap-2 disabled:opacity-50"
                >
                  {isSending ? (
                    <>
                      <RefreshCw className="w-4 h-4 animate-spin" />
                      <span>Invio in corso alla TV...</span>
                    </>
                  ) : (
                    <>
                      <Send className="w-4 h-4" />
                      <span>INVIA CREDENZIALI ALLA TV</span>
                    </>
                  )}
                </button>
              </form>
            )}
          </div>
        )}

        {/* Footer info banner */}
        <div className="px-5 py-3.5 bg-surface-0 border-t border-separator/80 flex items-center justify-between text-[11px] text-label-tertiary">
          <div className="flex items-center gap-1.5">
            <ShieldCheck className="w-4 h-4 text-accent-strong" />
            <span>Connessione protetta temporanea crittografata in memoria</span>
          </div>
          <span>Compatibile con Smart TV, Fire TV, Apple TV e Box Android</span>
        </div>
      </div>
    </div>
  );
};
