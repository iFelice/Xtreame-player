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

type AppListener = (event: any) => void;

function installWebOsCatalogHarness() {
  const windowListeners = new Map<string, AppListener>();
  const documentListeners = new Map<string, AppListener>();
  let activeElement: unknown = null;
  const documentStub = {
    get activeElement() { return activeElement; },
    getElementById: () => null,
    addEventListener: (name: string, listener: AppListener) => documentListeners.set(name, listener),
    removeEventListener: (name: string) => documentListeners.delete(name),
  };
  vi.stubGlobal('localStorage', memoryStorage());
  vi.stubGlobal('sessionStorage', memoryStorage());
  vi.stubGlobal('window', {
    innerWidth: 1920,
    location: { pathname: '/', search: '', origin: 'file://', protocol: 'file:' },
    history: { pushState: () => {} },
    addEventListener: (name: string, listener: AppListener) => windowListeners.set(name, listener),
    removeEventListener: (name: string) => windowListeners.delete(name),
    matchMedia: () => ({ matches: false, addEventListener: () => {}, removeEventListener: () => {} }),
    setInterval, clearInterval, setTimeout, clearTimeout, scrollTo: () => {}, close: () => {},
  });
  vi.stubGlobal('document', documentStub);
  return {
    windowListeners,
    documentListeners,
    documentStub,
    setActiveElement: (element: unknown) => { activeElement = element; },
  };
}

function backEvent() {
  return {
    key: 'GoBack',
    keyCode: 461,
    preventDefault: vi.fn(),
    stopPropagation: vi.fn(),
    stopImmediatePropagation: vi.fn(),
  } as unknown as KeyboardEvent;
}

function catalogTextField(harness: ReturnType<typeof installWebOsCatalogHarness>) {
  const returnTarget = {
    tabIndex: -1,
    focus: vi.fn(() => harness.setActiveElement(returnTarget)),
  };
  const field = {
    tagName: 'INPUT',
    type: 'text',
    parentElement: returnTarget,
    getAttribute: () => null,
    blur: vi.fn(() => {
      harness.setActiveElement(null);
      harness.documentListeners.get('focusout')?.({ target: field });
    }),
  };
  return { field, returnTarget };
}

async function mountLoggedInWebOsCatalog() {
  (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT = true;
  vi.stubEnv('VITE_TARGET', 'webos');
  vi.stubEnv('VITE_PAIRING_RELAY_URL', '');
  vi.resetModules();
  const harness = installWebOsCatalogHarness();
  const fetchMock = vi.fn(async (input: RequestInfo | URL) => {
    const url = String(input);
    if (url.includes('action=')) return new Response('[]', { status: 200 });
    return new Response(JSON.stringify({ user_info: { auth: 1, status: 'Active', username: 'demo' }, server_info: {} }), { status: 200 });
  });
  vi.stubGlobal('fetch', fetchMock);
  const { default: App } = await import('./App');
  let renderer: ReturnType<typeof create>;
  await act(async () => { renderer = create(<App />); });
  const loginInputs = renderer!.root.findAllByType('input');
  await act(async () => {
    loginInputs[0].props.onChange({ target: { value: 'http://server.esempio:8080' } });
    loginInputs[1].props.onChange({ target: { value: 'demo' } });
    loginInputs[2].props.onChange({ target: { value: 'demo' } });
  });
  await act(async () => {
    await renderer!.root.findByType('form').props.onSubmit({ preventDefault: () => {} });
  });
  await act(async () => { await vi.dynamicImportSettled(); });
  const searchInput = renderer!.root.findAll((node) =>
    node.type === 'input' && typeof node.props.placeholder === 'string' && node.props.placeholder.includes('Cerca canale'),
  )[0];
  expect(searchInput).toBeTruthy();
  return { renderer: renderer!, harness, searchInput };
}

describe('the real App webOS catalog Back handling', () => {
  it('blurs a focused catalog search field, stays in the catalog, then returns Home on the second Back', async () => {
    const { renderer, harness } = await mountLoggedInWebOsCatalog();
    const { field, returnTarget } = catalogTextField(harness);
    harness.setActiveElement(field);
    harness.documentListeners.get('focusin')?.({ target: field });

    const firstBack = backEvent();
    await act(async () => { harness.windowListeners.get('keydown')!(firstBack); });
    expect(field.blur).toHaveBeenCalledTimes(1);
    expect(returnTarget.focus).toHaveBeenCalledTimes(1);
    expect(harness.documentStub.activeElement).not.toBe(field);
    expect(renderer.root.findAll((node) => node.type === 'input' && node.props.placeholder?.includes('Cerca canale'))).not.toHaveLength(0);
    expect(renderer.root.findAll((node) => typeof node.props.className === 'string' && node.props.className.includes('tv-home'))).toHaveLength(0);
    expect((firstBack as any).preventDefault).toHaveBeenCalledTimes(1);
    expect((firstBack as any).stopPropagation).toHaveBeenCalledTimes(1);

    const secondBack = backEvent();
    await act(async () => { harness.windowListeners.get('keydown')!(secondBack); });
    expect(renderer.root.findAll((node) => typeof node.props.className === 'string' && node.props.className.includes('tv-home'))).not.toHaveLength(0);
    await act(async () => renderer.unmount());
  });

  it('absorbs Back once when the catalog search field blurred immediately before the key event', async () => {
    const { renderer, harness } = await mountLoggedInWebOsCatalog();
    const { field, returnTarget } = catalogTextField(harness);
    harness.setActiveElement(field);
    harness.documentListeners.get('focusin')?.({ target: field });
    harness.setActiveElement(null);
    harness.documentListeners.get('focusout')?.({ target: field });

    const back = backEvent();
    await act(async () => { harness.windowListeners.get('keydown')!(back); });
    expect(field.blur).not.toHaveBeenCalled();
    expect(returnTarget.focus).toHaveBeenCalledTimes(1);
    expect(renderer.root.findAll((node) => node.type === 'input' && node.props.placeholder?.includes('Cerca canale'))).not.toHaveLength(0);
    expect(renderer.root.findAll((node) => typeof node.props.className === 'string' && node.props.className.includes('tv-home'))).toHaveLength(0);
    expect((back as any).preventDefault).toHaveBeenCalledTimes(1);
    await act(async () => renderer.unmount());
  });
});
