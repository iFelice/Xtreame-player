import { useEffect } from 'react';

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

function findNextElement(current: HTMLElement, direction: 'up' | 'down' | 'left' | 'right'): HTMLElement | null {
  const currentRect = current.getBoundingClientRect();
  const currentX = currentRect.left + currentRect.width / 2;
  const currentY = currentRect.top + currentRect.height / 2;
  const candidates = Array.from(document.querySelectorAll<HTMLElement>(FOCUSABLE_SELECTOR))
    .filter((element) => element !== current && isVisible(element));

  let best: HTMLElement | null = null;
  let bestScore = Number.POSITIVE_INFINITY;

  for (const candidate of candidates) {
    const rect = candidate.getBoundingClientRect();
    const x = rect.left + rect.width / 2;
    const y = rect.top + rect.height / 2;
    const dx = x - currentX;
    const dy = y - currentY;

    const inDirection =
      (direction === 'left' && dx < -4) ||
      (direction === 'right' && dx > 4) ||
      (direction === 'up' && dy < -4) ||
      (direction === 'down' && dy > 4);
    if (!inDirection) continue;

    const primary = direction === 'left' || direction === 'right' ? Math.abs(dx) : Math.abs(dy);
    const secondary = direction === 'left' || direction === 'right' ? Math.abs(dy) : Math.abs(dx);
    // Strongly prefer elements in the same row/column, while still allowing
    // navigation to the closest item when a row has a different length.
    const score = primary + secondary * 2.5;
    if (score < bestScore) {
      best = candidate;
      bestScore = score;
    }
  }
  return best;
}

/** Spatial D-pad navigation for Android TV WebView. */
export function useTvNavigation(enabled: boolean): void {
  useEffect(() => {
    if (!enabled) return;

    document.body.classList.add('tv-mode');
    const focusFirst = () => {
      if (document.activeElement === document.body || !document.activeElement) {
        const first = Array.from(document.querySelectorAll<HTMLElement>(FOCUSABLE_SELECTOR)).find(isVisible);
        first?.focus({ preventScroll: true });
      }
    };
    const timer = window.setTimeout(focusFirst, 150);

    const handleKeyDown = (event: KeyboardEvent) => {
      if (document.querySelector('[data-media-player="true"]')) return;
      const directionByKey: Record<string, 'up' | 'down' | 'left' | 'right'> = {
        ArrowUp: 'up',
        ArrowDown: 'down',
        ArrowLeft: 'left',
        ArrowRight: 'right',
      };
      const direction = directionByKey[event.key];
      if (!direction) return;

      const current = document.activeElement as HTMLElement | null;
      if (
        current instanceof HTMLInputElement &&
        !current.readOnly
      ) {
        // While the software keyboard/text editing mode is active, arrow keys
        // belong to the input rather than to spatial TV navigation.
        return;
      }
      if (!current || current === document.body) {
        focusFirst();
        event.preventDefault();
        return;
      }
      const next = findNextElement(current, direction);
      if (!next) return;
      event.preventDefault();
      next.focus({ preventScroll: true });
      next.scrollIntoView({ behavior: 'smooth', block: 'nearest', inline: 'nearest' });
    };

    document.addEventListener('keydown', handleKeyDown, true);
    return () => {
      window.clearTimeout(timer);
      document.removeEventListener('keydown', handleKeyDown, true);
      document.body.classList.remove('tv-mode');
    };
  }, [enabled]);
}
