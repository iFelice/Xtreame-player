import { describe, expect, it } from 'vitest';
import { createSafeProxySigner, isSafeDevelopmentTarget, SAFE_CONNECT_POLICY } from './safeProxy';

describe('safe proxy mode', () => {
  it('allows only local mock destinations', () => {
    expect(isSafeDevelopmentTarget('http://localhost:3333/player_api.php')).toBe(true);
    expect(isSafeDevelopmentTarget('http://127.0.0.1:3333/live/demo/demo/1.m3u8')).toBe(true);
    expect(isSafeDevelopmentTarget('http://[::1]:3333/health')).toBe(true);
  });

  it('accepts only untampered URLs signed by this server instance', () => {
    const signer = createSafeProxySigner(Buffer.alloc(32, 7));
    const target = 'https://public.example/video/segment-01.ts';
    const signature = signer.sign(target);
    expect(signer.verify(target, signature)).toBe(true);
    expect(signer.verify(`${target}?changed=1`, signature)).toBe(false);
    expect(signer.verify(target, '0'.repeat(signature.length))).toBe(false);
    expect(signer.verify(target, undefined)).toBe(false);
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
