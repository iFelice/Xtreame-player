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
    <div className="fixed inset-0 z-50 bg-black/85 backdrop-blur-xs flex items-center justify-center p-3 sm:p-5 overflow-y-auto animate-in fade-in duration-200">
      <div className="relative w-full max-w-3xl bg-zinc-950 border border-zinc-800 rounded-3xl overflow-hidden shadow-2xl my-auto">
        {/* Header */}
        <div className="px-5 py-4 bg-gradient-to-r from-emerald-950/70 via-zinc-900 to-zinc-900 border-b border-zinc-800 flex items-center justify-between gap-4">
          <div className="flex items-center gap-2.5">
            <div className="w-9 h-9 rounded-xl bg-emerald-500/20 text-emerald-400 border border-emerald-500/30 flex items-center justify-center shrink-0">
              <Link2 className="w-5 h-5" />
            </div>
            <div>
              <h2 className="text-sm sm:text-base font-bold text-white flex items-center gap-2">
                Incolla Link Streaming o Xtream Codes
              </h2>
              <p className="text-[11px] text-zinc-400">
                Inserisci un link M3U8, MPEG-TS, MP4 o le credenziali del tuo abbonamento
              </p>
            </div>
          </div>

          <button
            onClick={onClose}
            className="p-1.5 text-zinc-400 hover:text-white rounded-lg hover:bg-zinc-800 transition cursor-pointer"
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
