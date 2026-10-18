import { RemoteImage } from './RemoteImage';
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
    <header className="sticky top-0 z-40 w-full max-w-full bg-zinc-950/98 backdrop-blur-md border-b border-zinc-800 shadow-xl">
      <div className="w-full max-w-[2400px] mx-auto px-4 sm:px-8 h-18 sm:h-22 flex items-center justify-between gap-3 sm:gap-6">
        {/* Brand with Large Dynamic Icon and Text */}
        <div className="flex items-center gap-3 sm:gap-4 shrink-0">
          <div className="w-11 h-11 sm:w-14 sm:h-14 rounded-2xl bg-zinc-900 border border-zinc-700 p-1 sm:p-1.5 flex items-center justify-center shadow-xl shadow-emerald-950/40 group shrink-0">
            <RemoteImage
              src={currentAppIcon}
              alt="Xtream Player Icon"
              className="w-full h-full object-contain"
            />
          </div>
          <div>
            <div className="flex items-center gap-2">
              <h1 className="text-lg sm:text-2xl font-black text-white tracking-tight">
                Xtream <span className="text-emerald-400">Player</span>
              </h1>
              <span className="hidden md:inline-block px-2 py-0.5 rounded-md bg-zinc-800 text-xs text-zinc-400 font-mono font-bold">
                v2.1
              </span>
            </div>
            <p className="text-xs sm:text-sm text-zinc-400 font-medium hidden lg:block mt-0.5">
              Lettore Multimediale & Browser Xtream Codes
            </p>
          </div>
        </div>

        {/* Server & Connection Controls */}
        <div className="flex items-center gap-2 sm:gap-3.5 shrink-0">
          {isConnected ? (
            <div className="flex items-center gap-2 sm:gap-3">
              {/* Connected Server Badge with dropdown */}
              <div className="relative">
                <button
                  onClick={() => setShowAccountDropdown(!showAccountDropdown)}
                  className="flex items-center gap-2.5 px-3.5 sm:px-4 py-2 sm:py-2.5 rounded-2xl bg-zinc-900 border border-zinc-700/80 hover:border-emerald-500/60 text-sm sm:text-base text-zinc-100 transition cursor-pointer shadow-md"
                  title={`${username}@${serverUrl}`}
                >
                  <span className="w-3 h-3 rounded-full bg-emerald-400 animate-pulse shrink-0"></span>
                  <span className="font-mono font-bold max-w-[120px] sm:max-w-[180px] truncate">
                    {username}
                  </span>
                  <ChevronDown className="w-4 h-4 sm:w-5 sm:h-5 text-zinc-400 shrink-0" />
                </button>

                {showAccountDropdown && (
                  <div className="absolute right-0 mt-2 w-80 bg-zinc-900 border border-zinc-700 rounded-2xl shadow-2xl p-3 z-50 animate-in fade-in">
                    <div className="text-xs sm:text-sm font-bold text-zinc-400 px-3 py-2 border-b border-zinc-800 flex items-center justify-between">
                      <span>Server e Account</span>
                      {onOpenSettingsSync && (
                        <button
                          onClick={() => {
                            setShowAccountDropdown(false);
                            onOpenSettingsSync();
                          }}
                          className="text-emerald-400 hover:underline flex items-center gap-1 text-xs font-bold cursor-pointer"
                        >
                          <Settings className="w-4 h-4" /> Modifica
                        </button>
                      )}
                    </div>
                    {savedAccounts.length === 0 ? (
                      <div className="text-sm text-zinc-500 p-4 text-center">
                        Nessun account memorizzato
                      </div>
                    ) : (
                      <div className="space-y-1.5 mt-2 max-h-60 overflow-y-auto">
                        {savedAccounts.map((acc) => (
                          <button
                            key={acc.id}
                            onClick={() => {
                              onSelectAccount(acc);
                              setShowAccountDropdown(false);
                            }}
                            className="w-full text-left p-3 rounded-xl hover:bg-zinc-800 text-sm text-zinc-300 transition flex items-center justify-between cursor-pointer"
                          >
                            <div className="min-w-0">
                              <p className="font-bold text-white truncate text-sm sm:text-base">{acc.name}</p>
                              <p className="text-xs text-zinc-400 font-mono truncate mt-0.5">
                                {acc.serverUrl}
                              </p>
                            </div>
                            <span className="w-2.5 h-2.5 rounded-full bg-emerald-500 shrink-0 ml-2"></span>
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
                  className="p-2.5 sm:p-3 text-zinc-300 hover:text-white hover:bg-zinc-800 rounded-2xl border border-zinc-700/80 transition cursor-pointer shadow-md"
                  title="Dettagli abbonamento e server"
                >
                  <Info className="w-5 h-5 sm:w-6 sm:h-6" />
                </button>
              )}

              {/* Disconnect Button */}
              <button
                onClick={onDisconnect}
                className="p-2.5 sm:p-3 text-zinc-300 hover:text-rose-400 hover:bg-rose-950/40 rounded-2xl border border-zinc-700/80 transition cursor-pointer shadow-md"
                title="Disconnetti server"
              >
                <LogOut className="w-5 h-5 sm:w-6 sm:h-6" />
              </button>
            </div>
          ) : (
            <div className="flex items-center gap-2">
              <span className="flex items-center gap-2.5 text-sm sm:text-base font-bold text-zinc-400 px-4 py-2 rounded-2xl bg-zinc-900 border border-zinc-800">
                <span className="w-2.5 h-2.5 rounded-full bg-zinc-600"></span>
                Non connesso
              </span>
            </div>
          )}
        </div>
      </div>
    </header>
  );
};
