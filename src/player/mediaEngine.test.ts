import { describe, expect, it, vi } from 'vitest';
import { destroyMediaEngines, releaseVideoElement, selectMediaEngine } from './mediaEngine';

const allEnginesAvailable = {
  supportsMpegTs: true,
  supportsHlsJs: true,
  supportsNativeHls: true,
};

describe('media engine lifecycle', () => {
  it('selects engines deterministically', () => {
    expect(selectMediaEngine({ isLive: false, liveFormat: 'm3u8', mediaExtension: 'mp4', supportsMpegTs: true, supportsHlsJs: true, supportsNativeHls: true })).toBe('native-video');
    expect(selectMediaEngine({ isLive: false, liveFormat: 'm3u8', mediaExtension: 'm3u8', supportsMpegTs: true, supportsHlsJs: true, supportsNativeHls: true })).toBe('hls-js');
    expect(selectMediaEngine({ isLive: false, liveFormat: 'm3u8', mediaExtension: 'M3U8', supportsMpegTs: false, supportsHlsJs: false, supportsNativeHls: true })).toBe('native-hls');
    expect(selectMediaEngine({ isLive: true, liveFormat: 'ts', supportsMpegTs: true, supportsHlsJs: true, supportsNativeHls: false })).toBe('mpegts');
    expect(selectMediaEngine({ isLive: true, liveFormat: 'm3u8', supportsMpegTs: true, supportsHlsJs: true, supportsNativeHls: false })).toBe('hls-js');
    expect(selectMediaEngine({ isLive: true, liveFormat: 'm3u8', supportsMpegTs: false, supportsHlsJs: false, supportsNativeHls: true })).toBe('native-hls');
  });

  it('always uses the native <video> element when the platform asks for it (webOS)', () => {
    // Live .ts, live .m3u8, film ed episodi: il motore resta quello nativo,
    // anche con hls.js e mpegts.js perfettamente supportati dal motore Chrome.
    expect(
      selectMediaEngine({ isLive: true, liveFormat: 'ts', ...allEnginesAvailable, preferNativeOnly: true })
    ).toBe('native-video');
    expect(
      selectMediaEngine({ isLive: true, liveFormat: 'm3u8', ...allEnginesAvailable, preferNativeOnly: true })
    ).toBe('native-video');
    expect(
      selectMediaEngine({
        isLive: false,
        liveFormat: 'ts',
        mediaExtension: 'm3u8',
        ...allEnginesAvailable,
        preferNativeOnly: true,
      })
    ).toBe('native-video');
    expect(
      selectMediaEngine({
        isLive: false,
        liveFormat: 'ts',
        mediaExtension: 'mp4',
        ...allEnginesAvailable,
        preferNativeOnly: true,
      })
    ).toBe('native-video');
  });

  it('keeps the usual engine choice when the flag is absent or false', () => {
    expect(
      selectMediaEngine({ isLive: true, liveFormat: 'ts', ...allEnginesAvailable, preferNativeOnly: false })
    ).toBe('mpegts');
  });

  it('destroys both engines and is safe when one destroy fails', () => {
    const hls = { destroy: vi.fn(() => { throw new Error('already closed'); }) };
    const mpegts = { destroy: vi.fn() };
    expect(destroyMediaEngines({ hls, mpegts })).toEqual({ hls: null, mpegts: null });
    expect(hls.destroy).toHaveBeenCalledOnce();
    expect(mpegts.destroy).toHaveBeenCalledOnce();
  });

  it('releases the video element so the server sees one connection at a time', () => {
    const calls: string[] = [];
    const video = {
      paused: false,
      pause: () => calls.push('pause'),
      removeAttribute: (name: string) => calls.push(`removeAttribute:${name}`),
      load: () => calls.push('load'),
    } as unknown as HTMLVideoElement;

    releaseVideoElement(video);
    expect(calls).toEqual(['pause', 'removeAttribute:src', 'load']);
  });
});
