import { normalizeOrigin, type AllowedHostsStore } from './allowedHosts';

export const LOGIN_WINDOW_MS = 10 * 60 * 1000;
export const LOGIN_MAX_ATTEMPTS = 20;

export interface GateRequestInfo {
  ip: string;
  /** The target URL carries a valid HMAC signature produced by this server. */
  signatureValid?: boolean;
  /** Signature-based admission is enabled for this endpoint (stream proxy). */
  allowSignature?: boolean;
}

export type GateDecision =
  | { type: 'invalid' }
  | { type: 'allowed'; origin: string; via: 'origin' | 'signature' }
  | { type: 'login'; origin: string }
  | { type: 'blocked' }
  | { type: 'rate_limited' };

/**
 * The only request forwarded to a not-yet-allowed origin: the Xtream login,
 * i.e. /player_api.php with exactly username and password and no action.
 */
export function isLoginRequest(url: URL): boolean {
  if (url.pathname !== '/player_api.php') return false;
  const keys = [...url.searchParams.keys()];
  return (
    keys.length === 2 &&
    keys.includes('username') &&
    keys.includes('password') &&
    Boolean(url.searchParams.get('username')) &&
    Boolean(url.searchParams.get('password'))
  );
}

export interface ProviderGateOptions {
  store: AllowedHostsStore;
  now?: () => number;
}

/**
 * Keeps the proxy closed: only providers with a successful login are
 * reachable. Login-shaped requests to unknown origins are rate limited per IP
 * (20 requests in 10 minutes) to slow down credential guessing.
 */
export function createProviderGate(options: ProviderGateOptions) {
  const now = options.now ?? Date.now;
  const loginAttempts = new Map<string, number[]>();

  const recordLoginAttempt = (ip: string, timestamp: number): boolean => {
    const windowStart = timestamp - LOGIN_WINDOW_MS;
    const recent = (loginAttempts.get(ip) ?? []).filter((t) => t >= windowStart);
    if (recent.length >= LOGIN_MAX_ATTEMPTS) {
      loginAttempts.set(ip, recent);
      return false;
    }
    recent.push(timestamp);
    loginAttempts.set(ip, recent);
    return true;
  };

  const check = (rawUrl: string, info: GateRequestInfo): GateDecision => {
    const origin = normalizeOrigin(rawUrl);
    if (!origin) return { type: 'invalid' };

    if (options.store.isAllowed(origin)) {
      options.store.touch(origin);
      return { type: 'allowed', origin, via: 'origin' };
    }

    if (info.allowSignature && info.signatureValid) {
      return { type: 'allowed', origin, via: 'signature' };
    }

    let parsed: URL;
    try {
      parsed = new URL(rawUrl);
    } catch {
      return { type: 'invalid' };
    }

    if (isLoginRequest(parsed)) {
      return recordLoginAttempt(info.ip || 'unknown', now())
        ? { type: 'login', origin }
        : { type: 'rate_limited' };
    }

    return { type: 'blocked' };
  };

  return { check, loginAttempts };
}

export type ProviderGate = ReturnType<typeof createProviderGate>;
