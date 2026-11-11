#!/usr/bin/env node
/**
 * Smoke test "TV finta" per la build webOS.
 *
 *   npm run test:webos:tv            (esegue prima la build webOS)
 *   npm run test:webos:tv -- --no-build
 *
 * Apre `apps/webos-tv/build/index.html` da `file://` in Chromium con
 * `--allow-file-access-from-files`, cioè esattamente il modo in cui il TV legge
 * il pacchetto installato, con uno user-agent webOS (per attivare la modalità
 * TV dell'app) e una finestra 1920×1080. Il server Xtream è il mock locale
 * (`npm run mock:xtream`), il relay di abbinamento non viene mai usato.
 *
 * Verifiche: login, scope/inert e focus di pairing/server/settings/serie/conferma,
 * player live (banner, picker, zapping circolare, .ts → .m3u8, formato manuale e
 * ripristino focus), player VOD (pausa/barra e seek cumulativo), nessuna chiamata
 * Express da `file://`. Chromium non certifica il decoder MPEG-TS nativo del TV.
 *
 * Browser: usa nell'ordine `FVP_CHROMIUM_PATH`, i browser installati da
 * Playwright (`npx playwright install chromium`) o un Chrome/Chromium di
 * sistema.
 */
import { spawn } from 'node:child_process';
import fs from 'node:fs';
import http from 'node:http';
import path from 'node:path';
import process from 'node:process';
import { fileURLToPath } from 'node:url';

const scriptDir = path.dirname(fileURLToPath(import.meta.url));
const repoRoot = path.resolve(scriptDir, '..', '..');
const buildDir = path.join(repoRoot, 'apps', 'webos-tv', 'build');
const indexFile = path.join(buildDir, 'index.html');

const args = process.argv.slice(2);
const noBuild = args.includes('--no-build');
const mockPort = Number(process.env.FVP_MOCK_PORT || 3333);
const mockUrl = `http://localhost:${mockPort}`;
const RELAY_HOST = 'felixvision-pairing-relay.manganiellofelice.workers.dev';
// UA di un TV LG reale (webOS 25, motore Chrome 120): attiva isTvEnvironment().
const WEBOS_USER_AGENT =
  'Mozilla/5.0 (Web0S; Linux/SmartTV) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 WebAppManager';

const results = [];
let failed = 0;
function check(name, ok, detail = '') {
  results.push({ name, ok, detail });
  if (!ok) failed += 1;
  console.log(`${ok ? '  OK  ' : '  KO  '} ${name}${detail ? ` — ${detail}` : ''}`);
}

function sleep(ms) {
  return new Promise((resolve) => setTimeout(resolve, ms));
}

function requestJson(url, timeoutMs = 2000) {
  return new Promise((resolve) => {
    const request = http.get(url, (response) => {
      let body = '';
      response.on('data', (chunk) => (body += chunk));
      response.on('end', () => resolve({ status: response.statusCode ?? 0, body }));
    });
    request.on('error', () => resolve({ status: 0, body: '' }));
    request.setTimeout(timeoutMs, () => {
      request.destroy();
      resolve({ status: 0, body: '' });
    });
  });
}

// ── browser ─────────────────────────────────────────────────────────────────
async function launchBrowser() {
  let playwright;
  try {
    playwright = await import('playwright');
  } catch {
    try {
      playwright = await import('playwright-core');
    } catch {
      throw new Error(
        'Playwright non installato. Esegui `npm install` alla radice del repository ' +
          '(la dipendenza `playwright` è tra i devDependencies) oppure `npx playwright install chromium`.'
      );
    }
  }
  const chromium = playwright.chromium;
  const options = {
    headless: true,
    args: [
      '--allow-file-access-from-files',
      '--autoplay-policy=no-user-gesture-required',
      '--mute-audio',
      '--no-sandbox',
    ],
  };

  const override = process.env.FVP_CHROMIUM_PATH || process.env.CHROMIUM_PATH;
  if (override) {
    if (!fs.existsSync(override)) throw new Error(`FVP_CHROMIUM_PATH puntato a un file inesistente: ${override}`);
    return chromium.launch({ ...options, executablePath: override });
  }

  try {
    const downloaded = chromium.executablePath();
    if (downloaded && fs.existsSync(downloaded)) return await chromium.launch({ ...options, executablePath: downloaded });
  } catch {
    // browser Playwright non scaricati: si prova il Chrome di sistema
  }

  for (const candidate of systemChromePaths()) {
    if (fs.existsSync(candidate)) return chromium.launch({ ...options, executablePath: candidate });
  }

  throw new Error(
    'Nessun Chromium disponibile. Installa il browser Playwright con `npx playwright install chromium` ' +
      'oppure indica il eseguibile con FVP_CHROMIUM_PATH=/percorso/chrome.'
  );
}

function systemChromePaths() {
  return [
    '/Applications/Google Chrome.app/Contents/MacOS/Google Chrome',
    '/Applications/Chromium.app/Contents/MacOS/Chromium',
    '/usr/bin/google-chrome-stable',
    '/usr/bin/google-chrome',
    '/usr/bin/chromium',
    '/usr/bin/chromium-browser',
  ];
}

/** Invio di un tasto del telecomando con la fedeltà del CDP: keyCode reale, `code` vuoto. */
async function pressRemoteKey(page, key, keyCode) {
  const session = await page.context().newCDPSession(page);
  const base = { key, code: '', windowsVirtualKeyCode: keyCode, nativeVirtualKeyCode: keyCode };
  await session.send('Input.dispatchKeyEvent', { type: 'keyDown', ...base });
  await session.send('Input.dispatchKeyEvent', { type: 'keyUp', ...base });
  await session.detach();
}

// ── server di prova ────────────────────────────────────────────────────────
async function ensureMockServer() {
  const health = await requestJson(`${mockUrl}/health`);
  if (health.status === 200) {
    console.log(`[tv] uso il mock Xtream già in ascolto su ${mockUrl}`);
    return null;
  }
  console.log(`[tv] avvio del mock Xtream (npm run mock:xtream, porta ${mockPort})…`);
  const child = spawn('npm', ['run', 'mock:xtream'], {
    cwd: repoRoot,
    env: { ...process.env, XTREAM_MOCK_PORT: String(mockPort) },
    stdio: ['ignore', 'pipe', 'pipe'],
  });
  const log = [];
  child.stdout.on('data', (chunk) => log.push(chunk.toString()));
  child.stderr.on('data', (chunk) => log.push(chunk.toString()));

  for (let attempt = 0; attempt < 60; attempt += 1) {
    const probe = await requestJson(`${mockUrl}/health`);
    if (probe.status === 200) return { stop: () => child.kill('SIGTERM') };
    await sleep(250);
  }
  child.kill('SIGTERM');
  throw new Error(`il mock Xtream non ha risposto su ${mockUrl}:\n${log.join('')}`);
}

// ── scena ───────────────────────────────────────────────────────────────────
async function typeIntoTvField(page, selector, value) {
  // In modalità TV i campi restano readOnly finché OK non attiva la tastiera.
  await page.locator(selector).focus();
  await page.keyboard.press('Enter');
  await page.waitForFunction((query) => {
    const input = document.querySelector(query);
    return input && !input.readOnly;
  }, selector, { timeout: 3000 });
  await page.keyboard.type(value, { delay: 8 });
}

async function run() {
  if (!noBuild) {
    console.log('[tv] build webOS…');
    const { execFileSync } = await import('node:child_process');
    execFileSync('npm', ['run', 'build:webos'], { cwd: repoRoot, stdio: 'inherit' });
  }
  if (!fs.existsSync(indexFile)) {
    throw new Error(`manca ${indexFile}: eseguire prima \`npm run build:webos\`.`);
  }

  const server = await ensureMockServer();
  const browser = await launchBrowser();
  const requests = [];
  let context = null;

  try {
    context = await browser.newContext({
      viewport: { width: 1920, height: 1080 },
      userAgent: WEBOS_USER_AGENT,
    });
    context.on('request', (request) => requests.push(request.url()));
    const page = await context.newPage();
    const pageErrors = [];
    page.on('pageerror', (error) => pageErrors.push(String(error)));
    await page.addInitScript(() => {
      // Keep the browser's unavailable MPEG-TS/HLS decoder from racing the
      // remote-control assertions. Later the smoke releases one error event
      // deliberately to exercise the production .ts -> .m3u8 fallback.
      window.__fvpHoldVideoErrors = true;
      document.addEventListener('error', (event) => {
        if (window.__fvpHoldVideoErrors && event.target instanceof HTMLVideoElement) {
          event.preventDefault();
          event.stopImmediatePropagation();
        }
      }, true);
    });

    const fileUrl = `file://${indexFile}`;
    console.log(`[tv] apro ${fileUrl}`);
    await page.goto(fileUrl, { waitUntil: 'load' });

    // 1) schermata di accesso
    await page.waitForSelector('#tv-login-submit', { timeout: 15_000 });
    check('schermata di accesso visibile', await page.getByText('URL del Server Xtream').isVisible());
    check(
      'modalità TV attiva (login a schermo intero, niente menu mobile)',
      await page.locator('header').first().isVisible()
    );

    const pairingTrigger = page.getByRole('button', { name: /Configura con QR Code e PIN/i });
    await pairingTrigger.click();
    await page.waitForSelector('[data-tv-layer="pairing"]', { timeout: 5000 });
    await page.waitForFunction(() => document.querySelector('[data-tv-layer="pairing"]')?.contains(document.activeElement), null, { timeout: 5000 });
    check('pairing TV prende il focus e isola il login sottostante', await page.evaluate(() => {
      const layer = document.querySelector('[data-tv-layer="pairing"]');
      const field = document.querySelector('input[placeholder="http://server.esempio:8080"]');
      return Boolean(layer?.contains(document.activeElement) && field?.closest('[inert]'));
    }));
    await pressRemoteKey(page, 'ArrowDown', 40);
    check('le frecce nel pairing restano nello scope del modale', await page.evaluate(() =>
      Boolean(document.querySelector('[data-tv-layer="pairing"]')?.contains(document.activeElement))
    ));
    await pressRemoteKey(page, 'GoBack', 461);
    await page.waitForFunction(() => !document.querySelector('[data-tv-layer="pairing"]'), null, { timeout: 5000 });
    await page.waitForFunction(() => document.activeElement?.textContent?.includes('Configura con QR Code e PIN'), null, { timeout: 5000 });
    check('Indietro chiude il pairing e ripristina il focus al pulsante d’apertura', await page.evaluate(() =>
      document.activeElement?.textContent?.includes('Configura con QR Code e PIN') ?? false
    ));

    // 2) login al server finto → Novità
    await typeIntoTvField(page, 'input[placeholder="http://server.esempio:8080"]', mockUrl);
    await typeIntoTvField(page, 'input[placeholder="Nome utente"]', 'demo');
    await typeIntoTvField(page, 'input[placeholder="Password"]', 'demo');
    await page.click('#tv-login-submit');
    await page.waitForFunction(
      () => !document.querySelector('#tv-login-submit') && document.body.innerText.includes('Novità'),
      null,
      { timeout: 30_000 }
    );
    check('accesso riuscito: schermata "Novità"', true);
    check('catalogo caricato dal server (testo "Novità" presente)', await page.getByText('Novità').first().isVisible());
    check(
      'nessun errore non gestito nella pagina',
      pageErrors.length === 0,
      pageErrors.slice(0, 2).join(' | ')
    );

    // 3) ricaricamento → account ripristinato
    await page.reload({ waitUntil: 'load' });
    await page.waitForFunction(
      () => document.body.innerText.includes('Novità') && !document.querySelector('#tv-login-submit'),
      null,
      { timeout: 30_000 }
    );
    check('dopo il ricaricamento l’account è ripristinato senza nuovo accesso', true);

    await page.locator('button[title="Dettagli abbonamento e server"]').first().click();
    await page.waitForSelector('[data-tv-layer="server-info"]', { timeout: 5000 });
    check('info server isola la pagina e riceve il focus', await page.evaluate(() => {
      const layer = document.querySelector('[data-tv-layer="server-info"]');
      return Boolean(layer?.contains(document.activeElement) && document.querySelector('main')?.inert);
    }));
    await pressRemoteKey(page, 'ArrowRight', 39);
    check('la navigazione con frecce resta nell’info server', await page.evaluate(() =>
      Boolean(document.querySelector('[data-tv-layer="server-info"]')?.contains(document.activeElement))
    ));
    await page.locator('[data-tv-layer="server-info"] button').first().click();
    await page.waitForFunction(() => !document.querySelector('[data-tv-layer="server-info"]'), null, { timeout: 5000 });
    check('chiudendo info server il focus torna al comando che l’ha aperta', await page.evaluate(() =>
      document.activeElement?.getAttribute('title') === 'Dettagli abbonamento e server'
    ));

    await page.locator('button[title^="demo@"]').click();
    await page.getByRole('button', { name: 'Modifica' }).click();
    await page.waitForSelector('[data-tv-layer="settings-sync"]', { timeout: 5000 });
    check('sincronizzazione impostazioni isola il contenuto sottostante', await page.evaluate(() => {
      const layer = document.querySelector('[data-tv-layer="settings-sync"]');
      return Boolean(layer?.contains(document.activeElement) && document.querySelector('main')?.inert);
    }));
    await pressRemoteKey(page, 'ArrowDown', 40);
    check('la navigazione con frecce resta nella sincronizzazione impostazioni', await page.evaluate(() =>
      Boolean(document.querySelector('[data-tv-layer="settings-sync"]')?.contains(document.activeElement))
    ));
    await pressRemoteKey(page, 'GoBack', 461);
    await page.waitForFunction(() => !document.querySelector('[data-tv-layer="settings-sync"]'), null, { timeout: 5000 });
    const settingsFocus = await page.evaluate(() => ({
      matches: document.activeElement?.textContent?.includes('Modifica') ?? false,
      label: document.activeElement?.textContent?.trim() || document.activeElement?.tagName || '',
    }));
    check('Indietro chiude impostazioni e ripristina il focus', settingsFocus.matches, settingsFocus.label);

    // 4) nessuna richiesta agli endpoint Express. Su file:// un path relativo
    //    come /api/proxy/... diventerebbe un file locale: qui si controlla il
    //    path di ogni richiesta emessa dalla pagina (relay escluso).
    const expressPath = /\/api\/(proxy|session|runtime-config)(\/|\?|$)/;
    const expressCalls = requests.filter((url) => {
      if (url.includes(RELAY_HOST)) return false; // relay pubblico: ammesso
      const path = url.replace(/^[a-z][a-z0-9+.-]*:\/\/[^/]*\//i, '/');
      return expressPath.test(path);
    });
    check(
      'nessuna richiesta /api/ (proxy Express, session o runtime-config)',
      expressCalls.length === 0,
      expressCalls.slice(0, 3).join(' | ')
    );
    const directMockCalls = requests.filter((url) => url.startsWith(mockUrl));
    check(
      'le chiamate Xtream vanno diritte al server del provider',
      directMockCalls.some((url) => url.includes('/player_api.php')),
      `${directMockCalls.length} richieste a ${mockUrl}`
    );
    check(
      'nessun pulsante di download negli scaffali',
      (await page.locator('[aria-label^="Scarica"], [title^="Scarica"]').count()) === 0,
      `${await page.locator('[aria-label^="Scarica"], [title^="Scarica"]').count()} elementi`
    );

    // Serie: il dettaglio episodio è uno scope TV annidato e Back lo chiude.
    await page.getByRole('button', { name: /SERIE TV/i }).click();
    await page.waitForSelector('.media-content-panel [data-media-index]', { timeout: 20_000 });
    const seriesCard = page.locator('.media-content-panel [data-media-index]').first();
    await seriesCard.click();
    await page.waitForSelector('[data-tv-layer="series-detail"]', { timeout: 10_000 });
    check('modale serie isola la griglia e acquisisce il focus', await page.evaluate(() => {
      const layer = document.querySelector('[data-tv-layer="series-detail"]');
      const card = document.querySelector('.media-content-panel [data-media-index]');
      return Boolean(layer?.contains(document.activeElement) && card?.closest('[inert]'));
    }));
    await pressRemoteKey(page, 'GoBack', 461);
    await page.waitForFunction(() => !document.querySelector('[data-tv-layer="series-detail"]'), null, { timeout: 5000 });
    check('Indietro chiude la modale serie e ripristina il focus alla scheda', await page.evaluate(() =>
      document.activeElement?.matches('.media-content-panel [data-media-index]') ?? false
    ));

    // 5) tasto Indietro: si entra nella schermata iniziale TV
    await pressRemoteKey(page, 'GoBack', 461);
    await page.waitForFunction(() => document.body.innerText.includes('Cosa vuoi guardare?'), null, { timeout: 5000 });
    check('Indietro apre la schermata iniziale TV', true);

    // 6) player su webOS: focus, scope live, banner, picker, zapping e formati
    await page.getByRole('button', { name: /LIVE TV/i }).click();
    await page.waitForSelector('[id^="live-channel-"]', { timeout: 20_000 });
    await page.locator('[id^="live-channel-"]').first().click();
    await page.waitForSelector('[data-media-player="true"] video', { timeout: 20_000 });
    await page.waitForFunction(() => document.activeElement === document.querySelector('[data-media-player="true"]'), null, { timeout: 5000 });

    const videoSrc = await page.evaluate(() => document.querySelector('[data-media-player="true"] video')?.src ?? '');
    check(
      'il <video> nativo riceve l’URL del server (niente blob/MSE di hls.js)',
      videoSrc.startsWith(mockUrl),
      videoSrc.slice(0, 60)
    );
    check('all’apertura il player webOS acquisisce il focus', await page.evaluate(() =>
      document.activeElement === document.querySelector('[data-media-player="true"]')
    ));
    check('il catalogo dietro il player è inert', await page.evaluate(() =>
      Boolean(document.querySelector('.media-catalog')?.closest('[inert]'))
    ));
    check('il banner live mostra numero, nome e categoria', await page.evaluate(() => {
      const banner = document.querySelector('[data-live-channel-banner]');
      return Boolean(banner?.querySelector('[data-live-channel-number]')?.textContent?.trim() &&
        banner.querySelector('[data-live-channel-name]')?.textContent?.trim() &&
        banner.querySelector('[data-live-channel-category]')?.textContent?.trim());
    }));
    check('il player live non mostra la barra controlli',
      await page.locator('[data-controls-bar]').evaluate((element) => getComputedStyle(element).display === 'none'));

    await pressRemoteKey(page, 'Enter', 13);
    check('OK nasconde il banner live', await page.locator('[data-live-channel-banner]').count() === 0);
    await pressRemoteKey(page, 'Enter', 13);
    check('OK mostra nuovamente il banner live', await page.locator('[data-live-channel-banner]').count() === 1);

    const initialChannelId = await page.evaluate(() => {
      const src = document.querySelector('[data-media-player="true"] video')?.src || '';
      return new URL(src).pathname.split('/').pop()?.replace(/\.(?:ts|m3u8)$/, '') || '';
    });
    await pressRemoteKey(page, 'ArrowLeft', 37);
    await page.waitForSelector('[data-tv-layer="channel-list"]', { timeout: 5000 });
    await page.waitForFunction(() => document.activeElement?.hasAttribute('data-channel-index'), null, { timeout: 5000 });
    check('sinistra apre la lista canali e parte dal canale in onda', await page.evaluate(() => {
      const menu = document.querySelector('[data-tv-layer="channel-list"]');
      const video = document.querySelector('[data-media-player="true"] video');
      const activeIndex = Number(document.activeElement?.getAttribute('data-channel-index'));
      return Boolean(menu?.contains(document.activeElement) && video?.closest('[inert]') && activeIndex === 0);
    }));
    await pressRemoteKey(page, 'ArrowDown', 40);
    await page.waitForFunction(() => document.activeElement?.getAttribute('data-channel-index') === '1', null, { timeout: 5000 });
    check('su/giù scorre i canali senza cambiare la riproduzione', await page.evaluate(() =>
      document.activeElement?.getAttribute('data-channel-index') === '1'
    ));
    await pressRemoteKey(page, 'Enter', 13);
    await page.waitForFunction((id) => {
      const src = document.querySelector('[data-media-player="true"] video')?.src || '';
      return new URL(src).pathname.split('/').pop()?.replace(/\.(?:ts|m3u8)$/, '') !== id;
    }, initialChannelId, { timeout: 5000 });
    check('OK seleziona e chiude la lista sul canale focalizzato', await page.locator('[data-tv-layer="channel-list"]').count() === 0);
    const secondChannelId = await page.evaluate(() => {
      const src = document.querySelector('[data-media-player="true"] video')?.src || '';
      return new URL(src).pathname.split('/').pop()?.replace(/\.(?:ts|m3u8)$/, '') || '';
    });
    await pressRemoteKey(page, 'ArrowUp', 38);
    await page.waitForFunction((id) => {
      const src = document.querySelector('[data-media-player="true"] video')?.src || '';
      return new URL(src).pathname.split('/').pop()?.replace(/\.(?:ts|m3u8)$/, '') === id;
    }, initialChannelId, { timeout: 5000 });
    check('freccia su zappa al canale precedente nella lista d’origine', secondChannelId !== initialChannelId);
    await pressRemoteKey(page, 'Unidentified', 33);
    await page.waitForFunction((id) => {
      const src = document.querySelector('[data-media-player="true"] video')?.src || '';
      return new URL(src).pathname.split('/').pop()?.replace(/\.(?:ts|m3u8)$/, '') !== id;
    }, initialChannelId, { timeout: 5000 });
    await pressRemoteKey(page, 'Unidentified', 34);
    await page.waitForFunction((id) => {
      const src = document.querySelector('[data-media-player="true"] video')?.src || '';
      return new URL(src).pathname.split('/').pop()?.replace(/\.(?:ts|m3u8)$/, '') === id;
    }, initialChannelId, { timeout: 5000 });
    check('CH+/CH− equivalgono a freccia giù/su', true);
    await pressRemoteKey(page, 'ArrowRight', 39);
    check('destra non apre il pannello volume né cambia canale', await page.evaluate((id) => {
      const src = document.querySelector('[data-media-player="true"] video')?.src || '';
      return new URL(src).pathname.split('/').pop()?.replace(/\.(?:ts|m3u8)$/, '') === id;
    }, initialChannelId));

    await pressRemoteKey(page, 'ArrowLeft', 37);
    await page.waitForSelector('[data-tv-layer="channel-list"]', { timeout: 5000 });
    await pressRemoteKey(page, 'GoBack', 461);
    await page.waitForFunction(() => !document.querySelector('[data-tv-layer="channel-list"]'), null, { timeout: 5000 });
    check('Indietro chiude prima la lista canali e lascia il player aperto',
      (await page.locator('[data-tv-layer="channel-list"]').count()) === 0 && (await page.locator('[data-media-player="true"]').count()) === 1);
    const bannerVisible = await page.locator('[data-live-channel-banner]').count();
    if (!bannerVisible) await pressRemoteKey(page, 'Enter', 13);
    await pressRemoteKey(page, 'GoBack', 461);
    await page.waitForFunction(() => !document.querySelector('[data-live-channel-banner]'), null, { timeout: 5000 });
    check('Indietro chiude il banner prima del player',
      (await page.locator('[data-live-channel-banner]').count()) === 0 && (await page.locator('[data-media-player="true"]').count()) === 1);

    const channelId = initialChannelId;
    const liveRequests = () => requests.filter((url) => url.includes(`/live/demo/demo/${channelId}.`));
    const tsRequested = () => liveRequests().some((url) => /\.ts(\?|$)/.test(url));
    const retryRequested = () => liveRequests().some((url) => /\.m3u8(\?|$)/.test(url));

    // Chromium desktop non decodifica in modo affidabile MPEG-TS. Le richieste
    // restano reali al mock, ma rilasciamo un singolo evento error controllato
    // dopo aver verificato i tasti: il componente esegue così il vero fallback.
    check('il live webOS richiede .ts per primo', tsRequested(), liveRequests().join(' | ').slice(0, 160));
    await page.evaluate(() => {
      window.__fvpHoldVideoErrors = false;
      document.querySelector('[data-media-player="true"] video')?.dispatchEvent(new Event('error'));
    });
    const fallbackDeadline = Date.now() + 20_000;
    while (Date.now() < fallbackDeadline && !retryRequested()) await sleep(250);
    check('dopo l’errore .ts viene richiesto il solo fallback .m3u8', retryRequested(), `${liveRequests().length} richieste live`);
    const m3u8Attempts = liveRequests().filter((url) => /\.m3u8(?:\?|$)/.test(url)).length;
    check('il fallback automatico .m3u8 è singolo', m3u8Attempts === 1, `${m3u8Attempts} richieste .m3u8`);

    const errorShown = await page
      .waitForFunction(() => document.body.innerText.includes('Impossibile riprodurre lo stream'), null, {
        timeout: 20_000,
      })
      .then(() => true)
      .catch(() => false);
    check('dopo il fallimento del fallback appare il pannello errore', errorShown);
    check('il focus iniziale del pannello errore è su “Riprova”', await page.evaluate(() =>
      document.activeElement?.textContent?.includes('Riprova') ?? false
    ));
    const playerText = await page.locator('[data-media-player="true"]').innerText().catch(() => '');
    check('nel player nessun pulsante Proxy (modalità diretta)', !/proxy/i.test(playerText));
    check('il pulsante manuale “Passa a formato” resta nel player', /Passa a formato/.test(playerText));

    const tsBeforeManual = liveRequests().filter((url) => /\.ts(?:\?|$)/.test(url)).length;
    await page.getByRole('button', { name: /Passa a formato MPEG-TS/i }).click();
    const manualDeadline = Date.now() + 10_000;
    while (Date.now() < manualDeadline && liveRequests().filter((url) => /\.ts(?:\?|$)/.test(url)).length === tsBeforeManual) await sleep(200);
    check('la selezione manuale .ts cambia il formato del solo canale corrente',
      liveRequests().filter((url) => /\.ts(?:\?|$)/.test(url)).length > tsBeforeManual);

    await pressRemoteKey(page, 'GoBack', 461);
    await page.waitForFunction(() => !document.querySelector('[data-media-player="true"]'), null, { timeout: 10_000 });
    await page.waitForFunction((id) => document.activeElement?.id === `live-channel-${id}`, channelId, { timeout: 5000 });
    check('chiudendo il player il focus torna alla riga live d’origine', await page.evaluate((id) =>
      document.activeElement?.id === `live-channel-${id}`
    , channelId));

    await page.evaluate(() => { window.__fvpHoldVideoErrors = true; });
    await page.locator(`#live-channel-${channelId}`).click();
    await page.waitForFunction(() => document.querySelector('[data-media-player="true"] video')?.src.endsWith('.ts'), null, { timeout: 10_000 }).catch(() => {});
    const reopenedLiveSrc = await page.locator('[data-media-player="true"] video').evaluate((video) => video.src).catch(() => '');
    check('un nuovo avvio live riparte da .ts, senza ereditare la scelta manuale', /\.ts(?:\?|$)/.test(reopenedLiveSrc || ''), reopenedLiveSrc);
    await pressRemoteKey(page, 'GoBack', 461);
    if (await page.locator('[data-media-player="true"]').count()) await pressRemoteKey(page, 'GoBack', 461);
    await page.waitForFunction(() => !document.querySelector('[data-media-player="true"]'), null, { timeout: 10_000 });

    // 7) VOD webOS: pausa/riprendi, barra controlli e seek cumulativo.
    await pressRemoteKey(page, 'GoBack', 461);
    await page.waitForFunction(() => document.body.innerText.includes('Cosa vuoi guardare?'), null, { timeout: 5000 });
    await page.getByRole('button', { name: /FILM/i }).click();
    await page.waitForSelector('.media-content-panel [data-media-index]', { timeout: 20_000 });
    await page.evaluate(() => {
      const video = document.querySelector('[data-media-player="true"] video');
      if (video) return;
      // Synthetic clock avoids relying on the browser's external HLS decoder.
      const states = new WeakMap();
      Object.defineProperty(HTMLVideoElement.prototype, 'currentTime', {
        configurable: true,
        get() { return states.get(this)?.time ?? 120; },
        set(value) { const state = states.get(this) || { time: 120, writes: [] }; state.time = value; state.writes.push(value); states.set(this, state); window.__fvpSeekWrites = state.writes; },
      });
      Object.defineProperty(HTMLVideoElement.prototype, 'duration', { configurable: true, get() { return 600; } });
      Object.defineProperty(HTMLVideoElement.prototype, 'paused', { configurable: true, get() { return states.get(this)?.paused ?? true; } });
      HTMLVideoElement.prototype.pause = function () { const state = states.get(this) || { time: 120, writes: [] }; state.paused = true; states.set(this, state); this.dispatchEvent(new Event('pause')); };
      HTMLVideoElement.prototype.play = function () { const state = states.get(this) || { time: 120, writes: [] }; state.paused = false; states.set(this, state); this.dispatchEvent(new Event('play')); return Promise.resolve(); };
      window.__fvpVideoStates = states;
      window.__fvpHoldVideoErrors = true;
    });
    await page.locator('.media-content-panel [data-media-index]').first().hover();
    await page.locator('.media-content-panel [data-media-index]').first().locator('button[title="Riproduci ora"]').click({ force: true });
    await page.waitForSelector('[data-media-player="true"] video', { timeout: 10_000 });
    await page.evaluate(() => {
      const video = document.querySelector('[data-media-player="true"] video');
      if (!video) return;
      const states = window.__fvpVideoStates;
      states.set(video, { time: 120, paused: false, writes: [] });
      Object.defineProperty(video, 'currentTime', { configurable: true, get() { return states.get(video).time; }, set(value) { const state = states.get(video); state.time = value; state.writes.push(value); } });
      Object.defineProperty(video, 'duration', { configurable: true, value: 600 });
      video.dispatchEvent(new Event('loadedmetadata'));
    });
    await pressRemoteKey(page, 'Enter', 13);
    check('OK mette in pausa il film e mostra la barra controlli', await page.evaluate(() =>
      document.querySelector('[data-media-player="true"] video')?.paused === true &&
      document.querySelector('[data-controls-bar]')?.getAttribute('aria-hidden') === 'false'
    ));
    await pressRemoteKey(page, 'ArrowDown', 40);
    check('Giù porta il focus alla prima azione della barra film', await page.evaluate(() =>
      document.activeElement?.getAttribute('data-webos-control') === 'play'
    ));
    await pressRemoteKey(page, 'Enter', 13);
    check('OK sul pulsante riprende la riproduzione', await page.evaluate(() =>
      document.querySelector('[data-media-player="true"] video')?.paused === false
    ));
    await pressRemoteKey(page, 'ArrowUp', 38);
    await page.evaluate(() => {
      const video = document.querySelector('[data-media-player="true"] video');
      const state = video && window.__fvpVideoStates.get(video);
      if (state) state.writes = [];
      window.__fvpSeekWrites = state?.writes || [];
    });
    await pressRemoteKey(page, 'ArrowRight', 39);
    await pressRemoteKey(page, 'ArrowRight', 39);
    await pressRemoteKey(page, 'ArrowRight', 39);
    check('tre pressioni ravvicinate mostrano un singolo feedback +30 s',
      await page.locator('[data-seek-feedback]').innerText().catch(() => '') === '+30 s');
    await page.waitForTimeout(1700);
    check('tre pressioni ravvicinate applicano un solo seek di +30 s', await page.evaluate(() => {
      const video = document.querySelector('[data-media-player="true"] video');
      return video?.currentTime === 150 && window.__fvpSeekWrites?.length === 1 && window.__fvpSeekWrites[0] === 150;
    }));
    await pressRemoteKey(page, 'GoBack', 461);
    check('Indietro chiude prima la barra controlli del film', await page.evaluate(() =>
      document.querySelector('[data-controls-bar]')?.getAttribute('aria-hidden') === 'true' && Boolean(document.querySelector('[data-media-player="true"]'))
    ));
    await pressRemoteKey(page, 'GoBack', 461);
    await page.waitForFunction(() => !document.querySelector('[data-media-player="true"]'), null, { timeout: 10_000 });
    check('il secondo Indietro chiude il player film', true);

    // 8) home TV → conferma d’uscita → secondo Indietro la chiude
    await pressRemoteKey(page, 'GoBack', 461);
    await page.waitForFunction(() => document.body.innerText.includes('Cosa vuoi guardare?'), null, { timeout: 5000 });
    check('Indietro riporta alla schermata iniziale TV', true);

    await pressRemoteKey(page, 'GoBack', 461);
    await page.waitForFunction(() => document.querySelector('[data-tv-exit-choice="exit"]'), null, { timeout: 5000 });
    check('Indietro sulla schermata iniziale mostra la conferma d’uscita', true);
    check('il titolo della conferma è “Vuoi uscire?” e il contenuto dietro è inert', await page.evaluate(() =>
      document.querySelector('#tv-exit-title')?.textContent?.trim() === 'Vuoi uscire?' && Boolean(document.querySelector('main')?.inert)
    ));
    let focusedLabel = await page.evaluate(() => document.activeElement?.textContent?.trim() ?? '');
    check('il focus iniziale è su "Annulla"', focusedLabel === 'Annulla', `focus su "${focusedLabel}"`);
    await pressRemoteKey(page, 'ArrowRight', 39);
    focusedLabel = await page.evaluate(() => document.activeElement?.textContent?.trim() ?? '');
    check('freccia destra porta il focus su Esci nel solo modale', focusedLabel === 'Esci');
    await page.waitForTimeout(220);
    const exitFocusStyle = await page.evaluate(() => {
      const button = document.querySelector('[data-tv-exit-choice="exit"]');
      const style = button ? getComputedStyle(button) : null;
      return style ? `${style.backgroundColor} / ${style.borderColor} / ${style.color}` : 'manca il pulsante';
    });
    check('Esci diventa verde al focus', exitFocusStyle.startsWith('rgb(16, 185, 129)'), exitFocusStyle);
    await pressRemoteKey(page, 'ArrowLeft', 37);
    check('freccia sinistra resta nel modale e torna su Annulla',
      (await page.evaluate(() => document.activeElement?.textContent?.trim())) === 'Annulla');

    await pressRemoteKey(page, 'GoBack', 461);
    await page.waitForFunction(() => !document.querySelector('[data-tv-exit-choice="exit"]'), null, { timeout: 5000 });
    check('un secondo Indietro chiude la conferma senza uscire', true);
    check(
      'la schermata iniziale TV è ancora visibile',
      await page.evaluate(() => document.body.innerText.includes('Cosa vuoi guardare?'))
    );
  } finally {
    await context?.close().catch(() => {});
    await browser.close().catch(() => {});
    server?.stop?.();
  }
}

console.log('[tv] avvio smoke test webOS…');
run()
  .then(() => {
    console.log(`\n[tv] ${results.length - failed}/${results.length} verifiche superate`);
    process.exit(failed === 0 ? 0 : 1);
  })
  .catch((error) => {
    console.error(`\n[tv] ERRORE: ${error instanceof Error ? error.message : String(error)}`);
    results.forEach((result) => {
      if (!result.ok) console.error(`   verifica non raggiunta: ${result.name}`);
    });
    process.exit(1);
  });
