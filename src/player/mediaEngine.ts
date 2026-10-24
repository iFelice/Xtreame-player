export interface DestroyableEngine {
  destroy(): void;
}

export interface MediaEngineRefs {
  hls: DestroyableEngine | null;
  mpegts: DestroyableEngine | null;
}

export type MediaEngineKind = 'mpegts' | 'hls-js' | 'native-hls' | 'native-video';

export interface MediaEngineSelection {
  isLive: boolean;
  liveFormat: 'm3u8' | 'ts';
  mediaExtension?: string;
  supportsMpegTs: boolean;
  supportsHlsJs: boolean;
  supportsNativeHls: boolean;
  /**
   * Explicit request for the platform's own `<video>` element: no hls.js and
   * no mpegts.js are ever created. Used by the LG webOS build, where the
   * native decoder plays both `.ts` and `.m3u8` (verified on the TV) and MSE
   * remuxing would only add latency and a second open connection — the Xtream
   * server allows a single concurrent connection per account.
   */
  preferNativeOnly?: boolean;
}

export function selectMediaEngine(options: MediaEngineSelection): MediaEngineKind {
  if (options.preferNativeOnly) return 'native-video';
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
