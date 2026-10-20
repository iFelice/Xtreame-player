import { describe, expect, it, vi } from 'vitest';
import {
  buildPairingCreateRequest,
  buildPairingStatusRequest,
  buildPairingWebUrl,
  formatShortServiceUrl,
  pingPairingRelayHealth,
  resolveRubricaServerUrl,
} from './pairingRequests';

const nativeServer = 'https://login-extream-neyt.onrender.com/';

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
      url: 'https://login-extream-neyt.onrender.com/api/session/create',
    });
  });

  it('never adds the poll token header to a native status request', () => {
    expect(buildPairingStatusRequest('123456', {
      native: true,
      nativeServer,
      pollToken: 'must-not-be-sent',
    })).toEqual({
      url: 'https://login-extream-neyt.onrender.com/api/session/status/123456',
    });
  });

  it('builds relay creation, status (Bearer), and QR URLs when relayUrl is configured', () => {
    const relayUrl = 'https://pairing.esempio.workers.dev/';
    expect(buildPairingCreateRequest({ native: false, nativeServer, relayUrl })).toEqual({
      method: 'POST',
      url: 'https://pairing.esempio.workers.dev/api/pair/create',
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
      url: 'https://pairing.esempio.workers.dev/api/pair/status/654321',
    });

    expect(buildPairingWebUrl('654321', { relayUrl })).toBe(
      'https://pairing.esempio.workers.dev/?code=654321',
    );
    expect(formatShortServiceUrl('https://pairing.esempio.workers.dev/')).toBe(
      'pairing.esempio.workers.dev',
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
        'https://pairing.esempio.workers.dev',
        mockFetch,
      ),
    ).toEqual({
      ok: true,
      server: 'http://server.esempio:8080',
    });

    expect(
      await resolveRubricaServerUrl(
        '999',
        'https://pairing.esempio.workers.dev',
        mockFetch,
      ),
    ).toEqual({
      ok: false,
      message: 'Codice server non trovato',
    });

    pingPairingRelayHealth('https://pairing.esempio.workers.dev', mockFetch);
    expect(mockFetch).toHaveBeenCalledWith('https://pairing.esempio.workers.dev/healthz');
  });
});
