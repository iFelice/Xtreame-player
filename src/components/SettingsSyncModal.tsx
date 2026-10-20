import React, { useState, useEffect } from 'react';
import {
  X,
  Server,
  User,
  KeyRound,
  Eye,
  EyeOff,
  Laptop,
  CheckCircle2,
  Trash2,
} from 'lucide-react';
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

  useEffect(() => {
    setServerUrl(currentServer || '');
    setUsername(currentUsername || '');
    setPassword(currentPassword || '');
  }, [currentServer, currentUsername, currentPassword, isOpen]);

  if (!isOpen) return null;

  const handleFormSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    if (!serverUrl || !username || !password) return;
    onSaveAndConnect(serverUrl.trim(), username.trim(), password.trim());
    onClose();
  };

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center p-3 sm:p-4 bg-black/50 animate-in fade-in">
      <div className="glass border border-glass-edge rounded-3xl w-full max-w-lg shadow-2xl overflow-hidden flex flex-col">
        {/* Modal Header */}
        <div className="px-5 py-4 border-b border-separator flex items-center justify-between gap-3">
          <div className="flex items-center gap-2.5">
            <div className="w-9 h-9 rounded-xl bg-accent/20 text-accent-strong border border-accent/30 flex items-center justify-center shrink-0">
              <Server className="w-5 h-5" />
            </div>
            <div>
              <h2 className="text-sm sm:text-base font-bold text-label flex items-center gap-2">
                Gestione Account Xtream
              </h2>
              <p className="text-[11px] text-label-secondary">
                Modifica credenziali o seleziona un altro account memorizzato
              </p>
            </div>
          </div>

          <button
            onClick={onClose}
            className="p-1.5 text-label-secondary hover:text-label rounded-lg hover:bg-surface-1 transition cursor-pointer"
            title="Chiudi"
          >
            <X className="w-5 h-5" />
          </button>
        </div>

        {/* Modal Body */}
        <div className="p-4 sm:p-6 max-h-[75vh] overflow-y-auto space-y-5">
          <form onSubmit={handleFormSubmit} className="space-y-4">
            <div className="bg-accent/15 border border-accent/40 rounded-2xl p-3.5 text-xs text-label flex items-start gap-2.5">
              <Laptop className="w-4 h-4 text-accent shrink-0 mt-0.5" />
              <span>
                Puoi modificare o inserire qui le credenziali Xtream Codes.
                Cliccando su <strong>Salva e Connetti</strong> verranno sincronizzate subito.
              </span>
            </div>

            {/* Server URL Input */}
            <div>
              <label className="block text-xs font-medium text-label-secondary mb-1.5">
                URL del Server Xtream
              </label>
              <div className="relative">
                <Server className="w-4 h-4 absolute left-3 top-1/2 -translate-y-1/2 text-label-tertiary" />
                <input
                  type="url"
                  value={serverUrl}
                  onChange={(e) => setServerUrl(e.target.value)}
                  placeholder="http://server.example.com:8080"
                  required
                  className="w-full pl-9 pr-4 py-2.5 bg-surface-0 border border-separator-strong/80 rounded-xl text-label placeholder-label-tertiary text-xs sm:text-sm  focus:outline-hidden focus:border-accent"
                />
              </div>
            </div>

            {/* Username Input */}
            <div>
              <label className="block text-xs font-medium text-label-secondary mb-1.5">
                Username / Utente
              </label>
              <div className="relative">
                <User className="w-4 h-4 absolute left-3 top-1/2 -translate-y-1/2 text-label-tertiary" />
                <input
                  type="text"
                  value={username}
                  onChange={(e) => setUsername(e.target.value)}
                  placeholder="Nome utente"
                  required
                  className="w-full pl-9 pr-4 py-2.5 bg-surface-0 border border-separator-strong/80 rounded-xl text-label placeholder-label-tertiary text-xs sm:text-sm  focus:outline-hidden focus:border-accent"
                />
              </div>
            </div>

            {/* Password Input */}
            <div>
              <label className="block text-xs font-medium text-label-secondary mb-1.5">
                Password
              </label>
              <div className="relative">
                <KeyRound className="w-4 h-4 absolute left-3 top-1/2 -translate-y-1/2 text-label-tertiary" />
                <input
                  type={showPassword ? 'text' : 'password'}
                  value={password}
                  onChange={(e) => setPassword(e.target.value)}
                  placeholder="Password"
                  required
                  className="w-full pl-9 pr-10 py-2.5 bg-surface-0 border border-separator-strong/80 rounded-xl text-label placeholder-label-tertiary text-xs sm:text-sm  focus:outline-hidden focus:border-accent"
                />
                <button
                  type="button"
                  onClick={() => setShowPassword(!showPassword)}
                  className="absolute right-3 top-1/2 -translate-y-1/2 text-label-tertiary hover:text-label-secondary cursor-pointer"
                >
                  {showPassword ? <EyeOff className="w-4 h-4" /> : <Eye className="w-4 h-4" />}
                </button>
              </div>
            </div>

            {/* Save & Connect Button */}
            <div className="pt-2">
              <button
                type="submit"
                className="w-full py-3 bg-accent hover:bg-accent-strong text-on-accent font-semibold rounded-xl text-xs sm:text-sm transition flex items-center justify-center gap-2 shadow-lg  cursor-pointer"
              >
                <CheckCircle2 className="w-4 h-4" />
                Salva e Connetti
              </button>
            </div>

            {/* Saved Accounts section */}
            {savedAccounts.length > 0 && (
              <div className="pt-4 border-t border-separator space-y-2">
                <label className="block text-xs font-semibold text-label-secondary">
                  Account Memorizzati ({savedAccounts.length}):
                </label>
                <div className="space-y-1.5 max-h-48 overflow-y-auto">
                  {savedAccounts.map((acc) => (
                    <div
                      key={acc.id}
                      className="p-2.5 rounded-xl bg-surface-0 border border-separator flex items-center justify-between hover:border-separator-strong transition"
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
                        <div className="text-xs font-medium text-label truncate">{acc.name}</div>
                        <div className="text-[10px] text-label-tertiary  truncate">
                          {acc.username} @ {acc.serverUrl.replace(/^https?:\/\//, '')}
                        </div>
                      </button>
                      {onDeleteAccount && (
                        <button
                          type="button"
                          onClick={() => onDeleteAccount(acc.id)}
                          className="p-1 text-label-tertiary hover:text-danger transition ml-2 cursor-pointer"
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
        </div>
      </div>
    </div>
  );
};
