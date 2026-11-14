/** Registry of TV overlays that can be dismissed from App's Back handler. */
export type TvOverlayId = 'tv-pairing' | 'category-panel' | 'series-modal';

const closeHandlers = new Map<TvOverlayId, () => void>();

export function registerTvOverlay(id: TvOverlayId, close: () => void): () => void {
  closeHandlers.set(id, close);
  return () => {
    if (closeHandlers.get(id) === close) closeHandlers.delete(id);
  };
}

export function isTvOverlayOpen(id: TvOverlayId): boolean {
  return closeHandlers.has(id);
}

export function closeTvOverlay(id: TvOverlayId): boolean {
  const close = closeHandlers.get(id);
  if (!close) return false;
  close();
  return true;
}

export function resetTvOverlays(): void {
  closeHandlers.clear();
}
