export type PlaybackStatus = 'idle' | 'loading' | 'playing' | 'paused' | 'buffering' | 'error';

export interface PlaybackState {
  status: PlaybackStatus;
  error: string | null;
  hasPlayed: boolean;
  attempt: number;
}

export type PlaybackAction =
  | { type: 'LOAD' }
  | { type: 'PLAYING' }
  | { type: 'PAUSE' }
  | { type: 'WAITING' }
  | { type: 'READY' }
  | { type: 'FAIL'; message: string }
  | { type: 'RETRY' }
  | { type: 'RESET_ERROR' };

export const initialPlaybackState: PlaybackState = {
  status: 'loading',
  error: null,
  hasPlayed: false,
  attempt: 0,
};

export function playbackReducer(state: PlaybackState, action: PlaybackAction): PlaybackState {
  switch (action.type) {
    case 'LOAD':
      return { ...state, status: 'loading', error: null, hasPlayed: false };
    case 'PLAYING':
      return { ...state, status: 'playing', error: null, hasPlayed: true };
    case 'PAUSE':
      return { ...state, status: state.status === 'error' ? 'error' : 'paused' };
    case 'WAITING':
      return { ...state, status: state.hasPlayed ? 'buffering' : 'loading' };
    case 'READY':
      return { ...state, status: state.hasPlayed ? 'playing' : 'paused' };
    case 'FAIL':
      return { ...state, status: 'error', error: action.message };
    case 'RETRY':
      return { status: 'loading', error: null, hasPlayed: false, attempt: state.attempt + 1 };
    case 'RESET_ERROR':
      return { ...state, error: null, status: state.hasPlayed ? 'paused' : 'idle' };
  }
}

export const isPlaybackLoading = (state: PlaybackState) =>
  state.status === 'loading' || state.status === 'buffering';
