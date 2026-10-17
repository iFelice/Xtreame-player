import { createHmac, timingSafeEqual } from 'crypto';
import type { NextFunction, Request, Response } from 'express';

const COOKIE = 'xtream_access';
const MAX_AGE_SECONDS = 30 * 24 * 60 * 60;

export function requireProductionToken(env: NodeJS.ProcessEnv): void {
  if (env.NODE_ENV === 'production' && env.XTREAM_SAFE_MODE !== '1' && (!env.APP_ACCESS_TOKEN || env.APP_ACCESS_TOKEN.length < 24)) {
    throw new Error('APP_ACCESS_TOKEN deve essere impostato e contenere almeno 24 caratteri in produzione.');
  }
}

const equal = (a: string, b: string) => {
  const left = Buffer.from(a); const right = Buffer.from(b);
  return left.length === right.length && timingSafeEqual(left, right);
};
const mac = (value: string, secret: string) => createHmac('sha256', secret).update(value).digest('hex');

export function createAccessAuth(token: string | undefined, production: boolean) {
  const enabled = Boolean(token);
  const attempts = new Map<string, { count: number; window: number; blockedUntil: number }>();
  const issue = (now = Date.now()) => { const payload = String(now + MAX_AGE_SECONDS * 1000); return `${payload}.${mac(payload, token || '')}`; };
  const verify = (value: string | undefined, now = Date.now()) => {
    if (!enabled || !value) return !enabled;
    const [expires, signature] = value.split('.');
    return Boolean(expires && signature && Number(expires) > now && equal(signature, mac(expires, token || '')));
  };
  const cookieValue = (req: Request) => req.headers.cookie?.split(';').map(v => v.trim()).find(v => v.startsWith(`${COOKIE}=`))?.slice(COOKIE.length + 1);
  const middleware = (req: Request, res: Response, next: NextFunction) => verify(cookieValue(req)) ? next() : res.status(401).json({ error: 'ACCESS_REQUIRED' });
  const unlock = (req: Request, res: Response) => {
    const ip = req.ip || req.socket.remoteAddress || 'unknown'; const now = Date.now();
    const state = attempts.get(ip) || { count: 0, window: now, blockedUntil: 0 };
    if (state.blockedUntil > now) return res.status(429).json({ error: 'TOO_MANY_ATTEMPTS' });
    if (now - state.window >= 60_000) { state.count = 0; state.window = now; }
    const supplied = typeof req.body?.token === 'string' ? req.body.token : '';
    if (!token || !equal(supplied, token)) {
      state.count += 1; if (state.count > 5) state.blockedUntil = now + 10 * 60_000; attempts.set(ip, state);
      return res.status(state.blockedUntil > now ? 429 : 401).json({ error: 'INVALID_TOKEN' });
    }
    attempts.delete(ip);
    res.setHeader('Set-Cookie', `${COOKIE}=${issue(now)}; Path=/; HttpOnly; SameSite=Strict; Max-Age=${MAX_AGE_SECONDS}${production ? '; Secure' : ''}`);
    return res.json({ ok: true });
  };
  return { enabled, issue, verify, middleware, unlock, attempts };
}
