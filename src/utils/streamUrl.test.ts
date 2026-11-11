import { Capacitor } from '@capacitor/core';
import { afterEach, describe, expect, it, vi } from 'vitest';

const server = 'http://server.esempio:8080';
const options = { useProxy: true, isNative: false, isAppleMobile: false, liveFormat: 'm3u8' as const };

async function loadForMode(mode: string) {
  vi.stubEnv('MODE', mode);
  vi.resetModules();
  return { ...(await import('./parseXtreamUrl')), ...(await import('./streamUrl')) };
}

afterEach(() => {
  vi.unstubAllEnvs();
  vi.restoreAllMocks();
});

describe('stream URLs for static hosting', () => {
  it('builds direct movie, series and live URLs even if proxy is requested', async () => {
    const { buildStreamUrl, buildDownloadUrl } = await loadForMode('static');
    vi.spyOn(Capacitor, 'isNativePlatform').mockReturnValue(false);
    for (const [type, extension] of [['movie', 'mp4'], ['series', 'mkv'], ['live', 'm3u8']] as const) {
      const result = buildStreamUrl(server, 'demo', 'demo', type, 123, extension, true);
      expect(result).toBe(`${server}/${type}/demo/demo/123.${extension}`);
      expect(result).not.toContain('/api/proxy');
    }
    expect(() => buildDownloadUrl(server, 'demo', 'demo', 'movie', 123, 'mp4', 'film')).toThrow(/non disponibile/i);
  });

  it('unwraps old saved proxy URLs and never restores a proxy preference', async () => {
    const { getPlaybackStreamUrl } = await loadForMode('static');
    const direct = `${server}/movie/demo/demo/123.mp4`;
    const proxy = `/api/proxy/stream?url=${encodeURIComponent(direct)}`;
    expect(getPlaybackStreamUrl({ type: 'movie', streamUrl: direct }, options)).toBe(direct);
    expect(getPlaybackStreamUrl({ type: 'movie', streamUrl: proxy }, options)).toBe(direct);
    expect(getPlaybackStreamUrl({ type: 'movie', streamUrl: '/api/proxy/stream' }, options)).toBe('');
  });

  it('forces HLS for Apple mobile, including previously saved MPEG-TS and extensionless links', async () => {
    const { getPlaybackStreamUrl } = await loadForMode('static');
    const apple = { ...options, isAppleMobile: true, liveFormat: 'ts' as const };
    expect(getPlaybackStreamUrl({ type: 'live', streamUrl: `${server}/live/demo/demo/123.ts?x=1` }, apple))
      .toBe(`${server}/live/demo/demo/123.m3u8?x=1`);
    expect(getPlaybackStreamUrl({ type: 'live', streamUrl: `${server}/live/demo/demo/123` }, apple))
      .toBe(`${server}/live/demo/demo/123.m3u8`);
  });

  it('retains proxy behavior on regular web deployments and direct playback on native', async () => {
    const { buildStreamUrl, getPlaybackStreamUrl, getDirectStreamUrl } = await loadForMode('production');
    vi.spyOn(Capacitor, 'isNativePlatform').mockReturnValue(false);
    const direct = `${server}/movie/demo/demo/123.mp4`;
    const proxy = `/api/proxy/stream?url=${encodeURIComponent(direct)}`;
    expect(buildStreamUrl(server, 'demo', 'demo', 'movie', 123, 'mp4', true)).toBe(proxy);
    expect(getPlaybackStreamUrl({ type: 'movie', streamUrl: direct }, options)).toBe(proxy);
    expect(getPlaybackStreamUrl({ type: 'movie', streamUrl: `${proxy}&test=demo` }, options)).toBe(`${proxy}&test=demo`);
    expect(getPlaybackStreamUrl({ type: 'movie', streamUrl: proxy }, { ...options, isNative: true })).toBe(direct);
    expect(getDirectStreamUrl(proxy)).toBe(direct);
  });
});
