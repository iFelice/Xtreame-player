import { mkdtempSync, readdirSync, readFileSync, rmSync, writeFileSync } from 'fs';
import { tmpdir } from 'os';
import path from 'path';
import { afterEach, beforeEach, describe, expect, it } from 'vitest';
import { createAllowedHostsStore, normalizeOrigin } from './allowedHosts';

let dir: string;
let filePath: string;

beforeEach(() => {
  dir = mkdtempSync(path.join(tmpdir(), 'xtream-allowed-hosts-'));
  filePath = path.join(dir, 'allowed-hosts.json');
});

afterEach(() => {
  rmSync(dir, { recursive: true, force: true });
});

const origin = (index: number) => `http://provider-${index}.example:8080`;

describe('normalizeOrigin', () => {
  it('normalizes to protocol+host+port filling default ports', () => {
    expect(normalizeOrigin('http://provider.example/player_api.php?x=1')).toBe(
      'http://provider.example:80',
    );
    expect(normalizeOrigin('https://provider.example')).toBe('https://provider.example:443');
    expect(normalizeOrigin('http://provider.example:8080/live/a/b/1.ts')).toBe(
      'http://provider.example:8080',
    );
    expect(normalizeOrigin('HTTPS://Provider.Example:8443/x')).toBe(
      'https://provider.example:8443',
    );
    expect(normalizeOrigin('http://[2001:db8::1]:8080/a')).toBe('http://[2001:db8::1]:8080');
  });

  it('rejects non-http protocols and malformed URLs', () => {
    expect(normalizeOrigin('file:///tmp/video.mp4')).toBeNull();
    expect(normalizeOrigin('ftp://provider.example:21/x')).toBeNull();
    expect(normalizeOrigin('not-a-url')).toBeNull();
    expect(normalizeOrigin('')).toBeNull();
  });
});

describe('allowed hosts store', () => {
  it('reports an origin as allowed only after it was added', () => {
    const store = createAllowedHostsStore({ filePath });
    expect(store.isAllowed(origin(1))).toBe(false);
    store.add('http://provider-1.example:8080/player_api.php');
    expect(store.isAllowed(origin(1))).toBe(true);
    expect(store.list()).toEqual([origin(1)]);
  });

  it('keeps at most five origins and evicts the least recently used', () => {
    const store = createAllowedHostsStore({ filePath });
    for (let index = 1; index <= 5; index += 1) store.add(origin(index));

    // Refresh origin(2) so origin(1) becomes the least recently used.
    store.add(origin(2));
    store.add(origin(6));

    expect(store.list()).toEqual([origin(6), origin(2), origin(5), origin(4), origin(3)]);
    expect(store.isAllowed(origin(1))).toBe(false);
    expect(store.list()).toHaveLength(5);
  });

  it('writes the file atomically leaving no temp files behind', () => {
    const store = createAllowedHostsStore({ filePath });
    store.add(origin(1));
    store.add(origin(2));

    expect(readdirSync(dir)).toEqual(['allowed-hosts.json']);
    const onDisk = JSON.parse(readFileSync(filePath, 'utf8'));
    expect(onDisk).toEqual({ origins: [origin(2), origin(1)] });
  });

  it('reloads the persisted list on startup', () => {
    const first = createAllowedHostsStore({ filePath });
    first.add(origin(1));
    first.add(origin(2));

    const reloaded = createAllowedHostsStore({ filePath });
    expect(reloaded.list()).toEqual([origin(2), origin(1)]);
    expect(reloaded.isAllowed(origin(1))).toBe(true);
  });

  it('starts empty when the file is missing or corrupt', () => {
    writeFileSync(filePath, '{ not json', 'utf8');
    const corrupt = createAllowedHostsStore({ filePath });
    expect(corrupt.list()).toEqual([]);

    writeFileSync(filePath, JSON.stringify({ origins: 'nope' }), 'utf8');
    const wrongShape = createAllowedHostsStore({ filePath });
    expect(wrongShape.list()).toEqual([]);
  });

  it('caps a longer persisted list at startup and normalizes its entries', () => {
    const persisted = [
      'http://provider-0.example/player_api.php',
      ...[2, 3, 4, 5, 6, 7].map((index) => origin(index)),
      'not-a-url',
      origin(2),
    ];
    writeFileSync(filePath, JSON.stringify({ origins: persisted }), 'utf8');

    const store = createAllowedHostsStore({ filePath });

    expect(store.list()).toEqual([
      'http://provider-0.example:80',
      origin(2),
      origin(3),
      origin(4),
      origin(5),
    ]);
  });

  it('reorders usage in memory without rewriting the file on touch', () => {
    const store = createAllowedHostsStore({ filePath });
    for (let index = 1; index <= 3; index += 1) store.add(origin(index));
    const before = readFileSync(filePath, 'utf8');

    store.touch(origin(1));
    store.touch('http://unknown.example:9999');

    expect(store.list()).toEqual([origin(1), origin(3), origin(2)]);
    expect(readFileSync(filePath, 'utf8')).toBe(before);
  });
});
