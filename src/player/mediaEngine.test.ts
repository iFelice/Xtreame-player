import { describe, expect, it, vi } from 'vitest';
import { destroyMediaEngines, selectMediaEngine } from './mediaEngine';

const desktop = {
  isLive: false,
  liveFormat: 'm3u8' as const,
  supportsMpegTs: true,
  supportsHlsJs: true,
  supportsNativeHls: true,
  isAppleMobile: false,
};

describe('media engine lifecycle', () => {
  it('preserves the existing engine order on desktop and TV', () => {
    expect(selectMediaEngine({ ...desktop, mediaExtension: 'mp4' })).toBe('native-video');
    expect(selectMediaEngine({ ...desktop, mediaExtension: 'm3u8' })).toBe('hls-js');
    expect(selectMediaEngine({ ...desktop, mediaExtension: 'M3U8', supportsHlsJs: false })).toBe('native-hls');
    expect(selectMediaEngine({ ...desktop, isLive: true, liveFormat: 'ts' })).toBe('mpegts');
    expect(selectMediaEngine({ ...desktop, isLive: true })).toBe('hls-js');
    expect(selectMediaEngine({ ...desktop, isLive: true, supportsHlsJs: false })).toBe('native-hls');
  });

  it('prefers native HLS on Apple mobile while keeping MP4 native video', () => {
    const apple = { ...desktop, isAppleMobile: true };
    expect(selectMediaEngine({ ...apple, isLive: true })).toBe('native-hls');
    expect(selectMediaEngine({ ...apple, mediaExtension: 'M3U8' })).toBe('native-hls');
    expect(selectMediaEngine({ ...apple, mediaExtension: 'mp4' })).toBe('native-video');
    expect(selectMediaEngine({ ...apple, isLive: true, supportsNativeHls: false })).toBe('hls-js');
  });

  it('destroys both engines and is safe when one destroy fails', () => {
    const hls = { destroy: vi.fn(() => { throw new Error('already closed'); }) };
    const mpegts = { destroy: vi.fn() };
    expect(destroyMediaEngines({ hls, mpegts })).toEqual({ hls: null, mpegts: null });
    expect(hls.destroy).toHaveBeenCalledOnce();
    expect(mpegts.destroy).toHaveBeenCalledOnce();
  });
});
