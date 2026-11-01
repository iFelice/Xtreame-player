import {
  VPN_AAD_PREFIX,
  VPN_IV_BYTES,
  VPN_KEY_BYTES,
  VPN_MAX_PLAINTEXT_BYTES,
} from '../../../shared/pairing/index.ts';

function sanitizePinParam(rawCode: string | null): string {
  if (!rawCode) return '';
  const digits = rawCode.trim().replace(/\D/g, '').slice(0, 6);
  return /^\d{6}$/.test(digits) ? digits : '';
}

export function renderSubmissionPage(rawCodeParam: string | null = null): string {
  const prefilledPin = sanitizePinParam(rawCodeParam);
  const hasPrefilledPin = prefilledPin.length === 6;

  return `<!DOCTYPE html>
<html lang="it">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>FelixVisionPlayer · Connetti TV</title>
  <style>
    *, *::before, *::after {
      box-sizing: border-box;
    }
    html, body {
      margin: 0;
      padding: 0;
      min-height: 100vh;
      background-color: #1C1C1E;
      color: #FFFFFF;
      font-family: system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
      -webkit-font-smoothing: antialiased;
    }
    body {
      display: flex;
      align-items: center;
      justify-content: center;
      padding: 16px;
    }
    .card {
      width: 100%;
      max-width: 410px;
      min-width: 288px;
      background-color: #2C2C2E;
      border: 1px solid #38383A;
      border-radius: 24px;
      padding: 24px 20px;
      box-shadow: 0 20px 40px rgba(0, 0, 0, 0.45);
    }
    @media (min-width: 430px) {
      .card {
        padding: 28px 26px;
      }
    }
    .header {
      text-align: center;
      margin-bottom: 22px;
    }
    .brand {
      font-size: 1.35rem;
      font-weight: 800;
      letter-spacing: -0.02em;
      margin: 0;
      color: #FFFFFF;
    }
    .brand span {
      color: #10B981;
    }
    .subtitle {
      margin: 6px 0 0;
      font-size: 0.875rem;
      color: #AEAEB2;
      line-height: 1.4;
    }
    .field {
      margin-bottom: 16px;
    }
    label {
      display: block;
      font-size: 0.85rem;
      font-weight: 700;
      color: #FFFFFF;
      margin-bottom: 6px;
    }
    .hint {
      display: block;
      font-size: 0.75rem;
      color: #AEAEB2;
      margin-top: 4px;
    }
    input {
      width: 100%;
      padding: 12px 14px;
      font-size: 1rem;
      font-family: inherit;
      color: #FFFFFF;
      background-color: #1C1C1E;
      border: 1px solid #48484A;
      border-radius: 14px;
      outline: none;
      transition: border-color 0.15s ease;
    }
    input::placeholder {
      color: #8E8E93;
    }
    input:focus {
      border-color: #10B981;
    }
    input[readonly] {
      color: #10B981;
      border-color: #10B981;
      font-weight: 800;
      letter-spacing: 0.2em;
      text-align: center;
      cursor: default;
    }
    #pin {
      letter-spacing: 0.2em;
      font-weight: 700;
      text-align: center;
      font-size: 1.2rem;
    }
    .password-wrapper {
      position: relative;
      display: flex;
      align-items: center;
    }
    .password-wrapper input {
      padding-right: 88px;
    }
    .toggle-btn {
      position: absolute;
      right: 8px;
      padding: 6px 10px;
      font-size: 0.78rem;
      font-weight: 700;
      font-family: inherit;
      color: #FFFFFF;
      background-color: #2C2C2E;
      border: 1px solid #48484A;
      border-radius: 10px;
      cursor: pointer;
    }
    .submit-btn {
      width: 100%;
      margin-top: 6px;
      padding: 14px 16px;
      font-size: 1rem;
      font-weight: 800;
      font-family: inherit;
      background-color: #10B981;
      color: #1C1C1E;
      border: none;
      border-radius: 16px;
      cursor: pointer;
      transition: opacity 0.15s ease, transform 0.1s ease;
    }
    .submit-btn:active {
      transform: scale(0.99);
    }
    .submit-btn:disabled {
      opacity: 0.6;
      cursor: not-allowed;
    }
    .status {
      display: none;
      margin-top: 16px;
      padding: 12px 14px;
      border-radius: 14px;
      font-size: 0.875rem;
      font-weight: 600;
      line-height: 1.4;
      text-align: center;
    }
    .status.visible {
      display: block;
    }
    .status.ok {
      background-color: rgba(16, 185, 129, 0.18);
      border: 1px solid #10B981;
      color: #FFFFFF;
    }
    .status.err {
      background-color: rgba(255, 69, 58, 0.18);
      border: 1px solid #FF453A;
      color: #FFFFFF;
    }
  </style>
</head>
<body>
  <main class="card">
    <div class="header">
      <h1 class="brand">FelixVision <span>Player</span></h1>
      <p class="subtitle">Invia le credenziali alla tua Smart TV</p>
    </div>

    <form id="pair-form" autocomplete="off" novalidate>
      <div class="field">
        <label for="pin">PIN</label>
        <input
          id="pin"
          name="code"
          type="text"
          inputmode="numeric"
          pattern="[0-9]{6}"
          maxlength="6"
          placeholder="6 cifre"
          value="${prefilledPin}"
          ${hasPrefilledPin ? 'readonly' : 'autofocus'}
          autocomplete="off"
          required
        />
      </div>

      <div class="field">
        <label for="server">Codice o indirizzo del server</label>
        <input
          id="server"
          name="server"
          type="text"
          placeholder="es. 001 oppure http://…"
          ${hasPrefilledPin ? 'autofocus' : ''}
          autocomplete="off"
          required
        />
        <span class="hint">Inserisci un codice breve (es. 001) o l’indirizzo completo http://…</span>
      </div>

      <div class="field">
        <label for="username">Utente</label>
        <input
          id="username"
          name="username"
          type="text"
          placeholder="Nome utente"
          autocomplete="off"
          required
        />
      </div>

      <div class="field">
        <label for="password">Password</label>
        <div class="password-wrapper">
          <input
            id="password"
            name="password"
            type="password"
            placeholder="Password"
            autocomplete="off"
            required
          />
          <button type="button" id="toggle-password" class="toggle-btn" aria-label="Mostra o nascondi password">
            Mostra
          </button>
        </div>
      </div>

      <button type="submit" id="submit-btn" class="submit-btn">Invia alla TV</button>
    </form>

    <div id="status-box" class="status" role="status" aria-live="polite"></div>
  </main>

  <script>
    (function () {
      var form = document.getElementById('pair-form');
      var pinInput = document.getElementById('pin');
      var serverInput = document.getElementById('server');
      var userInput = document.getElementById('username');
      var passInput = document.getElementById('password');
      var toggleBtn = document.getElementById('toggle-password');
      var submitBtn = document.getElementById('submit-btn');
      var statusBox = document.getElementById('status-box');

      function showStatus(text, isOk) {
        statusBox.textContent = text;
        statusBox.className = 'status visible ' + (isOk ? 'ok' : 'err');
      }

      try {
        var params = new URLSearchParams(window.location.search);
        var queryCode = (params.get('code') || '').trim().replace(/\\D/g, '').slice(0, 6);
        if (/^\\d{6}$/.test(queryCode)) {
          pinInput.value = queryCode;
          pinInput.readOnly = true;
          serverInput.focus();
        } else if (!pinInput.readOnly) {
          pinInput.focus();
        } else {
          serverInput.focus();
        }
      } catch (_) {}

      pinInput.addEventListener('input', function () {
        if (!pinInput.readOnly) {
          pinInput.value = pinInput.value.replace(/\\D/g, '').slice(0, 6);
        }
      });

      toggleBtn.addEventListener('click', function () {
        var hidden = passInput.type === 'password';
        passInput.type = hidden ? 'text' : 'password';
        toggleBtn.textContent = hidden ? 'Nascondi' : 'Mostra';
      });

      form.addEventListener('submit', function (e) {
        e.preventDefault();
        statusBox.className = 'status';
        var code = pinInput.value.trim();
        var server = serverInput.value.trim();
        var username = userInput.value.trim();
        var password = passInput.value.trim();

        if (!/^\\d{6}$/.test(code)) {
          showStatus('PIN errato o scaduto.', false);
          return;
        }
        if (!server || !username || !password) {
          showStatus('Compila tutti i campi.', false);
          return;
        }

        submitBtn.disabled = true;
        fetch('/api/pair/submit', {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify({
            code: code,
            server: server,
            username: username,
            password: password
          })
        })
          .then(function (res) {
            return res.json().catch(function () { return {}; }).then(function (body) {
              return { status: res.status, ok: res.ok, body: body };
            });
          })
          .then(function (result) {
            if (result.ok && result.body && result.body.ok) {
              showStatus('Fatto. Sulla TV premi Accedi al Catalogo', true);
              return;
            }
            if (result.status === 400 && result.body && result.body.error === 'UNKNOWN_SERVER_CODE') {
              showStatus('Codice server sconosciuto.', false);
              return;
            }
            if (result.status === 429) {
              showStatus('Troppi tentativi. Attendi qualche minuto prima di riprovare.', false);
              return;
            }
            if (result.status === 404 || result.status === 409) {
              showStatus('PIN errato o scaduto.', false);
              return;
            }
            showStatus('Dati del server non validi. Controlla i campi inseriti.', false);
          })
          .catch(function () {
            showStatus('Errore di connessione. Riprova.', false);
          })
          .finally(function () {
            submitBtn.disabled = false;
          });
      });
    })();
  </script>
</body>
</html>`;
}

export function renderVpnPage(): string {
  return `<!DOCTYPE html>
<html lang="it">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>VPN per FelixVP</title>
  <style>
    *, *::before, *::after {
      box-sizing: border-box;
    }
    html, body {
      margin: 0;
      padding: 0;
      min-height: 100vh;
      background-color: #1C1C1E;
      color: #FFFFFF;
      font-family: system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
      -webkit-font-smoothing: antialiased;
    }
    body {
      display: flex;
      align-items: center;
      justify-content: center;
      padding: 16px;
    }
    .card {
      width: 100%;
      max-width: 520px;
      min-width: 288px;
      background-color: #2C2C2E;
      border: 1px solid #38383A;
      border-radius: 24px;
      padding: 24px 20px;
      box-shadow: 0 20px 40px rgba(0, 0, 0, 0.45);
    }
    @media (min-width: 540px) {
      .card {
        padding: 28px 26px;
      }
    }
    .header {
      text-align: center;
      margin-bottom: 22px;
    }
    .brand {
      font-size: 1.35rem;
      font-weight: 800;
      letter-spacing: -0.02em;
      margin: 0;
      color: #FFFFFF;
    }
    .brand span {
      color: #10B981;
    }
    .subtitle {
      margin: 8px 0 0;
      font-size: 0.875rem;
      color: #AEAEB2;
      line-height: 1.5;
    }
    .field {
      margin-bottom: 16px;
    }
    label {
      display: block;
      font-size: 0.85rem;
      font-weight: 700;
      color: #FFFFFF;
      margin-bottom: 6px;
    }
    textarea, input[type="file"] {
      width: 100%;
      padding: 12px 14px;
      font-size: 0.95rem;
      font-family: inherit;
      color: #FFFFFF;
      background-color: #1C1C1E;
      border: 1px solid #48484A;
      border-radius: 14px;
      outline: none;
    }
    textarea {
      min-height: 220px;
      resize: vertical;
      line-height: 1.45;
      font-family: ui-monospace, SFMono-Regular, Menlo, Consolas, monospace;
    }
    textarea:focus, input[type="file"]:focus {
      border-color: #10B981;
    }
    input[type="file"]::file-selector-button {
      margin-right: 10px;
      padding: 7px 10px;
      color: #FFFFFF;
      background-color: #38383A;
      border: 1px solid #48484A;
      border-radius: 9px;
      font: inherit;
      cursor: pointer;
    }
    .submit-btn {
      width: 100%;
      margin-top: 6px;
      padding: 14px 16px;
      font-size: 1rem;
      font-weight: 800;
      font-family: inherit;
      background-color: #10B981;
      color: #1C1C1E;
      border: none;
      border-radius: 16px;
      cursor: pointer;
      transition: opacity 0.15s ease, transform 0.1s ease;
    }
    .submit-btn:active {
      transform: scale(0.99);
    }
    .submit-btn:disabled {
      opacity: 0.6;
      cursor: not-allowed;
    }
    .status {
      display: none;
      margin-top: 16px;
      padding: 12px 14px;
      border-radius: 14px;
      font-size: 0.875rem;
      font-weight: 600;
      line-height: 1.4;
      text-align: center;
    }
    .status.visible {
      display: block;
    }
    .status.ok {
      background-color: rgba(16, 185, 129, 0.18);
      border: 1px solid #10B981;
      color: #FFFFFF;
    }
    .status.err {
      background-color: rgba(255, 69, 58, 0.18);
      border: 1px solid #FF453A;
      color: #FFFFFF;
    }
  </style>
</head>
<body>
  <main class="card">
    <div class="header">
      <h1 class="brand">VPN per <span>FelixVP</span></h1>
      <p class="subtitle">Incolla il contenuto del file .conf WireGuard (per esempio quello scaricato dal tuo account Proton VPN) oppure scegli il file</p>
    </div>

    <form id="vpn-form" autocomplete="off" novalidate>
      <div class="field">
        <label for="vpn-config">Configurazione WireGuard</label>
        <textarea id="vpn-config" name="configuration" spellcheck="false" autocapitalize="off" autocomplete="off" aria-describedby="status-box"></textarea>
      </div>

      <div class="field">
        <label for="vpn-file">File .conf</label>
        <input id="vpn-file" name="file" type="file" accept=".conf,text/plain" />
      </div>

      <button type="submit" id="submit-btn" class="submit-btn" disabled>Invia alla TV</button>
    </form>

    <div id="status-box" class="status" role="status" aria-live="polite"></div>
  </main>

  <script>
    (function () {
      var form = document.getElementById('vpn-form');
      var textarea = document.getElementById('vpn-config');
      var fileInput = document.getElementById('vpn-file');
      var submitBtn = document.getElementById('submit-btn');
      var statusBox = document.getElementById('status-box');
      var queryCode = new URLSearchParams(window.location.search).get('code') || '';
      var keyMatch = /^#k=([A-Za-z0-9_-]+)$/.exec(window.location.hash);
      var encodedKey = keyMatch ? keyMatch[1] : '';
      window.history.replaceState(null, '', window.location.pathname + window.location.search);

      var code = queryCode;
      var keyBytes = null;

      function showStatus(text, isOk) {
        statusBox.textContent = text;
        statusBox.className = 'status visible ' + (isOk ? 'ok' : 'err');
      }

      function decodeBase64Url(value) {
        if (!/^[A-Za-z0-9_-]+$/.test(value) || value.length % 4 === 1) {
          throw new Error('Invalid base64url');
        }
        var base64 = value.replace(/-/g, '+').replace(/_/g, '/');
        base64 += '='.repeat((4 - (base64.length % 4)) % 4);
        var binary = window.atob(base64);
        var bytes = new Uint8Array(binary.length);
        for (var i = 0; i < binary.length; i += 1) {
          bytes[i] = binary.charCodeAt(i);
        }
        return bytes;
      }

      function encodeBase64Url(bytes) {
        var binary = '';
        for (var i = 0; i < bytes.length; i += 1) {
          binary += String.fromCharCode(bytes[i]);
        }
        return window.btoa(binary).replace(/\\+/g, '-').replace(/\\//g, '_').replace(/=+$/, '');
      }

      function isWireGuardConfiguration(text) {
        if (new TextEncoder().encode(text).byteLength > ${VPN_MAX_PLAINTEXT_BYTES}) return false;
        return text.indexOf('[Interface]') !== -1 &&
          text.indexOf('PrivateKey') !== -1 &&
          text.indexOf('[Peer]') !== -1 &&
          text.indexOf('PublicKey') !== -1 &&
          text.indexOf('Endpoint') !== -1;
      }

      fileInput.addEventListener('change', function () {
        var file = fileInput.files && fileInput.files[0];
        if (!file) return;
        textarea.value = '';
        submitBtn.disabled = true;
        var reader = new FileReader();
        reader.onload = function () {
          textarea.value = typeof reader.result === 'string' ? reader.result : '';
          submitBtn.disabled = keyBytes === null;
        };
        reader.onerror = function () {
          showStatus('Impossibile leggere il file .conf.', false);
          submitBtn.disabled = keyBytes === null;
        };
        reader.readAsText(file);
      });

      try {
        if (!/^\\d{6}$/.test(code)) throw new Error('Invalid code');
        keyBytes = decodeBase64Url(encodedKey);
        encodedKey = '';
        keyMatch = null;
        if (keyBytes.byteLength !== ${VPN_KEY_BYTES}) throw new Error('Invalid key length');
        if (!window.crypto || !window.crypto.subtle) throw new Error('Web Crypto unavailable');
      } catch (_) {
        encodedKey = '';
        keyMatch = null;
        if (keyBytes) keyBytes.fill(0);
        keyBytes = null;
        showStatus('Apri questa pagina dal QR mostrato sulla TV', false);
        return;
      }

      submitBtn.disabled = false;
      form.addEventListener('submit', async function (event) {
        event.preventDefault();
        if (!keyBytes || !code) return;

        var plaintext = textarea.value;
        var plaintextBytes = null;
        var ciphertextBytes = null;
        var ivBytes = null;
        var ivText = '';
        var ciphertextText = '';
        var sent = false;

        if (!isWireGuardConfiguration(plaintext)) {
          plaintext = '';
          showStatus('Il testo non sembra una configurazione WireGuard', false);
          return;
        }

        submitBtn.disabled = true;
        try {
          plaintextBytes = new TextEncoder().encode(plaintext);
          var cryptoKey = await window.crypto.subtle.importKey(
            'raw', keyBytes, 'AES-GCM', false, ['encrypt']
          );
          ivBytes = window.crypto.getRandomValues(new Uint8Array(${VPN_IV_BYTES}));
          ciphertextBytes = new Uint8Array(await window.crypto.subtle.encrypt(
            {
              name: 'AES-GCM',
              iv: ivBytes,
              additionalData: new TextEncoder().encode(${JSON.stringify(VPN_AAD_PREFIX)} + code)
            },
            cryptoKey,
            plaintextBytes
          ));
          ivText = encodeBase64Url(ivBytes);
          ciphertextText = encodeBase64Url(ciphertextBytes);

          var response = await fetch('/api/vpn/submit', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ code: code, iv: ivText, ciphertext: ciphertextText })
          });

          if (response.ok) {
            textarea.value = '';
            fileInput.value = '';
            plaintext = '';
            code = '';
            keyBytes.fill(0);
            keyBytes = null;
            sent = true;
            showStatus('Configurazione inviata: la TV la riceve entro pochi secondi', true);
            return;
          }
          if (response.status === 404) {
            showStatus('Sessione scaduta. Rigenera il QR dalla TV.', false);
          } else if (response.status === 409) {
            showStatus('Configurazione già inviata.', false);
          } else if (response.status === 429) {
            showStatus('Troppi tentativi. Attendi qualche minuto prima di riprovare.', false);
          } else {
            showStatus('Invio non riuscito. Riprova.', false);
          }
        } catch (_) {
          showStatus('Errore di connessione o di cifratura. Riprova.', false);
        } finally {
          plaintext = '';
          if (plaintextBytes) plaintextBytes.fill(0);
          if (ciphertextBytes) ciphertextBytes.fill(0);
          if (ivBytes) ivBytes.fill(0);
          ivText = '';
          ciphertextText = '';
          if (!sent && keyBytes) submitBtn.disabled = false;
        }
      });
    })();
  </script>
</body>
</html>`;
}
