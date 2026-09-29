import React, { useState, useEffect, useRef } from 'react';
import {
  X,
  QrCode,
  Link,
  Copy,
  Check,
  Server,
  User,
  KeyRound,
  Eye,
  EyeOff,
  Smartphone,
  Laptop,
  CheckCircle2,
  Trash2,
  ExternalLink,
} from 'lucide-react';
import QRCode from 'qrcode';
import { SavedAccount, storage } from '../services/storage';

interface SettingsSyncModalProps {
  isOpen: boolean;
  onClose: () => void;
  currentServer: string;
  currentUsername: string;
  currentPassword?: string;
  onSaveAndConnect: (serverUrl: string, user: string, pass: string) => void;
  savedAccounts: SavedAccount[];
  onSelectAccount: (acc: SavedAccount) => void;
  onDeleteAccount?: (id: string) => void;
}

export const SettingsSyncModal: React.FC<SettingsSyncModalProps> = ({
  isOpen,
  onClose,
  currentServer,
  currentUsername,
  currentPassword = '',
  onSaveAndConnect,
  savedAccounts,
  onSelectAccount,
  onDeleteAccount,
}) => {
  const [serverUrl, setServerUrl] = useState<string>(currentServer || '');
  const [username, setUsername] = useState<string>(currentUsername || '');
  const [password, setPassword] = useState<string>(currentPassword || '');
  const [showPassword, setShowPassword] = useState<boolean>(false);
  const [copiedLink, setCopiedLink] = useState<boolean>(false);
  const [qrDataUrl, setQrDataUrl] = useState<string>('');
  const [activeTab, setActiveTab] = useState<'settings' | 'qr'>('settings');

  const canvasRef = useRef<HTMLCanvasElement | null>(null);

  // Sync inputs if props change
  useEffect(() => {
    setServerUrl(currentServer || '');
    setUsername(currentUsername || '');
    setPassword(currentPassword || '');
  }, [currentServer, currentUsername, currentPassword, isOpen]);

  // Generate sync link
  const generateSyncUrl = () => {
    if (!serverUrl) return window.location.origin;
    const origin = window.location.origin + window.location.pathname;
    const params = new URLSearchParams();
    if (serverUrl) params.set('server', serverUrl);
    if (username) params.set('user', username);
    if (password) params.set('pass', password);
    return `${origin}?${params.toString()}`;
  };

  const syncUrl = generateSyncUrl();

  // Generate QR Code image when syncUrl changes or QR tab opened
  useEffect(() => {
    if (!syncUrl) return;
    QRCode.toDataURL(syncUrl, {
      width: 320,
      margin: 2,
      color: {
        dark: '#000000',
        light: '#ffffff',
      },
    })
      .then((url) => setQrDataUrl(url))
      .catch((err) => console.error('Errore generazione QR:', err));
  }, [syncUrl]);

  if (!isOpen) return null;

  const handleCopyLink = async () => {
    try {
      await navigator.clipboard.writeText(syncUrl);
      setCopiedLink(true);
      setTimeout(() => setCopiedLink(false), 2500);
    } catch {
      // Fallback
      setCopiedLink(true);
      setTimeout(() => setCopiedLink(false), 2500);
    }
  };

  const handleFormSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    if (!serverUrl.trim() || !username.trim() || !password.trim()) return;
    onSaveAndConnect(serverUrl.trim(), username.trim(), password.trim());
    onClose();
  };

  return (
    <div className="fixed inset-0 z-50 bg-black/85 backdrop-blur-xs flex items-center justify-center p-3 sm:p-5 overflow-y-auto animate-in fade-in duration-200">
      <div className="relative w-full max-w-xl bg-zinc-950 border border-zinc-800 rounded-3xl overflow-hidden shadow-2xl my-auto">
        {/* Header */}
        <div className="px-5 py-4 bg-gradient-to-r from-emerald-950/70 via-zinc-900 to-zinc-900 border-b border-zinc-800 flex items-center justify-between gap-3">
          <div className="flex items-center gap-2.5">
            <div className="w-9 h-9 rounded-xl bg-emerald-500/20 text-emerald-400 border border-emerald-500/30 flex items-center justify-center shrink-0">
              <QrCode className="w-5 h-5" />
            </div>
            <div>
              <h2 className="text-sm sm:text-base font-bold text-white flex items-center gap-2">
                Impostazioni & Accesso Rapido
              </h2>
              <p className="text-[11px] text-zinc-400">
                Modifica credenziali o sincronizza tra telefono e PC con QR / Link
              </p>
            </div>
          </div>

          <button
            onClick={onClose}
            className="p-1.5 text-zinc-400 hover:text-white rounded-lg hover:bg-zinc-800 transition cursor-pointer"
            title="Chiudi"
          >
            <X className="w-5 h-5" />
          </button>
        </div>

        {/* Tab switch */}
        <div className="flex border-b border-zinc-800 bg-zinc-900/50 p-1.5 gap-1.5">
          <button
            onClick={() => setActiveTab('settings')}
            className={`flex-1 py-2 text-xs font-semibold rounded-xl flex items-center justify-center gap-2 transition cursor-pointer ${
              activeTab === 'settings'
                ? 'bg-zinc-800 text-white shadow-xs'
                : 'text-zinc-400 hover:text-zinc-200 hover:bg-zinc-850'
            }`}
          >
            <Server className="w-3.5 h-3.5 text-emerald-400" />
            <span>Modifica Server / User / Password</span>
          </button>
          <button
            onClick={() => setActiveTab('qr')}
            className={`flex-1 py-2 text-xs font-semibold rounded-xl flex items-center justify-center gap-2 transition cursor-pointer ${
              activeTab === 'qr'
                ? 'bg-zinc-800 text-white shadow-xs'
                : 'text-zinc-400 hover:text-zinc-200 hover:bg-zinc-850'
            }`}
          >
            <QrCode className="w-3.5 h-3.5 text-emerald-400" />
            <span>QR Code & Link Diretto</span>
          </button>
        </div>

        {/* Modal Body */}
        <div className="p-4 sm:p-6 max-h-[75vh] overflow-y-auto space-y-5">
          {activeTab === 'settings' ? (
            <form onSubmit={handleFormSubmit} className="space-y-4">
              <div className="bg-emerald-950/20 border border-emerald-800/40 rounded-2xl p-3.5 text-xs text-emerald-200/90 flex items-start gap-2.5">
                <Laptop className="w-4 h-4 text-emerald-400 shrink-0 mt-0.5" />
                <span>
                  Puoi scrivere o incollare qui le credenziali direttamente dal tuo dispositivo.
                  Cliccando su <strong>Salva e Connetti</strong> verranno sincronizzate subito.
                </span>
              </div>

              {/* Server URL Input */}
              <div>
                <label className="block text-xs font-medium text-zinc-300 mb-1.5">
                  URL del Server Xtream
                </label>
                <div className="relative">
                  <Server className="w-4 h-4 absolute left-3 top-1/2 -translate-y-1/2 text-zinc-500" />
                  <input
                    type="url"
                    value={serverUrl}
                    onChange={(e) => setServerUrl(e.target.value)}
                    placeholder="http://server.example.com:8080"
                    required
                    className="w-full pl-9 pr-4 py-2.5 bg-zinc-900 border border-zinc-700/80 rounded-xl text-white placeholder-zinc-500 text-xs sm:text-sm font-mono focus:outline-hidden focus:border-emerald-500"
                  />
                </div>
              </div>

              {/* Username Input */}
              <div>
                <label className="block text-xs font-medium text-zinc-300 mb-1.5">
                  Username / Utente
                </label>
                <div className="relative">
                  <User className="w-4 h-4 absolute left-3 top-1/2 -translate-y-1/2 text-zinc-500" />
                  <input
                    type="text"
                    value={username}
                    onChange={(e) => setUsername(e.target.value)}
                    placeholder="Nome utente"
                    required
                    className="w-full pl-9 pr-4 py-2.5 bg-zinc-900 border border-zinc-700/80 rounded-xl text-white placeholder-zinc-500 text-xs sm:text-sm font-mono focus:outline-hidden focus:border-emerald-500"
                  />
                </div>
              </div>

              {/* Password Input */}
              <div>
                <label className="block text-xs font-medium text-zinc-300 mb-1.5">
                  Password
                </label>
                <div className="relative">
                  <KeyRound className="w-4 h-4 absolute left-3 top-1/2 -translate-y-1/2 text-zinc-500" />
                  <input
                    type={showPassword ? 'text' : 'password'}
                    value={password}
                    onChange={(e) => setPassword(e.target.value)}
                    placeholder="Password dell'account"
                    required
                    className="w-full pl-9 pr-10 py-2.5 bg-zinc-900 border border-zinc-700/80 rounded-xl text-white placeholder-zinc-500 text-xs sm:text-sm font-mono focus:outline-hidden focus:border-emerald-500"
                  />
                  <button
                    type="button"
                    onClick={() => setShowPassword(!showPassword)}
                    className="absolute right-3 top-1/2 -translate-y-1/2 text-zinc-500 hover:text-zinc-300 cursor-pointer"
                    title={showPassword ? 'Nascondi' : 'Mostra'}
                  >
                    {showPassword ? <EyeOff className="w-4 h-4" /> : <Eye className="w-4 h-4" />}
                  </button>
                </div>
              </div>

              {/* Action buttons */}
              <div className="pt-2 flex flex-col sm:flex-row gap-2.5">
                <button
                  type="submit"
                  className="flex-1 py-2.5 px-4 rounded-xl bg-gradient-to-r from-emerald-600 to-teal-600 hover:from-emerald-500 hover:to-teal-500 text-white text-xs sm:text-sm font-bold shadow-lg shadow-emerald-950/50 flex items-center justify-center gap-2 cursor-pointer transition"
                >
                  <CheckCircle2 className="w-4 h-4" />
                  Salva e Connetti
                </button>
                <button
                  type="button"
                  onClick={() => setActiveTab('qr')}
                  className="py-2.5 px-4 rounded-xl bg-zinc-900 hover:bg-zinc-800 border border-zinc-800 text-zinc-300 hover:text-white text-xs sm:text-sm font-semibold flex items-center justify-center gap-2 cursor-pointer transition"
                >
                  <QrCode className="w-4 h-4 text-emerald-400" />
                  Genera QR / Link
                </button>
              </div>

              {/* Saved accounts list */}
              {savedAccounts.length > 0 && (
                <div className="pt-4 border-t border-zinc-800/80 space-y-2">
                  <div className="text-xs font-semibold text-zinc-400 flex items-center justify-between">
                    <span>Account Salvati in Memoria</span>
                    <span className="text-[11px] text-zinc-500">{savedAccounts.length} salvati</span>
                  </div>
                  <div className="space-y-1.5 max-h-36 overflow-y-auto pr-1">
                    {savedAccounts.map((acc) => (
                      <div
                        key={acc.id}
                        className="flex items-center justify-between p-2 rounded-xl bg-zinc-900/60 border border-zinc-800/70 hover:border-zinc-700 transition"
                      >
                        <button
                          type="button"
                          onClick={() => {
                            setServerUrl(acc.serverUrl);
                            setUsername(acc.username);
                            setPassword(acc.password);
                            onSelectAccount(acc);
                            onClose();
                          }}
                          className="text-left flex-1 min-w-0 cursor-pointer"
                        >
                          <div className="text-xs font-medium text-white truncate">{acc.name}</div>
                          <div className="text-[10px] text-zinc-500 font-mono truncate">
                            {acc.username} @ {acc.serverUrl.replace(/^https?:\/\//, '')}
                          </div>
                        </button>
                        {onDeleteAccount && (
                          <button
                            type="button"
                            onClick={() => onDeleteAccount(acc.id)}
                            className="p-1 text-zinc-600 hover:text-rose-400 transition ml-2 cursor-pointer"
                            title="Rimuovi account"
                          >
                            <Trash2 className="w-3.5 h-3.5" />
                          </button>
                        )}
                      </div>
                    ))}
                  </div>
                </div>
              )}
            </form>
          ) : (
            <div className="space-y-5 text-center">
              <div className="bg-zinc-900/70 border border-zinc-800 rounded-2xl p-4 text-xs text-zinc-300 text-left flex items-start gap-3">
                <Smartphone className="w-5 h-5 text-emerald-400 shrink-0 mt-0.5" />
                <div>
                  <h4 className="font-semibold text-white mb-0.5">
                    Come accedere dal Telefono o da un altro PC:
                  </h4>
                  <p className="text-[11px] text-zinc-400">
                    1. Inquadra il <strong>QR Code</strong> qui sotto con la fotocamera del tuo smartphone.<br />
                    2. Oppure clicca <strong>Copia Link</strong> e aprilo su qualsiasi dispositivo: il player si aprirà già configurato e connesso automaticamente!
                  </p>
                </div>
              </div>

              {/* QR Code Container */}
              <div className="flex flex-col items-center justify-center p-4 bg-zinc-900/50 rounded-2xl border border-zinc-800">
                {qrDataUrl ? (
                  <div className="p-3 bg-white rounded-2xl shadow-xl border-4 border-emerald-500/30">
                    <img
                      src={qrDataUrl}
                      alt="QR Code per accesso rapido"
                      className="w-56 h-56 object-contain"
                    />
                  </div>
                ) : (
                  <div className="w-56 h-56 bg-zinc-800 animate-pulse rounded-2xl flex items-center justify-center text-zinc-500 text-xs">
                    Generazione QR Code...
                  </div>
                )}
                <span className="text-[11px] text-zinc-400 mt-3 font-medium flex items-center gap-1.5">
                  <Smartphone className="w-3.5 h-3.5 text-emerald-400" />
                  Inquadra con la fotocamera per connetterti al volo
                </span>
              </div>

              {/* Direct Sync Link Box */}
              <div className="space-y-2 text-left">
                <label className="block text-xs font-medium text-zinc-300">
                  Link di Configurazione Rapida:
                </label>
                <div className="flex items-center gap-2">
                  <div className="relative flex-1">
                    <Link className="w-4 h-4 absolute left-3 top-1/2 -translate-y-1/2 text-zinc-500" />
                    <input
                      type="text"
                      readOnly
                      value={syncUrl}
                      className="w-full pl-9 pr-4 py-2 bg-zinc-900 border border-zinc-800 rounded-xl text-zinc-400 text-xs font-mono focus:outline-hidden"
                    />
                  </div>
                  <button
                    type="button"
                    onClick={handleCopyLink}
                    className={`px-4 py-2 rounded-xl text-xs font-bold transition flex items-center gap-1.5 cursor-pointer shrink-0 ${
                      copiedLink
                        ? 'bg-emerald-600 text-white'
                        : 'bg-zinc-800 hover:bg-zinc-700 text-zinc-200'
                    }`}
                  >
                    {copiedLink ? (
                      <>
                        <Check className="w-4 h-4 text-white" />
                        Copiato!
                      </>
                    ) : (
                      <>
                        <Copy className="w-4 h-4 text-emerald-400" />
                        Copia Link
                      </>
                    )}
                  </button>
                </div>
                <p className="text-[11px] text-zinc-500">
                  Puoi inviare questo link su WhatsApp, Telegram o salvarlo nei preferiti del telefono.
                </p>
              </div>
            </div>
          )}
        </div>
      </div>
    </div>
  );
};
