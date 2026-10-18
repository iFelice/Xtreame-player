/**
 * Responsive column count shared by the media grids and by the position pill,
 * so the indicator always counts rows with the same number of columns that
 * the grid is currently rendering.
 */
export function columnsForViewport(width: number): number {
  if (width >= 1536) return 6;
  if (width >= 1280) return 5;
  if (width >= 768) return 4;
  if (width >= 640) return 3;
  return 2;
}
