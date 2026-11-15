import { describe, expect, it } from 'vitest';
import { accumulateSeekBurst, isWebOsRemoteBackEvent, resolveWebOsPlayerKey, seekBurstDelta } from './webosRemote';

const liveState = {
  mediaType: 'live' as const,
  bannerOpen: false,
  channelListOpen: false,
  controlsOpen: true,
  errorPanelOpen: false,
  controlsFocused: false,
};

describe('webOS remote normalization', () => {
  it('recognises the real LG Back event by keyCode and its GoBack fallback', () => {
    expect(isWebOsRemoteBackEvent({ key: 'Unidentified', keyCode: 461 })).toBe(true);
    expect(isWebOsRemoteBackEvent({ key: 'GoBack' })).toBe(true);
    expect(isWebOsRemoteBackEvent({ key: 'Escape', keyCode: 27 })).toBe(false);
  });

  it('maps LG channel/media keys and keeps seek disabled for Live', () => {
    expect(resolveWebOsPlayerKey(liveState, { key: 'Unidentified', keyCode: 33 })).toEqual({ type: 'next-channel' });
    expect(resolveWebOsPlayerKey(liveState, { key: 'Unidentified', keyCode: 34 })).toEqual({ type: 'previous-channel' });
    expect(resolveWebOsPlayerKey({ ...liveState, errorPanelOpen: true }, { key: 'ArrowDown' })).toEqual({ type: 'next-channel' });
    expect(resolveWebOsPlayerKey({ ...liveState, errorPanelOpen: true }, { key: 'ArrowUp' })).toEqual({ type: 'previous-channel' });
    expect(resolveWebOsPlayerKey(liveState, { key: 'MediaFastForward', keyCode: 417 })).toEqual({ type: 'none' });
    expect(resolveWebOsPlayerKey({ ...liveState, mediaType: 'movie' }, { key: 'MediaFastForward', keyCode: 417, repeat: true }))
      .toEqual({ type: 'seek', direction: 'forward', repeat: true });
  });

  it('accumulates three Rights to thirty seconds and accelerates held keys', () => {
    let burst = accumulateSeekBurst(null, 'forward', 0, false);
    burst = accumulateSeekBurst(burst, 'forward', 100, false);
    burst = accumulateSeekBurst(burst, 'forward', 200, false);
    expect(seekBurstDelta(burst)).toBe(30);
    burst = accumulateSeekBurst(null, 'forward', 0, true);
    burst = accumulateSeekBurst(burst, 'forward', 100, true);
    expect(seekBurstDelta(burst)).toBe(90);
  });
});
