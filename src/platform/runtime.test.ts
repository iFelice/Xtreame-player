import { afterEach, describe, expect, it, vi } from 'vitest';
import { exitTvApp, isDirectMode, isWebOsBuild } from './runtime';

afterEach(() => {
  vi.unstubAllEnvs();
  vi.unstubAllGlobals();
  vi.restoreAllMocks();
});

describe('webOS runtime target', () => {
  it('recognises only the dedicated webos target and uses direct requests', () => {
    vi.stubEnv('VITE_TARGET', '');
    expect(isWebOsBuild()).toBe(false);
    vi.stubEnv('VITE_TARGET', 'webos');
    expect(isWebOsBuild()).toBe(true);
    expect(isDirectMode()).toBe(true);
  });

  it('does not throw when the runtime declines window.close', () => {
    const close = vi.fn(() => { throw new Error('blocked'); });
    vi.stubGlobal('window', { close });
    expect(() => exitTvApp()).not.toThrow();
    expect(close).toHaveBeenCalledOnce();
  });
});
