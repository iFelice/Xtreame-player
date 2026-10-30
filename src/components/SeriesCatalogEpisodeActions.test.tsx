import React from 'react';
import { act, create, type ReactTestInstance, type ReactTestRenderer } from 'react-test-renderer';
import { afterEach, beforeEach, describe, expect, it, vi } from 'vitest';

vi.mock('./VirtualizedMediaGrid', () => ({ VirtualizedMediaGrid: () => null }));
vi.mock('../services/xtreamClient', () => ({
  xtreamClient: {
    getSeriesInfo: async () => ({
      info: { plot: 'Trama della serie demo' },
      episodes: {
        '1': [
          {
            id: '11',
            episode_num: 1,
            title: 'Primo episodio',
            container_extension: 'mp4',
            info: {
              plot: 'Una trama dimostrativa abbastanza lunga da occupare più righe nella riga dell’episodio.',
            },
          },
        ],
      },
    }),
  },
}));

const IPHONE_UA =
  'Mozilla/5.0 (iPhone; CPU iPhone OS 18_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.0 Mobile/15E148 Safari/604.1';
const TV_UA =
  'Mozilla/5.0 (SMART-TV; Linux; Tizen 6.0) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/1.0 TV Safari/537.36';

const account = { serverUrl: 'http://server.esempio:8080', username: 'demo', password: 'demo' };
const categories = [{ category_id: '1', category_name: 'Catalogo' }];
const series = [{ series_id: 456, name: 'Serie demo', category_id: '1' }];

let renderer: ReactTestRenderer | null = null;
let bodyClasses: Set<string>;

function stubDevice(userAgent: string) {
  const store = { getItem: () => null, setItem: () => {}, removeItem: () => {} };
  vi.stubGlobal('localStorage', store);
  vi.stubGlobal('sessionStorage', store);
  vi.stubGlobal('navigator', { userAgent, platform: 'demo', maxTouchPoints: 0, standalone: false });
  vi.stubGlobal('window', {
    innerWidth: 390,
    location: { protocol: 'https:' },
    matchMedia: () => ({ matches: false, addEventListener: () => {}, removeEventListener: () => {} }),
    addEventListener: () => {},
    removeEventListener: () => {},
    setInterval,
    clearInterval,
    setTimeout,
    clearTimeout,
  });
  vi.stubGlobal('document', {
    body: { classList: { contains: (value: string) => bodyClasses.has(value) } },
    addEventListener: () => {},
    removeEventListener: () => {},
    getElementById: () => null,
  });
}

async function renderSeriesCatalog(onPlay = vi.fn()) {
  // The deploy target is read when the module loads, so each test imports a
  // fresh copy after stubbing MODE.
  vi.resetModules();
  const { SeriesCatalog } = await import('./SeriesCatalog');
  await act(async () => {
    renderer = create(
      <SeriesCatalog
        categories={categories}
        seriesList={series}
        {...account}
        onPlay={onPlay}
        selectedSeriesId={456}
      />,
    );
  });
  return onPlay;
}

/** Play, static-Apple download and app download, in document order. */
function actionOrder(actions: ReactTestInstance): string[] {
  return actions
    .findAll((node) => typeof node.type === 'string')
    .filter((node) => node.type === 'button' || node.props['data-apple-download'] === 'direct-link')
    .map((node) => {
      if (node.type !== 'button') return 'apple';
      return String(node.props.className).includes('bg-series') ? 'play' : 'download';
    });
}

function guardaButton(actions: ReactTestInstance) {
  return actions.findAllByType('button').find((button) => button.children.includes('Guarda'))!;
}

beforeEach(() => {
  (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT = true;
  bodyClasses = new Set();
});

afterEach(async () => {
  if (renderer) await act(async () => renderer!.unmount());
  renderer = null;
  vi.unstubAllEnvs();
  vi.unstubAllGlobals();
  vi.restoreAllMocks();
  delete (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT;
});

describe('episode row actions', () => {
  it('stacks "Guarda" over "Scarica" outside TV in the static Apple build', async () => {
    stubDevice(IPHONE_UA);
    vi.stubEnv('MODE', 'static');
    await renderSeriesCatalog();

    const actions = renderer!.root.findByProps({ 'data-episode-actions': 'stacked' });
    expect(actions.props.className).toBe('flex flex-col items-end gap-1.5 shrink-0');
    expect(actionOrder(actions)).toEqual(['play', 'apple']);
    // The plot keeps the remaining width and the row is top aligned.
    expect(String(actions.parent!.props.className)).toContain('items-start');
    expect(actions.parent!.findByProps({ 'data-expandable-plot': true }).props.className).toContain('min-w-0');

    // The hint wraps inside roughly the width of "Guarda" instead of widening
    // the column, and stays right aligned under the link.
    const link = actions.findByProps({ 'data-apple-download': 'direct-link' });
    expect(String(link.props.className)).toContain('items-end');
    expect(link.findByType('a').props.href).toBe('http://server.esempio:8080/series/demo/demo/11.mp4');
    const hint = link
      .findAllByType('span')
      .find((node) => String(node.children.join('')).includes('tieni premuto per scaricare'))!;
    expect(hint.props.className).toContain('text-right');
    expect(hint.props.className).toContain('max-w-[5rem]');
  });

  it('stacks "Guarda" over the app download outside TV in the normal build', async () => {
    stubDevice(IPHONE_UA);
    const onPlay = await renderSeriesCatalog();

    const actions = renderer!.root.findByProps({ 'data-episode-actions': 'stacked' });
    expect(actions.props.className).toBe('flex flex-col items-end gap-1.5 shrink-0');
    expect(actionOrder(actions)).toEqual(['play', 'download']);
    expect(actions.findAllByProps({ 'data-apple-download': 'direct-link' })).toHaveLength(0);
    expect(actions.findAllByProps({ 'aria-label': 'Scarica episodio' })).toHaveLength(1);

    await act(async () => guardaButton(actions).props.onClick());
    expect(onPlay).toHaveBeenCalledOnce();
  });

  it('keeps the inline actions in TV mode (body class)', async () => {
    stubDevice(IPHONE_UA);
    bodyClasses.add('tv-mode');
    vi.stubEnv('MODE', 'static');
    await renderSeriesCatalog();

    const actions = renderer!.root.findByProps({ 'data-episode-actions': 'inline' });
    expect(actions.props.className).toBe('flex items-center gap-2 shrink-0');
    expect(actionOrder(actions)).toEqual(['apple', 'play']);
    expect(String(actions.parent!.props.className)).toContain('items-center');
    // No plot in TV mode, and the Apple link keeps its compact left-aligned hint.
    expect(renderer!.root.findAllByProps({ 'data-expandable-plot': true })).toHaveLength(0);
    const link = actions.findByProps({ 'data-apple-download': 'direct-link' });
    expect(String(link.props.className)).toContain('items-start');
    expect(String(link.props.className)).not.toContain('items-end');
  });

  it('keeps the inline actions in TV mode (TV user agent)', async () => {
    stubDevice(TV_UA);
    await renderSeriesCatalog();

    const actions = renderer!.root.findByProps({ 'data-episode-actions': 'inline' });
    expect(actions.props.className).toBe('flex items-center gap-2 shrink-0');
    expect(actionOrder(actions)).toEqual(['play']);
    expect(String(actions.parent!.props.className)).toContain('items-center');
  });
});
