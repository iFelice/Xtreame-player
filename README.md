# 🎬 FelixVisionPlayer

Lettore multimediale e navigatore di cataloghi basato su **Xtream Codes**, indipendente, veloce e privato. Il pacchetto npm si chiama `felixvision-player`.

---

## 🛡️ Privacy & sicurezza dei dati

- **Zero chiamate AI**: l'applicazione non invia né username, né password, né link a modelli di intelligenza artificiale o server esterni. Non esistono dipendenze AI nel progetto.
- **Nessun database esterno**: preferiti e cronologia vengono salvati esclusivamente nel `localStorage` del browser.
- **Proxy locale indipendente**: il backend Node.js/Express serve unicamente come proxy per inoltrare i flussi video e le chiamate API verso il tuo server Xtream, risolvendo i problemi di CORS e Mixed-Content (HTTP su HTTPS) dei browser moderni.

---

## 💻 Uso locale

**Requisiti**: Node.js 20.19.0 o superiore (richiesto da Vite). Per la suite di test (`npm run check`) serve Node.js 22.12.0 o superiore (richiesto da Vitest).

```bash
npm install
npm run dev
```

Apri il browser su `http://localhost:3000`.

Altri comandi:

```bash
npm run build      # build di produzione in dist/
npm start          # serve la build di produzione (dist/)
npm run preview    # anteprima statica con vite
npm run dev:safe   # sviluppo in modalità sicura (vedi sotto)
```

In `npm run dev:safe` (`XTREAM_SAFE_MODE=1`) il proxy inoltra solo verso `localhost`/`127.0.0.1`/`::1` — quindi anche verso il mock Xtream locale — e il browser riceve una Content-Security-Policy che limita le connessioni allo stesso origine e a localhost.

---

## Build statica (iPhone/iPad)

Per pubblicare l'app su un hosting di soli file, senza Express, genera e carica il contenuto di `dist/`:

```bash
npm run build:static
# Se servono pairing e codici rubrica, imposta l'URL del relay alla build:
VITE_PAIRING_RELAY_URL="$URL_DEL_RELAY" npm run build:static
```

Il catalogo e gli stream vengono richiesti direttamente al provider (che deve consentire CORS per le API); i download tramite proxy non sono disponibili. L'abbinamento, l'accesso remoto e il login con codice rubrica richiedono il relay configurato in fase di build. Per MKV e AVI su iPhone/iPad l'app propone VLC e, in una scheda di Safari, il link diretto al file: un tocco apre la scelta di Safari, oppure tieni premuto e scegli «Scarica file collegato». Nell'app dalla schermata Home (standalone) il salvataggio passa da VLC, che chiede già «scarica o riproduci».

La pagina deve restare in **HTTP** se gli stream del provider sono HTTP: una pagina HTTPS verrebbe bloccata da Safari per contenuto misto. `dist/.htaccess` imposta il reindirizzamento verso HTTP su Apache con `mod_rewrite`; su altri hosting occorre configurare una regola equivalente e disattivare HTTPS obbligatorio/HSTS. **HTTP non cifra credenziali né stream**: usa solo reti fidate e valuta il rischio prima di esporre il sito.

---

## 📺 Accesso da TV e telefono sulla rete di casa

Il server ascolta su `0.0.0.0`: dalla TV o dal telefono, collegati alla stessa rete domestica, raggiungi il PC con il suo indirizzo LAN, per esempio `http://192.168.1.10:3000`. Nessun port forwarding né esposizione su Internet: il servizio è pensato per la rete di casa.

La protezione è l'elenco dei provider consentiti (sezione seguente), non l'indirizzo di ascolto. Per limitare il server alla sola macchina locale, avvia con `HOST=127.0.0.1`. La porta si cambia con `PORT`.

### QR per collegare una TV

Dall'app web è possibile accoppiare il telefono alla TV:

1. Apri il pairing sull'app TV: vengono mostrati un **codice QR** e un **PIN a 6 cifre**, validi 10 minuti.
2. Sul telefono inquadra il QR (o apri il link e inserisci il PIN): si apre la pagina di inserimento credenziali.
3. Inserisci server/username/password del tuo Xtream e invia: la TV riceve le credenziali e accede al catalogo.

Il flusso usa gli endpoint `/api/session/*` dello stesso server. Nella build nativa (Capacitor) il pairing passa invece dal servizio configurabile con la voce `xtream_pairing_server` nelle impostazioni.

---

## 🔐 Elenco automatico dei provider

Il proxy è **chiuso**: un'origine Xtream è raggiungibile solo dopo che un login è riuscito (`user_info.auth === 1`); il primo login la abilita automaticamente. Verso le origini non ancora autorizzate passa soltanto la richiesta di login, con un massimo di **20 tentativi ogni 10 minuti per IP**. L'elenco tiene al massimo **5 provider**, eliminando quello usato meno di recente.

Per azzerare l'elenco dei provider consentiti, cancella il file `data/allowed-hosts.json` e riavvia il server. Il percorso è modificabile con `ALLOWED_HOSTS_FILE`.

In produzione le destinazioni private (IP locali, loopback, ecc.) sono bloccate; `ALLOW_PRIVATE_TARGETS=1` disattiva esplicitamente tale protezione ed è destinato solo a reti amministrate e fidate. `TRUST_PROXY=1` resta disponibile per chi espone il servizio dietro un solo reverse proxy fidato: in sua assenza gli header `X-Forwarded-For` non influenzano il rate limit.

---

## 🧪 Server Xtream finto per i test

Il progetto include un mock delle API Xtream Codes, senza account, URL o contenuti privati:

```bash
npm run mock:xtream
```

Il server parte su `http://localhost:3333` con credenziali dimostrative `demo`/`demo` (porta e host si cambiano con `XTREAM_MOCK_PORT` e `XTREAM_MOCK_HOST`). Nell'app usa `http://localhost:3333` come server. Profili disponibili:

```bash
npm run mock:xtream:small    # 12 film, 16 canali, 5 serie
npm run mock:xtream:visual   # 144 film, 220 canali, 42 serie (default)
npm run mock:xtream:public   # visual + fino a 200 stream HLS da playlist pubblica
npm run mock:xtream:stress   # 5.000 film, 8.000 canali, 1.000 serie
```

Dettagli e scenari player simulati: `tools/xtream-mock/README.md`.

---

## 🐳 Esecuzione con Docker

```bash
docker build -t felixvision-player .
docker run -d -p 3000:3000 --name felixvision-player felixvision-player
```

Visita `http://localhost:3000`.

---

## ✨ Funzionalità

- **Parsing intelligente**: incolla link diretti come `http://host/movie/User/Pass/id.mp4`, `series`, `live` o link `get.php`/`player_api.php`.
- **Riproduzione immediata**: player video con seek, volume, velocità, proporzioni e Picture-in-Picture.
- **Catalogo completo**: Film VOD, canali Live con loghi, Serie TV divise per stagioni ed episodi.
- **Ricerca unica**: l'icona lente cerca in tutto il catalogo già scaricato (Live, Film, Serie) da 2 caratteri in su, senza accenti; le caselle di Live, Film e Serie cercano in tutte le categorie della sezione. Le regole sono le stesse dell'app Android TV. La navigazione a telecomando in modalità TV resta quella di sempre.
- **Bypass CORS/HTTP**: streaming fluido senza blocchi del browser.
- 

### LG webOS

La build per LG webOS viene aperta dal televisore da `file://` e impacchettata
come `.ipk`; non usa il proxy Express. I comandi sono `npm run build:webos` e
`npm run package:webos`. Per installazione, pairing QR/PIN e Developer Mode vedi
[docs/WEBOS.md](docs/WEBOS.md).
