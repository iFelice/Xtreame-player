import type { PlayableMediaItem } from '../types/xtream';

/** The source can be a category, favorites, or an unknown entry point. */
export interface LivePlaybackOrigin {
  channels: PlayableMediaItem[];
  categoryName: string;
  focusId?: string;
}

/** Preserve category/favorites origin; use the full catalog only when unknown. */
export function chooseLiveZapChannels(
  originChannels: PlayableMediaItem[] | undefined,
  allLiveChannels: PlayableMediaItem[],
): PlayableMediaItem[] {
  return originChannels === undefined ? allLiveChannels : originChannels;
}

export function wrapLiveChannelIndex(currentIndex: number, delta: -1 | 1, length: number): number {
  if (length <= 0) return -1;
  return (currentIndex + delta + length) % length;
}
