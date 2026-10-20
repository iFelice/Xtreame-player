import React, { useState } from 'react';
import {
  Server,
  User,
  KeyRound,
  Eye,
  EyeOff,
  LogIn,
  Trash2,
  Smartphone,
  QrCode,
} from 'lucide-react';
import { SavedAccount, storage } from '../services/storage';
import { getPairingRelayUrl, resolveRubricaServerUrl } from '../services/pairingRequests';
import { isTvEnvironment } from '../utils/downloadHelper';
import { TvPairingModal } from './TvPairingModal';

interface LoginFormProps {
  onLogin: (serverUrl: string, username: string, password: string) => void;
  isLoading?: boolean;
  pairingEnabled?: boolean;
}

export const LoginForm: React.FC<LoginFormProps> = ({
  onLogin,
  isLoading = false,
  pairingEnabled = false,
}) => {
  const [serverUrl, setServerUrl] = useState<string>('');
  const [username, setUsername] = useState<string>('');
  const [password, setPassword] = useState<string>('');
  const [showPassword, setShowPassword] = useState<boolean>(false);
  const [showPairing, setShowPairing] = useState<boolean>(false);
  const [pairingReceived, setPairingReceived] = useState<boolean>(false);
  const [serverCodeError, setServerCodeError] = useState<string | null>(null);
  const [isResolvingCode, setIsResolvingCode] = useState<boolean>(false);
  const [editingField, setEditingField] = useState<'server' | 'username' | 'password' | null>(null);
  const [savedAccounts, setSavedAccounts] = useState<SavedAccount[]>(() => storage.getAccounts());
  const isTv = isTvEnvironment();

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    const rawServer = serverUrl.trim();
    const cleanUser = username.trim();
    const cleanPass = password.trim();
    if (!rawServer || !cleanUser || !cleanPass) return;

    setServerCodeError(null);

    const relayUrl = getPairingRelayUrl();
    if (relayUrl && !rawServer.includes('://')) {
      setIsResolvingCode(true);
      try {
        const resolved = await resolveRubricaServerUrl(rawServer, relayUrl);
        if (!resolved.ok) {
          setServerCodeError(resolved.message);
          return;
        }
        onLogin(resolved.server, cleanUser, cleanPass);
      } catch {
        setServerCodeError('Codice server non trovato');
      } finally {
        setIsResolvingCode(false);
      }
      return;
    }

    onLogin(rawServer, cleanUser, cleanPass);
  };

  const handleSelectAccount = (acc: SavedAccount) => {
    onLogin(acc.serverUrl, acc.username, acc.password);
  };

  const handleDeleteAccount = (id: string, e: React.MouseEvent) => {
    e.stopPropagation();
    storage.deleteAccount(id);
    setSavedAccounts(storage.getAccounts());
  };

  const activateTvInput = (
    field: 'server' | 'username' | 'password',
    input: HTMLInputElement
  ) => {
    if (!isTv || editingField === field) return;
    setEditingField(field);
    // Wait for React to remove readonly, then explicitly refocus. Android TV
    // opens its keyboard only after the user has pressed OK on the field.
    window.setTimeout(() => {
      input.focus();
      input.click();
    }, 0);
  };

  const busy = isLoading || isResolvingCode;

  return (
    <>
    <div className="tv-login-shell w-full max-w-xl mx-auto py-8 sm:py-14 px-3">
      {/* Main Login Card */}
      <div className="tv-login-card bg-surface-0 border border-separator rounded-3xl p-6 sm:p-9 shadow-2xl">
        {/* Brand Header */}
        <div className="tv-login-brand flex flex-col items-center text-center mb-6 sm:mb-8">
          <img
            src="/brand/icon-192.png"
            alt="FelixVisionPlayer"
            className="w-18 h-18 mb-3"
          />
          <h1 className="text-xl sm:text-3xl font-extrabold text-label tracking-tight whitespace-nowrap">
            FelixVision <span className="text-accent">Player</span>
          </h1>
          <p className="text-sm sm:text-base text-label-secondary mt-2 max-w-md">
            Accedi con le credenziali del tuo server
          </p>
        </div>

        {/* Login Form */}
        <form onSubmit={handleSubmit} className="tv-login-form space-y-4 sm:space-y-5">
          {pairingReceived && (
            <div className="tv-pairing-received rounded-xl border border-accent/40 bg-accent/15 px-3 py-2 text-sm font-bold text-label">
              Credenziali ricevute. Premi “Accedi al Catalogo”.
            </div>
          )}
          {serverCodeError && (
            <div
              role="alert"
              className="rounded-xl border border-danger/40 bg-danger/15 px-3 py-2 text-sm font-bold text-label"
            >
              {serverCodeError}
            </div>
          )}
          {/* Server URL */}
          <div>
            <label className="block text-sm sm:text-base font-bold text-label mb-1.5">
              URL del Server Xtream
            </label>
            <div className="relative">
              <Server className="w-5 h-5 absolute left-3.5 top-1/2 -translate-y-1/2 text-label-tertiary" />
              <input
                type="text"
                value={serverUrl}
                onChange={(e) => {
                  setServerUrl(e.target.value);
                  if (serverCodeError) setServerCodeError(null);
                }}
                readOnly={isTv && editingField !== 'server'}
                inputMode={isTv && editingField !== 'server' ? 'none' : 'url'}
                onClick={(e) => activateTvInput('server', e.currentTarget)}
                onKeyDown={(e) => {
                  if (isTv && e.key === 'Enter' && editingField !== 'server') {
                    e.preventDefault();
                    activateTvInput('server', e.currentTarget);
                  }
                }}
                onBlur={() => isTv && setEditingField(null)}
                placeholder="http://server.iptv.com:8080"
                required
                className="w-full pl-11 pr-4 py-3 sm:py-3.5 bg-surface-0 border border-separator-strong/90 rounded-2xl text-label placeholder-label-tertiary text-sm sm:text-base  focus:outline-hidden focus:border-accent transition shadow-inner"
              />
            </div>
          </div>

          {/* Username */}
          <div>
            <label className="block text-sm sm:text-base font-bold text-label mb-1.5">
              Username / Utente
            </label>
            <div className="relative">
              <User className="w-5 h-5 absolute left-3.5 top-1/2 -translate-y-1/2 text-label-tertiary" />
              <input
                type="text"
                value={username}
                onChange={(e) => setUsername(e.target.value)}
                readOnly={isTv && editingField !== 'username'}
                inputMode={isTv && editingField !== 'username' ? 'none' : 'text'}
                onClick={(e) => activateTvInput('username', e.currentTarget)}
                onKeyDown={(e) => {
                  if (isTv && e.key === 'Enter' && editingField !== 'username') {
                    e.preventDefault();
                    activateTvInput('username', e.currentTarget);
                  }
                }}
                onBlur={() => isTv && setEditingField(null)}
                placeholder="Nome utente"
                required
                className="w-full pl-11 pr-4 py-3 sm:py-3.5 bg-surface-0 border border-separator-strong/90 rounded-2xl text-label placeholder-label-tertiary text-sm sm:text-base  focus:outline-hidden focus:border-accent transition shadow-inner"
              />
            </div>
          </div>

          {/* Password */}
          <div>
            <label className="block text-sm sm:text-base font-bold text-label mb-1.5">
              Password
            </label>
            <div className="relative">
              <KeyRound className="w-5 h-5 absolute left-3.5 top-1/2 -translate-y-1/2 text-label-tertiary" />
              <input
                type={showPassword ? 'text' : 'password'}
                value={password}
                onChange={(e) => setPassword(e.target.value)}
                readOnly={isTv && editingField !== 'password'}
                inputMode={isTv && editingField !== 'password' ? 'none' : 'text'}
                onClick={(e) => activateTvInput('password', e.currentTarget)}
                onKeyDown={(e) => {
                  if (isTv && e.key === 'Enter' && editingField !== 'password') {
                    e.preventDefault();
                    activateTvInput('password', e.currentTarget);
                  }
                }}
                onBlur={() => isTv && setEditingField(null)}
                placeholder="Password"
                required
                className="w-full pl-11 pr-12 py-3 sm:py-3.5 bg-surface-0 border border-separator-strong/90 rounded-2xl text-label placeholder-label-tertiary text-sm sm:text-base  focus:outline-hidden focus:border-accent transition shadow-inner"
              />
              {!isTv && (
                <button
                  type="button"
                  onClick={() => setShowPassword(!showPassword)}
                  className="absolute right-3.5 top-1/2 -translate-y-1/2 text-label-tertiary hover:text-label-secondary cursor-pointer p-1.5"
                  title={showPassword ? 'Nascondi password' : 'Mostra password'}
                >
                  {showPassword ? <EyeOff className="w-5 h-5" /> : <Eye className="w-5 h-5" />}
                </button>
              )}
            </div>
          </div>

          {/* Login Submit Button */}
          <div className="pt-2 sm:pt-3">
            <button
              id="tv-login-submit"
              type="submit"
              disabled={busy}
              className="w-full py-4 bg-accent hover:bg-accent-strong text-on-accent font-extrabold rounded-2xl text-base sm:text-lg transition flex items-center justify-center gap-2.5 shadow-xl  cursor-pointer disabled:opacity-60"
            >
              {busy ? (
                <>
                  <div className="w-5 h-5 border-2 border-white/30 border-t-white rounded-full animate-spin"></div>
                  <span>Connessione in corso...</span>
                </>
              ) : (
                <>
                  <LogIn className="w-5 h-5" />
                  <span>Accedi al Catalogo</span>
                </>
              )}
            </button>
          </div>
        </form>

        <div className="tv-login-side">
        {isTv && (
          <div className="tv-pairing-entry mt-7 pt-6 border-t border-separator">
            <div className="flex items-center gap-3 mb-4">
              <div className="h-px bg-surface-1 flex-1" />
              <span className="text-sm font-bold text-label-secondary">OPPURE</span>
              <div className="h-px bg-surface-1 flex-1" />
            </div>
            <button
              type="button"
              onClick={() => setShowPairing(true)}
              className="w-full min-h-16 px-6 py-4 rounded-2xl bg-surface-0 border-2 border-accent text-label flex items-center justify-center gap-4 font-extrabold text-lg transition"
            >
              <QrCode className="w-7 h-7 text-accent-strong" />
              <span>Configura con QR Code e PIN</span>
              <Smartphone className="w-7 h-7 text-series" />
            </button>
            <p className="text-sm text-label-tertiary text-center mt-3">
              Inquadra il codice con lo smartphone per inviare le credenziali alla TV.
            </p>
          </div>
        )}

        {/* Saved Accounts section */}
        {savedAccounts.length > 0 && (
          <div className="mt-8 pt-6 border-t border-separator space-y-3">
            <h3 className="text-sm sm:text-base font-bold text-label-secondary">
              Oppure accedi con un account salvato ({savedAccounts.length}):
            </h3>
            <div className="space-y-2.5 max-h-60 overflow-y-auto pr-1">
              {savedAccounts.map((acc) => (
                <div
                  key={acc.id}
                  role="button"
                  tabIndex={0}
                  onClick={() => handleSelectAccount(acc)}
                  onKeyDown={(event) => {
                    if (event.key === 'Enter') handleSelectAccount(acc);
                  }}
                  className="p-3.5 rounded-2xl bg-surface-0 hover:bg-surface-1 border border-separator hover:border-accent/60 flex items-center justify-between transition cursor-pointer group shadow-sm"
                >
                  <div className="min-w-0 flex-1">
                    <p className="text-sm sm:text-base font-bold text-label group-hover:text-accent-strong transition truncate">
                      {acc.name}
                    </p>
                    <p className="text-xs sm:text-sm text-label-tertiary  truncate mt-0.5">
                      {acc.username} @ {acc.serverUrl.replace(/^https?:\/\//, '')}
                    </p>
                  </div>
                  <div className="flex items-center gap-2.5 shrink-0 ml-2">
                    <span className="text-xs sm:text-sm font-bold text-accent-strong opacity-0 group-hover:opacity-100 transition hidden sm:inline">
                      Accedi &rarr;
                    </span>
                    <button
                      type="button"
                      onClick={(e) => handleDeleteAccount(acc.id, e)}
                      className="p-2 text-label-tertiary hover:text-danger rounded-xl hover:bg-surface-1 transition cursor-pointer"
                      title="Rimuovi account salvato"
                    >
                      <Trash2 className="w-4 h-4" />
                    </button>
                  </div>
                </div>
              ))}
            </div>
          </div>
        )}
        </div>
      </div>
    </div>
    <TvPairingModal
      isOpen={showPairing}
      pairingEnabled={pairingEnabled}
      onClose={() => setShowPairing(false)}
      onConnectAccount={(server, user, pass) => {
        // Match the original Android TV flow: receive and fill the fields,
        // then let the user confirm with the focused Login button.
        setServerUrl(server);
        setUsername(user);
        setPassword(pass);
        setPairingReceived(true);
        setShowPairing(false);
        window.setTimeout(() => document.getElementById('tv-login-submit')?.focus(), 200);
      }}
    />
    </>
  );
};
