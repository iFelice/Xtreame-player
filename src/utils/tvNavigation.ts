import { useEffect } from 'react';

const FOCUSABLE_SELECTOR = [
  'button:not([disabled])',
  'a[href]',
  'input:not([disabled])',
  'select:not([disabled])',
  'textarea:not([disabled])',
  '[tabindex="0"]',
].join(',');
const LAYER_SELECTOR = '[aria-modal="true"], [data-media-player="true"], [data-tv-layer]';
type Direction = 'up' | 'down' | 'left' | 'right';

function isVisible(element: HTMLElement): boolean {
  const rect = element.getBoundingClientRect();
  const style = window.getComputedStyle(element);
  return rect.width > 0 && rect.height > 0 && style.display !== 'none' &&
    style.visibility !== 'hidden' && Number(style.opacity || 1) > 0 && !element.closest('[inert], [hidden]');
}

function visibleLayers(): HTMLElement[] {
  return Array.from(document.querySelectorAll<HTMLElement>(LAYER_SELECTOR)).filter(isVisible);
}

function findActiveLayer(): HTMLElement | null {
  const layers = visibleLayers();
  // A layer nested inside another layer (channel list/error panel inside the
  // player) is the active scope, regardless of its parent's stacking context.
  const leaves = layers.filter((layer) => !layers.some((other) => other !== layer && layer.contains(other)));
  if (!leaves.length) return null;
  return leaves.sort((a, b) => {
    const aZ = Number.parseInt(window.getComputedStyle(a).zIndex, 10) || 0;
    const bZ = Number.parseInt(window.getComputedStyle(b).zIndex, 10) || 0;
    if (aZ !== bZ) return bZ - aZ;
    return a.compareDocumentPosition(b) & Node.DOCUMENT_POSITION_FOLLOWING ? 1 : -1;
  })[0];
}

function candidatesWithin(layer: HTMLElement | null): HTMLElement[] {
  const candidates = Array.from(document.querySelectorAll<HTMLElement>(FOCUSABLE_SELECTOR))
    .filter((element) => isVisible(element) && (!layer || layer.contains(element)));
  return candidates;
}

function findNextElement(current: HTMLElement, direction: Direction, layer: HTMLElement | null): HTMLElement | null {
  const currentRect = current.getBoundingClientRect();
  const currentX = currentRect.left + currentRect.width / 2;
  const currentY = currentRect.top + currentRect.height / 2;
  const candidates = candidatesWithin(layer).filter((element) => element !== current);
  let best: HTMLElement | null = null;
  let bestScore = Number.POSITIVE_INFINITY;
  for (const candidate of candidates) {
    const rect = candidate.getBoundingClientRect();
    const dx = rect.left + rect.width / 2 - currentX;
    const dy = rect.top + rect.height / 2 - currentY;
    const inDirection = (direction === 'left' && dx < -4) || (direction === 'right' && dx > 4) ||
      (direction === 'up' && dy < -4) || (direction === 'down' && dy > 4);
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
  const current = document.activeElement instanceof HTMLElement ? document.activeElement : null;
  if (current?.matches('[data-tv-exit-choice="exit"]')) {
    current.style.removeProperty('border-color');
    current.style.removeProperty('background-color');
    current.style.removeProperty('color');
  }
  element.focus({ preventScroll: true });
  // React's focus handler may apply non-important inline styles during the
  // focus event, so reassert the TV exit-button state after dispatch completes.
  if (element.matches('[data-tv-exit-choice="exit"]')) {
    element.style.setProperty('border-color', '#10B981', 'important');
    element.style.setProperty('background-color', '#10B981', 'important');
    element.style.setProperty('color', '#FFFFFF', 'important');
  }
  element.scrollIntoView({ behavior: 'smooth', block: 'nearest', inline: 'nearest' });
}

/** Spatial D-pad navigation and strict focus/pointer isolation for Android TV and webOS. */
export function useTvNavigation(enabled: boolean): void {
  useEffect(() => {
    if (!enabled) return;
    document.body.classList.add('tv-mode');

    const originalInert = new Map<HTMLElement, boolean>();
    const layerHistory: Array<{ layer: HTMLElement; focusBefore: HTMLElement | null }> = [];
    let activeLayer: HTMLElement | null = null;

    const resetInert = () => {
      for (const [element, wasInert] of originalInert) element.inert = wasInert;
      originalInert.clear();
    };
    const isolateLayer = (layer: HTMLElement | null) => {
      resetInert();
      if (!layer) return;
      let path: HTMLElement = layer;
      while (path.parentElement && path.parentElement !== document.body) {
        const parent = path.parentElement;
        for (const sibling of Array.from(parent.children)) {
          if (!(sibling instanceof HTMLElement) || sibling === path || sibling.contains(layer)) continue;
          if (!originalInert.has(sibling)) originalInert.set(sibling, sibling.inert);
          sibling.inert = true;
        }
        path = parent;
      }
      // Isolate any other app roots/portals at body level, but leave the path
      // containing the active layer available.
      for (const sibling of Array.from(document.body.children)) {
        if (!(sibling instanceof HTMLElement) || sibling === path || sibling.contains(layer)) continue;
        if (!originalInert.has(sibling)) originalInert.set(sibling, sibling.inert);
        sibling.inert = true;
      }
    };
    const focusFirstIn = (layer: HTMLElement | null) => {
      if (!layer) return;
      const initial = layer.querySelector<HTMLElement>('[data-tv-initial-focus], [autofocus]');
      const target = initial && isVisible(initial) ? initial : candidatesWithin(layer)[0] || layer;
      if (target === layer && !layer.hasAttribute('tabindex')) layer.tabIndex = -1;
      focusElement(target);
    };
    const refreshLayer = () => {
      const next = findActiveLayer();
      if (next === activeLayer) {
        isolateLayer(next);
        return;
      }

      const focusedBefore = document.activeElement instanceof HTMLElement ? document.activeElement : null;
      let restoreFocus: HTMLElement | null = null;
      if (next && activeLayer && activeLayer.contains(next)) {
        layerHistory.push({ layer: activeLayer, focusBefore: focusedBefore });
      } else if (next && activeLayer && next.contains(activeLayer)) {
        while (layerHistory.length && layerHistory[layerHistory.length - 1].layer !== next) {
          const closed = layerHistory.pop();
          if (closed?.focusBefore && next.contains(closed.focusBefore)) restoreFocus = closed.focusBefore;
        }
      } else if (next) {
        layerHistory.length = 0;
        layerHistory.push({ layer: next, focusBefore: focusedBefore });
      } else {
        restoreFocus = layerHistory[0]?.focusBefore || null;
        layerHistory.length = 0;
      }

      activeLayer = next;
      isolateLayer(next);
      if (next) {
        if (restoreFocus?.isConnected && next.contains(restoreFocus) && isVisible(restoreFocus)) focusElement(restoreFocus);
        else focusFirstIn(next);
      } else if (restoreFocus?.isConnected) {
        focusElement(restoreFocus);
      }
    };

    const focusFirstPageElement = () => {
      if (document.activeElement === document.body || !document.activeElement) {
        focusElement(candidatesWithin(null)[0]);
      }
    };
    const initialTimer = window.setTimeout(() => {
      refreshLayer();
      if (!activeLayer) focusFirstPageElement();
    }, 100);

    const handleKeyDown = (event: KeyboardEvent) => {
      refreshLayer();
      const layer = activeLayer;
      const current = document.activeElement instanceof HTMLElement ? document.activeElement : null;
      if (layer && current && !layer.contains(current)) {
        event.preventDefault();
        event.stopImmediatePropagation();
        focusFirstIn(layer);
        return;
      }

      const directionByKey: Record<string, Direction> = {
        ArrowUp: 'up', ArrowDown: 'down', ArrowLeft: 'left', ArrowRight: 'right',
      };
      const direction = directionByKey[event.key];
      if (!direction) return;
      // The player owns its D-pad semantics (live zapping / VOD seeking).
      // Inner scopes such as the channel list and error dialog still use the
      // generic spatial navigator because they become the active leaf layer.
      if (layer?.matches('[data-media-player="true"]')) return;
      if (current instanceof HTMLInputElement && !current.readOnly) return;
      if (!current || current === document.body) {
        focusFirstIn(layer);
        if (layer) event.preventDefault();
        return;
      }
      const next = findNextElement(current, direction, layer);
      if (!next) return;
      event.preventDefault();
      focusElement(next);
    };

    const observer = new MutationObserver(refreshLayer);
    observer.observe(document.body, {
      childList: true,
      subtree: true,
      attributes: true,
      attributeFilter: ['aria-modal', 'data-media-player', 'data-tv-layer', 'class', 'style', 'hidden'],
    });
    document.addEventListener('keydown', handleKeyDown, true);
    refreshLayer();
    return () => {
      window.clearTimeout(initialTimer);
      observer.disconnect();
      document.removeEventListener('keydown', handleKeyDown, true);
      resetInert();
      document.body.classList.remove('tv-mode');
    };
  }, [enabled]);
}
