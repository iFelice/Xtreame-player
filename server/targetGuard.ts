import dns from 'dns';
import type { LookupFunction } from 'net';
import ipaddr from 'ipaddr.js';

export type AddressClassifier = (address: string) => boolean;

function stripIpv6Brackets(hostname: string): string {
  return hostname.startsWith('[') && hostname.endsWith(']')
    ? hostname.slice(1, -1)
    : hostname;
}

export function isPrivateAddress(input: string): boolean {
  try {
    let address = ipaddr.parse(stripIpv6Brackets(input.split('%')[0]));
    if (address.kind() === 'ipv6') {
      const ipv6 = address as ipaddr.IPv6;
      if (ipv6.isIPv4MappedAddress()) address = ipv6.toIPv4Address();
    }
    return address.range() !== 'unicast';
  } catch {
    return true;
  }
}

export async function resolvePublicTarget(
  rawUrl: string,
  allowPrivate = false,
  classifyAddress: AddressClassifier = isPrivateAddress,
) {
  const url = new URL(rawUrl);
  if (url.protocol !== 'http:' && url.protocol !== 'https:') {
    throw new Error('TARGET_PROTOCOL_BLOCKED');
  }

  const hostname = stripIpv6Brackets(url.hostname);
  const records = await dns.promises.lookup(hostname, { all: true, verbatim: true });
  if (!records.length || (!allowPrivate && records.some((record) => classifyAddress(record.address)))) {
    throw new Error('PRIVATE_TARGET_BLOCKED');
  }

  const allowed = new Set(records.map((record) => `${record.family}:${record.address}`));
  const lookup: LookupFunction = (requestedHostname, options, callback) => {
    const config = typeof options === 'number' ? { family: options, all: false } : options;
    const family = config?.family || 0;
    const matches = records.filter((record) => !family || record.family === family);
    const validRequest =
      stripIpv6Brackets(requestedHostname) === hostname &&
      matches.length > 0 &&
      matches.every((record) => allowed.has(`${record.family}:${record.address}`));

    if (!validRequest) return callback(new Error('DNS_REBIND_BLOCKED'), '', 4);
    if (config && 'all' in config && config.all) return (callback as any)(null, matches);
    const match = matches[0];
    return callback(null, match.address, match.family);
  };

  return { url, lookup, addresses: records };
}
