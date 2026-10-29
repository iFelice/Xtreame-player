/**
 * True when the page is running as the Home Screen web app ("standalone"
 * display mode). iOS/iPadOS only expose `navigator.standalone`, while the
 * media query covers every other browser and desktop PWA window.
 */
export function isStandaloneWebApp(): boolean {
  const navigatorStandalone = typeof navigator === 'undefined'
    ? undefined
    : (navigator as Navigator & { standalone?: boolean }).standalone;
  if (navigatorStandalone === true) return true;

  if (typeof window === 'undefined' || typeof window.matchMedia !== 'function') return false;
  try {
    return window.matchMedia('(display-mode: standalone)').matches === true;
  } catch {
    return false;
  }
}
