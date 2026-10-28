import { afterEach, describe, expect, it, vi } from 'vitest';
import { isAppleMobile } from './appleMobile';

afterEach(() => vi.unstubAllGlobals());

describe('Apple mobile detection', () => {
  it.each([
    ['iPhone', 'Mozilla/5.0 (iPhone; CPU iPhone OS)', 'iPhone', 5, true],
    ['iPad', 'Mozilla/5.0 (iPad; CPU OS)', 'iPad', 5, true],
    ['iPod', 'Mozilla/5.0 (iPod touch)', 'iPod', 5, true],
    ['iPadOS desktop mode', 'Mozilla/5.0 (Macintosh; Intel Mac OS X)', 'MacIntel', 5, true],
    ['Mac', 'Mozilla/5.0 (Macintosh; Intel Mac OS X)', 'MacIntel', 0, false],
    ['Mac with one touch point', 'Mozilla/5.0 (Macintosh)', 'MacIntel', 1, false],
    ['Android', 'Mozilla/5.0 (Linux; Android 14)', 'Linux armv8l', 5, false],
  ])('identifies %s', (_name, userAgent, platform, maxTouchPoints, expected) => {
    vi.stubGlobal('navigator', { userAgent, platform, maxTouchPoints });
    expect(isAppleMobile()).toBe(expected);
  });

  it('is safe when navigator is not available', () => {
    vi.stubGlobal('navigator', undefined);
    expect(isAppleMobile()).toBe(false);
  });
});
