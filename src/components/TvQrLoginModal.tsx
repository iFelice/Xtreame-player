import React, { useState, useEffect, useRef } from 'react';
import QRCode from 'qrcode';
import { Tv, QrCode, Smartphone, X, RefreshCw, CheckCircle2, ShieldCheck, Wifi, ExternalLink } from 'lucide-react';

interface TvQrLoginModalProps {
  isOpen: boolean;
  onClose: () => void;
  onSuccess: (credentials: { server: string; username: string; password: string; originalLink?: string }) => void;
}

export const TvQrLoginModal: React.FC<TvQrLoginModalProps> = ({ isOpen, onClose, onSuccess }) => {
  const [pinCode, setPinCode] = useState<string | null>(null);
  const [qrDataUrl, setQrDataUrl] = useState<string | null>(null);
  const [remoteUrl, setRemoteUrl] = useState<string>('');
  const [isLoading, setIsLoading] = useState<boolean>(true);
  const [status, setStatus] = useState<'waiting' | 'completed' | 'expired' | 'error'>('waiting');
  const [secondsRemaining, setSecondsRemaining] = useState<number>(600); // 10 minutes
  const pollIntervalRef = useRef<any>(null);
  const countdownIntervalRef = useRef<any>(null);

  // Generate new PIN and QR code session
  const initSession = async () => {
    setIsLoading(true);
    setStatus('waiting');
    setSecondsRemaining(600);

    try {
      const res = await fetch('/api/session/create');
      if (!res.ok) throw new Error('Impossibile creare sessione');
      const data = await res.json();
      const code = data.code;
      setPinCode(code);

      // Generate the URL the user will open on their phone
      const origin = window.location.origin;
      const targetUrl = `${origin}/remote-login?code=${code}`;
      setRemoteUrl(targetUrl);

      // Generate QR Code image
      const dataUrl = await QRCode.toDataURL(targetUrl, {
        width: 320,
        margin: 2,
        color: {
          dark: '#09090b', // zinc-950
          light: '#ffffff',
        },
      });
      setQrDataUrl(dataUrl);
      setIsLoading(false);
    } catch (err) {
      console.error('Error initiating TV session:', err);
      setStatus('error');
      setIsLoading(false);
    }
  };

  useEffect(() => {
    if (!isOpen) {
      if (pollIntervalRef.current) clearInterval(pollIntervalRef.current);
      if (countdownIntervalRef.current) clearInterval(countdownIntervalRef.current);
      return;
    }

    initSession();

    return () => {
      if (pollIntervalRef.current) clearInterval(pollIntervalRef.current);
      if (countdownIntervalRef.current) clearInterval(countdownIntervalRef.current);
    };
  }, [isOpen]);

  // Polling for session status
  useEffect(() => {
    if (!isOpen || !pinCode || status !== 'waiting') return;

    pollIntervalRef.current = setInterval(async () => {
      try {
        const res = await fetch(`/api/session/status/${pinCode}`);
        if (!res.ok) return;
        const session = await res.json();

        if (session.status === 'completed' && session.data) {
          setStatus('completed');
          if (pollIntervalRef.current) clearInterval(pollIntervalRef.current);

          // Give user a brief visual feedback before transitioning
          setTimeout(() => {
            onSuccess(session.data);
            onClose();
          }, 1200);
        }
      } catch (e) {
        // Polling silent retry
      }
    }, 2000);

    // 10 minute countdown timer
    countdownIntervalRef.current = setInterval(() => {
      setSecondsRemaining((prev) => {
        if (prev <= 1) {
          if (pollIntervalRef.current) clearInterval(pollIntervalRef.current);
          setStatus('expired');
          return 0;
        }
        return prev - 1;
      });
    }, 1000);

    return () => {
      if (pollIntervalRef.current) clearInterval(pollIntervalRef.current);
      if (countdownIntervalRef.current) clearInterval(countdownIntervalRef.current);
    };
  }, [isOpen, pinCode, status, onSuccess, onClose]);

  if (!isOpen) return null;

  const minutes = Math.floor(secondsRemaining / 60);
  const seconds = secondsRemaining % 60;
  const timeFormatted = `${minutes}:${seconds < 10 ? '0' : ''}${seconds}`;

  return (
    <div className="fixed inset-0 z-50 bg-black/85 backdrop-blur-md flex items-center justify-center p-4 animate-in fade-in duration-200">
      <div className="w-full max-w-2xl bg-zinc-900 border border-zinc-700/80 rounded-3xl shadow-2xl p-6 sm:p-8 relative overflow-hidden text-zinc-100 flex flex-col items-center">
        {/* Ambient background glows */}
        <div className="absolute -top-20 -left-20 w-44 h-44 bg-emerald-500/10 rounded-full blur-3xl pointer-events-none"></div>
        <div className="absolute -bottom-20 -right-20 w-44 h-44 bg-teal-500/10 rounded-full blur-3xl pointer-events-none"></div>

        {/* Close button */}
        <button
          onClick={onClose}
          className="absolute top-5 right-5 p-2 rounded-full bg-zinc-800/80 hover:bg-zinc-700 text-zinc-400 hover:text-white transition cursor-pointer"
          title="Chiudi"
        >
          <X className="w-5 h-5" />
        </button>

        {/* Header */}
        <div className="text-center space-y-2 mb-6 max-w-lg">
          <div className="inline-flex items-center gap-2 px-3.5 py-1 rounded-full bg-emerald-500/10 border border-emerald-500/30 text-emerald-400 text-xs font-semibold tracking-wide">
            <Tv className="w-4 h-4" />
            <span>ACCESSO RAPIDO SMART TV & FIRE STICK</span>
          </div>
          <h2 className="text-2xl sm:text-3xl font-extrabold text-white tracking-tight">
            Accedi dal tuo Smartphone
          </h2>
          <p className="text-xs sm:text-sm text-zinc-400 leading-relaxed">
            Non digitare password lunghe con il telecomando della TV! Inquadra il QR code con il tuo telefono (o apri il link) e inserisci i dati comodamente da cellulare.
          </p>
        </div>

        {/* Loading state */}
        {isLoading && (
          <div className="py-16 flex flex-col items-center gap-3">
            <div className="w-10 h-10 border-3 border-emerald-500 border-t-transparent rounded-full animate-spin"></div>
            <p className="text-xs text-zinc-400">Generazione codice PIN e QR Code in corso...</p>
          </div>
        )}

        {/* Main Content Area */}
        {!isLoading && status !== 'error' && (
          <div className="w-full grid grid-cols-1 md:grid-cols-2 gap-6 items-center">
            {/* Left: QR Code Box */}
            <div className="flex flex-col items-center justify-center p-4 bg-zinc-950/80 rounded-2xl border border-zinc-800">
              <div className="p-3 bg-white rounded-2xl shadow-xl flex items-center justify-center">
                {qrDataUrl ? (
                  <img
                    src={qrDataUrl}
                    alt="QR Code per il login"
                    className="w-48 h-48 sm:w-52 sm:h-52 object-contain"
                  />
                ) : (
                  <div className="w-48 h-48 flex items-center justify-center text-zinc-400">
                    <QrCode className="w-12 h-12 animate-pulse text-zinc-600" />
                  </div>
                )}
              </div>

              <div className="flex items-center gap-1.5 mt-3 text-xs text-zinc-400">
                <Smartphone className="w-4 h-4 text-emerald-400" />
                <span>Inquadra con la fotocamera del telefono</span>
              </div>
            </div>

            {/* Right: Instructions & PIN Display */}
            <div className="space-y-4 flex flex-col justify-center">
              <div>
                <span className="text-[11px] uppercase tracking-wider text-zinc-400 font-semibold">
                  Oppure digita questo PIN su:
                </span>
                <div className="text-xs font-mono text-emerald-400 truncate bg-zinc-950 px-3 py-1.5 rounded-lg border border-zinc-800 mt-1 flex items-center justify-between">
                  <span className="truncate">{remoteUrl.replace(/^https?:\/\//, '')}</span>
                  <a
                    href={remoteUrl}
                    target="_blank"
                    rel="noreferrer"
                    className="text-zinc-500 hover:text-emerald-300 ml-1"
                    title="Apri in nuova scheda"
                  >
                    <ExternalLink className="w-3.5 h-3.5" />
                  </a>
                </div>
              </div>

              {/* Large PIN Blocks */}
              <div className="bg-zinc-950/90 border border-zinc-800 rounded-2xl p-3.5 text-center">
                <div className="text-[10px] text-zinc-400 font-semibold uppercase tracking-widest mb-1.5">
                  Codice PIN di Accesso TV
                </div>
                <div className="flex items-center justify-center gap-1.5 sm:gap-2">
                  {pinCode?.split('').map((char, index) => (
                    <span
                      key={index}
                      className="w-9 h-11 sm:w-10 sm:h-12 bg-zinc-900 border border-emerald-500/40 rounded-xl text-xl sm:text-2xl font-bold font-mono text-emerald-400 flex items-center justify-center shadow-inner"
                    >
                      {char}
                    </span>
                  ))}
                </div>
                <div className="text-[11px] text-zinc-400 mt-2 flex items-center justify-center gap-1">
                  <span>Scade tra:</span>
                  <span className="font-mono text-zinc-200 font-medium">{timeFormatted}</span>
                </div>
              </div>

              {/* Status indicator */}
              {status === 'waiting' && (
                <div className="flex items-center gap-2.5 p-3 rounded-xl bg-emerald-950/40 border border-emerald-800/50 text-emerald-300 text-xs">
                  <div className="w-2.5 h-2.5 rounded-full bg-emerald-400 animate-ping shrink-0"></div>
                  <span className="font-medium leading-tight">
                    In attesa che tu invii i dati dal tuo smartphone...
                  </span>
                </div>
              )}

              {status === 'completed' && (
                <div className="flex items-center gap-2.5 p-3.5 rounded-xl bg-emerald-500 text-zinc-950 text-xs font-bold animate-in zoom-in-95">
                  <CheckCircle2 className="w-5 h-5 shrink-0" />
                  <span>Credenziali ricevute! Accesso alla TV in corso...</span>
                </div>
              )}

              {status === 'expired' && (
                <div className="space-y-2">
                  <div className="p-3 rounded-xl bg-rose-950/60 border border-rose-800/80 text-rose-300 text-xs">
                    Questo codice PIN è scaduto per motivi di sicurezza.
                  </div>
                  <button
                    onClick={initSession}
                    className="w-full py-2.5 px-4 rounded-xl bg-zinc-800 hover:bg-zinc-700 text-white text-xs font-semibold flex items-center justify-center gap-2 transition"
                  >
                    <RefreshCw className="w-3.5 h-3.5" />
                    <span>Genera Nuovo Codice PIN</span>
                  </button>
                </div>
              )}
            </div>
          </div>
        )}

        {/* Error state */}
        {status === 'error' && (
          <div className="py-8 text-center space-y-3">
            <p className="text-sm text-rose-400">Impossibile generare la sessione PIN per la TV.</p>
            <button
              onClick={initSession}
              className="px-4 py-2 bg-emerald-600 hover:bg-emerald-500 text-white rounded-xl text-xs font-semibold transition"
            >
              Riprova
            </button>
          </div>
        )}

        {/* Footer badges */}
        <div className="w-full mt-6 pt-4 border-t border-zinc-800/80 flex flex-wrap items-center justify-between gap-3 text-[11px] text-zinc-400">
          <div className="flex items-center gap-1.5">
            <Wifi className="w-3.5 h-3.5 text-emerald-400" />
            <span>Funziona anche se il telefono è su rete dati 5G o altro Wi-Fi</span>
          </div>
          <div className="flex items-center gap-1.5">
            <ShieldCheck className="w-3.5 h-3.5 text-emerald-400" />
            <span>Credenziali salvate solo localmente sulla TV</span>
          </div>
        </div>
      </div>
    </div>
  );
};
