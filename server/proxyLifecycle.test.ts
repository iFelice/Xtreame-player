import http, { type Server } from 'http';
import { afterEach, describe, expect, it } from 'vitest';
import { app } from '../server';

const servers: Server[] = [];

async function listen(server: Server): Promise<number> {
  servers.push(server);
  if (!server.listening) {
    await new Promise<void>((resolve) => server.listen(0, '127.0.0.1', resolve));
  }
  const address = server.address();
  if (!address || typeof address === 'string') throw new Error('Server address unavailable');
  return address.port;
}

function waitForClose(register: (resolve: () => void) => void): Promise<void> {
  return new Promise<void>((resolve, reject) => {
    const timeout = setTimeout(() => reject(new Error('Upstream socket remained open')), 1_000);
    register(() => {
      clearTimeout(timeout);
      resolve();
    });
  });
}

afterEach(async () => {
  await Promise.all(servers.splice(0).map((server) => new Promise<void>((resolve) => {
    server.close(() => resolve());
    server.closeAllConnections?.();
  })));
});

describe('proxy connection lifecycle', () => {
  it('closes a mislabeled infinite TS upstream when the streaming client disconnects', async () => {
    let interval: ReturnType<typeof setInterval> | undefined;
    let upstreamClosedResolve: (() => void) | undefined;
    const upstreamClosed = waitForClose((resolve) => { upstreamClosedResolve = resolve; });
    const provider = http.createServer((_req, res) => {
      res.writeHead(200, { 'Content-Type': 'application/vnd.apple.mpegurl' });
      interval = setInterval(() => res.write(Buffer.alloc(1024, 1)), 10);
      res.on('close', () => {
        if (interval) clearInterval(interval);
        upstreamClosedResolve?.();
      });
    });
    const providerPort = await listen(provider);
    const proxyPort = await listen(app.listen(0, '127.0.0.1'));

    await new Promise<void>((resolve, reject) => {
      const client = http.get(
        `http://127.0.0.1:${proxyPort}/api/proxy/stream?url=${encodeURIComponent(`http://127.0.0.1:${providerPort}/live.m3u8`)}`,
        (response) => {
          response.once('data', () => {
            client.destroy();
            resolve();
          });
        },
      );
      client.on('error', (error) => {
        if ((error as NodeJS.ErrnoException).code !== 'ECONNRESET') reject(error);
      });
    });

    await upstreamClosed;
  });

  it('aborts the upstream request when the client disconnects before the provider responds', async () => {
    let requestStartedResolve: (() => void) | undefined;
    let upstreamClosedResolve: (() => void) | undefined;
    const requestStarted = new Promise<void>((resolve) => { requestStartedResolve = resolve; });
    const upstreamClosed = waitForClose((resolve) => { upstreamClosedResolve = resolve; });
    const provider = http.createServer((req, res) => {
      requestStartedResolve?.();
      req.on('close', () => upstreamClosedResolve?.());
      setTimeout(() => res.end('late'), 2_000).unref();
    });
    const providerPort = await listen(provider);
    const proxyPort = await listen(app.listen(0, '127.0.0.1'));
    const client = http.get(
      `http://127.0.0.1:${proxyPort}/api/proxy/stream?url=${encodeURIComponent(`http://127.0.0.1:${providerPort}/slow`)}`,
    );
    client.on('error', () => {});

    await requestStarted;
    client.destroy();

    await upstreamClosed;
  });

  it('returns a provider 403 without retrying the API request', async () => {
    let requestCount = 0;
    const provider = http.createServer((_req, res) => {
      requestCount += 1;
      res.writeHead(403, { 'Content-Type': 'application/json' });
      res.end('{"error":"forbidden"}');
    });
    const providerPort = await listen(provider);
    const proxyPort = await listen(app.listen(0, '127.0.0.1'));

    const result = await new Promise<{ body: string; status: number | undefined }>((resolve, reject) => {
      http.get(
        `http://127.0.0.1:${proxyPort}/api/proxy/api?url=${encodeURIComponent(`http://127.0.0.1:${providerPort}/api`)}`,
        (response) => {
          let body = '';
          response.setEncoding('utf8');
          response.on('data', (chunk) => { body += chunk; });
          response.on('end', () => resolve({ body, status: response.statusCode }));
        },
      ).on('error', reject);
    });

    expect(result.status).toBe(403);
    expect(JSON.parse(result.body)).toEqual({ error: 'forbidden' });
    expect(requestCount).toBe(1);
  });
});
