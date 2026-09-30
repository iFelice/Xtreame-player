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
  ExternalLink,
  ShieldCheck,
  KeyRound,
  History,
} from 'lucide-react';
import { storage } from '../services/storage';
import { parseXtreamUrl } from '../utils/parseXtreamUrl';

interface TvPairingModalProps {
  isOpen: boolean;
  onClose: () => void;
  onConnectAccount: (server: string, username: string, pass: string) => void;
  initialCode?: string | null;
}

export const TvPairingModal: React.FC<TvPairingModalProps> = ({
  isOpen,
  onClose,
  onConnectAccount,
  initialCode = null,
}) => {
  // Mode: 'tv' (displays QR + PIN to receive creds) or 'remote' (sends creds to TV)
  const [mode, setMode] = useState<'tv' | 'remote'>(initialCode ? 'remote' : 'tv');

  // TV receiver state
  const [pinCode, setPinCode] = useState<string>('');
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
  const savedAccounts = storage.getAccounts();

  // If initialCode changes, set remotePin and switch mode
  useEffect(() => {
    if (initialCode) {
      setRemotePin(initialCode);
      setMode('remote');
    }
  }, [initialCode]);

  // Generate PIN and QR Code when opening TV mode
  const generateNewSession = async () => {
    try {
      setPollError(null);
      setReceivedSuccess(false);
      setIsWaitingForPhone(true);
      setExpiresIn(600);

      const res = await fetch('/api/session/create');
      if (!res.ok) {
        throw new Error('Impossibile creare sessione TV');
      }
      const data = await res.json();
      const code = data.code;
      setPinCode(code);

      // Create QR Code containing direct pairing URL
      const origin = typeof window !== 'undefined' ? window.location.origin : '';
      const pairUrl = `${origin}/?pair=${code}`;

      const qrUrl = await QRCode.toDataURL(pairUrl, {
        width: 320,
        margin: 2,
        color: {
          dark: '#000000',
          light: '#ffffff',
        },
      });
      setQrDataUrl(qrUrl);
    } catch (err: any) {
      console.error('TV Session create error:', err);
      setPollError('Errore durante la creazione del codice TV. Clicca su Riprova.');
    }
  };

  // Poll for TV session status
  useEffect(() => {
    if (!isOpen || mode !== 'tv' || !pinCode) {
      if (pollIntervalRef.current) clearInterval(pollIntervalRef.current);
      if (timerIntervalRef.current) clearInterval(timerIntervalRef.current);
      return;
    }

    // Countdown timer
    timerIntervalRef.current = setInterval(() => {
      setExpiresIn((prev) => {
        if (prev <= 1) {
          clearInterval(timerIntervalRef.current);
          return 0;
        }
        return prev - 1;
      });
    }, 1000);

    // Polling every 2.5 seconds
    pollIntervalRef.current = setInterval(async () => {
      try {
        const res = await fetch(`/api/session/status/${pinCode}`);
        if (!res.ok) return;

        const data = await res.json();
        if (data.status === 'completed' && data.data) {
          clearInterval(pollIntervalRef.current);
          clearInterval(timerIntervalRef.current);
          setReceivedSuccess(true);
          setIsWaitingForPhone(false);

          // Auto-connect after 1.5 seconds animation
          setTimeout(() => {
            onConnectAccount(data.data.server, data.data.username, data.data.password);
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
  }, [isOpen, mode, pinCode, onConnectAccount, onClose]);

  // Initial generation on modal open
  useEffect(() => {
    if (isOpen && mode === 'tv' && !pinCode) {
      generateNewSession();
    }
  }, [isOpen, mode]);

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
      const res = await fetch('/api/session/submit', {
        method: 'POST',
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
    const origin = typeof window !== 'undefined' ? window.location.origin : '';
    navigator.clipboard.writeText(`${origin}/?pair=${pinCode}`);
    setCopiedLink(true);
    setTimeout(() => setCopiedLink(false), 2000);
  };

  if (!isOpen) return null;

  const minutes = Math.floor(expiresIn / 60);
  const seconds = expiresIn % 60;
  const formattedTime = `${minutes.toString().padStart(2, '0')}:${seconds.toString().padStart(2, '0')}`;

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center bg-black/85 backdrop-blur-md p-3 sm:p-4 overflow-y-auto animate-in fade-in duration-200">
      <div className="bg-zinc-900 border border-zinc-700/80 rounded-3xl max-w-2xl w-full shadow-2xl overflow-hidden relative my-auto">
        {/* Header Tabs */}
        <div className="flex items-center justify-between border-b border-zinc-800 p-4 sm:p-5 bg-zinc-950/70">
          <div className="flex items-center gap-3">
            <div className="w-10 h-10 rounded-2xl bg-emerald-500/10 border border-emerald-500/30 flex items-center justify-center text-emerald-400">
              {mode === 'tv' ? <Tv className="w-5 h-5" /> : <Smartphone className="w-5 h-5" />}
            </div>
            <div>
              <h3 className="text-lg font-bold text-white flex items-center gap-2">
                {mode === 'tv' ? 'Accedi su Smart TV con Smartphone' : 'Invia Credenziali alla TV'}
              </h3>
              <p className="text-xs text-zinc-400">
                {mode === 'tv'
                  ? 'Collega la TV istantaneamente inquadrando il QR code o inserendo il PIN'
                  : 'Inserisci il PIN mostrato sullo schermo della TV e invia i dati'}
              </p>
            </div>
          </div>

          <div className="flex items-center gap-2">
            <button
              onClick={() => setMode(mode === 'tv' ? 'remote' : 'tv')}
              className="text-xs font-semibold px-3 py-1.5 rounded-xl border border-zinc-700 bg-zinc-800 hover:bg-zinc-700 text-zinc-200 transition cursor-pointer"
            >
              {mode === 'tv' ? 'Passa a: Invia da Smartphone' : 'Passa a: Schermo TV (Ricevi)'}
            </button>
            <button
              onClick={onClose}
              className="p-2 text-zinc-400 hover:text-white rounded-xl hover:bg-zinc-800 transition cursor-pointer"
              title="Chiudi"
            >
              <X className="w-5 h-5" />
            </button>
          </div>
        </div>

        {/* MODAL CONTENT: TV MODE (SHOW QR & PIN) */}
        {mode === 'tv' && (
          <div className="p-5 sm:p-7 space-y-6">
            {receivedSuccess ? (
              <div className="p-8 text-center space-y-4 animate-in zoom-in-95 duration-300">
                <div className="w-20 h-20 rounded-full bg-emerald-500/20 border-2 border-emerald-500 text-emerald-400 mx-auto flex items-center justify-center shadow-lg shadow-emerald-500/20 animate-bounce">
                  <CheckCircle2 className="w-10 h-10" />
                </div>
                <h4 className="text-2xl font-bold text-white">Credenziali Ricevute con Successo!</h4>
                <p className="text-sm text-zinc-300 max-w-md mx-auto">
                  Lo smartphone ha configurato la TV. Connessione al server Xtream in corso...
                </p>
                <div className="w-8 h-8 border-3 border-emerald-500 border-t-transparent rounded-full animate-spin mx-auto mt-4"></div>
              </div>
            ) : (
              <div className="grid grid-cols-1 md:grid-cols-2 gap-6 items-center">
                {/* Left Side: QR Code */}
                <div className="flex flex-col items-center justify-center bg-zinc-950/80 p-5 rounded-2xl border border-zinc-800/90 text-center">
                  <div className="bg-white p-3 rounded-2xl shadow-xl shadow-black/50">
                    {qrDataUrl ? (
                      <img
                        src={qrDataUrl}
                        alt="QR Code per accoppiamento TV"
                        className="w-48 h-48 sm:w-52 sm:h-52 object-contain rounded-lg"
                      />
                    ) : (
                      <div className="w-48 h-48 sm:w-52 sm:h-52 flex items-center justify-center text-zinc-400">
                        <RefreshCw className="w-8 h-8 animate-spin" />
                      </div>
                    )}
                  </div>

                  <div className="mt-4 flex items-center gap-2 text-xs text-zinc-400">
                    <QrIcon className="w-4 h-4 text-emerald-400" />
                    <span>Inquadra con la fotocamera del telefono</span>
                  </div>

                  <button
                    onClick={copyPairLink}
                    className="mt-3 flex items-center gap-1.5 text-xs text-zinc-400 hover:text-emerald-400 transition"
                  >
                    {copiedLink ? <Check className="w-3.5 h-3.5 text-emerald-400" /> : <Copy className="w-3.5 h-3.5" />}
                    <span>{copiedLink ? 'Link Copiato!' : 'Copia Link di Accoppiamento'}</span>
                  </button>
                </div>

                {/* Right Side: Big PIN & Instructions */}
                <div className="space-y-5">
                  <div className="space-y-1">
                    <span className="text-xs font-semibold uppercase tracking-wider text-emerald-400">
                      Oppure inserisci questo PIN
                    </span>
                    <h4 className="text-sm text-zinc-300">
                      Vai su <strong className="text-white font-mono">{typeof window !== 'undefined' ? window.location.host : 'xtream-player'}</strong> da smartphone o PC e digita:
                    </h4>
                  </div>

                  {/* Big PIN Display */}
                  <div className="flex items-center justify-center gap-2 sm:gap-2.5">
                    {pinCode ? (
                      pinCode.split('').map((digit, idx) => (
                        <div
                          key={idx}
                          className="w-10 h-14 sm:w-12 sm:h-16 rounded-xl bg-zinc-950 border-2 border-emerald-500/60 shadow-lg shadow-emerald-500/10 flex items-center justify-center text-2xl sm:text-3xl font-extrabold font-mono text-emerald-400"
                        >
                          {digit}
                        </div>
                      ))
                    ) : (
                      <div className="text-sm text-zinc-400 flex items-center gap-2">
                        <RefreshCw className="w-4 h-4 animate-spin" /> Generazione PIN...
                      </div>
                    )}
                  </div>

                  {/* Status & Timer */}
                  <div className="flex items-center justify-between text-xs p-3 rounded-xl bg-zinc-950/60 border border-zinc-800">
                    <div className="flex items-center gap-2 text-zinc-300">
                      <span className="w-2.5 h-2.5 rounded-full bg-emerald-500 animate-pulse"></span>
                      <span>In attesa di ricezione dallo smartphone...</span>
                    </div>
                    <span className="font-mono text-zinc-400">
                      Scade tra: <strong className="text-amber-400 font-semibold">{formattedTime}</strong>
                    </span>
                  </div>

                  {pollError && (
                    <div className="text-xs text-rose-400 flex items-center gap-2 bg-rose-950/50 p-3 rounded-xl border border-rose-900/60">
                      <AlertCircle className="w-4 h-4 shrink-0" />
                      <span>{pollError}</span>
                    </div>
                  )}

                  <div className="flex items-center justify-between pt-2">
                    <button
                      onClick={generateNewSession}
                      className="flex items-center gap-2 px-3 py-2 rounded-xl bg-zinc-800 hover:bg-zinc-700 text-xs font-medium text-zinc-200 transition cursor-pointer border border-zinc-700/80"
                    >
                      <RefreshCw className="w-3.5 h-3.5" />
                      Genera Nuovo PIN
                    </button>
                    <span className="text-[11px] text-zinc-500">
                      Nessun account o login richiesto
                    </span>
                  </div>
                </div>
              </div>
            )}
          </div>
        )}

        {/* MODAL CONTENT: REMOTE SENDER MODE (FROM SMARTPHONE) */}
        {mode === 'remote' && (
          <div className="p-5 sm:p-7 space-y-5">
            {sendSuccessMessage ? (
              <div className="p-6 text-center space-y-4 bg-emerald-950/40 border border-emerald-800/80 rounded-2xl animate-in zoom-in-95">
                <CheckCircle2 className="w-12 h-12 text-emerald-400 mx-auto" />
                <h4 className="text-xl font-bold text-white">{sendSuccessMessage}</h4>
                <p className="text-xs text-zinc-300">
                  Puoi guardare lo schermo della TV: il catalogo dei canali e film si caricherà automaticamente tra pochi istanti!
                </p>
                <button
                  type="button"
                  onClick={() => setSendSuccessMessage(null)}
                  className="px-4 py-2 bg-zinc-800 hover:bg-zinc-700 text-white text-xs font-semibold rounded-xl transition cursor-pointer"
                >
                  Invia Altre Credenziali o Nuovo PIN
                </button>
              </div>
            ) : (
              <form onSubmit={handleSendToTv} className="space-y-4">
                {/* PIN Code Field */}
                <div>
                  <label className="block text-xs font-semibold text-zinc-300 mb-1.5">
                    Codice PIN a 6 Cifre (mostrato sullo schermo della TV)
                  </label>
                  <div className="relative">
                    <KeyRound className="w-4 h-4 absolute left-3.5 top-3.5 text-zinc-500" />
                    <input
                      type="text"
                      maxLength={6}
                      value={remotePin}
                      onChange={(e) => setRemotePin(e.target.value.replace(/\D/g, ''))}
                      placeholder="Es: 123456"
                      className="w-full pl-10 pr-4 py-2.5 rounded-xl bg-zinc-950 border border-zinc-700/80 text-white font-mono text-lg tracking-widest focus:border-emerald-500 focus:outline-none placeholder:text-zinc-600"
                      required
                    />
                  </div>
                </div>

                {/* Quick Select from Saved Accounts on this Device */}
                {savedAccounts.length > 0 && (
                  <div className="p-3 bg-zinc-950/60 border border-zinc-800 rounded-2xl space-y-2">
                    <div className="flex items-center gap-1.5 text-xs font-medium text-emerald-400">
                      <History className="w-3.5 h-3.5" />
                      <span>Scegli un tuo account già salvato su questo telefono:</span>
                    </div>
                    <div className="flex flex-wrap gap-2">
                      {savedAccounts.map((acc) => (
                        <button
                          key={acc.id}
                          type="button"
                          onClick={() => handleSelectExistingAccount(acc)}
                          className="px-2.5 py-1.5 rounded-lg bg-zinc-800 hover:bg-zinc-700 text-zinc-200 text-xs border border-zinc-700 transition flex items-center gap-1.5 cursor-pointer"
                        >
                          <span className="w-1.5 h-1.5 rounded-full bg-emerald-400"></span>
                          <span className="font-semibold">{acc.username}</span>
                          <span className="text-[10px] text-zinc-400 truncate max-w-[140px]">
                            @{acc.serverUrl.replace(/^https?:\/\//, '')}
                          </span>
                        </button>
                      ))}
                    </div>
                  </div>
                )}

                {/* Paste Xtream Link Helper */}
                <div>
                  <label className="block text-xs font-semibold text-zinc-300 mb-1.5">
                    Incolla Link Completo Xtream (Opzionale)
                  </label>
                  <input
                    type="text"
                    value={remotePastedLink}
                    onChange={(e) => handlePastedLinkChange(e.target.value)}
                    placeholder="http://server.com:8080/get.php?username=... o link m3u"
                    className="w-full px-3.5 py-2 rounded-xl bg-zinc-950 border border-zinc-700/80 text-xs text-white placeholder:text-zinc-600 focus:border-emerald-500 focus:outline-none"
                  />
                </div>

                {/* Manual Server, Username, Password */}
                <div className="space-y-3">
                  <div>
                    <label className="block text-xs text-zinc-400 mb-1">
                      URL Server Xtream (es. http://server.com:8080)
                    </label>
                    <input
                      type="text"
                      value={remoteServer}
                      onChange={(e) => setRemoteServer(e.target.value)}
                      placeholder="http://esempio.com:8080"
                      className="w-full px-3.5 py-2 rounded-xl bg-zinc-950 border border-zinc-700/80 text-sm text-white focus:border-emerald-500 focus:outline-none"
                      required
                    />
                  </div>

                  <div className="grid grid-cols-1 sm:grid-cols-2 gap-3">
                    <div>
                      <label className="block text-xs text-zinc-400 mb-1">Username</label>
                      <input
                        type="text"
                        value={remoteUser}
                        onChange={(e) => setRemoteUser(e.target.value)}
                        placeholder="Nome utente"
                        className="w-full px-3.5 py-2 rounded-xl bg-zinc-950 border border-zinc-700/80 text-sm text-white focus:border-emerald-500 focus:outline-none"
                        required
                      />
                    </div>
                    <div>
                      <label className="block text-xs text-zinc-400 mb-1">Password</label>
                      <input
                        type="password"
                        value={remotePass}
                        onChange={(e) => setRemotePass(e.target.value)}
                        placeholder="Password"
                        className="w-full px-3.5 py-2 rounded-xl bg-zinc-950 border border-zinc-700/80 text-sm text-white focus:border-emerald-500 focus:outline-none"
                        required
                      />
                    </div>
                  </div>
                </div>

                {sendErrorMessage && (
                  <div className="p-3 rounded-xl bg-rose-950/70 border border-rose-800 text-rose-300 text-xs flex items-center gap-2">
                    <AlertCircle className="w-4 h-4 shrink-0" />
                    <span>{sendErrorMessage}</span>
                  </div>
                )}

                <button
                  type="submit"
                  disabled={isSending}
                  className="w-full py-3.5 rounded-2xl bg-emerald-500 hover:bg-emerald-400 text-zinc-950 font-bold text-sm shadow-xl shadow-emerald-500/20 transition transform active:scale-98 cursor-pointer flex items-center justify-center gap-2 disabled:opacity-50"
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
        <div className="px-5 py-3.5 bg-zinc-950 border-t border-zinc-800/80 flex items-center justify-between text-[11px] text-zinc-500">
          <div className="flex items-center gap-1.5">
            <ShieldCheck className="w-4 h-4 text-emerald-500" />
            <span>Connessione protetta temporanea crittografata in memoria</span>
          </div>
          <span>Compatibile con Smart TV, Fire TV, Apple TV e Box Android</span>
        </div>
      </div>
    </div>
  );
};
