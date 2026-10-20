import React from 'react';
import { act, create } from 'react-test-renderer';
import { afterEach, beforeEach, describe, expect, it, vi } from 'vitest';
import QRCode from 'qrcode';
import * as downloadHelper from '../utils/downloadHelper';
import { TvPairingModal } from './TvPairingModal';
import { LoginForm } from './LoginForm';

beforeEach(() => {
  (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT = true;
  const storageMap = new Map<string, string>();
  const makeStorage = () => ({
    getItem: (key: string) => storageMap.get(key) ?? null,
    setItem: (key: string, val: string) => {
      storageMap.set(key, val);
    },
    removeItem: (key: string) => {
      storageMap.delete(key);
    },
    clear: () => storageMap.clear(),
  });
  vi.stubGlobal('localStorage', makeStorage());
  vi.stubGlobal('sessionStorage', makeStorage());
  vi.stubGlobal('window', {
    innerWidth: 1280,
    location: { origin: 'http://example.com', protocol: 'http:', search: '' },
    addEventListener: () => {},
    removeEventListener: () => {},
    matchMedia: () => ({ addEventListener: () => {}, removeEventListener: () => {} }),
    setInterval: globalThis.setInterval.bind(globalThis),
    clearInterval: globalThis.clearInterval.bind(globalThis),
    setTimeout: globalThis.setTimeout.bind(globalThis),
    clearTimeout: globalThis.clearTimeout.bind(globalThis),
  });
  vi.stubGlobal('document', {
    getElementById: () => null,
    addEventListener: () => {},
    removeEventListener: () => {},
  });
});

afterEach(() => {
  vi.restoreAllMocks();
  vi.unstubAllEnvs();
  vi.unstubAllGlobals();
  delete (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT;
});

describe('TvPairingModal with and without VITE_PAIRING_RELAY_URL', () => {
  it('uses the local server and generates QR for window.location.origin when VITE_PAIRING_RELAY_URL is absent', async () => {
    vi.stubEnv('VITE_PAIRING_RELAY_URL', '');
    vi.spyOn(downloadHelper, 'isTvEnvironment').mockReturnValue(false);
    const toDataUrlSpy = vi
      .spyOn(QRCode, 'toDataURL')
      .mockResolvedValue('data:image/png;base64,localqr' as never);

    const fetchMock = vi.fn(async (input: RequestInfo | URL) => {
      const url = String(input);
      if (url === '/api/session/create') {
        return new Response(
          JSON.stringify({
            code: '123456',
            pollToken: 'local-token',
            expiresInSeconds: 600,
          }),
          { status: 200 },
        );
      }
      return new Response(JSON.stringify({ status: 'pending' }), { status: 200 });
    });
    vi.stubGlobal('fetch', fetchMock);

    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(
        <TvPairingModal
          isOpen
          pairingEnabled
          onClose={() => {}}
          onConnectAccount={() => {}}
        />,
      );
    });

    expect(fetchMock).toHaveBeenCalledWith('/api/session/create', undefined);
    expect(toDataUrlSpy).toHaveBeenCalledWith(
      'http://example.com/?code=123456',
      expect.objectContaining({
        errorCorrectionLevel: 'M',
        margin: 2,
      }),
    );

    await act(async () => {
      renderer!.unmount();
    });
  });

  it('uses VITE_PAIRING_RELAY_URL with Bearer polling, encodes <VITE_PAIRING_RELAY_URL>/?code=<PIN> in QR, shows PIN and short URL, and regenerates QR on renewal', async () => {
    vi.useFakeTimers();
    const relayUrl = 'https://pairing-relay.esempio.workers.dev';
    vi.stubEnv('VITE_PAIRING_RELAY_URL', relayUrl);
    vi.spyOn(downloadHelper, 'isTvEnvironment').mockReturnValue(true);

    const toDataUrlSpy = vi
      .spyOn(QRCode, 'toDataURL')
      .mockImplementation((async (text: string) => `data:image/png;base64,${text}`) as never);

    const pins = ['482910', '938471'];
    let pollShouldBeReady = false;
    const fetchMock = vi.fn(async (input: RequestInfo | URL, init?: RequestInit) => {
      const url = String(input);
      if (url === `${relayUrl}/api/pair/create`) {
        expect(init?.method).toBe('POST');
        const nextPin = pins.shift() || '111111';
        return new Response(
          JSON.stringify({
            code: nextPin,
            pollToken: `token-for-${nextPin}`,
            expiresInSeconds: 600,
          }),
          { status: 200 },
        );
      }
      if (url.startsWith(`${relayUrl}/api/pair/status/`)) {
        if (pollShouldBeReady) {
          return new Response(
            JSON.stringify({
              status: 'ready',
              credentials: {
                v: 1,
                server: 'http://server.esempio:8080',
                username: 'utente-tv',
                password: 'pwd-tv',
              },
            }),
            { status: 200 },
          );
        }
        return new Response(JSON.stringify({ status: 'waiting' }), { status: 200 });
      }
      return new Response('not found', { status: 404 });
    });
    vi.stubGlobal('fetch', fetchMock);

    const onConnectAccount = vi.fn();
    const onClose = vi.fn();
    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(
        <TvPairingModal
          isOpen
          pairingEnabled
          onClose={onClose}
          onConnectAccount={onConnectAccount}
        />,
      );
    });

    // Verify exact QR content <VITE_PAIRING_RELAY_URL>/?code=<PIN> and level M >= 200px on TV
    expect(toDataUrlSpy).toHaveBeenCalledWith(
      'https://pairing-relay.esempio.workers.dev/?code=482910',
      expect.objectContaining({
        errorCorrectionLevel: 'M',
        width: 240,
        margin: 2,
      }),
    );

    // Verify PIN and short service address shown under the QR
    const pinUnderQr = renderer!.root.findByProps({ 'data-testid': 'qr-pin-display' });
    expect(pinUnderQr.children.join('')).toBe('482910');
    const shortUrlUnderQr = renderer!.root.findByProps({
      'data-testid': 'qr-short-service-url',
    });
    expect(shortUrlUnderQr.children.join('')).toBe('pairing-relay.esempio.workers.dev');

    // Click "Genera Nuovo PIN" and verify QR is regenerated with the new PIN
    const renewButton = renderer!.root.find(
      (node) =>
        node.type === 'button' &&
        node.children.some((c) => typeof c === 'string' && c.includes('Genera Nuovo PIN')),
    );
    await act(async () => {
      await renewButton.props.onClick();
    });

    expect(toDataUrlSpy).toHaveBeenLastCalledWith(
      'https://pairing-relay.esempio.workers.dev/?code=938471',
      expect.objectContaining({
        errorCorrectionLevel: 'M',
      }),
    );

    // Trigger status poll and verify Authorization: Bearer <pollToken> and credential reception
    pollShouldBeReady = true;
    await act(async () => {
      await vi.advanceTimersByTimeAsync(2500);
    });

    expect(fetchMock).toHaveBeenCalledWith(
      'https://pairing-relay.esempio.workers.dev/api/pair/status/938471',
      { headers: { Authorization: 'Bearer token-for-938471' } },
    );

    await act(async () => {
      await vi.advanceTimersByTimeAsync(1500);
    });

    expect(onConnectAccount).toHaveBeenCalledWith(
      'http://server.esempio:8080',
      'utente-tv',
      'pwd-tv',
    );

    await act(async () => {
      renderer!.unmount();
    });
    vi.useRealTimers();
  });
});

describe('LoginForm rubrica code resolution', () => {
  it('resolves a short server code via GET /api/rubrica/:code before calling onLogin', async () => {
    const relayUrl = 'https://pairing-relay.esempio.workers.dev';
    vi.stubEnv('VITE_PAIRING_RELAY_URL', relayUrl);
    vi.spyOn(downloadHelper, 'isTvEnvironment').mockReturnValue(false);

    const fetchMock = vi.fn(async (input: RequestInfo | URL) => {
      const url = String(input);
      if (url === `${relayUrl}/api/rubrica/001`) {
        return new Response(
          JSON.stringify({ server: 'http://server.esempio:8080' }),
          { status: 200 },
        );
      }
      return new Response(JSON.stringify({ error: 'UNKNOWN_SERVER_CODE' }), { status: 404 });
    });
    vi.stubGlobal('fetch', fetchMock);

    const onLogin = vi.fn();
    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(<LoginForm onLogin={onLogin} />);
    });

    const inputs = renderer!.root.findAllByType('input');
    await act(async () => {
      inputs[0].props.onChange({ target: { value: ' 001 ' } });
      inputs[1].props.onChange({ target: { value: 'mario' } });
      inputs[2].props.onChange({ target: { value: 'segreta' } });
    });

    const form = renderer!.root.findByType('form');
    await act(async () => {
      await form.props.onSubmit({ preventDefault: () => {} });
    });

    expect(fetchMock).toHaveBeenCalledWith(`${relayUrl}/api/rubrica/001`);
    expect(onLogin).toHaveBeenCalledWith('http://server.esempio:8080', 'mario', 'segreta');

    await act(async () => {
      renderer!.unmount();
    });
  });

  it('displays "Codice server non trovato" when the rubrica code is unknown', async () => {
    const relayUrl = 'https://pairing-relay.esempio.workers.dev';
    vi.stubEnv('VITE_PAIRING_RELAY_URL', relayUrl);
    vi.spyOn(downloadHelper, 'isTvEnvironment').mockReturnValue(false);

    const fetchMock = vi.fn(async () => {
      return new Response(JSON.stringify({ error: 'UNKNOWN_SERVER_CODE' }), { status: 404 });
    });
    vi.stubGlobal('fetch', fetchMock);

    const onLogin = vi.fn();
    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(<LoginForm onLogin={onLogin} />);
    });

    const inputs = renderer!.root.findAllByType('input');
    await act(async () => {
      inputs[0].props.onChange({ target: { value: '999' } });
      inputs[1].props.onChange({ target: { value: 'mario' } });
      inputs[2].props.onChange({ target: { value: 'segreta' } });
    });

    const form = renderer!.root.findByType('form');
    await act(async () => {
      await form.props.onSubmit({ preventDefault: () => {} });
    });

    expect(onLogin).not.toHaveBeenCalled();
    const alertBox = renderer!.root.findByProps({ role: 'alert' });
    expect(alertBox.children.join('')).toBe('Codice server non trovato');

    await act(async () => {
      renderer!.unmount();
    });
  });
});
