import { describe, expect, it } from 'vitest';
import { chooseInitialTab, shouldShowMobileBar } from './navigation';

describe('chooseInitialTab', () => {
  it('uses Live TV when the account only has live channels', () => {
    expect(chooseInitialTab({ live: 12, movies: 0, series: 0 })).toBe('live');
  });

  it('uses Novità when movies exist', () => {
    expect(chooseInitialTab({ live: 12, movies: 4, series: 0 })).toBe('recent');
  });

  it('uses Novità when the account only has series', () => {
    expect(chooseInitialTab({ live: 0, movies: 0, series: 7 })).toBe('recent');
  });

  it('falls back to Live TV for an empty catalog', () => {
    expect(chooseInitialTab({ live: 0, movies: 0, series: 0 })).toBe('live');
  });
});

describe('shouldShowMobileBar', () => {
  const base = {
    isTv: false,
    isConnected: true,
    isLoadingCatalog: false,
    isPlayerFullscreen: false,
  };

  it('stays visible with the player open when it is not fullscreen', () => {
    expect(shouldShowMobileBar(base)).toBe(true);
  });

  it('hides when the player takes the full screen', () => {
    expect(shouldShowMobileBar({ ...base, isPlayerFullscreen: true })).toBe(false);
  });

  it('hides in TV mode', () => {
    expect(shouldShowMobileBar({ ...base, isTv: true })).toBe(false);
  });

  it('hides while disconnected', () => {
    expect(shouldShowMobileBar({ ...base, isConnected: false })).toBe(false);
  });

  it('hides while the catalog is loading', () => {
    expect(shouldShowMobileBar({ ...base, isLoadingCatalog: true })).toBe(false);
  });
});
