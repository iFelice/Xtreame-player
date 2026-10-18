/**
 * Text helpers for the long-list position indicator shown in the catalog
 * header. Keeping them pure locks the exact wording of both states: the idle
 * "Mostrando N ..." line and the "N / Totale" counter.
 */

export interface CounterParts {
  /** Position of the first visible element, rendered in green. */
  position: string;
  /** " / Totale", rendered in light grey. */
  total: string;
}

/**
 * Splits the counter into its two styled halves. Values outside the list are
 * clamped so the indicator can never show a position greater than the total.
 */
export function counterParts(position: number, total: number): CounterParts {
  const safeTotal = Number.isFinite(total) ? Math.max(0, Math.floor(total)) : 0;
  if (safeTotal === 0) return { position: '0', total: ' / 0' };

  const safePosition = Number.isFinite(position) ? Math.floor(position) : 1;
  return {
    position: String(Math.min(safeTotal, Math.max(1, safePosition))),
    total: ` / ${safeTotal}`,
  };
}

/**
 * Idle text that follows the highlighted total, e.g. ` canali` or
 * ` film per "dune"`. A blank query is ignored, so the idle line stays
 * identical to the one the catalogs rendered before the indicator existed.
 */
export function idleCountSuffix(label: string, searchQuery?: string): string {
  const query = (searchQuery ?? '').trim();
  return ` ${label}${query ? ` per "${query}"` : ''}`;
}
