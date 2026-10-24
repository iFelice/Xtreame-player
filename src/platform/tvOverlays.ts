/**
 * Registro degli overlay TV aperti, leggibile da chi gestisce il tasto Indietro
 * senza dover far salire lo stato fino a `App`.
 *
 * Ogni componente che può essere chiuso dal telecomando (modale di
 * abbinamento TV, pannello categorie mobile) si registra quando è aperto e si
 * cancella quando si chiude. La logica "cosa chiude il tasto Indietro" resta
 * pura in `tvBack.ts`: qui c'è solo l'esecuzione del comando scelto.
 */

export type TvOverlayId = 'tv-pairing' | 'category-panel';

const closeHandlers = new Map<TvOverlayId, () => void>();

/** Registers `close` while the overlay is open; returns the unregister fn. */
export function registerTvOverlay(id: TvOverlayId, close: () => void): () => void {
  closeHandlers.set(id, close);
  return () => {
    // Never drop a newer registration: with several panels mounted, the last
    // one to open owns the key.
    if (closeHandlers.get(id) === close) closeHandlers.delete(id);
  };
}

export function isTvOverlayOpen(id: TvOverlayId): boolean {
  return closeHandlers.has(id);
}

/** Calls the registered close handler; false when the overlay is not open. */
export function closeTvOverlay(id: TvOverlayId): boolean {
  const close = closeHandlers.get(id);
  if (!close) return false;
  close();
  return true;
}

/** Test helper: drops every registration. */
export function resetTvOverlays(): void {
  closeHandlers.clear();
}
