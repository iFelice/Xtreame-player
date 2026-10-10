import { describe, expect, it } from 'vitest';
import { isSafeDevelopmentTarget, SAFE_CONNECT_POLICY } from './safeProxy';

describe('safe proxy mode', () => {
  it('allows only local mock destinations', () => {
    expect(isSafeDevelopmentTarget('http://localhost:3333/player_api.php')).toBe(true);
    expect(isSafeDevelopmentTarget('http://127.0.0.1:3333/live/demo/demo/1.m3u8')).toBe(true);
    expect(isSafeDevelopmentTarget('http://[::1]:3333/health')).toBe(true);
  });

  it('restricts browser connections to this app and loopback hosts', () => {
    expect(SAFE_CONNECT_POLICY).toContain("'self'");
    expect(SAFE_CONNECT_POLICY).toContain('http://localhost:*');
    expect(SAFE_CONNECT_POLICY).not.toContain('https:');
    expect(SAFE_CONNECT_POLICY.split(' ')).not.toContain('*');
  });

  it('blocks external, malformed and non-http destinations', () => {
    expect(isSafeDevelopmentTarget('https://example.com/player_api.php')).toBe(false);
    expect(isSafeDevelopmentTarget('http://192.168.1.20:3333')).toBe(false);
    expect(isSafeDevelopmentTarget('file:///tmp/video.mp4')).toBe(false);
    expect(isSafeDevelopmentTarget('not-a-url')).toBe(false);
  });
});
