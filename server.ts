import express, { Request, Response } from 'express';
import http from 'http';
import https from 'https';
import { URL } from 'url';
import path from 'path';
import { fileURLToPath } from 'url';
import { createServer as createViteServer } from 'vite';
import { randomBytes } from 'crypto';
import { createSafeProxySigner, isSafeDevelopmentTarget, SAFE_CONNECT_POLICY, safeProxyEnabled } from './server/safeProxy';
import { createAccessAuth, isPublicApiPath, requireProductionToken } from './server/auth';
import { resolvePublicTarget } from './server/targetGuard';
import { guardedRequest, rewriteM3u8 } from './server/proxy';
import { createRemoteSessionService } from './server/remoteSession';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

requireProductionToken(process.env);
const app = express();
if (process.env.TRUST_PROXY === '1') app.set('trust proxy', 1);
const PORT = process.env.PORT ? parseInt(process.env.PORT, 10) : 3000;
const SAFE_MODE = safeProxyEnabled();
const accessAuth = createAccessAuth(process.env.APP_ACCESS_TOKEN, process.env.NODE_ENV === 'production');
const safeProxySigner = createSafeProxySigner(randomBytes(32));
const remoteSession = createRemoteSessionService();

function proxyPath(targetUrl: string): string {
  const signature = SAFE_MODE ? `&safe=${safeProxySigner.sign(targetUrl)}` : '';
  return `/api/proxy/stream?url=${encodeURIComponent(targetUrl)}${signature}`;
}

function rejectUnsafeProxyTarget(targetUrl: string, res: Response, signature?: unknown): boolean {
  if (SAFE_MODE && safeProxySigner.verify(targetUrl, signature)) return false;
  if (!SAFE_MODE || isSafeDevelopmentTarget(targetUrl)) return false;
  res.status(403).json({
    error: 'Modalità sviluppo sicura: sono consentiti soltanto localhost e il mock Xtream locale.',
  });
  return true;
}

app.use(express.json({ limit: '10mb' }));

if (SAFE_MODE) {
  app.use((_req, res, next) => {
    res.setHeader('Content-Security-Policy', `connect-src ${SAFE_CONNECT_POLICY}`);
    res.setHeader('X-Xtream-Safe-Mode', '1');
    next();
  });
}

app.post('/api/auth/unlock', accessAuth.unlock);
app.get('/api/runtime-config', (req, res) => {
  const cookie = req.headers.cookie?.split(';').map(v => v.trim()).find(v => v.startsWith('xtream_access='))?.slice(14);
  res.json({ safeMode: SAFE_MODE, accessRequired: accessAuth.enabled && !accessAuth.verify(cookie) });
});
app.use('/api', (req, res, next) => {
  if (isPublicApiPath(req.path)) return next();
  return accessAuth.middleware(req, res, next);
});

const DEFAULT_USER_AGENT = 'IPTVSmartersPro/3.1.5.1 (Linux; Android 11; Smart TV)';

// Helper to make HTTP/HTTPS request following redirects
async function proxyStream(targetUrl: string, req: Request, res: Response, redirectCount = 0) {
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

  const proxyReq = client.request(
    targetUrl,
    {
      method: req.method === 'HEAD' ? 'HEAD' : 'GET',
      headers,
      lookup,
      timeout: 15000, // Initial connect timeout only
    },
    (proxyRes) => {
      // Clear timeout immediately upon response arrival so continuous live streams never get killed
      proxyReq.setTimeout(0);
      if (proxyRes.socket) {
        proxyRes.socket.setTimeout(0);
        proxyRes.socket.setKeepAlive(true, 10000);
      }
      if (req.socket) {
        req.socket.setTimeout(0);
        req.socket.setKeepAlive(true, 10000);
      }
      if (res.socket) {
        res.socket.setTimeout(0);
      }

      // Handle redirects (301, 302, 303, 307, 308)
      if (
        proxyRes.statusCode &&
        [301, 302, 303, 307, 308].includes(proxyRes.statusCode) &&
        proxyRes.headers.location
      ) {
        let redirectLocation = proxyRes.headers.location;
        if (!redirectLocation.startsWith('http://') && !redirectLocation.startsWith('https://')) {
          redirectLocation = new URL(redirectLocation, targetUrl).toString();
        }
        proxyStream(redirectLocation, req, res, redirectCount + 1);
        return;
      }

      const responseHeaders: Record<string, string | string[] | undefined> = {
        'Accept-Ranges': 'bytes',
      };

      if (proxyRes.headers['content-range']) {
        responseHeaders['Content-Range'] = proxyRes.headers['content-range'];
      }
      if (proxyRes.headers['content-length']) {
        responseHeaders['Content-Length'] = proxyRes.headers['content-length'];
      }
      if (proxyRes.headers['content-type']) {
        responseHeaders['Content-Type'] = proxyRes.headers['content-type'];
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
        res.writeHead(proxyRes.statusCode || 200, responseHeaders);
        res.end();
        return;
      }

      const declaredM3u8 = targetUrl.toLowerCase().includes('.m3u8');
      const isMpegUrlHeader = Boolean(
        proxyRes.headers['content-type'] &&
          (proxyRes.headers['content-type'].includes('mpegurl') ||
            proxyRes.headers['content-type'].includes('application/x-mpegurl'))
      );

      const isExplicitBinary = Boolean(
        targetUrl.toLowerCase().includes('.ts') ||
          (proxyRes.headers['content-type'] &&
            (proxyRes.headers['content-type'].includes('mp2t') ||
              proxyRes.headers['content-type'].includes('octet-stream') ||
              proxyRes.headers['content-type'].includes('video/mp2t')))
      );

      if ((declaredM3u8 || isMpegUrlHeader) && !isExplicitBinary) {
        let manifestData = '';
        let headersSent = false;
        proxyRes.setEncoding('utf8');

        // Safety timeout: if manifest doesn't finish within 2 seconds, it's not a text manifest, it's an active stream
        const manifestTimeout = setTimeout(() => {
          if (!headersSent && !res.headersSent) {
            headersSent = true;
            responseHeaders['Content-Type'] = 'video/mp2t';
            res.writeHead(proxyRes.statusCode || 200, responseHeaders);
            res.write(manifestData);
            proxyRes.pipe(res);
          }
        }, 2000);

        proxyRes.on('data', (chunk) => {
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
            res.writeHead(proxyRes.statusCode || 200, responseHeaders);
            res.write(manifestData);
            proxyRes.pipe(res);
          }
        });

        proxyRes.on('end', () => {
          clearTimeout(manifestTimeout);
          if (headersSent || res.headersSent) return;
          if (manifestData.includes('#EXTM3U')) {
            const rewritten = rewriteM3u8(manifestData, targetUrl, proxyPath);
            responseHeaders['Content-Type'] = 'application/vnd.apple.mpegurl';
            responseHeaders['Content-Length'] = Buffer.byteLength(rewritten, 'utf8').toString();
            responseHeaders['Cache-Control'] = 'no-cache, no-store, must-revalidate';
            delete responseHeaders['Content-Range'];
            res.writeHead(proxyRes.statusCode || 200, responseHeaders);
            res.end(rewritten);
          } else {
            responseHeaders['Content-Length'] = Buffer.byteLength(manifestData, 'utf8').toString();
            res.writeHead(proxyRes.statusCode || 200, responseHeaders);
            res.end(manifestData);
          }
        });
      } else {
        // Binary media stream (TS, MP4, MKV)
        res.writeHead(proxyRes.statusCode || 200, responseHeaders);
        proxyRes.pipe(res);

        req.on('close', () => {
          proxyReq.destroy();
          proxyRes.destroy();
        });
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
  proxyStream(targetUrl, req, res);
});

// Xtream Codes API Proxy for JSON calls
app.get('/api/proxy/api', async (req, res) => {
  const targetUrl = req.query.url as string;
  if (!targetUrl) {
    return res.status(400).json({ error: 'Missing url parameter' });
  }
  if (rejectUnsafeProxyTarget(targetUrl, res)) return;
  if (process.env.NODE_ENV === 'production') {
    try { await resolvePublicTarget(targetUrl, process.env.ALLOW_PRIVATE_TARGETS === '1'); }
    catch { return res.status(403).json({ error: 'TARGET_BLOCKED' }); }
  }

  const urlsToTry = [targetUrl];
  if (targetUrl.startsWith('https://')) {
    urlsToTry.push(targetUrl.replace(/^https:\/\//i, 'http://'));
  } else if (targetUrl.startsWith('http://')) {
    urlsToTry.push(targetUrl.replace(/^http:\/\//i, 'https://'));
  }

  const userAgents = [
    DEFAULT_USER_AGENT,
    'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36',
    'VLC/3.0.18 LibVLC/3.0.18',
  ];

  let lastStatus = 502;
  let lastText = '';

  for (const currentUrl of urlsToTry) {
    for (const ua of userAgents) {
      try {
        const response = await guardedRequest(currentUrl, {
          headers: { 'User-Agent': ua, 'Accept': 'application/json, text/plain, */*' },
          timeout: 12000,
          allowPrivate: process.env.NODE_ENV !== 'production' || process.env.ALLOW_PRIVATE_TARGETS === '1',
        });
        lastStatus = response.status;
        const text = response.body.toString('utf8');
        lastText = text;

        if (response.status >= 200 && response.status < 300) {
          try {
            const data = JSON.parse(text);
            return res.json(data);
          } catch {
            res.header('Content-Type', 'text/plain');
            return res.send(text);
          }
        }

        if (response.status === 401) {
          try {
            return res.status(401).json(JSON.parse(text));
          } catch {
            return res.status(401).send(text);
          }
        }
      } catch (err: any) {
        lastText = err?.message || String(err);
      }
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

// Quick endpoint to test server connectivity and parse credentials
app.post('/api/xtream/test', async (req, res) => {
  const { host, username, password } = req.body;
  if (!host || !username || !password) {
    return res.status(400).json({ error: 'Dati mancanti: host, username o password' });
  }

  const cleanHost = host.replace(/\/+$/, '');
  const apiUrl = `${cleanHost}/player_api.php?username=${encodeURIComponent(username)}&password=${encodeURIComponent(password)}`;
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

  const explicitHost = process.env.HOST;
  const hasValidToken = Boolean(process.env.APP_ACCESS_TOKEN && process.env.APP_ACCESS_TOKEN.length >= 24);
  const listenHost = explicitHost || (hasValidToken ? '0.0.0.0' : '127.0.0.1');
  if (explicitHost && !hasValidToken) {
    console.warn('ATTENZIONE: HOST è impostato senza un APP_ACCESS_TOKEN valido; il server può essere esposto senza autenticazione.');
  }

  app.listen(PORT, listenHost, () => {
    console.log(`Server Xtream Player avviato su http://${listenHost}:${PORT}`);
    if (SAFE_MODE) console.log('Modalità sicura attiva: proxy limitato al mock locale.');
  });
}

startServer();
