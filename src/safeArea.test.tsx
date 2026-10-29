import { readFileSync } from 'node:fs';
import { join } from 'node:path';
import React from 'react';
import { act, create } from 'react-test-renderer';
import { afterEach, beforeEach, describe, expect, it, vi } from 'vitest';

vi.mock('./components/VirtualizedMediaGrid', () => ({
  VirtualizedMediaGrid: ({ items, renderItem }: { items: any[]; renderItem: (item: any, index: number) => React.ReactNode }) => (
    <div>{items.map((item, index) => <React.Fragment key={index}>{renderItem(item, index)}</React.Fragment>)}</div>
  ),
}));
vi.mock('mpegts.js', () => ({ default: { isSupported: () => false, createPlayer: () => ({}) } }));
vi.mock('hls.js', () => ({
  default: class {
    static isSupported() {
      return false;
    }
  },
}));

import { Navbar } from './components/Navbar';
import { TvPairingModal } from './components/TvPairingModal';
import { ServerInfoModal } from './components/ServerInfoModal';
import { VodCatalog } from './components/VodCatalog';
import { SeriesCatalog } from './components/SeriesCatalog';
import { MediaPlayer } from './components/MediaPlayer';
import { xtreamClient } from './services/xtreamClient';

function tokensOf(className: unknown): string[] {
  return typeof className === 'string' ? className.split(/\s+/).filter(Boolean) : [];
}

beforeEach(() => {
  (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT = true;
  const storageMap = new Map<string, string>();
  const makeStorage = () => ({
    getItem: (key: string) => storageMap.get(key) ?? null,
    setItem: (key: string, value: string) => void storageMap.set(key, value),
    removeItem: (key: string) => void storageMap.delete(key),
    clear: () => storageMap.clear(),
  });
  vi.stubGlobal('localStorage', makeStorage());
  vi.stubGlobal('sessionStorage', makeStorage());
  vi.stubGlobal('ResizeObserver', class {
    observe() {}
    unobserve() {}
    disconnect() {}
  });
  vi.stubGlobal('navigator', { userAgent: 'Android', platform: 'Linux armv8l', maxTouchPoints: 5 });
  vi.stubGlobal('window', {
    innerWidth: 390,
    location: { origin: 'http://example.com', protocol: 'http:', search: '' },
    addEventListener: () => {},
    removeEventListener: () => {},
    matchMedia: () => ({ matches: false, addEventListener: () => {}, removeEventListener: () => {} }),
    setInterval: globalThis.setInterval.bind(globalThis),
    clearInterval: globalThis.clearInterval.bind(globalThis),
    setTimeout: globalThis.setTimeout.bind(globalThis),
    clearTimeout: globalThis.clearTimeout.bind(globalThis),
    requestAnimationFrame: (cb: FrameRequestCallback) => Number(setTimeout(() => cb(0), 0)),
    cancelAnimationFrame: (id: number) => clearTimeout(id),
  });
  vi.stubGlobal('document', {
    fullscreenElement: null,
    pictureInPictureElement: null,
    pictureInPictureEnabled: false,
    addEventListener: () => {},
    removeEventListener: () => {},
    getElementById: () => null,
  });
});

afterEach(() => {
  vi.restoreAllMocks();
  vi.unstubAllGlobals();
  delete (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT;
});

describe('safe area utilities', () => {
  it('defines inert-by-default utilities in index.css', () => {
    const css = readFileSync(join(import.meta.dirname, 'index.css'), 'utf8');
    for (const utility of ['safe-area-header', 'safe-area-overlay', 'safe-area-overlay-lg', 'safe-area-screen', 'safe-area-page']) {
      expect(css).toContain(`@utility ${utility} {`);
    }
    // env() falls back to 0px and max() keeps the previous padding when the
    // inset is 0 (desktop, TV, Safari tab): nothing changes there.
    expect(css).toContain('padding-top: env(safe-area-inset-top, 0px);');
    expect(css).toContain('padding-left: env(safe-area-inset-left, 0px);');
    expect(css).toContain('padding-right: env(safe-area-inset-right, 0px);');
    expect(css).toContain('padding-top: max(0.75rem, env(safe-area-inset-top, 0px));');
    expect(css).toContain('padding-bottom: max(1rem, env(safe-area-inset-bottom, 0px));');
  });

  it('keeps the glass header behind the status bar and moves its content down', () => {
    const app = readFileSync(join(import.meta.dirname, 'App.tsx'), 'utf8');
    expect(app).toMatch(/<div className="sticky top-0 z-40">/);
    expect(app).toContain('safe-area-banner');
    expect(app).toContain('<StandaloneNotice />');
  });

  it('applies the header utility to the Navbar glass header and account menu', async () => {
    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(
        <Navbar
          serverUrl="http://server.esempio:8080"
          username="demo"
          authData={null}
          onSelectAccount={() => {}}
          onOpenServerInfo={() => {}}
          onDisconnect={() => {}}
        />,
      );
    });

    const header = renderer!.root.findByType('header');
    const headerTokens = tokensOf(header.props.className);
    expect(headerTokens).toContain('glass');
    expect(headerTokens).toContain('safe-area-header');

    const accountButton = renderer!.root.findAll(
      (node) => node.type === 'button' && node.props.title === 'demo@http://server.esempio:8080',
    )[0];
    await act(async () => {
      accountButton.props.onClick();
    });
    const menu = renderer!.root.findAll(
      (node) => node.type === 'div' && tokensOf(node.props.className).includes('top-[72px]'),
    )[0];
    expect(tokensOf(menu.props.className)).toContain('mt-[env(safe-area-inset-top)]');

    await act(async () => renderer!.unmount());
  });
});

describe('safe area on modal dialogs', () => {
  it('keeps the pairing modal inside the notch', async () => {
    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(<TvPairingModal isOpen pairingEnabled={false} onClose={() => {}} onConnectAccount={() => {}} />);
    });
    const overlay = renderer!.root.findByType('div');
    const tokens = tokensOf(overlay.props.className);
    expect(tokens).toEqual(expect.arrayContaining(['fixed', 'inset-0', 'bg-black/50', 'safe-area-overlay']));
    expect(tokens).not.toContain('p-3');
    await act(async () => renderer!.unmount());
  });

  it('keeps the account modal and the movie/series detail dialogs inside the notch', async () => {
    let serverInfo: ReturnType<typeof create>;
    await act(async () => {
      serverInfo = create(
        <ServerInfoModal
          authData={{ user_info: { username: 'demo' } as any, server_info: { url: 'server.esempio' } as any }}
          serverUrl="http://server.esempio:8080"
          onClose={() => {}}
        />,
      );
    });
    expect(tokensOf(serverInfo!.root.findByType('div').props.className)).toContain('safe-area-overlay-lg');
    await act(async () => serverInfo!.unmount());

    vi.spyOn(xtreamClient, 'getVodInfo').mockResolvedValue({ info: { plot: 'Trama' } as any, movie_data: {} as any });
    vi.spyOn(xtreamClient, 'getSeriesInfo').mockResolvedValue({
      info: { episodes: { '1': [{ id: '1', episode_num: 1, title: 'Ep', container_extension: 'mp4' }] } } as any,
    } as any);

    let vod: ReturnType<typeof create>;
    await act(async () => {
      vod = create(
        <VodCatalog
          categories={[{ category_id: '1', category_name: 'Film', parent_id: 0 }]}
          streams={[{ stream_id: 20, name: 'Film Test', container_extension: 'mp4', category_id: '1' } as any]}
          serverUrl="http://server.esempio:8080"
          username="demo"
          password="demo"
          onPlay={() => {}}
        />,
        {
          createNodeMock: () => ({
            clientHeight: 600,
            scrollHeight: 600,
            scrollTop: 0,
            getBoundingClientRect: () => ({ width: 400, height: 600, top: 0, left: 0, right: 400, bottom: 600 }),
            addEventListener: () => {},
            removeEventListener: () => {},
          }),
        },
      );
    });
    const card = vod!.root.find((node) => node.type === 'div' && node.props['data-media-index'] === 1);
    await act(async () => {
      card.props.onKeyDown({ key: 'Enter' });
    });
    const vodOverlay = vod!.root.find(
      (node) => node.type === 'div' && tokensOf(node.props.className).includes('fixed') && tokensOf(node.props.className).includes('inset-0'),
    );
    expect(tokensOf(vodOverlay.props.className)).toContain('safe-area-overlay');
    await act(async () => vod!.unmount());

    let series: ReturnType<typeof create>;
    await act(async () => {
      series = create(
        <SeriesCatalog
          categories={[{ category_id: '1', category_name: 'Serie', parent_id: 0 }]}
          seriesList={[{ series_id: 10, name: 'Serie Test', category_id: '1' } as any]}
          serverUrl="http://server.esempio:8080"
          username="demo"
          password="demo"
          onPlay={() => {}}
          selectedSeriesId={10}
        />,
      );
    });
    const seriesOverlay = series!.root.find(
      (node) => node.type === 'div' && tokensOf(node.props.className).includes('fixed') && tokensOf(node.props.className).includes('inset-0'),
    );
    expect(tokensOf(seriesOverlay.props.className)).toContain('safe-area-overlay');
    await act(async () => series!.unmount());
  });
});

describe('safe area on the player', () => {
  it('pads the full window player so the controls stay clear of the notch', async () => {
    const video = {
      src: '',
      currentTime: 0,
      readyState: 0,
      videoWidth: 0,
      duration: 0,
      paused: true,
      canPlayType: () => 'probably',
      play: async () => {},
      pause: () => {},
      load: () => {},
      removeAttribute: () => {},
      addEventListener: () => {},
      removeEventListener: () => {},
    };
    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(
        <MediaPlayer
          media={{
            id: 'movie_1',
            title: 'Film',
            type: 'movie',
            streamUrl: 'http://server.esempio:8080/movie/demo/demo/1.mp4',
            containerExtension: 'mp4',
          }}
          onClose={() => {}}
        />,
        { createNodeMock: (element) => (element.type === 'video' ? video : null) },
      );
    });

    const container = renderer!.root.find((node) => node.type === 'div' && node.props['data-media-player'] === 'true');
    expect(tokensOf(container.props.className)).not.toContain('safe-area-screen');

    const fullscreenButton = renderer!.root.find(
      (node) => node.type === 'button' && String(node.props.title).startsWith('Schermo intero'),
    );
    await act(async () => {
      fullscreenButton.props.onClick();
    });

    const fullWindow = renderer!.root.find((node) => node.type === 'div' && node.props['data-media-player'] === 'true');
    expect(tokensOf(fullWindow.props.className)).toEqual(expect.arrayContaining(['fixed', 'inset-0', 'safe-area-screen']));

    await act(async () => renderer!.unmount());
  });
});
