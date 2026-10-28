import React, { useState } from 'react';
import { AlertCircle, Copy, ExternalLink, X } from 'lucide-react';
import { getDirectStreamUrl } from '../utils/streamUrl';
import { buildVlcUrl } from '../utils/vlc';

interface AppleUnsupportedFormatPanelProps {
  streamUrl: string;
  title: string;
  onClose: () => void;
}

/** Clipboard API needs a secure context; HTTP deployments may need the legacy fallback. */
async function copyLink(text: string): Promise<boolean> {
  if (typeof navigator !== 'undefined' && navigator.clipboard?.writeText) {
    try {
      await navigator.clipboard.writeText(text);
      return true;
    } catch {
      // Continue with the HTTP-compatible selection fallback, if available.
    }
  }
  if (typeof document === 'undefined' || typeof document.execCommand !== 'function') return false;
  const field = document.createElement('textarea');
  field.value = text;
  field.setAttribute('readonly', '');
  field.style.position = 'fixed';
  field.style.left = '-9999px';
  document.body.appendChild(field);
  try {
    field.select();
    field.setSelectionRange(0, field.value.length);
    return document.execCommand('copy');
  } catch {
    return false;
  } finally {
    field.remove();
  }
}

export const AppleUnsupportedFormatPanel: React.FC<AppleUnsupportedFormatPanelProps> = ({
  streamUrl,
  title,
  onClose,
}) => {
  const [copyStatus, setCopyStatus] = useState<'idle' | 'copied' | 'error'>('idle');
  const directUrl = getDirectStreamUrl(streamUrl);
  const vlcUrl = buildVlcUrl(streamUrl);

  const handleCopy = async () => {
    const copied = Boolean(vlcUrl) && await copyLink(directUrl);
    setCopyStatus(copied ? 'copied' : 'error');
  };

  return (
    <section data-media-player="true" className="relative w-full rounded-3xl border border-separator bg-surface-0 p-5 text-label shadow-xl sm:p-7">
      <button type="button" onClick={onClose} title="Chiudi lettore" aria-label="Chiudi lettore" className="absolute right-4 top-4 rounded-xl p-2 text-label-secondary hover:bg-surface-1 hover:text-label">
        <X className="h-5 w-5" />
      </button>
      <div className="mx-auto flex max-w-xl flex-col items-center gap-3 text-center">
        <AlertCircle className="h-9 w-9 text-danger" aria-hidden="true" />
        <h2 className="text-lg font-bold sm:text-xl">Formato non riproducibile in Safari</h2>
        <p className="text-sm text-label-secondary">{title}</p>
        <div className="flex flex-wrap items-center justify-center gap-3">
          {vlcUrl && (
            <a role="button" href={vlcUrl} className="rounded-xl bg-accent px-4 py-3 text-sm font-bold text-on-accent hover:bg-accent-strong">
              Apri in VLC
            </a>
          )}
          <button type="button" onClick={() => void handleCopy()} className="flex items-center gap-2 rounded-xl border border-separator-strong bg-surface-1 px-4 py-3 text-sm font-bold hover:bg-surface-2">
            <Copy className="h-4 w-4" /> Copia link
          </button>
          <a href="https://apps.apple.com/app/vlc-media-player/id650377962" target="_blank" rel="noopener noreferrer" className="flex items-center gap-1 text-sm font-semibold text-accent-strong underline">
            Installa VLC <ExternalLink className="h-4 w-4" />
          </a>
        </div>
        {copyStatus === 'copied' && <p role="status" className="text-sm text-accent-strong">Link copiato.</p>}
        {copyStatus === 'error' && (
          <div role="alert" className="w-full text-sm text-label-secondary">
            <p>Impossibile copiare automaticamente: seleziona e copia il link qui sotto.</p>
            <input aria-label="Link diretto dello stream" readOnly value={directUrl} onFocus={(event) => event.currentTarget.select()} className="mt-2 w-full rounded-lg border border-separator bg-surface-1 p-2 text-label" />
          </div>
        )}
        <p className="text-xs text-label-secondary">In VLC l'avanzamento non viene salvato in Continua a guardare.</p>
      </div>
    </section>
  );
};
