import { describe, expect, it } from 'vitest';
import { createAccessAuth, isPublicApiPath, requireProductionToken } from './auth';

describe('access auth', () => {
  it('accepts a valid signed cookie', () => {
    const auth = createAccessAuth('a'.repeat(24), true);
    expect(auth.verify(auth.issue(1_000), 1_001)).toBe(true);
  });

  it('rejects absent, expired and tampered cookies', () => {
    const auth = createAccessAuth('a'.repeat(24), true);
    const cookie = auth.issue(1_000);
    expect(auth.verify(undefined)).toBe(false);
    expect(auth.verify(cookie, 31 * 86_400_000)).toBe(false);
    expect(auth.verify(`${cookie}x`, 1_001)).toBe(false);
  });

  it('refuses production startup without a strong token', () => {
    expect(() => requireProductionToken({ NODE_ENV: 'production' })).toThrow(/APP_ACCESS_TOKEN/);
    expect(() =>
      requireProductionToken({ NODE_ENV: 'production', APP_ACCESS_TOKEN: 'short' }),
    ).toThrow();
    expect(() =>
      requireProductionToken({ NODE_ENV: 'production', APP_ACCESS_TOKEN: 'x'.repeat(24) }),
    ).not.toThrow();
    expect(() => requireProductionToken({ NODE_ENV: 'development' })).not.toThrow();
  });

  it('rate limits unlock after five failures', () => {
    const auth = createAccessAuth('a'.repeat(24), false);
    const request: any = { ip: '1.2.3.4', socket: {}, body: { token: 'bad' } };
    let status = 0;
    const response: any = {
      status(value: number) { status = value; return this; },
      json() { return this; },
      setHeader() {},
    };
    for (let index = 0; index < 5; index += 1) auth.unlock(request, response);
    expect(status).toBe(401);
    auth.unlock(request, response);
    expect(status).toBe(429);
  });

  it('publishes only unlock, runtime config and session submission', () => {
    for (const path of ['/auth/unlock', '/runtime-config', '/session/submit']) {
      expect(isPublicApiPath(path), path).toBe(true);
    }
    for (const path of [
      '/session',
      '/session/create',
      '/session/status/123456',
      '/Session/submit',
      '/SESSION/create',
      '/AUTH/unlock',
      '/Runtime-config',
      '/proxy/api',
      '/xtream/test',
    ]) {
      expect(isPublicApiPath(path), path).toBe(false);
    }
  });
});
