import { describe, expect, it } from 'vitest';
import { safeFilename, unwrapProxyUrl } from './downloadHelper';

describe('desktop download preparation', () => {
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
