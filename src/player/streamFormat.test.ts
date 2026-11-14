import { describe, expect, it } from 'vitest';
import {
  WEBOS_LIVE_INTERRUPTION_WINDOW_MS,
  WEBOS_LIVE_LEARN_STABILITY_MS,
  WEBOS_LIVE_STALL_TIMEOUT_MS,
  allowedLiveStreamFormats,
  canFallbackToMpegTs,
  decideWebOsLiveInterruption,
  defaultLiveStreamFormat,
  isPublicMockStream,
  isWebOsLiveStalled,
  liveFormatForChannel,
  nextLiveFormatAfterFailure,
  normalizeLiveStreamUrl,
  selectWebOsInitialLiveFormat,
  shouldLearnWebOsLiveFormat,
} from './streamFormat';

describe('live stream format', () => {
  it('switches regular Xtream URLs without losing query parameters', () => {
    expect(normalizeLiveStreamUrl('http://server.esempio:8080/live/demo/demo/12.ts?token=x', 'm3u8'))
      .toBe('http://server.esempio:8080/live/demo/demo/12.m3u8?token=x');
    expect(normalizeLiveStreamUrl('http://server.esempio:8080/live/demo/demo/12.m3u8', 'ts'))
      .toBe('http://server.esempio:8080/live/demo/demo/12.ts');
  });

  it('keeps public mock streams on HLS even when MPEG-TS is requested', () => {
    const url = 'http://localhost:3333/live/demo/demo/public_8.ts';
    expect(isPublicMockStream(url)).toBe(true);
    expect(normalizeLiveStreamUrl(url, 'ts')).toBe('http://localhost:3333/live/demo/demo/public_8.m3u8');
  });

  it('allows MPEG-TS fallback only for regular live streams', () => {
    expect(canFallbackToMpegTs('live', 'https://example.test/live/12.m3u8')).toBe(true);
    expect(canFallbackToMpegTs('live', 'http://localhost/live/demo/demo/public_12.m3u8')).toBe(false);
    expect(canFallbackToMpegTs('movie', 'https://example.test/movie/12.m3u8')).toBe(false);
    expect(canFallbackToMpegTs('series', 'https://example.test/series/12.m3u8')).toBe(false);
  });

  it('does not mistake ordinary names for public mock stream ids', () => {
    expect(isPublicMockStream('https://example.test/live/public_news.ts')).toBe(false);
  });

  it('keeps browser HLS-to-TS fallback while webOS defaults to HLS after the native TS measurement', () => {
    expect(defaultLiveStreamFormat('webos')).toBe('m3u8');
    expect(defaultLiveStreamFormat('web')).toBe('m3u8');
    expect(liveFormatForChannel('webos', 'live_1', 'live_2', 'ts')).toBe('m3u8');
    expect(nextLiveFormatAfterFailure({
      target: 'web', currentFormat: 'm3u8', fallbackAlreadyTried: false, canSwitchFormat: true,
    })).toEqual({ kind: 'retry', format: 'ts' });
  });

  it('uses allowed live formats and the documented webOS start priority', () => {
    expect(allowedLiveStreamFormats()).toEqual(['m3u8', 'ts']);
    expect(allowedLiveStreamFormats([])).toEqual(['m3u8', 'ts']);
    expect(allowedLiveStreamFormats(['ts'])).toEqual(['ts']);
    expect(allowedLiveStreamFormats(['m3u8'])).toEqual(['m3u8']);
    expect(allowedLiveStreamFormats(['TS', 'm3u8', 'mp4'])).toEqual(['m3u8', 'ts']);

    expect(selectWebOsInitialLiveFormat({ allowedFormats: ['ts'] })).toBe('ts');
    expect(selectWebOsInitialLiveFormat({ allowedFormats: ['m3u8'] })).toBe('m3u8');
    expect(selectWebOsInitialLiveFormat({ allowedFormats: ['ts', 'm3u8'] })).toBe('m3u8');
    expect(selectWebOsInitialLiveFormat({ allowedFormats: ['ts', 'm3u8'], learnedFormat: 'ts' })).toBe('ts');
    expect(selectWebOsInitialLiveFormat({
      allowedFormats: ['ts', 'm3u8'], manualFormat: 'm3u8', learnedFormat: 'ts',
    })).toBe('m3u8');
  });

  it('does not recover a user pause and restarts sparse versus clustered interruptions correctly', () => {
    expect(decideWebOsLiveInterruption({
      desiredPlaying: false, now: 5_000, lastRecoveryAt: 0, interruptionCount: 2,
      automaticFormatSwitchUsed: false, currentFormat: 'm3u8', allowedFormats: ['m3u8', 'ts'],
    })).toEqual({ kind: 'ignore', interruptionCount: 2 });

    expect(decideWebOsLiveInterruption({
      desiredPlaying: true, now: WEBOS_LIVE_INTERRUPTION_WINDOW_MS + 1, lastRecoveryAt: 0, interruptionCount: 2,
      automaticFormatSwitchUsed: false, currentFormat: 'm3u8', allowedFormats: ['m3u8', 'ts'],
    })).toEqual({ kind: 'restart', interruptionCount: 1 });
    expect(decideWebOsLiveInterruption({
      desiredPlaying: true, now: WEBOS_LIVE_INTERRUPTION_WINDOW_MS + 1, lastRecoveryAt: 0, interruptionCount: 3,
      automaticFormatSwitchUsed: true, currentFormat: 'ts', allowedFormats: ['m3u8', 'ts'],
    })).toEqual({ kind: 'restart', interruptionCount: 1 });

    expect(decideWebOsLiveInterruption({
      desiredPlaying: true, now: 2_000, lastRecoveryAt: 1_000, interruptionCount: 2,
      automaticFormatSwitchUsed: false, currentFormat: 'm3u8', allowedFormats: ['m3u8', 'ts'],
    })).toEqual({ kind: 'switch-format', interruptionCount: 3, format: 'ts' });
    expect(decideWebOsLiveInterruption({
      desiredPlaying: true, now: 3_000, lastRecoveryAt: 2_000, interruptionCount: 3,
      automaticFormatSwitchUsed: true, currentFormat: 'ts', allowedFormats: ['m3u8', 'ts'],
    })).toEqual({ kind: 'error', interruptionCount: 4 });
  });

  it('learns only a format that survived a full automatic-switch stability window', () => {
    expect(shouldLearnWebOsLiveFormat({ automaticallySwitched: false, stableForMs: WEBOS_LIVE_LEARN_STABILITY_MS })).toBe(false);
    expect(shouldLearnWebOsLiveFormat({ automaticallySwitched: true, stableForMs: WEBOS_LIVE_LEARN_STABILITY_MS - 1 })).toBe(false);
    expect(shouldLearnWebOsLiveFormat({ automaticallySwitched: true, stableForMs: WEBOS_LIVE_LEARN_STABILITY_MS })).toBe(true);
  });

  it('marks a webOS Live stalled only after continuous missing media progress', () => {
    expect(isWebOsLiveStalled({
      now: 20_000, lastProgressAt: 20_000 - WEBOS_LIVE_STALL_TIMEOUT_MS + 1,
      desiredPlaying: true, paused: false,
    })).toBe(false);
    expect(isWebOsLiveStalled({
      now: 20_000, lastProgressAt: 20_000 - WEBOS_LIVE_STALL_TIMEOUT_MS,
      desiredPlaying: true, paused: false,
    })).toBe(true);
    expect(isWebOsLiveStalled({
      now: 20_000, lastProgressAt: 0,
      desiredPlaying: false, paused: false,
    })).toBe(false);
    expect(isWebOsLiveStalled({
      now: 20_000, lastProgressAt: 0,
      desiredPlaying: true, paused: true,
    })).toBe(false);
    expect(isWebOsLiveStalled({
      now: 20_000, lastProgressAt: null,
      desiredPlaying: true, paused: false,
    })).toBe(false);
  });
});
