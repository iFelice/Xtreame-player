import { describe, expect, it } from 'vitest';
import { decideAppleDownload, isSafariOnlyAppleContainer, type AppleDownloadEnvironment } from './appleDownload';

const direct = 'http://server.esempio:8080/movie/demo/demo/123.mp4';
const proxied = `/api/proxy/stream?url=${encodeURIComponent(direct)}`;

const env = (overrides: Partial<AppleDownloadEnvironment> = {}): AppleDownloadEnvironment => ({
  staticDeploy: true,
  appleMobile: true,
  standalone: false,
  ...overrides,
});

describe('Apple download decision', () => {
  it('links the direct file in Safari on the static Apple build', () => {
    expect(decideAppleDownload(direct, 'mp4', env())).toEqual({ kind: 'direct-link', href: direct });
  });

  it.each(['mp4', 'm4v', 'mov', 'MP4', '.m4v'])('accepts the %s container', (extension) => {
    expect(decideAppleDownload(direct, extension, env()).kind).toBe('direct-link');
  });

  it('never exposes a proxy URL', () => {
    expect(decideAppleDownload(proxied, 'mp4', env())).toEqual({ kind: 'direct-link', href: direct });
    expect(decideAppleDownload('/api/proxy/stream', 'mp4', env())).toEqual({ kind: 'none' });
  });

  it('shows only the note in the standalone web app', () => {
    expect(decideAppleDownload(direct, 'mp4', env({ standalone: true }))).toEqual({ kind: 'standalone-note' });
  });

  describe('MKV and AVI', () => {
    it.each(['mkv', 'avi', 'MKV', '.avi'])('offers the direct link in Safari for %s', (extension) => {
      const mkv = 'http://server.esempio:8080/movie/demo/demo/456.mkv';
      expect(isSafariOnlyAppleContainer(extension)).toBe(true);
      expect(decideAppleDownload(mkv, extension, env())).toEqual({ kind: 'direct-link', href: mkv });
    });

    it.each(['mkv', 'avi'])('offers nothing for %s in the standalone web app (VLC covers it)', (extension) => {
      const mkv = 'http://server.esempio:8080/movie/demo/demo/456.mkv';
      expect(decideAppleDownload(mkv, extension, env({ standalone: true }))).toEqual({ kind: 'none' });
    });

    it('never exposes a proxy URL either', () => {
      const mkvProxied = `/api/proxy/stream?url=${encodeURIComponent('http://server.esempio:8080/movie/demo/demo/456.mkv')}`;
      expect(decideAppleDownload(mkvProxied, 'mkv', env())).toEqual({
        kind: 'direct-link',
        href: 'http://server.esempio:8080/movie/demo/demo/456.mkv',
      });
    });
  });

  it.each(['ts', '', undefined])('adds nothing for %s (VLC panel covers it)', (extension) => {
    expect(decideAppleDownload(direct, extension, env())).toEqual({ kind: 'none' });
    expect(decideAppleDownload(direct, extension, env({ standalone: true }))).toEqual({ kind: 'none' });
  });

  it('adds nothing on desktop, TV or in the normal build', () => {
    expect(decideAppleDownload(direct, 'mp4', env({ appleMobile: false }))).toEqual({ kind: 'none' });
    expect(decideAppleDownload(direct, 'mp4', env({ staticDeploy: false }))).toEqual({ kind: 'none' });
    expect(decideAppleDownload(direct, 'mp4', env({ staticDeploy: false, appleMobile: false }))).toEqual({ kind: 'none' });
  });

  it('adds nothing for mkv and avi on desktop or in the normal build', () => {
    const mkv = 'http://server.esempio:8080/movie/demo/demo/456.mkv';
    expect(decideAppleDownload(mkv, 'mkv', env({ appleMobile: false }))).toEqual({ kind: 'none' });
    expect(decideAppleDownload(mkv, 'mkv', env({ staticDeploy: false }))).toEqual({ kind: 'none' });
    expect(decideAppleDownload(mkv, 'avi', env({ staticDeploy: false, appleMobile: false }))).toEqual({ kind: 'none' });
  });
});
