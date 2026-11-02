import { DatabaseSync } from 'node:sqlite';
import { describe, expect, it } from 'vitest';
import {
  buildRubricaIndex,
  decodeBase64Url,
  encodeBase64Url,
  MAX_FAILED_SUBMITS,
  MAX_SESSIONS,
  MAX_SESSIONS_PER_IP,
  REMOTE_SESSION_TTL_MS,
  SUBMIT_BLOCK_MS,
  VPN_AAD_PREFIX,
  VPN_IV_BYTES,
  VPN_KEY_BYTES,
  VPN_MAX_CIPHERTEXT_BYTES,
  VPN_MIN_CIPHERTEXT_BYTES,
} from '../../../shared/pairing/index.ts';
import worker, {
  PairingHub,
  type DurableObjectIdLike,
  type DurableObjectStateLike,
  type Env,
  type PairingHubOptions,
  type SqlCursorLike,
  type SqlStorageLike,
} from '../src/index.ts';

function createSqliteStorageAdapter(db = new DatabaseSync(':memory:')) {
  let scheduledAlarm: number | null = null;

  const sql: SqlStorageLike = {
    exec<T = Record<string, unknown>>(query: string, ...bindings: unknown[]): SqlCursorLike<T> {
      const trimmed = query.trim();
      if (/^(SELECT|PRAGMA|WITH)/i.test(trimmed)) {
        const stmt = db.prepare(query);
        const rows = stmt.all(...(bindings as Array<string | number | null>)).map((row) => ({
          ...(row as Record<string, unknown>),
        })) as T[];
        return {
          toArray: () => rows,
        };
      }
      if (bindings.length > 0) {
        const stmt = db.prepare(query);
        stmt.run(...(bindings as Array<string | number | null>));
      } else {
        db.exec(query);
      }
      return {
        toArray: () => [],
      };
    },
  };

  const state: DurableObjectStateLike = {
    storage: {
      sql,
      async setAlarm(time: number | Date) {
        scheduledAlarm = typeof time === 'number' ? time : time.getTime();
      },
      async getAlarm() {
        return scheduledAlarm;
      },
    },
  };

  return {
    db,
    state,
    getScheduledAlarm: () => scheduledAlarm,
  };
}

function createTestHarness(
  options: PairingHubOptions & { allowedOrigins?: string } = {},
) {
  const adapter = createSqliteStorageAdapter();
  const instanceNames: string[] = [];

  const env: Env = {
    ALLOWED_ORIGINS: options.allowedOrigins ?? '',
    PAIRING_HUB: {
      idFromName(name: string): DurableObjectIdLike {
        instanceNames.push(name);
        return { toString: () => name };
      },
      get(_id: DurableObjectIdLike) {
        // Instantiate a fresh PairingHub on every request over the same SQLite
        // database to verify that zero state is kept in memory.
        const hub = new PairingHub(adapter.state, env, options);
        return {
          fetch(input: RequestInfo | URL, init?: RequestInit) {
            const req = input instanceof Request ? input : new Request(input, init);
            return hub.fetch(req);
          },
        };
      },
    },
  };

  return {
    adapter,
    env,
    instanceNames,
    fetch: (request: Request) => worker.fetch(request, env),
    runAlarm: async () => {
      const hub = new PairingHub(adapter.state, env, options);
      await hub.alarm();
    },
  };
}

describe('services/pairing-relay', () => {
  it('responds 200 "ok" on GET /healthz', async () => {
    const { fetch } = createTestHarness();
    const res = await fetch(new Request('https://relay.example.workers.dev/healthz'));
    expect(res.status).toBe(200);
    expect(await res.text()).toBe('ok');
  });

  it('validates rubrica.json and rejects duplicate codes across entries', () => {
    const rubricaDiProva = [
      {
        nome: 'Server di prova',
        codici: ['001'],
        server: 'http://server-di-prova.example:8080',
      },
    ];
    expect(buildRubricaIndex(rubricaDiProva).get('001')).toBe(
      'http://server-di-prova.example:8080',
    );

    expect(() =>
      buildRubricaIndex([
        { nome: 'Server A', codici: ['001'], server: 'http://a.esempio:8080' },
        { nome: 'Server B', codici: [' 001 '], server: 'http://b.esempio:8080' },
      ]),
    ).toThrow(/duplicato/i);
  });

  it('creates a session, accepts credentials once, and deletes the session after first ready read', async () => {
    const { fetch, instanceNames } = createTestHarness({
      createPin: () => '123456',
    });

    const createRes = await fetch(
      new Request('https://relay.example.workers.dev/api/pair/create', {
        method: 'POST',
        headers: { 'CF-Connecting-IP': '198.51.100.10' },
      }),
    );
    expect(createRes.status).toBe(200);
    const created = (await createRes.json()) as {
      code: string;
      pollToken: string;
      expiresInSeconds: number;
    };
    expect(created.code).toBe('123456');
    expect(created.pollToken).toMatch(/^[A-Za-z0-9_-]{43,}$/);
    expect(created.expiresInSeconds).toBe(600);
    expect(instanceNames).toContain('global');

    // Status before submit -> waiting
    const waitingRes = await fetch(
      new Request('https://relay.example.workers.dev/api/pair/status/123456', {
        headers: { Authorization: `Bearer ${created.pollToken}` },
      }),
    );
    expect(waitingRes.status).toBe(200);
    expect(await waitingRes.json()).toEqual({ status: 'waiting' });

    // Submit credentials
    const submitRes = await fetch(
      new Request('https://relay.example.workers.dev/api/pair/submit', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'CF-Connecting-IP': '198.51.100.20',
        },
        body: JSON.stringify({
          code: '123456',
          server: 'http://server.esempio:8080/',
          username: 'demo',
          password: 'demo',
        }),
      }),
    );
    expect(submitRes.status).toBe(200);
    expect(await submitRes.json()).toEqual({ ok: true });

    // Second submit on the same PIN -> 409
    const duplicateRes = await fetch(
      new Request('https://relay.example.workers.dev/api/pair/submit', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'CF-Connecting-IP': '198.51.100.20',
        },
        body: JSON.stringify({
          code: '123456',
          server: 'http://server.esempio:8080',
          username: 'demo',
          password: 'demo',
        }),
      }),
    );
    expect(duplicateRes.status).toBe(409);

    // First read after submit -> ready with versioned payload
    const readyRes = await fetch(
      new Request('https://relay.example.workers.dev/api/pair/status/123456', {
        headers: { Authorization: `Bearer ${created.pollToken}` },
      }),
    );
    expect(readyRes.status).toBe(200);
    expect(await readyRes.json()).toEqual({
      status: 'ready',
      credentials: {
        v: 1,
        server: 'http://server.esempio:8080',
        username: 'demo',
        password: 'demo',
      },
    });

    // Second read -> 404 (session deleted after delivery)
    const secondReadRes = await fetch(
      new Request('https://relay.example.workers.dev/api/pair/status/123456', {
        headers: { Authorization: `Bearer ${created.pollToken}` },
      }),
    );
    expect(secondReadRes.status).toBe(404);
  });

  it('creates a VPN session, waits for ciphertext, delivers it once, and rejects a second submit', async () => {
    const { fetch, instanceNames } = createTestHarness({ createPin: () => '123456' });
    const createRes = await fetch(
      new Request('https://relay.example.workers.dev/api/vpn/create', {
        method: 'POST',
        headers: { 'CF-Connecting-IP': '192.168.1.10' },
      }),
    );
    expect(createRes.status).toBe(200);
    const created = (await createRes.json()) as {
      code: string;
      pollToken: string;
      expiresInSeconds: number;
    };
    expect(created).toMatchObject({ code: '123456', expiresInSeconds: 600 });
    expect(instanceNames).toContain('global');

    const statusUrl = 'https://relay.example.workers.dev/api/vpn/status/123456';
    const waitingRes = await fetch(
      new Request(statusUrl, {
        headers: { Authorization: `Bearer ${created.pollToken}` },
      }),
    );
    expect(waitingRes.status).toBe(200);
    expect(await waitingRes.json()).toEqual({ status: 'waiting' });

    const iv = encodeBase64Url(new Uint8Array(VPN_IV_BYTES).fill(23));
    const ciphertext = encodeBase64Url(
      Uint8Array.from({ length: VPN_MIN_CIPHERTEXT_BYTES }, (_, index) => index),
    );
    const submitRequest = () =>
      new Request('https://relay.example.workers.dev/api/vpn/submit', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'CF-Connecting-IP': '192.168.1.20',
        },
        body: JSON.stringify({ code: created.code, iv, ciphertext }),
      });

    const submitRes = await fetch(submitRequest());
    expect(submitRes.status).toBe(200);
    expect(await submitRes.json()).toEqual({ ok: true });

    const duplicateRes = await fetch(submitRequest());
    expect(duplicateRes.status).toBe(409);

    const readyRes = await fetch(
      new Request(statusUrl, {
        headers: { Authorization: `Bearer ${created.pollToken}` },
      }),
    );
    expect(readyRes.status).toBe(200);
    expect(await readyRes.json()).toEqual({ status: 'ready', iv, ciphertext });

    const secondStatusRes = await fetch(
      new Request(statusUrl, {
        headers: { Authorization: `Bearer ${created.pollToken}` },
      }),
    );
    expect(secondStatusRes.status).toBe(404);
    expect(await secondStatusRes.json()).toEqual({ error: 'SESSION_NOT_FOUND' });
  });

  it('returns 404 for an incorrect VPN poll token', async () => {
    const { fetch } = createTestHarness({ createPin: () => '654321' });
    const createRes = await fetch(
      new Request('https://relay.example.workers.dev/api/vpn/create', { method: 'POST' }),
    );
    const created = (await createRes.json()) as { code: string; pollToken: string };

    const wrongTokenRes = await fetch(
      new Request(`https://relay.example.workers.dev/api/vpn/status/${created.code}`, {
        headers: { Authorization: 'Bearer token-sbagliato' },
      }),
    );
    expect(wrongTokenRes.status).toBe(404);
    expect(await wrongTokenRes.json()).toEqual({ error: 'SESSION_NOT_FOUND' });

    const validTokenRes = await fetch(
      new Request(`https://relay.example.workers.dev/api/vpn/status/${created.code}`, {
        headers: { Authorization: `Bearer ${created.pollToken}` },
      }),
    );
    expect(validTokenRes.status).toBe(200);
    expect(await validTokenRes.json()).toEqual({ status: 'waiting' });
  });

  it('rejects malformed VPN IVs and ciphertext sizes and caps request bodies at 32 KiB', async () => {
    const { fetch } = createTestHarness({ createPin: () => '789012' });
    const createRes = await fetch(
      new Request('https://relay.example.workers.dev/api/vpn/create', { method: 'POST' }),
    );
    const created = (await createRes.json()) as { code: string };
    const validIv = encodeBase64Url(new Uint8Array(VPN_IV_BYTES).fill(4));
    const validCiphertext = encodeBase64Url(
      new Uint8Array(VPN_MIN_CIPHERTEXT_BYTES).fill(5),
    );
    const invalidPayloads = [
      { iv: encodeBase64Url(new Uint8Array(VPN_IV_BYTES - 1)), ciphertext: validCiphertext },
      { iv: validIv, ciphertext: encodeBase64Url(new Uint8Array(16)) },
      {
        iv: validIv,
        ciphertext: encodeBase64Url(new Uint8Array(VPN_MAX_CIPHERTEXT_BYTES + 1)),
      },
      { iv: 'invalid!base64url', ciphertext: validCiphertext },
    ];

    for (const payload of invalidPayloads) {
      const invalidRes = await fetch(
        new Request('https://relay.example.workers.dev/api/vpn/submit', {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify({ code: created.code, ...payload }),
        }),
      );
      expect(invalidRes.status).toBe(400);
    }

    const oversizedRes = await fetch(
      new Request('https://relay.example.workers.dev/api/vpn/submit', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          code: created.code,
          iv: validIv,
          ciphertext: 'A'.repeat(33 * 1024),
        }),
      }),
    );
    expect(oversizedRes.status).toBe(413);
  });

  it('serves /vpn with restrictive security headers and does not interpolate query codes into HTML', async () => {
    const { fetch } = createTestHarness();
    const response = await fetch(
      new Request('https://relay.example.workers.dev/vpn?code=482910'),
    );
    expect(response.status).toBe(200);
    expect(response.headers.get('Content-Type')).toBe('text/html; charset=utf-8');
    expect(response.headers.get('Cache-Control')).toBe('no-store');
    expect(response.headers.get('Referrer-Policy')).toBe('no-referrer');
    expect(response.headers.get('Content-Security-Policy')).toBe(
      "default-src 'none'; script-src 'unsafe-inline'; style-src 'unsafe-inline'; connect-src 'self'; base-uri 'none'; form-action 'none'",
    );
    const html = await response.text();
    expect(html).toContain('<title>VPN per FelixVP</title>');
    expect(html).toContain('Incolla il contenuto del file .conf WireGuard');
    // Nessun filtro per tipo: su iPhone `accept=".conf,text/plain"` rendeva il
    // file .conf grigio e non selezionabile. L'input resta un campo file.
    expect(html).toContain('type="file"');
    expect(html).toContain('id="vpn-file"');
    expect(html).not.toContain('accept=');
    expect(html).toContain("Su iPhone il file si trova nell'app File, di solito in Download");
    expect(html).toContain(String.raw`if (text.indexOf('\uFFFD') !== -1) return false;`);
    expect(html).not.toContain('console.log');
    expect(html).not.toContain('482910');
    expect(html).toContain("replace(/\\+/g, '-').replace(/\\//g, '_')");
    expect(html).toContain('if (!/^\\d{6}$/.test(code))');
    const script = html.match(/<script>([\s\S]*?)<\/script>/)?.[1];
    expect(script).toBeDefined();
    expect(() => new Function(script as string)).not.toThrow();
  });

  it('encrypts and relays a WireGuard sample with AES-GCM and authenticates the six-digit code as AAD', async () => {
    const { fetch } = createTestHarness({ createPin: () => '135790' });
    const createdResponse = await fetch(
      new Request('https://relay.example.workers.dev/api/vpn/create', { method: 'POST' }),
    );
    const created = (await createdResponse.json()) as { code: string; pollToken: string };

    const keyBytes = new Uint8Array(VPN_KEY_BYTES);
    const cryptoKey = await crypto.subtle.importKey(
      'raw',
      keyBytes,
      'AES-GCM',
      false,
      ['encrypt', 'decrypt'],
    );
    const ivBytes = new Uint8Array(VPN_IV_BYTES).fill(7);
    const zeroWireGuardKey = 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=';
    const plaintext = [
      '[Interface]',
      `PrivateKey = ${zeroWireGuardKey}`,
      'Address = 192.168.1.10/32',
      '',
      '[Peer]',
      `PublicKey = ${zeroWireGuardKey}`,
      'Endpoint = 192.168.1.20:51820',
      'AllowedIPs = 0.0.0.0/0',
    ].join('\n');
    const aad = new TextEncoder().encode(`${VPN_AAD_PREFIX}${created.code}`);
    const encryptedBytes = new Uint8Array(
      await crypto.subtle.encrypt(
        { name: 'AES-GCM', iv: ivBytes, additionalData: aad },
        cryptoKey,
        new TextEncoder().encode(plaintext),
      ),
    );
    const iv = encodeBase64Url(ivBytes);
    const ciphertext = encodeBase64Url(encryptedBytes);

    const submitResponse = await fetch(
      new Request('https://relay.example.workers.dev/api/vpn/submit', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ code: created.code, iv, ciphertext }),
      }),
    );
    expect(submitResponse.status).toBe(200);

    const statusResponse = await fetch(
      new Request(`https://relay.example.workers.dev/api/vpn/status/${created.code}`, {
        headers: { Authorization: `Bearer ${created.pollToken}` },
      }),
    );
    const received = (await statusResponse.json()) as {
      status: string;
      iv?: string;
      ciphertext?: string;
    };
    expect(received).toEqual({ status: 'ready', iv, ciphertext });

    const receivedIvBytes = decodeBase64Url(received.iv as string);
    const receivedCiphertextBytes = decodeBase64Url(received.ciphertext as string);
    const receivedIv = new Uint8Array(receivedIvBytes.byteLength);
    const receivedCiphertext = new Uint8Array(receivedCiphertextBytes.byteLength);
    receivedIv.set(receivedIvBytes);
    receivedCiphertext.set(receivedCiphertextBytes);
    const decrypted = await crypto.subtle.decrypt(
      {
        name: 'AES-GCM',
        iv: receivedIv,
        additionalData: new TextEncoder().encode(`${VPN_AAD_PREFIX}${created.code}`),
      },
      cryptoKey,
      receivedCiphertext,
    );
    expect(new TextDecoder().decode(decrypted)).toBe(plaintext);

    await expect(
      crypto.subtle.decrypt(
        {
          name: 'AES-GCM',
          iv: receivedIv,
          additionalData: new TextEncoder().encode(`${VPN_AAD_PREFIX}999999`),
        },
        cryptoKey,
        receivedCiphertext,
      ),
    ).rejects.toThrow();
  });

  it('blocks VPN submitters by IP with the same shared limit used by pair submit', async () => {
    let now = 50_000;
    const { fetch } = createTestHarness({ now: () => now });
    const ip = '192.168.1.55';
    const iv = encodeBase64Url(new Uint8Array(VPN_IV_BYTES).fill(9));
    const ciphertext = encodeBase64Url(new Uint8Array(VPN_MIN_CIPHERTEXT_BYTES).fill(8));

    for (let attempt = 0; attempt < MAX_FAILED_SUBMITS; attempt += 1) {
      const response = await fetch(
        new Request('https://relay.example.workers.dev/api/vpn/submit', {
          method: 'POST',
          headers: { 'Content-Type': 'application/json', 'CF-Connecting-IP': ip },
          body: JSON.stringify({ code: '999999', iv, ciphertext }),
        }),
      );
      expect(response.status).toBe(404);
    }

    const blockedVpnResponse = await fetch(
      new Request('https://relay.example.workers.dev/api/vpn/submit', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json', 'CF-Connecting-IP': ip },
        body: JSON.stringify({ code: '999999', iv, ciphertext }),
      }),
    );
    expect(blockedVpnResponse.status).toBe(429);

    const blockedPairResponse = await fetch(
      new Request('https://relay.example.workers.dev/api/pair/submit', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json', 'CF-Connecting-IP': ip },
        body: JSON.stringify({
          code: '999999',
          server: 'http://server.esempio:8080',
          username: 'demo',
          password: 'demo',
        }),
      }),
    );
    expect(blockedPairResponse.status).toBe(429);

    now += SUBMIT_BLOCK_MS + 1;
    const afterBlockResponse = await fetch(
      new Request('https://relay.example.workers.dev/api/vpn/submit', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json', 'CF-Connecting-IP': ip },
        body: JSON.stringify({ code: '999999', iv, ciphertext }),
      }),
    );
    expect(afterBlockResponse.status).toBe(404);
  });

  it('enforces VPN session limits independently from pairing sessions', async () => {
    let nextCode = 100_000;
    const { fetch } = createTestHarness({ createPin: () => String(nextCode++) });
    const sharedIp = '192.168.1.1';

    for (let index = 0; index < MAX_SESSIONS_PER_IP; index += 1) {
      const pairRes = await fetch(
        new Request('https://relay.example.workers.dev/api/pair/create', {
          method: 'POST',
          headers: { 'CF-Connecting-IP': sharedIp },
        }),
      );
      expect(pairRes.status).toBe(200);
    }
    for (let index = 0; index < MAX_SESSIONS_PER_IP; index += 1) {
      const vpnRes = await fetch(
        new Request('https://relay.example.workers.dev/api/vpn/create', {
          method: 'POST',
          headers: { 'CF-Connecting-IP': sharedIp },
        }),
      );
      expect(vpnRes.status).toBe(200);
    }

    const sixthPair = await fetch(
      new Request('https://relay.example.workers.dev/api/pair/create', {
        method: 'POST',
        headers: { 'CF-Connecting-IP': sharedIp },
      }),
    );
    const sixthVpn = await fetch(
      new Request('https://relay.example.workers.dev/api/vpn/create', {
        method: 'POST',
        headers: { 'CF-Connecting-IP': sharedIp },
      }),
    );
    expect(sixthPair.status).toBe(429);
    expect(sixthVpn.status).toBe(429);

    for (let index = 0; index < MAX_SESSIONS - MAX_SESSIONS_PER_IP; index += 1) {
      const pairRes = await fetch(
        new Request('https://relay.example.workers.dev/api/pair/create', {
          method: 'POST',
          headers: { 'CF-Connecting-IP': `192.168.1.${index + 2}` },
        }),
      );
      expect(pairRes.status).toBe(200);
    }
    const firstVpnBeyondPairLimit = await fetch(
      new Request('https://relay.example.workers.dev/api/vpn/create', {
        method: 'POST',
        headers: { 'CF-Connecting-IP': '192.168.1.250' },
      }),
    );
    expect(firstVpnBeyondPairLimit.status).toBe(200);

    for (let index = 0; index < MAX_SESSIONS - MAX_SESSIONS_PER_IP - 1; index += 1) {
      const vpnRes = await fetch(
        new Request('https://relay.example.workers.dev/api/vpn/create', {
          method: 'POST',
          headers: { 'CF-Connecting-IP': `192.168.1.${index + 100}` },
        }),
      );
      expect(vpnRes.status).toBe(200);
    }
    const hundredFirstVpn = await fetch(
      new Request('https://relay.example.workers.dev/api/vpn/create', {
        method: 'POST',
        headers: { 'CF-Connecting-IP': '192.168.1.251' },
      }),
    );
    expect(hundredFirstVpn.status).toBe(429);
  });

  it('expires sessions after 10 minutes of simulated time and via alarm', async () => {
    let now = 10_000;
    let pinSeq = 100000;
    const { fetch, runAlarm, adapter } = createTestHarness({
      now: () => now,
      createPin: () => String(pinSeq++),
    });

    const createRes1 = await fetch(
      new Request('https://relay.example.workers.dev/api/pair/create', {
        method: 'POST',
        headers: { 'CF-Connecting-IP': '198.51.100.1' },
      }),
    );
    const session1 = (await createRes1.json()) as { code: string; pollToken: string };
    expect(adapter.getScheduledAlarm()).toBe(now + REMOTE_SESSION_TTL_MS);

    // Advance time by 10 minutes
    now += REMOTE_SESSION_TTL_MS;

    const statusRes = await fetch(
      new Request(`https://relay.example.workers.dev/api/pair/status/${session1.code}`, {
        headers: { Authorization: `Bearer ${session1.pollToken}` },
      }),
    );
    expect(statusRes.status).toBe(404);

    // Verify alarm also cleans up expired sessions
    const createRes2 = await fetch(
      new Request('https://relay.example.workers.dev/api/pair/create', {
        method: 'POST',
        headers: { 'CF-Connecting-IP': '198.51.100.2' },
      }),
    );
    const session2 = (await createRes2.json()) as { code: string; pollToken: string };
    const vpnCreateRes = await fetch(
      new Request('https://relay.example.workers.dev/api/vpn/create', {
        method: 'POST',
        headers: { 'CF-Connecting-IP': '192.168.1.3' },
      }),
    );
    const vpnSession = (await vpnCreateRes.json()) as { code: string; pollToken: string };
    now += REMOTE_SESSION_TTL_MS;
    await runAlarm();

    const rows = adapter.state.storage.sql
      .exec<{ pin: string }>('SELECT pin FROM sessions WHERE pin = ?', session2.code)
      .toArray();
    expect(rows).toHaveLength(0);
    const vpnRows = adapter.state.storage.sql
      .exec<{ code: string }>('SELECT code FROM vpn_sessions WHERE code = ?', vpnSession.code)
      .toArray();
    expect(vpnRows).toHaveLength(0);
  });

  it('returns 404 when poll token is missing or incorrect', async () => {
    const { fetch } = createTestHarness({ createPin: () => '654321' });
    await fetch(
      new Request('https://relay.example.workers.dev/api/pair/create', {
        method: 'POST',
      }),
    );

    const missingTokenRes = await fetch(
      new Request('https://relay.example.workers.dev/api/pair/status/654321'),
    );
    expect(missingTokenRes.status).toBe(404);
    expect(await missingTokenRes.json()).toEqual({ error: 'SESSION_NOT_FOUND' });

    const wrongTokenRes = await fetch(
      new Request('https://relay.example.workers.dev/api/pair/status/654321', {
        headers: { Authorization: 'Bearer token-sbagliato' },
      }),
    );
    expect(wrongTokenRes.status).toBe(404);
    expect(await wrongTokenRes.json()).toEqual({ error: 'SESSION_NOT_FOUND' });
  });

  it('destroys the session on the fifth failed validation submission for a valid PIN', async () => {
    const { fetch } = createTestHarness({ createPin: () => '222333' });
    const createRes = await fetch(
      new Request('https://relay.example.workers.dev/api/pair/create', {
        method: 'POST',
      }),
    );
    const created = (await createRes.json()) as { code: string; pollToken: string };

    for (let attempt = 1; attempt <= 5; attempt += 1) {
      const badSubmit = await fetch(
        new Request('https://relay.example.workers.dev/api/pair/submit', {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify({
            code: '222333',
            server: 'ftp://protocollo-non-valido',
            username: 'u',
            password: 'p',
          }),
        }),
      );
      expect(badSubmit.status).toBe(400);

      const statusRes = await fetch(
        new Request('https://relay.example.workers.dev/api/pair/status/222333', {
          headers: { Authorization: `Bearer ${created.pollToken}` },
        }),
      );
      if (attempt < 5) {
        expect(statusRes.status).toBe(200);
      } else {
        expect(statusRes.status).toBe(404);
      }
    }
  });

  it('blocks an IP for 15 minutes after 10 wrong PIN attempts in 10 minutes', async () => {
    let now = 50_000;
    const { fetch } = createTestHarness({ now: () => now });
    const ip = '203.0.113.55';

    for (let i = 0; i < 10; i += 1) {
      const res = await fetch(
        new Request('https://relay.example.workers.dev/api/pair/submit', {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json',
            'CF-Connecting-IP': ip,
          },
          body: JSON.stringify({
            code: '999999',
            server: 'http://server.esempio:8080',
            username: 'u',
            password: 'p',
          }),
        }),
      );
      expect(res.status).toBe(404);
    }

    const blockedRes = await fetch(
      new Request('https://relay.example.workers.dev/api/pair/submit', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'CF-Connecting-IP': ip,
        },
        body: JSON.stringify({
          code: '999999',
          server: 'http://server.esempio:8080',
          username: 'u',
          password: 'p',
        }),
      }),
    );
    expect(blockedRes.status).toBe(429);

    // After 15 minutes block expires
    now += SUBMIT_BLOCK_MS + 1;
    const afterBlockRes = await fetch(
      new Request('https://relay.example.workers.dev/api/pair/submit', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'CF-Connecting-IP': ip,
        },
        body: JSON.stringify({
          code: '999999',
          server: 'http://server.esempio:8080',
          username: 'u',
          password: 'p',
        }),
      }),
    );
    expect(afterBlockRes.status).toBe(404);
  });

  it('resolves rubrica code "001" in submit and returns 400 UNKNOWN_SERVER_CODE for unknown codes without counting as PIN failure', async () => {
    const { fetch } = createTestHarness({
      createPin: () => '777888',
      rubricaIndex: new Map([['001', 'http://server.esempio:8080']]),
    });
    const createRes = await fetch(
      new Request('https://relay.example.workers.dev/api/pair/create', {
        method: 'POST',
      }),
    );
    const created = (await createRes.json()) as { code: string; pollToken: string };

    // 6 attempts with unknown server code must NOT destroy the PIN session or block IP
    for (let i = 0; i < 6; i += 1) {
      const unknownRes = await fetch(
        new Request('https://relay.example.workers.dev/api/pair/submit', {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify({
            code: '777888',
            server: '999',
            username: 'demo',
            password: 'demo',
          }),
        }),
      );
      expect(unknownRes.status).toBe(400);
      expect(await unknownRes.json()).toEqual({ error: 'UNKNOWN_SERVER_CODE' });
    }

    // Submit with valid rubrica code " 001 "
    const okRes = await fetch(
      new Request('https://relay.example.workers.dev/api/pair/submit', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          code: '777888',
          server: ' 001 ',
          username: 'demo',
          password: 'demo',
        }),
      }),
    );
    expect(okRes.status).toBe(200);
    expect(await okRes.json()).toEqual({ ok: true });

    const statusRes = await fetch(
      new Request('https://relay.example.workers.dev/api/pair/status/777888', {
        headers: { Authorization: `Bearer ${created.pollToken}` },
      }),
    );
    expect(statusRes.status).toBe(200);
    expect(await statusRes.json()).toEqual({
      status: 'ready',
      credentials: {
        v: 1,
        server: 'http://server.esempio:8080',
        username: 'demo',
        password: 'demo',
        serverCode: '001',
      },
    });
  });

  it('enforces CORS for allowed origins, disallowed origins, and requests without Origin header', async () => {
    const { fetch } = createTestHarness({
      allowedOrigins: 'https://tv.esempio.it, https://app.esempio.it',
    });

    // Allowed origin
    const allowedRes = await fetch(
      new Request('https://relay.example.workers.dev/healthz', {
        headers: { Origin: 'https://tv.esempio.it' },
      }),
    );
    expect(allowedRes.status).toBe(200);
    expect(allowedRes.headers.get('Access-Control-Allow-Origin')).toBe('https://tv.esempio.it');
    expect(allowedRes.headers.get('Access-Control-Allow-Methods')).toBe('GET, POST');
    expect(allowedRes.headers.get('Access-Control-Allow-Headers')).toBe(
      'Content-Type, Authorization',
    );

    // Disallowed origin
    const disallowedRes = await fetch(
      new Request('https://relay.example.workers.dev/healthz', {
        headers: { Origin: 'https://malicious.esempio.it' },
      }),
    );
    expect(disallowedRes.status).toBe(403);
    expect(disallowedRes.headers.get('Access-Control-Allow-Origin')).toBeNull();

    // Missing Origin header (native apps / server-to-server)
    const noOriginRes = await fetch(
      new Request('https://relay.example.workers.dev/healthz'),
    );
    expect(noOriginRes.status).toBe(200);
    expect(noOriginRes.headers.get('Access-Control-Allow-Origin')).toBeNull();
  });

  it('resolves codes on GET /api/rubrica/:code and limits to 20 requests per minute per IP', async () => {
    const now = 100_000;
    const { fetch } = createTestHarness({
      now: () => now,
      rubricaIndex: new Map([['001', 'http://server.esempio:8080']]),
    });
    const ip = '198.51.100.77';

    const foundRes = await fetch(
      new Request('https://relay.example.workers.dev/api/rubrica/001', {
        headers: { 'CF-Connecting-IP': ip },
      }),
    );
    expect(foundRes.status).toBe(200);
    expect(await foundRes.json()).toEqual({ server: 'http://server.esempio:8080' });

    const missingRes = await fetch(
      new Request('https://relay.example.workers.dev/api/rubrica/999', {
        headers: { 'CF-Connecting-IP': ip },
      }),
    );
    expect(missingRes.status).toBe(404);

    for (let count = 3; count <= 20; count += 1) {
      const res = await fetch(
        new Request('https://relay.example.workers.dev/api/rubrica/001', {
          headers: { 'CF-Connecting-IP': ip },
        }),
      );
      expect(res.status).toBe(200);
    }

    const rateLimitedRes = await fetch(
      new Request('https://relay.example.workers.dev/api/rubrica/001', {
        headers: { 'CF-Connecting-IP': ip },
      }),
    );
    expect(rateLimitedRes.status).toBe(429);
  });

  it('enforces session creation limits (5 per IP and 100 global)', async () => {
    let pinSeq = 100000;
    const { fetch } = createTestHarness({
      createPin: () => String(pinSeq++),
    });

    for (let i = 0; i < 5; i += 1) {
      const res = await fetch(
        new Request('https://relay.example.workers.dev/api/pair/create', {
          method: 'POST',
          headers: { 'CF-Connecting-IP': '192.0.2.1' },
        }),
      );
      expect(res.status).toBe(200);
    }

    const sixthForIp = await fetch(
      new Request('https://relay.example.workers.dev/api/pair/create', {
        method: 'POST',
        headers: { 'CF-Connecting-IP': '192.0.2.1' },
      }),
    );
    expect(sixthForIp.status).toBe(429);

    for (let i = 5; i < 100; i += 1) {
      const res = await fetch(
        new Request('https://relay.example.workers.dev/api/pair/create', {
          method: 'POST',
          headers: { 'CF-Connecting-IP': `198.51.100.${i}` },
        }),
      );
      expect(res.status).toBe(200);
    }

    const hundredFirst = await fetch(
      new Request('https://relay.example.workers.dev/api/pair/create', {
        method: 'POST',
        headers: { 'CF-Connecting-IP': '203.0.113.200' },
      }),
    );
    expect(hundredFirst.status).toBe(429);
  });

  it('serves the submission HTML page on GET / and pre-fills the PIN when ?code= is provided', async () => {
    const { fetch } = createTestHarness();

    const defaultPage = await fetch(new Request('https://relay.example.workers.dev/'));
    expect(defaultPage.status).toBe(200);
    expect(defaultPage.headers.get('Content-Type')).toContain('text/html');
    const defaultHtml = await defaultPage.text();
    expect(defaultHtml).toContain('#1C1C1E');
    expect(defaultHtml).toContain('#2C2C2E');
    expect(defaultHtml).toContain('#10B981');
    expect(defaultHtml).toContain('Codice o indirizzo del server');
    expect(defaultHtml).toContain('es. 001 oppure http://…');
    expect(defaultHtml).toContain('Invia alla TV');
    expect(defaultHtml).toContain('Fatto. Sulla TV premi Accedi al Catalogo');

    const prefilledPage = await fetch(
      new Request('https://relay.example.workers.dev/?code=482910'),
    );
    expect(prefilledPage.status).toBe(200);
    const prefilledHtml = await prefilledPage.text();
    expect(prefilledHtml).toContain('value="482910"');
    expect(prefilledHtml).toContain('readonly');
  });
});
