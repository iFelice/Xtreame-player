import http, { type Server } from 'http';
import { mkdtempSync } from 'fs';
import { tmpdir } from 'os';
import path from 'path';
import { afterAll, beforeAll, describe, expect, it } from 'vitest';

process.env.ALLOWED_HOSTS_FILE = path.join(
  mkdtempSync(path.join(tmpdir(), 'xtream-provider-access-')),
  'allowed-hosts.json',
);
const { app, allowedOrigins, signStreamUrl } = await import('../server');

const servers: Server[] = [];
let proxyPort = 0;

function listen(server: Server): Promise<number> {
  servers.push(server);
  return new Promise<number>((resolve) =>
    server.listen(0, '127.0.0.1', () => {
      const address = server.address();
      if (!address || typeof address === 'string') throw new Error('Server address unavailable');
      resolve(address.port);
    }),
  );
}

function originOf(port: number): string {
  return `http://127.0.0.1:${port}`;
}

interface XtreamProviderOptions {
  auth?: number;
  streams?: Buffer | string;
  redirectTo?: string;
}

/** Minimal fake Xtream provider: login endpoint, one action, one media path. */
function createProvider(options: XtreamProviderOptions = {}) {
  const state = { requests: 0, logins: 0 };
  const server = http.createServer((req, res) => {
    state.requests += 1;
    const url = new URL(req.url || '/', 'http://127.0.0.1');

    if (url.pathname === '/player_api.php') {
      if (!url.searchParams.has('action')) {
        state.logins += 1;
        res.writeHead(200, { 'Content-Type': 'application/json' });
        res.end(JSON.stringify({ user_info: { auth: options.auth ?? 1, status: 'Active' } }));
        return;
      }
      res.writeHead(200, { 'Content-Type': 'application/json' });
      res.end(JSON.stringify([{ stream_id: 7, name: 'Canale demo' }]));
      return;
    }

    if (options.redirectTo && url.pathname.startsWith('/live/')) {
      res.writeHead(302, { Location: options.redirectTo });
      res.end();
      return;
    }

    res.writeHead(200, { 'Content-Type': 'video/mp2t' });
    res.end(options.streams ?? 'TS-DATA');
  });
  return { server, state };
}

function apiGet(requestPath: string): Promise<{ status: number; body: string }> {
  return new Promise((resolve, reject) => {
    http
      .get({ host: '127.0.0.1', port: proxyPort, path: requestPath }, (res) => {
        let body = '';
        res.setEncoding('utf8');
        res.on('data', (chunk) => (body += chunk));
        res.on('end', () => resolve({ status: res.statusCode ?? 0, body }));
      })
      .on('error', reject);
  });
}

function apiPost(
  requestPath: string,
  payload: unknown,
): Promise<{ status: number; body: string }> {
  return new Promise((resolve, reject) => {
    const data = JSON.stringify(payload);
    const request = http.request(
      {
        host: '127.0.0.1',
        port: proxyPort,
        path: requestPath,
        method: 'POST',
        headers: { 'Content-Type': 'application/json', 'Content-Length': Buffer.byteLength(data) },
      },
      (res) => {
        let body = '';
        res.setEncoding('utf8');
        res.on('data', (chunk) => (body += chunk));
        res.on('end', () => resolve({ status: res.statusCode ?? 0, body }));
      },
    );
    request.on('error', reject);
    request.end(data);
  });
}

const loginPathFor = (origin: string) =>
  `/api/proxy/api?url=${encodeURIComponent(`${origin}/player_api.php?username=u&password=p`)}`;
const actionPathFor = (origin: string) =>
  `/api/proxy/api?url=${encodeURIComponent(
    `${origin}/player_api.php?username=u&password=p&action=get_live_streams`,
  )}`;
const streamPathFor = (target: string, signature?: string) =>
  `/api/proxy/stream?url=${encodeURIComponent(target)}${signature ? `&safe=${signature}` : ''}`;

beforeAll(async () => {
  proxyPort = await listen(app.listen(0, '127.0.0.1'));
});

afterAll(async () => {
  await Promise.all(
    servers.splice(0).map(
      (server) =>
        new Promise<void>((resolve) => {
          server.close(() => resolve());
          server.closeAllConnections?.();
        }),
    ),
  );
});

describe('closed proxy: provider admission through login', () => {
  it('adds the origin of a successful login and forwards its API actions', async () => {
    const provider = createProvider({ auth: 1 });
    const providerPort = await listen(provider.server);
    const origin = originOf(providerPort);

    const login = await apiGet(loginPathFor(origin));
    expect(login.status).toBe(200);
    expect(JSON.parse(login.body).user_info.auth).toBe(1);
    expect(allowedOrigins.isAllowed(origin)).toBe(true);
    expect(provider.state.logins).toBe(1);

    const action = await apiGet(actionPathFor(origin));
    expect(action.status).toBe(200);
    expect(JSON.parse(action.body)).toEqual([{ stream_id: 7, name: 'Canale demo' }]);
  });

  it('does not add the origin when the login answers with auth 0', async () => {
    const provider = createProvider({ auth: 0 });
    const providerPort = await listen(provider.server);
    const origin = originOf(providerPort);

    const login = await apiGet(loginPathFor(origin));
    expect(login.status).toBe(200); // the provider's own response is forwarded
    expect(JSON.parse(login.body).user_info.auth).toBe(0);
    expect(allowedOrigins.isAllowed(origin)).toBe(false);

    const action = await apiGet(actionPathFor(origin));
    expect(action.status).toBe(403);
    expect(JSON.parse(action.body)).toEqual({ error: 'PROVIDER_NOT_ALLOWED' });
  });

  it('answers 403 PROVIDER_NOT_ALLOWED to an action toward a never-used origin without contacting it', async () => {
    const provider = createProvider({ auth: 1 });
    const providerPort = await listen(provider.server);

    const action = await apiGet(actionPathFor(originOf(providerPort)));

    expect(action.status).toBe(403);
    expect(JSON.parse(action.body)).toEqual({ error: 'PROVIDER_NOT_ALLOWED' });
    expect(provider.state.requests).toBe(0);
  });

  it('also registers an origin through the /api/xtream/test login', async () => {
    const provider = createProvider({ auth: 1 });
    const providerPort = await listen(provider.server);
    const origin = originOf(providerPort);

    const response = await apiPost('/api/xtream/test', {
      host: origin,
      username: 'u',
      password: 'p',
    });

    expect(response.status).toBe(200);
    expect(JSON.parse(response.body).success).toBe(true);
    expect(allowedOrigins.isAllowed(origin)).toBe(true);
  });
});

describe('closed proxy: streams, redirects and signatures', () => {
  it('follows redirects that start from an allowed origin', async () => {
    const edge = createProvider(); // never logged in: reachable only via redirect
    const edgePort = await listen(edge.server);
    const redirecting = createProvider({
      redirectTo: `${originOf(edgePort)}/edge/segment-1.ts`,
    });
    const redirectingPort = await listen(redirecting.server);
    const origin = originOf(redirectingPort);

    await apiGet(loginPathFor(origin));
    const stream = await apiGet(streamPathFor(`${origin}/live/u/p/1.m3u8`));

    expect(stream.status).toBe(200);
    expect(stream.body).toBe('TS-DATA');
    expect(edge.state.requests).toBe(1);
  });

  it('admits a server-signed stream URL toward an unlisted origin', async () => {
    const edge = createProvider();
    const edgePort = await listen(edge.server);
    const target = `${originOf(edgePort)}/cdn-only/segment-42.ts`;

    const signed = await apiGet(streamPathFor(target, signStreamUrl(target)));

    expect(signed.status).toBe(200);
    expect(signed.body).toBe('TS-DATA');
  });

  it('rejects a stream URL with a tampered signature and an unsigned URL toward an unlisted origin', async () => {
    const edge = createProvider();
    const edgePort = await listen(edge.server);
    const target = `${originOf(edgePort)}/cdn-only/segment-43.ts`;
    const signature = signStreamUrl(target);
    const tampered = `${signature.slice(0, -1)}${signature.endsWith('0') ? '1' : '0'}`;

    const tamperedResult = await apiGet(streamPathFor(target, tampered));
    expect(tamperedResult.status).toBe(403);
    expect(JSON.parse(tamperedResult.body)).toEqual({ error: 'PROVIDER_NOT_ALLOWED' });

    const unsignedResult = await apiGet(streamPathFor(target));
    expect(unsignedResult.status).toBe(403);
    expect(edge.state.requests).toBe(0);
  });
});
