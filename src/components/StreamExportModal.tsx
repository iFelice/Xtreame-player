import React, { useState } from 'react';
import { Copy, Check, ExternalLink, Download, Play, Terminal, Info, X } from 'lucide-react';

interface StreamExportModalProps {
  isOpen: boolean;
  onClose: () => void;
  title: string;
  streamUrl: string;
  type?: 'movie' | 'episode' | 'live';
  containerExtension?: string;
}

export const StreamExportModal: React.FC<StreamExportModalProps> = ({
  isOpen,
  onClose,
  title,
  streamUrl,
  type = 'movie',
  containerExtension = 'mp4',
}) => {
  const [copiedUrl, setCopiedUrl] = useState(false);
  const [copiedCurl, setCopiedCurl] = useState(false);
  const [copiedVlcCmd, setCopiedVlcCmd] = useState(false);

  if (!isOpen) return null;

  // Extract raw direct stream URL if it has proxy wrapper
  let directUrl = streamUrl;
  if (directUrl.includes('/api/proxy/stream?url=')) {
    const match = directUrl.match(/url=([^&]+)/);
    if (match && match[1]) {
      directUrl = decodeURIComponent(match[1]);
    }
  }

  const cleanFilename = (title || 'video').replace(/[/\\?%*:|"<>]/g, '_').trim();
  const ext = (containerExtension || 'mp4').toLowerCase().replace(/^\./, '');
  const finalFilename = `${cleanFilename}.${ext}`;

  // VLC Protocol URL to open directly in VLC media player on Mac / PC
  const vlcProtocolUrl = `vlc://${directUrl}`;

  // Mac Terminal download command
  const curlDownloadCmd = `curl -L -o "${finalFilename}" "${directUrl}"`;
  
  // Mac Terminal VLC play command
  const vlcCliCmd = `/Applications/VLC.app/Contents/MacOS/VLC "${directUrl}"`;

  const handleCopy = async (text: string, type: 'url' | 'curl' | 'vlc') => {
    try {
      await navigator.clipboard.writeText(text);
    } catch {
      const el = document.createElement('textarea');
      el.value = text;
      document.body.appendChild(el);
      el.select();
      document.execCommand('copy');
      document.body.removeChild(el);
    }

    if (type === 'url') {
      setCopiedUrl(true);
      setTimeout(() => setCopiedUrl(false), 2500);
    } else if (type === 'curl') {
      setCopiedCurl(true);
      setTimeout(() => setCopiedCurl(false), 2500);
    } else if (type === 'vlc') {
      setCopiedVlcCmd(true);
      setTimeout(() => setCopiedVlcCmd(false), 2500);
    }
  };

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center p-3 sm:p-4 bg-black/85 backdrop-blur-md animate-in fade-in">
      <div className="bg-zinc-950 border border-zinc-800 rounded-3xl max-w-2xl w-full overflow-hidden shadow-2xl flex flex-col max-h-[90vh]">
        {/* Modal Header */}
        <div className="p-4 sm:p-5 border-b border-zinc-800 flex items-center justify-between bg-zinc-900/60">
          <div className="flex items-center gap-3 min-w-0">
            <div className="p-2.5 rounded-2xl bg-cyan-500/10 text-cyan-400 border border-cyan-500/20 shrink-0">
              <Download className="w-6 h-6" />
            </div>
            <div className="min-w-0">
              <h3 className="text-base sm:text-lg font-bold text-white truncate">
                Estrapola Link & Strumenti Download
              </h3>
              <p className="text-xs text-zinc-400 truncate">{title}</p>
            </div>
          </div>
          <button
            onClick={onClose}
            className="p-2 text-zinc-400 hover:text-white rounded-xl hover:bg-zinc-800 transition cursor-pointer"
          >
            <X className="w-5 h-5" />
          </button>
        </div>

        {/* Modal Content */}
        <div className="p-4 sm:p-6 overflow-y-auto space-y-5 text-sm">
          {/* Direct Stream URL */}
          <div className="space-y-2">
            <label className="text-xs font-bold text-zinc-400 uppercase tracking-wider flex items-center gap-1.5">
              <span>Link Diretto Flusso Multimediale</span>
            </label>
            <div className="flex items-center gap-2">
              <input
                type="text"
                readOnly
                value={directUrl}
                className="flex-1 bg-zinc-900 border border-zinc-800 rounded-2xl px-3.5 py-2.5 text-xs text-zinc-300 font-mono focus:outline-hidden select-all"
              />
              <button
                type="button"
                onClick={() => handleCopy(directUrl, 'url')}
                className="px-4 py-2.5 rounded-2xl bg-cyan-600 hover:bg-cyan-500 text-white font-bold text-xs sm:text-sm flex items-center gap-2 transition shrink-0 cursor-pointer shadow-md"
              >
                {copiedUrl ? <Check className="w-4 h-4 text-white" /> : <Copy className="w-4 h-4" />}
                {copiedUrl ? 'Copiato!' : 'Copia Link'}
              </button>
            </div>
          </div>

          {/* VLC Player Integration */}
          <div className="p-4 rounded-2xl bg-zinc-900/60 border border-zinc-800 space-y-3">
            <div className="flex items-center gap-2.5 text-orange-400 font-bold">
              <Play className="w-4 h-4" />
              <span>Riproduci o Scarica con VLC</span>
            </div>
            <p className="text-xs text-zinc-400 leading-relaxed">
              Puoi incollare questo link direttamente in <strong>VLC Media Player</strong> (Menu <em>File &rarr; Apri Flusso di Rete</em>) oppure aprirlo direttamente se VLC è associato ai protocolli di sistema:
            </p>
            <div className="flex flex-wrap gap-2 pt-1">
              <a
                href={vlcProtocolUrl}
                className="px-4 py-2 rounded-xl bg-orange-600 hover:bg-orange-500 text-white font-bold text-xs flex items-center gap-2 transition shadow-md"
              >
                <ExternalLink className="w-3.5 h-3.5" />
                Apri direttamente in VLC
              </a>
              <button
                type="button"
                onClick={() => handleCopy(vlcCliCmd, 'vlc')}
                className="px-3.5 py-2 rounded-xl bg-zinc-800 hover:bg-zinc-700 text-zinc-200 font-semibold text-xs flex items-center gap-1.5 transition cursor-pointer border border-zinc-700"
              >
                {copiedVlcCmd ? <Check className="w-3.5 h-3.5 text-emerald-400" /> : <Terminal className="w-3.5 h-3.5" />}
                {copiedVlcCmd ? 'Comando Copiato!' : 'Copia comando Terminale VLC'}
              </button>
            </div>
          </div>

          {/* Direct Download via Mac Terminal (cURL) */}
          <div className="p-4 rounded-2xl bg-zinc-900/60 border border-zinc-800 space-y-3">
            <div className="flex items-center gap-2.5 text-emerald-400 font-bold">
              <Terminal className="w-4 h-4" />
              <span>Download Diretto via Terminale Mac / Linux</span>
            </div>
            <p className="text-xs text-zinc-400 leading-relaxed">
              Apri l'app <strong>Terminale</strong> sul Mac e incolla il seguente comando per scaricare il file ad alta velocità direttamente nella cartella corrente:
            </p>
            <div className="flex items-center gap-2">
              <code className="flex-1 bg-black/70 border border-zinc-800 rounded-xl px-3 py-2 text-[11px] text-emerald-300 font-mono truncate select-all">
                {curlDownloadCmd}
              </code>
              <button
                type="button"
                onClick={() => handleCopy(curlDownloadCmd, 'curl')}
                className="px-3.5 py-2 rounded-xl bg-zinc-800 hover:bg-zinc-700 text-zinc-200 font-bold text-xs flex items-center gap-1.5 transition cursor-pointer shrink-0 border border-zinc-700"
              >
                {copiedCurl ? <Check className="w-3.5 h-3.5 text-emerald-400" /> : <Copy className="w-3.5 h-3.5" />}
                {copiedCurl ? 'Copiato!' : 'Copia'}
              </button>
            </div>
          </div>

          {/* Info note */}
          <div className="flex items-start gap-2.5 p-3 rounded-xl bg-blue-950/30 border border-blue-900/40 text-blue-300 text-xs leading-relaxed">
            <Info className="w-4 h-4 shrink-0 mt-0.5" />
            <span>
              I server IPTV utilizzano flussi multimediali diretti. Puoi usare qualsiasi download manager (es. Free Download Manager, JDownloader o VLC) incollando il link per completare il download.
            </span>
          </div>
        </div>

        {/* Modal Footer */}
        <div className="p-4 border-t border-zinc-800 bg-zinc-900/40 flex justify-end">
          <button
            onClick={onClose}
            className="px-5 py-2.5 rounded-2xl bg-zinc-800 hover:bg-zinc-700 text-white font-bold text-xs sm:text-sm transition cursor-pointer"
          >
            Chiudi
          </button>
        </div>
      </div>
    </div>
  );
};
