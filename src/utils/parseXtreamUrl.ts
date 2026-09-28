import { XtreamParsedUrl } from '../types/xtream';

/**
 * Parses any Xtream Codes URL, including direct media links such as:
 * - http://reload.loginflash.com/movie/User/Password/10112.mp4
 * - http://reload.loginflash.com/series/User/Password/10112.mkv
 * - http://reload.loginflash.com/live/User/Password/10112.ts
 * - http://reload.loginflash.com/User/Password/10112
 * - http://reload.loginflash.com/get.php?username=User&password=Password...
 * - http://reload.loginflash.com/player_api.php?username=User&password=Password
 */
export function parseXtreamUrl(rawInput: string): XtreamParsedUrl | null {
  if (!rawInput || typeof rawInput !== 'string') return null;

  const trimmed = rawInput.trim();
  if (!trimmed) return null;

  try {
    // Add protocol if missing
    const urlString = /^https?:\/\//i.test(trimmed) ? trimmed : `http://${trimmed}`;
    const url = new URL(urlString);

    const protocol = url.protocol.replace(':', '');
    const host = url.hostname;
    const port = url.port || (protocol === 'https' ? '443' : '80');
    const serverUrl = `${protocol}://${host}${url.port ? `:${url.port}` : ''}`;

    // Check query params first (e.g. get.php or player_api.php or link with params)
    const queryUsername = url.searchParams.get('username') || url.searchParams.get('user');
    const queryPassword = url.searchParams.get('password') || url.searchParams.get('pass');

    // Check path segments
    // e.g. /movie/User/Password/10112.mp4
    // segments: ["movie", "User", "Password", "10112.mp4"]
    const pathSegments = url.pathname.split('/').filter(Boolean);

    // Pattern 1: /movie/{user}/{pass}/{id}.{ext}
    // Pattern 2: /series/{user}/{pass}/{id}.{ext}
    // Pattern 3: /live/{user}/{pass}/{id}.{ext}
    if (
      pathSegments.length >= 4 &&
      ['movie', 'series', 'live'].includes(pathSegments[0].toLowerCase())
    ) {
      const typeStr = pathSegments[0].toLowerCase() as 'movie' | 'series' | 'live';
      const user = decodeURIComponent(pathSegments[1]);
      const pass = decodeURIComponent(pathSegments[2]);
      const filePart = pathSegments[3];

      let streamId = filePart;
      let ext = 'mp4';

      const dotIdx = filePart.lastIndexOf('.');
      if (dotIdx !== -1) {
        streamId = filePart.substring(0, dotIdx);
        ext = filePart.substring(dotIdx + 1).toLowerCase();
      }

      return {
        originalUrl: trimmed,
        serverUrl,
        host,
        port,
        protocol,
        username: user,
        password: pass,
        streamType: typeStr,
        streamId,
        containerExtension: ext,
        isDirectStream: true,
      };
    }

    // Pattern 4: Classic live stream /{user}/{pass}/{id} or /{user}/{pass}/{id}.ts
    if (
      pathSegments.length === 3 &&
      !pathSegments[0].includes('.php') &&
      !['movie', 'series', 'live', 'get.php', 'player_api.php'].includes(pathSegments[0].toLowerCase())
    ) {
      const user = decodeURIComponent(pathSegments[0]);
      const pass = decodeURIComponent(pathSegments[1]);
      const filePart = pathSegments[2];

      let streamId = filePart;
      let ext = 'ts';
      const dotIdx = filePart.lastIndexOf('.');
      if (dotIdx !== -1) {
        streamId = filePart.substring(0, dotIdx);
        ext = filePart.substring(dotIdx + 1).toLowerCase();
      }

      return {
        originalUrl: trimmed,
        serverUrl,
        host,
        port,
        protocol,
        username: user,
        password: pass,
        streamType: 'live',
        streamId,
        containerExtension: ext,
        isDirectStream: true,
      };
    }

    // Pattern 5: URL with query parameters (player_api.php or get.php or custom)
    if (queryUsername && queryPassword) {
      return {
        originalUrl: trimmed,
        serverUrl,
        host,
        port,
        protocol,
        username: decodeURIComponent(queryUsername),
        password: decodeURIComponent(queryPassword),
        streamType: undefined,
        streamId: undefined,
        containerExtension: undefined,
        isDirectStream: false,
      };
    }

    // Pattern 6: Basic host only or unknown format
    return {
      originalUrl: trimmed,
      serverUrl,
      host,
      port,
      protocol,
      username: '',
      password: '',
      isDirectStream: false,
    };
  } catch (err) {
    console.error('Error parsing Xtream URL:', err);
    return null;
  }
}

/**
 * Builds the direct or proxied stream URL for playback
 */
export function buildStreamUrl(
  serverUrl: string,
  username: string,
  password: string,
  type: 'movie' | 'series' | 'live',
  streamId: string | number,
  containerExtension: string = 'mp4',
  useProxy: boolean = true
): string {
  const cleanServer = serverUrl.replace(/\/+$/, '');
  let streamPath = '';

  if (type === 'movie') {
    streamPath = `${cleanServer}/movie/${encodeURIComponent(username)}/${encodeURIComponent(password)}/${streamId}.${containerExtension || 'mp4'}`;
  } else if (type === 'series') {
    streamPath = `${cleanServer}/series/${encodeURIComponent(username)}/${encodeURIComponent(password)}/${streamId}.${containerExtension || 'mp4'}`;
  } else if (type === 'live') {
    streamPath = `${cleanServer}/live/${encodeURIComponent(username)}/${encodeURIComponent(password)}/${streamId}.${containerExtension || 'ts'}`;
  }

  if (useProxy) {
    return `/api/proxy/stream?url=${encodeURIComponent(streamPath)}`;
  }
  return streamPath;
}

/**
 * Formats seconds or minutes into a human-readable duration (e.g. 1h 45m)
 */
export function formatDuration(durationOrSecs?: string | number): string {
  if (!durationOrSecs) return '';
  if (typeof durationOrSecs === 'string' && durationOrSecs.includes(':')) {
    return durationOrSecs;
  }
  const totalSecs = typeof durationOrSecs === 'string' ? parseInt(durationOrSecs, 10) : durationOrSecs;
  if (isNaN(totalSecs) || totalSecs <= 0) return '';
  const hours = Math.floor(totalSecs / 3600);
  const minutes = Math.floor((totalSecs % 3600) / 60);
  if (hours > 0) {
    return `${hours}h ${minutes > 0 ? `${minutes}m` : ''}`;
  }
  return `${minutes} min`;
}

/**
 * Formats epoch timestamp or date string to localized date
 */
export function formatExpiryDate(expDate?: string | null): string {
  if (!expDate) return 'Illimitato / Sconosciuto';
  const timestamp = parseInt(expDate, 10);
  if (!isNaN(timestamp)) {
    const d = new Date(timestamp * 1000);
    return d.toLocaleDateString('it-IT', { day: '2-digit', month: '2-digit', year: 'numeric' });
  }
  return expDate;
}
