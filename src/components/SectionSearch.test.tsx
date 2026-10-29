import React from 'react';
import { act, create } from 'react-test-renderer';
import { afterEach, beforeEach, describe, expect, it, vi } from 'vitest';
import type { XtreamCategory, XtreamLiveStream, XtreamSeries, XtreamVodStream } from '../types/xtream';

// La griglia virtualizzata renderizza poche righe: nei test serve l'elenco intero.
vi.mock('./VirtualizedMediaGrid', () => ({
  VirtualizedMediaGrid: ({ items, renderItem }: { items: any[]; renderItem: (item: any, index: number) => React.ReactNode }) => (
    <div>{items.map((item, index) => <React.Fragment key={index}>{renderItem(item, index)}</React.Fragment>)}</div>
  ),
}));

const SERVER = 'http://server.esempio:8080';

const categories: XtreamCategory[] = [
  { category_id: '1', category_name: 'Prima categoria' },
  { category_id: '2', category_name: 'Seconda categoria' },
];

const vodStreams: XtreamVodStream[] = [
  { stream_id: 1, name: 'Bar Sport', container_extension: 'mkv', category_id: '1' },
  { stream_id: 2, name: 'Zeta Bar', container_extension: 'mp4', category_id: '2' },
];

const liveStreams: XtreamLiveStream[] = [
  { stream_id: 11, name: 'Bar Sport', category_id: '1' },
  { stream_id: 12, name: 'Zeta Bar', category_id: '2' },
];

const seriesList: XtreamSeries[] = [
  { series_id: 21, name: 'Bar Sport', category_id: '1' },
  { series_id: 22, name: 'Zeta Bar', category_id: '2' },
];

function stubEnvironment(options: { tv?: boolean } = {}) {
  const map = new Map<string, string>();
  const makeStorage = () => ({
    getItem: (key: string) => map.get(key) ?? null,
    setItem: (key: string, value: string) => void map.set(key, value),
    removeItem: (key: string) => void map.delete(key),
    clear: () => map.clear(),
  });
  vi.stubGlobal('localStorage', makeStorage());
  vi.stubGlobal('sessionStorage', makeStorage());
  vi.stubGlobal('navigator', {
    userAgent: options.tv
      ? 'Mozilla/5.0 (Linux; Android 9; Android TV)'
      : 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_0)',
    platform: options.tv ? 'Android' : 'iPhone',
    maxTouchPoints: options.tv ? 0 : 5,
  });
  vi.stubGlobal('window', {
    innerWidth: 390,
    location: { origin: SERVER, protocol: 'http:', search: '' },
    addEventListener: () => {},
    removeEventListener: () => {},
    matchMedia: () => ({ matches: false, addEventListener: () => {}, removeEventListener: () => {} }),
    setInterval: globalThis.setInterval.bind(globalThis),
    clearInterval: globalThis.clearInterval.bind(globalThis),
    setTimeout: globalThis.setTimeout.bind(globalThis),
    clearTimeout: globalThis.clearTimeout.bind(globalThis),
  });
  vi.stubGlobal('document', { addEventListener: () => {}, removeEventListener: () => {} });
  vi.stubGlobal('ResizeObserver', class {
    observe() {}
    unobserve() {}
    disconnect() {}
  });
}

const textOf = (renderer: ReturnType<typeof create>) => JSON.stringify(renderer.toJSON());

const scopeLabelOf = (renderer: ReturnType<typeof create>) =>
  renderer.root.findAll((node) => node.props['data-search-scope'] === 'all-categories');

/** La casella della sezione: il pannello categorie ne ha una propria. */
const searchBoxOf = (renderer: ReturnType<typeof create>) =>
  renderer.root
    .findAllByType('input')
    .find((input) => String(input.props.placeholder ?? '').startsWith('Cerca'))!;

async function typeIntoSearchBox(renderer: ReturnType<typeof create>, value: string) {
  await act(async () => {
    searchBoxOf(renderer).props.onChange({ target: { value } });
  });
}

beforeEach(() => {
  (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT = true;
});

afterEach(() => {
  vi.restoreAllMocks();
  vi.unstubAllGlobals();
  delete (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT;
});

describe('casella di ricerca della sezione Film', () => {
  const mountVod = async (options: { tv?: boolean } = {}) => {
    stubEnvironment(options);
    const { VodCatalog } = await import('./VodCatalog');
    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(
        <VodCatalog
          categories={categories}
          streams={vodStreams}
          serverUrl={SERVER}
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
    return renderer!;
  };

  it('da due caratteri cerca in tutte le categorie', async () => {
    const renderer = await mountVod();
    expect(textOf(renderer)).toContain('Bar Sport');
    expect(textOf(renderer)).not.toContain('Zeta Bar');

    await typeIntoSearchBox(renderer, 'ba');
    // "Bar Sport" (prefisso) prima di "Zeta Bar" (contiene), anche se la
    // seconda sta in un'altra categoria.
    expect(textOf(renderer)).toContain('Bar Sport');
    expect(textOf(renderer)).toContain('Zeta Bar');
    expect(scopeLabelOf(renderer)).toHaveLength(1);
    expect(textOf(renderer)).toContain('Risultati in tutte le categorie');
    const indexes = renderer.root
      .findAll((node) => node.props['data-media-index'] !== undefined)
      .map((node) => node.props['data-media-index']);
    expect(indexes).toEqual([1, 2]);
    await act(async () => renderer.unmount());
  });

  it('sotto i due caratteri torna alla vista per categoria', async () => {
    const renderer = await mountVod();
    await typeIntoSearchBox(renderer, 'z');
    // Un carattere: nessuna ricerca su tutto il catalogo, solo la categoria.
    expect(textOf(renderer)).not.toContain('Zeta Bar');
    expect(textOf(renderer)).not.toContain('Bar Sport');
    expect(scopeLabelOf(renderer)).toHaveLength(0);

    await typeIntoSearchBox(renderer, '');
    expect(textOf(renderer)).toContain('Bar Sport');
    expect(scopeLabelOf(renderer)).toHaveLength(0);
    await act(async () => renderer.unmount());
  });

  it('in modalità TV resta la ricerca nella categoria selezionata', async () => {
    const renderer = await mountVod({ tv: true });
    await typeIntoSearchBox(renderer, 'ba');
    expect(textOf(renderer)).toContain('Bar Sport');
    expect(textOf(renderer)).not.toContain('Zeta Bar');
    expect(scopeLabelOf(renderer)).toHaveLength(0);
    await act(async () => renderer.unmount());
  });
});

describe('casella di ricerca della sezione Live', () => {
  const mountLive = async (options: { tv?: boolean } = {}) => {
    stubEnvironment(options);
    const { LiveCatalog } = await import('./LiveCatalog');
    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(
        <LiveCatalog
          categories={categories}
          streams={liveStreams}
          serverUrl={SERVER}
          username="demo"
          password="demo"
          onPlay={() => {}}
        />,
      );
    });
    return renderer!;
  };

  it('da due caratteri cerca in tutte le categorie', async () => {
    const renderer = await mountLive();
    expect(textOf(renderer)).toContain('Bar Sport');
    expect(textOf(renderer)).not.toContain('Zeta Bar');

    await typeIntoSearchBox(renderer, 'ba');
    expect(textOf(renderer)).toContain('Bar Sport');
    expect(textOf(renderer)).toContain('Zeta Bar');
    expect(scopeLabelOf(renderer)).toHaveLength(1);
    await act(async () => renderer.unmount());
  });

  it('sotto i due caratteri torna alla vista per categoria', async () => {
    const renderer = await mountLive();
    await typeIntoSearchBox(renderer, 'z');
    expect(textOf(renderer)).not.toContain('Zeta Bar');
    expect(scopeLabelOf(renderer)).toHaveLength(0);
    await act(async () => renderer.unmount());
  });

  it('in modalità TV resta la ricerca nella categoria selezionata', async () => {
    const renderer = await mountLive({ tv: true });
    await typeIntoSearchBox(renderer, 'ba');
    expect(textOf(renderer)).toContain('Bar Sport');
    expect(textOf(renderer)).not.toContain('Zeta Bar');
    expect(scopeLabelOf(renderer)).toHaveLength(0);
    await act(async () => renderer.unmount());
  });
});

describe('casella di ricerca della sezione Serie', () => {
  const mountSeries = async (options: { tv?: boolean } = {}) => {
    stubEnvironment(options);
    const { SeriesCatalog } = await import('./SeriesCatalog');
    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(
        <SeriesCatalog
          categories={categories}
          seriesList={seriesList}
          serverUrl={SERVER}
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
    return renderer!;
  };

  it('da due caratteri cerca in tutte le categorie', async () => {
    const renderer = await mountSeries();
    expect(textOf(renderer)).toContain('Bar Sport');
    expect(textOf(renderer)).not.toContain('Zeta Bar');

    await typeIntoSearchBox(renderer, 'ba');
    expect(textOf(renderer)).toContain('Bar Sport');
    expect(textOf(renderer)).toContain('Zeta Bar');
    expect(scopeLabelOf(renderer)).toHaveLength(1);
    await act(async () => renderer.unmount());
  });

  it('sotto i due caratteri torna alla vista per categoria', async () => {
    const renderer = await mountSeries();
    await typeIntoSearchBox(renderer, 'z');
    expect(textOf(renderer)).not.toContain('Zeta Bar');
    expect(scopeLabelOf(renderer)).toHaveLength(0);
    await act(async () => renderer.unmount());
  });

  it('in modalità TV resta la ricerca nella categoria selezionata', async () => {
    const renderer = await mountSeries({ tv: true });
    await typeIntoSearchBox(renderer, 'ba');
    expect(textOf(renderer)).toContain('Bar Sport');
    expect(textOf(renderer)).not.toContain('Zeta Bar');
    expect(scopeLabelOf(renderer)).toHaveLength(0);
    await act(async () => renderer.unmount());
  });
});
