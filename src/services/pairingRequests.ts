interface PairingRequestOptions {
  native: boolean;
  nativeServer: string;
  pollToken?: string | null;
}

export interface PairingRequest {
  headers?: Record<string, string>;
  url: string;
}

function pairingUrl(path: string, native: boolean, nativeServer: string): string {
  if (!native) return path;
  return `${nativeServer.replace(/\/+$/, '')}${path}`;
}

export function buildPairingCreateRequest(options: PairingRequestOptions): PairingRequest {
  return {
    url: pairingUrl('/api/session/create', options.native, options.nativeServer),
  };
}

export function buildPairingStatusRequest(
  code: string,
  options: PairingRequestOptions,
): PairingRequest {
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
