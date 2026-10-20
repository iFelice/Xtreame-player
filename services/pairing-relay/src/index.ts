import {
  buildRubricaIndex,
  constantTimeEqual,
  createVersionedPayload,
  generatePin,
  generatePollToken,
  hashToken,
  isRubricaCode,
  isValidPin,
  MAX_FAILED_SUBMITS,
  MAX_PIN_VALIDATION_FAILURES,
  MAX_RUBRICA_REQUESTS_PER_MINUTE,
  MAX_SESSIONS,
  MAX_SESSIONS_PER_IP,
  readCredentials,
  REMOTE_SESSION_TTL_MS,
  REMOTE_SESSION_TTL_SECONDS,
  resolveRubricaCode,
  RUBRICA_WINDOW_MS,
  SUBMIT_BLOCK_MS,
  SUBMIT_WINDOW_MS,
  type RubricaEntry,
} from '../../../shared/pairing/index.ts';
import rubricaData from '../rubrica.json';
import { renderSubmissionPage } from './page.ts';

export const DEFAULT_RUBRICA_ENTRIES: ReadonlyArray<RubricaEntry> = rubricaData as RubricaEntry[];
export const DEFAULT_RUBRICA_INDEX: ReadonlyMap<string, string> = buildRubricaIndex(
  DEFAULT_RUBRICA_ENTRIES,
);

export interface SqlCursorLike<T = Record<string, unknown>> {
  toArray(): T[];
}

export interface SqlStorageLike {
  exec<T = Record<string, unknown>>(query: string, ...bindings: unknown[]): SqlCursorLike<T>;
}

export interface DurableObjectStorageLike {
  sql: SqlStorageLike;
  setAlarm(scheduledTime: number | Date): Promise<void>;
  getAlarm?(): Promise<number | null>;
}

export interface DurableObjectStateLike {
  storage: DurableObjectStorageLike;
}

export interface DurableObjectIdLike {
  toString(): string;
}

export interface PairingHubStubLike {
  fetch(input: RequestInfo | URL, init?: RequestInit): Promise<Response>;
}

export interface PairingHubNamespaceLike {
  idFromName(name: string): DurableObjectIdLike;
  get(id: DurableObjectIdLike): PairingHubStubLike;
}

export interface Env {
  PAIRING_HUB: PairingHubNamespaceLike;
  ALLOWED_ORIGINS?: string;
}

export interface PairingHubOptions {
  now?: () => number;
  createPin?: () => string;
  createPollToken?: () => string;
  rubricaIndex?: ReadonlyMap<string, string>;
}

function jsonResponse(body: unknown, status = 200, extraHeaders?: HeadersInit): Response {
  const headers = new Headers(extraHeaders);
  headers.set('Content-Type', 'application/json; charset=utf-8');
  headers.set('Cache-Control', 'no-store');
  return new Response(JSON.stringify(body), { status, headers });
}

function clientIpFromRequest(request: Request): string {
  const cfIp = request.headers.get('CF-Connecting-IP')?.trim();
  return cfIp || 'unknown';
}

function extractBearerToken(authorization: string | null): string | null {
  if (!authorization) return null;
  const match = authorization.match(/^Bearer\s+(\S+)$/i);
  return match ? match[1] : null;
}

export function parseAllowedOrigins(raw: string | undefined): Set<string> {
  if (!raw) return new Set();
  return new Set(
    raw
      .split(',')
      .map((origin) => origin.trim().replace(/\/+$/, ''))
      .filter(Boolean),
  );
}

interface CorsDecision {
  allowed: boolean;
  headers: Record<string, string>;
}

export function evaluateCors(request: Request, allowedOriginsRaw: string | undefined): CorsDecision {
  const originHeader = request.headers.get('Origin')?.trim();
  if (!originHeader) {
    return { allowed: true, headers: {} };
  }

  const normalizedOrigin = originHeader.replace(/\/+$/, '');
  const allowedOrigins = parseAllowedOrigins(allowedOriginsRaw);
  if (allowedOrigins.has(normalizedOrigin)) {
    return {
      allowed: true,
      headers: {
        'Access-Control-Allow-Origin': originHeader,
        'Access-Control-Allow-Methods': 'GET, POST',
        'Access-Control-Allow-Headers': 'Content-Type, Authorization',
        Vary: 'Origin',
      },
    };
  }

  // Allow the built-in HTML page served on GET / of the same Worker origin
  // when a browser sends Sec-Fetch-Site: same-origin.
  const requestOrigin = new URL(request.url).origin.replace(/\/+$/, '');
  if (
    normalizedOrigin === requestOrigin &&
    request.headers.get('Sec-Fetch-Site') === 'same-origin'
  ) {
    return { allowed: true, headers: {} };
  }

  return { allowed: false, headers: {} };
}

function withCorsHeaders(response: Response, corsHeaders: Record<string, string>): Response {
  if (Object.keys(corsHeaders).length === 0) return response;
  const headers = new Headers(response.headers);
  for (const [key, value] of Object.entries(corsHeaders)) {
    headers.set(key, value);
  }
  return new Response(response.body, {
    status: response.status,
    statusText: response.statusText,
    headers,
  });
}

export class PairingHub {
  protected readonly ctx: DurableObjectStateLike;
  protected readonly env: Env;
  private readonly now: () => number;
  private readonly createPinFn: () => string;
  private readonly createPollTokenFn: () => string;
  private readonly rubricaIndex: ReadonlyMap<string, string>;

  constructor(ctx: DurableObjectStateLike, env: Env, options: PairingHubOptions = {}) {
    this.ctx = ctx;
    this.env = env;
    this.now = options.now ?? (() => Date.now());
    this.createPinFn = options.createPin ?? (() => generatePin());
    this.createPollTokenFn = options.createPollToken ?? (() => generatePollToken());
    this.rubricaIndex = options.rubricaIndex ?? DEFAULT_RUBRICA_INDEX;
  }

  private get sql(): SqlStorageLike {
    return this.ctx.storage.sql;
  }

  private ensureSchema(): void {
    this.sql.exec(`
      CREATE TABLE IF NOT EXISTS sessions (
        pin TEXT PRIMARY KEY,
        ip TEXT NOT NULL,
        created_at INTEGER NOT NULL,
        poll_token_hash TEXT NOT NULL,
        payload TEXT,
        failed_attempts INTEGER NOT NULL DEFAULT 0
      )
    `);
    this.sql.exec(`
      CREATE TABLE IF NOT EXISTS ip_submit_limits (
        ip TEXT PRIMARY KEY,
        failed_count INTEGER NOT NULL DEFAULT 0,
        window_started_at INTEGER NOT NULL,
        blocked_until INTEGER NOT NULL DEFAULT 0
      )
    `);
    this.sql.exec(`
      CREATE TABLE IF NOT EXISTS ip_rubrica_limits (
        ip TEXT PRIMARY KEY,
        request_count INTEGER NOT NULL DEFAULT 0,
        window_started_at INTEGER NOT NULL
      )
    `);
  }

  private cleanupExpired(timestamp: number): void {
    this.sql.exec(
      'DELETE FROM sessions WHERE ? - created_at >= ?',
      timestamp,
      REMOTE_SESSION_TTL_MS,
    );
    this.sql.exec(
      'DELETE FROM ip_submit_limits WHERE blocked_until <= ? AND ? - window_started_at >= ?',
      timestamp,
      timestamp,
      SUBMIT_WINDOW_MS,
    );
    this.sql.exec(
      'DELETE FROM ip_rubrica_limits WHERE ? - window_started_at >= ?',
      timestamp,
      RUBRICA_WINDOW_MS,
    );
  }

  private async scheduleNextAlarm(): Promise<void> {
    const rows = this.sql
      .exec<{ oldest: number | null }>('SELECT MIN(created_at) AS oldest FROM sessions')
      .toArray();
    const oldest = rows[0]?.oldest;
    if (typeof oldest === 'number' && Number.isFinite(oldest)) {
      await this.ctx.storage.setAlarm(oldest + REMOTE_SESSION_TTL_MS);
    }
  }

  private uniquePin(): string {
    for (let attempt = 0; attempt < 1_000_000; attempt += 1) {
      const code = this.createPinFn();
      const existing = this.sql
        .exec<{ pin: string }>('SELECT pin FROM sessions WHERE pin = ?', code)
        .toArray();
      if (existing.length === 0) return code;
    }
    throw new Error('Unable to generate a unique PIN');
  }

  private recordFailedPinAttempt(
    ip: string,
    timestamp: number,
    existing?: {
      failed_count: number;
      window_started_at: number;
      blocked_until: number;
    },
  ): void {
    const expiredWindow =
      !existing || timestamp - Number(existing.window_started_at) >= SUBMIT_WINDOW_MS;
    const windowStartedAt = expiredWindow ? timestamp : Number(existing.window_started_at);
    const failedCount = (expiredWindow ? 0 : Number(existing.failed_count)) + 1;
    const blockedUntil =
      failedCount >= MAX_FAILED_SUBMITS ? timestamp + SUBMIT_BLOCK_MS : 0;

    if (!existing) {
      this.sql.exec(
        'INSERT INTO ip_submit_limits (ip, failed_count, window_started_at, blocked_until) VALUES (?, ?, ?, ?)',
        ip,
        failedCount,
        windowStartedAt,
        blockedUntil,
      );
    } else {
      this.sql.exec(
        'UPDATE ip_submit_limits SET failed_count = ?, window_started_at = ?, blocked_until = ? WHERE ip = ?',
        failedCount,
        windowStartedAt,
        blockedUntil,
        ip,
      );
    }
  }

  private async handleCreate(ip: string, timestamp: number): Promise<Response> {
    const totalRows = this.sql
      .exec<{ cnt: number }>('SELECT COUNT(*) AS cnt FROM sessions')
      .toArray();
    const totalActive = Number(totalRows[0]?.cnt ?? 0);
    if (totalActive >= MAX_SESSIONS) {
      return jsonResponse({ error: 'TOO_MANY_SESSIONS' }, 429);
    }

    const ipRows = this.sql
      .exec<{ cnt: number }>('SELECT COUNT(*) AS cnt FROM sessions WHERE ip = ?', ip)
      .toArray();
    const ipActive = Number(ipRows[0]?.cnt ?? 0);
    if (ipActive >= MAX_SESSIONS_PER_IP) {
      return jsonResponse({ error: 'TOO_MANY_SESSIONS' }, 429);
    }

    const code = this.uniquePin();
    const pollToken = this.createPollTokenFn();
    const pollTokenHash = await hashToken(pollToken);

    this.sql.exec(
      'INSERT INTO sessions (pin, ip, created_at, poll_token_hash, payload, failed_attempts) VALUES (?, ?, ?, ?, NULL, 0)',
      code,
      ip,
      timestamp,
      pollTokenHash,
    );
    await this.scheduleNextAlarm();

    return jsonResponse({
      code,
      pollToken,
      expiresInSeconds: REMOTE_SESSION_TTL_SECONDS,
    });
  }

  private async handleSubmit(
    request: Request,
    ip: string,
    timestamp: number,
  ): Promise<Response> {
    const limitRows = this.sql
      .exec<{
        failed_count: number;
        window_started_at: number;
        blocked_until: number;
      }>(
        'SELECT failed_count, window_started_at, blocked_until FROM ip_submit_limits WHERE ip = ?',
        ip,
      )
      .toArray();
    const limitRow = limitRows[0];
    if (limitRow && Number(limitRow.blocked_until) > timestamp) {
      return jsonResponse({ error: 'TOO_MANY_ATTEMPTS' }, 429);
    }

    let body: Record<string, unknown>;
    try {
      const parsed = await request.json();
      if (!parsed || typeof parsed !== 'object') {
        return jsonResponse({ error: 'INVALID_CREDENTIALS' }, 400);
      }
      body = parsed as Record<string, unknown>;
    } catch {
      return jsonResponse({ error: 'INVALID_CREDENTIALS' }, 400);
    }

    let resolvedServer = body.server;
    if (typeof body.server === 'string') {
      const trimmedServer = body.server.trim();
      if (trimmedServer && isRubricaCode(trimmedServer)) {
        const fromRubrica = resolveRubricaCode(trimmedServer, this.rubricaIndex);
        if (!fromRubrica) {
          return jsonResponse({ error: 'UNKNOWN_SERVER_CODE' }, 400);
        }
        resolvedServer = fromRubrica;
      }
    }

    const code = typeof body.code === 'string' ? body.code.trim() : '';
    const sessionRows = isValidPin(code)
      ? this.sql
          .exec<{
            pin: string;
            payload: string | null;
            failed_attempts: number;
          }>('SELECT pin, payload, failed_attempts FROM sessions WHERE pin = ?', code)
          .toArray()
      : [];
    const session = sessionRows[0];

    if (!session) {
      this.recordFailedPinAttempt(ip, timestamp, limitRow);
      return jsonResponse({ error: 'SESSION_NOT_FOUND' }, 404);
    }

    if (session.payload !== null) {
      return jsonResponse({ error: 'SESSION_ALREADY_COMPLETED' }, 409);
    }

    const credentials = readCredentials({
      ...body,
      server: resolvedServer,
    });

    if (!credentials) {
      const nextFailed = Number(session.failed_attempts) + 1;
      if (nextFailed >= MAX_PIN_VALIDATION_FAILURES) {
        this.sql.exec('DELETE FROM sessions WHERE pin = ?', code);
      } else {
        this.sql.exec(
          'UPDATE sessions SET failed_attempts = ? WHERE pin = ?',
          nextFailed,
          code,
        );
      }
      return jsonResponse({ error: 'INVALID_CREDENTIALS' }, 400);
    }

    const payload = JSON.stringify(createVersionedPayload(credentials));
    this.sql.exec('UPDATE sessions SET payload = ? WHERE pin = ?', payload, code);
    this.sql.exec('DELETE FROM ip_submit_limits WHERE ip = ?', ip);
    return jsonResponse({ ok: true });
  }

  private async handleStatus(request: Request, code: string): Promise<Response> {
    const sessionRows = isValidPin(code)
      ? this.sql
          .exec<{
            pin: string;
            poll_token_hash: string;
            payload: string | null;
          }>('SELECT pin, poll_token_hash, payload FROM sessions WHERE pin = ?', code)
          .toArray()
      : [];
    const session = sessionRows[0];

    const suppliedToken = extractBearerToken(request.headers.get('Authorization'));
    const suppliedHash = await hashToken(suppliedToken || '');
    const targetHash = session ? String(session.poll_token_hash) : suppliedHash;
    const hashMatches = constantTimeEqual(targetHash, suppliedHash);

    if (!session || !suppliedToken || !hashMatches) {
      return jsonResponse({ error: 'SESSION_NOT_FOUND' }, 404);
    }

    if (session.payload === null) {
      return jsonResponse({ status: 'waiting' });
    }

    this.sql.exec('DELETE FROM sessions WHERE pin = ?', code);
    const credentials = JSON.parse(String(session.payload));
    return jsonResponse({
      status: 'ready',
      credentials,
    });
  }

  private handleRubrica(code: string, ip: string, timestamp: number): Response {
    const limitRows = this.sql
      .exec<{
        request_count: number;
        window_started_at: number;
      }>('SELECT request_count, window_started_at FROM ip_rubrica_limits WHERE ip = ?', ip)
      .toArray();
    const existing = limitRows[0];

    if (!existing || timestamp - Number(existing.window_started_at) >= RUBRICA_WINDOW_MS) {
      if (!existing) {
        this.sql.exec(
          'INSERT INTO ip_rubrica_limits (ip, request_count, window_started_at) VALUES (?, 1, ?)',
          ip,
          timestamp,
        );
      } else {
        this.sql.exec(
          'UPDATE ip_rubrica_limits SET request_count = 1, window_started_at = ? WHERE ip = ?',
          timestamp,
          ip,
        );
      }
    } else {
      const count = Number(existing.request_count);
      if (count >= MAX_RUBRICA_REQUESTS_PER_MINUTE) {
        return jsonResponse({ error: 'TOO_MANY_REQUESTS' }, 429);
      }
      this.sql.exec(
        'UPDATE ip_rubrica_limits SET request_count = ? WHERE ip = ?',
        count + 1,
        ip,
      );
    }

    const server = resolveRubricaCode(code, this.rubricaIndex);
    if (!server) {
      return jsonResponse({ error: 'UNKNOWN_SERVER_CODE' }, 404);
    }
    return jsonResponse({ server });
  }

  async fetch(request: Request): Promise<Response> {
    this.ensureSchema();
    const timestamp = this.now();
    this.cleanupExpired(timestamp);

    const url = new URL(request.url);
    const ip = clientIpFromRequest(request);

    if (request.method === 'POST' && url.pathname === '/api/pair/create') {
      return this.handleCreate(ip, timestamp);
    }

    if (request.method === 'POST' && url.pathname === '/api/pair/submit') {
      return this.handleSubmit(request, ip, timestamp);
    }

    if (request.method === 'GET' && url.pathname.startsWith('/api/pair/status/')) {
      const code = decodeURIComponent(url.pathname.slice('/api/pair/status/'.length));
      return this.handleStatus(request, code);
    }

    if (request.method === 'GET' && url.pathname.startsWith('/api/rubrica/')) {
      const code = decodeURIComponent(url.pathname.slice('/api/rubrica/'.length));
      return this.handleRubrica(code, ip, timestamp);
    }

    return jsonResponse({ error: 'NOT_FOUND' }, 404);
  }

  async alarm(): Promise<void> {
    this.ensureSchema();
    const timestamp = this.now();
    this.cleanupExpired(timestamp);
    await this.scheduleNextAlarm();
  }
}

export async function handleWorkerRequest(request: Request, env: Env): Promise<Response> {
  const cors = evaluateCors(request, env.ALLOWED_ORIGINS);
  if (!cors.allowed) {
    return jsonResponse({ error: 'ORIGIN_NOT_ALLOWED' }, 403);
  }

  if (request.method === 'OPTIONS') {
    return new Response(null, {
      status: 204,
      headers: cors.headers,
    });
  }

  if (request.method !== 'GET' && request.method !== 'POST') {
    return withCorsHeaders(jsonResponse({ error: 'METHOD_NOT_ALLOWED' }, 405), cors.headers);
  }

  const url = new URL(request.url);

  if (request.method === 'GET' && url.pathname === '/healthz') {
    return withCorsHeaders(
      new Response('ok', {
        status: 200,
        headers: {
          'Content-Type': 'text/plain; charset=utf-8',
          'Cache-Control': 'no-store',
        },
      }),
      cors.headers,
    );
  }

  if (request.method === 'GET' && url.pathname === '/') {
    const html = renderSubmissionPage(url.searchParams.get('code'));
    return withCorsHeaders(
      new Response(html, {
        status: 200,
        headers: {
          'Content-Type': 'text/html; charset=utf-8',
          'Cache-Control': 'no-store',
        },
      }),
      cors.headers,
    );
  }

  if (
    (request.method === 'POST' && url.pathname === '/api/pair/create') ||
    (request.method === 'POST' && url.pathname === '/api/pair/submit') ||
    (request.method === 'GET' && url.pathname.startsWith('/api/pair/status/')) ||
    (request.method === 'GET' && url.pathname.startsWith('/api/rubrica/'))
  ) {
    const id = env.PAIRING_HUB.idFromName('global');
    const stub = env.PAIRING_HUB.get(id);
    const response = await stub.fetch(request);
    return withCorsHeaders(response, cors.headers);
  }

  return withCorsHeaders(jsonResponse({ error: 'NOT_FOUND' }, 404), cors.headers);
}

export default {
  fetch(request: Request, env: Env): Promise<Response> {
    return handleWorkerRequest(request, env);
  },
};
