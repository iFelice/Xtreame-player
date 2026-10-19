import React, { useMemo, useState } from 'react';
import { Tv, Star, Play, Radio } from 'lucide-react';
import { XtreamLiveStream } from '../types/xtream';
import { getSecureImageUrl } from '../utils/imageUrl';
import { RemoteImage } from './RemoteImage';

// Smart Channel Logo component with styled fallback initials to avoid black boxes
export const ChannelLogo: React.FC<{ icon?: string; name: string; size?: 'sm' | 'md' }> = ({
  icon,
  name,
  size = 'md',
}) => {
  const [hasError, setHasError] = useState(false);

  const initials = useMemo(() => {
    const cleaned = name
      .replace(/\[.*?\]|\(.*?\)|HD|FHD|4K|UHD|IT:|ITA:|IT|HEVC|H\.265/gi, '')
      .trim();
    const parts = cleaned.split(/\s+/).filter(Boolean);
    if (parts.length >= 2) {
      return (parts[0][0] + parts[1][0]).toUpperCase();
    }
    return (cleaned.slice(0, 3) || 'TV').toUpperCase();
  }, [name]);

  if (!icon || hasError) {
    return (
      <div className="w-full h-full flex flex-col items-center justify-center   text-danger font-bold  rounded-xl shadow-inner border border-separator select-none p-1">
        <span className={`${size === 'sm' ? 'text-xs sm:text-sm' : 'text-sm sm:text-base'} tracking-wider leading-none font-bold`}>
          {initials}
        </span>
        <Tv className={`${size === 'sm' ? 'w-3.5 h-3.5' : 'w-5 h-5'} text-label-tertiary mt-1 opacity-70`} />
      </div>
    );
  }

  return (
    <RemoteImage
      src={getSecureImageUrl(icon)}
      alt={name}
      referrerPolicy="no-referrer"
      loading="lazy"
      onError={() => setHasError(true)}
      onRemoteError={() => setHasError(true)}
      className="w-full h-full object-contain"
    />
  );
};

interface LiveChannelListRowProps {
  stream: XtreamLiveStream;
  index: number;
  isFavorite: boolean;
  isPlaying: boolean;
  onPlay: (stream: XtreamLiveStream) => void;
  onToggleFavorite: (stream: XtreamLiveStream) => void;
}

export const LiveChannelListRow: React.FC<LiveChannelListRowProps> = ({
  stream,
  index,
  isFavorite,
  isPlaying,
  onPlay,
  onToggleFavorite,
}) => {
  return (
    <div
      id={`live-channel-${stream.stream_id}`}
      data-media-index={index + 1}
      tabIndex={0}
      onClick={() => onPlay(stream)}
      className={`group flex items-center justify-between p-3.5 sm:p-4 rounded-2xl transition-all cursor-pointer gap-3 sm:gap-5 shadow-sm scroll-mt-2 ${
        isPlaying
          ? 'bg-live/15 border-2 border-live ring-2 ring-live/40 shadow-2xl scale-[1.01]'
          : 'bg-surface-0/60 hover:bg-surface-1 border border-separator/90 hover:border-live/50'
      }`}
    >
      <div className="flex items-center gap-3.5 sm:gap-5 min-w-0 flex-1">
        <span className="live-row-desktop-number hidden md:block text-sm sm:text-base font-bold text-label-secondary w-8 sm:w-10 text-right shrink-0">
          {index + 1}
        </span>
        <div className="w-12 h-12 sm:w-14 sm:h-14 rounded-2xl bg-surface-0 border border-separator p-1 flex items-center justify-center overflow-hidden shrink-0 shadow-inner">
          <ChannelLogo icon={stream.stream_icon} name={stream.name} size="sm" />
        </div>
        {/* Mobile center: name on two lines max, dot + id below. */}
        <div className="live-row-mobile md:hidden min-w-0 flex-1">
          <h4 className="text-base font-black text-label line-clamp-2 group-hover:text-live transition">
            {stream.name}
          </h4>
          <div className="flex items-center gap-1.5 mt-1">
            <span className="w-2 h-2 rounded-full bg-live shrink-0" aria-hidden="true"></span>
            <span className="text-xs text-label-secondary font-semibold">#{stream.stream_id}</span>
          </div>
        </div>
        {/* Desktop / TV center: unchanged. */}
        <div className="live-row-desktop-block hidden md:block min-w-0 flex-1">
          <div className="flex items-center gap-2.5 flex-wrap">
            <h4 className="text-base sm:text-lg font-black text-label truncate group-hover:text-live transition">
              {stream.name}
            </h4>
            {isPlaying && (
              <span className="px-2.5 py-0.5 rounded-full bg-live text-on-accent text-xs font-bold uppercase tracking-wider animate-pulse flex items-center gap-1.5 shrink-0 shadow-md">
                <Radio className="w-3.5 h-3.5" /> In Onda
              </span>
            )}
          </div>
          <div className="flex items-center gap-3 text-xs sm:text-sm text-label-secondary  mt-1 font-semibold">
            <span>ID #{stream.stream_id}</span>
          </div>
        </div>
      </div>

      <div className="flex items-center gap-2.5 shrink-0">
        <span className="live-row-desktop-flex hidden md:flex items-center gap-1.5 px-3 py-1 rounded-xl bg-live/80 text-on-accent text-xs sm:text-sm font-bold border border-live/40">
          <span className="w-2.5 h-2.5 rounded-full bg-on-accent animate-pulse"></span>
          LIVE
        </span>
        <button
          onClick={(e) => {
            e.stopPropagation();
            onToggleFavorite(stream);
          }}
          className="p-2.5 rounded-xl text-label-secondary hover:text-favorite hover:bg-surface-1 transition cursor-pointer"
          title="Aggiungi ai Preferiti"
        >
          <Star className={`w-5 h-5 ${isFavorite ? 'text-favorite fill-favorite' : ''}`} />
        </button>
        {/* Mobile play: round 44x44 icon-only button. */}
        <button
          onClick={(e) => {
            e.stopPropagation();
            onPlay(stream);
          }}
          aria-label={`Guarda ${stream.name}`}
          className="live-row-mobile md:hidden w-11 h-11 rounded-full bg-live hover:brightness-110 text-on-accent flex items-center justify-center shrink-0 shadow-md transition cursor-pointer"
        >
          <Play className="w-5 h-5 fill-current ml-0.5" />
        </button>
        {/* Desktop / TV play: unchanged. */}
        <button
          onClick={(e) => {
            e.stopPropagation();
            onPlay(stream);
          }}
          className={`live-row-desktop-flex hidden md:flex px-4 sm:px-6 py-2.5 rounded-xl text-sm sm:text-base font-extrabold items-center gap-2 shadow-md transition cursor-pointer ${
            isPlaying
              ? 'bg-live text-on-accent '
              : 'bg-live hover:brightness-110 text-on-accent '
          }`}
        >
          <Play className="w-4 h-4 fill-current" />
          <span>Guarda</span>
        </button>
      </div>
    </div>
  );
};
