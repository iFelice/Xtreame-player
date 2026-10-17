import { createHash, randomBytes, randomInt, timingSafeEqual } from 'crypto';
import type { Request, Response } from 'express';

export const REMOTE_SESSION_TTL_MS = 10 * 60 * 1000;
const MAX_SESSIONS = 100;
const MAX_SESSIONS_PER_IP = 5;
const SUBMIT_WINDOW_MS = 10 * 60 * 1000;
const SUBMIT_BLOCK_MS = 15 * 60 * 1000;
const MAX_FAILED_SUBMITS = 10;

interface Credentials {
  server: string;
  username: string;
  password: string;
  originalLink?: string;
}

interface RemoteSession {
  createdAt: number;
  credentials: Credentials | null;
  ip: string;
  pollTokenHash: Buffer;
}

interface AttemptState {
  blockedUntil: number;
  count: number;
  windowStartedAt: number;
}

interface RemoteSessionOptions {
  now?: () => number;
  createPin?: () => string;
  createPollToken?: () => string;
}

function hashToken(token: string): Buffer {
  return createHash('sha256').update(token).digest();
}

function requestIp(req: Request): string {
  return req.ip || req.socket.remoteAddress || 'unknown';
}

function readString(value: unknown, maxLength: number): string | null {
  if (typeof value !== 'string') return null;
  const clean = value.trim();
  if (!clean || clean.length > maxLength) return null;
  return clean;
}

function readCredentials(body: unknown): Credentials | null {
  if (!body || typeof body !== 'object') return null;
  const values = body as Record<string, unknown>;
  const server = readString(values.server, 2048);
  const username = readString(values.username, 512);
  const password = readString(values.password, 512);
  if (!server || !username || !password) return null;

  try {
    const parsed = new URL(server);
    if (parsed.protocol !== 'http:' && parsed.protocol !== 'https:') return null;
  } catch {
    return null;
  }

  const originalLinkValue = values.originalLink === undefined
    ? undefined
    : readString(values.originalLink, 4096);
  if (values.originalLink !== undefined && !originalLinkValue) return null;
  const originalLink = originalLinkValue || undefined;

  return {
    server: server.replace(/\/+$/, ''),
    username,
    password,
    originalLink,
  };
}

export function createRemoteSessionService(options: RemoteSessionOptions = {}) {
  const now = options.now || Date.now;
  const createPin = options.createPin || (() => randomInt(100000, 1000000).toString());
  const createPollToken = options.createPollToken || (() => randomBytes(32).toString('hex'));
  const sessions = new Map<string, RemoteSession>();
  const submitAttempts = new Map<string, AttemptState>();

  const deleteExpired = (timestamp = now()): void => {
    for (const [code, session] of sessions) {
      if (timestamp - session.createdAt >= REMOTE_SESSION_TTL_MS) sessions.delete(code);
    }
  };

  const uniquePin = (): string => {
    for (let attempt = 0; attempt < 1_000_000; attempt += 1) {
      const code = createPin();
      if (!sessions.has(code)) return code;
    }
    throw new Error('Impossibile generare un PIN univoco');
  };

  const create = (req: Request, res: Response) => {
    const timestamp = now();
    deleteExpired(timestamp);
    const ip = requestIp(req);
    const sessionsForIp = [...sessions.values()].filter((session) => session.ip === ip).length;
    if (sessions.size >= MAX_SESSIONS || sessionsForIp >= MAX_SESSIONS_PER_IP) {
      return res.status(429).json({ error: 'TOO_MANY_SESSIONS' });
    }

    const code = uniquePin();
    const pollToken = createPollToken();
    sessions.set(code, {
      createdAt: timestamp,
      credentials: null,
      ip,
      pollTokenHash: hashToken(pollToken),
    });
    return res.json({
      code,
      pollToken,
      expiresInSeconds: REMOTE_SESSION_TTL_MS / 1000,
    });
  };

  const failedSubmit = (ip: string, timestamp: number): number => {
    const existing = submitAttempts.get(ip);
    const state = !existing || timestamp - existing.windowStartedAt >= SUBMIT_WINDOW_MS
      ? { blockedUntil: 0, count: 0, windowStartedAt: timestamp }
      : existing;
    state.count += 1;
    if (state.count >= MAX_FAILED_SUBMITS) state.blockedUntil = timestamp + SUBMIT_BLOCK_MS;
    submitAttempts.set(ip, state);
    return 404;
  };

  const submit = (req: Request, res: Response) => {
    const timestamp = now();
    deleteExpired(timestamp);
    const ip = requestIp(req);
    const attempts = submitAttempts.get(ip);
    if (attempts && attempts.blockedUntil > timestamp) {
      return res.status(429).json({ error: 'TOO_MANY_ATTEMPTS' });
    }

    const code = typeof req.body?.code === 'string' ? req.body.code.trim() : '';
    const session = /^\d{6}$/.test(code) ? sessions.get(code) : undefined;
    if (!session) {
      return res.status(failedSubmit(ip, timestamp)).json({ error: 'SESSION_NOT_FOUND' });
    }
    if (session.credentials) {
      return res.status(409).json({ error: 'SESSION_ALREADY_COMPLETED' });
    }

    const credentials = readCredentials(req.body);
    if (!credentials) {
      return res.status(400).json({ error: 'INVALID_CREDENTIALS' });
    }
    session.credentials = credentials;
    submitAttempts.delete(ip);
    return res.json({ success: true });
  };

  const status = (req: Request, res: Response) => {
    const timestamp = now();
    deleteExpired(timestamp);
    const code = req.params.code;
    const session = sessions.get(code);
    const suppliedToken = req.get('X-Poll-Token');
    const suppliedHash = hashToken(suppliedToken || '');
    const tokenMatches = Boolean(
      session && suppliedToken && timingSafeEqual(session.pollTokenHash, suppliedHash),
    );
    if (!session || !tokenMatches) {
      return res.status(404).json({ error: 'SESSION_NOT_FOUND' });
    }
    if (!session.credentials) return res.json({ status: 'pending' });

    const credentials = session.credentials;
    sessions.delete(code);
    return res.json({ status: 'completed', data: credentials });
  };

  return { create, deleteExpired, sessions, status, submit, submitAttempts };
}
