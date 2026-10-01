import { storage, DownloadItem } from '../services/storage';
import { buildDownloadUrl } from './parseXtreamUrl';

/**
 * Registers media in the local download history and returns the direct record.
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

  const cleanServer = serverUrl.replace(/\/+$/, '');
  const ext = containerExtension || 'mp4';
  const directPath = `${cleanServer}/${xtreamType}/${encodeURIComponent(username)}/${encodeURIComponent(password)}/${streamId}.${ext}`;

  const downloadRecord: DownloadItem = {
    id: `${type}_${streamId}_${Date.now()}`,
    title,
    type,
    streamUrl: directPath,
    downloadUrl: directPath,
    poster,
    containerExtension,
    seriesName,
    seasonNum,
    episodeNum,
    downloadedAt: Date.now(),
  };

  // Add to storage
  storage.addDownload(downloadRecord);

  return downloadRecord;
}
