import { storage, DownloadItem } from '../services/storage';
import { buildDownloadUrl } from './parseXtreamUrl';

/**
 * Triggers a native browser file download and registers it in the local download history.
 */
export function startMediaDownload(options: {
  serverUrl: string;
  username: string;
  password: string;
  type: 'movie' | 'episode' | 'series';
  streamId: string | number;
  title: string;
  containerExtension?: string;
  poster?: string;
  seriesName?: string;
  seasonNum?: number;
  episodeNum?: number;
}): DownloadItem {
  const {
    serverUrl,
    username,
    password,
    type,
    streamId,
    title,
    containerExtension = 'mp4',
    poster,
    seriesName,
    seasonNum,
    episodeNum,
  } = options;

  // Build clean sanitized filename
  let filename = title.trim();
  if (seriesName && seasonNum !== undefined && episodeNum !== undefined) {
    const sStr = String(seasonNum).padStart(2, '0');
    const eStr = String(episodeNum).padStart(2, '0');
    filename = `${seriesName} - S${sStr}E${eStr} - ${title}`;
  }
  const cleanFilename = filename.replace(/[/\\?%*:|"<>]/g, '_');

  const xtreamType = type === 'episode' || type === 'series' ? 'series' : 'movie';
  const downloadUrl = buildDownloadUrl(
    serverUrl,
    username,
    password,
    xtreamType,
    streamId,
    containerExtension,
    cleanFilename
  );

  const downloadRecord: DownloadItem = {
    id: `${type}_${streamId}_${Date.now()}`,
    title,
    type,
    streamUrl: downloadUrl.replace('&download=1', ''),
    downloadUrl,
    poster,
    containerExtension,
    seriesName,
    seasonNum,
    episodeNum,
    downloadedAt: Date.now(),
  };

  // Add to storage
  storage.addDownload(downloadRecord);

  // Detect Capacitor native platform (Mac / iOS)
  const isCapacitorNative =
    typeof window !== 'undefined' &&
    ((window as any).Capacitor?.isNativePlatform?.() || (window as any).Capacitor?.platform === 'ios');

  const cloudProxyBase = 'https://ais-dev-dihbqwu76twglwk6fd3g6v-872512682555.europe-west2.run.app';
  const effectiveDownloadUrl = isCapacitorNative
    ? `${cloudProxyBase}${downloadUrl}`
    : downloadUrl;

  if (isCapacitorNative) {
    try {
      const a = document.createElement('a');
      a.href = effectiveDownloadUrl;
      a.download = `${cleanFilename}.${containerExtension || 'mp4'}`;
      a.target = '_blank';
      a.rel = 'noopener noreferrer';
      document.body.appendChild(a);
      a.click();
      setTimeout(() => {
        if (a.parentNode) a.parentNode.removeChild(a);
      }, 1000);
    } catch {
      window.open(effectiveDownloadUrl, '_system');
    }
  } else {
    // Web Browser on Mac (Safari, Chrome, etc.)
    try {
      const a = document.createElement('a');
      a.href = downloadUrl;
      a.download = `${cleanFilename}.${containerExtension || 'mp4'}`;
      a.style.display = 'none';
      document.body.appendChild(a);
      a.click();
      setTimeout(() => {
        if (a.parentNode) a.parentNode.removeChild(a);
      }, 1500);

      // Hidden iframe fallback
      const iframe = document.createElement('iframe');
      iframe.style.display = 'none';
      iframe.src = downloadUrl;
      document.body.appendChild(iframe);
      setTimeout(() => {
        if (iframe.parentNode) iframe.parentNode.removeChild(iframe);
      }, 60000);
    } catch (err) {
      console.error('Download error:', err);
      try {
        window.open(downloadUrl, '_blank');
      } catch {}
    }
  }

  return downloadRecord;
}
