import { describe, expect, it } from 'vitest';
import type { Request, Response } from 'express';
import { createRemoteSessionService, REMOTE_SESSION_TTL_MS } from './remoteSession';

interface TestResponse {
  body: any;
  statusCode: number;
}

function request(options: {
  body?: unknown;
  code?: string;
  ip?: string;
  pollToken?: string;
} = {}): Request {
  return {
    body: options.body,
    get: (name: string) => name.toLowerCase() === 'x-poll-token' ? options.pollToken : undefined,
    ip: options.ip || '198.51.100.1',
    params: { code: options.code || '' },
    socket: {},
  } as unknown as Request;
}

function response(): Response & TestResponse {
  const res: any = {
    body: undefined,
    statusCode: 200,
    status(code: number) {
      this.statusCode = code;
      return this;
    },
    json(body: unknown) {
      this.body = body;
      return this;
    },
  };
  return res as Response & TestResponse;
}

function createSession(
  service: ReturnType<typeof createRemoteSessionService>,
  ip = '198.51.100.1',
): TestResponse {
  const res = response();
  service.create(request({ ip }), res);
  return res;
}

function validCredentials(code: string) {
  return {
    code,
    password: 'secret',
    server: 'https://example.com',
    username: 'viewer',
  };
}

describe('remote TV sessions', () => {
  it('generates a unique PIN when a random PIN collides', () => {
    const pins = ['111111', '111111', '222222'];
    const service = createRemoteSessionService({
      createPin: () => pins.shift() || '333333',
      createPollToken: () => 'a'.repeat(64),
    });

    const first = createSession(service, '198.51.100.1');
    const second = createSession(service, '198.51.100.2');

    expect(first.body.code).toBe('111111');
    expect(second.body.code).toBe('222222');
  });

  it('returns completed credentials once and deletes the session atomically', () => {
    const service = createRemoteSessionService({ createPin: () => '123456' });
    const created = createSession(service);
    const submitted = response();
    service.submit(request({ body: validCredentials('123456') }), submitted);

    const firstPoll = response();
    service.status(request({ code: '123456', pollToken: created.body.pollToken }), firstPoll);
    const secondPoll = response();
    service.status(request({ code: '123456', pollToken: created.body.pollToken }), secondPoll);

    expect(firstPoll.body).toEqual({
      status: 'completed',
      data: {
        password: 'secret',
        server: 'https://example.com',
        username: 'viewer',
      },
    });
    expect(secondPoll.statusCode).toBe(404);
  });

  it('returns the same 404 for an incorrect poll token', () => {
    const service = createRemoteSessionService({ createPin: () => '123456' });
    createSession(service);
    const res = response();

    service.status(request({ code: '123456', pollToken: 'incorrect' }), res);

    expect(res.statusCode).toBe(404);
    expect(res.body).toEqual({ error: 'SESSION_NOT_FOUND' });
  });

  it('expires a session immediately without waiting for periodic cleanup', () => {
    let timestamp = 1_000;
    const service = createRemoteSessionService({
      createPin: () => '123456',
      now: () => timestamp,
    });
    const created = createSession(service);
    timestamp += REMOTE_SESSION_TTL_MS;
    const res = response();

    service.status(request({ code: '123456', pollToken: created.body.pollToken }), res);

    expect(res.statusCode).toBe(404);
    expect(service.sessions.size).toBe(0);
  });

  it('rate limits an IP after ten failed submissions', () => {
    const service = createRemoteSessionService();
    for (let attempt = 0; attempt < 10; attempt += 1) {
      const res = response();
      service.submit(request({ body: validCredentials('999999') }), res);
      expect(res.statusCode).toBe(404);
    }
    const blocked = response();

    service.submit(request({ body: validCredentials('999999') }), blocked);

    expect(blocked.statusCode).toBe(429);
  });

  it('rejects a second submission for an already completed PIN with 409', () => {
    const service = createRemoteSessionService({ createPin: () => '123456' });
    createSession(service);
    service.submit(request({ body: validCredentials('123456') }), response());
    const duplicate = response();

    service.submit(request({ body: validCredentials('123456') }), duplicate);

    expect(duplicate.statusCode).toBe(409);
  });

  it('replaces the oldest pending session when an IP creates a sixth session', () => {
    let pin = 100000;
    let timestamp = 1_000;
    const service = createRemoteSessionService({
      createPin: () => String(pin++),
      now: () => timestamp++,
    });
    const oldest = createSession(service);
    for (let count = 1; count < 5; count += 1) createSession(service);

    const sixth = createSession(service);
    const removed = response();
    service.status(request({
      code: oldest.body.code,
      pollToken: oldest.body.pollToken,
    }), removed);

    expect(sixth.statusCode).toBe(200);
    expect(service.sessions.size).toBe(5);
    expect(removed.statusCode).toBe(404);
  });

  it('never replaces a completed session when enforcing the per-IP limit', () => {
    let pin = 100000;
    let timestamp = 1_000;
    const service = createRemoteSessionService({
      createPin: () => String(pin++),
      now: () => timestamp++,
    });
    const completed = createSession(service);
    service.submit(request({ body: validCredentials(completed.body.code) }), response());
    for (let count = 1; count < 5; count += 1) createSession(service);

    expect(createSession(service).statusCode).toBe(200);
    const read = response();
    service.status(request({
      code: completed.body.code,
      pollToken: completed.body.pollToken,
    }), read);

    expect(read.statusCode).toBe(200);
    expect(read.body.status).toBe('completed');
  });

  it('limits active sessions to one hundred in total', () => {
    let pin = 100000;
    const service = createRemoteSessionService({ createPin: () => String(pin++) });
    for (let count = 0; count < 100; count += 1) {
      expect(createSession(service, `198.51.100.${count}` ).statusCode).toBe(200);
    }

    expect(createSession(service, '203.0.113.1').statusCode).toBe(429);
  });
});
