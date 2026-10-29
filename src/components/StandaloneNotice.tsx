import React, { useState } from 'react';
import { AlertTriangle, X } from 'lucide-react';
import { isAppleMobile } from '../utils/appleMobile';
import { STATIC_DEPLOY } from '../utils/deployTarget';
import { isStandaloneWebApp } from '../utils/standaloneWebApp';
import {
  rememberStandaloneNoticeDismissed,
  shouldShowStandaloneNotice,
  wasStandaloneNoticeDismissed,
} from '../utils/standaloneNotice';

/**
 * The host is read from the page, never written here: the same build can be
 * installed from any address the user opens it from.
 */
export function standaloneNoticeMessage(host: string): string {
  const target = host || 'questo indirizzo';
  return `Picture-in-Picture e download non funzionano in questa modalità. Per averli: apri ${target} in Safari → Condividi → Aggiungi alla schermata Home e disattiva «Apri come app web».`;
}

function currentHost(): string {
  if (typeof window === 'undefined') return '';
  return window.location?.host || '';
}

/**
 * One-time notice for the Home Screen web app of the static Apple build: both
 * PiP (WebKit bug 303885) and downloads need a real Safari tab.
 */
export const StandaloneNotice: React.FC = () => {
  const [visible, setVisible] = useState<boolean>(() =>
    shouldShowStandaloneNotice({
      staticDeploy: STATIC_DEPLOY,
      appleMobile: isAppleMobile(),
      standalone: isStandaloneWebApp(),
      dismissed: wasStandaloneNoticeDismissed(),
    }),
  );

  if (!visible) return null;

  const message = standaloneNoticeMessage(currentHost());

  const dismiss = () => {
    rememberStandaloneNoticeDismissed();
    setVisible(false);
  };

  return (
    <div
      role="status"
      data-standalone-notice="true"
      className="flex items-start gap-3 rounded-2xl border border-live/50 bg-live/15 p-4 text-label shadow-xl"
    >
      <AlertTriangle className="mt-0.5 h-5 w-5 shrink-0 text-live" aria-hidden="true" />
      <p className="flex-1 text-sm font-semibold leading-snug">{message}</p>
      <button
        type="button"
        onClick={dismiss}
        title="Chiudi avviso"
        aria-label="Chiudi avviso"
        className="rounded-xl p-1.5 text-label-secondary transition hover:bg-surface-1 hover:text-label"
      >
        <X className="h-4 w-4" />
      </button>
    </div>
  );
};
