import { describe, expect, it } from 'vitest';
import { isPrivateAddress, resolvePublicTarget } from './targetGuard';

describe('target address guard', () => {
  it('blocks private, metadata and mapped ranges', () => {
    for (const ip of ['0.1.2.3','10.1.2.3','100.64.0.1','127.0.0.1','169.254.169.254','172.16.0.1','192.168.1.1','::','::1','fc00::1','fd00::1','fe80::1','::ffff:10.0.0.1','::ffff:a00:1']) expect(isPrivateAddress(ip), ip).toBe(true);
  });
  it('allows public addresses', () => {
    expect(isPrivateAddress('8.8.8.8')).toBe(false);
    expect(isPrivateAddress('2606:4700:4700::1111')).toBe(false);
  });
  it('rejects a redirect destination that resolves to a private address', async () => {
    await expect(resolvePublicTarget('http://127.0.0.1/redirected')).rejects.toThrow('PRIVATE_TARGET_BLOCKED');
  });
});
