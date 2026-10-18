/**
 * Placement of the long-list position pill.
 *
 * The pill is rendered with `position: fixed`, so its coordinates are the
 * viewport coordinates returned by `getBoundingClientRect()` of the scroll
 * container. The bottom edge follows the *visible* part of the container:
 * panels of the media catalogs are taller than the window, so anchoring to the
 * panel itself would push the pill below the screen.
 */

export interface BoxRect {
  top: number;
  bottom: number;
  left: number;
  right: number;
}

export interface BoxSize {
  width: number;
  height: number;
}

export interface FixedPoint {
  top: number;
  left: number;
}

/** Distance kept from the visible bottom edge and from the right edge. */
export const PILL_EDGE_GAP = 12;

function isFiniteNumber(value: number): boolean {
  return Number.isFinite(value);
}

/**
 * Computes the fixed position of the pill.
 *
 * - bottom edge = min(container.bottom, viewportHeight) - PILL_EDGE_GAP
 * - right edge = container.right - PILL_EDGE_GAP
 *
 * Returns null when the container has no visible vertical slice (above or
 * below the window) or when the measurements are unusable, so the caller can
 * keep the pill hidden. A thin visible slice is clamped to the top of the
 * window instead of rendering the pill off screen.
 */
export function pillFixedPosition(
  container: BoxRect,
  viewportHeight: number,
  pill: BoxSize
): FixedPoint | null {
  if (!isFiniteNumber(viewportHeight) || viewportHeight <= 0) return null;
  if (
    !isFiniteNumber(container.top) ||
    !isFiniteNumber(container.bottom) ||
    !isFiniteNumber(container.left) ||
    !isFiniteNumber(container.right) ||
    !isFiniteNumber(pill.width) ||
    !isFiniteNumber(pill.height)
  ) {
    return null;
  }
  if (pill.width < 0 || pill.height < 0) return null;

  // Fully hidden on the left side of the window: the right edge has no room.
  if (container.right <= 0) return null;

  const visibleTop = Math.max(container.top, 0);
  const visibleBottom = Math.min(container.bottom, viewportHeight);
  if (visibleBottom <= visibleTop) return null;

  const bottomEdge = visibleBottom - PILL_EDGE_GAP;
  const rightEdge = container.right - PILL_EDGE_GAP;

  return {
    top: Math.max(0, bottomEdge - pill.height),
    left: rightEdge - pill.width,
  };
}
