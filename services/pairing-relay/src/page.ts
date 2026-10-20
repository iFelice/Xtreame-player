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
