// Cloudflare Pages Function: /api/proxy/api
// Gestisce le chiamate JSON alle API Xtream Codes con CORS e fallback automatici (HTTP/HTTPS, User-Agent)

const USER_AGENTS = [
  'IPTVSmartersPro/3.1.5.1 (Linux; Android 11; Smart TV)',
  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36',
  'VLC/3.0.18 LibVLC/3.0.18',
];

export async function onRequestOptions() {
  return new Response(null, {
    status: 204,
    headers: {
      'Access-Control-Allow-Origin': '*',
      'Access-Control-Allow-Methods': 'GET, POST, OPTIONS',
      'Access-Control-Allow-Headers': '*',
      'Access-Control-Max-Age': '86400',
    },
  });
}

export async function onRequestGet(context: any) {
  const requestUrl = new URL(context.request.url);
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

  const urlsToTry = [targetUrl];
  if (targetUrl.startsWith('https://')) {
    urlsToTry.push(targetUrl.replace(/^https:\/\//i, 'http://'));
  } else if (targetUrl.startsWith('http://')) {
    urlsToTry.push(targetUrl.replace(/^http:\/\//i, 'https://'));
  }

  let lastStatus = 502;
  let lastText = '';

  for (const currentUrl of urlsToTry) {
    for (const ua of USER_AGENTS) {
      try {
        const response = await fetch(currentUrl, {
          method: 'GET',
          headers: {
            'User-Agent': ua,
            'Accept': 'application/json, text/plain, */*',
          },
        });

        const text = await response.text();
        lastStatus = response.status;
        lastText = text;

        if (response.ok) {
          const contentType = response.headers.get('content-type') || 'application/json';
          return new Response(text, {
            status: 200,
            headers: {
              'Content-Type': contentType,
              'Access-Control-Allow-Origin': '*',
              'Access-Control-Allow-Methods': 'GET, OPTIONS',
              'Access-Control-Allow-Headers': '*',
              'Cache-Control': 'no-cache',
            },
          });
        }

        // Se 401 (credenziali errate), ritorna subito
        if (response.status === 401) {
          return new Response(text, {
            status: 401,
            headers: {
              'Content-Type': 'application/json',
              'Access-Control-Allow-Origin': '*',
            },
          });
        }
      } catch (err: any) {
        lastText = err?.message || String(err);
      }
    }
  }

  // Se tutti i tentativi sono falliti
  let friendlyMessage = `Errore di connessione (HTTP ${lastStatus})`;
  if (lastStatus === 530) {
    friendlyMessage = 'HTTP 530: Il server IPTV non è raggiungibile o ha bloccato la connessione DNS/Cloudflare. Verifica se hai specificato la porta esatta (es. :8080) o prova con http:// invece di https://.';
  } else if (lastStatus === 502 || lastStatus === 504) {
    friendlyMessage = `HTTP ${lastStatus}: Il server IPTV risulta offline o non risponde entro i tempi previsti.`;
  }

  return new Response(
    JSON.stringify({
      error: friendlyMessage,
      status: lastStatus,
      raw: lastText.slice(0, 300),
      targetUrl,
    }),
    {
      status: lastStatus >= 400 && lastStatus < 600 ? lastStatus : 502,
      headers: {
        'Content-Type': 'application/json',
        'Access-Control-Allow-Origin': '*',
      },
    }
  );
}
