import http, { type IncomingHttpHeaders } from 'http';
import https from 'https';
import {
  isPrivateAddress,
  resolvePublicTarget,
  type AddressClassifier,
} from './targetGuard';

export function rewriteM3u8(
  content: string,
  baseUrl: string,
  proxyPath: (url: string) => string,
): string {
  return content
    .split(/\r?\n/)
    .map((line) => {
      const trimmed = line.trim();
      if (!trimmed) return line;
      if (trimmed.startsWith('#')) {
        return line.replace(/URI=["']([^"']+)["']/g, (match, uri) => {
          try {
            return `URI="${proxyPath(new URL(uri, baseUrl).toString())}"`;
          } catch {
            return match;
          }
        });
      }
      try {
        return proxyPath(new URL(trimmed, baseUrl).toString());
      } catch {
        return line;
      }
    })
    .join('\n');
}

interface GuardedRequestOptions {
  headers?: Record<string, string>;
  timeout?: number;
  allowPrivate?: boolean;
  redirects?: number;
  classifyAddress?: AddressClassifier;
}

interface GuardedResponse {
  status: number;
  headers: IncomingHttpHeaders;
  body: Buffer;
  url: string;
}

export async function guardedRequest(
  rawUrl: string,
  options: GuardedRequestOptions = {},
): Promise<GuardedResponse> {
  const redirectCount = options.redirects ?? 0;
  if (redirectCount > 5) throw new Error('TOO_MANY_REDIRECTS');

  const pinned = await resolvePublicTarget(
    rawUrl,
    Boolean(options.allowPrivate),
    options.classifyAddress || isPrivateAddress,
  );
  const client = pinned.url.protocol === 'https:' ? https : http;

  return new Promise((resolve, reject) => {
    const request = client.request(
      pinned.url,
      {
        method: 'GET',
        headers: options.headers,
        lookup: pinned.lookup,
        timeout: options.timeout ?? 15_000,
      },
      (response) => {
        const redirectStatuses = [301, 302, 303, 307, 308];
        if (
          response.statusCode &&
          redirectStatuses.includes(response.statusCode) &&
          response.headers.location
        ) {
          response.resume();
          const nextUrl = new URL(response.headers.location, rawUrl).toString();
          guardedRequest(nextUrl, { ...options, redirects: redirectCount + 1 }).then(
            resolve,
            reject,
          );
          return;
        }

        const chunks: Buffer[] = [];
        response.on('data', (chunk) => chunks.push(Buffer.from(chunk)));
        response.on('end', () =>
          resolve({
            status: response.statusCode || 502,
            headers: response.headers,
            body: Buffer.concat(chunks),
            url: rawUrl,
          }),
        );
      },
    );
    request.on('timeout', () => request.destroy(new Error('TARGET_TIMEOUT')));
    request.on('error', reject);
    request.end();
  });
}
