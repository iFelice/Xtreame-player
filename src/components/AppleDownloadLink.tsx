import React from 'react';
import { Download } from 'lucide-react';
import { isAppleMobile } from '../utils/appleMobile';
import { decideAppleDownload, isSafariOnlyAppleContainer } from '../utils/appleDownload';
import { STATIC_DEPLOY } from '../utils/deployTarget';
import { isStandaloneWebApp } from '../utils/standaloneWebApp';

export const APPLE_DOWNLOAD_HINT = 'Tieni premuto e scegli «Scarica file collegato»';
/** MKV/AVI: in Safari un tocco apre la scelta, il long press resta come ripiego. */
export const APPLE_SAFARI_DOWNLOAD_HINT =
  'Tocca e scegli «Scarica», oppure tieni premuto → «Scarica file collegato»';
export const APPLE_STANDALONE_NOTE = 'Per scaricare apri FelixVP in Safari';

const COMPACT_HINT = 'tieni premuto per scaricare';
const COMPACT_SAFARI_HINT = 'tocca o tieni premuto';

/**
 * In the `stacked` variant the hint must never widen the episode actions
 * column: it wraps instead, below the "Guarda" button width (5rem = 80px, the
 * button is never narrower), and stays right aligned under the link.
 */
const STACKED_HINT_CLASS = 'max-w-[5rem] text-right';

interface AppleDownloadLinkProps {
  streamUrl: string;
  containerExtension?: string;
  /**
   * `compact` fits the badges of a poster card; `stacked` is the vertical
   * variant of the episode row, right aligned under the "Guarda" button.
   */
  variant?: 'full' | 'compact' | 'stacked';
  className?: string;
}

/**
 * Download control of the static build on Apple mobile. A direct file link can
 * be long-pressed in Safari ("Scarica file collegato"); the Home Screen web app
 * cannot download at all, so it only shows a short hint.
 */
export const AppleDownloadLink: React.FC<AppleDownloadLinkProps> = ({
  streamUrl,
  containerExtension,
  variant = 'full',
  className = '',
}) => {
  const decision = decideAppleDownload(streamUrl, containerExtension, {
    staticDeploy: STATIC_DEPLOY,
    appleMobile: isAppleMobile(),
    standalone: isStandaloneWebApp(),
  });

  if (decision.kind === 'none') return null;

  const compact = variant !== 'full';
  const stacked = variant === 'stacked';
  const safariOnlyContainer = isSafariOnlyAppleContainer(containerExtension);
  const hint = safariOnlyContainer ? APPLE_SAFARI_DOWNLOAD_HINT : APPLE_DOWNLOAD_HINT;
  const compactHint = safariOnlyContainer ? COMPACT_SAFARI_HINT : COMPACT_HINT;

  if (decision.kind === 'standalone-note') {
    return (
      <p
        data-apple-download="standalone-note"
        title={APPLE_STANDALONE_NOTE}
        onClick={(event) => event.stopPropagation()}
        className={`${compact ? 'text-[10px] leading-tight' : 'text-xs leading-snug'} text-label-secondary ${
          stacked ? STACKED_HINT_CLASS : ''
        } ${className}`}
      >
        {compact ? 'Scarica solo in Safari' : APPLE_STANDALONE_NOTE}
      </p>
    );
  }

  return (
    <div
      data-apple-download="direct-link"
      className={`flex flex-col gap-1 ${stacked ? 'items-end' : 'items-start'} ${className}`}
    >
      <a
        href={decision.href}
        target="_blank"
        rel="noopener noreferrer"
        title={hint}
        onClick={(event) => event.stopPropagation()}
        className={`inline-flex items-center gap-1.5 rounded-xl border border-separator-strong bg-surface-1 font-bold text-label transition hover:bg-surface-2 ${
          compact ? 'px-2 py-1 text-[11px]' : 'px-3 py-2 text-sm'
        }`}
      >
        <Download className={compact ? 'h-3.5 w-3.5' : 'h-4 w-4'} />
        Scarica
      </a>
      <span
        className={`${compact ? 'text-[10px] leading-tight' : 'text-xs leading-snug'} text-label-secondary ${
          stacked ? STACKED_HINT_CLASS : ''
        }`}
      >
        {compact ? compactHint : hint}
      </span>
    </div>
  );
};
