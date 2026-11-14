import { useEffect } from 'react';

type Direction = 'up' | 'down' | 'left' | 'right';

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

function findNextElement(current: HTMLElement, direction: Direction, layer: HTMLElement | null): HTMLElement | null {
  const currentRect = current.getBoundingClientRect();
  const currentX = currentRect.left + currentRect.width / 2;
  const currentY = currentRect.top + currentRect.height / 2;
  let best: HTMLElement | null = null;
  let bestScore = Number.POSITIVE_INFINITY;
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
    const score = primary + secondary * 2.5;
    if (score < bestScore) {
      best = candidate;
      bestScore = score;
    }
  }
  return best;
}

function focusElement(element: HTMLElement | null | undefined): void {
  if (!element?.isConnected) return;
  element.focus({ preventScroll: true });
  element.scrollIntoView({ behavior: 'smooth', block: 'nearest', inline: 'nearest' });
}

/**
 * Spatial D-pad navigation for the catalogues plus strict modal focus scope.
 * It intentionally does not assign any key semantics to the media player;
 * those are added in PR2.
 */
export function useTvNavigation(enabled: boolean): void {
  useEffect(() => {
    if (!enabled || typeof document === 'undefined' || !document.body) return;

    document.body.classList?.add('tv-mode');
    const originalInert = new Map<HTMLElement, boolean>();
    let activeLayer: HTMLElement | null = null;
    let previousFocus: HTMLElement | null = null;

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

    const timer = window.setTimeout(() => {
      refreshLayer();
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
      const next = findNextElement(current, direction, layer);
      if (!next) return;
      event.preventDefault();
      focusElement(next);
    };

    const observer = typeof MutationObserver === 'undefined' ? null : new MutationObserver(refreshLayer);
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
  }, [enabled]);
}
