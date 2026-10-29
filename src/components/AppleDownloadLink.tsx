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

interface AppleDownloadLinkProps {
  streamUrl: string;
  containerExtension?: string;
  /** `compact` fits the badges of a poster card and the episode rows. */
  variant?: 'full' | 'compact';
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

  const compact = variant === 'compact';
  const safariOnlyContainer = isSafariOnlyAppleContainer(containerExtension);
  const hint = safariOnlyContainer ? APPLE_SAFARI_DOWNLOAD_HINT : APPLE_DOWNLOAD_HINT;
  const compactHint = safariOnlyContainer ? COMPACT_SAFARI_HINT : COMPACT_HINT;

  if (decision.kind === 'standalone-note') {
    return (
      <p
        data-apple-download="standalone-note"
        title={APPLE_STANDALONE_NOTE}
        onClick={(event) => event.stopPropagation()}
        className={`${compact ? 'text-[10px] leading-tight' : 'text-xs leading-snug'} text-label-secondary ${className}`}
      >
        {compact ? 'Scarica solo in Safari' : APPLE_STANDALONE_NOTE}
      </p>
    );
  }

  return (
    <div data-apple-download="direct-link" className={`flex flex-col items-start gap-1 ${className}`}>
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
      <span className={`${compact ? 'text-[10px] leading-tight' : 'text-xs leading-snug'} text-label-secondary`}>
        {compact ? compactHint : hint}
      </span>
    </div>
  );
};
