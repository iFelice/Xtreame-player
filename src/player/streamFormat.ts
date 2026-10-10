export type LiveStreamFormat = 'm3u8' | 'ts';

export function isPublicMockStream(url: string): boolean {
  return /\/public_\d+(?:\.|[/?]|$)/i.test(url);
}

export function normalizeLiveStreamUrl(url: string, requestedFormat: LiveStreamFormat): string {
  const format = isPublicMockStream(url) ? 'm3u8' : requestedFormat;
  if (format === 'm3u8') return url.replace(/\.ts(\?|$)/i, '.m3u8$1');
  return url.replace(/\.m3u8(\?|$)/i, '.ts$1');
}
