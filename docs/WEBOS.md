# FelixVisionPlayer su LG webOS

Prima versione dell'app TV per LG webOS. **Non è un codice separato**: è la web
app React (React 19 + Vite 8) costruita in **modalità TV** con un target di
build dedicato, impacchettata come `.ipk` installabile in Developer Mode.

TV di riferimento: **LG OLED C2, webOS 25, motore Chrome 120, finestra
1920×1080**.

```
apps/webos-tv/
  appinfo.json        // id it.felixvision.player, title FelixVP, disableBackHistoryAPI:true
  icon.png            // 80×80, da public/brand/fvp-icon-large.png
  largeIcon.png       // 130×130, idem
  package.json        // devDependency @webos-tools/cli 3.2.6 + script ares-*
  build/              // output di `npm run build:webos` (ignorato da git)
  dist/               // .ipk generati (ignorati da git)
tools/webos/
  package.mjs         // build → copia appinfo/icone → ares-package → controllo contenuto
  ipk.mjs             // lettura dell'archivio .ipk (ar + data.tar.gz) per i controlli
  tv-smoke.mjs        // prova Playwright "TV finta" su file://
.env.webos            // VITE_TARGET=webos + VITE_PAIRING_RELAY_URL (versionata)
```

## Comandi

```bash
npm install                      # alla radice (le installazioni usano --legacy-peer-deps)
npm run build:webos              # build in apps/webos-tv/build (base './')
npm run package:webos            # build + appinfo/icone + .ipk in apps/webos-tv/dist
npm run test:webos:tv            # prova Playwright sulla build (file://, mock Xtream)
```

Strumenti webOS (una tantum, dentro la cartella dell'app):

```bash
cd apps/webos-tv
npm install --legacy-peer-deps   # installa @webos-tools/cli 3.2.6
```

## Preparazione del TV

La sessione Developer Mode va registrata e rinnovata: vedi
[`LG_DEVMODE_RENEW.md`](./LG_DEVMODE_RENEW.md). Il TV va aggiunto come
dispositivo `lgtv` (host `192.168.1.x`, porta `9922`, utente `prisoner`, chiave
privata scaricata dal Key Server del TV):

```bash
npx ares-setup-device            # da apps/webos-tv, dopo npm install
npx ares-install --device lgtv --list   # verifica la connessione
```

## Installazione e avvio

Da `apps/webos-tv/dist` (nome file generato da `ares-package`):

```bash
npx ares-install --device lgtv it.felixvision.player_1.0.0_all.ipk
npx ares-launch --device lgtv it.felixvision.player
```

Equivalenti dalla radice del repository: `npm run install:webos-tv` e
`npm run launch:webos-tv`. Sul TV deve restare attiva l'app **Developer Mode**.

La build impacchetta la pagina in `build/` e il TV la legge da **`file://`**: è
la configurazione verificata con l'app di prova, con l'origine
`file://`/`localhost` accettata sia dal server Xtream (richieste `GET`) sia dal
relay di abbinamento (`GET /healthz`, `POST /api/pair/create`).

## Cosa cambia nella build webOS

| Aspetto | Web | webOS |
| --- | --- | --- |
| Base dei percorsi | `/` | `./` (file dentro il pacchetto) |
| `modulePreload` / `crossorigin` | sì | **no** (plugin `stripCrossOriginAttributes` in `vite.config.ts`) |
| Chiamate `player_api.php` | proxy Express `/api/proxy/api` | **dirette** al server del provider |
| Flussi video | proxy Express (attivabile/disattivabile) | **diretti**, nessun pulsante Proxy |
| `/api/runtime-config` | sì | **mai** (`safeMode = false`) |
| Motore video | hls.js / mpegts.js / nativo | **sempre `<video>` nativo** |
| Formato live di default | `.m3u8` (poi `.ts` in automatico) | **`.ts`**, un solo tentativo automatico in `.m3u8`, poi errore |
| Download | disponibile su desktop | **assente ovunque** (Novità, Film, Serie, scaffali, player) |
| Relay abbinamento | `VITE_PAIRING_RELAY_URL` o `/api/session/*` | **solo** `VITE_PAIRING_RELAY_URL`; mai `/api/session/*` |
| Tasto Indietro | — | `keyCode` 461 gestito dall'app |
| Icone | `import.meta.env.BASE_URL + 'brand/…'` | stesso percorso, si risolvono su `./brand/…` |

La modalità diretta è decisa in `src/platform/runtime.ts`:
`isWebOsBuild()` legge `VITE_TARGET === 'webos'` e `isDirectMode()` è
`Capacitor.isNativePlatform() || isWebOsBuild()`.

Il server Xtream di riferimento accetta **una sola connessione**
(`max_connections = 1`): per questo, prima di ogni nuovo flusso (zapping,
episodio successivo, "Riprova") il player rilascia il precedente con
`releaseVideoElement` e su webOS non viene creato alcun motore MSE aggiuntivo.

## Telecomando (webOS)

`src/platform/tvBack.ts` contiene le mappature e la **funzione pura**
`resolveTvBackAction`, coperta dai test unitari.

Verificato sul TV con l'app di prova:

- Indietro → `keyCode` **461**, `key` `"GoBack"`, `code` vuoto. Con
  `"disableBackHistoryAPI": true` in `appinfo.json` l'evento arriva come
  `keydown` all'app (il riconoscimento avviene **per keyCode**, mai per `code`);
- frecce → `keyCode` 37–40 (gestite dalla navigazione D-pad esistente).

Codici dalla documentazione LG, **non ancora provati sul TV** (nessuna azione
per i tasti colorati 403–406):

|keyCode|tasto|azione nel player|
|---|---|---|
|415|Play|play/pausa|
|19|Pausa|pausa|
|413|Stop|chiude il player|
|417|Riavvolgi|−10 s (solo film ed episodi)|
|412|Avanzamento rapido|+10 s (solo film ed episodi)|
|33|CH+|canale successivo (solo live)|
|34|CH−|canale precedente (solo live)|

Sequenza del tasto Indietro: player → modali (informazioni server,
impostazioni/sync, abbinamento TV) → modale serie → pannello categorie →
schermata iniziale TV. Nella player il 461 si comporta come `Escape` (esce
dallo schermo intero a finestra, altrimenti chiude). Sulla schermata iniziale
TV il 461 apre la conferma "Uscire da FelixVP?" con il focus su **Annulla**: un
secondo Indietro chiude la conferma, solo **Esci** chiude l'app
(`window.close()`).

## Limiti noti

- **Sviluppo**: `npm run dev` non serve il TV in modalità diretta; per provare
  sul TV serve sempre `npm run package:webos` + installazione.
- **Codec**: la compatibilità reale di `.ts`, `.m3u8` e `.mp4` è stata
  verificata con l'app di prova su C2/webOS 25; contenitori esotici (`.mkv`,
  `.avi`) non sono testati e restano a carico del decodificatore del TV.
- **Audio multi-traccia**: `HTMLMediaElement.audioTracks` esiste sul TV, ma
  l'app non espone ancora un selettore di traccia (solo hls.js ha un proprio
  selettore di lingua, non usato in modalità nativa).
- **Nessun download**: la funzione non è offerta su webOS (manca sia il route
  Express sia un archivio utente raggiungibile).
- **Developer Mode**: app firmata localmente, sessione da rinnovare
  (~1000 ore, workflow in `docs/LG_DEVMODE_RENEW.md`); le app di Developer Mode
  restano disponibili solo finché la sessione è valida.
- **CSP/misto**: il pacchetto è servito da `file://` senza server locale:
  eventuali provider solo HTTPS con certificati non di sistema possono essere
  rifiutati dal motore del TV (comportamento identico all'app di prova).
- **Prova Playwright**: `npm run test:webos:tv` simula il TV (file://,
  user-agent webOS, 1920×1080, Indietro iniettato via CDP con `keyCode` 461),
  ma **non può** riprodurre i flussi: Chromium desktop non ha un demuxer
  MPEG-TS nativo. Copre accesso, ripristino account, assenza di `/api/`,
  sequenza `.ts` → `.m3u8`, conferma d'uscita. Serve un Chromium: browser
  Playwright (`npx playwright install chromium`), Chrome di sistema, oppure
  `FVP_CHROMIUM_PATH=/percorso/chrome`.
- Il `.ipk` include l'intera cartella `public/brand` (icone PWA non usate dal
  TV): pesa circa 1,8 MB, nessuna informazione locale o credenziale.

## Regole dati

Nessun indirizzo reale di server IPTV, username, password o contenuto di
`services/pairing-relay/rubrica.json` deve finire in codice, test, log, commit o
report. Esempi ammessi: `http://server.esempio:8080`, `demo`/`demo`, codice
`001`, IP `192.168.1.x`. Il dominio del relay
`https://felixvision-pairing-relay.manganiellofelice.workers.dev` è ammesso.
