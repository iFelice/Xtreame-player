import React, { useState } from 'react';
import {
  Info,
  LogOut,
  ChevronDown,
  Settings,
} from 'lucide-react';
import { XtreamAuthResponse } from '../types/xtream';
import { SavedAccount, storage } from '../services/storage';

interface NavbarProps {
  serverUrl: string | null;
  username: string | null;
  authData: XtreamAuthResponse | null;
  onSelectAccount: (account: SavedAccount) => void;
  onOpenServerInfo: () => void;
  onDisconnect: () => void;
  onOpenSettingsSync?: () => void;
}

export const Navbar: React.FC<NavbarProps> = ({
  serverUrl,
  username,
  authData,
  onSelectAccount,
  onOpenServerInfo,
  onDisconnect,
  onOpenSettingsSync,
}) => {
  const [showAccountDropdown, setShowAccountDropdown] = useState<boolean>(false);
  const savedAccounts = storage.getAccounts();
  const currentAppIcon = storage.getAppIcon();

  const isConnected = Boolean(serverUrl && username);

  return (
    <header className="sticky top-0 z-40 w-full max-w-full bg-zinc-950/95 backdrop-blur-md border-b border-zinc-800/80">
      <div className="w-full max-w-[2400px] mx-auto px-3 sm:px-6 lg:px-8 h-14 sm:h-16 flex items-center justify-between gap-2 sm:gap-4">
        {/* Brand with Dynamic Icon */}
        <div className="flex items-center gap-2 sm:gap-3 shrink-0">
          <div
            className="w-8 h-8 sm:w-10 sm:h-10 rounded-xl bg-zinc-900 border border-zinc-700/80 p-0.5 sm:p-1 flex items-center justify-center shadow-lg shadow-emerald-950/30 group shrink-0"
          >
            <img
              src={currentAppIcon}
              alt="Xtream Player Icon"
              className="w-full h-full object-contain"
            />
          </div>
          <div>
            <div className="flex items-center gap-1.5">
              <h1 className="text-sm sm:text-lg font-bold text-white tracking-tight">
                Xtream <span className="text-emerald-400">Player</span>
              </h1>
              <span className="hidden md:inline-block px-1.5 py-0.5 rounded bg-zinc-800 text-[10px] text-zinc-400 font-mono">
                v2.1
              </span>
            </div>
            <p className="text-[10px] text-zinc-400 hidden lg:block">
              Lettore Multimediale & Browser Xtream Codes
            </p>
          </div>
        </div>

        {/* Server & Connection Controls */}
        <div className="flex items-center gap-1.5 sm:gap-2.5 shrink-0">
          {isConnected ? (
            <div className="flex items-center gap-1 sm:gap-2">
              {/* Connected Server Badge with dropdown */}
              <div className="relative">
                <button
                  onClick={() => setShowAccountDropdown(!showAccountDropdown)}
                  className="flex items-center gap-1.5 px-2 sm:px-2.5 py-1.5 rounded-xl bg-zinc-900 border border-zinc-800 hover:border-zinc-700 text-xs text-zinc-200 transition"
                  title={`${username}@${serverUrl}`}
                >
                  <span className="w-2 h-2 rounded-full bg-emerald-400 animate-pulse shrink-0"></span>
                  <span className="font-mono font-medium max-w-[70px] sm:max-w-[130px] truncate text-[11px] sm:text-xs">
                    {username}
                  </span>
                  <ChevronDown className="w-3 h-3 text-zinc-400 shrink-0" />
                </button>

                {showAccountDropdown && (
                  <div className="absolute right-0 mt-2 w-64 bg-zinc-900 border border-zinc-800 rounded-xl shadow-2xl p-2 z-50 animate-in fade-in">
                    <div className="text-[11px] font-semibold text-zinc-400 px-2 py-1.5 border-b border-zinc-800 flex items-center justify-between">
                      <span>Server e Account</span>
                      {onOpenSettingsSync && (
                        <button
                          onClick={() => {
                            setShowAccountDropdown(false);
                            onOpenSettingsSync();
                          }}
                          className="text-emerald-400 hover:underline flex items-center gap-1 text-[10px]"
                        >
                          <Settings className="w-3 h-3" /> Modifica
                        </button>
                      )}
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

              {/* Server Info Button */}
              {authData && (
                <button
                  onClick={onOpenServerInfo}
                  className="p-1.5 sm:p-2 text-zinc-400 hover:text-white hover:bg-zinc-800/80 rounded-xl border border-zinc-800 transition"
                  title="Dettagli abbonamento e server"
                >
                  <Info className="w-3.5 h-3.5 sm:w-4 sm:h-4" />
                </button>
              )}

              {/* Disconnect Button */}
              <button
                onClick={onDisconnect}
                className="p-1.5 sm:p-2 text-zinc-400 hover:text-rose-400 hover:bg-rose-950/30 rounded-xl border border-zinc-800 transition"
                title="Disconnetti server"
              >
                <LogOut className="w-3.5 h-3.5 sm:w-4 sm:h-4" />
              </button>
            </div>
          ) : (
            <div className="flex items-center gap-1.5">
              <span className="hidden md:flex items-center gap-1.5 text-xs text-zinc-400 px-2.5 py-1 rounded-xl bg-zinc-900 border border-zinc-800">
                <span className="w-2 h-2 rounded-full bg-zinc-600"></span>
                Incolla link o configura
              </span>
            </div>
          )}
        </div>
      </div>
    </header>
  );
};

