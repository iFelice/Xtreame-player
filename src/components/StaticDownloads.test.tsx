import React from 'react';
import { act, create } from 'react-test-renderer';
import { afterEach, beforeEach, describe, expect, it, vi } from 'vitest';

vi.mock('./VirtualizedMediaGrid', () => ({
  VirtualizedMediaGrid: ({ items, renderItem }: { items: unknown[]; renderItem: (item: unknown, index: number) => React.ReactNode }) => (
    <div>{items.map((item, index) => <React.Fragment key={index}>{renderItem(item, index)}</React.Fragment>)}</div>
  ),
}));
vi.mock('../services/xtreamClient', () => ({
  xtreamClient: {
    getVodInfo: async () => ({}),
    getSeriesInfo: async () => ({ episodes: { '1': [{ id: '123', episode_num: 1, title: 'Episodio', container_extension: 'mp4' }] } }),
  },
}));

const categories = [{ category_id: '1', category_name: 'Catalogo' }];
const movies = [{ stream_id: 123, name: 'Film', category_id: '1', container_extension: 'mp4' }];
const series = [{ series_id: 456, name: 'Serie', category_id: '1' }];
const account = { serverUrl: 'http://server.esempio:8080', username: 'demo', password: 'demo' };

beforeEach(() => {
  (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT = true;
  const storage = { getItem: () => null, setItem: () => {}, removeItem: () => {} };
  vi.stubGlobal('localStorage', storage);
  vi.stubGlobal('sessionStorage', storage);
  vi.stubGlobal('navigator', { userAgent: 'Android', platform: 'Linux', maxTouchPoints: 5 });
  vi.stubGlobal('window', {
    innerWidth: 1024,
    location: { protocol: 'http:' },
    matchMedia: () => ({ matches: false, addEventListener: () => {}, removeEventListener: () => {} }),
    addEventListener: () => {}, removeEventListener: () => {},
    setInterval, clearInterval, setTimeout, clearTimeout,
  });
  vi.stubGlobal('document', { addEventListener: () => {}, removeEventListener: () => {}, getElementById: () => null });
});

afterEach(() => {
  vi.unstubAllEnvs();
  vi.unstubAllGlobals();
  vi.restoreAllMocks();
  delete (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT;
});

describe('download controls by deployment', () => {
  it.each([['static', false], ['production', true]] as const)(
    'shows download controls in movie, details, recent and episode views for %s: %s',
    async (mode, expected) => {
      vi.stubEnv('MODE', mode);
      vi.resetModules();
      const { VodCatalog } = await import('./VodCatalog');
      const { SeriesCatalog } = await import('./SeriesCatalog');
      const { RecentProductsShelf } = await import('./RecentProductsShelf');
      let vod: ReturnType<typeof create>;
      let recent: ReturnType<typeof create>;
      let episodes: ReturnType<typeof create>;
      await act(async () => {
        vod = create(<VodCatalog categories={categories} streams={movies} {...account} onPlay={() => {}} />);
        recent = create(<RecentProductsShelf vodStreams={movies} seriesList={series} {...account} onPlay={() => {}} onOpenSeries={() => {}} onNavigateToTab={() => {}} />);
        episodes = create(<SeriesCatalog categories={categories} seriesList={series} {...account} onPlay={() => {}} selectedSeriesId={456} />);
      });
      expect(vod!.root.findAllByProps({ 'aria-label': 'Scarica film' }).length > 0).toBe(expected);
      expect(recent!.root.findAllByProps({ 'aria-label': 'Scarica film' }).length > 0).toBe(expected);
      expect(episodes!.root.findAllByProps({ 'aria-label': 'Scarica episodio' }).length > 0).toBe(expected);
      const card = vod!.root.findByProps({ 'data-media-index': 1 });
      await act(async () => { await card.props.onKeyDown({ key: 'Enter' }); });
      const movieButtons = vod!.root.findAllByProps({ 'aria-label': 'Scarica film' });
      expect(movieButtons.length).toBe(expected ? 2 : 0);
      await act(async () => { vod!.unmount(); recent!.unmount(); episodes!.unmount(); });
    },
  );
});
