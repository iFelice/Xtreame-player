import React, { useEffect, useState } from 'react';
import { AlertCircle, RefreshCw, X } from 'lucide-react';

export interface MobilePlayerErrorPanelProps {
  message: string;
  canSwitchFormat: boolean;
  formatLabel: string;
  showProxyOption: boolean;
  proxyLabel: string;
  proxyFilled: boolean;
  onRetry: () => void;
  onClose: () => void;
  onToggleFormat: () => void;
  onToggleProxy: () => void;
}

/**
 * Compact player error panel for phones. The player itself is only ~170-210px
 * tall on mobile, so the whole panel must fit (or scroll) inside the video box.
 */
export const MobilePlayerErrorPanel: React.FC<MobilePlayerErrorPanelProps> = ({
  message,
  canSwitchFormat,
  formatLabel,
  showProxyOption,
  proxyLabel,
  proxyFilled,
  onRetry,
  onClose,
  onToggleFormat,
  onToggleProxy,
}) => {
  const [showOptions, setShowOptions] = useState(false);

  useEffect(() => {
    setShowOptions(false);
  }, [message]);

  return (
    <div className="absolute inset-0 z-30 flex flex-col overflow-y-auto bg-surface-0/95 p-1 text-center">
      <div className="m-auto flex w-full flex-col items-center gap-1">
        {showOptions ? (
          <div className="flex w-full flex-col items-stretch gap-1">
            {canSwitchFormat && (
              <button
                type="button"
                onClick={onToggleFormat}
                className="flex min-h-10 w-full items-center justify-center rounded-lg bg-live px-3 text-xs font-bold text-on-accent transition cursor-pointer hover:brightness-110"
              >
                {formatLabel}
              </button>
            )}

            {showProxyOption && (
              <button
                type="button"
                onClick={onToggleProxy}
                className={`flex min-h-10 w-full items-center justify-center rounded-lg px-3 text-xs font-bold transition cursor-pointer ${
                  proxyFilled
                    ? 'bg-accent text-on-accent hover:bg-accent-strong'
                    : 'border border-separator-strong bg-surface-1 text-label hover:bg-surface-2'
                }`}
              >
                {proxyLabel}
              </button>
            )}

            <button
              type="button"
              onClick={() => setShowOptions(false)}
              className="flex min-h-10 w-full items-center justify-center rounded-lg px-3 text-xs font-bold text-label-secondary transition cursor-pointer hover:text-label"
            >
              Indietro
            </button>
          </div>
        ) : (
          <>
            <AlertCircle className="h-6 w-6 shrink-0 text-danger" aria-hidden="true" />
            <p className="line-clamp-2 w-full text-xs leading-4 text-label">{message}</p>

            <div className="flex w-full items-center justify-center gap-1.5">
              <button
                type="button"
                onClick={onRetry}
                className="flex min-h-10 flex-1 items-center justify-center gap-1.5 rounded-lg bg-accent px-2 text-xs font-bold text-on-accent transition cursor-pointer hover:bg-accent-strong"
              >
                <RefreshCw className="h-4 w-4 shrink-0" />
                Riprova
              </button>
              <button
                type="button"
                onClick={onClose}
                className="flex min-h-10 flex-1 items-center justify-center gap-1.5 rounded-lg border border-separator-strong bg-surface-1 px-2 text-xs font-bold text-label transition cursor-pointer hover:bg-surface-2"
              >
                <X className="h-4 w-4 shrink-0" />
                Chiudi
              </button>
            </div>

            <button
              type="button"
              onClick={() => setShowOptions(true)}
              className="flex min-h-10 w-full items-center justify-center rounded-lg px-3 text-xs font-bold text-label-secondary transition cursor-pointer hover:text-label"
            >
              Altre opzioni
            </button>
          </>
        )}
      </div>
    </div>
  );
};
