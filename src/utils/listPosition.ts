/**
 * Pure helpers used by the long-list position pill ("120 / 800").
 *
 * Both functions return a 1-based position of the first element that is
 * visible in the scroll viewport. An empty list returns 0 so the UI can hide
 * the indicator instead of showing a meaningless "0 / 0".
 */

const EMPTY_LIST = 0;

function safeTotal(total: number): number {
  if (!Number.isFinite(total)) return EMPTY_LIST;
  return Math.max(0, Math.floor(total));
}

function safeScrollTop(scrollTop: number): number {
  if (!Number.isFinite(scrollTop)) return 0;
  return Math.max(0, scrollTop);
}

function safeExtent(extent: number): number | null {
  if (!Number.isFinite(extent) || extent <= 0) return null;
  return extent;
}

function safeColumns(columns: number): number {
  if (!Number.isFinite(columns)) return 1;
  return Math.max(1, Math.floor(columns));
}

/**
 * Position of the first visible row of a uniformly sized list.
 * A row that is only partially scrolled out still counts as visible, so the
 * index is floored rather than rounded.
 */
export function firstVisibleListPosition(
  scrollTop: number,
  itemExtent: number,
  total: number
): number {
  const count = safeTotal(total);
  if (count === 0) return EMPTY_LIST;

  const extent = safeExtent(itemExtent);
  if (extent === null) return 1;

  const firstVisibleIndex = Math.floor(safeScrollTop(scrollTop) / extent) + 1;
  return Math.min(count, Math.max(1, firstVisibleIndex));
}

/**
 * Position of the first element of the first visible row in a grid.
 * `columns` is the responsive column count of the current breakpoint
 * (2 to 6 in the media grids), so the same scroll offset maps to a different
 * item position when the number of columns changes.
 */
export function firstVisibleGridPosition(
  scrollTop: number,
  rowExtent: number,
  columns: number,
  total: number
): number {
  const count = safeTotal(total);
  if (count === 0) return EMPTY_LIST;

  const columnCount = safeColumns(columns);
  const extent = safeExtent(rowExtent);
  if (extent === null) return 1;

  const firstVisibleRow = Math.floor(safeScrollTop(scrollTop) / extent);
  const firstVisibleIndex = firstVisibleRow * columnCount + 1;
  return Math.min(count, Math.max(1, firstVisibleIndex));
}
