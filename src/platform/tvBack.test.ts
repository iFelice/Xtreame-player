import { describe, expect, it } from 'vitest';
import {
  isBackKeyCode,
  resolvePlayerRemoteAction,
  resolveTvBackAction,
  resolveTvExitConfirmAction,
  type TvBackState,
} from './tvBack';

const closed: TvBackState = {
  playerOpen: false,
  serverInfoOpen: false,
  settingsSyncOpen: false,
  tvPairingOpen: false,
  seriesModalOpen: false,
  categoryPanelOpen: false,
  showTvHome: false,
  exitConfirmOpen: false,
  playerHandlesBack: false,
  canExitApp: true,
};

const withState = (overrides: Partial<TvBackState>): TvBackState => ({ ...closed, ...overrides });

describe('LG webOS Back key recognition', () => {
  it('recognises the GoBack key only by keyCode 461', () => {
    // Sul TV `key` è "GoBack" e `code` è vuoto: il confronto per code sarebbe
    // inaffidabile, quindi il riconoscimento è per keyCode.
    expect(isBackKeyCode(461)).toBe(true);
    expect(isBackKeyCode(27)).toBe(false);
    expect(isBackKeyCode(undefined)).toBe(false);
    expect(isBackKeyCode(null)).toBe(false);
  });
});

describe('resolveTvBackAction', () => {
  it('closes the player first', () => {
    expect(resolveTvBackAction(withState({ playerOpen: true, serverInfoOpen: true }))).toEqual({
      type: 'close-layer',
      layer: 'player',
    });
  });

  it('leaves the player to its own Back handler on webOS', () => {
    expect(resolveTvBackAction(withState({ playerOpen: true, playerHandlesBack: true }))).toEqual({
      type: 'none',
    });
  });

  it('walks the layers: modals, pairing, series, category panel', () => {
    expect(resolveTvBackAction(withState({ serverInfoOpen: true }))).toEqual({
      type: 'close-layer',
      layer: 'server-info',
    });
    expect(resolveTvBackAction(withState({ settingsSyncOpen: true, serverInfoOpen: true }))).toEqual({
      type: 'close-layer',
      layer: 'server-info',
    });
    expect(resolveTvBackAction(withState({ settingsSyncOpen: true }))).toEqual({
      type: 'close-layer',
      layer: 'settings-sync',
    });
    expect(resolveTvBackAction(withState({ tvPairingOpen: true }))).toEqual({
      type: 'close-layer',
      layer: 'tv-pairing',
    });
    expect(resolveTvBackAction(withState({ seriesModalOpen: true }))).toEqual({
      type: 'close-layer',
      layer: 'series-modal',
    });
    expect(resolveTvBackAction(withState({ tvPairingOpen: true, seriesModalOpen: true }))).toEqual({
      type: 'close-layer',
      layer: 'tv-pairing',
    });
    expect(resolveTvBackAction(withState({ categoryPanelOpen: true }))).toEqual({
      type: 'close-layer',
      layer: 'category-panel',
    });
  });

  it('opens the TV home screen when nothing is left to close', () => {
    expect(resolveTvBackAction(withState({ showTvHome: false }))).toEqual({ type: 'show-tv-home' });
  });

  it('opens the exit confirmation on the TV home screen', () => {
    expect(resolveTvBackAction(withState({ showTvHome: true }))).toEqual({ type: 'open-exit-confirm' });
  });

  it('a second Back closes the confirmation instead of exiting', () => {
    expect(resolveTvBackAction(withState({ showTvHome: true, exitConfirmOpen: true }))).toEqual({
      type: 'close-exit-confirm',
    });
  });

  it('never exits the app from the Back key itself', () => {
    const actions = [
      resolveTvBackAction(withState({ showTvHome: true })),
      resolveTvBackAction(withState({ showTvHome: true, exitConfirmOpen: true })),
      resolveTvBackAction(withState({ showTvHome: true, canExitApp: false })),
    ];
    expect(actions.some((action) => action.type === 'exit-app')).toBe(false);
  });

  it('only the confirmation "Esci" button leads to the app exit', () => {
    expect(resolveTvExitConfirmAction(true)).toEqual({ type: 'exit-app' });
    expect(resolveTvExitConfirmAction(false)).toEqual({ type: 'close-exit-confirm' });
  });

  it('leaves the home screen alone when the platform owns the exit', () => {
    // Android TV: l'Indietro sulla schermata iniziale è gestito dal sistema.
    expect(resolveTvBackAction(withState({ showTvHome: true, canExitApp: false }))).toEqual({
      type: 'none',
    });
  });
});

describe('resolvePlayerRemoteAction', () => {
  const onDemand = { isLive: false };
  const live = { isLive: true };

  it('maps play and pause to the transport controls', () => {
    expect(resolvePlayerRemoteAction(415, onDemand)).toBe('toggle-play');
    expect(resolvePlayerRemoteAction(415, live)).toBe('toggle-play');
    expect(resolvePlayerRemoteAction(19, onDemand)).toBe('pause');
  });

  it('closes the player on Stop and follows Escape on Back', () => {
    expect(resolvePlayerRemoteAction(413, onDemand)).toBe('close-player');
    expect(resolvePlayerRemoteAction(413, live)).toBe('close-player');
    expect(resolvePlayerRemoteAction(461, live)).toBe('back');
    expect(resolvePlayerRemoteAction(461, onDemand)).toBe('back');
  });

  it('seeks ±10 s only on on-demand content', () => {
    expect(resolvePlayerRemoteAction(417, onDemand)).toBe('seek-back');
    expect(resolvePlayerRemoteAction(412, onDemand)).toBe('seek-forward');
    expect(resolvePlayerRemoteAction(417, live)).toBeNull();
    expect(resolvePlayerRemoteAction(412, live)).toBeNull();
  });

  it('zaps channels with CH+ / CH− only on live TV', () => {
    expect(resolvePlayerRemoteAction(33, live)).toBe('next-channel');
    expect(resolvePlayerRemoteAction(34, live)).toBe('previous-channel');
    expect(resolvePlayerRemoteAction(33, onDemand)).toBeNull();
    expect(resolvePlayerRemoteAction(34, onDemand)).toBeNull();
  });

  it('ignores the colour keys and unknown codes', () => {
    for (const keyCode of [403, 404, 405, 406, 13, 37, 9999]) {
      expect(resolvePlayerRemoteAction(keyCode, live)).toBeNull();
      expect(resolvePlayerRemoteAction(keyCode, onDemand)).toBeNull();
    }
  });
});
