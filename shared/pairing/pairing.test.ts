import { describe, expect, it } from 'vitest';
import {
  buildRubricaIndex,
  constantTimeEqual,
  createVersionedPayload,
  decodeBase64Url,
  encodeBase64Url,
  generatePin,
  generatePollToken,
  hashToken,
  hashTokenSync,
  isRubricaCode,
  isValidPin,
  MAX_ORIGINAL_LINK_LENGTH,
  MAX_PASSWORD_LENGTH,
  MAX_SERVER_LENGTH,
  MAX_USERNAME_LENGTH,
  normalizeRubricaCode,
  PIN_REJECTION_LIMIT,
  readCredentials,
  resolveRubricaCode,
  VPN_AAD_PREFIX,
  VPN_IV_BYTES,
  VPN_KEY_BYTES,
  VPN_MAX_CIPHERTEXT_BYTES,
  VPN_MAX_PLAINTEXT_BYTES,
  VPN_MIN_CIPHERTEXT_BYTES,
} from './index';

describe('shared/pairing', () => {
  describe('readCredentials validation', () => {
    it('accepts valid http and https credentials and strips trailing slashes', () => {
      expect(
        readCredentials({
          server: '  https://iptv.esempio.it:8080/// ',
          username: '  mario ',
          password: '  segreta ',
        }),
      ).toEqual({
        server: 'https://iptv.esempio.it:8080',
        username: 'mario',
        password: 'segreta',
        originalLink: undefined,
      });

      expect(
        readCredentials({
          server: 'http://server.esempio:8080/',
          username: 'utente',
          password: 'pwd',
          originalLink: 'http://server.esempio:8080/get.php?username=utente&password=pwd',
        }),
      ).toEqual({
        server: 'http://server.esempio:8080',
        username: 'utente',
        password: 'pwd',
        originalLink: 'http://server.esempio:8080/get.php?username=utente&password=pwd',
      });
    });

    it('rejects non-http/https URLs and malformed inputs', () => {
      expect(readCredentials(null)).toBeNull();
      expect(readCredentials('invalid')).toBeNull();
      expect(
        readCredentials({
          server: 'ftp://server.esempio:8080',
          username: 'u',
          password: 'p',
        }),
      ).toBeNull();
      expect(
        readCredentials({
          server: 'javascript:alert(1)',
          username: 'u',
          password: 'p',
        }),
      ).toBeNull();
      expect(
        readCredentials({
          server: 'non-un-url',
          username: 'u',
          password: 'p',
        }),
      ).toBeNull();
    });

    it('enforces field length limits and non-empty strings', () => {
      expect(
        readCredentials({
          server: `http://a.it/${'x'.repeat(MAX_SERVER_LENGTH)}`,
          username: 'u',
          password: 'p',
        }),
      ).toBeNull();

      expect(
        readCredentials({
          server: 'http://a.it',
          username: 'u'.repeat(MAX_USERNAME_LENGTH + 1),
          password: 'p',
        }),
      ).toBeNull();

      expect(
        readCredentials({
          server: 'http://a.it',
          username: 'u',
          password: 'p'.repeat(MAX_PASSWORD_LENGTH + 1),
        }),
      ).toBeNull();

      expect(
        readCredentials({
          server: 'http://a.it',
          username: 'u',
          password: 'p',
          originalLink: '',
        }),
      ).toBeNull();

      expect(
        readCredentials({
          server: 'http://a.it',
          username: 'u',
          password: 'p',
          originalLink: 'x'.repeat(MAX_ORIGINAL_LINK_LENGTH + 1),
        }),
      ).toBeNull();
    });
  });

  describe('PIN generation and uniformity', () => {
    it('always produces a 6-digit PIN and never fewer than 6 digits', () => {
      expect(generatePin(() => 0)).toBe('100000');
      expect(generatePin(() => 899_999)).toBe('999999');
      expect(generatePin(() => PIN_REJECTION_LIMIT - 1)).toBe('999999');

      for (let i = 0; i < 1_000; i += 1) {
        const pin = generatePin();
        expect(pin).toHaveLength(6);
        expect(isValidPin(pin)).toBe(true);
        expect(Number(pin)).toBeGreaterThanOrEqual(100_000);
        expect(Number(pin)).toBeLessThanOrEqual(999_999);
      }
    });

    it('rejects out-of-range uint32 samples to preserve strict uniform distribution', () => {
      const samples = [0xffffffff, PIN_REJECTION_LIMIT, PIN_REJECTION_LIMIT + 42, 0];
      const pin = generatePin(() => samples.shift() ?? 0);
      expect(pin).toBe('100000');
      expect(samples).toHaveLength(0);
    });

    it('distributes generated PINs uniformly across buckets', () => {
      const buckets = new Array(9).fill(0);
      const total = 9_000;
      for (let i = 0; i < total; i += 1) {
        const pin = generatePin();
        expect(pin).toMatch(/^\d{6}$/);
        const firstDigit = Number(pin[0]) - 1;
        buckets[firstDigit] += 1;
      }
      // Expected 1000 per bucket; each bucket should stay well within [800, 1200]
      for (const count of buckets) {
        expect(count).toBeGreaterThan(800);
        expect(count).toBeLessThan(1200);
      }
    });
  });

  describe('pollToken and SHA-256 hashing', () => {
    it('generates a base64url pollToken with at least 32 random bytes', () => {
      const tokenA = generatePollToken();
      const tokenB = generatePollToken();
      expect(tokenA).toMatch(/^[A-Za-z0-9_-]{43,}$/);
      expect(tokenB).toMatch(/^[A-Za-z0-9_-]{43,}$/);
      expect(tokenA).not.toBe(tokenB);
    });

    it('hashes tokens with Web Crypto SHA-256 and matches synchronous SHA-256', async () => {
      const vectors: Array<[string, string]> = [
        ['', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'],
        ['abc', 'ba7816bf8f01cfea414140de5dae2223b00361a396177a9cb410ff61f20015ad'],
        ['token-di-prova-123', hashTokenSync('token-di-prova-123')],
      ];

      for (const [input, expected] of vectors) {
        const digest = await hashToken(input);
        expect(digest).toBe(expected);
        expect(hashTokenSync(input)).toBe(expected);
      }

      const randomToken = generatePollToken();
      const asyncHash = await hashToken(randomToken);
      const syncHash = hashTokenSync(randomToken);
      expect(asyncHash).toBe(syncHash);
      expect(constantTimeEqual(asyncHash, syncHash)).toBe(true);
      expect(constantTimeEqual(asyncHash, '0'.repeat(64))).toBe(false);
      expect(constantTimeEqual(asyncHash, 'short')).toBe(false);
    });
  });

  describe('VPN transfer constants and base64url', () => {
    it('exposes the expected AES-GCM envelope sizes and AAD namespace', () => {
      expect(VPN_KEY_BYTES).toBe(32);
      expect(VPN_IV_BYTES).toBe(12);
      expect(VPN_MAX_PLAINTEXT_BYTES).toBe(8192);
      expect(VPN_MAX_CIPHERTEXT_BYTES).toBe(VPN_MAX_PLAINTEXT_BYTES + 16);
      expect(VPN_MIN_CIPHERTEXT_BYTES).toBe(17);
      expect(VPN_AAD_PREFIX).toBe('felixvp-vpn-v1:');
    });

    it('round trips bytes through base64url and rejects invalid alphabet and lengths', () => {
      const values = [new Uint8Array(), new Uint8Array([0, 1, 2, 253, 254, 255])];
      for (const value of values) {
        expect(decodeBase64Url(encodeBase64Url(value))).toEqual(value);
      }
      expect(() => decodeBase64Url('abc=')).toThrow(/base64url/i);
      expect(() => decodeBase64Url('a+b/')).toThrow(/base64url/i);
      expect(() => decodeBase64Url('a')).toThrow(/base64url/i);
    });
  });

  describe('rubrica code normalization and indexing', () => {
    it('normalizes codes with trim and lowercase', () => {
      expect(normalizeRubricaCode('  001 ')).toBe('001');
      expect(normalizeRubricaCode('   AbC-01 \n')).toBe('abc-01');
      expect(isRubricaCode('001')).toBe(true);
      expect(isRubricaCode('http://server.esempio:8080')).toBe(false);
      expect(isRubricaCode('https://server.esempio:8080')).toBe(false);
    });

    it('builds rubrica index and rejects duplicate codes after normalization', () => {
      const index = buildRubricaIndex([
        { nome: 'Server principale', codici: [' 001 ', 'CASA'], server: 'http://server.esempio:8080/' },
      ]);
      expect(resolveRubricaCode('001', index)).toBe('http://server.esempio:8080');
      expect(resolveRubricaCode('  casa ', index)).toBe('http://server.esempio:8080');
      expect(resolveRubricaCode('999', index)).toBeNull();

      expect(() =>
        buildRubricaIndex([
          { nome: 'Uno', codici: ['001'], server: 'http://uno.esempio:8080' },
          { nome: 'Due', codici: [' 001 '], server: 'http://due.esempio:8080' },
        ]),
      ).toThrow(/duplicato/i);
    });

    it('creates a versioned credentials payload with optional normalized serverCode', () => {
      expect(
        createVersionedPayload({
          server: 'http://server.esempio:8080',
          username: 'demo',
          password: 'demo',
        }),
      ).toEqual({
        v: 1,
        server: 'http://server.esempio:8080',
        username: 'demo',
        password: 'demo',
      });

      expect(
        createVersionedPayload({
          server: 'http://server.esempio:8080',
          username: 'demo',
          password: 'demo',
          serverCode: normalizeRubricaCode(' 001 '),
        }),
      ).toEqual({
        v: 1,
        server: 'http://server.esempio:8080',
        username: 'demo',
        password: 'demo',
        serverCode: '001',
      });
    });
  });
});
