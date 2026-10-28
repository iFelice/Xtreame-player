import React from 'react';
import { act, create } from 'react-test-renderer';
import { afterEach, beforeEach, describe, expect, it, vi } from 'vitest';
import { PAIRING_RELAY_REQUIRED_MESSAGE } from '../services/pairingRequests';

beforeEach(() => {
  (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT = true;
  vi.stubEnv('MODE', 'static');
  vi.resetModules();
  vi.stubEnv('VITE_PAIRING_RELAY_URL', '');
  const storage = { getItem: () => null, setItem: () => {}, removeItem: () => {} };
  vi.stubGlobal('localStorage', storage);
  vi.stubGlobal('sessionStorage', storage);
  vi.stubGlobal('window', {
    innerWidth: 390,
    location: { origin: 'http://server.esempio:8080', protocol: 'http:', search: '' },
    addEventListener: () => {}, removeEventListener: () => {},
    matchMedia: () => ({ matches: false, addEventListener: () => {}, removeEventListener: () => {} }),
    setInterval, clearInterval, setTimeout, clearTimeout,
  });
  vi.stubGlobal('document', { addEventListener: () => {}, removeEventListener: () => {}, getElementById: () => null });
  vi.stubGlobal('navigator', { userAgent: 'iPhone', platform: 'iPhone', maxTouchPoints: 5 });
});

afterEach(() => {
  vi.unstubAllEnvs();
  vi.unstubAllGlobals();
  vi.restoreAllMocks();
  delete (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT;
});

describe('static pairing UI', () => {
  it('shows a configuration error without trying to create a local session', async () => {
    const fetchMock = vi.fn();
    vi.stubGlobal('fetch', fetchMock);
    const { TvPairingModal } = await import('./TvPairingModal');
    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(<TvPairingModal isOpen pairingEnabled onClose={() => {}} onConnectAccount={() => {}} />);
    });
    expect(renderer!.root.findByProps({ role: 'alert' }).children.join('')).toBe(PAIRING_RELAY_REQUIRED_MESSAGE);
    expect(fetchMock).not.toHaveBeenCalled();
    await act(async () => renderer!.unmount());
  });

  it('shows the same clear error for a rubrica code when the relay is missing', async () => {
    const fetchMock = vi.fn();
    const onLogin = vi.fn();
    vi.stubGlobal('fetch', fetchMock);
    const { LoginForm } = await import('./LoginForm');
    let renderer: ReturnType<typeof create>;
    await act(async () => { renderer = create(<LoginForm onLogin={onLogin} />); });
    const inputs = renderer!.root.findAllByType('input');
    await act(async () => {
      inputs[0].props.onChange({ target: { value: '001' } });
      inputs[1].props.onChange({ target: { value: 'demo' } });
      inputs[2].props.onChange({ target: { value: 'demo' } });
    });
    await act(async () => { await renderer!.root.findByType('form').props.onSubmit({ preventDefault: () => {} }); });
    expect(renderer!.root.findByProps({ role: 'alert' }).children.join('')).toBe(PAIRING_RELAY_REQUIRED_MESSAGE);
    expect(onLogin).not.toHaveBeenCalled();
    expect(fetchMock).not.toHaveBeenCalled();
    await act(async () => renderer!.unmount());
  });

  it('remote login submits to the relay and accepts its ok response', async () => {
    vi.stubEnv('VITE_PAIRING_RELAY_URL', 'http://server.esempio:8080/relay');
    const fetchMock = vi.fn(async (_url: RequestInfo | URL, _init?: RequestInit) =>
      new Response(JSON.stringify({ ok: true }), { status: 200 }));
    vi.stubGlobal('fetch', fetchMock);
    const { RemoteLoginView } = await import('./RemoteLoginView');
    let renderer: ReturnType<typeof create>;
    await act(async () => { renderer = create(<RemoteLoginView initialCode="123456" />); });
    const inputs = renderer!.root.findAllByType('input');
    await act(async () => {
      inputs[1].props.onChange({ target: { value: 'http://server.esempio:8080' } });
      inputs[2].props.onChange({ target: { value: 'demo' } });
      inputs[3].props.onChange({ target: { value: 'demo' } });
    });
    await act(async () => { await renderer!.root.findByType('form').props.onSubmit({ preventDefault: () => {} }); });
    expect(fetchMock).toHaveBeenCalledWith('http://server.esempio:8080/relay/api/pair/submit', expect.objectContaining({ method: 'POST' }));
    expect(JSON.stringify(renderer!.toJSON())).toContain('Credenziali inviate con successo');
    await act(async () => renderer!.unmount());
  });

  it('remote login reports a missing relay before sending anything', async () => {
    const fetchMock = vi.fn();
    vi.stubGlobal('fetch', fetchMock);
    const { RemoteLoginView } = await import('./RemoteLoginView');
    let renderer: ReturnType<typeof create>;
    await act(async () => { renderer = create(<RemoteLoginView initialCode="123456" />); });
    expect(renderer!.root.findByProps({ role: 'alert' }).children.join('')).toBe(PAIRING_RELAY_REQUIRED_MESSAGE);
    await act(async () => { await renderer!.root.findByType('form').props.onSubmit({ preventDefault: () => {} }); });
    expect(fetchMock).not.toHaveBeenCalled();
    await act(async () => renderer!.unmount());
  });
});
