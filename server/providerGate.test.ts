import { mkdtempSync, rmSync } from 'fs';
import { tmpdir } from 'os';
import path from 'path';
import { afterEach, beforeEach, describe, expect, it } from 'vitest';
import { createAllowedHostsStore } from './allowedHosts';
import {
  createProviderGate,
  isLoginRequest,
  LOGIN_MAX_ATTEMPTS,
  LOGIN_WINDOW_MS,
} from './providerGate';

let dir: string;

beforeEach(() => {
  dir = mkdtempSync(path.join(tmpdir(), 'xtream-gate-hosts-'));
});

afterEach(() => {
  rmSync(dir, { recursive: true, force: true });
});

function makeGate(now?: () => number) {
  const store = createAllowedHostsStore({ filePath: path.join(dir, 'allowed-hosts.json') });
  return { gate: createProviderGate({ now, store }), store };
}

const request = (ip = '10.0.0.5') => ({ ip });

describe('isLoginRequest', () => {
  it('matches only /player_api.php with exactly username and password', () => {
    const login = new URL('http://provider.example:8080/player_api.php?username=u&password=p');
    expect(isLoginRequest(login)).toBe(true);

    const reversed = new URL('http://provider.example/player_api.php?password=p&username=u');
    expect(isLoginRequest(reversed)).toBe(true);
  });

  it('rejects actions, extra or missing parameters, other paths and empty credentials', () => {
    const cases = [
      'http://provider.example/player_api.php?username=u&password=p&action=get_live_streams',
      'http://provider.example/player_api.php?username=u&password=p&debug=1',
      'http://provider.example/player_api.php?username=u',
      'http://provider.example/player_api.php?username=u&password=p&username=u2',
      'http://provider.example/player_api.php?username=&password=p',
      'http://provider.example/Player_Api.php?username=u&password=p',
      'http://provider.example/api/player_api.php?username=u&password=p',
      'http://provider.example/player_api.php',
      'http://provider.example/get.php?username=u&password=p',
    ];
    for (const raw of cases) {
      expect(isLoginRequest(new URL(raw)), raw).toBe(false);
    }
  });
});

describe('provider gate decisions', () => {
  it('admits requests toward an origin with a previous successful login', () => {
    const { gate, store } = makeGate();
    store.add('http://provider.example:8080');

    const decision = gate.check(
      'http://provider.example:8080/player_api.php?username=u&password=p&action=get_live_streams',
      request(),
    );

    expect(decision).toEqual({
      type: 'allowed',
      origin: 'http://provider.example:8080',
      via: 'origin',
    });
  });

  it('blocks every non-login request toward a never-logged-in origin', () => {
    const { gate } = makeGate();

    const decision = gate.check(
      'http://unknown.example:8080/player_api.php?username=u&password=p&action=get_live_streams',
      request(),
    );
    expect(decision.type).toBe('blocked');

    const streamDecision = gate.check('http://unknown.example:8080/live/u/p/1.ts', request());
    expect(streamDecision.type).toBe('blocked');
  });

  it('admits a login request toward an unknown origin and marks it as login', () => {
    const { gate } = makeGate();

    const decision = gate.check(
      'http://unknown.example:8080/player_api.php?username=u&password=p',
      request(),
    );

    expect(decision).toEqual({ type: 'login', origin: 'http://unknown.example:8080' });
  });

  it('admits a server-signed URL toward an unlisted origin only when signatures are enabled', () => {
    const { gate } = makeGate();
    const url = 'http://cdn.elsewhere.example/live/a/b/seg-9.ts';

    const signed = gate.check(url, { ...request(), signatureValid: true, allowSignature: true });
    expect(signed).toEqual({ type: 'allowed', origin: 'http://cdn.elsewhere.example:80', via: 'signature' });

    const wrongSignature = gate.check(url, { ...request(), signatureValid: false, allowSignature: true });
    expect(wrongSignature.type).toBe('blocked');

    const disabledEndpoint = gate.check(url, { ...request(), signatureValid: true, allowSignature: false });
    expect(disabledEndpoint.type).toBe('blocked');
  });

  it('rejects malformed URLs as invalid', () => {
    const { gate } = makeGate();
    expect(gate.check('not-a-url', request()).type).toBe('invalid');
    expect(gate.check('file:///etc/passwd', request()).type).toBe('invalid');
  });
});

describe('login rate limit', () => {
  const loginUrl = 'http://unknown.example:8080/player_api.php?username=u&password=p';

  it('allows twenty logins per IP in ten minutes then answers 429 until the window slides', () => {
    let timestamp = 100_000;
    const { gate } = makeGate(() => timestamp);

    for (let attempt = 0; attempt < LOGIN_MAX_ATTEMPTS; attempt += 1) {
      expect(gate.check(loginUrl, request()).type, `attempt ${attempt + 1}`).toBe('login');
    }
    expect(gate.check(loginUrl, request()).type).toBe('rate_limited');

    // One minute later the oldest attempt is still inside the window.
    timestamp += 60_000;
    expect(gate.check(loginUrl, request()).type).toBe('rate_limited');

    // Once the first attempt leaves the ten-minute window, a new login is admitted.
    timestamp += LOGIN_WINDOW_MS;
    expect(gate.check(loginUrl, request()).type).toBe('login');
  });

  it('tracks attempts per IP independently', () => {
    const { gate } = makeGate(() => 1_000);
    for (let attempt = 0; attempt < LOGIN_MAX_ATTEMPTS; attempt += 1) {
      gate.check(loginUrl, request('10.0.0.5'));
    }
    expect(gate.check(loginUrl, request('10.0.0.5')).type).toBe('rate_limited');
    expect(gate.check(loginUrl, request('10.0.0.6')).type).toBe('login');
  });

  it('does not consume attempts for allowed origins or blocked requests', () => {
    const { gate, store } = makeGate(() => 1_000);
    store.add('http://provider.example:80');

    gate.check(loginUrl, request());

    for (let index = 0; index < 30; index += 1) {
      gate.check('http://provider.example/live/u/p/1.ts', request());
      gate.check('http://unknown.example:8080/live/u/p/1.ts', request());
    }

    expect(gate.check(loginUrl, request()).type).toBe('login');
  });
});
