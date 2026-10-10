const SAFE_HOSTS = new Set(['localhost', '127.0.0.1', '::1', '[::1]']);

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
