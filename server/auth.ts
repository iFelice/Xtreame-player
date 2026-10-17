import { createHmac, timingSafeEqual } from 'crypto';
import type { NextFunction, Request, Response } from 'express';

const COOKIE_NAME = 'xtream_access';
const MAX_AGE_SECONDS = 30 * 24 * 60 * 60;

interface AttemptState {
  count: number;
  windowStartedAt: number;
  blockedUntil: number;
}

export function requireProductionToken(env: NodeJS.ProcessEnv): void {
  const invalidToken = !env.APP_ACCESS_TOKEN || env.APP_ACCESS_TOKEN.length < 24;
  if (env.NODE_ENV === 'production' && env.XTREAM_SAFE_MODE !== '1' && invalidToken) {
    throw new Error(
      'APP_ACCESS_TOKEN deve essere impostato e contenere almeno 24 caratteri in produzione.',
    );
  }
}

export function isPublicApiPath(pathname: string): boolean {
  return (
    pathname === '/auth/unlock' ||
    pathname === '/runtime-config' ||
    pathname === '/session/submit'
  );
}

function constantTimeEqual(leftValue: string, rightValue: string): boolean {
  const left = Buffer.from(leftValue);
  const right = Buffer.from(rightValue);
  return left.length === right.length && timingSafeEqual(left, right);
}

function signature(value: string, secret: string): string {
  return createHmac('sha256', secret).update(value).digest('hex');
}

export function createAccessAuth(token: string | undefined, production: boolean) {
  const enabled = Boolean(token);
  const attempts = new Map<string, AttemptState>();

  const issue = (now = Date.now()): string => {
    const expiresAt = String(now + MAX_AGE_SECONDS * 1000);
    return `${expiresAt}.${signature(expiresAt, token || '')}`;
  };

  const verify = (value: string | undefined, now = Date.now()): boolean => {
    if (!enabled) return true;
    if (!value) return false;
    const [expiresAt, suppliedSignature] = value.split('.');
    return Boolean(
      expiresAt &&
      suppliedSignature &&
      Number(expiresAt) > now &&
      constantTimeEqual(suppliedSignature, signature(expiresAt, token || '')),
    );
  };

  const readCookie = (req: Request): string | undefined =>
    req.headers.cookie
      ?.split(';')
      .map((value) => value.trim())
      .find((value) => value.startsWith(`${COOKIE_NAME}=`))
      ?.slice(COOKIE_NAME.length + 1);

  const middleware = (req: Request, res: Response, next: NextFunction) => {
    if (verify(readCookie(req))) return next();
    return res.status(401).json({ error: 'ACCESS_REQUIRED' });
  };

  const unlock = (req: Request, res: Response) => {
    const ip = req.ip || req.socket.remoteAddress || 'unknown';
    const now = Date.now();
    const state = attempts.get(ip) || {
      count: 0,
      windowStartedAt: now,
      blockedUntil: 0,
    };

    if (state.blockedUntil > now) {
      return res.status(429).json({ error: 'TOO_MANY_ATTEMPTS' });
    }
    if (now - state.windowStartedAt >= 60_000) {
      state.count = 0;
      state.windowStartedAt = now;
    }

    const supplied = typeof req.body?.token === 'string' ? req.body.token : '';
    if (!token || !constantTimeEqual(supplied, token)) {
      state.count += 1;
      if (state.count > 5) state.blockedUntil = now + 10 * 60_000;
      attempts.set(ip, state);
      return res
        .status(state.blockedUntil > now ? 429 : 401)
        .json({ error: 'INVALID_TOKEN' });
    }

    attempts.delete(ip);
    const secure = production ? '; Secure' : '';
    res.setHeader(
      'Set-Cookie',
      `${COOKIE_NAME}=${issue(now)}; Path=/; HttpOnly; SameSite=Strict; Max-Age=${MAX_AGE_SECONDS}${secure}`,
    );
    return res.json({ ok: true });
  };

  return { enabled, issue, verify, middleware, unlock, attempts };
}
