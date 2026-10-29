import React from 'react';
import { X, Link2 } from 'lucide-react';
import { UrlInputBar } from './UrlInputBar';
import { XtreamParsedUrl, PlayableMediaItem } from '../types/xtream';

interface PasteLinkModalProps {
  onClose: () => void;
  onPlayDirect: (media: PlayableMediaItem) => void;
  onConnectCatalog: (parsed: XtreamParsedUrl) => void;
  currentConnectedServer?: string | null;
  isLoading?: boolean;
}

export const PasteLinkModal: React.FC<PasteLinkModalProps> = ({
  onClose,
  onPlayDirect,
  onConnectCatalog,
  currentConnectedServer,
  isLoading = false,
}) => {
  return (
    <div className="fixed inset-0 z-50 bg-black/50 flex items-center justify-center safe-area-overlay overflow-y-auto animate-in fade-in duration-200">
      <div className="relative w-full max-w-3xl glass border border-glass-edge rounded-3xl overflow-hidden shadow-2xl my-auto">
        {/* Header */}
        <div className="px-5 py-4 border-b border-separator flex items-center justify-between gap-4">
          <div className="flex items-center gap-2.5">
            <div className="w-9 h-9 rounded-xl bg-accent/20 text-accent-strong border border-accent/30 flex items-center justify-center shrink-0">
              <Link2 className="w-5 h-5" />
            </div>
            <div>
              <h2 className="text-sm sm:text-base font-bold text-label flex items-center gap-2">
                Incolla Link Streaming o Xtream Codes
              </h2>
              <p className="text-[11px] text-label-secondary">
                Inserisci un link M3U8, MPEG-TS, MP4 o le credenziali del tuo abbonamento
              </p>
            </div>
          </div>

          <button
            onClick={onClose}
            className="p-1.5 text-label-secondary hover:text-label rounded-lg hover:bg-surface-1 transition cursor-pointer"
            title="Chiudi"
          >
            <X className="w-5 h-5" />
          </button>
        </div>

        {/* Modal Body with UrlInputBar */}
        <div className="p-4 sm:p-6 max-h-[80vh] overflow-y-auto">
          <UrlInputBar
            onPlayDirect={(media) => {
              onPlayDirect(media);
              onClose();
            }}
            onConnectCatalog={(parsed) => {
              onConnectCatalog(parsed);
              onClose();
            }}
            currentConnectedServer={currentConnectedServer}
            isLoading={isLoading}
          />
        </div>
      </div>
    </div>
  );
};
