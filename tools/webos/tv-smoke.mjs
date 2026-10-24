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
 * Verifiche:
 *  1. schermata di accesso visibile;
 *  2. login al server finto → Novità;
 *  3. ricaricamento → account ripristinato senza nuovo accesso;
 *  4. nessuna richiesta agli endpoint Express (`/api/...`);
 *  5. tasto Indietro (keyCode 461) sulla schermata iniziale → conferma d'uscita
 *     con focus su "Annulla"; un secondo Indietro chiude la conferma.
 *
 * Nota: la riproduzione video non è coperta qui — il Chromium desktop non ha un
 * demuxer MPEG-TS nativo, quindi il comportamento del <video> del TV non è
 * riproducibile (vedi docs/WEBOS.md).
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
  // In modalità TV i campi restano in readOnly finché non vengono attivati
  // (esattamente come sul telecomando): un clic li sblocca, poi si digita.
  await page.click(selector);
  await page.waitForTimeout(80);
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

    // 2) login al server finto → Novità
    await typeIntoTvField(page, 'input[placeholder="http://server.iptv.com:8080"]', mockUrl);
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

    // 5) tasto Indietro: si entra nella schermata iniziale TV
    await pressRemoteKey(page, 'GoBack', 461);
    await page.waitForFunction(() => document.body.innerText.includes('Cosa vuoi guardare?'), null, { timeout: 5000 });
    check('Indietro apre la schermata iniziale TV', true);

    // 6) player su webOS: motore nativo, .ts prima, un solo passaggio a .m3u8
    await page.getByRole('button', { name: /LIVE TV/i }).click();
    await page.waitForSelector('[id^="live-channel-"]', { timeout: 20_000 });
    await page.locator('[id^="live-channel-"]').first().click();
    await page.waitForSelector('[data-media-player="true"] video', { timeout: 20_000 });

    const videoSrc = await page.evaluate(() => document.querySelector('[data-media-player="true"] video')?.src ?? '');
    check(
      'il <video> nativo riceve l’URL del server (niente blob/MSE di hls.js)',
      videoSrc.startsWith(mockUrl),
      videoSrc.slice(0, 60)
    );

    const channelId = await page.evaluate(
      () => document.querySelector('[id^="live-channel-"]')?.id?.replace('live-channel-', '') ?? ''
    );
    const liveRequests = () => requests.filter((url) => url.includes(`/live/demo/demo/${channelId}.`));
    const tsRequested = () => liveRequests().some((url) => /\.ts(\?|$)/.test(url));
    const retryRequested = () => liveRequests().some((url) => /\.m3u8(\?|$)/.test(url));

    // Il TV reale riprodurrebbe entrambi i contenitori; qui l'obiettivo è la
    // sequenza delle richieste: prima .ts, poi UN solo tentativo in .m3u8.
    const deadline = Date.now() + 75_000;
    while (Date.now() < deadline && !(tsRequested() && retryRequested())) await sleep(500);
    check('il live parte in .ts', tsRequested(), liveRequests().join(' | ').slice(0, 160));
    check('dopo l’errore in .ts segue un solo tentativo in .m3u8', retryRequested(), `${liveRequests().length} richieste live`);
    const m3u8Attempts = liveRequests().filter((url) => url.includes('.m3u8')).length;
    check('il tentativo in .m3u8 non viene ripetuto', m3u8Attempts <= 1, `${m3u8Attempts} richieste .m3u8`);

    // Dopo due contenitori falliti il TV deve mostrare l'errore, con il
    // pulsante manuale di cambio formato e SENZA alcun riferimento al proxy.
    const errorShown = await page
      .waitForFunction(() => document.body.innerText.includes('Impossibile riprodurre lo stream'), null, {
        timeout: 60_000,
      })
      .then(() => true)
      .catch(() => false);
    check('dopo il secondo fallimento appare il messaggio d’errore', errorShown);
    const playerText = await page
      .locator('[data-media-player="true"]')
      .innerText()
      .catch(() => '');
    check('nel player nessun pulsante Proxy (modalità diretta)', !/proxy/i.test(playerText));
    check('il pulsante manuale "Passa a formato" resta nel player', /Passa a formato/.test(playerText));

    // 7) Indietro nel player chiude il lettore (come fa Escape sul web)
    await pressRemoteKey(page, 'GoBack', 461);
    await page.waitForFunction(() => !document.querySelector('[data-media-player="true"]'), null, { timeout: 10_000 });
    check('Indietro chiude il player', true);

    // 8) home TV → conferma d’uscita → secondo Indietro la chiude
    await pressRemoteKey(page, 'GoBack', 461);
    await page.waitForFunction(() => document.body.innerText.includes('Cosa vuoi guardare?'), null, { timeout: 5000 });
    check('Indietro riporta alla schermata iniziale TV', true);

    await pressRemoteKey(page, 'GoBack', 461);
    await page.waitForFunction(() => document.querySelector('[data-tv-exit-choice="exit"]'), null, { timeout: 5000 });
    check('Indietro sulla schermata iniziale mostra la conferma d’uscita', true);
    const focusedLabel = await page.evaluate(() => document.activeElement?.textContent?.trim() ?? '');
    check('il focus è su "Annulla"', focusedLabel === 'Annulla', `focus su "${focusedLabel}"`);

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
