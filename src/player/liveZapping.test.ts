import { describe, expect, it } from 'vitest';
import { chooseLiveZapChannels, wrapLiveChannelIndex } from './liveZapping';
import type { XtreamLiveStream } from '../types/xtream';

const channel = (id: number): XtreamLiveStream => ({
  stream_id: id,
  name: `Channel ${id}`,
  category_id: '001',
});

describe('live zapping origin', () => {
  it('uses the current category or favorites list and only falls back to all when origin is unknown', () => {
    const all = [channel(1), channel(2), channel(3)];
    const origin = [all[0], all[2]];
    expect(chooseLiveZapChannels(origin, all)).toEqual(origin);
    expect(chooseLiveZapChannels([], all)).toEqual([]);
    expect(chooseLiveZapChannels(undefined, all)).toEqual(all);
  });

  it('wraps next/previous channel indices circularly', () => {
    expect(wrapLiveChannelIndex(0, -1, 3)).toBe(2);
    expect(wrapLiveChannelIndex(2, 1, 3)).toBe(0);
    expect(wrapLiveChannelIndex(0, 1, 0)).toBe(-1);
  });
});
