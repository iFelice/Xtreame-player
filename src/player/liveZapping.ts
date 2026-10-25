import type { XtreamLiveStream } from '../types/xtream';

/** Preserve category/favorites origin; use the full catalog only when origin is unknown. */
export function chooseLiveZapChannels(
  originChannels: XtreamLiveStream[] | undefined,
  allLiveChannels: XtreamLiveStream[]
): XtreamLiveStream[] {
  return originChannels === undefined ? allLiveChannels : originChannels;
}

export function wrapLiveChannelIndex(currentIndex: number, delta: -1 | 1, length: number): number {
  if (length <= 0) return -1;
  return (currentIndex + delta + length) % length;
}
