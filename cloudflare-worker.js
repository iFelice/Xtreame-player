/**
 * CLOUDFLARE WORKER PROXY PER STREAMING IPTV XTREAM CODES
 * ========================================================
 * Questo script gratuito risolve definitivamente il limite dei 5 GB di Render:
 * - 100.000 richieste al giorno GRATUITE
 * - NESSUN limite restrittivo di 5 GB di banda
 * - Converte i flussi HTTP in HTTPS con certificato SSL valido
 * - Consente a Chrome, Safari e iOS di riprodurre senza blocchi "Mixed Content"
 * 
 * COME ATTIVARLO IN 3 MINUTI SU CLOUDFLARE (100% GRATIS):
 * 1. Vai su https://dash.cloudflare.com ed effettua l'accesso gratuito.
 * 2. Clicca su "Workers & Pages" nel menu a sinistra -> "Create application" -> "Create Worker".
 * 3. Assegna un nome (es: "xtream-proxy") e clicca su "Deploy".
 * 4. Clicca su "Edit code", cancella tutto, incolla questo intero file e clicca su "Deploy".
 * 5. Otterrai un URL pubblico tipo: https://xtream-proxy.<tuo-nome>.workers.dev
 */

const DEFAULT_USER_AGENT = 'IPTVSmartersPro/3.1.5.1 (Linux; Android 11; Smart TV)';

export default {
  async fetch(request, env, ctx) {
    // Gestione preflight CORS (OPTIONS)
    if (request.method === 'OPTIONS') {
      return new Response(null, {
        headers: {
          'Access-Control-Allow-Origin': '*',
          'Access-Control-Allow-Methods': 'GET, HEAD, POST, OPTIONS',
          'Access-Control-Allow-Headers': '*',
          'Access-Control-Max-Age': '86400',
        },
      });
    }

    const requestUrl = new URL(request.url);
    const targetUrl = requestUrl.searchParams.get('url');

    if (!targetUrl) {
      return new Response(
        JSON.stringify({ error: 'Parametro ?url= mancante' }),
        { status: 400, headers: { 'Content-Type': 'application/json' } }
      );
    }

    try {
      const parsedTarget = new URL(targetUrl);
      const isM3u8 = parsedTarget.pathname.endsWith('.m3u8') || targetUrl.includes('.m3u8');

      // Clona gli header della richiesta (incluso Range per seek MP4/MKV)
      const forwardHeaders = new Headers();
      forwardHeaders.set('User-Agent', DEFAULT_USER_AGENT);
      forwardHeaders.set('Accept', '*/*');
      forwardHeaders.set('Connection', 'keep-alive');

      const rangeHeader = request.headers.get('Range');
      if (rangeHeader) {
        forwardHeaders.set('Range', rangeHeader);
      }

      // Esegui la richiesta al server Xtream originale
      const response = await fetch(targetUrl, {
        method: request.method === 'HEAD' ? 'HEAD' : 'GET',
        headers: forwardHeaders,
        redirect: 'follow',
      });

      // Se è una playlist HLS (.m3u8), riscrivi gli URL dei segmenti (.ts)
      // in modo che continuino a passare attraverso questo Worker con HTTPS valido
      if (isM3u8 && response.ok) {
        const text = await response.text();
        const workerOrigin = requestUrl.origin;
        const baseUrl = targetUrl;

        const lines = text.split(/\r?\n/);
        const rewritten = lines.map((line) => {
          const trimmed = line.trim();
          if (!trimmed) return line;

          if (trimmed.startsWith('#')) {
            // Riscrivi tag URI="..." (es. chiavi di cifratura o mappe)
            return line.replace(/URI=["']([^"']+)["']/g, (_match, uri) => {
              try {
                const resolved = new URL(uri, baseUrl).toString();
                return `URI="${workerOrigin}?url=${encodeURIComponent(resolved)}"`;
              } catch {
                return _match;
              }
            });
          }

          // Riscrivi i segmenti video (.ts o sotto-playlist)
          try {
            const resolved = new URL(trimmed, baseUrl).toString();
            return `${workerOrigin}?url=${encodeURIComponent(resolved)}`;
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

      // Per segmenti video (.ts), MP4, MKV o JSON
      const responseHeaders = new Headers(response.headers);
      responseHeaders.set('Access-Control-Allow-Origin', '*');
      responseHeaders.set('Access-Control-Allow-Methods', 'GET, HEAD, OPTIONS');
      responseHeaders.set('Access-Control-Allow-Headers', '*');
      responseHeaders.set('Access-Control-Expose-Headers', 'Content-Length, Content-Range, Accept-Ranges');

      // Streaming trasparente senza buffering in memoria
      return new Response(response.body, {
        status: response.status,
        statusText: response.statusText,
        headers: responseHeaders,
      });
    } catch (err) {
      return new Response(
        JSON.stringify({ error: `Errore proxy Cloudflare: ${err.message}`, targetUrl }),
        {
          status: 502,
          headers: {
            'Content-Type': 'application/json',
            'Access-Control-Allow-Origin': '*',
          },
        }
      );
    }
  },
};
