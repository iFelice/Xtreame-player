import React from 'react';
import { act, create } from 'react-test-renderer';
import { afterEach, describe, expect, it, vi } from 'vitest';

function memoryStorage() {
  const values = new Map<string, string>();
  return {
    getItem: (key: string) => values.get(key) ?? null,
    setItem: (key: string, value: string) => values.set(key, value),
    removeItem: (key: string) => values.delete(key),
    clear: () => values.clear(),
  };
}

afterEach(() => {
  vi.unstubAllEnvs();
  vi.unstubAllGlobals();
  vi.restoreAllMocks();
  delete (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT;
});

describe('the real App in webOS mode', () => {
  it('logs in directly, exposes TV navigation, and opens the protected exit confirmation', async () => {
    (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT = true;
    vi.stubEnv('VITE_TARGET', 'webos');
    vi.stubEnv('VITE_PAIRING_RELAY_URL', '');
    vi.resetModules();
    const listeners = new Map<string, (event: KeyboardEvent) => void>();
    vi.stubGlobal('localStorage', memoryStorage());
    vi.stubGlobal('sessionStorage', memoryStorage());
    vi.stubGlobal('window', {
      innerWidth: 1920,
      location: { pathname: '/', search: '', origin: 'file://', protocol: 'file:' },
      history: { pushState: () => {} },
      addEventListener: (name: string, listener: (event: KeyboardEvent) => void) => listeners.set(name, listener),
      removeEventListener: (name: string) => listeners.delete(name),
      matchMedia: () => ({ matches: false, addEventListener: () => {}, removeEventListener: () => {} }),
      setInterval, clearInterval, setTimeout, clearTimeout, scrollTo: () => {}, close: () => {},
    });
    vi.stubGlobal('document', { getElementById: () => null, addEventListener: () => {}, removeEventListener: () => {} });
    const fetchMock = vi.fn(async (input: RequestInfo | URL) => {
      const url = String(input);
      if (url.includes('action=')) return new Response('[]', { status: 200 });
      return new Response(JSON.stringify({ user_info: { auth: 1, status: 'Active', username: 'demo' }, server_info: {} }), { status: 200 });
    });
    vi.stubGlobal('fetch', fetchMock);

    const { default: App } = await import('./App');
    let renderer: ReturnType<typeof create>;
    await act(async () => { renderer = create(<App />); });
    const inputs = renderer!.root.findAllByType('input');
    await act(async () => {
      inputs[0].props.onChange({ target: { value: 'http://server.esempio:8080' } });
      inputs[1].props.onChange({ target: { value: 'demo' } });
      inputs[2].props.onChange({ target: { value: 'demo' } });
    });
    // A TV user edits fields first and presses OK later: keep the submission in
    // a distinct render turn so this is the same path as the remote UI.
    await act(async () => {
      await renderer!.root.findByType('form').props.onSubmit({ preventDefault: () => {} });
    });

    expect(fetchMock.mock.calls.some(([url]) => String(url).includes('/api/proxy/'))).toBe(false);
    expect(fetchMock.mock.calls.some(([url]) => String(url).startsWith('http://server.esempio:8080/player_api.php'))).toBe(true);
    const home = renderer!.root.findAll((node) => node.type === 'button' && node.children.includes('Home TV'))[0];
    expect(home).toBeTruthy();
    await act(async () => { home.props.onClick(); });
    expect(renderer!.root.findAll((node) => typeof node.props.className === 'string' && node.props.className.includes('tv-home'))).not.toHaveLength(0);

    const back = listeners.get('keydown')!;
    await act(async () => { back({ key: 'GoBack', keyCode: 461, preventDefault: () => {}, stopPropagation: () => {} } as KeyboardEvent); });
    expect(renderer!.root.findByProps({ 'data-tv-exit-choice': 'exit' })).toBeTruthy();
    const updatedBack = listeners.get('keydown')!;
    await act(async () => { updatedBack({ key: 'GoBack', keyCode: 461, preventDefault: () => {}, stopPropagation: () => {} } as KeyboardEvent); });
    expect(renderer!.root.findAllByProps({ 'data-tv-exit-choice': 'exit' })).toHaveLength(0);
    await act(async () => renderer!.unmount());
  });
});
