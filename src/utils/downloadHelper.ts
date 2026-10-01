import { Capacitor } from '@capacitor/core';
import { Directory, Filesystem } from '@capacitor/filesystem';
import { storage } from '../services/storage';

/**
 * Detects if the current client is a Smart TV / TV Box environment
 * where direct file downloading should be disabled.
 */
export function isTvEnvironment(): boolean {
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

function unwrapProxyUrl(streamUrl: string): string {
  if (!streamUrl.includes('/api/proxy/stream?url=')) return streamUrl;

  try {
    const query = streamUrl.split('?')[1] || '';
    return new URLSearchParams(query).get('url') || streamUrl;
  } catch {
    return streamUrl;
  }
}

function safeFilename(title: string, extension: string): string {
  // Also remove control characters: they are invalid or problematic in native paths.
  const cleanTitle = (title || 'video')
    .replace(/[\u0000-\u001f/\\?%*:|"<>]/g, '_')
    .trim() || 'video';
  const cleanExtension = (extension || 'mp4').toLowerCase().replace(/[^a-z0-9]/g, '') || 'mp4';
  return `${cleanTitle}.${cleanExtension}`;
}

/**
 * Downloads media. On native platforms the Express proxy does not exist, so
 * Capacitor Filesystem downloads the direct IPTV URL into the app's local
 * Documents/Downloads directory. On web the existing Express download
 * endpoint is retained.
 */
export async function triggerMediaDownload(
  streamUrl: string,
  title: string,
  type: 'movie' | 'episode' = 'movie',
  poster?: string,
  containerExtension: string = 'mp4',
  accountKey?: string
): Promise<boolean> {
  if (typeof window === 'undefined') return false;

  const rawUrl = unwrapProxyUrl(streamUrl);
  const filename = safeFilename(title, containerExtension);
  const ext = filename.split('.').pop() || 'mp4';
  const id = `${type}_${Date.now()}_${Math.random().toString(36).substring(2, 7)}`;

  if (Capacitor.isNativePlatform() || window.location.protocol === 'capacitor:') {
    try {
      // Documents is persistent and, on iOS, can be exposed in the Files app.
      // A unique directory avoids overwriting an earlier download with the same title.
      const result = await Filesystem.downloadFile({
        url: rawUrl,
        path: `Downloads/${id}/${filename}`,
        directory: Directory.Documents,
        recursive: true,
      });

      if (!result.path) throw new Error('Il download non ha restituito un percorso locale.');

      storage.addDownload(
        {
          id,
          title,
          type,
          streamUrl: rawUrl,
          downloadUrl: result.path,
          poster,
          containerExtension: ext,
          downloadedAt: Date.now(),
        },
        accountKey
      );

      window.alert(`Download completato. File salvato in Downloads/${filename}`);
      return true;
    } catch (error) {
      console.error('Native media download failed:', error);
      const message = error instanceof Error ? error.message : String(error);
      window.alert(`Download non riuscito: ${message}`);
      return false;
    }
  }

  const downloadEndpoint = `/api/proxy/stream?url=${encodeURIComponent(rawUrl)}&download=1&filename=${encodeURIComponent(filename)}`;

  try {
    storage.addDownload(
      {
        id,
        title,
        type,
        streamUrl: rawUrl,
        downloadUrl: downloadEndpoint,
        poster,
        containerExtension: ext,
        downloadedAt: Date.now(),
      },
      accountKey
    );

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
