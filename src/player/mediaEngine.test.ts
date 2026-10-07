import { describe, expect, it, vi } from 'vitest';
import { destroyMediaEngines, selectMediaEngine } from './mediaEngine';

describe('media engine lifecycle', () => {
  it('selects engines deterministically', () => {
    expect(selectMediaEngine({ isLive: false, liveFormat: 'm3u8', supportsMpegTs: true, supportsHlsJs: true, supportsNativeHls: true })).toBe('native-video');
    expect(selectMediaEngine({ isLive: true, liveFormat: 'ts', supportsMpegTs: true, supportsHlsJs: true, supportsNativeHls: false })).toBe('mpegts');
    expect(selectMediaEngine({ isLive: true, liveFormat: 'm3u8', supportsMpegTs: true, supportsHlsJs: true, supportsNativeHls: false })).toBe('hls-js');
    expect(selectMediaEngine({ isLive: true, liveFormat: 'm3u8', supportsMpegTs: false, supportsHlsJs: false, supportsNativeHls: true })).toBe('native-hls');
  });

  it('destroys both engines and is safe when one destroy fails', () => {
    const hls = { destroy: vi.fn(() => { throw new Error('already closed'); }) };
    const mpegts = { destroy: vi.fn() };
    expect(destroyMediaEngines({ hls, mpegts })).toEqual({ hls: null, mpegts: null });
    expect(hls.destroy).toHaveBeenCalledOnce();
    expect(mpegts.destroy).toHaveBeenCalledOnce();
  });
});
