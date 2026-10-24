import { afterEach, describe, expect, it, vi } from 'vitest';
import { exitTvApp, isDirectMode, isWebOsBuild } from './runtime';

afterEach(() => {
  vi.unstubAllEnvs();
  vi.unstubAllGlobals();
  vi.restoreAllMocks();
});

describe('webOS build marker', () => {
  it('is only true for the dedicated webos build target', () => {
    vi.stubEnv('VITE_TARGET', '');
    expect(isWebOsBuild()).toBe(false);
    vi.stubEnv('VITE_TARGET', 'webos');
    expect(isWebOsBuild()).toBe(true);
    vi.stubEnv('VITE_TARGET', ' webos ');
    expect(isWebOsBuild()).toBe(true);
  });

  it('runs in direct mode on webOS without any Capacitor native platform', () => {
    vi.stubEnv('VITE_TARGET', 'webos');
    expect(isDirectMode()).toBe(true);
  });

  it('keeps the web build behind the Express proxy', () => {
    vi.stubEnv('VITE_TARGET', '');
    expect(isDirectMode()).toBe(false);
  });

  it('treats a Capacitor native platform as direct mode', async () => {
    vi.stubEnv('VITE_TARGET', '');
    const { Capacitor } = await import('@capacitor/core');
    vi.spyOn(Capacitor, 'isNativePlatform').mockReturnValue(true);
    expect(isDirectMode()).toBe(true);
  });
});

describe('exitTvApp', () => {
  it('closes the TV window and never throws when the browser refuses', () => {
    const close = vi.fn(() => {
      throw new Error('not allowed');
    });
    vi.stubGlobal('window', { close });
    expect(() => exitTvApp()).not.toThrow();
    expect(close).toHaveBeenCalledOnce();
  });
});
