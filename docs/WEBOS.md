# FelixVisionPlayer su LG webOS

L'app LG è la web app React costruita in modalità `webos` e letta dal TV da
`file://` dentro un pacchetto `.ipk`; non esiste un server Express nel
pacchetto.

## Build e pacchetto

```bash
npm install --legacy-peer-deps
cd apps/webos-tv && npm install --legacy-peer-deps && cd ../..
npm run build:webos
npm run package:webos
```

Il pacchetto viene scritto in `apps/webos-tv/dist/` e contiene soltanto la
build, il manifest e le icone. `package:webos` verifica che non ci siano mappe,
`.env`, dati locali, `node_modules` o file del relay. Per Developer Mode:

```bash
npm run install:webos-tv
npm run launch:webos-tv
```

Configura il dispositivo `lgtv` con gli strumenti LG; il suo host deve essere
un indirizzo di rete privata, ad esempio `192.168.1.x`. La guida per rinnovare
Developer Mode è [LG_DEVMODE_RENEW.md](LG_DEVMODE_RENEW.md).

## Differenze della build webOS

- `VITE_TARGET=webos` e percorsi relativi (`./`) permettono il caricamento da
  `file://`; `modulepreload` e `crossorigin` sono rimossi.
- Le API Xtream sono richieste direttamente dal provider: non viene emessa
  alcuna chiamata `/api/proxy/*` o `/api/runtime-config`.
- Il pairing QR/PIN usa esclusivamente `VITE_PAIRING_RELAY_URL`; senza relay
  l'interfaccia lo comunica e non tenta `/api/session/*`.
- La sessione di login salvata in `localStorage` viene ripristinata alla
  riapertura dell'app.
- Il telecomando usa D-pad/OK per i cataloghi. Il tasto Indietro LG è
  `keyCode` 461: chiude gli overlay, torna alla Home TV e poi mostra
  **"Vuoi uscire?"**. Il focus resta nella finestra; solo **Esci** chiama
  `window.close()`.

## Live nativo: formati e recupero

Le misure su un TV LG con l'elemento video nativo hanno mostrato che un Live
`.ts` può avviarsi e terminare dopo circa otto secondi (`pause` e `ended`, con
`readyState` 4 e senza errore), mentre lo stesso canale in `.m3u8` continua a
riprodurre. Per questo la build `VITE_TARGET=webos` non considera più `.ts` il
formato predefinito: prova prima HLS (`.m3u8`). Questa logica è isolata dalla
build webOS; browser, build statica, Apple e Capacitor mantengono il loro
comportamento precedente.

- I soli formati Live considerati sono `m3u8` e `ts`, letti da
  `user_info.allowed_output_formats`. Se l'elenco non c'è, è vuoto o non
  contiene un formato utilizzabile, entrambi restano tentabili.
- Per ogni canale la priorità è: scelta manuale locale, formato imparato sul
  dispositivo, `m3u8` se ammesso, poi `ts` se HLS non è ammesso. La scelta
  manuale vale solo per quel canale e non viene salvata.
- Un `ended` non richiesto è un'interruzione immediata. Gli eventi
  `waiting`/`stalled` aggiornano solo l'interfaccia di buffering: HLS su LG può
  emetterli mentre il video continua. Solo durante una riproduzione richiesta e
  non in pausa, un controllo ogni secondo considera progresso un avanzamento di
  almeno 0,3 secondi di `currentTime`; dopo 10 secondi senza tale progresso
  rileva uno stallo. Una pausa scelta con Play/Pausa o OK non avvia alcun
  recupero.
- Le prime due interruzioni entro 60 secondi dall'ultimo recupero rilasciano
  completamente il video e riavviano lo stesso formato dopo 1 secondo. Alla
  terza viene provato una sola volta l'altro formato ammesso. Se fallisce anche
  quello, compare il pannello con **Riprova** e **Passa a formato**. Una
  interruzione oltre la finestra di 60 secondi riporta il conteggio a uno.
- Ogni riavvio e cambio formato esegue prima la sequenza di rilascio della
  connessione precedente, evitando due stream nativi contemporanei.
- Quando un formato scelto automaticamente resta stabile per 30 secondi viene
  salvato, se disponibile, in `localStorage` con la chiave
  `fvp.webos.liveFormat`; i canali successivi lo useranno come preferenza.
  Lettura e scrittura sono protette, quindi l'assenza di storage non blocca la
  riproduzione.

Le costanti in `src/player/streamFormat.ts` sono:
`WEBOS_LIVE_RESTART_DELAY_MS = 1000`,
`WEBOS_LIVE_PROGRESS_POLL_MS = 1000`,
`WEBOS_LIVE_PROGRESS_DELTA_SECONDS = 0.3`,
`WEBOS_LIVE_STALL_TIMEOUT_MS = 10000`,
`WEBOS_LIVE_INTERRUPTION_WINDOW_MS = 60000`,
`WEBOS_LIVE_AUTOMATIC_RESTART_LIMIT = 2` e
`WEBOS_LIVE_LEARN_STABILITY_MS = 30000`.

Per gli eventi gestiti, la build webOS scrive diagnostica senza indirizzi o
credenziali nel formato `[FVP webOS live] evento=... formato=... currentTime=...
readyState=... conteggio=...`. Gli eventi includono `ended`, stallo rilevato,
riavvio, cambio automatico di formato ed errore terminale.

## Smoke test

```bash
npm run test:webos:tv
```

Il test apre la build da `file://` in Chromium, con user-agent webOS e mock
Xtream (`demo`/`demo`), quindi copre login reale, ripristino sessione, richieste
API dirette, navigazione D-pad e conferma di uscita. Richiede un browser
Playwright installato oppure `FVP_CHROMIUM_PATH=/percorso/chromium`.

Il comportamento specifico del player (formati live, zapping, tasti media e
Back nel player) è deliberatamente previsto per PR2.

## Regole dati

Non includere server IPTV reali, credenziali o contenuto della rubrica del
relay in sorgenti, test, log o documentazione. Gli esempi consentiti sono
`http://server.esempio:8080`, `demo`/`demo`, codice `001` e `192.168.1.x`.
