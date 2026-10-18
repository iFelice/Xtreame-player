import { createHmac, timingSafeEqual } from 'crypto';

const SAFE_HOSTS = new Set(['localhost', '127.0.0.1', '::1', '[::1]']);

export function createSafeProxySigner(secret: Buffer) {
  const sign = (targetUrl: string): string =>
    createHmac('sha256', secret).update(targetUrl).digest('hex');

  const verify = (targetUrl: string, signature: unknown): boolean => {
    if (typeof signature !== 'string') return false;
    const expected = sign(targetUrl);
    return signature.length === expected.length &&
      timingSafeEqual(Buffer.from(signature), Buffer.from(expected));
  };

  return { sign, verify };
}

export function isSafeDevelopmentTarget(rawUrl: string): boolean {
  try {
    const url = new URL(rawUrl);
    return (url.protocol === 'http:' || url.protocol === 'https:') && SAFE_HOSTS.has(url.hostname);
  } catch {
    return false;
  }
}

export function safeProxyEnabled(environment = process.env): boolean {
  return environment.XTREAM_SAFE_MODE === '1';
}

// Browser-side barrier: API and media traffic must return through this local server.
export const SAFE_CONNECT_POLICY = [
  "'self'",
  'http://localhost:*',
  'http://127.0.0.1:*',
  'http://[::1]:*',
  'ws://localhost:*',
  'ws://127.0.0.1:*',
].join(' ');
