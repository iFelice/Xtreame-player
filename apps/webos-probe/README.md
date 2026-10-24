# FVP Probe — App di prova per LG webOS

App di test **standalone** per TV **LG OLED C2 con webOS 25** in **Developer Mode**. Non è la app web React: è una pagina HTML/CSS/JavaScript semplice senza Vite, framework o moduli ES (solo `<script>` classici) per misurare, sul TV reale, cinque capacità prima di adattare l'app web.

> Verificato solo su browser desktop con server di prova locale; risultati su TV da confermare in Developer Mode.

## Contenuto

```
apps/webos-probe/
  appinfo.json          // id it.felixvision.probe, title FVP Probe, disableBackHistoryAPI:true
  index.html            // schermata unica con 5 prove
  style.css             // palette #1C1C1E / #2C2C2E / #FFFFFF / #AEAEB2 / #10B981 / #FF453A
  probe.js              // logica prove (<script> classico)
  module-test.js        // piccolo file per test <script type="module">
  classic-test.js       // piccolo file per test <script> classico
  config.example.json   // esempio committato (server finto)
  config.example.js     // stesso esempio come window.FVP_CONFIG
  icon.png              // 80×80, sfondo #1C1C1E con "FVP" #10B981
  largeIcon.png         // 130×130, stesso stile
  package.json          // script ares-*
```

## Preparazione

1. Copia i file di esempio nei file locali (mai committati):

```bash
cd apps/webos-probe
cp config.example.json config.local.json
cp config.example.js config.local.js
```

2. Modifica `config.local.json` (e ricopia in `config.local.js` se usi il fallback) con i tuoi dati di test:

```json
{
  "server": "http://TUO_SERVER:8080",
  "username": "TUO_USER",
  "password": "TUO_PASS",
  "relayUrl": "https://felixvision-pairing-relay.manganiellofelice.workers.dev",
  "liveStreamId": "",
  "vodStreamId": "",
  "vodExtension": ""
}
```

- `server`, `username`, `password`: per il login Xtream `player_api.php`.
- `relayUrl`: l'endpoint di pairing pubblico (healthz). Di default il relay ufficiale del progetto.
- `liveStreamId` / `vodStreamId`: se vuoti, la prova video li recupera da `get_live_streams` / `get_vod_streams` (primo elemento). `vodExtension` è l'estensione del film (es. `mp4`, `mkv`); se vuoto usa `container_extension` del server.

I file `config.local.json` e `config.local.js` sono in `.gitignore` e non vanno mai committati. Nei file committati usa solo `http://server.esempio:8080`, `demo`/`demo` e `192.168.1.x`.

La app legge `config.local.json` con `fetch`; se il fetch di file locali fallisce (limite di webOS su `file://`/CORS), fa fallback su `<script src="config.local.js">` che definisce `window.FVP_CONFIG`. Genera entrambi i formati dallo stesso esempio.

## Registrazione TV

Su PC con SDK webOS installato (`@webos-tools/cli`):

```bash
# una tantum, registra il TV (nome dispositivo "lgtv")
ares-setup-device
```

Parametri richiesti dall'interfaccia:
- **Device name:** `lgtv`
- **Host / IP:** `192.168.1.x` (IP locale del TV, es. `192.168.1.10`)
- **Port:** `9922`
- **Username:** `prisoner`
- **Private key:** seleziona il file `webos_rsa` scaricato da Developer Mode
- **Passphrase:** quella mostrata dal TV in Developer Mode (Key Server)

Verifica connessione:

```bash
ares-install --device lgtv --list
```

Sul TV: **Developer Mode app** deve restare attiva e la sessione rinnovata (vedi `docs/LG_DEVMODE_RENEW.md` per il rinnovo settimanale automatico).

## Comandi

Da `apps/webos-probe/`:

```bash
npm install            # installa @webos-tools/cli

npm run package        # ares-package --no-minify . -o dist
                       # esclude config.example.*, package.json, README, dist

npm run install-tv     # ares-install --device lgtv dist/*.ipk

npm run launch         # ares-launch --device lgtv it.felixvision.probe
```

`package` crea `dist/it.felixvision.probe_0.0.1_all.ipk`. `ares-package` legge `appinfo.json`.

In alternativa, da root:

```bash
npm --prefix apps/webos-probe run package
```

## Come leggere i risultati

In alto: **versione app**, `navigator.userAgent` e **dimensioni finestra**.

Tutte le prove hanno pulsante **Esegui** ed esito **OK/KO** con dettaglio; mai credenziali o URL completi (utente/password sostituiti con `***`).

### 1) Server Xtream

`fetch` di `player_api.php?username=…&password=…`. Mostra:

- stato HTTP
- `user_info.status`, `max_connections`, `allowed_output_formats`
- tempo di risposta in ms
- su errore: messaggio dell'eccezione (incluso `TypeError` di CORS)

### 2) Relay

`fetch` di `{relayUrl}/healthz`. Mostra stato HTTP o errore e `location.origin` dell'app.

### 3) Script

- **(a)** caricamento dinamico di `module-test.js` come `<script type="module">` → OK se imposta la globale.
- **(b)** stesso test con `classic-test.js` come `<script>` classico.
Esito OK/KO per ciascuno con eventuale errore. Su webOS vecchi i moduli ES possono fallire.

### 4) Video

Tre pulsanti che riproducono in `<video>` a schermo intero (Indietro torna alla schermata):

- **(a)** live HLS `{server}/live/{user}/{pass}/{liveStreamId}.m3u8`
- **(b)** live MPEG-TS stesso canale `.ts`
- **(c)** film `{server}/movie/{user}/{pass}/{vodStreamId}.{vodExtension}`

Se `liveStreamId`/`vodStreamId` vuoti → primo elemento di `get_live_streams` / `get_vod_streams` (con la sua `container_extension`).

Per ognuno: **esito** (evento `playing` entro 20 s), **tempo al primo fotogramma**, **videoWidth×videoHeight**, **audioTracks** se disponibile, **codice MediaError** se fallisce. URL sempre mascherati.

### 5) Telecomando

Riquadro con **keyCode, key, code** degli ultimi 10 tasti, **eventi wheel (deltaY)** e **stato cursore** (`cursorStateChange` di webOS se presente). **Indietro (461)** nella schermata principale non chiude l'app ma è solo registrato; il pulsante **Esci** chiude l'app con `window.close()`.

La navigazione usa **frecce + OK** tra i pulsanti (focus ben visibile con bordo bianco) e funziona anche con il **puntatore del Magic Remote**.

## Dati

Nessun indirizzo IPTV reale, username, password o IP reale in file committati; negli esempi solo `http://server.esempio:8080`, `demo`/`demo`, `192.168.1.x`. Il `relayUrl` pubblico del progetto è ammesso.

I log della app non contengono mai credenziali.

## Note tecniche

- `appinfo.json` ha `disableBackHistoryAPI:true` così il tasto Indietro arriva all'app come `keyCode 461`.
- Nessuna dipendenza aggiunta all'app web o all'app Android.
- L'app è volutamente senza build step per avviarsi sicuramente su webOS 25.
- Verificato su browser desktop con mock Xtream locale (`npm run mock:xtream` → `http://localhost:3333`). Per test rapido imposta `server` a `http://192.168.1.x:3333` se il mock gira sul PC e il TV è nella stessa LAN.

## Push e branch

Branch di lavoro: `arena/c66c45c6-xtreame-player`. Nessun rebase/squash/push forzato; push normale.

```bash
git add apps/webos-probe .gitignore
git commit -m "feat(webos-probe): aggiungi app di prova LG webOS..."
git push origin arena/c66c45c6-xtreame-player
```
