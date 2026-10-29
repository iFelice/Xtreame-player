import { describe, expect, it, vi } from 'vitest';
import {
  MAX_RESULTS_PER_GROUP,
  MIN_QUERY_LENGTH,
  RANK_CONTAINS,
  RANK_PREFIX,
  buildCatalogIndex,
  buildSearchIndex,
  filterRanked,
  filterRankedEntries,
  hasMinQueryLength,
  matchRank,
  normalize,
  search,
  searchIndex,
  type SearchableCatalog,
} from './catalogSearch';
import type { XtreamLiveStream, XtreamSeries, XtreamVodStream } from '../types/xtream';

const channel = (id: string, name: string) => ({ stream_id: id, name, category_id: '1' }) as XtreamLiveStream;
const film = (id: string, name: string) => ({ stream_id: id, name, category_id: '1' }) as XtreamVodStream;
const serie = (id: string, name: string) => ({ series_id: id, name, category_id: '1' }) as XtreamSeries;

const catalogOf = (overrides: Partial<SearchableCatalog> = {}): SearchableCatalog => ({
  live: [channel('1', 'Cinema')],
  movies: [film('2', 'Cinema')],
  series: [serie('3', 'Cinema')],
  ...overrides,
});

describe('catalog search: normalization', () => {
  it('toglie maiuscole e accenti', () => {
    expect(normalize('Città')).toBe('citta');
    expect(normalize('  PERCHÉ  ')).toBe('perche');
    expect(normalize("D'Annunzio")).toBe("d'annunzio");
    expect(normalize('   ')).toBe('');
  });
});

describe('catalog search: ranking', () => {
  it('distingue prefisso, contenuto e nessuna corrispondenza', () => {
    expect(matchRank('ci', 'citta')).toBe(RANK_PREFIX);
    expect(matchRank('ci', 'la citta')).toBe(RANK_CONTAINS);
    expect(matchRank('ci', 'altro')).toBeNull();
    expect(matchRank('', 'citta')).toBeNull();
  });

  it('cerca senza maiuscole e senza accenti', () => {
    const films = [film('1', 'Città di vetro'), film('2', 'Altro film')];
    expect(filterRanked(films, 'CITTA', (item) => item.name).map((item) => item.stream_id)).toEqual(['1']);
    expect(filterRanked(films, 'città', (item) => item.name).map((item) => item.stream_id)).toEqual(['1']);
  });

  it('mette prima i prefissi, poi chi contiene, poi l’ordine alfabetico', () => {
    const titles = ['La città', 'Città proibita', 'cittadino', 'Città'];
    expect(filterRanked(titles, 'citta', (title) => title)).toEqual([
      'Città',
      'Città proibita',
      'cittadino',
      'La città',
    ]);
  });

  it('limita a cinquanta risultati per gruppo', () => {
    const films = Array.from({ length: 60 }, (_, index) => film(String(index + 1), `Film numero ${index + 1}`));
    const result = filterRanked(films, 'film', (item) => item.name);
    expect(MAX_RESULTS_PER_GROUP).toBe(50);
    expect(result).toHaveLength(50);
    expect(result[0].stream_id).toBe('1');
  });
});

describe('catalog search: soglia dei due caratteri', () => {
  it('sotto i due caratteri non cerca', () => {
    expect(MIN_QUERY_LENGTH).toBe(2);
    expect(hasMinQueryLength('c')).toBe(false);
    expect(hasMinQueryLength('  c ')).toBe(false);
    expect(hasMinQueryLength('ci')).toBe(true);
    expect(search(catalogOf(), 'c').isEmpty).toBe(true);

    const full = search(catalogOf(), 'ci');
    expect(full.live.map((item) => item.stream_id)).toEqual(['1']);
    expect(full.movies.map((item) => item.stream_id)).toEqual(['2']);
    expect(full.series.map((item) => item.series_id)).toEqual(['3']);
  });

  it('ignora gli spazi ai bordi', () => {
    expect(search(catalogOf({ live: [], movies: [], series: [serie('9', 'Dark')] }), '  dark ').series).toHaveLength(1);
  });
});

describe('catalog search: catalogo assente', () => {
  it('non produce risultati senza catalogo o senza testo', () => {
    expect(search(null, 'film').isEmpty).toBe(true);
    expect(search(undefined, 'film').isEmpty).toBe(true);
    expect(search(catalogOf(), '').isEmpty).toBe(true);
    expect(search(catalogOf({ live: [], movies: [], series: [] }), 'film').isEmpty).toBe(true);
    expect(searchIndex(null, 'film').isEmpty).toBe(true);
    expect(filterRankedEntries([], 'film')).toEqual([]);
    expect(buildSearchIndex(undefined, (item: XtreamVodStream) => item.name)).toEqual([]);
  });
});

describe('catalog search: ogni gruppo segue il proprio ordine', () => {
  it('ordina live, film e serie indipendentemente', () => {
    const results = search(
      catalogOf({
        live: [channel('1', 'Rai Sport'), channel('2', 'Sportivo'), channel('3', 'Altro')],
        movies: [film('4', 'Sport estremo'), film('5', 'Lo sport')],
        series: [],
      }),
      'sport',
    );
    expect(results.live.map((item) => item.stream_id)).toEqual(['2', '1']);
    expect(results.movies.map((item) => item.stream_id)).toEqual(['4', '5']);
    expect(results.series).toEqual([]);
    expect(results.isEmpty).toBe(false);
  });
});

describe('catalog search: indice e memoizzazione', () => {
  it('normalizza i nomi una sola volta per catalogo', () => {
    const films = [film('1', 'Città di vetro'), film('2', 'Altro film'), film('3', 'Cittadino')];
    const nameOf = vi.fn((item: XtreamVodStream) => item.name);
    const index = buildSearchIndex(films, nameOf);
    expect(nameOf).toHaveBeenCalledTimes(films.length);
    expect(index.map((entry) => entry.normalizedName)).toEqual([
      'citta di vetro',
      'altro film',
      'cittadino',
    ]);

    // Le ricerche successive riusano lo stesso indice: nessuna chiamata in più.
    filterRankedEntries(index, 'citta');
    filterRankedEntries(index, 'film');
    searchIndex(buildCatalogIndex({ movies: films }), 'citta');
    expect(nameOf).toHaveBeenCalledTimes(films.length);
  });

  it('restituisce gli stessi oggetti del catalogo', () => {
    const films = [film('7', 'Città'), film('8', 'Cittadino')];
    const index = buildSearchIndex(films, (item) => item.name);
    const results = searchIndex(buildCatalogIndex({ movies: films }), 'citta');
    expect(results.movies[0]).toBe(films[0]);
    expect(filterRankedEntries(index, 'citta')[1]).toBe(films[1]);
  });
});
