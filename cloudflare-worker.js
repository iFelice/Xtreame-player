/**
 * Cloudflare Worker / Static Assets Handler per Xtream Player
 * Gestisce sia il frontend statico (dist) sia i proxy API e streaming video
 */

const DEFAULT_USER_AGENT = 'IPTVSmartersPro/3.1.5.1 (Linux; Android 11; Smart TV)';

export default {
  async fetch(request, env, ctx) {
    const requestUrl = new URL(request.url);

    // Gestione preflight CORS (OPTIONS)
    if (request.method === 'OPTIONS') {
      return new Response(null, {
        status: 204,
        headers: {
          'Access-Control-Allow-Origin': '*',
          'Access-Control-Allow-Methods': 'GET, HEAD, POST, OPTIONS',
          'Access-Control-Allow-Headers': '*',
          'Access-Control-Max-Age': '86400',
        },
      });
    }

    // Endpoint test credenziali Xtream
    if (requestUrl.pathname === '/api/xtream/test' && request.method === 'POST') {
      try {
        const body = await request.json();
        const { host, username, password } = body;
        if (!host || !username || !password) {
          return new Response(JSON.stringify({ error: 'Dati mancanti' }), {
            status: 400,
            headers: { 'Content-Type': 'application/json', 'Access-Control-Allow-Origin': '*' },
          });
        }

        const cleanHost = host.replace(/\/+$/, '');
        const apiUrl = `${cleanHost}/player_api.php?username=${encodeURIComponent(username)}&password=${encodeURIComponent(password)}`;
        const testRes = await fetch(apiUrl, {
          headers: { 'User-Agent': DEFAULT_USER_AGENT },
        });

        const text = await testRes.text();
        const data = JSON.parse(text);

        if (data.user_info?.auth === 0 || data.user_info?.status === 'Disabled') {
          return new Response(JSON.stringify({ error: 'Credenziali non valide', data }), {
            status: 401,
            headers: { 'Content-Type': 'application/json', 'Access-Control-Allow-Origin': '*' },
          });
        }

        return new Response(
          JSON.stringify({
            success: true,
            auth: data.user_info?.auth,
            userInfo: data.user_info,
            serverInfo: data.server_info,
          }),
          {
            status: 200,
            headers: { 'Content-Type': 'application/json', 'Access-Control-Allow-Origin': '*' },
          }
        );
      } catch (err) {
        return new Response(
          JSON.stringify({ error: `Errore test server: ${err.message || String(err)}` }),
          {
            status: 500,
            headers: { 'Content-Type': 'application/json', 'Access-Control-Allow-Origin': '*' },
          }
        );
      }
    }

    // Endpoint Proxy (Stream o API JSON) con parametro ?url=
    const targetUrl = requestUrl.searchParams.get('url');

    if (targetUrl) {
      try {
        const isApi = requestUrl.pathname.includes('/api/proxy/api') || targetUrl.includes('player_api.php');
        const isM3u8 = targetUrl.toLowerCase().includes('.m3u8');
        const forwardHeaders = new Headers();
        forwardHeaders.set('User-Agent', DEFAULT_USER_AGENT);
        forwardHeaders.set('Accept', '*/*');
        forwardHeaders.set('Connection', 'keep-alive');

        const rangeHeader = request.headers.get('Range');
        if (rangeHeader) {
          forwardHeaders.set('Range', rangeHeader);
        }

        let response = await fetch(targetUrl, {
          method: request.method === 'HEAD' ? 'HEAD' : 'GET',
          headers: forwardHeaders,
          redirect: 'follow',
        });

        // Se l'API restituisce 530 o 5xx, prova a invertire http / https
        if (isApi && !response.ok && (response.status === 530 || response.status >= 500)) {
          try {
            const altUrl = targetUrl.startsWith('https://')
              ? targetUrl.replace(/^https:\/\//i, 'http://')
              : targetUrl.replace(/^http:\/\//i, 'https://');
            const altResponse = await fetch(altUrl, {
              method: 'GET',
              headers: {
                'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36',
                'Accept': 'application/json, text/plain, */*',
              },
            });
            if (altResponse.ok) {
              response = altResponse;
            }
          } catch (e) {}
        }

        if (isM3u8 && response.ok) {
          const text = await response.text();
          const workerOrigin = requestUrl.origin;
          const baseUrl = targetUrl;

          const lines = text.split(/\r?\n/);
          const rewritten = lines.map((line) => {
            const trimmed = line.trim();
            if (!trimmed) return line;

            if (trimmed.startsWith('#')) {
              return line.replace(/URI=["']([^"']+)["']/g, (_match, uri) => {
                try {
                  const resolved = new URL(uri, baseUrl).toString();
                  return `URI="${workerOrigin}/api/proxy/stream?url=${encodeURIComponent(resolved)}"`;
                } catch {
                  return _match;
                }
              });
            }

            try {
              const resolved = new URL(trimmed, baseUrl).toString();
              return `${workerOrigin}/api/proxy/stream?url=${encodeURIComponent(resolved)}`;
            } catch {
              return trimmed;
            }
          });

          return new Response(rewritten.join('\n'), {
            status: response.status,
            headers: {
              'Content-Type': 'application/vnd.apple.mpegurl',
              'Access-Control-Allow-Origin': '*',
              'Access-Control-Allow-Methods': 'GET, HEAD, OPTIONS',
              'Access-Control-Allow-Headers': '*',
              'Cache-Control': 'no-cache, no-store, must-revalidate',
            },
          });
        }

        const responseHeaders = new Headers(response.headers);
        responseHeaders.set('Access-Control-Allow-Origin', '*');
        responseHeaders.set('Access-Control-Allow-Methods', 'GET, HEAD, OPTIONS');
        responseHeaders.set('Access-Control-Allow-Headers', '*');
        responseHeaders.set('Access-Control-Expose-Headers', 'Content-Length, Content-Range, Accept-Ranges');

        return new Response(response.body, {
          status: response.status,
          statusText: response.statusText,
          headers: responseHeaders,
        });
      } catch (err) {
        return new Response(
          JSON.stringify({ error: `Errore proxy: ${err.message || String(err)}`, targetUrl }),
          {
            status: 502,
            headers: {
              'Content-Type': 'application/json',
              'Access-Control-Allow-Origin': '*',
            },
          }
        );
      }
    }

    // Se non è una richiesta API o Proxy, servi i file statici dell'app frontend (dist)
    if (env && env.ASSETS) {
      return env.ASSETS.fetch(request);
    }

    return new Response('Xtream Player Edge Running', { status: 200 });
  },
};
