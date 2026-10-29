import { afterEach, describe, expect, it, vi } from 'vitest';
import { isStandaloneWebApp } from './standaloneWebApp';

afterEach(() => vi.unstubAllGlobals());

const matchMediaReturning = (matches: boolean) =>
  vi.fn(() => ({ matches, addEventListener: () => {}, removeEventListener: () => {} }));

describe('standalone web app detection', () => {
  it('uses navigator.standalone from the iOS Home Screen app', () => {
    vi.stubGlobal('navigator', { userAgent: 'iPhone', standalone: true });
    vi.stubGlobal('window', { matchMedia: matchMediaReturning(false) });
    expect(isStandaloneWebApp()).toBe(true);
  });

  it('falls back to the display-mode media query', () => {
    vi.stubGlobal('navigator', { userAgent: 'Android' });
    vi.stubGlobal('window', { matchMedia: matchMediaReturning(true) });
    expect(isStandaloneWebApp()).toBe(true);
  });

  it('is false in a Safari tab', () => {
    vi.stubGlobal('navigator', { userAgent: 'iPhone', standalone: false });
    vi.stubGlobal('window', { matchMedia: matchMediaReturning(false) });
    expect(isStandaloneWebApp()).toBe(false);
  });

  it.each([
    ['navigator.standalone is not true', { userAgent: 'iPhone', standalone: 'true' }],
    ['the flag is missing', { userAgent: 'iPhone' }],
  ])('does not trust %s', (_label, navigatorStub) => {
    vi.stubGlobal('navigator', navigatorStub);
    vi.stubGlobal('window', { matchMedia: matchMediaReturning(false) });
    expect(isStandaloneWebApp()).toBe(false);
  });

  it('is false when matchMedia is missing or throws', () => {
    vi.stubGlobal('navigator', { userAgent: 'iPhone' });
    vi.stubGlobal('window', {});
    expect(isStandaloneWebApp()).toBe(false);

    vi.stubGlobal('window', {
      matchMedia: () => {
        throw new Error('unsupported query');
      },
    });
    expect(isStandaloneWebApp()).toBe(false);
  });
});
