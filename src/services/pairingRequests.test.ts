import { afterEach, describe, expect, it, vi } from 'vitest';
import {
  buildPairingCreateRequest,
  buildPairingStatusRequest,
  buildPairingSubmitRequest,
  PAIRING_RELAY_REQUIRED_MESSAGE,
  buildPairingWebUrl,
  formatShortServiceUrl,
  pingPairingRelayHealth,
  resolveRubricaServerUrl,
} from './pairingRequests';

const nativeServer = 'http://server.esempio:8080/';

afterEach(() => {
  vi.unstubAllEnvs();
  vi.restoreAllMocks();
});

describe('pairing request construction', () => {
  it('builds a same-origin web creation request without custom headers', () => {
    expect(buildPairingCreateRequest({ native: false, nativeServer })).toEqual({
      url: '/api/session/create',
    });
  });

  it('builds a same-origin web status request with the poll token', () => {
    expect(buildPairingStatusRequest('123456', {
      native: false,
      nativeServer,
      pollToken: 'secret-poll-token',
    })).toEqual({
      headers: { 'X-Poll-Token': 'secret-poll-token' },
      url: '/api/session/status/123456',
    });
  });

  it('builds a native creation request against the external service', () => {
    expect(buildPairingCreateRequest({ native: true, nativeServer })).toEqual({
      url: 'http://server.esempio:8080/api/session/create',
    });
  });

  it('never adds the poll token header to a native status request', () => {
    expect(buildPairingStatusRequest('123456', {
      native: true,
      nativeServer,
      pollToken: 'must-not-be-sent',
    })).toEqual({
      url: 'http://server.esempio:8080/api/session/status/123456',
    });
  });

  it('builds relay creation, status (Bearer), and QR URLs when relayUrl is configured', () => {
    const relayUrl = 'http://server.esempio:8080/relay/';
    expect(buildPairingCreateRequest({ native: false, nativeServer, relayUrl })).toEqual({
      method: 'POST',
      url: 'http://server.esempio:8080/relay/api/pair/create',
    });

    expect(
      buildPairingStatusRequest('654321', {
        native: false,
        nativeServer,
        pollToken: 'relay-token',
        relayUrl,
      }),
    ).toEqual({
      headers: { Authorization: 'Bearer relay-token' },
      url: 'http://server.esempio:8080/relay/api/pair/status/654321',
    });

    expect(buildPairingWebUrl('654321', { relayUrl })).toBe(
      'http://server.esempio:8080/relay/?code=654321',
    );
    expect(formatShortServiceUrl('http://server.esempio:8080/relay/')).toBe(
      'server.esempio:8080/relay',
    );
  });

  it('resolves rubrica codes against the relay and pings /healthz when configured', async () => {
    const mockFetch = vi.fn(async (input: RequestInfo | URL) => {
      const url = String(input);
      if (url.endsWith('/api/rubrica/001')) {
        return new Response(JSON.stringify({ server: 'http://server.esempio:8080' }), {
          status: 200,
        });
      }
      if (url.endsWith('/healthz')) {
        return new Response('ok', { status: 200 });
      }
      return new Response(JSON.stringify({ error: 'UNKNOWN_SERVER_CODE' }), { status: 404 });
    }) as unknown as typeof fetch;

    expect(
      await resolveRubricaServerUrl(
        ' 001 ',
        'http://server.esempio:8080/relay',
        mockFetch,
      ),
    ).toEqual({
      ok: true,
      server: 'http://server.esempio:8080',
    });

    expect(
      await resolveRubricaServerUrl(
        '999',
        'http://server.esempio:8080/relay',
        mockFetch,
      ),
    ).toEqual({
      ok: false,
      message: 'Codice server non trovato',
    });

    pingPairingRelayHealth('http://server.esempio:8080/relay', mockFetch);
    expect(mockFetch).toHaveBeenCalledWith('http://server.esempio:8080/relay/healthz');
  });
});


describe('static pairing relay', () => {
  it('never falls back to session endpoints and explains missing configuration', async () => {
    vi.stubEnv('MODE', 'static');
    vi.stubEnv('VITE_PAIRING_RELAY_URL', '');
    vi.resetModules();
    const { buildPairingCreateRequest, buildPairingStatusRequest, buildPairingSubmitRequest, buildPairingWebUrl, resolveRubricaServerUrl } = await import('./pairingRequests');
    const options = { native: false, nativeServer, relayUrl: '' };
    expect(() => buildPairingCreateRequest(options)).toThrow(PAIRING_RELAY_REQUIRED_MESSAGE);
    expect(() => buildPairingStatusRequest('123456', options)).toThrow(PAIRING_RELAY_REQUIRED_MESSAGE);
    expect(() => buildPairingSubmitRequest(options)).toThrow(PAIRING_RELAY_REQUIRED_MESSAGE);
    expect(buildPairingWebUrl('123456', { relayUrl: '' })).toBe('');
    const fetchMock = vi.fn();
    expect(await resolveRubricaServerUrl('001', '', fetchMock)).toEqual({
      ok: false,
      message: PAIRING_RELAY_REQUIRED_MESSAGE,
    });
    expect(fetchMock).not.toHaveBeenCalled();
    expect(await resolveRubricaServerUrl('http://server.esempio:8080', '', fetchMock)).toEqual({
      ok: true,
      server: 'http://server.esempio:8080',
    });
  });

  it('uses the build-time relay for creation, status, submission and rubrica', async () => {
    vi.stubEnv('MODE', 'static');
    vi.stubEnv('VITE_PAIRING_RELAY_URL', 'http://server.esempio:8080/relay/');
    vi.resetModules();
    const { buildPairingCreateRequest, buildPairingStatusRequest, buildPairingSubmitRequest, buildPairingWebUrl, resolveRubricaServerUrl } = await import('./pairingRequests');
    const options = { native: false, nativeServer, pollToken: 'demo' };
    expect(buildPairingCreateRequest(options)).toEqual({ method: 'POST', url: 'http://server.esempio:8080/relay/api/pair/create' });
    expect(buildPairingStatusRequest('123456', options)).toEqual({
      headers: { Authorization: 'Bearer demo' },
      url: 'http://server.esempio:8080/relay/api/pair/status/123456',
    });
    expect(buildPairingSubmitRequest(options)).toEqual({ method: 'POST', url: 'http://server.esempio:8080/relay/api/pair/submit' });
    expect(buildPairingWebUrl('123456')).toBe('http://server.esempio:8080/relay/?code=123456');
    const fetchMock = vi.fn(async (_url: RequestInfo | URL) => new Response(JSON.stringify({ server: 'http://server.esempio:8080' })));
    expect(await resolveRubricaServerUrl('001', undefined, fetchMock)).toEqual({ ok: true, server: 'http://server.esempio:8080' });
    expect(fetchMock).toHaveBeenCalledWith('http://server.esempio:8080/relay/api/rubrica/001');
  });
});

describe('webOS pairing request guard', () => {
  it('never manufactures an Express session URL when the packaged build has no relay', async () => {
    vi.stubEnv('VITE_TARGET', 'webos');
    vi.stubEnv('VITE_PAIRING_RELAY_URL', '');
    vi.resetModules();
    const requests = await import('./pairingRequests');
    const options = { native: false, nativeServer, relayUrl: '' };
    expect(requests.buildPairingCreateRequest(options)).toEqual({ url: '' });
    expect(requests.buildPairingStatusRequest('001', options)).toEqual({ url: '' });
    expect(requests.buildPairingSubmitRequest(options)).toEqual({ url: '' });
    expect(requests.buildPairingWebUrl('001', { relayUrl: '' })).toBe('');
  });
});
