import { describe, expect, it } from 'vitest';
import { isBackKeyCode, resolveTvBackAction, resolveTvExitConfirmAction, type TvBackState } from './tvBack';

const state: TvBackState = {
  playerOpen: false, playerHandlesBack: false, serverInfoOpen: false,
  settingsSyncOpen: false, tvPairingOpen: false, seriesModalOpen: false,
  categoryPanelOpen: false, showTvHome: false, exitConfirmOpen: false, canExitApp: true,
};

describe('webOS Back', () => {
  it('uses LG keyCode 461 rather than browser key strings', () => {
    expect(isBackKeyCode(461)).toBe(true);
    expect(isBackKeyCode(27)).toBe(false);
  });

  it('closes overlays before TV home, then asks before exit', () => {
    expect(resolveTvBackAction({ ...state, settingsSyncOpen: true })).toEqual({ type: 'close-layer', layer: 'settings-sync' });
    expect(resolveTvBackAction(state)).toEqual({ type: 'show-tv-home' });
    expect(resolveTvBackAction({ ...state, showTvHome: true })).toEqual({ type: 'open-exit-confirm' });
    expect(resolveTvBackAction({ ...state, showTvHome: true, exitConfirmOpen: true })).toEqual({ type: 'close-exit-confirm' });
    expect(resolveTvExitConfirmAction(true)).toEqual({ type: 'exit-app' });
  });
});
