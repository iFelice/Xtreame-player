/** LG webOS remote Back key and app-level exit decisions. */
export const LG_KEY_BACK = 461;

/**
 * webOS can dismiss its system keyboard before delivering the physical Back
 * key to the app. Keep this short window intentionally easy to tune.
 */
export const TV_TEXT_FIELD_BACK_GRACE_MS = 400;

/** LG reports Back as keyCode 461, key "GoBack" and an empty `code`. */
export function isBackKeyCode(keyCode: number | undefined | null): boolean {
  return keyCode === LG_KEY_BACK;
}

export type TvBackLayer =
  | 'server-info'
  | 'settings-sync'
  | 'tv-pairing'
  | 'series-modal'
  | 'category-panel';

export interface TvBackState {
  playerOpen: boolean;
  /** Player controls intentionally own webOS Back in PR2. */
  playerHandlesBack: boolean;
  serverInfoOpen: boolean;
  settingsSyncOpen: boolean;
  tvPairingOpen: boolean;
  seriesModalOpen: boolean;
  categoryPanelOpen: boolean;
  /** A text field currently owns the system keyboard. */
  textFieldActive: boolean;
  /** The text field blurred just before webOS delivered Back. */
  textFieldRecentlyBlurred: boolean;
  showTvHome: boolean;
  exitConfirmOpen: boolean;
  canExitApp: boolean;
}

export type TvBackAction =
  | { type: 'blur-text-field' }
  | { type: 'close-layer'; layer: TvBackLayer }
  | { type: 'show-tv-home' }
  | { type: 'open-exit-confirm' }
  | { type: 'close-exit-confirm' }
  | { type: 'exit-app' }
  | { type: 'none' };

/** Pure priority order for one press of the TV Back key. */
export function resolveTvBackAction(state: TvBackState): TvBackAction {
  // This must win over every app-level layer: the first Back belongs to the
  // system keyboard, not to catalog navigation or the exit confirmation.
  if (state.textFieldActive || state.textFieldRecentlyBlurred) {
    return { type: 'blur-text-field' };
  }
  if (state.exitConfirmOpen) return { type: 'close-exit-confirm' };
  if (state.playerOpen) return state.playerHandlesBack ? { type: 'none' } : { type: 'none' };
  if (state.serverInfoOpen) return { type: 'close-layer', layer: 'server-info' };
  if (state.settingsSyncOpen) return { type: 'close-layer', layer: 'settings-sync' };
  if (state.tvPairingOpen) return { type: 'close-layer', layer: 'tv-pairing' };
  if (state.seriesModalOpen) return { type: 'close-layer', layer: 'series-modal' };
  if (state.categoryPanelOpen) return { type: 'close-layer', layer: 'category-panel' };
  if (!state.showTvHome) return { type: 'show-tv-home' };
  return state.canExitApp ? { type: 'open-exit-confirm' } : { type: 'none' };
}

export function resolveTvExitConfirmAction(confirmed: boolean): TvBackAction {
  return confirmed ? { type: 'exit-app' } : { type: 'close-exit-confirm' };
}
