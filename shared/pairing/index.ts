export const REMOTE_SESSION_TTL_MS = 10 * 60 * 1000;
export const REMOTE_SESSION_TTL_SECONDS = REMOTE_SESSION_TTL_MS / 1000;
export const MAX_SESSIONS = 100;
export const MAX_SESSIONS_PER_IP = 5;
export const SUBMIT_WINDOW_MS = 10 * 60 * 1000;
export const SUBMIT_BLOCK_MS = 15 * 60 * 1000;
export const MAX_FAILED_SUBMITS = 10;
export const MAX_PIN_VALIDATION_FAILURES = 5;
export const RUBRICA_WINDOW_MS = 60 * 1000;
export const MAX_RUBRICA_REQUESTS_PER_MINUTE = 20;

export const PIN_LENGTH = 6;
export const POLL_TOKEN_BYTES = 32;
export const MAX_SERVER_LENGTH = 2048;
export const MAX_USERNAME_LENGTH = 512;
export const MAX_PASSWORD_LENGTH = 512;
export const MAX_ORIGINAL_LINK_LENGTH = 4096;
export const CREDENTIALS_PAYLOAD_VERSION = 1 as const;

export interface Credentials {
  server: string;
  username: string;
  password: string;
  originalLink?: string;
}

export interface VersionedCredentialsPayload {
  v: typeof CREDENTIALS_PAYLOAD_VERSION;
  server: string;
  username: string;
  password: string;
  serverCode?: string;
}

export interface RubricaEntry {
  nome: string;
  codici: string[];
  server: string;
}

const PIN_MIN = 100_000;
const PIN_RANGE = 900_000;
const UINT32_SPACE = 0x1_0000_0000;
export const PIN_REJECTION_LIMIT = Math.floor(UINT32_SPACE / PIN_RANGE) * PIN_RANGE;

function defaultRandomUint32(): number {
  const array = new Uint32Array(1);
  crypto.getRandomValues(array);
  return array[0];
}

/**
 * Generates a 6-digit PIN (100000–999999) with uniform probability using
 * rejection sampling over Web Crypto random 32-bit unsigned integers.
 */
export function generatePin(randomUint32: () => number = defaultRandomUint32): string {
  while (true) {
    const sample = randomUint32() >>> 0;
    if (sample < PIN_REJECTION_LIMIT) {
      return String(PIN_MIN + (sample % PIN_RANGE)).padStart(PIN_LENGTH, '0');
    }
  }
}

export const createPin = generatePin;

export function isValidPin(code: unknown): code is string {
  return typeof code === 'string' && /^\d{6}$/.test(code);
}

export function encodeBase64Url(bytes: Uint8Array): string {
  let binary = '';
  for (let i = 0; i < bytes.byteLength; i += 1) {
    binary += String.fromCharCode(bytes[i]);
  }
  return btoa(binary).replace(/\+/g, '-').replace(/\//g, '_').replace(/=+$/, '');
}

/**
 * Generates a cryptographically random poll token with at least 32 random bytes,
 * encoded as base64url without padding.
 */
export function generatePollToken(byteLength: number = POLL_TOKEN_BYTES): string {
  const size = Math.max(POLL_TOKEN_BYTES, Math.floor(byteLength));
  const bytes = new Uint8Array(size);
  crypto.getRandomValues(bytes);
  return encodeBase64Url(bytes);
}

export const createPollToken = generatePollToken;

export function bytesToHex(bytes: Uint8Array): string {
  let hex = '';
  for (let i = 0; i < bytes.byteLength; i += 1) {
    hex += bytes[i].toString(16).padStart(2, '0');
  }
  return hex;
}

/**
 * Computes the SHA-256 hex digest of a token using Web Crypto (crypto.subtle.digest).
 */
export async function hashToken(token: string): Promise<string> {
  const data = new TextEncoder().encode(token);
  const digest = await crypto.subtle.digest('SHA-256', data);
  return bytesToHex(new Uint8Array(digest));
}

// Pure TypeScript synchronous SHA-256 (FIPS 180-4) used where a synchronous
// signature is required while avoiding Node-specific modules.
const SHA256_K = new Uint32Array([
  0x428a2f98, 0x71374491, 0xb5c0fbcf, 0xe9b5dba5, 0x3956c25b, 0x59f111f1, 0x923f82a4, 0xab1c5ed5,
  0xd807aa98, 0x12835b01, 0x243185be, 0x550c7dc3, 0x72be5d74, 0x80deb1fe, 0x9bdc06a7, 0xc19bf174,
  0xe49b69c1, 0xefbe4786, 0x0fc19dc6, 0x240ca1cc, 0x2de92c6f, 0x4a7484aa, 0x5cb0a9dc, 0x76f988da,
  0x983e5152, 0xa831c66d, 0xb00327c8, 0xbf597fc7, 0xc6e00bf3, 0xd5a79147, 0x06ca6351, 0x14292967,
  0x27b70a85, 0x2e1b2138, 0x4d2c6dfc, 0x53380d13, 0x650a7354, 0x766a0abb, 0x81c2c92e, 0x92722c85,
  0xa2bfe8a1, 0xa81a664b, 0xc24b8b70, 0xc76c51a3, 0xd192e819, 0xd6990624, 0xf40e3585, 0x106aa070,
  0x19a4c116, 0x1e376c08, 0x2748774c, 0x34b0bcb5, 0x391c0cb3, 0x4ed8aa4a, 0x5b9cca4f, 0x682e6ff3,
  0x748f82ee, 0x78a5636f, 0x84c87814, 0x8cc70208, 0x90befffa, 0xa4506ceb, 0xbef9a3f7, 0xc67178f2,
]);

function rotr(value: number, bits: number): number {
  return (value >>> bits) | (value << (32 - bits));
}

export function hashTokenSync(token: string): string {
  const message = new TextEncoder().encode(token);
  const bitLength = message.byteLength * 8;
  const paddedLength = Math.ceil((message.byteLength + 9) / 64) * 64;
  const padded = new Uint8Array(paddedLength);
  padded.set(message);
  padded[message.byteLength] = 0x80;
  const view = new DataView(padded.buffer);
  view.setUint32(paddedLength - 8, Math.floor(bitLength / 0x1_0000_0000), false);
  view.setUint32(paddedLength - 4, bitLength >>> 0, false);

  let h0 = 0x6a09e667;
  let h1 = 0xbb67ae85;
  let h2 = 0x3c6ef372;
  let h3 = 0xa54ff53a;
  let h4 = 0x510e527f;
  let h5 = 0x9b05688c;
  let h6 = 0x1f83d9ab;
  let h7 = 0x5be0cd19;

  const w = new Uint32Array(64);

  for (let offset = 0; offset < paddedLength; offset += 64) {
    for (let i = 0; i < 16; i += 1) {
      w[i] = view.getUint32(offset + i * 4, false);
    }
    for (let i = 16; i < 64; i += 1) {
      const s0 = rotr(w[i - 15], 7) ^ rotr(w[i - 15], 18) ^ (w[i - 15] >>> 3);
      const s1 = rotr(w[i - 2], 17) ^ rotr(w[i - 2], 19) ^ (w[i - 2] >>> 10);
      w[i] = (w[i - 16] + s0 + w[i - 7] + s1) >>> 0;
    }

    let a = h0;
    let b = h1;
    let c = h2;
    let d = h3;
    let e = h4;
    let f = h5;
    let g = h6;
    let h = h7;

    for (let i = 0; i < 64; i += 1) {
      const S1 = rotr(e, 6) ^ rotr(e, 11) ^ rotr(e, 25);
      const ch = (e & f) ^ (~e & g);
      const temp1 = (h + S1 + ch + SHA256_K[i] + w[i]) >>> 0;
      const S0 = rotr(a, 2) ^ rotr(a, 13) ^ rotr(a, 22);
      const maj = (a & b) ^ (a & c) ^ (b & c);
      const temp2 = (S0 + maj) >>> 0;

      h = g;
      g = f;
      f = e;
      e = (d + temp1) >>> 0;
      d = c;
      c = b;
      b = a;
      a = (temp1 + temp2) >>> 0;
    }

    h0 = (h0 + a) >>> 0;
    h1 = (h1 + b) >>> 0;
    h2 = (h2 + c) >>> 0;
    h3 = (h3 + d) >>> 0;
    h4 = (h4 + e) >>> 0;
    h5 = (h5 + f) >>> 0;
    h6 = (h6 + g) >>> 0;
    h7 = (h7 + h) >>> 0;
  }

  const out = new Uint8Array(32);
  const outView = new DataView(out.buffer);
  outView.setUint32(0, h0, false);
  outView.setUint32(4, h1, false);
  outView.setUint32(8, h2, false);
  outView.setUint32(12, h3, false);
  outView.setUint32(16, h4, false);
  outView.setUint32(20, h5, false);
  outView.setUint32(24, h6, false);
  outView.setUint32(28, h7, false);
  return bytesToHex(out);
}

/**
 * Constant-time comparison between two strings or byte arrays.
 */
export function constantTimeEqual(a: string | Uint8Array, b: string | Uint8Array): boolean {
  const bytesA = typeof a === 'string' ? new TextEncoder().encode(a) : a;
  const bytesB = typeof b === 'string' ? new TextEncoder().encode(b) : b;
  if (bytesA.byteLength !== bytesB.byteLength) {
    return false;
  }
  let diff = 0;
  for (let i = 0; i < bytesA.byteLength; i += 1) {
    diff |= bytesA[i] ^ bytesB[i];
  }
  return diff === 0;
}

export function readString(value: unknown, maxLength: number): string | null {
  if (typeof value !== 'string') return null;
  const clean = value.trim();
  if (!clean || clean.length > maxLength) return null;
  return clean;
}

export function readCredentials(body: unknown): Credentials | null {
  if (!body || typeof body !== 'object') return null;
  const values = body as Record<string, unknown>;
  const server = readString(values.server, MAX_SERVER_LENGTH);
  const username = readString(values.username, MAX_USERNAME_LENGTH);
  const password = readString(values.password, MAX_PASSWORD_LENGTH);
  if (!server || !username || !password) return null;

  try {
    const parsed = new URL(server);
    if (parsed.protocol !== 'http:' && parsed.protocol !== 'https:') return null;
  } catch {
    return null;
  }

  const originalLinkValue = values.originalLink === undefined
    ? undefined
    : readString(values.originalLink, MAX_ORIGINAL_LINK_LENGTH);
  if (values.originalLink !== undefined && !originalLinkValue) return null;
  const originalLink = originalLinkValue || undefined;

  return {
    server: server.replace(/\/+$/, ''),
    username,
    password,
    originalLink,
  };
}

export function createVersionedPayload(
  credentials: Pick<Credentials, 'server' | 'username' | 'password'> & { serverCode?: string },
): VersionedCredentialsPayload {
  return {
    v: CREDENTIALS_PAYLOAD_VERSION,
    server: credentials.server,
    username: credentials.username,
    password: credentials.password,
    ...(credentials.serverCode === undefined ? {} : { serverCode: credentials.serverCode }),
  };
}

export function normalizeRubricaCode(code: string): string {
  return code.trim().toLowerCase();
}

export function isRubricaCode(serverOrCode: string): boolean {
  return !serverOrCode.includes('://');
}

export function buildRubricaIndex(entries: ReadonlyArray<RubricaEntry>): Map<string, string> {
  const index = new Map<string, string>();
  for (const entry of entries) {
    const server = readString(entry.server, MAX_SERVER_LENGTH);
    if (!server) {
      throw new Error(`Indirizzo server non valido nella voce rubrica "${entry.nome}"`);
    }
    let parsed: URL;
    try {
      parsed = new URL(server);
    } catch {
      throw new Error(`URL server non valido nella voce rubrica "${entry.nome}"`);
    }
    if (parsed.protocol !== 'http:' && parsed.protocol !== 'https:') {
      throw new Error(`Protocollo server non supportato nella voce rubrica "${entry.nome}"`);
    }
    const normalizedServer = server.replace(/\/+$/, '');
    if (!Array.isArray(entry.codici) || entry.codici.length === 0) {
      throw new Error(`Nessun codice definito nella voce rubrica "${entry.nome}"`);
    }
    for (const rawCode of entry.codici) {
      const code = normalizeRubricaCode(rawCode);
      if (!code) {
        throw new Error(`Codice vuoto nella voce rubrica "${entry.nome}"`);
      }
      if (index.has(code)) {
        throw new Error(`Codice rubrica duplicato: "${code}"`);
      }
      index.set(code, normalizedServer);
    }
  }
  return index;
}

export function resolveRubricaCode(
  code: string,
  index: ReadonlyMap<string, string>,
): string | null {
  const normalized = normalizeRubricaCode(code);
  if (!normalized) return null;
  return index.get(normalized) ?? null;
}
