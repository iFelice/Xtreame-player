import { describe, expect, it } from 'vitest';
import { initialPlaybackState, isPlaybackLoading, playbackReducer } from './playbackState';

describe('playback state machine', () => {
  it('moves through load, play, buffering and recovery', () => {
    let state = playbackReducer(initialPlaybackState, { type: 'LOAD' });
    expect(isPlaybackLoading(state)).toBe(true);
    state = playbackReducer(state, { type: 'PLAYING' });
    expect(state.status).toBe('playing');
    state = playbackReducer(state, { type: 'WAITING' });
    expect(state.status).toBe('buffering');
    state = playbackReducer(state, { type: 'PLAYING' });
    expect(state.status).toBe('playing');
  });

  it('keeps startup waiting distinct from playback buffering', () => {
    const state = playbackReducer(initialPlaybackState, { type: 'WAITING' });
    expect(state.status).toBe('loading');
  });

  it('records an error and creates one clean retry attempt', () => {
    let state = playbackReducer(initialPlaybackState, { type: 'FAIL', message: 'timeout' });
    expect(state).toMatchObject({ status: 'error', error: 'timeout', attempt: 0 });
    state = playbackReducer(state, { type: 'RETRY' });
    expect(state).toMatchObject({ status: 'loading', error: null, attempt: 1, hasPlayed: false });
  });

  it('does not hide an error when a pause event follows the failure', () => {
    const failed = playbackReducer(initialPlaybackState, { type: 'FAIL', message: 'offline' });
    expect(playbackReducer(failed, { type: 'PAUSE' }).status).toBe('error');
  });
});
