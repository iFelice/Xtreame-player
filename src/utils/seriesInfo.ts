import type { XtreamSeries, XtreamSeriesInfo } from '../types/xtream';

/** Provider values are not always consistent with the declared Xtream types. */
export function presentText(value: unknown): string | undefined {
  if (typeof value !== 'string' && typeof value !== 'number') return undefined;
  if (typeof value === 'number' && !Number.isFinite(value)) return undefined;
  const text = String(value).trim();
  return !text || text.toLowerCase() === 'null' ? undefined : text;
}

export function releaseYear(value: unknown): string | undefined {
  const text = presentText(value);
  if (!text) return undefined;
  const match = /^(\d{4})(?:-(\d{2})(?:-(\d{2})(?:[T ].*)?)?)?$/.exec(text);
  if (!match || Number(match[1]) < 1000) return undefined;
  if (match[2]) {
    const month = Number(match[2]);
    const day = match[3] ? Number(match[3]) : 1;
    const date = new Date(Date.UTC(Number(match[1]), month - 1, day));
    if (date.getUTCFullYear() !== Number(match[1]) || date.getUTCMonth() !== month - 1 || date.getUTCDate() !== day) return undefined;
  }
  return match[1];
}

export function normalizeSeriesInfo(info: XtreamSeriesInfo['info'], catalogCover?: XtreamSeries['cover']) {
  return {
    cover: presentText(info?.cover) ?? presentText(catalogCover),
    plot: presentText(info?.plot),
    genre: presentText(info?.genre),
    year: releaseYear(info?.releaseDate) ?? releaseYear(info?.release_date),
    cast: presentText(info?.cast),
    director: presentText(info?.director),
    rating: presentText(info?.rating),
  };
}
