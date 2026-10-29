import React from 'react';
import { act, create } from 'react-test-renderer';
import { afterEach, beforeEach, describe, expect, it, vi } from 'vitest';

const direct = 'http://server.esempio:8080/movie/demo/demo/123.mp4';
const proxied = `/api/proxy/stream?url=${encodeURIComponent(direct)}`;

function stubDevice(options: { appleMobile: boolean; standalone: boolean }) {
  vi.stubGlobal('navigator', {
    userAgent: options.appleMobile ? 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_0)' : 'Mozilla/5.0 (Macintosh; Intel Mac OS X)',
    platform: options.appleMobile ? 'iPhone' : 'MacIntel',
    maxTouchPoints: options.appleMobile ? 5 : 0,
    standalone: options.standalone,
  });
  vi.stubGlobal('window', {
    innerWidth: 390,
    matchMedia: () => ({ matches: false, addEventListener: () => {}, removeEventListener: () => {} }),
    addEventListener: () => {},
    removeEventListener: () => {},
  });
}

afterEach(() => {
  vi.unstubAllEnvs();
  vi.unstubAllGlobals();
  vi.restoreAllMocks();
  delete (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT;
});

beforeEach(() => {
  (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT = true;
});

describe('AppleDownloadLink', () => {
  it('renders a direct, never proxied, long-press link in Safari', async () => {
    stubDevice({ appleMobile: true, standalone: false });
    vi.stubEnv('MODE', 'static');
    vi.resetModules();
    const { AppleDownloadLink, APPLE_DOWNLOAD_HINT } = await import('./AppleDownloadLink');
    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(<AppleDownloadLink streamUrl={proxied} containerExtension="mp4" />);
    });

    const anchors = renderer!.root.findAllByType('a');
    expect(anchors).toHaveLength(1);
    expect(anchors[0].props.href).toBe(direct);
    expect(anchors[0].props.href).not.toContain('/api/proxy');
    expect(anchors[0].props.target).toBe('_blank');
    expect(anchors[0].props.rel).toBe('noopener noreferrer');
    const text = JSON.stringify(renderer!.toJSON());
    expect(text).toContain(APPLE_DOWNLOAD_HINT);
    expect(text).toContain('Scarica');
    await act(async () => renderer!.unmount());
  });

  it('only shows the note inside the Home Screen web app', async () => {
    stubDevice({ appleMobile: true, standalone: true });
    vi.stubEnv('MODE', 'static');
    vi.resetModules();
    const { AppleDownloadLink, APPLE_STANDALONE_NOTE } = await import('./AppleDownloadLink');
    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(<AppleDownloadLink streamUrl={direct} containerExtension="mp4" />);
    });
    expect(renderer!.root.findAllByType('a')).toHaveLength(0);
    expect(JSON.stringify(renderer!.toJSON())).toContain(APPLE_STANDALONE_NOTE);
    await act(async () => renderer!.unmount());
  });

  it.each(['mkv', 'avi'])('renders nothing for %s (the VLC panel stays)', async (extension) => {
    stubDevice({ appleMobile: true, standalone: false });
    vi.stubEnv('MODE', 'static');
    vi.resetModules();
    const { AppleDownloadLink } = await import('./AppleDownloadLink');
    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(<AppleDownloadLink streamUrl={direct} containerExtension={extension} />);
    });
    expect(renderer!.toJSON()).toBeNull();
    await act(async () => renderer!.unmount());
  });

  it.each([
    ['desktop', false, 'static'],
    ['Apple mobile in the normal build', true, 'production'],
    ['desktop in the normal build', false, 'production'],
  ] as const)('renders nothing on %s', async (_label, appleMobile, mode) => {
    stubDevice({ appleMobile, standalone: false });
    vi.stubEnv('MODE', mode);
    vi.resetModules();
    const { AppleDownloadLink } = await import('./AppleDownloadLink');
    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(<AppleDownloadLink streamUrl={direct} containerExtension="mp4" />);
    });
    expect(renderer!.toJSON()).toBeNull();
    await act(async () => renderer!.unmount());
  });
});
