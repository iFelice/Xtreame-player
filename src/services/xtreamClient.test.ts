import { afterEach, beforeEach, describe, expect, it, vi } from 'vitest';
import { xtreamClient } from './xtreamClient';

function stubFetch(payload: unknown = []) {
  const fetchMock = vi.fn(async (_input: RequestInfo | URL, _init?: RequestInit) =>
    new Response(JSON.stringify(payload), { status: 200 })
  );
  vi.stubGlobal('fetch', fetchMock);
  return fetchMock;
}

beforeEach(() => {
  (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT = true;
});

afterEach(() => {
  vi.unstubAllEnvs();
  vi.unstubAllGlobals();
  vi.restoreAllMocks();
});

describe('xtream request routing', () => {
  it('uses the Express proxy on the web build', async () => {
    vi.stubEnv('VITE_TARGET', '');
    const fetchMock = stubFetch();

    await xtreamClient.authenticate('http://server.esempio:8080', 'demo', 'demo');

    const requested = String(fetchMock.mock.calls[0][0]);
    expect(requested.startsWith('/api/proxy/api?url=')).toBe(true);
    expect(requested).toContain(encodeURIComponent('http://server.esempio:8080/player_api.php'));
  });

  it('calls the Xtream server directly in the webOS build', async () => {
    vi.stubEnv('VITE_TARGET', 'webos');
    const fetchMock = stubFetch();

    await xtreamClient.authenticate('http://server.esempio:8080', 'demo', 'demo');
    await xtreamClient.getLiveStreams('http://server.esempio:8080', 'demo', 'demo', 'all');

    expect(String(fetchMock.mock.calls[0][0])).toBe(
      'http://server.esempio:8080/player_api.php?username=demo&password=demo'
    );
    expect(String(fetchMock.mock.calls[1][0])).toContain('action=get_live_streams');
    for (const call of fetchMock.mock.calls) {
      expect(String(call[0])).not.toContain('/api/');
    }
  });

  it('never returns a non-array catalogue as a list', async () => {
    vi.stubEnv('VITE_TARGET', 'webos');
    stubFetch({ provider_message: 'nope' } as unknown);
    await expect(xtreamClient.getVodCategories('http://server.esempio:8080', 'demo', 'demo')).resolves.toEqual([]);
  });
});
