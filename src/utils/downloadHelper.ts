import { Capacitor, registerPlugin } from '@capacitor/core';
import { Directory, Filesystem } from '@capacitor/filesystem';
import { isWebOsBuild } from '../platform/runtime';

interface DocumentExporterPlugin {
  exportFile(options: { path: string }): Promise<{ path: string }>;
}

const DocumentExporter = registerPlugin<DocumentExporterPlugin>('DocumentExporter');

/**
 * Detects if the current client is a Smart TV / TV Box environment
 * where direct file downloading should be disabled.
 */
export function isTvEnvironment(): boolean {
  // Il target webOS è una modalità TV esplicita di build: non dipendere
  // dall'user-agent (che può cambiare tra versioni del firmware).
  if (isWebOsBuild()) return true;
  if (typeof window === 'undefined') return false;
  const ua = (navigator.userAgent || '').toLowerCase();

  const isTvUa =
    ua.includes('googletv') ||
    ua.includes('android tv') ||
    ua.includes('smarttv') ||
    ua.includes('smart-tv') ||
    ua.includes('appletv') ||
    ua.includes('tizen') ||
    ua.includes('webos') ||
    ua.includes('viera') ||
    ua.includes('bravia') ||
    ua.includes('hisense') ||
    ua.includes('hbbtv') ||
    ua.includes('crkey') ||
    ua.includes('aft') ||
    ua.includes('roku') ||
    ua.includes('netcast');

  const is10ftTv =
    window.matchMedia &&
    window.matchMedia('(hover: none) and (pointer: coarse) and (min-width: 1920px) and (min-height: 1080px)').matches;

  return isTvUa || is10ftTv;
}

export function unwrapProxyUrl(streamUrl: string): string {
  if (!streamUrl.includes('/api/proxy/stream?url=')) return streamUrl;

  try {
    const query = streamUrl.split('?')[1] || '';
    return new URLSearchParams(query).get('url') || streamUrl;
  } catch {
    return streamUrl;
  }
}

export type NativeDownloadStatus = 'started' | 'exporting' | 'finished' | 'cancelled' | 'error';

const DIRECT_FILE_EXTENSIONS = new Set(['mp4', 'mkv', 'webm', 'avi', 'mov', 'm4v']);

export function isDirectFileDownload(extension?: string): boolean {
  return DIRECT_FILE_EXTENSIONS.has((extension || '').toLowerCase().replace(/^\./, ''));
}

function notifyDownloadStatus(status: NativeDownloadStatus, title: string): void {
  window.dispatchEvent(new CustomEvent('xtream-download-status', { detail: { status, title } }));
}

export async function cleanupLegacyNativeDownloads(): Promise<void> {
  if (typeof window === 'undefined' || !Capacitor.isNativePlatform()) return;

  // Clean both the old persistent implementation and temporary exports left
  // behind if the app was terminated while downloading or while the picker was open.
  const locations = [
    { path: 'Downloads', directory: Directory.Documents },
    { path: 'XtreamDownloads', directory: Directory.Documents },
    { path: 'XtreamDownloads', directory: Directory.Temporary },
  ];

  await Promise.all(
    locations.map(async ({ path, directory }) => {
      try {
        await Filesystem.rmdir({ path, directory, recursive: true });
      } catch {
        // Missing directories are expected on clean installations.
      }
    })
  );
}

/**
 * Whether the current client can offer media downloads at all.
 *
 * The webOS package has no local Express server (the web download route
 * `/api/proxy/stream?...&download=1` does not exist there) and no writable
 * app folder the user could reach, so every download affordance must stay
 * hidden — independently of `isTvEnvironment()`, which is a best-effort
 * user-agent guess.
 */
export function canOfferDownloads(tvEnvironment: boolean = isTvEnvironment()): boolean {
  return !tvEnvironment && !isWebOsBuild();
}

export function safeFilename(title: string, extension: string): string {
  // Also remove control characters: they are invalid or problematic in native paths.
  const cleanTitle = (title || 'video')
    .replace(/[\u0000-\u001f/\\?%*:|"<>]/g, '_')
    .trim() || 'video';
  const cleanExtension = (extension || 'mp4').toLowerCase().replace(/[^a-z0-9]/g, '') || 'mp4';
  return `${cleanTitle}.${cleanExtension}`;
}

/**
 * Downloads media. On native platforms the Express proxy does not exist, so
 * Capacitor Filesystem downloads the direct IPTV URL to a temporary file,
 * then the native share sheet lets the user choose the real destination.
 * The temporary copy is deleted afterwards so the app does not grow in size.
 * On web the existing Express download endpoint is retained.
 */
export async function triggerMediaDownload(
  streamUrl: string,
  title: string,
  type: 'movie' | 'episode' = 'movie',
  poster?: string,
  containerExtension: string = 'mp4',
  accountKey?: string
): Promise<boolean> {
  // Doppia protezione: le schermate webOS non mostrano alcun pulsante di
  // download, e anche una chiamata diretta da codice futuro non deve tentare
  // un `/api/proxy/stream?...&download=1` che nel pacchetto TV non esiste.
  if (!canOfferDownloads()) return false;
  if (typeof window === 'undefined') return false;

  const rawUrl = unwrapProxyUrl(streamUrl);
  const filename = safeFilename(title, containerExtension);
  const ext = filename.split('.').pop() || 'mp4';
  const id = `${type}_${Date.now()}_${Math.random().toString(36).substring(2, 7)}`;

  if (Capacitor.isNativePlatform() || window.location.protocol === 'capacitor:') {
    const temporaryDirectory = `XtreamDownloads/${id}`;
    const temporaryPath = `${temporaryDirectory}/${filename}`;
    let downloadedPath: string | undefined;
    notifyDownloadStatus('started', title);
    try {
      const result = await Filesystem.downloadFile({
        url: rawUrl,
        path: temporaryPath,
        directory: Directory.Temporary,
        recursive: true,
      });

      if (!result.path) throw new Error('Il download non ha restituito un percorso temporaneo.');
      downloadedPath = result.path;
      notifyDownloadStatus('exporting', title);

      // Open Apple's save-location picker directly (without the intermediate
      // share sheet). The picker grants access to the chosen destination.
      await DocumentExporter.exportFile({ path: result.path });

      notifyDownloadStatus('finished', title);
      return true;
    } catch (error) {
      const message = error instanceof Error ? error.message : String(error);
      // Closing the Apple share sheet is a normal user action, not a download
      // failure. Capacitor reports it as a rejected promise on iOS/macOS.
      if (/share\s+canceled|cancelled|canceled/i.test(message)) {
        console.info('Save dialog closed by the user.');
        notifyDownloadStatus('cancelled', title);
        return false;
      }
      console.error('Native media download failed:', error);
      notifyDownloadStatus('error', title);
      window.alert(`Download non riuscito: ${message}`);
      return false;
    } finally {
      // Prefer the absolute path returned by the native plugin. This avoids a
      // platform-specific Directory mapping leaving a multi-GB copy behind.
      if (downloadedPath) {
        try {
          await Filesystem.deleteFile({ path: downloadedPath });
        } catch {
          // Fall through to recursive directory cleanup below.
        }
      }
      for (const directory of [Directory.Temporary, Directory.Documents]) {
        try {
          await Filesystem.rmdir({
            path: temporaryDirectory,
            directory,
            recursive: true,
          });
        } catch {
          // The directory may map elsewhere or may already have been removed.
        }
      }
    }
  }

  const downloadEndpoint = `/api/proxy/stream?url=${encodeURIComponent(rawUrl)}&download=1&filename=${encodeURIComponent(filename)}`;

  try {


    const a = document.createElement('a');
    a.href = downloadEndpoint;
    a.download = filename;
    a.style.display = 'none';
    document.body.appendChild(a);
    a.click();
    setTimeout(() => a.remove(), 1500);
    return true;
  } catch (error) {
    console.warn('Could not trigger browser download:', error);
    return false;
  }
}
