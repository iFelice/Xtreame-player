import { storage } from '../services/storage';

/**
 * Detects if the current client is a Smart TV / TV Box environment
 * where direct file downloading should be disabled.
 */
export function isTvEnvironment(): boolean {
  if (typeof window === 'undefined') return false;
  const ua = (navigator.userAgent || '').toLowerCase();
  
  // Check common Smart TV and TV Box user agent strings
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
    ua.includes('crkey') || // Chromecast
    ua.includes('aft') ||   // Amazon Fire TV
    ua.includes('roku') ||
    ua.includes('netcast');

  // Check 10-foot UI TV screen characteristics (no hover, coarse pointer, 1080p/4k fixed viewport)
  const is10ftTv =
    window.matchMedia &&
    window.matchMedia('(hover: none) and (pointer: coarse) and (min-width: 1920px) and (min-height: 1080px)').matches;

  return isTvUa || is10ftTv;
}

/**
 * Extracts clean stream URL, registers item to "I Miei Download",
 * and triggers direct browser file download to ~/Downloads via proxy.
 */
export function triggerMediaDownload(
  streamUrl: string,
  title: string,
  type: 'movie' | 'episode' = 'movie',
  poster?: string,
  containerExtension: string = 'mp4',
  accountKey?: string
): boolean {
  if (typeof window === 'undefined') return false;

  // Extract raw stream target if it was wrapped in proxy
  let rawUrl = streamUrl;
  if (rawUrl.includes('/api/proxy/stream?url=')) {
    const match = rawUrl.match(/url=([^&]+)/);
    if (match && match[1]) {
      rawUrl = decodeURIComponent(match[1]);
    }
  }

  const cleanName = (title || 'video').replace(/[/\\?%*:|"<>]/g, '_').trim();
  const ext = (containerExtension || 'mp4').toLowerCase().replace(/^\./, '');
  const filename = `${cleanName}.${ext}`;
  const downloadEndpoint = `/api/proxy/stream?url=${encodeURIComponent(rawUrl)}&download=1&filename=${encodeURIComponent(filename)}`;

  // Save to "I Miei Download" storage for in-app tracking
  try {
    storage.addDownload(
      {
        id: `${type}_${Date.now()}_${Math.random().toString(36).substring(2, 7)}`,
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
  } catch (err) {
    console.warn('Could not save download to local storage:', err);
  }

  // Trigger browser direct file download without opening new tabs or windows
  try {
    const a = document.createElement('a');
    a.href = downloadEndpoint;
    a.download = filename;
    a.style.display = 'none';
    document.body.appendChild(a);
    a.click();
    setTimeout(() => {
      if (a.parentNode) a.parentNode.removeChild(a);
    }, 1500);
  } catch (e) {
    console.warn('Could not trigger anchor download click:', e);
  }

  return true;
}
