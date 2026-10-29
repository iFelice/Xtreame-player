import React, { useState } from 'react';
import { readFileSync } from 'node:fs';
import { join } from 'node:path';
import { act, create } from 'react-test-renderer';
import { afterEach, beforeEach, describe, expect, it, vi } from 'vitest';
import type { PlayableMediaItem, XtreamLiveStream, XtreamSeries, XtreamVodStream } from '../types/xtream';
import { xtreamClient } from '../services/xtreamClient';
import { Navbar } from './Navbar';
import { SEARCH_DEBOUNCE_MS, SearchPage } from './SearchPage';

const SERVER = 'http://server.esempio:8080';

const channels: XtreamLiveStream[] = [
  { stream_id: 10, name: 'Cinema Live', category_id: '9' },
  { stream_id: 11, name: 'Rai Città', category_id: '8' },
];
const movies: XtreamVodStream[] = [
  { stream_id: 20, name: 'Città di vetro', container_extension: 'mkv', category_id: '7' },
  { stream_id: 21, name: 'Altro film', container_extension: 'mp4', category_id: '7' },
];
const seriesList: XtreamSeries[] = [
  { series_id: 30, name: 'Città segreta', category_id: '6' },
  { series_id: 31, name: 'Dark', category_id: '6' },
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
}

/** Piccolo scenario d'uso: la barra apre la vista Cerca, la vista chiude sé stessa. */
const Harness: React.FC<{
  onPlay: (item: PlayableMediaItem) => void;
  onOpenSeries: (series: XtreamSeries) => void;
  onClose?: () => void;
}> = ({ onPlay, onOpenSeries, onClose }) => {
  const [open, setOpen] = useState(false);
  return (
    <>
      <Navbar
        serverUrl={SERVER}
        username="demo"
        authData={null}
        onSelectAccount={() => {}}
        onOpenServerInfo={() => {}}
        onDisconnect={() => {}}
        onOpenSearch={() => setOpen(true)}
        isSearchOpen={open}
      />
      {open && (
        <SearchPage
          liveStreams={channels}
          movies={movies}
          seriesList={seriesList}
          serverUrl={SERVER}
          username="demo"
          password="demo"
          onPlay={onPlay}
          onOpenSeries={onOpenSeries}
          onClose={() => {
            setOpen(false);
            onClose?.();
          }}
        />
      )}
    </>
  );
};

const searchPageOf = (renderer: ReturnType<typeof create>) =>
  renderer.root.findAll((node) => node.props['data-search-page'] === 'true');

const groupsOf = (renderer: ReturnType<typeof create>) =>
  renderer.root
    .findAll((node) => typeof node.props['data-search-group'] === 'string' && node.type === 'section')
    .map((node) => node.props['data-search-group'] as string);

const resultRowOf = (renderer: ReturnType<typeof create>, group: 'movies' | 'series', id: string) =>
  renderer.root.find(
    (node) =>
      node.type === 'button' &&
      node.props['data-search-result'] === group &&
      node.props['data-result-id'] === id,
  );

const openSearch = async (renderer: ReturnType<typeof create>) => {
  const buttons = renderer.root.findAll(
    (node) => node.type === 'button' && node.props['aria-label'] === 'Cerca',
  );
  await act(async () => {
    buttons[0].props.onClick();
  });
  return buttons;
};

async function typeQuery(renderer: ReturnType<typeof create>, value: string) {
  await act(async () => {
    renderer.root.findByType('input').props.onChange({ target: { value } });
  });
  // La ricerca parte dopo il ritardo di digitazione.
  await act(async () => {
    await new Promise((resolve) => setTimeout(resolve, SEARCH_DEBOUNCE_MS + 60));
  });
}

beforeEach(() => {
  (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT = true;
  vi.spyOn(xtreamClient, 'getVodInfo').mockResolvedValue({ info: { plot: 'Trama' } } as any);
});

afterEach(() => {
  vi.restoreAllMocks();
  vi.unstubAllGlobals();
  delete (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT;
});

describe('pagina Cerca', () => {
  it('si apre dall’icona della barra e mette il campo a fuoco', async () => {
    stubEnvironment();
    const focus = vi.fn();
    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(<Harness onPlay={() => {}} onOpenSeries={() => {}} />, {
        createNodeMock: (element) => (element.type === 'input' ? { focus } : null),
      });
    });

    // Nessuna vista di ricerca prima del tocco sull'icona.
    expect(searchPageOf(renderer!)).toHaveLength(0);

    const buttons = await openSearch(renderer!);
    // Una nella barra mobile, una in quella desktop.
    expect(buttons.length).toBeGreaterThanOrEqual(2);
    expect(searchPageOf(renderer!)).toHaveLength(1);
    expect(focus).toHaveBeenCalled();
    expect(SEARCH_DEBOUNCE_MS).toBe(250);

    // Sotto i due caratteri: nessun risultato, solo il suggerimento.
    expect(renderer!.root.findAll((node) => node.props['data-search-hint'] === 'true')).toHaveLength(1);
    expect(groupsOf(renderer!)).toEqual([]);

    // Il pulsante di chiusura riporta alla vista normale.
    await act(async () => {
      renderer!.root
        .find((node) => node.type === 'button' && node.props['aria-label'] === 'Chiudi ricerca')
        .props.onClick();
    });
    expect(searchPageOf(renderer!)).toHaveLength(0);
    await act(async () => renderer!.unmount());
  });

  it('mostra i risultati raggruppati per Live, Film e Serie senza accenti', async () => {
    stubEnvironment();
    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(<Harness onPlay={() => {}} onOpenSeries={() => {}} />);
    });
    await openSearch(renderer!);

    await typeQuery(renderer!, 'citta');
    expect(groupsOf(renderer!)).toEqual(['live', 'movies', 'series']);
    // "Rai Città", "Città di vetro" e "Città segreta" si trovano scrivendo
    // senza accenti; "Cinema Live", "Altro film" e "Dark" restano fuori.
    const text = JSON.stringify(renderer!.toJSON());
    expect(text).toContain('Rai Città');
    expect(text).toContain('Città di vetro');
    expect(text).toContain('Città segreta');
    expect(text).not.toContain('Altro film');
    expect(text).not.toContain('Cinema Live');
    expect(text).not.toContain('"Dark"');

    await typeQuery(renderer!, 'zzz');
    expect(groupsOf(renderer!)).toEqual([]);
    expect(renderer!.root.findAll((node) => node.props['data-search-empty'] === 'true')).toHaveLength(1);
    expect(JSON.stringify(renderer!.toJSON())).toContain('Nessun risultato');
    await act(async () => renderer!.unmount());
  });

  it('avvia la riproduzione del canale live toccato', async () => {
    stubEnvironment();
    const onPlay = vi.fn();
    const onClose = vi.fn();
    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(<Harness onPlay={onPlay} onOpenSeries={() => {}} onClose={onClose} />);
    });
    await openSearch(renderer!);
    await typeQuery(renderer!, 'cinema');
    expect(groupsOf(renderer!)).toEqual(['live']);

    await act(async () => {
      renderer!.root
        .findAll(
          (node) =>
            node.type === 'button' &&
            String(node.props['aria-label']).startsWith('Guarda '),
        )[0]
        .props.onClick({ stopPropagation: () => {} });
    });
    expect(onPlay).toHaveBeenCalledTimes(1);
    const played = onPlay.mock.calls[0][0] as PlayableMediaItem;
    expect(played.id).toBe('live_10');
    expect(played.type).toBe('live');
    expect(played.title).toBe('Cinema Live');
    expect(played.streamUrl).toBe(`${SERVER}/live/demo/demo/10.m3u8`);
    // Toccato un risultato, la ricerca si chiude.
    expect(onClose).toHaveBeenCalled();
    await act(async () => renderer!.unmount());
  });

  it('apre la scheda condivisa del film e riproduce da lì', async () => {
    stubEnvironment();
    const onPlay = vi.fn();
    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(<Harness onPlay={onPlay} onOpenSeries={() => {}} />);
    });
    await openSearch(renderer!);
    await typeQuery(renderer!, 'citta');

    await act(async () => {
      resultRowOf(renderer!, 'movies', '20').props.onClick();
    });

    // Scheda film condivisa con Film, Novità e Preferiti: stessa finestra.
    expect(xtreamClient.getVodInfo).toHaveBeenCalledWith(SERVER, 'demo', 'demo', 20);
    const playButton = renderer!.root
      .findAllByType('button')
      .find((button) => String(button.children).includes('Guarda Film'));
    expect(playButton).toBeDefined();
    await act(async () => {
      playButton!.props.onClick();
    });
    expect(onPlay).toHaveBeenCalledTimes(1);
    const played = onPlay.mock.calls[0][0] as PlayableMediaItem;
    expect(played.id).toBe('movie_20');
    expect(played.type).toBe('movie');
    expect(played.containerExtension).toBe('mkv');
    expect(played.streamUrl).toBe(`${SERVER}/movie/demo/demo/20.mkv`);
    await act(async () => renderer!.unmount());
  });

  it('passa la serie alla vista con stagioni ed episodi della sezione Serie', async () => {
    stubEnvironment();
    const onOpenSeries = vi.fn();
    const onClose = vi.fn();
    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(<Harness onPlay={() => {}} onOpenSeries={onOpenSeries} onClose={onClose} />);
    });
    await openSearch(renderer!);
    await typeQuery(renderer!, 'citta');

    await act(async () => {
      resultRowOf(renderer!, 'series', '30').props.onClick();
    });
    expect(onOpenSeries).toHaveBeenCalledTimes(1);
    expect(onOpenSeries.mock.calls[0][0].series_id).toBe(30);
    // La serie si apre nella sezione Serie: la ricerca si chiude.
    expect(onClose).toHaveBeenCalled();
    await act(async () => renderer!.unmount());
  });

  it('rispetta le aree sicure della vista e della finestra del film', async () => {
    // L'utilità esiste in index.css e la vista la usa come le altre schermate.
    const css = readFileSync(join(import.meta.dirname, '..', 'index.css'), 'utf8');
    expect(css).toContain('@utility safe-area-page {');

    stubEnvironment();
    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(<Harness onPlay={() => {}} onOpenSeries={() => {}} />);
    });
    await openSearch(renderer!);
    expect(String(searchPageOf(renderer!)[0].props.className).split(/\s+/)).toContain('safe-area-page');

    // La scheda film è la stessa di Film, Novità e Preferiti: stessa area sicura.
    await typeQuery(renderer!, 'citta');
    await act(async () => {
      resultRowOf(renderer!, 'movies', '20').props.onClick();
    });
    const overlay = renderer!.root.find(
      (node) =>
        node.type === 'div' &&
        String(node.props.className ?? '').split(/\s+/).includes('safe-area-overlay'),
    );
    expect(overlay).toBeDefined();
    await act(async () => renderer!.unmount());
  });

  it('non compare in modalità TV', async () => {
    stubEnvironment({ tv: true });
    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(<Harness onPlay={() => {}} onOpenSeries={() => {}} />);
    });
    expect(
      renderer!.root.findAll((node) => node.type === 'button' && node.props['aria-label'] === 'Cerca'),
    ).toHaveLength(0);
    expect(searchPageOf(renderer!)).toHaveLength(0);
    await act(async () => renderer!.unmount());
  });
});
