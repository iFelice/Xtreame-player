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
