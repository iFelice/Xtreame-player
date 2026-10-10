import { describe, expect, it } from 'vitest';
import { canFallbackToMpegTs, isPublicMockStream, normalizeLiveStreamUrl } from './streamFormat';

describe('live stream format', () => {
  it('switches regular Xtream URLs without losing query parameters', () => {
    expect(normalizeLiveStreamUrl('http://localhost/live/demo/demo/12.ts?token=x', 'm3u8'))
      .toBe('http://localhost/live/demo/demo/12.m3u8?token=x');
    expect(normalizeLiveStreamUrl('http://localhost/live/demo/demo/12.m3u8', 'ts'))
      .toBe('http://localhost/live/demo/demo/12.ts');
  });

  it('keeps public mock streams on HLS even when MPEG-TS is requested', () => {
    const url = 'http://localhost:3333/live/demo/demo/public_8.ts';
    expect(isPublicMockStream(url)).toBe(true);
    expect(normalizeLiveStreamUrl(url, 'ts')).toBe('http://localhost:3333/live/demo/demo/public_8.m3u8');
  });

  it('allows MPEG-TS fallback only for regular live streams', () => {
    expect(canFallbackToMpegTs('live', 'https://example.test/live/12.m3u8')).toBe(true);
    expect(canFallbackToMpegTs('live', 'http://localhost/live/demo/demo/public_12.m3u8')).toBe(false);
    expect(canFallbackToMpegTs('movie', 'https://example.test/movie/12.m3u8')).toBe(false);
    expect(canFallbackToMpegTs('series', 'https://example.test/series/12.m3u8')).toBe(false);
  });

  it('does not mistake ordinary names for public mock stream ids', () => {
    expect(isPublicMockStream('https://example.test/live/public_news.ts')).toBe(false);
  });
});
