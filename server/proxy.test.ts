import http from 'http';
import { afterEach, describe, expect, it } from 'vitest';
import { guardedRequest, rewriteM3u8 } from './proxy';

const servers: http.Server[] = [];
afterEach(async () => {
  await Promise.all(servers.splice(0).map((server) => new Promise<void>((resolve) => server.close(() => resolve()))));
});

describe('rewriteM3u8', () => {
  it('rewrites relative, absolute, key and map URLs with empty CRLF lines', () => {
    const proxyPath = (url: string) => `/proxy?url=${encodeURIComponent(url)}`;
    const input = [
      '#EXTM3U',
      '#EXT-X-KEY:METHOD=AES-128,URI="key.bin"',
      '#EXT-X-MAP:URI="https://cdn.test/init.mp4"',
      '',
      'seg.ts',
      'https://cdn.test/next.m3u8',
    ].join('\r\n');
    const output = rewriteM3u8(input, 'https://origin.test/live/main.m3u8', proxyPath);
    expect(output).toContain(proxyPath('https://origin.test/live/key.bin'));
    expect(output).toContain(proxyPath('https://cdn.test/init.mp4'));
    expect(output).toContain(`\n\n${proxyPath('https://origin.test/live/seg.ts')}\n`);
    expect(output).toContain(proxyPath('https://cdn.test/next.m3u8'));
  });
});

describe('guardedRequest redirects', () => {
  it('rejects a private address resolved on the second redirect hop', async () => {
    const server = http.createServer((request, response) => {
      response.writeHead(302, { Location: `http://127.0.0.1:${(server.address() as any).port}/private` });
      response.end();
    });
    servers.push(server);
    await new Promise<void>((resolve) => server.listen(0, '127.0.0.1', resolve));
    const port = (server.address() as any).port;
    let classifications = 0;
    const classifyAddress = () => {
      classifications += 1;
      return classifications > 1;
    };
    await expect(
      guardedRequest(`http://127.0.0.1:${port}/start`, { classifyAddress }),
    ).rejects.toThrow('PRIVATE_TARGET_BLOCKED');
    expect(classifications).toBeGreaterThan(1);
  });
});
