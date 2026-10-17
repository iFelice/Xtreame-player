import { describe, expect, it } from 'vitest';
import { buildPairingCreateRequest, buildPairingStatusRequest } from './pairingRequests';

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
});
