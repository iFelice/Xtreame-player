const PUBLIC_PLAYLIST_URL = 'https://iptv-org.github.io/iptv/index.m3u';
const CACHE_MS = 30 * 60 * 1000;

export interface PublicLiveStream {
  num: number;
  name: string;
  stream_type: 'live';
  stream_id: string;
  stream_icon: string;
  category_id: '900';
  epg_channel_id: string;
  direct_source: string;
}

let cache: { expiresAt: number; streams: PublicLiveStream[] } | null = null;

function attribute(line: string, name: string): string {
  return line.match(new RegExp(`${name}="([^"]*)"`, 'i'))?.[1] || '';
}

export async function loadPublicTestStreams(limit = 200): Promise<PublicLiveStream[]> {
  if (cache && cache.expiresAt > Date.now()) return cache.streams;

  const response = await fetch(PUBLIC_PLAYLIST_URL, { signal: AbortSignal.timeout(15_000) });
  if (!response.ok) throw new Error(`Playlist pubblica non disponibile: HTTP ${response.status}`);
  const lines = (await response.text()).split(/\r?\n/);
  const streams: PublicLiveStream[] = [];

  for (let index = 0; index < lines.length - 1 && streams.length < limit; index += 1) {
    const metadata = lines[index].trim();
    if (!metadata.startsWith('#EXTINF:')) continue;
    const url = lines[index + 1]?.trim();
    // The current live player test expects HLS. Other formats remain excluded
    // so the public profile is useful and deterministic enough for UI checks.
    if (!url || !/^https?:\/\//i.test(url) || !url.toLowerCase().includes('.m3u8')) continue;
    const fallbackName = metadata.split(',').pop()?.trim() || `Canale pubblico ${streams.length + 1}`;
    streams.push({
      num: 50_000 + streams.length,
      name: fallbackName,
      stream_type: 'live',
      stream_id: `public_${streams.length}`,
      stream_icon: attribute(metadata, 'tvg-logo'),
      category_id: '900',
      epg_channel_id: attribute(metadata, 'tvg-id'),
      direct_source: url,
    });
  }

  cache = { expiresAt: Date.now() + CACHE_MS, streams };
  return streams;
}

export async function publicStreamUrl(streamId: string): Promise<string | null> {
  const streams = await loadPublicTestStreams();
  return streams.find((stream) => stream.stream_id === streamId)?.direct_source || null;
}
