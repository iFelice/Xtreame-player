import { getDirectStreamUrl } from './streamUrl';

/**
 * Containers Safari can hand over to the Files app from a direct link: one tap
 * offers to download them, a long press offers "Scarica file collegato".
 */
export const APPLE_DOWNLOAD_EXTENSIONS = ['mp4', 'm4v', 'mov'];

/**
 * MKV and AVI are offered only in a Safari tab. Verified on iPhone: a direct
 * link makes Safari ask whether to download the file, and a long press offers
 * "Scarica file collegato". Inside the Home Screen web app (standalone) VLC
 * already asks "scarica o riproduci", so the app shows nothing at all.
 */
export const APPLE_SAFARI_ONLY_DOWNLOAD_EXTENSIONS = ['mkv', 'avi'];

export type AppleDownloadDecision =
  | { kind: 'direct-link'; href: string }
  | { kind: 'standalone-note' }
  | { kind: 'none' };

export interface AppleDownloadEnvironment {
  staticDeploy: boolean;
  appleMobile: boolean;
  standalone: boolean;
}

function normalizeExtension(containerExtension: string | undefined): string {
  return (containerExtension || '').toLowerCase().replace(/^\./, '');
}

/** True for MKV/AVI: link in Safari, nothing in the Home Screen web app. */
export function isSafariOnlyAppleContainer(containerExtension: string | undefined): boolean {
  return APPLE_SAFARI_ONLY_DOWNLOAD_EXTENSIONS.includes(normalizeExtension(containerExtension));
}

/**
 * The static build on Apple mobile cannot trigger a browser download: the
 * `download` attribute is ignored for cross-origin files. Safari can still save
 * the file from a direct link, but only outside the Home Screen web app.
 */
export function decideAppleDownload(
  streamUrl: string,
  containerExtension: string | undefined,
  environment: AppleDownloadEnvironment,
): AppleDownloadDecision {
  if (!environment.staticDeploy || !environment.appleMobile) return { kind: 'none' };

  const extension = normalizeExtension(containerExtension);
  const safariOnlyContainer = isSafariOnlyAppleContainer(extension);
  if (!safariOnlyContainer && !APPLE_DOWNLOAD_EXTENSIONS.includes(extension)) return { kind: 'none' };

  // Never offer a proxy route: it does not exist in the static build and the
  // long-press menu would save an HTML error page instead of the media file.
  const href = getDirectStreamUrl(streamUrl);
  if (!/^https?:\/\//i.test(href)) return { kind: 'none' };

  if (!environment.standalone) return { kind: 'direct-link', href };
  // Standalone: VLC covers MKV/AVI, the other containers only get a note.
  return safariOnlyContainer ? { kind: 'none' } : { kind: 'standalone-note' };
}
