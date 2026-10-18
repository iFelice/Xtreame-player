export interface DestroyableEngine {
  destroy(): void;
}

export interface MediaEngineRefs {
  hls: DestroyableEngine | null;
  mpegts: DestroyableEngine | null;
}

export type MediaEngineKind = 'mpegts' | 'hls-js' | 'native-hls' | 'native-video';

export function selectMediaEngine(options: {
  isLive: boolean;
  liveFormat: 'm3u8' | 'ts';
  mediaExtension?: string;
  supportsMpegTs: boolean;
  supportsHlsJs: boolean;
  supportsNativeHls: boolean;
}): MediaEngineKind {
  const isHls = options.isLive
    ? options.liveFormat === 'm3u8'
    : options.mediaExtension?.toLowerCase() === 'm3u8';
  if (options.isLive && !isHls && options.supportsMpegTs) return 'mpegts';
  if (isHls && options.supportsHlsJs) return 'hls-js';
  if (isHls && options.supportsNativeHls) return 'native-hls';
  return 'native-video';
}

export function destroyMediaEngines(refs: MediaEngineRefs): MediaEngineRefs {
  for (const engine of [refs.hls, refs.mpegts]) {
    if (!engine) continue;
    try {
      engine.destroy();
    } catch {
      // Cleanup must remain idempotent even after a partially failed engine.
    }
  }
  return { hls: null, mpegts: null };
}

export function releaseVideoElement(video: HTMLVideoElement): void {
  video.pause();
  video.removeAttribute('src');
  video.load();
}
