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

  // Trigger browser download via anchor
  const a = document.createElement('a');
  a.href = downloadUrl;
  a.download = `${cleanFilename}.${containerExtension || 'mp4'}`;
  a.style.display = 'none';
  document.body.appendChild(a);
  a.click();
  setTimeout(() => {
    document.body.removeChild(a);
  }, 1000);

  return downloadRecord;
}
