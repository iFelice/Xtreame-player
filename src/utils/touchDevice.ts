/**
 * Touch devices have no hover: Tailwind 4 only applies `group-hover` utilities
 * when the pointer can hover, so an `opacity-0 group-hover:opacity-100` veil
 * stays invisible while still receiving taps. These helpers decide when a card
 * must behave like a touch card instead. TV mode is excluded explicitly: the
 * remote navigation and focus behaviour must stay exactly as before.
 */
export const TOUCH_WITHOUT_HOVER_QUERY = '(hover: none) and (pointer: coarse)';

export function isTouchDevice(): boolean {
  if (typeof window === 'undefined' || typeof window.matchMedia !== 'function') return false;
  try {
    return window.matchMedia(TOUCH_WITHOUT_HOVER_QUERY).matches === true;
  } catch {
    return false;
  }
}

/** Touch cards only exist outside TV mode. */
export function isTouchCardMode(touchDevice: boolean, tv: boolean): boolean {
  return touchDevice && !tv;
}

/**
 * A tap on a movie or series card opens its sheet (details / episodes) instead
 * of starting playback. Live channels keep starting with a single tap.
 */
export function shouldOpenCardSheetOnTap(
  mediaType: 'movie' | 'series' | 'live' | 'direct',
  touchCardMode: boolean,
): boolean {
  if (!touchCardMode) return false;
  return mediaType === 'movie' || mediaType === 'series';
}

/**
 * Hover-only action veils must not be rendered on touch cards: they would be
 * invisible but still intercept the tap aimed at the poster.
 */
export function showsHoverVeil(touchCardMode: boolean): boolean {
  return !touchCardMode;
}
