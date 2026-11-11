import { describe, expect, it } from 'vitest';
import { buildVlcUrl, needsVlcOnAppleMobile } from './vlc';

describe('VLC handoff', () => {
  const direct = 'http://server.esempio:8080/movie/demo/demo/123.mkv';

  it('prefixes the complete direct URL without encoding it again', () => {
    expect(buildVlcUrl(direct)).toBe(`vlc://${direct}`);
    expect(buildVlcUrl(`${direct}?token=demo`)).toBe(`vlc://${direct}?token=demo`);
  });

  it('unwraps saved proxy links instead of sending the proxy to VLC', () => {
    const proxy = `/api/proxy/stream?url=${encodeURIComponent(direct)}`;
    expect(buildVlcUrl(proxy)).toBe(`vlc://${direct}`);
    expect(buildVlcUrl(`http://server.esempio:8080${proxy}`)).toBe(`vlc://${direct}`);
    expect(buildVlcUrl('/api/proxy/stream')).toBe('');
  });

  it('blocks only MKV and AVI movies or episodes on Apple mobile', () => {
    expect(needsVlcOnAppleMobile('movie', 'MKV', true)).toBe(true);
    expect(needsVlcOnAppleMobile('series', '.avi', true)).toBe(true);
    expect(needsVlcOnAppleMobile('movie', 'mp4', true)).toBe(false);
    expect(needsVlcOnAppleMobile('live', 'mkv', true)).toBe(false);
    expect(needsVlcOnAppleMobile('movie', 'mkv', false)).toBe(false);
    expect(needsVlcOnAppleMobile('series', 'avi', false)).toBe(false);
  });
});
