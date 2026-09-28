import { XtreamVodStream, XtreamSeries } from '../types/xtream';

/**
 * Extracts a numeric timestamp or reliable sort value from an 'added' or 'last_modified' string/number.
 * Handles:
 * - 10-digit unix timestamp (seconds): "1684938210"
 * - 13-digit unix timestamp (ms): "1684938210000"
 * - Date string: "2024-05-24 14:20:00" or "2024-05-24"
 */
export function parseDateToNumber(dateVal?: string | number): number {
  if (!dateVal) return 0;
  if (typeof dateVal === 'number') {
    return dateVal < 10000000000 ? dateVal * 1000 : dateVal;
  }
  const str = String(dateVal).trim();
  const num = parseInt(str, 10);
  if (!isNaN(num) && num > 100000000 && !str.includes('-') && !str.includes('/')) {
    return num < 10000000000 ? num * 1000 : num;
  }
  const parsed = Date.parse(str);
  if (!isNaN(parsed)) return parsed;
  return 0;
}

/**
 * Formats date into readable Italian string (e.g. "28 Settembre 2026" or "14/05/2024")
 */
export function formatRecentDate(dateVal?: string | number): string {
  const ts = parseDateToNumber(dateVal);
  if (!ts || ts <= 0) return 'Recente';
  const d = new Date(ts);
  return d.toLocaleDateString('it-IT', { day: '2-digit', month: 'short', year: 'numeric' });
}

/**
 * Sorts VOD movies by most recently added
 */
export function sortVodStreams(
  streams: XtreamVodStream[],
  sortBy: 'recent' | 'rating' | 'name' | 'id' = 'recent'
): XtreamVodStream[] {
  const list = [...streams];
  switch (sortBy) {
    case 'recent':
      return list.sort((a, b) => {
        const timeB = parseDateToNumber(b.added);
        const timeA = parseDateToNumber(a.added);
        if (timeB !== timeA) return timeB - timeA;
        // Fallback to numeric stream_id descending
        return Number(b.stream_id) - Number(a.stream_id);
      });
    case 'rating':
      return list.sort((a, b) => {
        const rB = parseFloat(String(b.rating || 0));
        const rA = parseFloat(String(a.rating || 0));
        return rB - rA;
      });
    case 'name':
      return list.sort((a, b) => a.name.localeCompare(b.name));
    case 'id':
      return list.sort((a, b) => Number(b.stream_id) - Number(a.stream_id));
    default:
      return list;
  }
}

/**
 * Sorts Series by most recently modified or added
 */
export function sortSeriesList(
  series: XtreamSeries[],
  sortBy: 'recent' | 'rating' | 'name' | 'id' = 'recent'
): XtreamSeries[] {
  const list = [...series];
  switch (sortBy) {
    case 'recent':
      return list.sort((a, b) => {
        const timeB = parseDateToNumber(b.last_modified || b.releaseDate);
        const timeA = parseDateToNumber(a.last_modified || a.releaseDate);
        if (timeB !== timeA) return timeB - timeA;
        return Number(b.series_id) - Number(a.series_id);
      });
    case 'rating':
      return list.sort((a, b) => {
        const rB = parseFloat(String(b.rating || 0));
        const rA = parseFloat(String(a.rating || 0));
        return rB - rA;
      });
    case 'name':
      return list.sort((a, b) => a.name.localeCompare(b.name));
    case 'id':
      return list.sort((a, b) => Number(b.series_id) - Number(a.series_id));
    default:
      return list;
  }
}
