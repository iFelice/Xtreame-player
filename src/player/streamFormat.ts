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
  if (format === 'm3u8') return url.replace(/\.ts(\?|$)/i, '.m3u8$1');
  return url.replace(/\.m3u8(\?|$)/i, '.ts$1');
}

/**
 * Live format the player starts with.
 *
 * webOS: `.ts` because the TV's native decoder plays it directly (verified on
 * the LG OLED C2), which skips hls.js entirely and keeps the single allowed
 * server connection for the media itself. Web keeps the historical `.m3u8`.
 */
export function defaultLiveStreamFormat(target: PlaybackTarget): LiveStreamFormat {
  return target === 'webos' ? 'ts' : 'm3u8';
}

/** Manual format choices are scoped to the currently playing live channel. */
export function liveFormatForChannel(
  target: PlaybackTarget,
  previousChannelId: string | null,
  nextChannelId: string | null,
  previousFormat: LiveStreamFormat
): LiveStreamFormat {
  if (target === 'webos' && nextChannelId !== previousChannelId) return 'ts';
  return previousFormat;
}

export type LiveFormatFallback =
  | { kind: 'retry'; format: LiveStreamFormat }
  | { kind: 'fail' };

/**
 * What to do when a live stream failed to start: exactly one automatic
 * attempt with the other container, then the error message. Pure so the
 * order (webOS ts → m3u8, web m3u8 → ts) and the "only once" rule stay
 * covered by unit tests instead of a real TV session.
 */
export function nextLiveFormatAfterFailure(options: {
  target: PlaybackTarget;
  currentFormat: LiveStreamFormat;
  fallbackAlreadyTried: boolean;
  canSwitchFormat: boolean;
}): LiveFormatFallback {
  const { target, currentFormat, fallbackAlreadyTried, canSwitchFormat } = options;
  if (!canSwitchFormat) return { kind: 'fail' };

  if (target === 'webos') {
    // The .ts attempt gets exactly one automatic .m3u8 retry; a manually
    // chosen .m3u8 that fails simply reports the error.
    if (fallbackAlreadyTried || currentFormat !== 'ts') return { kind: 'fail' };
    return { kind: 'retry', format: 'm3u8' };
  }

  // Web keeps its historical behaviour: .m3u8 falls back once to MPEG-TS;
  // an error on .ts is terminal (otherwise it would loop on the same URL).
  if (fallbackAlreadyTried || currentFormat !== 'm3u8') return { kind: 'fail' };
  return { kind: 'retry', format: 'ts' };
}
