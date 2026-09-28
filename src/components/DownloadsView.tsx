import React, { useState, useEffect, useMemo } from 'react';
import {
  Download,
  Film,
  Tv,
  Play,
  Trash2,
  ExternalLink,
  Copy,
  Check,
  Search,
  HardDrive,
  Info,
  Clock,
  Sparkles,
} from 'lucide-react';
import { storage, DownloadItem } from '../services/storage';
import { PlayableMediaItem } from '../types/xtream';

interface DownloadsViewProps {
  onPlay: (item: PlayableMediaItem) => void;
  onExploreContent?: (tab: 'movies' | 'series') => void;
}

export const DownloadsView: React.FC<DownloadsViewProps> = ({
  onPlay,
  onExploreContent,
}) => {
  const [downloads, setDownloads] = useState<DownloadItem[]>([]);
  const [searchQuery, setSearchQuery] = useState<string>('');
  const [filterType, setFilterType] = useState<'all' | 'movie' | 'episode'>('all');
  const [copiedId, setCopiedId] = useState<string | null>(null);

  const loadDownloads = () => {
    setDownloads(storage.getDownloads());
  };

  useEffect(() => {
    loadDownloads();
  }, []);

  const handleCopyLink = (item: DownloadItem) => {
    const fullUrl = new URL(item.downloadUrl, window.location.origin).toString();
    navigator.clipboard.writeText(fullUrl);
    setCopiedId(item.id);
    setTimeout(() => setCopiedId(null), 2000);
  };

  const handleRemove = (id: string) => {
    storage.removeDownload(id);
    loadDownloads();
  };

  const handleClearAll = () => {
    if (window.confirm('Sei sicuro di voler cancellare la cronologia dei download? (I file già scaricati rimarranno sul tuo computer)')) {
      storage.clearDownloads();
      loadDownloads();
    }
  };

  const handlePlayDownload = (item: DownloadItem) => {
    const media: PlayableMediaItem = {
      id: item.id,
      title: item.seriesName
        ? `${item.seriesName} - S${String(item.seasonNum || 1).padStart(2, '0')}E${String(item.episodeNum || 1).padStart(2, '0')}: ${item.title}`
        : item.title,
      type: item.type === 'episode' ? 'series' : 'movie',
      streamUrl: item.downloadUrl.replace('&download=1', ''),
      poster: item.poster,
      containerExtension: item.containerExtension,
      categoryName: 'I Miei Download',
    };
    onPlay(media);
  };

  const filteredItems = useMemo(() => {
    return downloads.filter((item) => {
      const matchesSearch =
        item.title.toLowerCase().includes(searchQuery.toLowerCase()) ||
        (item.seriesName && item.seriesName.toLowerCase().includes(searchQuery.toLowerCase()));
      const matchesType =
        filterType === 'all' ||
        (filterType === 'movie' && item.type === 'movie') ||
        (filterType === 'episode' && (item.type === 'episode' || item.type === 'series'));
      return matchesSearch && matchesType;
    });
  }, [downloads, searchQuery, filterType]);

  const formatDate = (ts: number) => {
    return new Date(ts).toLocaleString('it-IT', {
      day: '2-digit',
      month: 'short',
      year: 'numeric',
      hour: '2-digit',
      minute: '2-digit',
    });
  };

  return (
    <div className="space-y-6 animate-in fade-in duration-300">
      {/* Header and Controls */}
      <div className="bg-zinc-900/60 border border-zinc-800 rounded-3xl p-5 sm:p-6 shadow-xl space-y-4">
        <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-4">
          <div className="flex items-center gap-3">
            <div className="w-12 h-12 rounded-2xl bg-cyan-500/10 text-cyan-400 border border-cyan-500/20 flex items-center justify-center">
              <Download className="w-6 h-6" />
            </div>
            <div>
              <div className="flex items-center gap-2">
                <h1 className="text-xl font-bold text-white tracking-tight">I Miei Download</h1>
                <span className="px-2.5 py-0.5 rounded-full bg-cyan-950 text-cyan-400 text-xs font-semibold border border-cyan-800/60">
                  {downloads.length} file
                </span>
              </div>
              <p className="text-xs text-zinc-400 mt-0.5">
                Archivio dei video scaricati per la visualizzazione offline e riproduzione locale
              </p>
            </div>
          </div>

          {downloads.length > 0 && (
            <button
              onClick={handleClearAll}
              className="flex items-center gap-1.5 px-3 py-1.5 rounded-xl bg-zinc-950 hover:bg-rose-950/60 text-zinc-400 hover:text-rose-400 border border-zinc-800 hover:border-rose-800/50 text-xs font-medium transition cursor-pointer self-start sm:self-auto"
            >
              <Trash2 className="w-3.5 h-3.5" />
              Svuota Cronologia
            </button>
          )}
        </div>

        {/* Filter and Search Bar */}
        <div className="flex flex-col sm:flex-row items-stretch sm:items-center justify-between gap-3 pt-2 border-t border-zinc-800/80">
          <div className="relative flex-1 max-w-md">
            <Search className="absolute left-3 top-2.5 w-4 h-4 text-zinc-500" />
            <input
              type="text"
              placeholder="Cerca tra i download per titolo..."
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
              className="w-full pl-9 pr-4 py-2 bg-zinc-950 border border-zinc-800 rounded-xl text-xs sm:text-sm text-zinc-200 placeholder-zinc-500 focus:outline-hidden focus:border-cyan-500"
            />
          </div>

          <div className="flex items-center gap-1.5 overflow-x-auto pb-1 sm:pb-0">
            <button
              onClick={() => setFilterType('all')}
              className={`px-3 py-1.5 rounded-xl text-xs font-medium transition cursor-pointer shrink-0 ${
                filterType === 'all'
                  ? 'bg-cyan-600 text-white shadow-md'
                  : 'bg-zinc-950 text-zinc-400 hover:text-zinc-200 border border-zinc-800'
              }`}
            >
              Tutti ({downloads.length})
            </button>
            <button
              onClick={() => setFilterType('movie')}
              className={`flex items-center gap-1 px-3 py-1.5 rounded-xl text-xs font-medium transition cursor-pointer shrink-0 ${
                filterType === 'movie'
                  ? 'bg-emerald-600 text-white shadow-md'
                  : 'bg-zinc-950 text-zinc-400 hover:text-zinc-200 border border-zinc-800'
              }`}
            >
              <Film className="w-3 h-3" />
              Film ({downloads.filter((d) => d.type === 'movie').length})
            </button>
            <button
              onClick={() => setFilterType('episode')}
              className={`flex items-center gap-1 px-3 py-1.5 rounded-xl text-xs font-medium transition cursor-pointer shrink-0 ${
                filterType === 'episode'
                  ? 'bg-blue-600 text-white shadow-md'
                  : 'bg-zinc-950 text-zinc-400 hover:text-zinc-200 border border-zinc-800'
              }`}
            >
              <Tv className="w-3 h-3" />
              Serie TV ({downloads.filter((d) => d.type === 'episode' || d.type === 'series').length})
            </button>
          </div>
        </div>
      </div>

      {/* Info helper banner */}
      <div className="flex items-start gap-3 p-4 rounded-2xl bg-zinc-900/50 border border-zinc-800/80 text-xs text-zinc-300">
        <HardDrive className="w-5 h-5 text-cyan-400 shrink-0 mt-0.5" />
        <div className="space-y-1">
          <p className="font-semibold text-zinc-200">Dove si trovano i file scaricati?</p>
          <p className="text-zinc-400 leading-relaxed">
            I film e le serie scaricati vengono salvati direttamente dal tuo browser nella cartella standard{' '}
            <strong className="text-zinc-200">Download</strong> del tuo computer (Windows, Mac, Linux) o dello smartphone. Puoi guardarli offline con qualsiasi lettore video (VLC, Windows Media Player) o riprodurli direttamente qui cliccando su <strong className="text-cyan-300">Riproduci</strong>.
          </p>
        </div>
      </div>

      {/* Downloads List */}
      {filteredItems.length === 0 ? (
        <div className="text-center py-16 px-4 bg-zinc-900/40 rounded-3xl border border-zinc-800/80 space-y-4">
          <div className="w-16 h-16 mx-auto rounded-3xl bg-zinc-800/60 flex items-center justify-center text-zinc-500">
            <Download className="w-8 h-8 opacity-40" />
          </div>
          <div>
            <h3 className="text-base font-semibold text-zinc-300">Nessun download trovato</h3>
            <p className="text-xs text-zinc-500 mt-1 max-w-md mx-auto">
              {searchQuery
                ? 'Nessun file corrisponde alla ricerca corrente.'
                : 'Non hai ancora scaricato nessun film o episodio. Clicca sul pulsante "Scarica" presente sulle schede dei film o accanto agli episodi delle serie.'}
            </p>
          </div>

          {onExploreContent && !searchQuery && (
            <div className="flex items-center justify-center gap-3 pt-2">
              <button
                onClick={() => onExploreContent('movies')}
                className="px-4 py-2 rounded-xl bg-emerald-600 hover:bg-emerald-500 text-white text-xs font-semibold flex items-center gap-1.5 transition cursor-pointer"
              >
                <Film className="w-3.5 h-3.5" />
                Sfoglia Film
              </button>
              <button
                onClick={() => onExploreContent('series')}
                className="px-4 py-2 rounded-xl bg-blue-600 hover:bg-blue-500 text-white text-xs font-semibold flex items-center gap-1.5 transition cursor-pointer"
              >
                <Tv className="w-3.5 h-3.5" />
                Sfoglia Serie TV
              </button>
            </div>
          )}
        </div>
      ) : (
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-3.5">
          {filteredItems.map((item) => (
            <div
              key={item.id}
              className="group bg-zinc-950 border border-zinc-800/90 hover:border-cyan-500/50 rounded-2xl p-3 flex gap-3.5 shadow-lg transition-all duration-200"
            >
              {/* Poster Thumbnail */}
              <div
                onClick={() => handlePlayDownload(item)}
                className="relative w-20 aspect-2/3 rounded-xl overflow-hidden bg-zinc-900 shrink-0 cursor-pointer group-hover:scale-102 transition"
              >
                {item.poster ? (
                  <img
                    src={item.poster}
                    alt={item.title}
                    className="w-full h-full object-cover"
                    loading="lazy"
                    onError={(e) => {
                      (e.target as HTMLElement).style.display = 'none';
                    }}
                  />
                ) : (
                  <div className="w-full h-full flex items-center justify-center text-zinc-600">
                    {item.type === 'movie' ? <Film className="w-6 h-6" /> : <Tv className="w-6 h-6" />}
                  </div>
                )}
                <div className="absolute inset-0 bg-black/50 opacity-0 group-hover:opacity-100 flex items-center justify-center transition">
                  <Play className="w-6 h-6 fill-white text-white" />
                </div>
              </div>

              {/* Info & Actions */}
              <div className="flex-1 flex flex-col justify-between min-w-0">
                <div>
                  <div className="flex items-center gap-1.5">
                    <span
                      className={`text-[9px] uppercase font-bold px-1.5 py-0.5 rounded ${
                        item.type === 'movie'
                          ? 'bg-emerald-950 text-emerald-400 border border-emerald-800/50'
                          : 'bg-blue-950 text-blue-400 border border-blue-800/50'
                      }`}
                    >
                      {item.type === 'movie' ? 'Film' : 'Episodio'}
                    </span>
                    <span className="text-[10px] font-mono text-zinc-400 uppercase">
                      .{item.containerExtension || 'mp4'}
                    </span>
                  </div>

                  {item.seriesName && (
                    <div className="text-[11px] text-cyan-400 font-semibold mt-1 truncate">
                      {item.seriesName}
                    </div>
                  )}

                  <h3
                    className="text-xs font-semibold text-zinc-200 group-hover:text-cyan-300 transition-colors line-clamp-2 mt-0.5"
                    title={item.title}
                  >
                    {item.seriesName && item.seasonNum !== undefined && item.episodeNum !== undefined
                      ? `S${String(item.seasonNum).padStart(2, '0')}E${String(item.episodeNum).padStart(2, '0')} - ${item.title}`
                      : item.title}
                  </h3>

                  <div className="flex items-center gap-1 text-[10px] text-zinc-400 mt-1">
                    <Clock className="w-3 h-3 text-zinc-400 shrink-0" />
                    <span>{formatDate(item.downloadedAt)}</span>
                  </div>
                </div>

                {/* Buttons row */}
                <div className="flex items-center gap-1.5 pt-2 border-t border-zinc-900 mt-2">
                  <button
                    onClick={() => handlePlayDownload(item)}
                    className="flex-1 py-1.5 px-2 rounded-lg bg-cyan-600 hover:bg-cyan-500 text-white text-[11px] font-semibold flex items-center justify-center gap-1 transition cursor-pointer"
                  >
                    <Play className="w-3 h-3 fill-white" />
                    Riproduci
                  </button>

                  <a
                    href={item.downloadUrl}
                    download
                    className="p-1.5 rounded-lg bg-zinc-900 hover:bg-zinc-800 text-zinc-300 hover:text-cyan-400 border border-zinc-800 transition"
                    title="Riscarica file"
                  >
                    <Download className="w-3.5 h-3.5" />
                  </a>

                  <button
                    onClick={() => handleCopyLink(item)}
                    className="p-1.5 rounded-lg bg-zinc-900 hover:bg-zinc-800 text-zinc-300 hover:text-cyan-400 border border-zinc-800 transition cursor-pointer"
                    title="Copia link download"
                  >
                    {copiedId === item.id ? (
                      <Check className="w-3.5 h-3.5 text-emerald-400" />
                    ) : (
                      <Copy className="w-3.5 h-3.5" />
                    )}
                  </button>

                  <button
                    onClick={() => handleRemove(item.id)}
                    className="p-1.5 rounded-lg bg-zinc-900 hover:bg-rose-950 text-zinc-400 hover:text-rose-400 border border-zinc-800 transition cursor-pointer"
                    title="Rimuovi dalla cronologia"
                  >
                    <Trash2 className="w-3.5 h-3.5" />
                  </button>
                </div>
              </div>
            </div>
          ))}
        </div>
      )}
    </div>
  );
};
