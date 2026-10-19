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

  const isConnected = Boolean(serverUrl && username);

  return (
    <header className="sticky top-0 z-40 w-full max-w-full bg-surface-0/98 backdrop-blur-md border-b border-separator shadow-xl">
      <div className="w-full max-w-[2400px] mx-auto px-4 sm:px-8 h-18 sm:h-22 flex items-center justify-between gap-3 sm:gap-6">
        {/* Brand Icon and Text */}
        <div className="flex items-center gap-3 sm:gap-4 shrink-0">
          <img
            src="/brand/favicon.svg"
            alt="FelixVisionPlayer"
            className="w-11 h-11 sm:w-14 sm:h-14 shrink-0"
          />
          <div>
            <div className="flex items-center gap-2">
              <h1 className="text-lg sm:text-2xl font-black text-label tracking-tight">
                FelixVision <span className="text-accent-strong">Player</span>
              </h1>
              <span className="hidden md:inline-block px-2 py-0.5 rounded-md bg-surface-1 text-xs text-label-secondary  font-bold">
                v2.1
              </span>
            </div>
            <p className="text-xs sm:text-sm text-label-secondary font-medium hidden lg:block mt-0.5">
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
                  className="flex items-center gap-2.5 px-3.5 sm:px-4 py-2 sm:py-2.5 rounded-2xl bg-surface-0 border border-separator-strong/80 hover:border-accent/60 text-sm sm:text-base text-label transition cursor-pointer shadow-md"
                  title={`${username}@${serverUrl}`}
                >
                  <span className="w-3 h-3 rounded-full bg-accent animate-pulse shrink-0"></span>
                  <span className=" font-bold max-w-[120px] sm:max-w-[180px] truncate">
                    {username}
                  </span>
                  <ChevronDown className="w-4 h-4 sm:w-5 sm:h-5 text-label-secondary shrink-0" />
                </button>

                {showAccountDropdown && (
                  <div className="absolute right-0 mt-2 w-80 bg-surface-0 border border-separator-strong rounded-2xl shadow-2xl p-3 z-50 animate-in fade-in">
                    <div className="text-xs sm:text-sm font-bold text-label-secondary px-3 py-2 border-b border-separator flex items-center justify-between">
                      <span>Server e Account</span>
                      {onOpenSettingsSync && (
                        <button
                          onClick={() => {
                            setShowAccountDropdown(false);
                            onOpenSettingsSync();
                          }}
                          className="text-accent-strong hover:underline flex items-center gap-1 text-xs font-bold cursor-pointer"
                        >
                          <Settings className="w-4 h-4" /> Modifica
                        </button>
                      )}
                    </div>
                    {savedAccounts.length === 0 ? (
                      <div className="text-sm text-label-tertiary p-4 text-center">
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
                            className="w-full text-left p-3 rounded-xl hover:bg-surface-1 text-sm text-label-secondary transition flex items-center justify-between cursor-pointer"
                          >
                            <div className="min-w-0">
                              <p className="font-bold text-label truncate text-sm sm:text-base">{acc.name}</p>
                              <p className="text-xs text-label-secondary  truncate mt-0.5">
                                {acc.serverUrl}
                              </p>
                            </div>
                            <span className="w-2.5 h-2.5 rounded-full bg-accent shrink-0 ml-2"></span>
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
                  className="p-2.5 sm:p-3 text-label-secondary hover:text-label hover:bg-surface-1 rounded-2xl border border-separator-strong/80 transition cursor-pointer shadow-md"
                  title="Dettagli abbonamento e server"
                >
                  <Info className="w-5 h-5 sm:w-6 sm:h-6" />
                </button>
              )}

              {/* Disconnect Button */}
              <button
                onClick={onDisconnect}
                className="p-2.5 sm:p-3 text-label-secondary hover:text-danger hover:bg-danger/40 rounded-2xl border border-separator-strong/80 transition cursor-pointer shadow-md"
                title="Disconnetti server"
              >
                <LogOut className="w-5 h-5 sm:w-6 sm:h-6" />
              </button>
            </div>
          ) : (
            <div className="flex items-center gap-2">
              <span className="flex items-center gap-2.5 text-sm sm:text-base font-bold text-label-secondary px-4 py-2 rounded-2xl bg-surface-0 border border-separator">
                <span className="w-2.5 h-2.5 rounded-full bg-surface-2"></span>
                Non connesso
              </span>
            </div>
          )}
        </div>
      </div>
    </header>
  );
};
