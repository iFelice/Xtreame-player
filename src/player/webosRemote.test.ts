import { describe, expect, it } from 'vitest';
import { accumulateSeekBurst, resolveWebOsPlayerKey, seekBurstDelta } from './webosRemote';

const movie = {
  mediaType: 'movie' as const,
  bannerOpen: false,
  channelListOpen: false,
  controlsOpen: false,
  errorPanelOpen: false,
  controlsFocused: false,
};
const live = { ...movie, mediaType: 'live' as const };

describe('webOS player remote decisions', () => {
  it('maps live arrows, OK, left-list, CH+/CH− and Back priorities', () => {
    expect(resolveWebOsPlayerKey(live, { key: 'ArrowUp' })).toEqual({ type: 'previous-channel' });
    expect(resolveWebOsPlayerKey(live, { key: 'ArrowDown' })).toEqual({ type: 'next-channel' });
    expect(resolveWebOsPlayerKey(live, { key: 'Enter' })).toEqual({ type: 'toggle-banner' });
    expect(resolveWebOsPlayerKey(live, { key: 'ArrowLeft' })).toEqual({ type: 'open-channel-list' });
    expect(resolveWebOsPlayerKey(live, { key: 'ArrowRight' })).toEqual({ type: 'none' });
    expect(resolveWebOsPlayerKey(live, { key: 'Unidentified', keyCode: 33 })).toEqual({ type: 'next-channel' });
    expect(resolveWebOsPlayerKey(live, { key: 'Unidentified', keyCode: 34 })).toEqual({ type: 'previous-channel' });
    expect(resolveWebOsPlayerKey({ ...live, channelListOpen: true }, { key: 'Enter' }))
      .toEqual({ type: 'select-focused-channel' });
    expect(resolveWebOsPlayerKey({ ...live, channelListOpen: true }, { key: 'GoBack', keyCode: 461 }))
      .toEqual({ type: 'close-channel-list' });
    expect(resolveWebOsPlayerKey({ ...live, bannerOpen: true }, { key: 'GoBack', keyCode: 461 }))
      .toEqual({ type: 'toggle-banner' });
    expect(resolveWebOsPlayerKey(live, { key: 'GoBack', keyCode: 461 })).toEqual({ type: 'close-player' });
  });

  it('shows controls without pausing on Up; OK pauses and shows controls; Back closes bar first', () => {
    expect(resolveWebOsPlayerKey(movie, { key: 'ArrowUp' })).toEqual({ type: 'show-controls' });
    expect(resolveWebOsPlayerKey(movie, { key: 'Enter' })).toEqual({ type: 'toggle-play-and-show-controls' });
    expect(resolveWebOsPlayerKey({ ...movie, controlsOpen: true }, { key: 'GoBack', keyCode: 461 }))
      .toEqual({ type: 'hide-controls' });
    expect(resolveWebOsPlayerKey({ ...movie, controlsOpen: true }, { key: 'ArrowDown' }))
      .toEqual({ type: 'focus-controls' });
  });
});

describe('webOS accumulated seeks', () => {
  it('combines three quick right presses into one +30 second seek', () => {
    let burst = accumulateSeekBurst(null, 'forward', 1000, false);
    burst = accumulateSeekBurst(burst, 'forward', 1200, false);
    burst = accumulateSeekBurst(burst, 'forward', 1400, false);
    expect(burst.totalSeconds).toBe(30);
    expect(seekBurstDelta(burst)).toBe(30);
  });

  it('accelerates held keydown repeats from 10 to 30 to 60 seconds', () => {
    let burst = accumulateSeekBurst(null, 'forward', 1000, false);
    burst = accumulateSeekBurst(burst, 'forward', 1100, true);
    expect(burst.totalSeconds).toBe(40);
    burst = accumulateSeekBurst(burst, 'forward', 1200, true);
    expect(burst.totalSeconds).toBe(100);
  });

  it('starts a new burst after the idle window and signs backward seeks', () => {
    const oldBurst = accumulateSeekBurst(null, 'backward', 1000, false);
    const nextBurst = accumulateSeekBurst(oldBurst, 'backward', 2600, false);
    expect(nextBurst.totalSeconds).toBe(10);
    expect(seekBurstDelta(nextBurst)).toBe(-10);
  });
});
