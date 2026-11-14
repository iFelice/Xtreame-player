import { afterEach, describe, expect, it, vi } from 'vitest';
import { findNextElement } from './tvNavigation';

type Rect = Pick<DOMRect, 'left' | 'right' | 'top' | 'bottom' | 'width' | 'height'>;

type FakeFocusable = {
  id: string;
  getBoundingClientRect: () => DOMRect;
};

function rectangle(left: number, top: number, width: number, height: number): DOMRect {
  return { left, top, width, height, right: left + width, bottom: top + height } as DOMRect;
}

function focusable(id: string, rect: Rect): FakeFocusable {
  return { id, getBoundingClientRect: () => rect as DOMRect };
}

afterEach(() => vi.unstubAllGlobals());

describe('webOS spatial catalog navigation', () => {
  it('prefers the nearest same-row tab over covers below when moving Left from Refresh', () => {
    // Vitest's node environment has no layout engine, so every coordinate here
    // is explicit rather than relying on jsdom's zero-sized client rects.
    vi.stubGlobal('window', {
      getComputedStyle: () => ({ display: 'block', visibility: 'visible' }),
    });
    const live = focusable('live-tab', rectangle(80, 20, 120, 48));
    const movies = focusable('movies-tab', rectangle(220, 20, 150, 48));
    const series = focusable('series-tab', rectangle(390, 20, 130, 48));
    const refresh = focusable('refresh', rectangle(900, 20, 170, 48));
    const coverNearRefresh = focusable('cover-near-refresh', rectangle(850, 100, 180, 250));
    const cover = focusable('cover', rectangle(630, 100, 180, 250));
    const layer = {
      querySelectorAll: () => [live, movies, series, refresh, coverNearRefresh, cover],
    } as unknown as HTMLElement;

    expect(findNextElement(refresh as unknown as HTMLElement, 'left', layer)).toBe(series);
  });

  it('uses the same edge-distance priority for Up and Down within a column', () => {
    vi.stubGlobal('window', {
      getComputedStyle: () => ({ display: 'block', visibility: 'visible' }),
    });
    const tab = focusable('tab', rectangle(300, 20, 140, 48));
    const firstCover = focusable('first-cover', rectangle(300, 100, 140, 220));
    const fartherCover = focusable('farther-cover', rectangle(300, 350, 140, 220));
    const adjacentColumn = focusable('adjacent-column', rectangle(470, 95, 140, 220));
    const layer = {
      querySelectorAll: () => [tab, firstCover, fartherCover, adjacentColumn],
    } as unknown as HTMLElement;

    expect(findNextElement(tab as unknown as HTMLElement, 'down', layer)).toBe(firstCover);
    expect(findNextElement(firstCover as unknown as HTMLElement, 'up', layer)).toBe(tab);
  });
});
