import React from 'react';
import { act, create } from 'react-test-renderer';
import { afterEach, describe, expect, it, vi } from 'vitest';

afterEach(() => {
  vi.unstubAllEnvs();
  vi.unstubAllGlobals();
  vi.restoreAllMocks();
  delete (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT;
});

describe('static app startup', () => {
  it('restores a non-safe session without calling any local API', async () => {
    (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT = true;
    vi.stubEnv('MODE', 'static');
    vi.stubEnv('VITE_PAIRING_RELAY_URL', '');
    vi.resetModules();
    const storage = { getItem: () => null, setItem: () => {}, removeItem: () => {} };
    vi.stubGlobal('localStorage', storage);
    vi.stubGlobal('sessionStorage', storage);
    vi.stubGlobal('navigator', { userAgent: 'iPhone', platform: 'iPhone', maxTouchPoints: 5 });
    vi.stubGlobal('window', {
      innerWidth: 390,
      location: { pathname: '/', search: '', origin: 'http://server.esempio:8080', protocol: 'http:' },
      addEventListener: () => {}, removeEventListener: () => {},
      matchMedia: () => ({ matches: false, addEventListener: () => {}, removeEventListener: () => {} }),
      setInterval, clearInterval, setTimeout, clearTimeout,
      scrollTo: () => {},
    });
    vi.stubGlobal('document', { addEventListener: () => {}, removeEventListener: () => {} });
    const fetchMock = vi.fn();
    vi.stubGlobal('fetch', fetchMock);
    const { default: App } = await import('./App');
    let renderer: ReturnType<typeof create>;
    await act(async () => { renderer = create(<App />); });
    expect(fetchMock).not.toHaveBeenCalled();
    await act(async () => renderer!.unmount());
  });
});
