import { describe, expect, it } from 'vitest';
import {
  canFallbackToMpegTs,
  defaultLiveStreamFormat,
  isPublicMockStream,
  nextLiveFormatAfterFailure,
  normalizeLiveStreamUrl,
} from './streamFormat';

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

describe('live format default and automatic fallback', () => {
  it('starts live on .ts on webOS and on .m3u8 on web', () => {
    expect(defaultLiveStreamFormat('webos')).toBe('ts');
    expect(defaultLiveStreamFormat('web')).toBe('m3u8');
  });

  it('webOS retries a failing .ts exactly once with .m3u8', () => {
    expect(
      nextLiveFormatAfterFailure({
        target: 'webos',
        currentFormat: 'ts',
        fallbackAlreadyTried: false,
        canSwitchFormat: true,
      })
    ).toEqual({ kind: 'retry', format: 'm3u8' });

    // Secondo tentativo: il relay HLS è fallito anche lui -> errore.
    expect(
      nextLiveFormatAfterFailure({
        target: 'webos',
        currentFormat: 'm3u8',
        fallbackAlreadyTried: true,
        canSwitchFormat: true,
      })
    ).toEqual({ kind: 'fail' });
    expect(
      nextLiveFormatAfterFailure({
        target: 'webos',
        currentFormat: 'ts',
        fallbackAlreadyTried: true,
        canSwitchFormat: true,
      })
    ).toEqual({ kind: 'fail' });
  });

  it('webOS does not bounce back to .ts after a manual .m3u8 choice', () => {
    expect(
      nextLiveFormatAfterFailure({
        target: 'webos',
        currentFormat: 'm3u8',
        fallbackAlreadyTried: false,
        canSwitchFormat: true,
      })
    ).toEqual({ kind: 'fail' });
  });

  it('never retries a format the stream cannot serve', () => {
    expect(
      nextLiveFormatAfterFailure({
        target: 'webos',
        currentFormat: 'ts',
        fallbackAlreadyTried: false,
        canSwitchFormat: false,
      })
    ).toEqual({ kind: 'fail' });
    expect(
      nextLiveFormatAfterFailure({
        target: 'web',
        currentFormat: 'm3u8',
        fallbackAlreadyTried: false,
        canSwitchFormat: false,
      })
    ).toEqual({ kind: 'fail' });
  });

  it('keeps the historical web behaviour: .m3u8 switches to .ts once', () => {
    expect(
      nextLiveFormatAfterFailure({
        target: 'web',
        currentFormat: 'm3u8',
        fallbackAlreadyTried: false,
        canSwitchFormat: true,
      })
    ).toEqual({ kind: 'retry', format: 'ts' });
    expect(
      nextLiveFormatAfterFailure({
        target: 'web',
        currentFormat: 'ts',
        fallbackAlreadyTried: true,
        canSwitchFormat: true,
      })
    ).toEqual({ kind: 'fail' });
  });
});
