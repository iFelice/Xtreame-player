import {
  LG_KEY_BACK,
  LG_KEY_CHANNEL_DOWN,
  LG_KEY_CHANNEL_UP,
  LG_KEY_FAST_FORWARD,
  LG_KEY_PAUSE,
  LG_KEY_PLAY,
  LG_KEY_REWIND,
  LG_KEY_STOP,
} from '../platform/tvBack';

export type WebOsPlayerKey = string;

export interface WebOsPlayerRemoteState {
  mediaType: 'live' | 'movie' | 'series' | 'direct';
  bannerOpen: boolean;
  channelListOpen: boolean;
  controlsOpen: boolean;
  errorPanelOpen: boolean;
  controlsFocused: boolean;
}

export type WebOsPlayerAction =
  | { type: 'none' }
  | { type: 'previous-channel' }
  | { type: 'next-channel' }
  | { type: 'toggle-banner' }
  | { type: 'open-channel-list' }
  | { type: 'close-channel-list' }
  | { type: 'select-focused-channel' }
  | { type: 'toggle-play-and-show-controls' }
  | { type: 'show-controls' }
  | { type: 'hide-controls' }
  | { type: 'focus-controls' }
  | { type: 'blur-controls' }
  | { type: 'move-control-focus'; direction: 'previous' | 'next' }
  | { type: 'activate-control' }
  | { type: 'seek'; direction: 'backward' | 'forward'; repeat: boolean }
  | { type: 'pause' }
  | { type: 'close-player' };

/** True for the physical LG Back key, also used by App's access-shell policy. */
export function isWebOsRemoteBackEvent(input: { key?: string; keyCode?: number | null }): boolean {
  return input.keyCode === LG_KEY_BACK || input.key === 'GoBack';
}

/** Pure LG remote decision. The caller owns DOM focus and media operations. */
export function resolveWebOsPlayerKey(
  state: WebOsPlayerRemoteState,
  input: { key: WebOsPlayerKey; keyCode?: number | null; repeat?: boolean },
): WebOsPlayerAction {
  const isLive = state.mediaType === 'live';
  const code = input.keyCode;
  if (isWebOsRemoteBackEvent(input)) {
    if (state.errorPanelOpen) return { type: 'close-player' };
    if (isLive && state.channelListOpen) return { type: 'close-channel-list' };
    if (isLive && state.bannerOpen) return { type: 'toggle-banner' };
    if (!isLive && state.controlsOpen) return { type: 'hide-controls' };
    return { type: 'close-player' };
  }
  if (code === LG_KEY_STOP || input.key === 'MediaStop') return { type: 'close-player' };
  if (code === LG_KEY_PAUSE || input.key === 'MediaPause') return { type: 'pause' };
  if (code === LG_KEY_PLAY || input.key === 'MediaPlayPause') return { type: 'toggle-play-and-show-controls' };
  if (code === LG_KEY_REWIND || input.key === 'MediaRewind') return isLive ? { type: 'none' } : { type: 'seek', direction: 'backward', repeat: Boolean(input.repeat) };
  if (code === LG_KEY_FAST_FORWARD || input.key === 'MediaFastForward') return isLive ? { type: 'none' } : { type: 'seek', direction: 'forward', repeat: Boolean(input.repeat) };
  if (isLive && code === LG_KEY_CHANNEL_UP) return { type: 'next-channel' };
  if (isLive && code === LG_KEY_CHANNEL_DOWN) return { type: 'previous-channel' };

  if (state.errorPanelOpen) return { type: 'none' };
  if (isLive) {
    if (state.channelListOpen) {
      if (input.key === 'ArrowLeft' || input.key === 'ArrowRight') return { type: 'close-channel-list' };
      if (input.key === 'Enter') return { type: 'select-focused-channel' };
      return { type: 'none' };
    }
    if (input.key === 'ArrowUp') return { type: 'previous-channel' };
    if (input.key === 'ArrowDown') return { type: 'next-channel' };
    if (input.key === 'ArrowLeft') return { type: 'open-channel-list' };
    if (input.key === 'Enter') return { type: 'toggle-banner' };
    return { type: 'none' };
  }
  if (state.controlsFocused) {
    if (input.key === 'ArrowLeft') return { type: 'move-control-focus', direction: 'previous' };
    if (input.key === 'ArrowRight' || input.key === 'ArrowDown') return { type: 'move-control-focus', direction: 'next' };
    if (input.key === 'ArrowUp') return { type: 'blur-controls' };
    if (input.key === 'Enter') return { type: 'activate-control' };
    return { type: 'none' };
  }
  if (input.key === 'Enter') return { type: 'toggle-play-and-show-controls' };
  if (input.key === 'ArrowUp') return { type: 'show-controls' };
  if (input.key === 'ArrowDown') return state.controlsOpen ? { type: 'focus-controls' } : { type: 'none' };
  if (input.key === 'ArrowLeft') return { type: 'seek', direction: 'backward', repeat: Boolean(input.repeat) };
  if (input.key === 'ArrowRight') return { type: 'seek', direction: 'forward', repeat: Boolean(input.repeat) };
  return { type: 'none' };
}

export interface SeekBurst {
  direction: 'backward' | 'forward';
  totalSeconds: number;
  lastAt: number;
  repeatSteps: number;
}

/** Coalesce quick remote seeks so three Right presses produce one +30s seek. */
export function accumulateSeekBurst(
  previous: SeekBurst | null,
  direction: 'backward' | 'forward',
  now: number,
  repeat: boolean,
  windowMs = 1500,
): SeekBurst {
  const joinsBurst = Boolean(previous && previous.direction === direction && now - previous.lastAt <= windowMs);
  const repeatSteps = joinsBurst && previous ? previous.repeatSteps : 0;
  const increment = repeat ? (repeatSteps >= 1 ? 60 : 30) : 10;
  return {
    direction,
    totalSeconds: (joinsBurst && previous ? previous.totalSeconds : 0) + increment,
    lastAt: now,
    repeatSteps: repeat ? repeatSteps + 1 : 0,
  };
}

export function seekBurstDelta(burst: SeekBurst | null): number {
  if (!burst) return 0;
  return burst.direction === 'backward' ? -burst.totalSeconds : burst.totalSeconds;
}
