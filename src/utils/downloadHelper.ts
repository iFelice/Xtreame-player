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
 * Triggers a real file download directly to the Mac ~/Downloads folder (or user's default downloads)
 * using the backend proxy with Content-Disposition: attachment header.
 *
 * Uses an invisible iframe so the page NEVER navigates, the video player NEVER shrinks,
 * and the user stays seamlessly in their watching session.
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

  // Clean filename for filesystem
  const cleanName = (title || 'video').replace(/[/\\?%*:|"<>]/g, '_').trim();
  const ext = (containerExtension || 'mp4').toLowerCase().replace(/^\./, '');
  const filename = `${cleanName}.${ext}`;

  // Extract raw stream target if it was already proxied
  let rawUrl = streamUrl;
  if (rawUrl.includes('/api/proxy/stream?url=')) {
    const match = rawUrl.match(/url=([^&]+)/);
    if (match && match[1]) {
      rawUrl = decodeURIComponent(match[1]);
    }
  }

  // Detect Capacitor native platform
  const isCapacitorNative =
    typeof window !== 'undefined' &&
    ((window as any).Capacitor?.isNativePlatform?.() || (window as any).Capacitor?.platform === 'ios');

  // Cloud Run proxy fallback for native Capacitor app (when origin is capacitor://)
  const cloudProxyBase = 'https://ais-dev-dihbqwu76twglwk6fd3g6v-872512682555.europe-west2.run.app';
  const origin =
    typeof window !== 'undefined' && window.location.origin.startsWith('http')
      ? window.location.origin
      : cloudProxyBase;
  const proxyDownloadUrl = `${origin}/api/proxy/stream?url=${encodeURIComponent(rawUrl)}&download=1&filename=${encodeURIComponent(filename)}`;

  // Save to "I Miei Download" storage for in-app offline tracking
  try {
    storage.addDownload(
      {
        id: `${type}_${Date.now()}_${Math.random().toString(36).substring(2, 7)}`,
        title,
        type,
        streamUrl: rawUrl,
        downloadUrl: proxyDownloadUrl,
        poster,
        containerExtension: ext,
        downloadedAt: Date.now(),
      },
      accountKey
    );
  } catch (err) {
    console.warn('Could not save download to local storage:', err);
  }

  // Capacitor Native on Mac / iOS: trigger download via proxy attachment so browser downloads directly instead of playing
  if (isCapacitorNative) {
    try {
      const a = document.createElement('a');
      a.href = proxyDownloadUrl;
      a.download = filename;
      a.target = '_blank';
      a.rel = 'noopener noreferrer';
      document.body.appendChild(a);
      a.click();
      setTimeout(() => {
        if (a.parentNode) a.parentNode.removeChild(a);
      }, 1000);
      return true;
    } catch {
      window.open(proxyDownloadUrl, '_system');
      return true;
    }
  }

  // Web Browser on Mac (Safari, Chrome, etc.): trigger download to ~/Downloads
  try {
    // 1. Direct anchor tag click with download attribute
    const a = document.createElement('a');
    a.href = proxyDownloadUrl;
    a.download = filename;
    a.style.display = 'none';
    document.body.appendChild(a);
    a.click();
    setTimeout(() => {
      if (a.parentNode) a.parentNode.removeChild(a);
    }, 1500);

    // 2. Hidden iframe fallback without navigating page or shrinking video player
    const iframe = document.createElement('iframe');
    iframe.style.display = 'none';
    iframe.src = proxyDownloadUrl;
    document.body.appendChild(iframe);

    // Clean up iframe after download has started
    setTimeout(() => {
      try {
        if (iframe.parentNode) {
          iframe.parentNode.removeChild(iframe);
        }
      } catch {}
    }, 60000);

    return true;
  } catch (err) {
    console.error('Download iframe trigger error:', err);
    // Fallback: window.open in blank target
    try {
      window.open(proxyDownloadUrl, '_blank');
      return true;
    } catch {
      return false;
    }
  }
}
