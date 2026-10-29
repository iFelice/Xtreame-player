import { getDirectStreamUrl } from './streamUrl';

/**
 * Containers Safari can hand over to the Files app when the user long-presses
 * a direct file link. MKV/AVI keep the existing "Apri in VLC" panel because VLC
 * asks whether to download or play them.
 */
export const APPLE_DOWNLOAD_EXTENSIONS = ['mp4', 'm4v', 'mov'];

export type AppleDownloadDecision =
  | { kind: 'direct-link'; href: string }
  | { kind: 'standalone-note' }
  | { kind: 'none' };

export interface AppleDownloadEnvironment {
  staticDeploy: boolean;
  appleMobile: boolean;
  standalone: boolean;
}

/**
 * The static build on Apple mobile cannot trigger a browser download: the
 * `download` attribute is ignored for cross-origin files. Safari can still
 * save the file through the long-press menu on a direct link, but only outside
 * the Home Screen web app.
 */
export function decideAppleDownload(
  streamUrl: string,
  containerExtension: string | undefined,
  environment: AppleDownloadEnvironment,
): AppleDownloadDecision {
  if (!environment.staticDeploy || !environment.appleMobile) return { kind: 'none' };

  const extension = (containerExtension || '').toLowerCase().replace(/^\./, '');
  if (!APPLE_DOWNLOAD_EXTENSIONS.includes(extension)) return { kind: 'none' };

  // Never offer a proxy route: it does not exist in the static build and the
  // long-press menu would save an HTML error page instead of the media file.
  const href = getDirectStreamUrl(streamUrl);
  if (!/^https?:\/\//i.test(href)) return { kind: 'none' };

  return environment.standalone ? { kind: 'standalone-note' } : { kind: 'direct-link', href };
}
