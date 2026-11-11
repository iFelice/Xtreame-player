import { Capacitor } from '@capacitor/core';
import { afterEach, describe, expect, it, vi } from 'vitest';

const server = 'http://server.esempio:8080';

afterEach(() => {
  vi.unstubAllEnvs();
  vi.unstubAllGlobals();
  vi.restoreAllMocks();
});

describe('Xtream client routing', () => {
  it('calls the provider directly in static mode', async () => {
    vi.stubEnv('MODE', 'static');
    vi.resetModules();
    const { xtreamClient } = await import('./xtreamClient');
    vi.spyOn(Capacitor, 'isNativePlatform').mockReturnValue(false);
    const fetchMock = vi.fn(async (_url: RequestInfo | URL, _options?: RequestInit) => new Response(JSON.stringify({ user_info: { auth: 1 } }), { status: 200 }));
    vi.stubGlobal('fetch', fetchMock);
    await xtreamClient.authenticate(server, 'demo', 'demo');
    expect(fetchMock.mock.calls[0][0]).toBe(`${server}/player_api.php?username=demo&password=demo`);
    expect(String(fetchMock.mock.calls[0][0])).not.toContain('/api/proxy');
  });

  it('still uses the Express API proxy on normal web builds', async () => {
    vi.stubEnv('MODE', 'production');
    vi.resetModules();
    const { xtreamClient } = await import('./xtreamClient');
    vi.spyOn(Capacitor, 'isNativePlatform').mockReturnValue(false);
    const fetchMock = vi.fn(async (_url: RequestInfo | URL, _options?: RequestInit) => new Response('[]', { status: 200 }));
    vi.stubGlobal('fetch', fetchMock);
    await xtreamClient.getVodCategories(server, 'demo', 'demo');
    const direct = `${server}/player_api.php?username=demo&password=demo&action=get_vod_categories`;
    expect(fetchMock.mock.calls[0][0]).toBe(`/api/proxy/api?url=${encodeURIComponent(direct)}`);
  });
});
