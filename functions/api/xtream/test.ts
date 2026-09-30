// Cloudflare Pages Function: /api/xtream/test
// Testa la connessione alle credenziali Xtream Codes

const DEFAULT_USER_AGENT = 'IPTVSmartersPro/3.1.5.1 (Linux; Android 11; Smart TV)';

export async function onRequestOptions() {
  return new Response(null, {
    status: 204,
    headers: {
      'Access-Control-Allow-Origin': '*',
      'Access-Control-Allow-Methods': 'POST, OPTIONS',
      'Access-Control-Allow-Headers': '*',
    },
  });
}

export async function onRequestPost(context: any) {
  try {
    const body = await context.request.json();
    const { host, username, password } = body;

    if (!host || !username || !password) {
      return new Response(
        JSON.stringify({ error: 'Dati mancanti: host, username o password' }),
        { status: 400, headers: { 'Content-Type': 'application/json', 'Access-Control-Allow-Origin': '*' } }
      );
    }

    const cleanHost = host.replace(/\/+$/, '');
    const apiUrl = `${cleanHost}/player_api.php?username=${encodeURIComponent(username)}&password=${encodeURIComponent(password)}`;

    const response = await fetch(apiUrl, {
      headers: { 'User-Agent': DEFAULT_USER_AGENT },
    });

    const text = await response.text();
    let data: any;
    try {
      data = JSON.parse(text);
    } catch {
      return new Response(
        JSON.stringify({
          error: 'Il server non ha restituito una risposta JSON valida da Xtream Codes',
          raw: text.slice(0, 300),
        }),
        { status: 502, headers: { 'Content-Type': 'application/json', 'Access-Control-Allow-Origin': '*' } }
      );
    }

    if (data.user_info?.auth === 0 || data.user_info?.status === 'Disabled') {
      return new Response(
        JSON.stringify({ error: 'Credenziali non valide o account disabilitato', data }),
        { status: 401, headers: { 'Content-Type': 'application/json', 'Access-Control-Allow-Origin': '*' } }
      );
    }

    return new Response(
      JSON.stringify({
        success: true,
        auth: data.user_info?.auth,
        userInfo: data.user_info,
        serverInfo: data.server_info,
      }),
      { status: 200, headers: { 'Content-Type': 'application/json', 'Access-Control-Allow-Origin': '*' } }
    );
  } catch (err: any) {
    return new Response(
      JSON.stringify({ error: `Impossibile raggiungere il server Xtream: ${err.message || err}` }),
      { status: 500, headers: { 'Content-Type': 'application/json', 'Access-Control-Allow-Origin': '*' } }
    );
  }
}
