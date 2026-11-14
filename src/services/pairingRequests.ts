import { isRubricaCode, normalizeRubricaCode } from '../../shared/pairing';
import { STATIC_DEPLOY } from '../utils/deployTarget';
import { isWebOsBuild } from '../platform/runtime';

export const PAIRING_RELAY_REQUIRED_MESSAGE =
  'Per l’abbinamento e i codici server configura VITE_PAIRING_RELAY_URL durante la build statica.';

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
  const fromMeta = import.meta.env.VITE_PAIRING_RELAY_URL;
  if (typeof fromMeta === 'string' && fromMeta.trim()) {
    return fromMeta.trim().replace(/\/+$/, '');
  }
  // Static deployments read their relay only from Vite's build-time environment.
  if (STATIC_DEPLOY) return '';
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
  if (STATIC_DEPLOY) throw new Error(PAIRING_RELAY_REQUIRED_MESSAGE);
  if (!native) return path;
  return `${nativeServer.replace(/\/+$/, '')}${path}`;
}

export function buildPairingCreateRequest(options: PairingRequestOptions): PairingRequest {
  const relayUrl = getPairingRelayUrl(options.relayUrl);
  // `file://` webOS has no Express server; callers receive an inert request
  // and the production modal shows the configuration message instead.
  if (isWebOsBuild() && !relayUrl) return { url: '' };
  if (relayUrl) {
    return {
      method: 'POST',
      url: `${relayUrl}/api/pair/create`,
    };
  }
  if (STATIC_DEPLOY) throw new Error(PAIRING_RELAY_REQUIRED_MESSAGE);
  return {
    url: pairingUrl('/api/session/create', options.native, options.nativeServer),
  };
}

export function buildPairingStatusRequest(
  code: string,
  options: PairingRequestOptions,
): PairingRequest {
  const relayUrl = getPairingRelayUrl(options.relayUrl);
  if (isWebOsBuild() && !relayUrl) return { url: '' };
  if (relayUrl) {
    const request: PairingRequest = {
      url: `${relayUrl}/api/pair/status/${encodeURIComponent(code)}`,
    };
    if (options.pollToken) {
      request.headers = { Authorization: `Bearer ${options.pollToken}` };
    }
    return request;
  }

  if (STATIC_DEPLOY) throw new Error(PAIRING_RELAY_REQUIRED_MESSAGE);
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
  if (isWebOsBuild() && !relayUrl) return { url: '' };
  if (relayUrl) {
    return {
      method: 'POST',
      url: `${relayUrl}/api/pair/submit`,
    };
  }
  if (STATIC_DEPLOY) throw new Error(PAIRING_RELAY_REQUIRED_MESSAGE);
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
  if ((STATIC_DEPLOY || isWebOsBuild()) && !relayUrl) return '';
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
  if (!isRubricaCode(clean)) return { ok: true, server: clean };
  if (!relayUrl) {
    return STATIC_DEPLOY
      ? { ok: false, message: PAIRING_RELAY_REQUIRED_MESSAGE }
      : { ok: true, server: clean };
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
