import { describe, expect, it } from 'vitest';
import { isPrivateAddress, resolvePublicTarget } from './targetGuard';

describe('target address guard', () => {
  it('blocks every non-unicast IPv4 and IPv6 range', () => {
    const blocked = [
      '0.1.2.3', '10.1.2.3', '100.64.0.1', '127.0.0.1', '169.254.169.254',
      '172.16.0.1', '192.168.1.1', '192.0.0.1', '198.18.0.1', '224.0.0.1',
      '255.255.255.255', '::', '::1', 'fc00::1', 'fd00::1', 'fe80::1',
      '::ffff:10.0.0.1', '::ffff:a00:1', '64:ff9b::7f00:1', '2002:7f00:1::1',
    ];
    for (const address of blocked) expect(isPrivateAddress(address), address).toBe(true);
  });

  it('allows globally routable unicast addresses', () => {
    expect(isPrivateAddress('8.8.8.8')).toBe(false);
    expect(isPrivateAddress('2606:4700:4700::1111')).toBe(false);
  });

  it('classifies bracketed IPv6 literals before DNS lookup', async () => {
    await expect(resolvePublicTarget('http://[::1]/')).rejects.toThrow('PRIVATE_TARGET_BLOCKED');
    await expect(resolvePublicTarget('http://[::ffff:127.0.0.1]/')).rejects.toThrow(
      'PRIVATE_TARGET_BLOCKED',
    );
  });
});
