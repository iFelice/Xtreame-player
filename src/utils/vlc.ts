import { getDirectStreamUrl } from './streamUrl';

/** VLC for iOS expects the complete direct HTTP(S) URL after its scheme. */
export function buildVlcUrl(streamUrl: string): string {
  const directUrl = getDirectStreamUrl(streamUrl);
  return /^https?:\/\//i.test(directUrl) ? `vlc://${directUrl}` : '';
}

export function needsVlcOnAppleMobile(
  mediaType: 'movie' | 'series' | 'live' | 'direct',
  containerExtension: string | undefined,
  appleMobile: boolean,
): boolean {
  return appleMobile && (mediaType === 'movie' || mediaType === 'series') &&
    ['mkv', 'avi'].includes((containerExtension || '').toLowerCase().replace(/^\./, ''));
}
