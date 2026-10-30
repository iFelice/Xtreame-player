import { describe, expect, it } from 'vitest';
import { normalizeSeriesInfo, presentText, releaseYear } from './seriesInfo';

describe('series info normalization', () => {
  it('omits absent, empty and null-like values, and falls back to the catalog cover', () => {
    expect(normalizeSeriesInfo(undefined)).toEqual({ cover: undefined, plot: undefined, genre: undefined, year: undefined, cast: undefined, director: undefined, rating: undefined });
    expect(normalizeSeriesInfo({ cover: ' NULL ', plot: ' ', genre: 'null', cast: '', director: ' Null ', rating: 'null' }, ' catalog.jpg '))
      .toEqual({ cover: 'catalog.jpg', plot: undefined, genre: undefined, year: undefined, cast: undefined, director: undefined, rating: undefined });
    expect(presentText(null)).toBeUndefined();
    expect(presentText(NaN)).toBeUndefined();
    expect(presentText(0)).toBe('0');
  });

  it('accepts valid years and dates, rejecting malformed and impossible dates', () => {
    for (const value of ['2024', '2024-02', '2024-02-29', '2024-02-29T12:00:00Z']) expect(releaseYear(value)).toBe('2024');
    for (const value of ['null', '', '2023-02-29', '2024-13-01', '2024-00', '2024-01-00', '2024oops', '0999']) expect(releaseYear(value)).toBeUndefined();
  });

  it('supports release date variants and numeric or textual ratings', () => {
    expect(normalizeSeriesInfo({ release_date: '2021-05-12', rating: 8.5, cover: ' info.jpg ', plot: ' Plot ', genre: ' Drama ', cast: ' A ', director: ' B ' }, 'catalog.jpg'))
      .toEqual({ cover: 'info.jpg', plot: 'Plot', genre: 'Drama', year: '2021', cast: 'A', director: 'B', rating: '8.5' });
    expect(normalizeSeriesInfo({ releaseDate: '2022-01-01', release_date: '2021-05-12', rating: ' 9.0 ' }).year).toBe('2022');
    expect(normalizeSeriesInfo({ releaseDate: 'null', release_date: '2021-05-12' }).year).toBe('2021');
  });
});
