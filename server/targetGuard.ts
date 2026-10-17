import dns from 'dns';
import net from 'net';
import type { LookupFunction } from 'net';

function ipv4Number(ip: string): number { return ip.split('.').reduce((n, part) => (n * 256 + Number(part)) >>> 0, 0); }
function inV4(ip: string, base: string, bits: number) { const mask = bits === 0 ? 0 : (0xffffffff << (32 - bits)) >>> 0; return (ipv4Number(ip) & mask) === (ipv4Number(base) & mask); }
export function isPrivateAddress(input: string): boolean {
  let ip = input.toLowerCase().split('%')[0];
  if (ip.startsWith('::ffff:')) {
    const mapped = ip.slice(7);
    if (net.isIP(mapped) === 4) ip = mapped;
    else if (/^[0-9a-f]{1,4}:[0-9a-f]{1,4}$/.test(mapped)) {
      const [high, low] = mapped.split(':').map(part => parseInt(part, 16));
      ip = `${high >> 8}.${high & 255}.${low >> 8}.${low & 255}`;
    }
  }
  if (net.isIP(ip) === 4) return [['0.0.0.0',8],['10.0.0.0',8],['100.64.0.0',10],['127.0.0.0',8],['169.254.0.0',16],['172.16.0.0',12],['192.168.0.0',16]].some(([b,n]) => inV4(ip,b as string,n as number));
  if (net.isIP(ip) === 6) return ip === '::' || ip === '::1' || /^f[cd]/.test(ip) || /^(fe[89ab])/.test(ip);
  return true;
}
export async function resolvePublicTarget(raw: string, allowPrivate = false) {
  const url = new URL(raw); if (!['http:','https:'].includes(url.protocol)) throw new Error('TARGET_PROTOCOL_BLOCKED');
  const records = await dns.promises.lookup(url.hostname, { all: true, verbatim: true });
  if (!records.length || (!allowPrivate && records.some(r => isPrivateAddress(r.address)))) throw new Error('PRIVATE_TARGET_BLOCKED');
  const allowed = new Map(records.map(r => [`${r.family}:${r.address}`, r]));
  const lookup: LookupFunction = (hostname, options, callback) => {
    const config = typeof options === 'number' ? { family: options, all: false } : options;
    const family = config?.family || 0;
    const matches = records.filter(r => !family || r.family === family);
    if (hostname !== url.hostname || !matches.length || matches.some(r => !allowed.has(`${r.family}:${r.address}`))) return callback(new Error('DNS_REBIND_BLOCKED'), '', 4);
    if (config && 'all' in config && config.all) return (callback as any)(null, matches);
    const match = matches[0];
    callback(null, match.address, match.family);
  };
  return { url, lookup, addresses: records };
}
