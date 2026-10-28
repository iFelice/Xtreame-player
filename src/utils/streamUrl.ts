import type { PlayableMediaItem } from '../types/xtream';
import { appleLiveStreamUrl, normalizeLiveStreamUrl, type LiveStreamFormat } from '../player/streamFormat';
import { STATIC_DEPLOY } from './deployTarget';

function proxyTarget(url: string): string | null | undefined {
  try {
    const parsed = new URL(url, 'http://localhost');
    // Inspect path segments to recognize legacy proxy links without treating
    // that route as a destination in a static deployment.
    const segments = parsed.pathname.split('/');
    if (segments.length !== 4 || segments[0] !== '' || segments[1] !== 'api' || segments[2] !== 'proxy' || segments[3] !== 'stream') return undefined;
    return parsed.searchParams.get('url');
  } catch {
    return undefined;
  }
}

/** Unwrap old saved proxy URLs; never expose an unresolved proxy as a direct URL. */
export function getDirectStreamUrl(streamUrl: string): string {
  let target = streamUrl;
  for (let i = 0; i < 4; i += 1) {
    const proxied = proxyTarget(target);
    if (proxied === undefined) return target;
    if (!proxied || proxied === target) return '';
    target = proxied;
  }
  return proxyTarget(target) === undefined ? target : '';
}

/** Compute a playback URL, independent of the player's persisted proxy choice. */
export function getPlaybackStreamUrl(
  media: Pick<PlayableMediaItem, 'type' | 'streamUrl'>,
  options: { useProxy: boolean; isNative: boolean; isAppleMobile: boolean; liveFormat: LiveStreamFormat },
): string {
  // Preserve an existing proxy URL (including its extra query parameters) on
  // normal desktop/TV web builds, as the previous player did.
  if (!STATIC_DEPLOY && !options.isNative && !options.isAppleMobile && options.useProxy && media.streamUrl.startsWith('/api/proxy/stream')) {
    return media.type === 'live' ? normalizeLiveStreamUrl(media.streamUrl, options.liveFormat) : media.streamUrl;
  }
  let target = getDirectStreamUrl(media.streamUrl);
  if (!target) return '';
  if (media.type === 'live') {
    target = options.isAppleMobile ? appleLiveStreamUrl(target) : normalizeLiveStreamUrl(target, options.liveFormat);
  }
  if (STATIC_DEPLOY || options.isNative || !options.useProxy) return target;
  return `/api/proxy/stream?url=${encodeURIComponent(target)}`;
}
