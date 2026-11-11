import React from 'react';
import { act, create } from 'react-test-renderer';
import { afterEach, beforeEach, describe, expect, it, vi } from 'vitest';
import type { PlayableMediaItem } from '../types/xtream';

vi.mock('./VirtualizedMediaGrid', () => ({
  VirtualizedMediaGrid: ({ items, renderItem }: { items: any[]; renderItem: (item: any, index: number) => React.ReactNode }) => (
    <div>{items.map((item, index) => <React.Fragment key={index}>{renderItem(item, index)}</React.Fragment>)}</div>
  ),
}));
vi.mock('../services/xtreamClient', () => ({
  xtreamClient: {
    getVodInfo: async () => ({ info: { plot: 'Trama del film' } }),
    getSeriesInfo: async () => ({
      seasons: [],
      info: { episodes: { '1': [{ id: '999', episode_num: 1, title: 'Episodio', container_extension: 'mp4' }] } },
    }),
  },
}));

import * as downloadHelper from '../utils/downloadHelper';
import { storage } from '../services/storage';
import { TOUCH_WITHOUT_HOVER_QUERY } from '../utils/touchDevice';
import { VodCatalog } from './VodCatalog';
import { SeriesCatalog } from './SeriesCatalog';
import { RecentProductsShelf } from './RecentProductsShelf';
import { FavoritesView } from './FavoritesView';
import { MovieDetailModal } from './MovieDetailModal';

const account = { serverUrl: 'http://server.esempio:8080', username: 'demo', password: 'demo' };
const categories = [{ category_id: '1', category_name: 'Catalogo' }];
const movies = [{ stream_id: 123, name: 'Film', category_id: '1', container_extension: 'mp4' }];
const series = [{ series_id: 456, name: 'Serie', category_id: '1' }];

const tokensOf = (className: unknown): string[] =>
  typeof className === 'string' ? className.split(/\s+/).filter(Boolean) : [];

function stubDevice(options: { touch: boolean; tv?: boolean }) {
  vi.stubGlobal('navigator', {
    userAgent: options.tv ? 'Android TV' : 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_0)',
    platform: options.tv ? 'Linux armv8l' : 'iPhone',
    maxTouchPoints: 5,
  });
  vi.stubGlobal('window', {
    innerWidth: 390,
    location: { origin: 'http://example.com', protocol: 'http:', search: '' },
    matchMedia: (query: string) => ({
      matches: query === TOUCH_WITHOUT_HOVER_QUERY ? options.touch : false,
      addEventListener: () => {},
      removeEventListener: () => {},
    }),
    addEventListener: () => {},
    removeEventListener: () => {},
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
}

const createNodeMock = () => ({
  clientHeight: 600,
  scrollHeight: 600,
  scrollTop: 0,
  getBoundingClientRect: () => ({ width: 400, height: 600, top: 0, left: 0, right: 400, bottom: 600 }),
  addEventListener: () => {},
  removeEventListener: () => {},
});

/** Poster cards: relative group containers that react to a click. */
function findCards(renderer: ReturnType<typeof create>) {
  return renderer.root.findAll(
    (node) =>
      node.type === 'div' &&
      typeof node.props.onClick === 'function' &&
      tokensOf(node.props.className).includes('group') &&
      tokensOf(node.props.className).includes('relative') &&
      !tokensOf(node.props.className).includes('absolute'),
  );
}

function hasText(renderer: ReturnType<typeof create>, text: string): boolean {
  const walk = (node: any): boolean => {
    if (!node) return false;
    if (typeof node === 'string') return node.includes(text);
    if (Array.isArray(node)) return node.some(walk);
    return walk(node.children);
  };
  return walk(renderer.toJSON());
}

function hasTitle(renderer: ReturnType<typeof create>, title: string): boolean {
  return renderer.root.findAll((node) => node.props?.title === title).length > 0;
}

beforeEach(() => {
  (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT = true;
  const store = new Map<string, string>();
  const makeStorage = () => ({
    getItem: (key: string) => store.get(key) ?? null,
    setItem: (key: string, value: string) => void store.set(key, value),
    removeItem: (key: string) => void store.delete(key),
    clear: () => store.clear(),
  });
  vi.stubGlobal('localStorage', makeStorage());
  vi.stubGlobal('sessionStorage', makeStorage());
  vi.stubGlobal('ResizeObserver', class {
    observe() {}
    unobserve() {}
    disconnect() {}
  });
});

afterEach(() => {
  vi.restoreAllMocks();
  vi.unstubAllGlobals();
  delete (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT;
});

describe('Film card on a touch screen', () => {
  it('opens the movie sheet on a tap instead of starting playback', async () => {
    stubDevice({ touch: true });
    vi.spyOn(downloadHelper, 'isTvEnvironment').mockReturnValue(false);
    const onPlay = vi.fn();
    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(<VodCatalog categories={categories} streams={movies as any} {...account} onPlay={onPlay} />, { createNodeMock });
    });

    // The invisible hover veil is not rendered at all on touch.
    expect(hasTitle(renderer!, 'Riproduci ora')).toBe(false);

    const card = renderer!.root.find((node) => node.type === 'div' && node.props['data-media-index'] === 1);
    await act(async () => {
      card.props.onClick();
    });

    expect(onPlay).not.toHaveBeenCalled();
    expect(hasText(renderer!, 'Guarda Film')).toBe(true);
    expect(hasText(renderer!, 'Trama del film')).toBe(true);
    await act(async () => renderer!.unmount());
  });

  it('keeps the star tappable without opening the sheet', async () => {
    stubDevice({ touch: true });
    vi.spyOn(downloadHelper, 'isTvEnvironment').mockReturnValue(false);
    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(<VodCatalog categories={categories} streams={movies as any} {...account} onPlay={() => {}} />, { createNodeMock });
    });

    const star = renderer!.root.find(
      (node) => node.type === 'button' && node.props['aria-label'] === 'Aggiungi ai preferiti',
    );
    let stopped = false;
    await act(async () => {
      star.props.onClick({ stopPropagation: () => { stopped = true; } });
    });

    expect(stopped).toBe(true);
    expect(hasText(renderer!, 'Guarda Film')).toBe(false);
    expect(renderer!.root.findAllByType(MovieDetailModal).every((modal) => modal.props.movie === null)).toBe(true);
    await act(async () => renderer!.unmount());
  });
});

describe('Film card with a mouse and in TV mode', () => {
  it('keeps the hover veil and the click-to-play behaviour on desktop', async () => {
    stubDevice({ touch: false });
    vi.spyOn(downloadHelper, 'isTvEnvironment').mockReturnValue(false);
    const onPlay = vi.fn();
    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(<VodCatalog categories={categories} streams={movies as any} {...account} onPlay={onPlay} />, { createNodeMock });
    });

    const card = renderer!.root.find((node) => node.type === 'div' && node.props['data-media-index'] === 1);
    expect(card.props.onClick).toBeUndefined();
    expect(hasTitle(renderer!, 'Riproduci ora')).toBe(true);

    const playButton = renderer!.root.find((node) => node.type === 'button' && node.props.title === 'Riproduci ora');
    await act(async () => {
      playButton.props.onClick();
    });
    expect(onPlay).toHaveBeenCalledTimes(1);

    const detailsButton = renderer!.root.find((node) => node.type === 'button' && node.props.title === 'Trama e dettagli');
    await act(async () => {
      detailsButton.props.onClick();
    });
    expect(hasText(renderer!, 'Guarda Film')).toBe(true);
    await act(async () => renderer!.unmount());
  });

  it('keeps the TV navigation untouched', async () => {
    stubDevice({ touch: true, tv: true });
    vi.spyOn(downloadHelper, 'isTvEnvironment').mockReturnValue(true);
    const onPlay = vi.fn();
    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(<VodCatalog categories={categories} streams={movies as any} {...account} onPlay={onPlay} />, { createNodeMock });
    });

    const card = renderer!.root.find((node) => node.type === 'div' && node.props['data-media-index'] === 1);
    expect(card.props.onClick).toBeUndefined();
    // TV keeps the hover veil: the remote reaches it through focus.
    expect(hasTitle(renderer!, 'Riproduci ora')).toBe(true);
    await act(async () => {
      card.props.onKeyDown({ key: 'Enter' });
    });
    expect(hasText(renderer!, 'Guarda Film')).toBe(true);
    expect(onPlay).not.toHaveBeenCalled();
    await act(async () => renderer!.unmount());
  });
});

describe('Serie card on a touch screen', () => {
  it('opens the episodes sheet and hides the hover veil', async () => {
    stubDevice({ touch: true });
    vi.spyOn(downloadHelper, 'isTvEnvironment').mockReturnValue(false);
    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(
        <SeriesCatalog categories={categories} seriesList={series as any} {...account} onPlay={() => {}} />,
        { createNodeMock },
      );
    });

    expect(hasText(renderer!, 'Sfoglia Episodi')).toBe(false);
    const card = renderer!.root.find((node) => node.type === 'div' && node.props['data-media-index'] === 1);
    await act(async () => {
      card.props.onClick();
    });
    expect(hasText(renderer!, 'Seleziona stagione ed episodio')).toBe(true);
    await act(async () => renderer!.unmount());
  });
});

describe('Novità cards', () => {
  it('opens the movie sheet on touch and plays with a mouse', async () => {
    stubDevice({ touch: true });
    vi.spyOn(downloadHelper, 'isTvEnvironment').mockReturnValue(false);
    const onPlay = vi.fn();
    let touchRenderer: ReturnType<typeof create>;
    await act(async () => {
      touchRenderer = create(
        <RecentProductsShelf vodStreams={movies as any} seriesList={series as any} {...account} onPlay={onPlay} onOpenSeries={() => {}} onNavigateToTab={() => {}} />,
      );
    });
    const touchCard = findCards(touchRenderer!)[0];
    await act(async () => {
      touchCard.props.onClick();
    });
    expect(onPlay).not.toHaveBeenCalled();
    expect(hasText(touchRenderer!, 'Guarda Film')).toBe(true);
    await act(async () => touchRenderer!.unmount());
  });

  it('still starts playback with a mouse', async () => {
    stubDevice({ touch: false });
    vi.spyOn(downloadHelper, 'isTvEnvironment').mockReturnValue(false);
    const onPlay = vi.fn();
    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(
        <RecentProductsShelf vodStreams={movies as any} seriesList={series as any} {...account} onPlay={onPlay} onOpenSeries={() => {}} onNavigateToTab={() => {}} />,
      );
    });
    const card = findCards(renderer!)[0];
    await act(async () => {
      card.props.onClick();
    });
    expect(onPlay).toHaveBeenCalledTimes(1);
    expect(hasText(renderer!, 'Guarda Film')).toBe(false);
    await act(async () => renderer!.unmount());
  });
});

describe('Preferiti cards', () => {
  const movieFavorite: PlayableMediaItem = {
    id: 'movie_123',
    title: 'Film Preferito',
    type: 'movie',
    streamUrl: 'http://server.esempio:8080/movie/demo/demo/123.mp4',
    poster: '',
    containerExtension: 'mp4',
  };
  const seriesFavorite: PlayableMediaItem = {
    id: 'series_456',
    title: 'Serie Preferita',
    type: 'series',
    streamUrl: '',
  };
  const liveFavorite: PlayableMediaItem = {
    id: 'live_789',
    title: 'Canale Preferito',
    type: 'live',
    streamUrl: 'http://server.esempio:8080/live/demo/demo/789.m3u8',
  };

  async function renderFavorites(
    onPlay: (item: PlayableMediaItem) => void,
    onOpenSeries: (id: string | number) => void,
    items: PlayableMediaItem[] = [movieFavorite, seriesFavorite, liveFavorite],
  ) {
    localStorage.clear();
    // The last toggled favorite is listed first.
    for (const item of items) storage.toggleFavorite(item);
    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(
        <FavoritesView onPlay={onPlay} onOpenSeries={onOpenSeries} {...account} />,
      );
    });
    return renderer!;
  }

  it('opens the movie sheet on touch instead of playing', async () => {
    stubDevice({ touch: true });
    vi.spyOn(downloadHelper, 'isTvEnvironment').mockReturnValue(false);
    const onPlay = vi.fn();
    const renderer = await renderFavorites(onPlay, () => {}, [movieFavorite]);

    const cards = findCards(renderer);
    expect(cards).toHaveLength(1);
    await act(async () => {
      cards[0].props.onClick();
    });
    expect(onPlay).not.toHaveBeenCalled();
    expect(hasText(renderer, 'Guarda Film')).toBe(true);
    await act(async () => renderer.unmount());
  });

  it('keeps series opening the series sheet and live playing on a tap', async () => {
    stubDevice({ touch: true });
    vi.spyOn(downloadHelper, 'isTvEnvironment').mockReturnValue(false);
    const onPlay = vi.fn();
    const onOpenSeries = vi.fn();

    const seriesRenderer = await renderFavorites(onPlay, onOpenSeries, [seriesFavorite]);
    await act(async () => {
      findCards(seriesRenderer)[0].props.onClick();
    });
    expect(onOpenSeries).toHaveBeenCalledWith('456');
    await act(async () => seriesRenderer.unmount());

    const liveRenderer = await renderFavorites(onPlay, onOpenSeries, [liveFavorite]);
    await act(async () => {
      findCards(liveRenderer)[0].props.onClick();
    });
    expect(onPlay).toHaveBeenCalledWith(liveFavorite);
    expect(hasText(liveRenderer, 'Guarda Film')).toBe(false);
    await act(async () => liveRenderer.unmount());
  });

  it('plays a movie favorite with a mouse', async () => {
    stubDevice({ touch: false });
    vi.spyOn(downloadHelper, 'isTvEnvironment').mockReturnValue(false);
    const onPlay = vi.fn();
    const renderer = await renderFavorites(onPlay, () => {}, [movieFavorite]);

    const [movieCard] = findCards(renderer);
    await act(async () => {
      movieCard.props.onClick();
    });
    expect(onPlay).toHaveBeenCalledWith(movieFavorite);
    expect(hasText(renderer, 'Guarda Film')).toBe(false);
    await act(async () => renderer.unmount());
  });
});
