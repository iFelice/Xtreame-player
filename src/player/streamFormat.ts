export type LiveStreamFormat = 'm3u8' | 'ts';
export type PlaybackTarget = 'web' | 'webos';

/** webOS recovery timings. Kept here so decisions and component timers agree. */
export const WEBOS_LIVE_RESTART_DELAY_MS = 1_000;
export const WEBOS_LIVE_INTERRUPTION_WINDOW_MS = 60_000;
export const WEBOS_LIVE_STALL_TIMEOUT_MS = 10_000;
export const WEBOS_LIVE_PROGRESS_POLL_MS = 1_000;
export const WEBOS_LIVE_PROGRESS_DELTA_SECONDS = 0.3;
export const WEBOS_LIVE_LEARN_STABILITY_MS = 30_000;
export const WEBOS_LIVE_AUTOMATIC_RESTART_LIMIT = 2;

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

/**
 * Normalizes the provider's allowed live formats. An absent, empty or unusable
 * list remains backward compatible: both formats can be attempted.
 */
export function allowedLiveStreamFormats(formats?: readonly string[] | null): LiveStreamFormat[] {
  const allowed = new Set<LiveStreamFormat>();
  for (const format of formats || []) {
    const normalized = format.trim().toLowerCase();
    if (normalized === 'm3u8' || normalized === 'ts') allowed.add(normalized);
  }
  return allowed.size > 0
    ? (['m3u8', 'ts'] as LiveStreamFormat[]).filter((format) => allowed.has(format))
    : ['m3u8', 'ts'];
}

export function alternateAllowedLiveFormat(
  currentFormat: LiveStreamFormat,
  allowedFormats: readonly LiveStreamFormat[],
): LiveStreamFormat | null {
  const alternate: LiveStreamFormat = currentFormat === 'm3u8' ? 'ts' : 'm3u8';
  return allowedFormats.includes(alternate) ? alternate : null;
}

/**
 * The LG native video measurement showed `.ts` ending after a few seconds,
 * while HLS remained stable. webOS now starts with HLS; account capability,
 * a channel-local manual choice and the learned device preference refine it.
 */
export function defaultLiveStreamFormat(target: PlaybackTarget): LiveStreamFormat {
  return target === 'webos' ? 'm3u8' : 'm3u8';
}

export function selectWebOsInitialLiveFormat(options: {
  allowedFormats?: readonly string[] | null;
  manualFormat?: LiveStreamFormat | null;
  learnedFormat?: LiveStreamFormat | null;
}): LiveStreamFormat {
  const allowed = allowedLiveStreamFormats(options.allowedFormats);
  for (const preferred of [options.manualFormat, options.learnedFormat, 'm3u8', 'ts'] as Array<LiveStreamFormat | null | undefined>) {
    if (preferred && allowed.includes(preferred)) return preferred;
  }
  // allowedLiveStreamFormats always returns at least one value.
  return allowed[0];
}

/** A format switch is local to one live channel; webOS defaults back to HLS. */
export function liveFormatForChannel(
  target: PlaybackTarget,
  previousChannelId: string | null,
  nextChannelId: string | null,
  previousFormat: LiveStreamFormat,
): LiveStreamFormat {
  if (target === 'webos' && nextChannelId !== previousChannelId) return 'm3u8';
  return previousFormat;
}

export type LiveFormatFallback = { kind: 'retry'; format: LiveStreamFormat } | { kind: 'fail' };

/** Exactly one automatic format retry. Browser order remains HLS then TS. */
export function nextLiveFormatAfterFailure(options: {
  target: PlaybackTarget;
  currentFormat: LiveStreamFormat;
  fallbackAlreadyTried: boolean;
  canSwitchFormat: boolean;
}): LiveFormatFallback {
  const { currentFormat, fallbackAlreadyTried, canSwitchFormat } = options;
  if (!canSwitchFormat || fallbackAlreadyTried) return { kind: 'fail' };
  return { kind: 'retry', format: currentFormat === 'm3u8' ? 'ts' : 'm3u8' };
}

export type WebOsLiveInterruptionAction =
  | { kind: 'ignore'; interruptionCount: number }
  | { kind: 'restart'; interruptionCount: number }
  | { kind: 'switch-format'; interruptionCount: number; format: LiveStreamFormat }
  | { kind: 'error'; interruptionCount: number };

/**
 * Pure webOS Live recovery state machine. A new time window starts after more
 * than one minute from the previous recovery; an intentional pause is never a
 * stream interruption. The third clustered interruption gets one alternate
 * format attempt, after which a further failure surfaces the retry panel.
 */
export function decideWebOsLiveInterruption(options: {
  desiredPlaying: boolean;
  now: number;
  lastRecoveryAt: number | null;
  interruptionCount: number;
  automaticFormatSwitchUsed: boolean;
  currentFormat: LiveStreamFormat;
  allowedFormats?: readonly string[] | null;
}): WebOsLiveInterruptionAction {
  if (!options.desiredPlaying) return { kind: 'ignore', interruptionCount: options.interruptionCount };
  const withinWindow = options.lastRecoveryAt !== null
    && options.now - options.lastRecoveryAt <= WEBOS_LIVE_INTERRUPTION_WINDOW_MS;
  const interruptionCount = withinWindow ? options.interruptionCount + 1 : 1;

  // A healthy period starts a fresh recovery budget even if the previous
  // window had already consumed its alternate-format attempt.
  if (!withinWindow) return { kind: 'restart', interruptionCount };
  if (options.automaticFormatSwitchUsed) return { kind: 'error', interruptionCount };
  if (interruptionCount <= WEBOS_LIVE_AUTOMATIC_RESTART_LIMIT) return { kind: 'restart', interruptionCount };

  const alternate = alternateAllowedLiveFormat(options.currentFormat, allowedLiveStreamFormats(options.allowedFormats));
  return alternate
    ? { kind: 'switch-format', interruptionCount, format: alternate }
    : { kind: 'error', interruptionCount };
}

/** Learning is allowed only after a real automatic format change stays stable. */
export function shouldLearnWebOsLiveFormat(options: {
  automaticallySwitched: boolean;
  stableForMs: number;
}): boolean {
  return options.automaticallySwitched && options.stableForMs >= WEBOS_LIVE_LEARN_STABILITY_MS;
}

/**
 * A webOS Live stall is lack of actual media progress, not a noisy buffering
 * event. The caller samples video.currentTime and passes the last advancing
 * instant; paused or intentionally paused playback is never a stall.
 */
export function isWebOsLiveStalled(options: {
  now: number;
  lastProgressAt: number | null;
  desiredPlaying: boolean;
  paused: boolean;
}): boolean {
  return options.desiredPlaying
    && !options.paused
    && options.lastProgressAt !== null
    && options.now - options.lastProgressAt >= WEBOS_LIVE_STALL_TIMEOUT_MS;
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
