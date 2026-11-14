import { describe, expect, it } from 'vitest';
import { chooseLiveZapChannels, wrapLiveChannelIndex } from './liveZapping';
import type { PlayableMediaItem } from '../types/xtream';

const channel = (id: number): PlayableMediaItem => ({
  id: `live_${id}`,
  title: `Channel ${id}`,
  type: 'live',
  streamUrl: `http://server.esempio:8080/live/demo/demo/${id}.m3u8`,
  containerExtension: 'm3u8',
});

describe('live zapping origin', () => {
  it('keeps category/favorites lists and only falls back to all channels for unknown origin', () => {
    const all = [channel(1), channel(2), channel(3)];
    expect(chooseLiveZapChannels([all[0], all[2]], all)).toEqual([all[0], all[2]]);
    expect(chooseLiveZapChannels([], all)).toEqual([]);
    expect(chooseLiveZapChannels(undefined, all)).toEqual(all);
  });

  it('wraps previous and next channel selection', () => {
    expect(wrapLiveChannelIndex(0, -1, 3)).toBe(2);
    expect(wrapLiveChannelIndex(2, 1, 3)).toBe(0);
    expect(wrapLiveChannelIndex(0, 1, 0)).toBe(-1);
  });
});
