#!/usr/bin/env node
/**
 * Impacchetta la web app come app LG webOS (.ipk installabile in Developer
 * Mode).
 *
 *   node tools/webos/package.mjs [--no-build] [--skip-package]
 *
 * Cosa fa, in ordine:
 *  1. `npm run build:webos`  → Vite scrive in `apps/webos-tv/build` con base
 *     relativa, senza modulepreload e senza attributi `crossorigin`.
 *  2. Copia `appinfo.json` e le icone nella cartella di build.
 *  3. Controlla l'HTML prodotto: su webOS la pagina è letta da `file://`,
 *     quindi non deve restare alcun percorso assoluto (`/assets/...`), né
 *     `crossorigin`, né `modulepreload`, né riferimenti a file esclusi.
 *  4. `ares-package --no-minify` crea `apps/webos-tv/dist/*.ipk`.
 *  5. Riapre l'.ipk e verifica che non contenga node_modules, mappe sorgente,
 *     file .env o dati locali.
 *
 * Il packaging è volutamente un processo separato dalla build web: `dist/` e
 * `build/` restano fuori dal repository.
 */
import { execFileSync } from 'node:child_process';
import fs from 'node:fs';
import path from 'node:path';
import process from 'node:process';
import { fileURLToPath } from 'node:url';
import { listIpkFiles } from './ipk.mjs';

const scriptDir = path.dirname(fileURLToPath(import.meta.url));
const repoRoot = path.resolve(scriptDir, '..', '..');
const appDir = path.join(repoRoot, 'apps', 'webos-tv');
const buildDir = path.join(appDir, 'build');
const distDir = path.join(appDir, 'dist');
const appId = 'it.felixvision.player';

const args = process.argv.slice(2);
const noBuild = args.includes('--no-build');
const skipPackage = args.includes('--skip-package');

const fail = (message) => {
  console.error(`\n[webos] ERRORE: ${message}`);
  process.exit(1);
};

const step = (message) => console.log(`[webos] ${message}`);

// ── 1. build ────────────────────────────────────────────────────────────────
if (!noBuild) {
  step('build webOS (vite build --mode webos)…');
  execFileSync('npm', ['run', 'build:webos'], { cwd: repoRoot, stdio: 'inherit' });
}

const indexFile = path.join(buildDir, 'index.html');
if (!fs.existsSync(indexFile)) fail(`nessun ${indexFile}: eseguire prima la build webOS.`);

// ── 2. manifest dell'app e icone ────────────────────────────────────────────
for (const file of ['appinfo.json', 'icon.png', 'largeIcon.png']) {
  const source = path.join(appDir, file);
  if (!fs.existsSync(source)) fail(`manca ${path.relative(repoRoot, source)}`);
  fs.copyFileSync(source, path.join(buildDir, file));
  step(`copiato ${file} in build/`);
}

const appInfo = JSON.parse(fs.readFileSync(path.join(buildDir, 'appinfo.json'), 'utf8'));
if (appInfo.id !== appId) fail(`appinfo.json id atteso ${appId}, trovato ${appInfo.id}`);
if (appInfo.disableBackHistoryAPI !== true) {
  fail('appinfo.json deve avere "disableBackHistoryAPI": true, altrimenti il tasto Indietro non arriva all\'app.');
}

// ── 3. verifica dell'HTML ───────────────────────────────────────────────────
const html = fs.readFileSync(indexFile, 'utf8');
const htmlProblems = [];
if (/(?:src|href)="\/(?!\/)/.test(html)) {
  htmlProblems.push('percorso assoluto in index.html (da file:// punterebbe alla radice del pacchetto)');
}
if (/crossorigin/i.test(html)) htmlProblems.push('attributo crossorigin ancora presente');
if (/modulepreload/i.test(html)) htmlProblems.push('link rel="modulepreload" ancora presente');
if (/\/api\/(proxy|session|runtime-config)/.test(html)) htmlProblems.push('riferimento a un endpoint Express nel markup');
if (htmlProblems.length) fail(`index.html non conforme a webOS: ${htmlProblems.join('; ')}`);

const missingAssets = [...html.matchAll(/(?:src|href)="\.\/([^"]+)"/g)]
  .map((match) => match[1])
  .filter((relative) => !fs.existsSync(path.join(buildDir, relative)));
if (missingAssets.length) fail(`riferimenti a file assenti nella build: ${missingAssets.join(', ')}`);

step('index.html ok: percorsi relativi, nessun crossorigin, nessun modulepreload');

for (const forbidden of ['.env', '.env.webos', '.map', 'rubrica.json']) {
  if (html.includes(forbidden)) fail(`l'HTML di build cita "${forbidden}", che non deve finire nel pacchetto`);
}

// ── 4. .ipk ─────────────────────────────────────────────────────────────────
const localAres = path.join(appDir, 'node_modules', '.bin', 'ares-package');
const aresPackage = fs.existsSync(localAres) ? localAres : 'ares-package';
if (!skipPackage) {
  try {
    execFileSync(aresPackage, ['--version'], { stdio: 'ignore' });
  } catch {
    fail(
      'ares-package non disponibile. Installare gli strumenti webOS:\n' +
        '  npm install --legacy-peer-deps  (dentro apps/webos-tv)'
    );
  }

  fs.rmSync(distDir, { recursive: true, force: true });
  fs.mkdirSync(distDir, { recursive: true });
  step('creo il pacchetto .ipk (ares-package --no-minify)…');
  // `--no-minify` è obbligatorio: il minificatore di ares riscrive i moduli ES
  // e ha già rotto il bundle su webOS nelle prove precedenti.
  execFileSync(aresPackage, [buildDir, '--no-minify', '-o', distDir], {
    cwd: appDir,
    stdio: 'inherit',
  });
}

// ── 5. controllo del contenuto del pacchetto ────────────────────────────────
const ipks = fs.existsSync(distDir) ? fs.readdirSync(distDir).filter((name) => name.endsWith('.ipk')) : [];
if (!skipPackage) {
  if (ipks.length !== 1) fail(`atteso un solo .ipk in ${path.relative(repoRoot, distDir)}, trovati ${ipks.length}`);
  const ipkPath = path.join(distDir, ipks[0]);
  const listing = listIpkFiles(ipkPath);

  const banned = [
    /node_modules\//,
    /\.map$/,
    /(^|\/)\.env/,
    /rubrica\.json/,
    /(^|\/)data\/(allowed-hosts)?\.json/,
    /(^|\/)package\.json$/,
    /README/,
  ];
  const leaked = listing.filter((line) => banned.some((pattern) => pattern.test(line)));
  if (leaked.length) fail(`il pacchetto contiene file che non ci devono essere:\n  ${leaked.join('\n  ')}`);
  // all'interno del .ipk i file vivono sotto usr/palm/applications/<id>/
  for (const required of ['appinfo.json', 'index.html', 'icon.png', 'largeIcon.png']) {
    if (!listing.some((line) => line.endsWith(`/${required}`))) {
      fail(`il pacchetto non contiene ${required}`);
    }
  }
  const payloadFiles = listing.filter((line) => !line.endsWith('/'));
  step(
    `pacchetto verificato: ${payloadFiles.length} file (payload ${path.posix.dirname(payloadFiles[0]) ?? '.'}), ` +
      'nessun node_modules / mappa sorgente / .env / dato locale'
  );

  const sizeMb = (fs.statSync(ipkPath).size / (1024 * 1024)).toFixed(2);
  console.log(`\n[webos] pronto: ${path.relative(repoRoot, ipkPath)} (${sizeMb} MB)`);
  console.log(`[webos] installazione: npx ares-install --device lgtv ${path.relative(repoRoot, ipkPath)}`);
  console.log(`[webos] avvio:         npx ares-launch --device lgtv ${appId}`);
} else {
  step('--skip-package: file di app copiati in build/, pacchetto non creato');
}
