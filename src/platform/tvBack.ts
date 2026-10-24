/**
 * Tasti del telecomando LG webOS e logica del tasto Indietro.
 *
 * I codici qui sotto arrivano dalla documentazione LG e da quanto verificato
 * sul TV (branch di prova): il tasto Indietro arriva come `keyCode` 461 con
 * `key` "GoBack" e `code` vuoto, quindi il riconoscimento avviene **solo per
 * keyCode**. Gli altri codici (play, pausa, stop, ±10 s, canali) non sono
 * ancora stati provati sul TV: vedi docs/WEBOS.md.
 */

export const LG_KEY_PAUSE = 19;
export const LG_KEY_CHANNEL_UP = 33;
export const LG_KEY_CHANNEL_DOWN = 34;
export const LG_KEY_BACK = 461;
export const LG_KEY_FAST_FORWARD = 412;
export const LG_KEY_STOP = 413;
export const LG_KEY_REWIND = 417;
export const LG_KEY_PLAY = 415;

/** True for the LG "GoBack" key, whatever `key`/`code` the browser reports. */
export function isBackKeyCode(keyCode: number | undefined | null): boolean {
  return keyCode === LG_KEY_BACK;
}

export type PlayerRemoteAction =
  | 'toggle-play'
  | 'pause'
  | 'close-player'
  /** Indietro: identico a Escape (esce dalla finestra a schermo intero o chiude). */
  | 'back'
  | 'seek-back'
  | 'seek-forward'
  | 'next-channel'
  | 'previous-channel';

/**
 * Azione del telecomando sul lettore. `isLive` distingue il live TV dai
 * contenuti on demand: sul live i ±10 s non hanno senso e CH+/CH− fanno lo
 * zapping; Stop (413) chiude il player, Indietro (461) segue la stessa
 * sequenza di Escape.
 */
export function resolvePlayerRemoteAction(
  keyCode: number | undefined | null,
  context: { isLive: boolean }
): PlayerRemoteAction | null {
  switch (keyCode) {
    case LG_KEY_PLAY:
      return 'toggle-play';
    case LG_KEY_PAUSE:
      return 'pause';
    case LG_KEY_STOP:
      return 'close-player';
    case LG_KEY_BACK:
      return 'back';
    case LG_KEY_CHANNEL_UP:
      return context.isLive ? 'next-channel' : null;
    case LG_KEY_CHANNEL_DOWN:
      return context.isLive ? 'previous-channel' : null;
    case LG_KEY_REWIND:
      return context.isLive ? null : 'seek-back';
    case LG_KEY_FAST_FORWARD:
      return context.isLive ? null : 'seek-forward';
    default:
      return null;
  }
}

/**
 * Livelli che il tasto Indietro può chiudere, in ordine di priorità.
 * `tv-home` non è un overlay: è la schermata iniziale TV mostrata quando non
 * c'è null'altro da chiudere.
 */
export type TvBackLayer =
  | 'player'
  | 'server-info'
  | 'settings-sync'
  | 'tv-pairing'
  | 'series-modal'
  | 'category-panel';

export interface TvBackState {
  playerOpen: boolean;
  serverInfoOpen: boolean;
  settingsSyncOpen: boolean;
  tvPairingOpen: boolean;
  seriesModalOpen: boolean;
  categoryPanelOpen: boolean;
  /** The TV home ("Cosa vuoi guardare?") is what the user is looking at. */
  showTvHome: boolean;
  /** The "esci dall'app?" confirmation is open. */
  exitConfirmOpen: boolean;
  /**
   * While the player is mounted on webOS it consumes the Back key itself, so
   * that Back can leave fullscreen first exactly like Escape does on web.
   */
  playerHandlesBack: boolean;
  /**
   * Only the webOS package owns its exit flow (there is no system Back
   * handler to fall back on): elsewhere the TV home is a dead end by design.
   */
  canExitApp: boolean;
}

export type TvBackAction =
  | { type: 'close-layer'; layer: TvBackLayer }
  | { type: 'show-tv-home' }
  | { type: 'open-exit-confirm' }
  | { type: 'close-exit-confirm' }
  // Raggiungibile solo dal pulsante "Esci" della conferma, mai dal tasto Indietro.
  | { type: 'exit-app' }
  | { type: 'none' };

/**
 * Pure decision for a single Back press. Returns the action to perform; the
 * caller (App) owns the state and executes it.
 */
export function resolveTvBackAction(state: TvBackState): TvBackAction {
  if (state.exitConfirmOpen) return { type: 'close-exit-confirm' };
  if (state.playerOpen) {
    return state.playerHandlesBack
      ? { type: 'none' }
      : { type: 'close-layer', layer: 'player' };
  }
  if (state.serverInfoOpen) return { type: 'close-layer', layer: 'server-info' };
  if (state.settingsSyncOpen) return { type: 'close-layer', layer: 'settings-sync' };
  if (state.tvPairingOpen) return { type: 'close-layer', layer: 'tv-pairing' };
  if (state.seriesModalOpen) return { type: 'close-layer', layer: 'series-modal' };
  if (state.categoryPanelOpen) return { type: 'close-layer', layer: 'category-panel' };
  if (!state.showTvHome) return { type: 'show-tv-home' };
  // Nulla da chiudere sulla schermata iniziale: su webOS si chiede conferma
  // e l'app si chiude solo con "Esci"; altrove il tasto non fa nulla.
  return state.canExitApp ? { type: 'open-exit-confirm' } : { type: 'none' };
}

/**
 * What the confirmation dialog does with its two buttons: "Esci" closes the
 * app, "Annulla" only dismisses the dialog.
 */
export function resolveTvExitConfirmAction(confirmed: boolean): TvBackAction {
  return confirmed ? { type: 'exit-app' } : { type: 'close-exit-confirm' };
}
