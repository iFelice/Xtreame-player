import React, { useEffect, useRef, useState } from 'react';
import {
  Info,
  LogOut,
  ChevronDown,
  Settings,
  User,
  RefreshCw,
} from 'lucide-react';
import { XtreamAuthResponse } from '../types/xtream';
import { SavedAccount, storage } from '../services/storage';
import { isTvEnvironment } from '../utils/downloadHelper';

interface NavbarProps {
  serverUrl: string | null;
  username: string | null;
  authData: XtreamAuthResponse | null;
  onSelectAccount: (account: SavedAccount) => void;
  onOpenServerInfo: () => void;
  onDisconnect: () => void;
  onOpenSettingsSync?: () => void;
  onRefreshCatalog?: () => void;
  isRefreshingCatalog?: boolean;
  lastRefreshedAt?: number | null;
}

export const Navbar: React.FC<NavbarProps> = ({
  serverUrl,
  username,
  authData,
  onSelectAccount,
  onOpenServerInfo,
  onDisconnect,
  onOpenSettingsSync,
  onRefreshCatalog,
  isRefreshingCatalog = false,
  lastRefreshedAt = null,
}) => {
  const [showMobileAccountMenu, setShowMobileAccountMenu] = useState<boolean>(false);
  const [showDesktopAccountMenu, setShowDesktopAccountMenu] = useState<boolean>(false);
  const savedAccounts = storage.getAccounts();
  const isTv = isTvEnvironment();
  const mobileMenuRef = useRef<HTMLDivElement | null>(null);
  const mobileAccountButtonRef = useRef<HTMLButtonElement | null>(null);

  useEffect(() => {
    if (!showMobileAccountMenu) return;
    const handlePointerDown = (event: MouseEvent | TouchEvent) => {
      const target = event.target as Node | null;
      if (
        mobileMenuRef.current &&
        !mobileMenuRef.current.contains(target) &&
        mobileAccountButtonRef.current &&
        !mobileAccountButtonRef.current.contains(target)
      ) {
        setShowMobileAccountMenu(false);
      }
    };
    const handleKeyDown = (event: KeyboardEvent) => {
      if (event.key === 'Escape') setShowMobileAccountMenu(false);
    };
    document.addEventListener('mousedown', handlePointerDown);
    document.addEventListener('touchstart', handlePointerDown);
    document.addEventListener('keydown', handleKeyDown);
    return () => {
      document.removeEventListener('mousedown', handlePointerDown);
      document.removeEventListener('touchstart', handlePointerDown);
      document.removeEventListener('keydown', handleKeyDown);
    };
  }, [showMobileAccountMenu]);

  const isConnected = Boolean(serverUrl && username);
  const refreshTitle = lastRefreshedAt
    ? `Ultimo aggiornamento: ${new Date(lastRefreshedAt).toLocaleTimeString('it-IT', { hour: '2-digit', minute: '2-digit' })}`
    : 'Aggiorna catalogo';

  return (
    <header className="w-full max-w-full glass border-b border-glass-edge shadow-xl safe-area-header">
      {/* Mobile header: visible below md, never rendered on TV. */}
      {!isTv && (
        <div className="flex md:hidden w-full max-w-[2400px] mx-auto px-3 h-16 items-center justify-between gap-2">
          <div className="flex items-center gap-2 min-w-0 flex-1">
            <img
              src="/brand/favicon.svg"
              alt="FelixVisionPlayer"
              className="w-10 h-10 shrink-0"
            />
            <div className="hidden min-[360px]:block min-w-0 flex-1">
              <h1 className="text-base font-black text-label tracking-tight whitespace-nowrap truncate">
                FelixVision <span className="text-accent-strong">Player</span>
              </h1>
            </div>
          </div>

          <div className="flex items-center gap-1.5 shrink-0">
            {isConnected ? (
              <>
                {/* Account */}
                <div className="shrink-0">
                  <button
                    ref={mobileAccountButtonRef}
                    type="button"
                    aria-label="Account"
                    onClick={() => setShowMobileAccountMenu(!showMobileAccountMenu)}
                    className="w-10 h-10 rounded-full bg-surface-0 border border-separator-strong/80 hover:border-accent/60 text-label transition cursor-pointer shadow-md flex items-center justify-center relative"
                    title={`${username}@${serverUrl}`}
                  >
                    <User className="w-5 h-5 text-label" />
                    <span className="absolute top-1.5 right-1.5 w-2.5 h-2.5 rounded-full bg-accent animate-pulse border border-surface-0"></span>
                  </button>

                  {showMobileAccountMenu && (
                    <div ref={mobileMenuRef} className="fixed top-[72px] mt-[env(safe-area-inset-top)] mr-[env(safe-area-inset-right)] right-3 w-80 max-w-[calc(100vw-24px)] glass border border-glass-edge rounded-2xl shadow-2xl p-3 z-40 animate-in fade-in">
                      <div className="text-xs sm:text-sm font-bold text-label-secondary px-3 py-2 border-b border-separator flex items-center justify-between">
                        <span>Server e Account</span>
                        {onOpenSettingsSync && (
                          <button
                            onClick={() => {
                              setShowMobileAccountMenu(false);
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
                                setShowMobileAccountMenu(false);
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
                      <div className="border-t border-separator mt-2 pt-2">
                        <button
                          type="button"
                          onClick={() => {
                            setShowMobileAccountMenu(false);
                            onDisconnect();
                          }}
                          className="w-full text-left p-3 rounded-xl hover:bg-surface-1 text-sm font-bold text-danger transition flex items-center gap-2.5 cursor-pointer"
                        >
                          <LogOut className="w-4 h-4 shrink-0" />
                          Esci
                        </button>
                      </div>
                    </div>
                  )}
                </div>

                {/* Refresh catalog: connected only */}
                {onRefreshCatalog && (
                  <button
                    type="button"
                    aria-label="Aggiorna catalogo"
                    title={refreshTitle}
                    onClick={onRefreshCatalog}
                    disabled={isRefreshingCatalog}
                    className="w-10 h-10 rounded-2xl bg-surface-0 border border-separator-strong/80 text-label-secondary hover:text-label hover:bg-surface-1 transition cursor-pointer shadow-md flex items-center justify-center shrink-0 disabled:opacity-50 disabled:cursor-not-allowed"
                  >
                    <RefreshCw className={`w-5 h-5 ${isRefreshingCatalog ? 'animate-spin' : ''}`} />
                  </button>
                )}

                {/* Server info */}
                {authData && (
                  <button
                    type="button"
                    aria-label="Informazioni server"
                    onClick={onOpenServerInfo}
                    className="w-10 h-10 rounded-2xl bg-surface-0 border border-separator-strong/80 text-label-secondary hover:text-label hover:bg-surface-1 transition cursor-pointer shadow-md flex items-center justify-center shrink-0"
                    title="Dettagli abbonamento e server"
                  >
                    <Info className="w-5 h-5" />
                  </button>
                )}
              </>
            ) : (
              <span className="flex items-center gap-2 text-xs font-bold text-label-secondary px-3 py-2 rounded-xl bg-surface-0 border border-separator shrink-0">
                <span className="w-2 h-2 rounded-full bg-surface-2 shrink-0"></span>
                Non connesso
              </span>
            )}
          </div>
        </div>
      )}

      {/* Desktop / tablet header: identical to the previous layout from md up (and always on TV). */}
      <div className={`${isTv ? 'flex' : 'hidden md:flex'} w-full max-w-[2400px] mx-auto px-4 sm:px-8 h-18 sm:h-22 items-center justify-between gap-3 sm:gap-6`}>
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
                  onClick={() => setShowDesktopAccountMenu(!showDesktopAccountMenu)}
                  className="flex items-center gap-2.5 px-3.5 sm:px-4 py-2 sm:py-2.5 rounded-2xl bg-surface-0 border border-separator-strong/80 hover:border-accent/60 text-sm sm:text-base text-label transition cursor-pointer shadow-md"
                  title={`${username}@${serverUrl}`}
                >
                  <span className="w-3 h-3 rounded-full bg-accent animate-pulse shrink-0"></span>
                  <span className=" font-bold max-w-[120px] sm:max-w-[180px] truncate">
                    {username}
                  </span>
                  <ChevronDown className="w-4 h-4 sm:w-5 sm:h-5 text-label-secondary shrink-0" />
                </button>

                {showDesktopAccountMenu && (
                  <div className="absolute right-0 mt-2 w-80 glass border border-glass-edge rounded-2xl shadow-2xl p-3 z-50 animate-in fade-in">
                    <div className="text-xs sm:text-sm font-bold text-label-secondary px-3 py-2 border-b border-separator flex items-center justify-between">
                      <span>Server e Account</span>
                      {onOpenSettingsSync && (
                        <button
                          onClick={() => {
                            setShowDesktopAccountMenu(false);
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
                              setShowDesktopAccountMenu(false);
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
                className="p-2.5 sm:p-3 text-label-secondary hover:text-danger hover:bg-danger/20 rounded-2xl border border-separator-strong/80 transition cursor-pointer shadow-md"
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
