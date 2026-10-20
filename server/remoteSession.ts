import type { Request, Response } from 'express';
import {
  constantTimeEqual,
  createPin as defaultCreatePin,
  createPollToken as defaultCreatePollToken,
  hashTokenSync,
  isValidPin,
  MAX_FAILED_SUBMITS,
  MAX_SESSIONS,
  MAX_SESSIONS_PER_IP,
  readCredentials,
  REMOTE_SESSION_TTL_MS,
  REMOTE_SESSION_TTL_SECONDS,
  SUBMIT_BLOCK_MS,
  SUBMIT_WINDOW_MS,
  type Credentials,
} from '../shared/pairing';

export { REMOTE_SESSION_TTL_MS, readCredentials, type Credentials };

interface RemoteSession {
  createdAt: number;
  credentials: Credentials | null;
  ip: string;
  pollTokenHash: string;
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

function requestIp(req: Request): string {
  return req.ip || req.socket.remoteAddress || 'unknown';
}

export function createRemoteSessionService(options: RemoteSessionOptions = {}) {
  const now = options.now || Date.now;
  const createPin = options.createPin || (() => defaultCreatePin());
  const createPollToken = options.createPollToken || (() => defaultCreatePollToken());
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
    if (sessions.size >= MAX_SESSIONS) {
      return res.status(429).json({ error: 'TOO_MANY_SESSIONS' });
    }

    const sessionsForIp = [...sessions.entries()]
      .filter(([, session]) => session.ip === ip);
    if (sessionsForIp.length >= MAX_SESSIONS_PER_IP) {
      const oldestPending = sessionsForIp
        .filter(([, session]) => !session.credentials)
        .sort((left, right) => left[1].createdAt - right[1].createdAt)[0];
      if (!oldestPending) {
        return res.status(429).json({ error: 'TOO_MANY_SESSIONS' });
      }
      sessions.delete(oldestPending[0]);
    }

    const code = uniquePin();
    const pollToken = createPollToken();
    sessions.set(code, {
      createdAt: timestamp,
      credentials: null,
      ip,
      pollTokenHash: hashTokenSync(pollToken),
    });
    return res.json({
      code,
      pollToken,
      expiresInSeconds: REMOTE_SESSION_TTL_SECONDS,
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
    const session = isValidPin(code) ? sessions.get(code) : undefined;
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
    const suppliedHash = hashTokenSync(suppliedToken || '');
    const tokenMatches = Boolean(
      session && suppliedToken && constantTimeEqual(session.pollTokenHash, suppliedHash),
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
