import express, { Request, Response } from 'express';
import http, { type ClientRequest, type IncomingMessage } from 'http';
import https from 'https';
import { URL } from 'url';
import path from 'path';
import { fileURLToPath } from 'url';
import { createServer as createViteServer } from 'vite';
import { randomBytes } from 'crypto';
import { createSafeProxySigner, isSafeDevelopmentTarget, SAFE_CONNECT_POLICY, safeProxyEnabled } from './server/safeProxy';
import { resolvePublicTarget } from './server/targetGuard';
import { guardedRequest, rewriteM3u8 } from './server/proxy';
import { createRemoteSessionService } from './server/remoteSession';
import { createAllowedHostsStore } from './server/allowedHosts';
import { createProviderGate } from './server/providerGate';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

export const app = express();
if (process.env.TRUST_PROXY === '1') app.set('trust proxy', 1);
const PORT = process.env.PORT ? parseInt(process.env.PORT, 10) : 3000;
const SAFE_MODE = safeProxyEnabled();
const remoteSession = createRemoteSessionService();

// Random per-process secret: signs the URLs the server rewrites inside M3U8
// manifests so /api/proxy/stream can admit them even when their origin is not
// (or no longer) in the allowed provider list.
const streamSigner = createSafeProxySigner(randomBytes(32));

// Closed proxy: only provider origins with at least one successful login.
// Exported for tests and runtime inspection.
export const allowedOrigins = createAllowedHostsStore({
  filePath:
    process.env.ALLOWED_HOSTS_FILE || path.join(__dirname, 'data', 'allowed-hosts.json'),
});
const providerGate = createProviderGate({ store: allowedOrigins });

export function signStreamUrl(targetUrl: string): string {
  return streamSigner.sign(targetUrl);
}

function proxyPath(targetUrl: string): string {
  return `/api/proxy/stream?url=${encodeURIComponent(targetUrl)}&safe=${streamSigner.sign(targetUrl)}`;
}

function rejectUnsafeProxyTarget(targetUrl: string, res: Response, signature?: unknown): boolean {
  if (SAFE_MODE && streamSigner.verify(targetUrl, signature)) return false;
  if (!SAFE_MODE || isSafeDevelopmentTarget(targetUrl)) return false;
  res.status(403).json({
    error: 'Modalità sviluppo sicura: sono consentiti soltanto localhost e il mock Xtream locale.',
  });
  return true;
}

/**
 * Enforces the closed-proxy policy. Returns the access decision when the
 * request may proceed toward the target, or null after answering the request
 * itself (400/403/429). The private-target guard (targetGuard) keeps applying
 * downstream in every case.
 */
function gateProxyRequest(
  targetUrl: string,
  req: Request,
  res: Response,
  options: { allowSignature: boolean },
): { type: 'allowed' | 'login'; origin: string } | null {
  const signatureValid = options.allowSignature
    ? streamSigner.verify(targetUrl, req.query.safe)
    : false;
  const decision = providerGate.check(targetUrl, {
    ip: req.ip || req.socket.remoteAddress || 'unknown',
    signatureValid,
    allowSignature: options.allowSignature,
  });

  switch (decision.type) {
    case 'invalid':
      res.status(400).json({ error: 'URL di destinazione non valido' });
      return null;
    case 'blocked':
      res.status(403).json({ error: 'PROVIDER_NOT_ALLOWED' });
      return null;
    case 'rate_limited':
      res.status(429).json({ error: 'TOO_MANY_LOGIN_ATTEMPTS' });
      return null;
    default:
      return decision;
  }
}

app.use(express.json({ limit: '10mb' }));

if (SAFE_MODE) {
  app.use((_req, res, next) => {
    res.setHeader('Content-Security-Policy', `connect-src ${SAFE_CONNECT_POLICY}`);
    res.setHeader('X-Xtream-Safe-Mode', '1');
    next();
  });
}

app.get('/api/runtime-config', (_req, res) => {
  res.json({ safeMode: SAFE_MODE });
});

const DEFAULT_USER_AGENT = 'IPTVSmartersPro/3.1.5.1 (Linux; Android 11; Smart TV)';

// Helper to make HTTP/HTTPS request following redirects
export async function proxyStream(targetUrl: string, req: Request, res: Response, redirectCount = 0) {
  if (redirectCount > 5) {
    res.status(502).send('Too many redirects');
    return;
  }

  let parsedUrl: URL;
  try {
    parsedUrl = new URL(targetUrl);
  } catch (err) {
    res.status(400).send('Invalid stream URL');
    return;
  }

  let lookup: import('net').LookupFunction | undefined;
  if (process.env.NODE_ENV === 'production') {
    try {
      lookup = (await resolvePublicTarget(targetUrl, process.env.ALLOW_PRIVATE_TARGETS === '1')).lookup;
    } catch {
      res.status(403).json({ error: 'TARGET_BLOCKED' });
      return;
    }
  }
  const client = parsedUrl.protocol === 'https:' ? https : http;

  const headers: Record<string, string> = {
    'User-Agent': DEFAULT_USER_AGENT,
    'Accept': '*/*',
    'Connection': 'keep-alive',
  };

  if (req.headers.range) {
    headers['Range'] = req.headers.range as string;
  }

  let proxyReq: ClientRequest | undefined;
  let proxyRes: IncomingMessage | undefined;
  let manifestTimeout: ReturnType<typeof setTimeout> | undefined;
  let cleanedUp = false;
  const cleanup = () => {
    if (cleanedUp) return;
    cleanedUp = true;
    if (manifestTimeout) clearTimeout(manifestTimeout);
    proxyReq?.destroy();
    proxyRes?.destroy();
  };
  req.once('close', cleanup);

  proxyReq = client.request(
    targetUrl,
    {
      method: req.method === 'HEAD' ? 'HEAD' : 'GET',
      headers,
      lookup,
      timeout: 15000, // Initial connect timeout only
    },
    (upstreamResponse) => {
      proxyRes = upstreamResponse;
      // Clear timeout immediately upon response arrival so continuous live streams never get killed
      proxyReq?.setTimeout(0);
      if (upstreamResponse.socket) {
        upstreamResponse.socket.setTimeout(0);
        upstreamResponse.socket.setKeepAlive(true, 10000);
      }
      if (req.socket) {
        req.socket.setTimeout(0);
        req.socket.setKeepAlive(true, 10000);
      }
      if (res.socket) {
        res.socket.setTimeout(0);
      }

      // Handle redirects (301, 302, 303, 307, 308). Redirects starting from an
      // already admitted (or server-signed) target stay allowed: providers
      // routinely move streams onto other servers. targetGuard applies again
      // on each hop when enabled.
      if (
        upstreamResponse.statusCode &&
        [301, 302, 303, 307, 308].includes(upstreamResponse.statusCode) &&
        upstreamResponse.headers.location
      ) {
        let redirectLocation = upstreamResponse.headers.location;
        if (!redirectLocation.startsWith('http://') && !redirectLocation.startsWith('https://')) {
          redirectLocation = new URL(redirectLocation, targetUrl).toString();
        }
        upstreamResponse.resume();
        proxyStream(redirectLocation, req, res, redirectCount + 1);
        return;
      }

      const responseHeaders: Record<string, string | string[] | undefined> = {
        'Accept-Ranges': 'bytes',
      };

      if (upstreamResponse.headers['content-range']) {
        responseHeaders['Content-Range'] = upstreamResponse.headers['content-range'];
      }
      if (upstreamResponse.headers['content-length']) {
        responseHeaders['Content-Length'] = upstreamResponse.headers['content-length'];
      }
      if (upstreamResponse.headers['content-type']) {
        responseHeaders['Content-Type'] = upstreamResponse.headers['content-type'];
      } else {
        // Fallback content type based on URL extension
        if (targetUrl.endsWith('.mp4')) responseHeaders['Content-Type'] = 'video/mp4';
        else if (targetUrl.endsWith('.mkv')) responseHeaders['Content-Type'] = 'video/x-matroska';
        else if (targetUrl.endsWith('.ts')) responseHeaders['Content-Type'] = 'video/mp2t';
        else if (targetUrl.endsWith('.m3u8')) responseHeaders['Content-Type'] = 'application/vnd.apple.mpegurl';
      }

      // Handle download request: force browser to download directly to ~/Downloads
      if (req.query.download === '1' || req.query.download === 'true') {
        const rawFilename =
          typeof req.query.filename === 'string' && req.query.filename.trim()
            ? req.query.filename.trim()
            : 'video.mp4';
        const cleanFilename = rawFilename.replace(/[/\\?%*:|"<>]/g, '_').trim();
        // Standard ASCII-only fallback for legacy filename parameter
        const asciiFallback = cleanFilename
          .replace(/[àáâãäå]/gi, 'a')
          .replace(/[èéêë]/gi, 'e')
          .replace(/[ìíîï]/gi, 'i')
          .replace(/[òóôõö]/gi, 'o')
          .replace(/[ùúûü]/gi, 'u')
          .replace(/[^a-zA-Z0-9._ -]/g, '_')
          .trim() || 'video.mp4';

        responseHeaders['Content-Type'] = 'application/octet-stream';
        responseHeaders['Content-Disposition'] = `attachment; filename="${asciiFallback}"; filename*=UTF-8''${encodeURIComponent(cleanFilename)}`;
        responseHeaders['Cache-Control'] = 'no-cache, no-store, must-revalidate';
      }

      if (req.method === 'HEAD') {
        res.writeHead(upstreamResponse.statusCode || 200, responseHeaders);
        res.end();
        return;
      }

      const declaredM3u8 = targetUrl.toLowerCase().includes('.m3u8');
      const isMpegUrlHeader = Boolean(
        upstreamResponse.headers['content-type'] &&
          (upstreamResponse.headers['content-type'].includes('mpegurl') ||
            upstreamResponse.headers['content-type'].includes('application/x-mpegurl'))
      );

      const isExplicitBinary = Boolean(
        targetUrl.toLowerCase().includes('.ts') ||
          (upstreamResponse.headers['content-type'] &&
            (upstreamResponse.headers['content-type'].includes('mp2t') ||
              upstreamResponse.headers['content-type'].includes('octet-stream') ||
              upstreamResponse.headers['content-type'].includes('video/mp2t')))
      );

      if ((declaredM3u8 || isMpegUrlHeader) && !isExplicitBinary) {
        let manifestData = '';
        let headersSent = false;
        upstreamResponse.setEncoding('utf8');

        // Safety timeout: if manifest doesn't finish within 2 seconds, it's not a text manifest, it's an active stream
        manifestTimeout = setTimeout(() => {
          if (!headersSent && !res.headersSent) {
            headersSent = true;
            responseHeaders['Content-Type'] = 'video/mp2t';
            res.writeHead(upstreamResponse.statusCode || 200, responseHeaders);
            res.write(manifestData);
            upstreamResponse.pipe(res);
          }
        }, 2000);

        upstreamResponse.on('data', (chunk) => {
          if (headersSent) return;
          manifestData += chunk;

          // If the first chunk does NOT contain #EXTM3U or exceeds 64KB, stream directly
          if (
            (!manifestData.includes('#EXTM3U') && manifestData.length > 500) ||
            manifestData.length > 65536
          ) {
            clearTimeout(manifestTimeout);
            headersSent = true;
            responseHeaders['Content-Type'] = 'video/mp2t';
            res.writeHead(upstreamResponse.statusCode || 200, responseHeaders);
            res.write(manifestData);
            upstreamResponse.pipe(res);
          }
        });

        upstreamResponse.on('end', () => {
          clearTimeout(manifestTimeout);
          if (headersSent || res.headersSent) return;
          if (manifestData.includes('#EXTM3U')) {
            const rewritten = rewriteM3u8(manifestData, targetUrl, proxyPath);
            responseHeaders['Content-Type'] = 'application/vnd.apple.mpegurl';
            responseHeaders['Content-Length'] = Buffer.byteLength(rewritten, 'utf8').toString();
            responseHeaders['Cache-Control'] = 'no-cache, no-store, must-revalidate';
            delete responseHeaders['Content-Range'];
            res.writeHead(upstreamResponse.statusCode || 200, responseHeaders);
            res.end(rewritten);
          } else {
            responseHeaders['Content-Length'] = Buffer.byteLength(manifestData, 'utf8').toString();
            res.writeHead(upstreamResponse.statusCode || 200, responseHeaders);
            res.end(manifestData);
          }
        });
      } else {
        // Binary media stream (TS, MP4, MKV)
        res.writeHead(upstreamResponse.statusCode || 200, responseHeaders);
        upstreamResponse.pipe(res);
      }
    }
  );

  proxyReq.on('timeout', () => {
    if (!res.headersSent) {
      proxyReq.destroy();
      res.status(504).send('Stream gateway timeout');
    }
  });

  proxyReq.on('error', (err) => {
    if (cleanedUp) return;
    console.error('Proxy stream error:', err.message);
    if (!res.headersSent) {
      res.status(502).send(`Stream proxy error: ${err.message}`);
    }
  });

  proxyReq.end();
}

// Media streaming proxy
app.get('/api/proxy/stream', (req, res) => {
  const targetUrl = req.query.url as string;
  if (!targetUrl) {
    return res.status(400).send('Missing url parameter');
  }
  if (rejectUnsafeProxyTarget(targetUrl, res, req.query.safe)) return;
  if (!gateProxyRequest(targetUrl, req, res, { allowSignature: true })) return;
  proxyStream(targetUrl, req, res);
});

// Xtream Codes API Proxy for JSON calls
app.get('/api/proxy/api', async (req, res) => {
  const targetUrl = req.query.url as string;
  if (!targetUrl) {
    return res.status(400).json({ error: 'Missing url parameter' });
  }
  if (rejectUnsafeProxyTarget(targetUrl, res)) return;
  const access = gateProxyRequest(targetUrl, req, res, { allowSignature: false });
  if (!access) return;
  if (process.env.NODE_ENV === 'production') {
    try { await resolvePublicTarget(targetUrl, process.env.ALLOW_PRIVATE_TARGETS === '1'); }
    catch { return res.status(403).json({ error: 'TARGET_BLOCKED' }); }
  }

  const alternateUrl = targetUrl.startsWith('https://')
    ? targetUrl.replace(/^https:\/\//i, 'http://')
    : targetUrl.replace(/^http:\/\//i, 'https://');
  const attempts = [
    { url: targetUrl, userAgent: DEFAULT_USER_AGENT },
    {
      url: alternateUrl,
      userAgent: 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/124.0.0.0 Safari/537.36',
    },
  ];

  let lastStatus = 502;
  let lastText = '';

  for (const attempt of attempts) {
    try {
      const response = await guardedRequest(attempt.url, {
        headers: {
          'User-Agent': attempt.userAgent,
          'Accept': 'application/json, text/plain, */*',
        },
        timeout: 12000,
        allowPrivate: process.env.NODE_ENV !== 'production' || process.env.ALLOW_PRIVATE_TARGETS === '1',
      });
      lastStatus = response.status;
      lastText = response.body.toString('utf8');

      if (response.status >= 200 && response.status < 300) {
        try {
          const parsedBody = JSON.parse(lastText);
          // Only a successful Xtream login (user_info.auth === 1) admits the
          // origin for every other proxied request.
          if (access.type === 'login' && parsedBody?.user_info?.auth === 1) {
            allowedOrigins.add(access.origin);
          }
          return res.json(parsedBody);
        } catch {
          res.header('Content-Type', 'text/plain');
          return res.send(lastText);
        }
      }

      if (response.status >= 400 && response.status < 500) {
        try {
          return res.status(response.status).json(JSON.parse(lastText));
        } catch {
          return res.status(response.status).send(lastText);
        }
      }
      break;
    } catch (err: any) {
      lastText = err?.message || String(err);
    }
  }

  let friendlyMessage = `Errore di connessione (HTTP ${lastStatus})`;
  if (lastStatus === 530) {
    friendlyMessage = 'HTTP 530: Il server IPTV non è raggiungibile o ha bloccato la connessione DNS/Cloudflare. Verifica se hai inserito la porta corretta (es. :8080) o prova con http:// anziché https://.';
  } else if (lastStatus === 502 || lastStatus === 504) {
    friendlyMessage = `HTTP ${lastStatus}: Il server IPTV risulta offline o non risponde entro i tempi previsti.`;
  }

  return res.status(lastStatus >= 400 && lastStatus < 600 ? lastStatus : 502).json({
    error: friendlyMessage,
    status: lastStatus,
    targetUrl,
  });
});

// Quick endpoint to test server connectivity and parse credentials.
// It performs, by construction, only Xtream login requests; the rate limit of
// the closed proxy applies here as well.
app.post('/api/xtream/test', async (req, res) => {
  const { host, username, password } = req.body;
  if (!host || !username || !password) {
    return res.status(400).json({ error: 'Dati mancanti: host, username o password' });
  }

  const cleanHost = host.replace(/\/+$/, '');
  const apiUrl = `${cleanHost}/player_api.php?username=${encodeURIComponent(username)}&password=${encodeURIComponent(password)}`;
  const access = gateProxyRequest(apiUrl, req, res, { allowSignature: false });
  if (!access) return;
  if (process.env.NODE_ENV === 'production') {
    try { await resolvePublicTarget(apiUrl, process.env.ALLOW_PRIVATE_TARGETS === '1'); }
    catch { return res.status(403).json({ error: 'TARGET_BLOCKED' }); }
  }

  try {
    const response = await guardedRequest(apiUrl, {
      headers: { 'User-Agent': DEFAULT_USER_AGENT },
      timeout: 15000,
      allowPrivate: process.env.NODE_ENV !== 'production' || process.env.ALLOW_PRIVATE_TARGETS === '1',
    });
    const text = response.body.toString('utf8');
    let data: any;
    try {
      data = JSON.parse(text);
    } catch {
      return res.status(502).json({
        error: 'Il server non ha restituito una risposta JSON valida da Xtream Codes',
        raw: text.slice(0, 300),
      });
    }

    if (data.user_info?.auth === 0 || data.user_info?.status === 'Disabled') {
      return res.status(401).json({
        error: 'Credenziali non valide o account disabilitato',
        data,
      });
    }

    if (access.type === 'login' && data.user_info?.auth === 1) {
      allowedOrigins.add(access.origin);
    }

    return res.json({
      success: true,
      auth: data.user_info?.auth,
      userInfo: data.user_info,
      serverInfo: data.server_info,
    });
  } catch (err: any) {
    return res.status(500).json({
      error: `Impossibile raggiungere il server Xtream: ${err.message}`,
    });
  }
});

// ==========================================
// SMART TV / REMOTE LOGIN VIA QR CODE & PIN
// ==========================================
app.get('/api/session/create', remoteSession.create);
app.post('/api/session/submit', remoteSession.submit);
app.get('/api/session/status/:code', remoteSession.status);

setInterval(() => remoteSession.deleteExpired(), 60 * 1000).unref();

// Setup Vite or static serving
async function startServer() {
  const isProd = process.env.NODE_ENV === 'production';

  if (!isProd) {
    const vite = await createViteServer({
      server: { middlewareMode: true },
      appType: 'spa',
    });
    app.use(vite.middlewares);
  } else {
    app.use(express.static(path.resolve(__dirname, 'dist')));
    app.get('*', (_req, res) => {
      res.sendFile(path.resolve(__dirname, 'dist', 'index.html'));
    });
  }

  // Home-network server: reachable from Mac, TV and phones by default.
  // Protection comes from the allowed-provider list, not from the bind
  // address; set HOST=127.0.0.1 to restrict it to this machine only.
  const listenHost = process.env.HOST || '0.0.0.0';

  app.listen(PORT, listenHost, () => {
    console.log(`Server Xtream Player avviato su http://${listenHost}:${PORT}`);
    if (SAFE_MODE) console.log('Modalità sicura attiva: proxy limitato al mock locale.');
  });
}

if (process.env.NODE_ENV !== 'test') void startServer();
