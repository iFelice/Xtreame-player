import { afterEach, describe, expect, it, vi } from 'vitest';
import {
  isTouchCardMode,
  isTouchDevice,
  shouldOpenCardSheetOnTap,
  showsHoverVeil,
  TOUCH_WITHOUT_HOVER_QUERY,
} from './touchDevice';

afterEach(() => vi.unstubAllGlobals());

const matchMediaAnswering = (matches: boolean) =>
  vi.fn((query: string) => ({
    matches: query === TOUCH_WITHOUT_HOVER_QUERY ? matches : !matches,
    addEventListener: () => {},
    removeEventListener: () => {},
  }));

describe('touch device detection', () => {
  it('asks the hover/pointer media query', () => {
    const matchMedia = matchMediaAnswering(true);
    vi.stubGlobal('window', { matchMedia });
    expect(isTouchDevice()).toBe(true);
    expect(matchMedia).toHaveBeenCalledWith('(hover: none) and (pointer: coarse)');
  });

  it('is false with a mouse or a hover-capable screen', () => {
    vi.stubGlobal('window', { matchMedia: matchMediaAnswering(false) });
    expect(isTouchDevice()).toBe(false);
  });

  it('is false when matchMedia is missing or throws', () => {
    vi.stubGlobal('window', {});
    expect(isTouchDevice()).toBe(false);

    vi.stubGlobal('window', {
      matchMedia: () => {
        throw new Error('unsupported query');
      },
    });
    expect(isTouchDevice()).toBe(false);
  });
});

describe('touch card behaviour', () => {
  it('never applies in TV mode', () => {
    expect(isTouchCardMode(true, false)).toBe(true);
    expect(isTouchCardMode(true, true)).toBe(false);
    expect(isTouchCardMode(false, false)).toBe(false);
  });

  it('opens the sheet for movies and series, keeps live playing on a tap', () => {
    expect(shouldOpenCardSheetOnTap('movie', true)).toBe(true);
    expect(shouldOpenCardSheetOnTap('series', true)).toBe(true);
    expect(shouldOpenCardSheetOnTap('live', true)).toBe(false);
    expect(shouldOpenCardSheetOnTap('direct', true)).toBe(false);
  });

  it('keeps the click-to-play behaviour on desktop and TV', () => {
    expect(shouldOpenCardSheetOnTap('movie', false)).toBe(false);
    expect(shouldOpenCardSheetOnTap('series', false)).toBe(false);
  });

  it('renders the hover veil only where a pointer can hover', () => {
    expect(showsHoverVeil(false)).toBe(true);
    expect(showsHoverVeil(true)).toBe(false);
  });
});
