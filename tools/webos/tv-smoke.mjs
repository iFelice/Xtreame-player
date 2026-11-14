#!/usr/bin/env node
/**
 * End-to-end PR1 smoke for the real packaged webOS build. It deliberately
 * stops before opening a player: player controls belong to PR2.
 */
import { spawn, execFileSync } from 'node:child_process';
import fs from 'node:fs';
import http from 'node:http';
import path from 'node:path';
import process from 'node:process';
import { fileURLToPath } from 'node:url';

const root = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..', '..');
const indexFile = path.join(root, 'apps', 'webos-tv', 'build', 'index.html');
const mockPort = Number(process.env.FVP_MOCK_PORT || 3333);
const mockUrl = `http://localhost:${mockPort}`;
const ua = 'Mozilla/5.0 (Web0S; Linux/SmartTV) AppleWebKit/537.36 Chrome/120 Safari/537.36 WebAppManager';
const noBuild = process.argv.includes('--no-build');
let failures = 0;

function check(name, ok, detail = '') {
  console.log(`${ok ? '  OK' : '  KO'}  ${name}${detail ? ` — ${detail}` : ''}`);
  if (!ok) failures += 1;
}
function sleep(ms) { return new Promise((resolve) => setTimeout(resolve, ms)); }
function request(url) {
  return new Promise((resolve) => {
    const r = http.get(url, (res) => {
      res.resume();
      res.on('end', () => resolve(res.statusCode || 0));
    });
    r.on('error', () => resolve(0));
    r.setTimeout(1500, () => { r.destroy(); resolve(0); });
  });
}
async function mockServer() {
  if (await request(`${mockUrl}/health`) === 200) return null;
  const child = spawn('npm', ['run', 'mock:xtream'], {
    cwd: root,
    env: { ...process.env, XTREAM_MOCK_PORT: String(mockPort) },
    stdio: 'ignore',
  });
  for (let i = 0; i < 40; i += 1) {
    if (await request(`${mockUrl}/health`) === 200) return () => child.kill('SIGTERM');
    await sleep(250);
  }
  child.kill('SIGTERM');
  throw new Error(`mock Xtream non raggiungibile su ${mockUrl}`);
}
async function browser() {
  let playwright;
  try { playwright = await import('playwright'); }
  catch { throw new Error('Playwright non installato: eseguire npm install --legacy-peer-deps.'); }
  const candidates = [process.env.FVP_CHROMIUM_PATH, process.env.CHROMIUM_PATH, playwright.chromium.executablePath(), '/usr/bin/google-chrome', '/usr/bin/chromium', '/usr/bin/chromium-browser'].filter(Boolean);
  for (const executablePath of candidates) {
    if (fs.existsSync(executablePath)) {
      return playwright.chromium.launch({ headless: true, executablePath, args: ['--allow-file-access-from-files', '--no-sandbox'] });
    }
  }
  throw new Error('Nessun Chromium disponibile. Installare il browser Playwright o impostare FVP_CHROMIUM_PATH.');
}
async function remoteBack(page) {
  const session = await page.context().newCDPSession(page);
  const payload = { key: 'GoBack', code: '', windowsVirtualKeyCode: 461, nativeVirtualKeyCode: 461 };
  await session.send('Input.dispatchKeyEvent', { type: 'keyDown', ...payload });
  await session.send('Input.dispatchKeyEvent', { type: 'keyUp', ...payload });
  await session.detach();
}
async function typeTv(page, selector, value) {
  await page.locator(selector).click();
  await page.waitForTimeout(40);
  await page.locator(selector).fill(value);
  const actual = await page.locator(selector).inputValue();
  if (actual !== value) throw new Error(`campo ${selector} non compilato`);
}

async function run() {
  if (!noBuild) execFileSync('npm', ['run', 'build:webos'], { cwd: root, stdio: 'inherit' });
  if (!fs.existsSync(indexFile)) throw new Error(`manca ${indexFile}`);
  const stopMock = await mockServer();
  const chromium = await browser();
  let context;
  try {
    context = await chromium.newContext({ viewport: { width: 1920, height: 1080 }, userAgent: ua });
    const requests = [];
    context.on('request', (req) => requests.push(req.url()));
    const page = await context.newPage();
    await page.goto(`file://${indexFile}`, { waitUntil: 'load' });

    await page.waitForSelector('#tv-login-submit', { timeout: 15000 });
    check('accesso TV visibile', await page.getByText('URL del Server Xtream').isVisible());
    await typeTv(page, 'input[placeholder="http://server.esempio:8080"]', mockUrl);
    await typeTv(page, 'input[placeholder="Nome utente"]', 'demo');
    await typeTv(page, 'input[placeholder="Password"]', 'demo');
    await page.locator('#tv-login-submit').click();
    await page.waitForFunction(() => !document.querySelector('#tv-login-submit') && document.body.innerText.includes('Novità'), null, { timeout: 25000 });
    check('login Xtream completo con campi realmente inviati', true);

    const direct = requests.filter((url) => url.startsWith(mockUrl));
    check('catalogo richiesto direttamente dal provider', direct.some((url) => url.includes('/player_api.php')), `${direct.length} richieste`);
    check('nessuna API Express dal pacchetto file://', !requests.some((url) => /\/api\/(proxy|runtime-config|session)\b/.test(url)));

    await page.reload({ waitUntil: 'load' });
    await page.waitForFunction(() => !document.querySelector('#tv-login-submit') && document.body.innerText.includes('Novità'), null, { timeout: 25000 });
    check('sessione salvata ripristinata dopo riapertura', true);

    await page.getByRole('button', { name: 'Home TV' }).click();
    await page.waitForFunction(() => document.body.innerText.includes('Cosa vuoi guardare?'), null, { timeout: 5000 });
    await remoteBack(page);
    await page.waitForSelector('[data-tv-exit-choice="exit"]', { timeout: 5000 });
    check('Back 461 mostra “Vuoi uscire?” sulla Home', await page.getByText('Vuoi uscire?').isVisible());
    check('focus iniziale resta su Annulla', await page.evaluate(() => document.activeElement?.textContent?.trim() === 'Annulla'));
    await remoteBack(page);
    await page.waitForFunction(() => !document.querySelector('[data-tv-exit-choice="exit"]'), null, { timeout: 5000 });
    check('secondo Back annulla senza uscire', await page.getByText('Cosa vuoi guardare?').isVisible());
  } finally {
    await context?.close().catch(() => {});
    await chromium.close().catch(() => {});
    stopMock?.();
  }
}

console.log('[tv] smoke webOS PR1…');
run().then(() => {
  console.log(`[tv] ${failures === 0 ? 'superato' : 'fallito'} (${failures} errori)`);
  process.exit(failures ? 1 : 0);
}).catch((error) => {
  console.error(`[tv] ERRORE: ${error instanceof Error ? error.message : String(error)}`);
  process.exit(1);
});
