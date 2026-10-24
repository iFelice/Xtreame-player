import { afterEach, describe, expect, it, vi } from 'vitest';
import {
  canOfferDownloads,
  isDirectFileDownload,
  isTvEnvironment,
  safeFilename,
  triggerMediaDownload,
  unwrapProxyUrl,
} from './downloadHelper';

describe('desktop download preparation', () => {
  it('offers direct download only for actual media files, never HLS playlists', () => {
    expect(isDirectFileDownload('mp4')).toBe(true);
    expect(isDirectFileDownload('.MKV')).toBe(true);
    expect(isDirectFileDownload('m3u8')).toBe(false);
    expect(isDirectFileDownload('ts')).toBe(false);
    expect(isDirectFileDownload(undefined)).toBe(false);
  });

  it('creates filesystem-safe names without accepting extension injection', () => {
    expect(safeFilename('Film: prova/episodio?', '.MP4<script>')).toBe('Film_ prova_episodio_.mp4script');
    expect(safeFilename('', '')).toBe('video.mp4');
  });

  it('unwraps only the target URL from an existing proxy route', () => {
    const source = 'https://public.example/video.mp4?token=demo';
    const proxied = `/api/proxy/stream?url=${encodeURIComponent(source)}&download=1`;
    expect(unwrapProxyUrl(proxied)).toBe(source);
    expect(unwrapProxyUrl(source)).toBe(source);
  });

  it('does not throw on malformed proxy input', () => {
    expect(unwrapProxyUrl('/api/proxy/stream?url=%')).toBe('%');
  });
});

describe('download availability per platform', () => {
  afterEach(() => {
    vi.unstubAllEnvs();
    vi.restoreAllMocks();
  });

  it('stays available on the web build when no TV is detected', () => {
    vi.stubEnv('VITE_TARGET', '');
    expect(canOfferDownloads(false)).toBe(true);
  });

  it('is off on every TV environment', () => {
    vi.stubEnv('VITE_TARGET', '');
    expect(canOfferDownloads(true)).toBe(false);
  });

  it('treats the webOS build as a TV without reading the user agent', () => {
    vi.stubEnv('VITE_TARGET', 'webos');
    expect(isTvEnvironment()).toBe(true);
    expect(canOfferDownloads(false)).toBe(false);
    expect(canOfferDownloads(true)).toBe(false);
  });

  it('refuses to start a download in the webOS build', async () => {
    vi.stubEnv('VITE_TARGET', 'webos');
    await expect(
      triggerMediaDownload('http://server.esempio:8080/movie/demo/demo/101.mp4', 'Film demo', 'movie', undefined, 'mp4')
    ).resolves.toBe(false);
  });
});
