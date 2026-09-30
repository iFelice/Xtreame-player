// Cloudflare Pages Function: /api/proxy/stream
// Gestisce lo streaming video (HLS .m3u8, MPEG-TS .ts, MP4, MKV) su Cloudflare Edge

const DEFAULT_USER_AGENT = 'IPTVSmartersPro/3.1.5.1 (Linux; Android 11; Smart TV)';

export async function onRequestOptions() {
  return new Response(null, {
    status: 204,
    headers: {
      'Access-Control-Allow-Origin': '*',
      'Access-Control-Allow-Methods': 'GET, HEAD, OPTIONS',
      'Access-Control-Allow-Headers': '*',
      'Access-Control-Max-Age': '86400',
    },
  });
}

export async function onRequest(context: any) {
  const request = context.request;
  const requestUrl = new URL(request.url);
  const targetUrl = requestUrl.searchParams.get('url');

  if (!targetUrl) {
    return new Response(JSON.stringify({ error: 'Parametro ?url= mancante' }), {
      status: 400,
      headers: {
        'Content-Type': 'application/json',
        'Access-Control-Allow-Origin': '*',
      },
    });
  }

  try {
    const isM3u8 = targetUrl.toLowerCase().includes('.m3u8');
    const forwardHeaders = new Headers();
    forwardHeaders.set('User-Agent', DEFAULT_USER_AGENT);
    forwardHeaders.set('Accept', '*/*');
    forwardHeaders.set('Connection', 'keep-alive');

    const rangeHeader = request.headers.get('Range');
    if (rangeHeader) {
      forwardHeaders.set('Range', rangeHeader);
    }

    const response = await fetch(targetUrl, {
      method: request.method === 'HEAD' ? 'HEAD' : 'GET',
      headers: forwardHeaders,
      redirect: 'follow',
    });

    // Se è una playlist HLS (.m3u8), riscrivi i percorsi dei segmenti (.ts)
    // in modo che continuino a passare per Cloudflare Pages con certificato HTTPS
    if (isM3u8 && response.ok) {
      const text = await response.text();
      const workerOrigin = requestUrl.origin;
      const baseUrl = targetUrl;

      const lines = text.split(/\r?\n/);
      const rewritten = lines.map((line: string) => {
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

    // Risposta diretta in streaming per segmenti (.ts), MP4, MKV
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
  } catch (err: any) {
    return new Response(
      JSON.stringify({ error: `Errore proxy stream: ${err.message || err}`, targetUrl }),
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
