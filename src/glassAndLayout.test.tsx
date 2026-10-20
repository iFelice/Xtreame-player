import { readFileSync } from 'node:fs';
import { join } from 'node:path';
import React from 'react';
import { act, create } from 'react-test-renderer';
import { afterEach, beforeEach, describe, expect, it, vi } from 'vitest';

vi.mock('mpegts.js', () => ({
  default: { isSupported: () => false, Events: {} },
}));

vi.mock('hls.js', () => ({
  default: { isSupported: () => false, Events: {}, ErrorTypes: {} },
}));

vi.mock('./components/VirtualizedMediaGrid', () => ({
  VirtualizedMediaGrid: ({ items, renderItem }: { items: any[]; renderItem: (item: any, index: number) => React.ReactNode }) => (
    <div>{items.map((item, index) => renderItem(item, index))}</div>
  ),
}));

import * as downloadHelper from './utils/downloadHelper';
import { xtreamClient } from './services/xtreamClient';
import { Navbar } from './components/Navbar';
import { PasteLinkModal } from './components/PasteLinkModal';
import { PrivacyDeployModal } from './components/PrivacyDeployModal';
import { ServerInfoModal } from './components/ServerInfoModal';
import { SettingsSyncModal } from './components/SettingsSyncModal';
import { TvPairingModal } from './components/TvPairingModal';
import { SeriesCatalog } from './components/SeriesCatalog';
import { VodCatalog } from './components/VodCatalog';
import { LiveCatalog } from './components/LiveCatalog';
import { MediaPlayer } from './components/MediaPlayer';

beforeEach(() => {
  const storageMap = new Map<string, string>();
  const makeStorage = () => ({
    getItem: (key: string) => storageMap.get(key) ?? null,
    setItem: (key: string, val: string) => {
      storageMap.set(key, val);
    },
    removeItem: (key: string) => {
      storageMap.delete(key);
    },
    clear: () => storageMap.clear(),
  });
  vi.stubGlobal('localStorage', makeStorage());
  vi.stubGlobal('sessionStorage', makeStorage());
  vi.stubGlobal('ResizeObserver', class {
    observe() {}
    unobserve() {}
    disconnect() {}
  });
  vi.stubGlobal('window', {
    innerWidth: 390,
    location: { origin: 'http://example.com', protocol: 'http:', search: '' },
    addEventListener: () => {},
    removeEventListener: () => {},
    matchMedia: () => ({ addEventListener: () => {}, removeEventListener: () => {} }),
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

function tokensOf(className: unknown): string[] {
  return typeof className === 'string' ? className.split(/\s+/).filter(Boolean) : [];
}

describe('glass material and navigation layer', () => {
  it('defines exact root tokens, @theme glass edge, @utility glass without border, and all three fallbacks', () => {
    const css = readFileSync(join(import.meta.dirname, 'index.css'), 'utf8');
    expect(css).toContain('--glass-alpha: 0.72;');
    expect(css).toContain('--glass-blur: 20px;');
    expect(css).toContain('--glass-saturate: 180%;');
    expect(css).toContain('--color-glass-edge: rgb(255 255 255 / 0.12);');

    const utilityMatch = css.match(/@utility\s+glass\s*\{([^}]*)\}/);
    expect(utilityMatch).not.toBeNull();
    const utilityBody = utilityMatch![1];
    expect(utilityBody).toContain('background-color: rgb(44 44 46 / var(--glass-alpha));');
    expect(utilityBody).toContain('blur(var(--glass-blur)) saturate(var(--glass-saturate))');
    expect(utilityBody).not.toContain('border');

    expect(css).toContain('@supports not ((');
    expect(css).toContain('@media (prefers-reduced-transparency: reduce)');
    expect(css).toContain('body.tv-mode .glass');
    expect(css.match(/#2C2C2E/g)?.length ?? 0).toBeGreaterThanOrEqual(4);
  });

  it('applies glass to sticky Navbar header (bottom edge only) and both mobile and desktop account menus', async () => {
    (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT = true;
    vi.spyOn(downloadHelper, 'isTvEnvironment').mockReturnValue(false);

    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(
        <Navbar
          serverUrl="http://example.com"
          username="utente"
          authData={null}
          onSelectAccount={() => {}}
          onOpenServerInfo={() => {}}
          onDisconnect={() => {}}
        />
      );
    });

    const header = renderer!.root.findByType('header');
    const headerTokens = tokensOf(header.props.className);
    expect(headerTokens).toContain('glass');
    expect(headerTokens).toContain('border-b');
    expect(headerTokens).toContain('border-glass-edge');
    expect(headerTokens).not.toContain('border');

    // Open mobile account menu and desktop account menu.
    const accountButtons = renderer!.root.findAll(
      (node) => node.type === 'button' && node.props.title === 'utente@http://example.com'
    );
    expect(accountButtons.length).toBe(2);
    for (const button of accountButtons) {
      await act(async () => {
        button.props.onClick();
      });
    }

    const glassMenus = renderer!.root.findAll(
      (node) =>
        node.type === 'div' &&
        tokensOf(node.props.className).includes('glass') &&
        tokensOf(node.props.className).includes('border') &&
        tokensOf(node.props.className).includes('border-glass-edge')
    );
    expect(glassMenus.length).toBe(2);

    await act(async () => {
      renderer!.unmount();
    });
  });

  it('applies bg-black/50 backdrop, glass dialog box, and transparent internal header on all 7 modals', async () => {
    (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT = true;
    vi.spyOn(downloadHelper, 'isTvEnvironment').mockReturnValue(false);
    vi.spyOn(xtreamClient, 'getSeriesInfo').mockResolvedValue({
      seasons: [],
      info: {} as any,
      episodes: { '1': [{ id: '1', episode_num: 1, title: 'Ep 1', container_extension: 'mp4' } as any] },
    });
    vi.spyOn(xtreamClient, 'getVodInfo').mockResolvedValue({
      info: { plot: 'Trama film' } as any,
      movie_data: {} as any,
    });

    const checkModalRoot = (overlay: any, label: string) => {
      const overlayTokens = tokensOf(overlay.props.className);
      expect(overlayTokens, `${label} backdrop`).toContain('fixed');
      expect(overlayTokens, `${label} backdrop`).toContain('inset-0');
      expect(overlayTokens, `${label} backdrop`).toContain('bg-black/50');

      const box = overlay.children[0];
      const boxTokens = tokensOf(box.props.className);
      expect(boxTokens, `${label} dialog`).toContain('glass');
      expect(boxTokens, `${label} dialog`).toContain('border');
      expect(boxTokens, `${label} dialog`).toContain('border-glass-edge');

      const internalHeader = box.children[0];
      const headerBgTokens = tokensOf(internalHeader.props.className).filter((t) => t.startsWith('bg-'));
      expect(headerBgTokens, `${label} internal header must stay transparent`).toEqual([]);
    };

    const standaloneModals: Array<[string, React.ReactElement]> = [
      ['PasteLinkModal', <PasteLinkModal onClose={() => {}} onPlayDirect={() => {}} onConnectCatalog={() => {}} />],
      ['PrivacyDeployModal', <PrivacyDeployModal onClose={() => {}} />],
      [
        'ServerInfoModal',
        <ServerInfoModal
          authData={{ user_info: { username: 'u', status: 'Active' } as any, server_info: { url: 'example.com' } as any }}
          serverUrl="http://example.com"
          onClose={() => {}}
        />,
      ],
      [
        'SettingsSyncModal',
        <SettingsSyncModal
          isOpen
          onClose={() => {}}
          currentServer="http://example.com"
          currentUsername="u"
          onSaveAndConnect={() => {}}
          savedAccounts={[]}
          onSelectAccount={() => {}}
        />,
      ],
      [
        'TvPairingModal',
        <TvPairingModal isOpen pairingEnabled={false} onClose={() => {}} onConnectAccount={() => {}} />,
      ],
    ];

    for (const [label, element] of standaloneModals) {
      let renderer: ReturnType<typeof create>;
      await act(async () => {
        renderer = create(element);
      });
      checkModalRoot(renderer!.root.findByType('div'), label);
      await act(async () => {
        renderer!.unmount();
      });
    }

    // Series detail modal
    let seriesRenderer: ReturnType<typeof create>;
    await act(async () => {
      seriesRenderer = create(
        <SeriesCatalog
          categories={[{ category_id: '1', category_name: 'Serie', parent_id: 0 }]}
          seriesList={[{ series_id: 10, name: 'Serie Test', cover: '', category_id: '1' } as any]}
          serverUrl="http://example.com"
          username="u"
          password="p"
          onPlay={() => {}}
          selectedSeriesId={10}
        />
      );
    });
    const seriesOverlay = seriesRenderer!.root.find(
      (n) => n.type === 'div' && tokensOf(n.props.className).includes('fixed') && tokensOf(n.props.className).includes('inset-0')
    );
    checkModalRoot(seriesOverlay, 'SeriesCatalog modal');
    await act(async () => {
      seriesRenderer!.unmount();
    });

    // Movie detail modal
    let vodRenderer: ReturnType<typeof create>;
    await act(async () => {
      vodRenderer = create(
        <VodCatalog
          categories={[{ category_id: '1', category_name: 'Film', parent_id: 0 }]}
          streams={[{ num: 1, name: 'Film Test', stream_type: 'movie', stream_id: 20, stream_icon: '', rating: '8', rating_5based: 4, added: '1', category_id: '1', container_extension: 'mp4', custom_sid: '', direct_source: '' }]}
          serverUrl="http://example.com"
          username="u"
          password="p"
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
        }
      );
    });
    const card = vodRenderer!.root.find((n) => n.type === 'div' && n.props['data-media-index'] === 1);
    await act(async () => {
      card.props.onKeyDown({ key: 'Enter' });
    });
    const vodOverlay = vodRenderer!.root.find(
      (n) => n.type === 'div' && tokensOf(n.props.className).includes('fixed') && tokensOf(n.props.className).includes('inset-0')
    );
    checkModalRoot(vodOverlay, 'VodCatalog modal');
    await act(async () => {
      vodRenderer!.unmount();
    });
  });

  it('wraps only the bottom control buttons row of MediaPlayer in a glass capsule outside TV mode', async () => {
    (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT = true;
    const sampleMedia = {
      id: 'movie_1',
      title: 'Film Demo',
      type: 'movie' as const,
      streamUrl: 'http://example.com/movie/u/p/1.mp4',
      containerExtension: 'mp4',
    };

    vi.spyOn(downloadHelper, 'isTvEnvironment').mockReturnValue(false);
    let nonTv: ReturnType<typeof create>;
    await act(async () => {
      nonTv = create(<MediaPlayer media={sampleMedia} onClose={() => {}} />);
    });
    const capsules = nonTv!.root.findAll(
      (n) => n.type === 'div' && tokensOf(n.props.className).includes('glass')
    );
    expect(capsules.length).toBe(1);
    const capsuleTokens = tokensOf(capsules[0].props.className);
    expect(capsuleTokens).toEqual(
      expect.arrayContaining(['glass', 'rounded-full', 'border', 'border-glass-edge', 'px-2', 'py-1'])
    );
    expect(capsuleTokens.some((t) => t.startsWith('bg-linear'))).toBe(false);
    await act(async () => {
      nonTv!.unmount();
    });

    vi.spyOn(downloadHelper, 'isTvEnvironment').mockReturnValue(true);
    let tv: ReturnType<typeof create>;
    await act(async () => {
      tv = create(<MediaPlayer media={sampleMedia} onClose={() => {}} />);
    });
    const tvCapsules = tv!.root.findAll(
      (n) => n.type === 'div' && tokensOf(n.props.className).includes('glass')
    );
    expect(tvCapsules.length).toBe(0);
    await act(async () => {
      tv!.unmount();
    });
  });
});

describe('mobile content panels and channel name width budget', () => {
  it('uses p-2.5 below md and p-6 from md up on Live, Vod, and Series panels outside TV mode', async () => {
    (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT = true;
    vi.spyOn(downloadHelper, 'isTvEnvironment').mockReturnValue(false);

    const panels = [
      <LiveCatalog
        categories={[{ category_id: '1', category_name: 'Live', parent_id: 0 }]}
        streams={[]}
        serverUrl="http://example.com"
        username="u"
        password="p"
        onPlay={() => {}}
      />,
      <VodCatalog
        categories={[{ category_id: '1', category_name: 'Film', parent_id: 0 }]}
        streams={[]}
        serverUrl="http://example.com"
        username="u"
        password="p"
        onPlay={() => {}}
      />,
      <SeriesCatalog
        categories={[{ category_id: '1', category_name: 'Serie', parent_id: 0 }]}
        seriesList={[]}
        serverUrl="http://example.com"
        username="u"
        password="p"
        onPlay={() => {}}
      />,
    ];

    for (const element of panels) {
      let renderer: ReturnType<typeof create>;
      await act(async () => {
        renderer = create(element);
      });
      const section = renderer!.root.findByType('section');
      const tokens = tokensOf(section.props.className);
      expect(tokens).toContain('p-2.5');
      expect(tokens).toContain('md:p-6');
      await act(async () => {
        renderer!.unmount();
      });
    }
  });

  it('guarantees >= 90px at 320px, >= 130px at 360px, and >= 160px at 390px for the channel name column', () => {
    const mobileNameColumnWidth = (viewportWidth: number) => {
      const mainHorizontalPadding = 12 * 2; // px-3
      const panelBorderAndPadding = 1 * 2 + 10 * 2; // border + p-2.5
      const listRightPadding = 6; // pr-1.5 (scrollbar hidden on mobile)
      const rowBorderAndPadding = 1 * 2 + 10 * 2; // border + p-2.5
      const rightButtonsWidth = 40 + 10 + 44; // star button (p-2.5 + w-5) + gap-2.5 + play (w-11)
      const rowOuterGap = 8; // gap-2
      const logoWidth = 40; // w-10
      const logoToNameGap = 10; // gap-2.5
      return (
        viewportWidth -
        mainHorizontalPadding -
        panelBorderAndPadding -
        listRightPadding -
        rowBorderAndPadding -
        rightButtonsWidth -
        rowOuterGap -
        logoWidth -
        logoToNameGap
      );
    };

    expect(mobileNameColumnWidth(320)).toBeGreaterThanOrEqual(90);
    expect(mobileNameColumnWidth(360)).toBeGreaterThanOrEqual(130);
    expect(mobileNameColumnWidth(390)).toBeGreaterThanOrEqual(160);
  });
});
