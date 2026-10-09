import { describe, expect, it } from 'vitest';
import { isSafeDevelopmentTarget } from './safeProxy';

describe('safe proxy mode', () => {
  it('allows only local mock destinations', () => {
    expect(isSafeDevelopmentTarget('http://localhost:3333/player_api.php')).toBe(true);
    expect(isSafeDevelopmentTarget('http://127.0.0.1:3333/live/demo/demo/1.m3u8')).toBe(true);
    expect(isSafeDevelopmentTarget('http://[::1]:3333/health')).toBe(true);
  });

  it('blocks external, malformed and non-http destinations', () => {
    expect(isSafeDevelopmentTarget('https://example.com/player_api.php')).toBe(false);
    expect(isSafeDevelopmentTarget('http://192.168.1.20:3333')).toBe(false);
    expect(isSafeDevelopmentTarget('file:///tmp/video.mp4')).toBe(false);
    expect(isSafeDevelopmentTarget('not-a-url')).toBe(false);
  });
});
