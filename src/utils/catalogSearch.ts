import type { XtreamLiveStream, XtreamSeries, XtreamVodStream } from '../types/xtream';

/**
 * Ricerca locale sul catalogo già in memoria: nessuna richiesta al server.
 *
 * Modulo puro, controparte web di
 * `apps/android-tv/.../data/search/CatalogSearch.kt`: stesse regole, stesso
 * ordine, stessi limiti.
 *
 * - si cerca da [MIN_QUERY_LENGTH] caratteri in su;
 * - confronto senza maiuscole e senza accenti (NFD + rimozione dei segni
 *   diacritici \p{Mn}, minuscole, trim) sul nome di canali, film e serie;
 * - prima i nomi che iniziano con il testo, poi quelli che lo contengono,
 *   poi ordine alfabetico sul nome normalizzato e infine su quello mostrato;
 * - al massimo [MAX_RESULTS_PER_GROUP] risultati per gruppo.
 *
 * I nomi normalizzati sono calcolati una sola volta per catalogo: i cataloghi
 * contengono decine di migliaia di voci, quindi la normalizzazione passa da
 * [buildSearchIndex] (o [buildCatalogIndex]) e l'indice si riusa ad ogni
 * battito, non ad ogni render.
 */

/** Sotto i due caratteri non si cerca: il campo resta libero. */
export const MIN_QUERY_LENGTH = 2;

/** Massimo numero di risultati per ciascun gruppo (Live, Film, Serie). */
export const MAX_RESULTS_PER_GROUP = 50;

const COMBINING_MARKS = /\p{Mn}+/gu;

export const RANK_PREFIX = 0;
export const RANK_CONTAINS = 1;

/** Minuscole, senza accenti, senza spazi ai bordi. */
export function normalize(text: string): string {
  return String(text ?? '')
    .normalize('NFD')
    .replace(COMBINING_MARKS, '')
    .toLowerCase()
    .trim();
}

/** Il testo raggiunge la lunghezza minima per cercare. */
export function hasMinQueryLength(query: string): boolean {
  return normalize(query).length >= MIN_QUERY_LENGTH;
}

/** `0` se il nome inizia con il testo, `1` se lo contiene, `null` se non c'entra. */
export function matchRank(normalizedQuery: string, normalizedName: string): number | null {
  if (!normalizedQuery) return null;
  const index = normalizedName.indexOf(normalizedQuery);
  if (index < 0) return null;
  return index === 0 ? RANK_PREFIX : RANK_CONTAINS;
}

/** Una voce del catalogo con il nome già normalizzato. */
export interface SearchEntry<T> {
  item: T;
  normalizedName: string;
  displayName: string;
}

/**
 * Normalizza i nomi una volta sola per catalogo. L'indice risultante si passa
 * a [filterRankedEntries] ad ogni ricerca: nessuna richiesta al server, nessuna
 * ri-normalizzazione finché il catalogo non cambia.
 */
export function buildSearchIndex<T>(
  items: readonly T[] | null | undefined,
  name: (item: T) => string,
): SearchEntry<T>[] {
  if (!items) return [];
  const entries: SearchEntry<T>[] = new Array(items.length);
  for (let index = 0; index < items.length; index += 1) {
    const item = items[index];
    const displayName = String(name(item) ?? '');
    entries[index] = { item, normalizedName: normalize(displayName), displayName };
  }
  return entries;
}

interface RankedEntry<T> {
  entry: SearchEntry<T>;
  rank: number;
}

function compareEntries<T>(a: RankedEntry<T>, b: RankedEntry<T>): number {
  if (a.rank !== b.rank) return a.rank - b.rank;
  if (a.entry.normalizedName !== b.entry.normalizedName) {
    return a.entry.normalizedName < b.entry.normalizedName ? -1 : 1;
  }
  if (a.entry.displayName !== b.entry.displayName) {
    return a.entry.displayName < b.entry.displayName ? -1 : 1;
  }
  return 0;
}

/**
 * Filtra e ordina un indice per nome. Con meno di [MIN_QUERY_LENGTH] caratteri
 * (spazi esclusi) non si cerca e la lista è vuota.
 */
export function filterRankedEntries<T>(
  entries: readonly SearchEntry<T>[],
  query: string,
  limit: number = MAX_RESULTS_PER_GROUP,
): T[] {
  const normalizedQuery = normalize(query);
  if (normalizedQuery.length < MIN_QUERY_LENGTH) return [];

  const matches: RankedEntry<T>[] = [];
  for (const entry of entries) {
    const rank = matchRank(normalizedQuery, entry.normalizedName);
    if (rank === null) continue;
    matches.push({ entry, rank });
  }

  matches.sort(compareEntries);
  return matches.slice(0, Math.max(0, limit)).map((match) => match.entry.item);
}

/**
 * Variante comoda di [filterRankedEntries] per chi non ha un indice: normalizza
 * i nomi al momento. Da preferire la coppia `buildSearchIndex` +
 * `filterRankedEntries` quando la ricerca si ripete sullo stesso elenco.
 */
export function filterRanked<T>(
  items: readonly T[],
  query: string,
  name: (item: T) => string,
  limit: number = MAX_RESULTS_PER_GROUP,
): T[] {
  return filterRankedEntries(buildSearchIndex(items, name), query, limit);
}

/** Le tre sezioni del catalogo come sono già in memoria. */
export interface SearchableCatalog {
  live?: readonly XtreamLiveStream[];
  movies?: readonly XtreamVodStream[];
  series?: readonly XtreamSeries[];
}

export interface CatalogSearchIndex {
  live: SearchEntry<XtreamLiveStream>[];
  movies: SearchEntry<XtreamVodStream>[];
  series: SearchEntry<XtreamSeries>[];
}

/** Indice dei tre gruppi: una normalizzazione per catalogo, non per battito. */
export function buildCatalogIndex(catalog: SearchableCatalog | null | undefined): CatalogSearchIndex {
  return {
    live: buildSearchIndex(catalog?.live, (channel) => channel.name),
    movies: buildSearchIndex(catalog?.movies, (movie) => movie.name),
    series: buildSearchIndex(catalog?.series, (serie) => serie.name),
  };
}

/** Risultati della ricerca, una lista per gruppo. */
export interface CatalogSearchResults {
  live: XtreamLiveStream[];
  movies: XtreamVodStream[];
  series: XtreamSeries[];
  isEmpty: boolean;
}

const EMPTY_RESULTS: CatalogSearchResults = Object.freeze({
  live: [],
  movies: [],
  series: [],
  isEmpty: true,
});

/** Ricerca su un indice già pronto. Catalogo assente → nessun risultato. */
export function searchIndex(
  index: CatalogSearchIndex | null | undefined,
  query: string,
  limit: number = MAX_RESULTS_PER_GROUP,
): CatalogSearchResults {
  if (!index) return EMPTY_RESULTS;
  const live = filterRankedEntries(index.live, query, limit);
  const movies = filterRankedEntries(index.movies, query, limit);
  const series = filterRankedEntries(index.series, query, limit);
  return {
    live,
    movies,
    series,
    isEmpty: live.length === 0 && movies.length === 0 && series.length === 0,
  };
}

/** Ricerca nelle tre sezioni del catalogo, costruendo l'indice al momento. */
export function search(
  catalog: SearchableCatalog | null | undefined,
  query: string,
  limit: number = MAX_RESULTS_PER_GROUP,
): CatalogSearchResults {
  if (!catalog) return EMPTY_RESULTS;
  if (!hasMinQueryLength(query)) return EMPTY_RESULTS;
  return searchIndex(buildCatalogIndex(catalog), query, limit);
}
