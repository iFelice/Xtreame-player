export type LiveStreamFormat = 'm3u8' | 'ts';
export type PlaybackTarget = 'web' | 'webos';

export function isPublicMockStream(url: string): boolean {
  return /\/public_\d+(?:\.|[/?]|$)/i.test(url);
}

export function canFallbackToMpegTs(mediaType: 'live' | 'movie' | 'series' | 'direct', url: string): boolean {
  return mediaType === 'live' && !isPublicMockStream(url);
}

export function normalizeLiveStreamUrl(url: string, requestedFormat: LiveStreamFormat): string {
  const format = isPublicMockStream(url) ? 'm3u8' : requestedFormat;
  if (format === 'm3u8') return url.replace(/\.ts([?#]|$)/i, '.m3u8$1');
  return url.replace(/\.m3u8([?#]|$)/i, '.ts$1');
}

/** LG webOS plays the first live attempt with its native MPEG-TS decoder. */
export function defaultLiveStreamFormat(target: PlaybackTarget): LiveStreamFormat {
  return target === 'webos' ? 'ts' : 'm3u8';
}

/** A format switch is local to one live channel; a new channel starts fresh. */
export function liveFormatForChannel(
  target: PlaybackTarget,
  previousChannelId: string | null,
  nextChannelId: string | null,
  previousFormat: LiveStreamFormat,
): LiveStreamFormat {
  if (target === 'webos' && nextChannelId !== previousChannelId) return 'ts';
  return previousFormat;
}

export type LiveFormatFallback = { kind: 'retry'; format: LiveStreamFormat } | { kind: 'fail' };

/** Exactly one automatic format retry, with webOS deliberately starting at .ts. */
export function nextLiveFormatAfterFailure(options: {
  target: PlaybackTarget;
  currentFormat: LiveStreamFormat;
  fallbackAlreadyTried: boolean;
  canSwitchFormat: boolean;
}): LiveFormatFallback {
  const { target, currentFormat, fallbackAlreadyTried, canSwitchFormat } = options;
  if (!canSwitchFormat || fallbackAlreadyTried) return { kind: 'fail' };
  if (target === 'webos') {
    // A manually selected HLS stream must not bounce back to TS after failure.
    return currentFormat === 'ts' ? { kind: 'retry', format: 'm3u8' } : { kind: 'fail' };
  }
  // Retain the existing web order: HLS may make one MPEG-TS retry.
  return currentFormat === 'm3u8' ? { kind: 'retry', format: 'ts' } : { kind: 'fail' };
}

/** Force HLS for Xtream live URLs, including older extensionless saved links. */
export function appleLiveStreamUrl(url: string): string {
  const normalized = normalizeLiveStreamUrl(url, 'm3u8');
  try {
    const parsed = new URL(normalized);
    const parts = parsed.pathname.split('/').filter(Boolean);
    const isXtreamLive = (parts.length === 4 && parts[0].toLowerCase() === 'live') || parts.length === 3;
    if (isXtreamLive && !/\.m3u8$/i.test(parts[parts.length - 1])) {
      const last = parts[parts.length - 1];
      parsed.pathname = `${parsed.pathname.slice(0, -last.length)}${last.replace(/\.[^/.]+$/, '')}.m3u8`;
      return parsed.toString();
    }
  } catch {
    // Non-URL inputs are left unchanged apart from the normal .ts replacement.
  }
  return normalized;
}
