import { useEffect } from 'react';

export type Direction = 'up' | 'down' | 'left' | 'right';

const FOCUSABLE_SELECTOR = [
  'button:not([disabled])',
  'a[href]',
  'input:not([disabled])',
  'select:not([disabled])',
  'textarea:not([disabled])',
  '[tabindex="0"]',
].join(',');

function isVisible(element: HTMLElement): boolean {
  const rect = element.getBoundingClientRect();
  const style = window.getComputedStyle(element);
  return rect.width > 0 && rect.height > 0 && style.display !== 'none' && style.visibility !== 'hidden';
}

function visibleLayers(): HTMLElement[] {
  return Array.from(document.querySelectorAll<HTMLElement>('[data-tv-layer], [role="dialog"][aria-modal="true"]'))
    .filter(isVisible);
}

function candidatesWithin(layer: HTMLElement | null): HTMLElement[] {
  const scope = layer ?? document;
  return Array.from(scope.querySelectorAll<HTMLElement>(FOCUSABLE_SELECTOR)).filter(isVisible);
}

function overlaps(startA: number, endA: number, startB: number, endB: number): boolean {
  return Math.min(endA, endB) > Math.max(startA, startB);
}

function edgeDistance(current: DOMRect, candidate: DOMRect, direction: Direction): number {
  if (direction === 'left') return Math.max(0, current.left - candidate.right);
  if (direction === 'right') return Math.max(0, candidate.left - current.right);
  if (direction === 'up') return Math.max(0, current.top - candidate.bottom);
  return Math.max(0, candidate.top - current.bottom);
}

/**
 * Finds the closest spatial candidate. On webOS, controls sharing the same
 * visual row/column win over a nearby diagonal card: this keeps the catalog
 * header reachable from its refresh action without changing modal scoping.
 */
export function findNextElement(
  current: HTMLElement,
  direction: Direction,
  layer: HTMLElement | null,
  preferAlignedBand = true,
): HTMLElement | null {
  const currentRect = current.getBoundingClientRect();
  const currentX = currentRect.left + currentRect.width / 2;
  const currentY = currentRect.top + currentRect.height / 2;
  const candidates: Array<{ element: HTMLElement; rect: DOMRect; score: number; aligned: boolean }> = [];

  for (const candidate of candidatesWithin(layer)) {
    if (candidate === current) continue;
    const rect = candidate.getBoundingClientRect();
    const dx = rect.left + rect.width / 2 - currentX;
    const dy = rect.top + rect.height / 2 - currentY;
    const inDirection =
      (direction === 'left' && dx < -4) ||
      (direction === 'right' && dx > 4) ||
      (direction === 'up' && dy < -4) ||
      (direction === 'down' && dy > 4);
    if (!inDirection) continue;
    const primary = direction === 'left' || direction === 'right' ? Math.abs(dx) : Math.abs(dy);
    const secondary = direction === 'left' || direction === 'right' ? Math.abs(dy) : Math.abs(dx);
    const aligned = direction === 'left' || direction === 'right'
      ? overlaps(currentRect.top, currentRect.bottom, rect.top, rect.bottom)
      : overlaps(currentRect.left, currentRect.right, rect.left, rect.right);
    candidates.push({ element: candidate, rect, score: primary + secondary * 2.5, aligned });
  }

  if (preferAlignedBand) {
    const aligned = candidates.filter((candidate) => candidate.aligned);
    if (aligned.length > 0) {
      aligned.sort((a, b) => {
        const distance = edgeDistance(currentRect, a.rect, direction) - edgeDistance(currentRect, b.rect, direction);
        return distance || a.score - b.score;
      });
      return aligned[0].element;
    }
  }

  candidates.sort((a, b) => a.score - b.score);
  return candidates[0]?.element ?? null;
}

function focusElement(element: HTMLElement | null | undefined): void {
  if (!element?.isConnected) return;
  element.focus({ preventScroll: true });
  element.scrollIntoView({ behavior: 'smooth', block: 'nearest', inline: 'nearest' });
}

function isEditableTextField(element: Element | null): boolean {
  if (!(element instanceof HTMLElement)) return false;
  if (element instanceof HTMLTextAreaElement || element.isContentEditable) return true;
  if (!(element instanceof HTMLInputElement)) return false;
  return !['button', 'checkbox', 'file', 'hidden', 'image', 'radio', 'reset', 'submit'].includes(element.type.toLowerCase());
}

/**
 * Spatial D-pad navigation for the catalogues plus strict modal focus scope.
 * `webOsMode` scopes PR2's aligned-header and initial-tab behavior away from
 * browser, Apple, static and Capacitor builds.
 */
export function useTvNavigation(enabled: boolean, webOsMode = false): void {
  useEffect(() => {
    if (!enabled || typeof document === 'undefined' || !document.body) return;

    document.body.classList?.add('tv-mode');
    const originalInert = new Map<HTMLElement, boolean>();
    let activeLayer: HTMLElement | null = null;
    let previousFocus: HTMLElement | null = null;
    let initialFocusHandled = false;

    const resetInert = () => {
      for (const [element, wasInert] of originalInert) element.inert = wasInert;
      originalInert.clear();
    };

    const isolateLayer = (layer: HTMLElement | null) => {
      resetInert();
      if (!layer) return;
      let branch: HTMLElement = layer;
      while (branch.parentElement && branch.parentElement !== document.body) {
        const parent = branch.parentElement;
        for (const sibling of Array.from(parent.children)) {
          if (!(sibling instanceof HTMLElement) || sibling === branch || sibling.contains(layer)) continue;
          if (!originalInert.has(sibling)) originalInert.set(sibling, sibling.inert);
          sibling.inert = true;
        }
        branch = parent;
      }
      for (const sibling of Array.from(document.body.children)) {
        if (!(sibling instanceof HTMLElement) || sibling === branch || sibling.contains(layer)) continue;
        if (!originalInert.has(sibling)) originalInert.set(sibling, sibling.inert);
        sibling.inert = true;
      }
    };

    const refreshLayer = () => {
      const layers = visibleLayers();
      const next = layers[layers.length - 1] ?? null;
      if (next === activeLayer) return;
      if (next && !activeLayer) previousFocus = document.activeElement instanceof HTMLElement ? document.activeElement : null;
      if (!next && activeLayer) {
        const restore = previousFocus;
        previousFocus = null;
        activeLayer = null;
        isolateLayer(null);
        focusElement(restore);
        return;
      }
      activeLayer = next;
      isolateLayer(next);
      if (next) {
        const requested = next.querySelector<HTMLElement>('[data-tv-initial-focus], [autofocus]');
        focusElement(requested && isVisible(requested) ? requested : candidatesWithin(next)[0]);
      }
    };

    const focusRequestedInitial = () => {
      if (!webOsMode || activeLayer || initialFocusHandled) return;
      const requested = document.querySelector<HTMLElement>('[data-tv-initial-focus]');
      if (!requested || !isVisible(requested)) return;
      // A login/search IME owns focus until the user finishes with it. Likewise,
      // do not pull focus out of an open modal handled by refreshLayer above.
      if (isEditableTextField(document.activeElement)) return;
      focusElement(requested);
      initialFocusHandled = true;
    };

    const timer = window.setTimeout(() => {
      refreshLayer();
      focusRequestedInitial();
      if (!activeLayer && (document.activeElement === document.body || !document.activeElement)) {
        focusElement(candidatesWithin(null)[0]);
      }
    }, 100);

    const handleKeyDown = (event: KeyboardEvent) => {
      refreshLayer();
      const layer = activeLayer;
      const current = document.activeElement instanceof HTMLElement ? document.activeElement : null;
      if (layer && current && !layer.contains(current)) {
        event.preventDefault();
        focusElement(candidatesWithin(layer)[0]);
        return;
      }
      const direction = ({ ArrowUp: 'up', ArrowDown: 'down', ArrowLeft: 'left', ArrowRight: 'right' } as Record<string, Direction>)[event.key];
      if (!direction) return;
      // The player remains completely unchanged in PR1.
      if (document.querySelector('[data-media-player="true"]')) return;
      if (current instanceof HTMLInputElement && !current.readOnly) return;
      if (!current || current === document.body) {
        const first = candidatesWithin(layer)[0];
        if (first) {
          event.preventDefault();
          focusElement(first);
        }
        return;
      }
      const next = findNextElement(current, direction, layer, webOsMode);
      if (!next) return;
      event.preventDefault();
      focusElement(next);
    };

    const observer = typeof MutationObserver === 'undefined' ? null : new MutationObserver(() => {
      refreshLayer();
      focusRequestedInitial();
    });
    observer?.observe(document.body, {
      childList: true,
      subtree: true,
      attributes: true,
      attributeFilter: ['aria-modal', 'data-tv-layer', 'class', 'style', 'hidden'],
    });
    document.addEventListener('keydown', handleKeyDown, true);
    refreshLayer();
    return () => {
      window.clearTimeout(timer);
      observer?.disconnect();
      document.removeEventListener('keydown', handleKeyDown, true);
      resetInert();
      document.body.classList?.remove('tv-mode');
    };
  }, [enabled, webOsMode]);
}
