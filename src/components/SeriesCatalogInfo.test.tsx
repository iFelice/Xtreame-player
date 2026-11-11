import React from 'react';
import { act, create, type ReactTestRenderer } from 'react-test-renderer';
import { afterEach, beforeEach, describe, expect, it, vi } from 'vitest';
import * as downloadHelper from '../utils/downloadHelper';
import { xtreamClient } from '../services/xtreamClient';
import { SeriesCatalog } from './SeriesCatalog';
import { ExpandablePlot } from './ExpandablePlot';

vi.mock('./VirtualizedMediaGrid', () => ({ VirtualizedMediaGrid: () => null }));
vi.mock('../services/xtreamClient', () => ({ xtreamClient: { getSeriesInfo: vi.fn() } }));

const account = { serverUrl: 'http://server.esempio:8080', username: 'demo', password: 'demo' };
const categories = [{ category_id: '1', category_name: 'Catalogo' }];
const series = [{ series_id: 456, name: 'Serie demo', category_id: '1', cover: 'http://server.esempio:8080/cover.jpg' }];
const longPlot = 'Una trama dimostrativa abbastanza lunga da occupare diverse righe nella finestra della serie.';
const data = {
  info: { plot: longPlot, genre: 'Avventura', release_date: '2024-01-01', cast: 'Anna Demo', director: 'Luca Demo', rating: 8.5 },
  episodes: { '1': [
    { id: '1', episode_num: 1, title: 'Primo', container_extension: 'mp4', info: { plot: longPlot } },
    { id: '2', episode_num: 2, title: 'Secondo', container_extension: 'mp4', info: {} },
  ] },
};
let renderer: ReactTestRenderer;
let bodyClasses: Set<string>;

beforeEach(() => {
  (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT = true;
  bodyClasses = new Set();
  const store = { getItem: () => null, setItem: () => {}, removeItem: () => {} };
  vi.stubGlobal('localStorage', store);
  vi.stubGlobal('sessionStorage', store);
  vi.stubGlobal('navigator', { userAgent: 'demo', platform: 'demo', maxTouchPoints: 0 });
  vi.stubGlobal('window', { innerWidth: 1024, location: { protocol: 'https:' }, matchMedia: () => ({ matches: false, addEventListener: () => {}, removeEventListener: () => {} }), addEventListener: () => {}, removeEventListener: () => {}, setInterval, clearInterval, setTimeout, clearTimeout });
  vi.stubGlobal('document', { body: { classList: { contains: (value: string) => bodyClasses.has(value) } }, addEventListener: () => {}, removeEventListener: () => {}, getElementById: () => null });
  vi.spyOn(downloadHelper, 'isTvEnvironment').mockReturnValue(false);
});

afterEach(async () => {
  if (renderer) await act(async () => renderer.unmount());
  vi.restoreAllMocks();
  vi.unstubAllGlobals();
  delete (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT;
});

async function render(result: unknown, onPlay = vi.fn(), cover = true) {
  vi.mocked(xtreamClient.getSeriesInfo).mockResolvedValue(result as never);
  await act(async () => {
    renderer = create(<SeriesCatalog categories={categories} seriesList={cover ? series : [{ ...series[0], cover: '' }]} {...account} onPlay={onPlay} selectedSeriesId={456} />, {
      createNodeMock: (element) => element.type === 'p' && (element.props as Record<string, unknown>)['aria-hidden'] ? { scrollHeight: 100, clientHeight: 40 } : null,
    });
  });
  return onPlay;
}

describe('series detail information', () => {
  it('shows normalized information and clamped plots; expansion does not play', async () => {
    const onPlay = await render(data);
    const block = renderer.root.findByProps({ 'data-series-info': true });
    expect(block.findAllByType('dd').map((node) => node.children.join('')).join(' ')).toContain('Anna Demo');
    expect(block.findAllByType('dd').map((node) => node.children.join('')).join(' ')).toContain('2024');
    expect(block.findAllByType('dd').map((node) => node.children.join('')).join(' ')).toContain('8.5');
    const image = block.findByType('img');
    expect(image.props.src).toContain('https://wsrv.nl/');
    expect(image.props.referrerPolicy).toBe('no-referrer');
    const plots = renderer.root.findAllByProps({ 'data-expandable-plot': true });
    expect(plots).toHaveLength(2);
    expect(plots[0].findAllByType('p')[0].props.style.WebkitLineClamp).toBe(3);
    expect(plots[1].findAllByType('p')[0].props.style.WebkitLineClamp).toBe(2);
    await act(async () => plots[0].findByType('button').props.onClick({ stopPropagation: vi.fn() }));
    expect(plots[0].findByType('button').children).toContain('Meno');
    const stopPropagation = vi.fn();
    await act(async () => plots[1].findByType('button').props.onClick({ stopPropagation }));
    expect(stopPropagation).toHaveBeenCalledOnce();
    expect(onPlay).not.toHaveBeenCalled();
    expect(plots[1].findByType('button').children).toContain('Meno');
    await act(async () => plots[1].findByType('button').props.onClick({ stopPropagation }));
    expect(plots[1].findByType('button').children).toContain('Altro');
    await act(async () => renderer.root.findAllByType('button').find((button) => button.children.includes('Guarda'))!.props.onClick());
    expect(onPlay).toHaveBeenCalledOnce();
    expect(xtreamClient.getSeriesInfo).toHaveBeenCalledOnce();
  });

  it('does not offer expansion when the text fits', async () => {
    await act(async () => {
      renderer = create(<ExpandablePlot text="Breve" lines={2} />, {
        createNodeMock: () => ({ scrollHeight: 40, clientHeight: 40 }),
      });
    });
    expect(renderer.root.findAllByType('button')).toHaveLength(0);
  });

  it('keeps the loading and failure states without showing catalog information', async () => {
    let reject!: (reason?: unknown) => void;
    vi.mocked(xtreamClient.getSeriesInfo).mockReturnValue(new Promise((_resolve, rejectPromise) => { reject = rejectPromise; }));
    await act(async () => {
      renderer = create(<SeriesCatalog categories={categories} seriesList={series} {...account} onPlay={() => {}} selectedSeriesId={456} />);
    });
    expect(JSON.stringify(renderer.toJSON())).toContain('Caricamento stagioni ed episodi');
    expect(renderer.root.findAllByProps({ 'data-series-info': true })).toHaveLength(0);
    await act(async () => reject(new Error('errore demo')));
    expect(JSON.stringify(renderer.toJSON())).toContain('Nessun episodio disponibile');
    expect(renderer.root.findAllByProps({ 'data-series-info': true })).toHaveLength(0);
  });

  it('hides a failed cover image', async () => {
    await render(data);
    const block = renderer.root.findByProps({ 'data-series-info': true });
    await act(async () => block.findByType('img').props.onError({}));
    expect(block.findAllByType('img')).toHaveLength(0);
  });

  it('shows information without episodes and no empty fields', async () => {
    await render({ info: { plot: 'Trama', genre: 'null' }, episodes: {} }, vi.fn(), false);
    const block = renderer.root.findByProps({ 'data-series-info': true });
    expect(block.findAllByType('p').some((node) => node.children.includes('Trama'))).toBe(true);
    expect(block.findAllByType('dt')).toHaveLength(0);
    expect(JSON.stringify(renderer.toJSON())).toContain('Nessun episodio disponibile');
  });

  it('omits the block and episode plots when no data is present', async () => {
    await render({ info: { plot: 'null' }, episodes: { '1': [{ id: '2', episode_num: 2, title: 'Secondo', container_extension: 'mp4', info: { plot: ' ' } }] } }, vi.fn(), false);
    expect(renderer.root.findAllByProps({ 'data-series-info': true })).toHaveLength(0);
    expect(renderer.root.findAllByProps({ 'data-expandable-plot': true })).toHaveLength(0);
  });

  it.each(['environment', 'body class'])('leaves TV details unchanged for %s', async (mode) => {
    if (mode === 'environment') vi.mocked(downloadHelper.isTvEnvironment).mockReturnValue(true);
    else bodyClasses.add('tv-mode');
    await render(data);
    expect(renderer.root.findAllByProps({ 'data-series-info': true })).toHaveLength(0);
    expect(renderer.root.findAllByProps({ 'data-expandable-plot': true })).toHaveLength(0);
    expect(renderer.root.findAllByType('button').filter((button) => button.children.includes('Guarda'))).toHaveLength(2);
  });
});
