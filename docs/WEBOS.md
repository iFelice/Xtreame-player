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
