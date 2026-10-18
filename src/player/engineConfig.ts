import type { HlsConfig } from 'hls.js';

export const HLS_CONFIG: Partial<HlsConfig> = {
  enableWorker: true,
  lowLatencyMode: false,
  backBufferLength: 60,
  maxBufferLength: 60,
  maxMaxBufferLength: 120,
  maxBufferSize: 60 * 1000 * 1000,
  highBufferWatchdogPeriod: 2,
  nudgeMaxRetry: 10,
};

export const MPEGTS_CONFIG = {
  enableWorker: true,
  lazyLoad: false,
  liveBufferLatencyChasing: false,
  liveBufferLatencyMaxLatency: 12,
  liveBufferLatencyMinRemain: 2,
  autoCleanupSourceBuffer: true,
  autoCleanupMaxBackwardDuration: 40,
  autoCleanupMinBackwardDuration: 20,
  fixAudioTimestampGap: true,
  accurateSeek: false,
} as const;
