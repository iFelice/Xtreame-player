import express, { Request, Response } from 'express';
import http from 'http';
import https from 'https';
import { URL } from 'url';
import path from 'path';
import { fileURLToPath } from 'url';
import { createServer as createViteServer } from 'vite';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const app = express();
const PORT = process.env.PORT ? parseInt(process.env.PORT, 10) : 3000;

app.use(express.json({ limit: '10mb' }));

// Set CORS for all local requests
app.use((req, res, next) => {
  res.header('Access-Control-Allow-Origin', '*');
  res.header('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, HEAD');
  res.header('Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content-Type, Accept, Range');
  if (req.method === 'OPTIONS') {
    return res.sendStatus(200);
  }
  next();
});

const DEFAULT_USER_AGENT = 'IPTVSmartersPro/3.1.5.1 (Linux; Android 11; Smart TV)';

// Helper function to rewrite M3U8 manifests for HLS playback through proxy
function rewriteM3u8(content: string, baseUrl: string): string {
  const lines = content.split(/\r?\n/);
  const rewrittenLines: string[] = [];

  for (const line of lines) {
    const trimmed = line.trim();
    if (!trimmed) {
      rewrittenLines.push(line);
      continue;
    }

    if (trimmed.startsWith('#')) {
      // Check for URI in tags like #EXT-X-KEY:METHOD=...,URI="..." or #EXT-X-MAP:URI="..."
      const modifiedTag = line.replace(/URI=["']([^"']+)["']/g, (match, uri) => {
        try {
          const resolved = new URL(uri, baseUrl).toString();
          return `URI="/api/proxy/stream?url=${encodeURIComponent(resolved)}"`;
        } catch {
          return match;
        }
      });
      rewrittenLines.push(modifiedTag);
    } else {
      // Segment or child playlist URL
      try {
        const resolved = new URL(trimmed, baseUrl).toString();
        rewrittenLines.push(`/api/proxy/stream?url=${encodeURIComponent(resolved)}`);
      } catch {
        rewrittenLines.push(trimmed);
      }
    }
  }

  return rewrittenLines.join('\n');
}

// Helper to make HTTP/HTTPS request following redirects
function proxyStream(targetUrl: string, req: Request, res: Response, redirectCount = 0) {
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
      timeout: 30000,
    },
    (proxyRes) => {
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
        'Access-Control-Allow-Origin': '*',
        'Access-Control-Expose-Headers': 'Content-Range, Content-Length, Accept-Ranges, Content-Type',
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

      // Handle download request
      if (req.query.download === '1' || req.query.download === 'true') {
        const rawFilename =
          typeof req.query.filename === 'string' && req.query.filename.trim()
            ? req.query.filename.trim()
            : 'video.mp4';
        const cleanFilename = rawFilename.replace(/[/\\?%*:|"<>]/g, '_');
        responseHeaders['Content-Disposition'] = `attachment; filename="${cleanFilename}"`;
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
            const rewritten = rewriteM3u8(manifestData, targetUrl);
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
    proxyReq.destroy();
    if (!res.headersSent) {
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
  proxyStream(targetUrl, req, res);
});

// Xtream Codes API Proxy for JSON calls
app.get('/api/proxy/api', async (req, res) => {
  const targetUrl = req.query.url as string;
  if (!targetUrl) {
    return res.status(400).json({ error: 'Missing url parameter' });
  }

  try {
    const controller = new AbortController();
    const timeout = setTimeout(() => controller.abort(), 20000);

    const response = await fetch(targetUrl, {
      method: 'GET',
      headers: {
        'User-Agent': DEFAULT_USER_AGENT,
        'Accept': 'application/json, text/plain, */*',
      },
      signal: controller.signal,
    });

    clearTimeout(timeout);

    const text = await response.text();

    // Check if it's JSON
    try {
      const data = JSON.parse(text);
      res.json(data);
    } catch {
      // Send raw text if not valid JSON (e.g. m3u or error string)
      res.header('Content-Type', 'text/plain');
      res.send(text);
    }
  } catch (err: any) {
    console.error('API proxy error:', err.message);
    res.status(502).json({
      error: `Errore di connessione al server Xtream: ${err.message}`,
      targetUrl,
    });
  }
});

// Quick endpoint to test server connectivity and parse credentials
app.post('/api/xtream/test', async (req, res) => {
  const { host, username, password } = req.body;
  if (!host || !username || !password) {
    return res.status(400).json({ error: 'Dati mancanti: host, username o password' });
  }

  const cleanHost = host.replace(/\/+$/, '');
  const apiUrl = `${cleanHost}/player_api.php?username=${encodeURIComponent(username)}&password=${encodeURIComponent(password)}`;

  try {
    const controller = new AbortController();
    const timeout = setTimeout(() => controller.abort(), 15000);

    const response = await fetch(apiUrl, {
      headers: { 'User-Agent': DEFAULT_USER_AGENT },
      signal: controller.signal,
    });

    clearTimeout(timeout);

    const text = await response.text();
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

  app.listen(PORT, '0.0.0.0', () => {
    console.log(`Server Xtream Player avviato su http://0.0.0.0:${PORT}`);
  });
}

startServer();
