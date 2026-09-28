import React, { useState } from 'react';
import {
  Tv,
  Film,
  Server,
  Activity,
  Calendar,
  History,
  Info,
  LogOut,
  ChevronDown,
  Shield,
  Layers,
  Sparkles,
  RefreshCw,
  Download,
} from 'lucide-react';
import { XtreamAuthResponse } from '../types/xtream';
import { SavedAccount, storage } from '../services/storage';
import { formatExpiryDate } from '../utils/parseXtreamUrl';

interface NavbarProps {
  serverUrl: string | null;
  username: string | null;
  authData: XtreamAuthResponse | null;
  onSelectAccount: (account: SavedAccount) => void;
  onOpenServerInfo: () => void;
  onOpenPrivacy: () => void;
  onDisconnect: () => void;
  onRefreshCatalog?: () => void;
  isRefreshing?: boolean;
  onInstallApp?: () => void;
}

export const Navbar: React.FC<NavbarProps> = ({
  serverUrl,
  username,
  authData,
  onSelectAccount,
  onOpenServerInfo,
  onOpenPrivacy,
  onDisconnect,
  onRefreshCatalog,
  isRefreshing = false,
  onInstallApp,
}) => {
  const [showAccountDropdown, setShowAccountDropdown] = useState<boolean>(false);
  const savedAccounts = storage.getAccounts();
  const currentAppIcon = storage.getAppIcon();

  const isConnected = Boolean(serverUrl && username);

  return (
    <header className="sticky top-0 z-40 w-full bg-zinc-950/80 backdrop-blur-md border-b border-zinc-800/80">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 h-16 flex items-center justify-between gap-3">
        {/* Brand with Dynamic Icon */}
        <div className="flex items-center gap-3">
          <div
            onClick={onInstallApp}
            className="w-10 h-10 rounded-xl bg-zinc-900 border border-zinc-700/80 p-1 flex items-center justify-center shadow-lg shadow-emerald-950/30 cursor-pointer hover:border-emerald-500 transition group"
            title="Clicca per personalizzare l'icona o installare l'app"
          >
            <img
              src={currentAppIcon}
              alt="Xtream Player Icon"
              className="w-full h-full object-contain group-hover:scale-105 transition-transform"
            />
          </div>
          <div>
            <div className="flex items-center gap-2">
              <h1 className="text-base sm:text-lg font-bold text-white tracking-tight">
                Xtream <span className="text-emerald-400">StreamPlayer</span>
              </h1>
              <span className="hidden sm:inline-block px-1.5 py-0.5 rounded bg-zinc-800 text-[10px] text-zinc-400 font-mono">
                v2.1
              </span>
            </div>
            <p className="text-[11px] text-zinc-400 hidden sm:block">
              Lettore Multimediale & Browser Xtream Codes
            </p>
          </div>
        </div>

        {/* Server & Connection Status / Controls */}
        <div className="flex items-center gap-2">
          {/* Install as Desktop/Mobile App Button */}
          {onInstallApp && (
            <button
              onClick={onInstallApp}
              className="flex items-center gap-1.5 px-3 py-1.5 rounded-xl bg-zinc-900 hover:bg-zinc-800 border border-zinc-800 text-xs text-zinc-300 hover:text-emerald-400 transition cursor-pointer"
              title="Salva come icona/app su Desktop o Telefono"
            >
              <Download className="w-3.5 h-3.5 text-emerald-400" />
              <span className="hidden sm:inline font-medium">Installa App</span>
            </button>
          )}

          {/* Privacy & Render Deploy Button */}
          <button
            onClick={onOpenPrivacy}
            className="flex items-center gap-1.5 px-3 py-1.5 rounded-xl bg-zinc-900 hover:bg-zinc-800/90 border border-zinc-800 text-xs text-zinc-300 hover:text-emerald-400 transition cursor-pointer"
            title="Privacy dei dati & Guida Deploy su Render"
          >
            <Shield className="w-3.5 h-3.5 text-emerald-400" />
            <span className="hidden md:inline font-medium">Privacy & Deploy Render</span>
          </button>

          {isConnected ? (
            <div className="flex items-center gap-2">
              {/* Connected Server Badge with dropdown */}
              <div className="relative">
                <button
                  onClick={() => setShowAccountDropdown(!showAccountDropdown)}
                  className="flex items-center gap-2 px-3 py-1.5 rounded-xl bg-zinc-900 border border-zinc-800 hover:border-zinc-700 text-xs text-zinc-200 transition"
                >
                  <span className="w-2 h-2 rounded-full bg-emerald-400 animate-pulse"></span>
                  <span className="font-mono font-medium max-w-[120px] sm:max-w-[160px] truncate">
                    {username}@{serverUrl?.replace(/^https?:\/\//, '')}
                  </span>
                  <ChevronDown className="w-3.5 h-3.5 text-zinc-400" />
                </button>

                {showAccountDropdown && (
                  <div className="absolute right-0 mt-2 w-64 bg-zinc-900 border border-zinc-800 rounded-xl shadow-2xl p-2 z-50 animate-in fade-in">
                    <div className="text-[11px] font-semibold text-zinc-400 px-2 py-1.5 border-b border-zinc-800">
                      Server e Account Recenti
                    </div>
                    {savedAccounts.length === 0 ? (
                      <div className="text-xs text-zinc-500 p-2 text-center">
                        Nessun account memorizzato
                      </div>
                    ) : (
                      <div className="space-y-1 mt-1 max-h-48 overflow-y-auto">
                        {savedAccounts.map((acc) => (
                          <button
                            key={acc.id}
                            onClick={() => {
                              onSelectAccount(acc);
                              setShowAccountDropdown(false);
                            }}
                            className="w-full text-left p-2 rounded-lg hover:bg-zinc-800/80 text-xs text-zinc-300 transition flex items-center justify-between"
                          >
                            <div className="min-w-0">
                              <p className="font-medium text-white truncate">{acc.name}</p>
                              <p className="text-[10px] text-zinc-500 font-mono truncate">
                                {acc.serverUrl}
                              </p>
                            </div>
                            <span className="w-1.5 h-1.5 rounded-full bg-emerald-500 shrink-0 ml-2"></span>
                          </button>
                        ))}
                      </div>
                    )}
                  </div>
                )}
              </div>

              {/* Refresh Catalog Button */}
              {onRefreshCatalog && (
                <button
                  onClick={onRefreshCatalog}
                  disabled={isRefreshing}
                  className="flex items-center gap-1.5 px-3 py-1.5 rounded-xl bg-emerald-950/80 hover:bg-emerald-900 border border-emerald-700/70 text-xs text-emerald-300 hover:text-emerald-200 transition cursor-pointer disabled:opacity-50 shadow-xs"
                  title="Aggiorna e risincronizza catalogo dal server Xtream"
                >
                  <RefreshCw className={`w-3.5 h-3.5 text-emerald-400 ${isRefreshing ? 'animate-spin' : ''}`} />
                  <span className="font-semibold hidden sm:inline">
                    {isRefreshing ? 'Aggiornamento...' : 'Aggiorna'}
                  </span>
                </button>
              )}

              {/* Server Info Button */}
              {authData && (
                <button
                  onClick={onOpenServerInfo}
                  className="p-2 text-zinc-400 hover:text-white hover:bg-zinc-800/80 rounded-xl border border-zinc-800 transition"
                  title="Dettagli abbonamento e server"
                >
                  <Info className="w-4 h-4" />
                </button>
              )}

              {/* Disconnect Button */}
              <button
                onClick={onDisconnect}
                className="p-2 text-zinc-400 hover:text-rose-400 hover:bg-rose-950/30 rounded-xl border border-zinc-800 transition"
                title="Disconnetti server"
              >
                <LogOut className="w-4 h-4" />
              </button>
            </div>
          ) : (
            <div className="flex items-center gap-2">
              <span className="hidden sm:flex items-center gap-1.5 text-xs text-zinc-400 px-3 py-1.5 rounded-xl bg-zinc-900 border border-zinc-800">
                <span className="w-2 h-2 rounded-full bg-zinc-600"></span>
                Incolla un link per iniziare
              </span>
            </div>
          )}
        </div>
      </div>
    </header>
  );
};
