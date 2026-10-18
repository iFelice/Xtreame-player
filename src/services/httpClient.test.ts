import { afterEach, describe, expect, it, vi } from 'vitest';
import { fetchJson } from './httpClient';

afterEach(() => {
  vi.restoreAllMocks();
  vi.useRealTimers();
});

describe('fetchJson', () => {
  it('returns parsed JSON for a successful response', async () => {
    vi.spyOn(globalThis, 'fetch').mockResolvedValue(
      new Response(JSON.stringify({ ok: true }), {
        status: 200,
        headers: { 'Content-Type': 'application/json' },
      })
    );

    await expect(fetchJson<{ ok: boolean }>('/test')).resolves.toEqual({ ok: true });
  });

  it('maps upstream failures to a readable error without exposing the response body', async () => {
    vi.spyOn(globalThis, 'fetch').mockResolvedValue(new Response('gateway internals', { status: 502 }));

    const request = fetchJson('/test');
    await expect(request).rejects.toMatchObject({
      status: 502,
      retryable: true,
      message: 'HTTP 502: il server IPTV è temporaneamente offline o non raggiungibile.',
    });
  });

  it('rejects invalid JSON explicitly', async () => {
    vi.spyOn(globalThis, 'fetch').mockResolvedValue(new Response('<html>not json</html>', { status: 200 }));

    await expect(fetchJson('/test')).rejects.toMatchObject({
      status: 200,
      retryable: false,
      message: 'Il server IPTV ha restituito dati non validi.',
    });
  });

  it('stops requests that exceed the configured timeout', async () => {
    vi.useFakeTimers();
    vi.spyOn(globalThis, 'fetch').mockImplementation((_, init) =>
      new Promise((_, reject) => {
        init?.signal?.addEventListener('abort', () => reject(new DOMException('Aborted', 'AbortError')));
      })
    );

    const request = fetchJson('/slow', { timeoutMs: 100 });
    const assertion = expect(request).rejects.toMatchObject({ status: 0, retryable: true });
    await vi.advanceTimersByTimeAsync(100);

    await assertion;
  });
});
