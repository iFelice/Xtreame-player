import React from 'react';
import { act, create } from 'react-test-renderer';
import { afterEach, describe, expect, it, vi } from 'vitest';
import type { XtreamCategory, XtreamLiveStream } from '../types/xtream';

const categories: XtreamCategory[] = [
  { category_id: 'sports', category_name: 'Sport' },
  { category_id: 'news', category_name: 'Notizie' },
];
const streams: XtreamLiveStream[] = [
  { stream_id: 1, name: 'Sport Uno', category_id: 'sports' },
  { stream_id: 2, name: 'Sport Due', category_id: 'sports' },
  { stream_id: 3, name: 'Notizie Uno', category_id: 'news' },
];

function installWebOsCatalogHarness() {
  const origin = { focus: vi.fn() };
  vi.stubEnv('VITE_TARGET', 'webos');
  vi.stubGlobal('localStorage', { getItem: () => null, setItem: () => {} });
  vi.stubGlobal('sessionStorage', { getItem: () => null, setItem: () => {} });
  vi.stubGlobal('navigator', { userAgent: 'webOS TV', platform: 'Linux armv7l', maxTouchPoints: 0 });
  vi.stubGlobal('window', {
    innerWidth: 1920,
    location: { protocol: 'file:' },
    addEventListener: () => {}, removeEventListener: () => {},
    matchMedia: () => ({ matches: false, addEventListener: () => {}, removeEventListener: () => {} }),
    setTimeout, clearTimeout, setInterval, clearInterval,
  });
  vi.stubGlobal('document', {
    getElementById: () => origin,
    addEventListener: () => {}, removeEventListener: () => {},
  });
  return origin;
}

afterEach(() => {
  vi.unstubAllEnvs();
  vi.unstubAllGlobals();
  vi.restoreAllMocks();
  delete (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT;
});

describe('real LiveCatalog in webOS mode', () => {
  it('passes the selected category source and row focus target into actual Live playback', async () => {
    (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT = true;
    const origin = installWebOsCatalogHarness();
    vi.resetModules();
    const { LiveCatalog } = await import('./LiveCatalog');
    const play = vi.fn();
    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(
        <LiveCatalog
          categories={categories}
          streams={streams}
          serverUrl="http://server.esempio:8080"
          username="demo"
          password="demo"
          onPlay={play}
        />,
      );
    });
    await act(async () => { renderer!.root.findByProps({ id: 'live-channel-1' }).props.onClick(); });
    expect(origin.focus).toHaveBeenCalledWith({ preventScroll: true });
    expect(play).toHaveBeenCalledWith(
      expect.objectContaining({ id: 'live_1', containerExtension: 'm3u8' }),
      expect.objectContaining({
        categoryName: 'Sport',
        focusId: 'live-channel-1',
        channels: [expect.objectContaining({ id: 'live_1' }), expect.objectContaining({ id: 'live_2' })],
      }),
    );
    expect(play.mock.calls[0][1].channels).toHaveLength(2);
    await act(async () => renderer!.unmount());
  });
});
