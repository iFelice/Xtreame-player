export type SectionTab = 'live' | 'movies' | 'series' | 'recent' | 'favorites';

export interface InitialTabCounts {
  live: number;
  movies: number;
  series: number;
}

/**
 * Novità is the landing section on every platform. It is only replaced by
 * Live TV when the account has neither movies nor series to show there.
 */
export function chooseInitialTab({ movies, series }: InitialTabCounts): SectionTab {
  return movies > 0 || series > 0 ? 'recent' : 'live';
}

export interface MobileBarVisibility {
  isTv: boolean;
  isConnected: boolean;
  isLoadingCatalog: boolean;
  isPlayerFullscreen: boolean;
}

/**
 * The mobile section bar stays available while the player is open; it is
 * hidden only when the whole document (or the window-fullscreen player) takes
 * over the screen.
 */
export function shouldShowMobileBar({
  isTv,
  isConnected,
  isLoadingCatalog,
  isPlayerFullscreen,
}: MobileBarVisibility): boolean {
  if (isTv) return false;
  if (!isConnected) return false;
  if (isLoadingCatalog) return false;
  return !isPlayerFullscreen;
}
