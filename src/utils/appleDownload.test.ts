import { describe, expect, it } from 'vitest';
import { decideAppleDownload, type AppleDownloadEnvironment } from './appleDownload';

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

  it.each(['mkv', 'avi', 'ts', '', undefined])('adds nothing for %s (VLC panel covers it)', (extension) => {
    expect(decideAppleDownload(direct, extension, env())).toEqual({ kind: 'none' });
  });

  it('adds nothing on desktop, TV or in the normal build', () => {
    expect(decideAppleDownload(direct, 'mp4', env({ appleMobile: false }))).toEqual({ kind: 'none' });
    expect(decideAppleDownload(direct, 'mp4', env({ staticDeploy: false }))).toEqual({ kind: 'none' });
    expect(decideAppleDownload(direct, 'mp4', env({ staticDeploy: false, appleMobile: false }))).toEqual({ kind: 'none' });
  });
});
