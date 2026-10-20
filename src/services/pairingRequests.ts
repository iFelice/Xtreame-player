import { isRubricaCode, normalizeRubricaCode } from '../../shared/pairing';

export interface PairingRequestOptions {
  native: boolean;
  nativeServer: string;
  pollToken?: string | null;
  relayUrl?: string | null;
}

export interface PairingRequest {
  headers?: Record<string, string>;
  method?: 'GET' | 'POST';
  url: string;
}

export function getPairingRelayUrl(override?: string | null): string {
  if (typeof override === 'string') {
    return override.trim().replace(/\/+$/, '');
  }
  const metaEnv = (import.meta as { env?: Record<string, unknown> }).env;
  const fromMeta = metaEnv?.VITE_PAIRING_RELAY_URL;
  if (typeof fromMeta === 'string' && fromMeta.trim()) {
    return fromMeta.trim().replace(/\/+$/, '');
  }
  if (
    typeof process !== 'undefined' &&
    typeof process.env?.VITE_PAIRING_RELAY_URL === 'string' &&
    process.env.VITE_PAIRING_RELAY_URL.trim()
  ) {
    return process.env.VITE_PAIRING_RELAY_URL.trim().replace(/\/+$/, '');
  }
  return '';
}

function pairingUrl(path: string, native: boolean, nativeServer: string): string {
  if (!native) return path;
  return `${nativeServer.replace(/\/+$/, '')}${path}`;
}

export function buildPairingCreateRequest(options: PairingRequestOptions): PairingRequest {
  const relayUrl = getPairingRelayUrl(options.relayUrl);
  if (relayUrl) {
    return {
      method: 'POST',
      url: `${relayUrl}/api/pair/create`,
    };
  }
  return {
    url: pairingUrl('/api/session/create', options.native, options.nativeServer),
  };
}

export function buildPairingStatusRequest(
  code: string,
  options: PairingRequestOptions,
): PairingRequest {
  const relayUrl = getPairingRelayUrl(options.relayUrl);
  if (relayUrl) {
    const request: PairingRequest = {
      url: `${relayUrl}/api/pair/status/${encodeURIComponent(code)}`,
    };
    if (options.pollToken) {
      request.headers = { Authorization: `Bearer ${options.pollToken}` };
    }
    return request;
  }

  const request: PairingRequest = {
    url: pairingUrl(
      `/api/session/status/${encodeURIComponent(code)}`,
      options.native,
      options.nativeServer,
    ),
  };
  if (!options.native && options.pollToken) {
    request.headers = { 'X-Poll-Token': options.pollToken };
  }
  return request;
}

export function buildPairingSubmitRequest(options: PairingRequestOptions): PairingRequest {
  const relayUrl = getPairingRelayUrl(options.relayUrl);
  if (relayUrl) {
    return {
      method: 'POST',
      url: `${relayUrl}/api/pair/submit`,
    };
  }
  return {
    method: 'POST',
    url: pairingUrl('/api/session/submit', options.native, options.nativeServer),
  };
}

export function buildPairingWebUrl(
  code?: string,
  options?: {
    native?: boolean;
    nativeServer?: string;
    origin?: string;
    relayUrl?: string | null;
  },
): string {
  const relayUrl = getPairingRelayUrl(options?.relayUrl);
  const base = relayUrl
    ? relayUrl
    : options?.native
      ? (options.nativeServer || '').replace(/\/+$/, '')
      : (
          options?.origin ??
          (typeof window !== 'undefined' && window.location?.origin
            ? window.location.origin
            : '')
        ).replace(/\/+$/, '');
  return code ? `${base}/?code=${encodeURIComponent(code)}` : base;
}

export function formatShortServiceUrl(url: string): string {
  return url.trim().replace(/^https?:\/\//i, '').replace(/\/+$/, '');
}

export async function resolveRubricaServerUrl(
  serverOrCode: string,
  relayUrlOverride?: string | null,
  fetchImpl: typeof fetch = fetch,
): Promise<{ ok: true; server: string } | { ok: false; message: string }> {
  const clean = serverOrCode.trim();
  const relayUrl = getPairingRelayUrl(relayUrlOverride);
  if (!relayUrl || !isRubricaCode(clean)) {
    return { ok: true, server: clean };
  }

  const normalizedCode = normalizeRubricaCode(clean);
  if (!normalizedCode) {
    return { ok: false, message: 'Codice server non trovato' };
  }

  try {
    const res = await fetchImpl(`${relayUrl}/api/rubrica/${encodeURIComponent(normalizedCode)}`);
    if (!res.ok) {
      return { ok: false, message: 'Codice server non trovato' };
    }
    const data = (await res.json()) as { server?: unknown };
    if (typeof data?.server === 'string' && data.server.trim()) {
      return { ok: true, server: data.server.trim() };
    }
    return { ok: false, message: 'Codice server non trovato' };
  } catch {
    return { ok: false, message: 'Codice server non trovato' };
  }
}

export function pingPairingRelayHealth(
  relayUrlOverride?: string | null,
  fetchImpl: typeof fetch = fetch,
): void {
  const relayUrl = getPairingRelayUrl(relayUrlOverride);
  if (!relayUrl) return;
  try {
    void Promise.resolve(fetchImpl(`${relayUrl}/healthz`)).catch(() => {});
  } catch {
    // Ignore background health check errors
  }
}
