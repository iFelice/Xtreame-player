# FelixVisionPlayer · Android TV (`apps/android-tv`)

Applicazione Android TV nativa di FelixVisionPlayer, in Kotlin e Jetpack Compose for TV.
Copre **progetto, client Xtream, archiviazione sicura, accesso e abbinamento remoto
(PR1), cataloghi, preferiti e impostazioni (PR2), player live/VOD con avanzamento (PR3),
"Continua a guardare" e ricerca locale (PR4)**.
Dopo l'accesso si apre il catalogo; ogni contenuto avviabile apre il player a tutto
schermo.

- `applicationId`: `it.felixvision.tv`
- nome visualizzato: **FelixVP**
- `minSdk` 26, `compileSdk`/`targetSdk` 37
- modulo unico `:app`, progetto Gradle autonomo (non fa parte della build npm della radice)

---

## 1. Requisiti

- **Android Studio stabile** (con l'SDK Platform 37 installato).
- **JDK incluso in Android Studio**: non serve installare un JDK a parte. Da terminale,
  sul Mac, si usa il JDK di Android Studio tramite `JAVA_HOME` (vedi sotto).
- Per l'installazione: una Android TV con **debug ADB via rete** attivo.

Esempio di `JAVA_HOME` su macOS (adattare la versione di Android Studio installata):

```bash
export JAVA_HOME="/Applications/Android Studio.app/Contents/jbr/Contents/Home"
export PATH="$JAVA_HOME/bin:$PATH"
```

Verifica rapida:

```bash
java -version   # deve stampare la versione del JDK di Android Studio (17 o superiore)
```

---

## 2. Comandi sul Mac

Tutti i comandi vanno eseguiti dalla cartella dell'app:

```bash
cd apps/android-tv
```

Test unitari (JVM, nessun emulatore):

```bash
./gradlew test
```

Build dell'APK di debug:

```bash
./gradlew assembleDebug
```

Controllo statico Android Lint:

```bash
./gradlew lint
```

Tutti e tre insieme, come nella verifica finale:

```bash
./gradlew test assembleDebug lint
```

**Percorso dell'APK prodotto:**

```text
apps/android-tv/app/build/outputs/apk/debug/app-debug.apk
```

Se Gradle non parte per permessi, rendere eseguibile il wrapper:

```bash
chmod +x gradlew
```

---

## 3. Installazione sulla TV con `adb` via rete

1. Sulla TV aprire **Impostazioni → Informazioni / Info** e premere 7 volte su **Build**
   (o **Versione**) per attivare le **Opzioni sviluppatore**.
2. In **Impostazioni → Opzioni sviluppatore** attivare:
   - **Debug ADB** (o "Debug USB");
   - **Debug di rete** / **ADB via rete** (il nome varia per marca: su Google TV è
     "Debug ADB", su Android TV "Debug di rete").
3. Annotare l'indirizzo IP della TV (Impostazioni → Rete e Internet → stato della rete).
4. Dal Mac, sulla stessa rete:

```bash
adb connect 192.168.1.50:5555      # sostituire con l'IP della TV
adb devices                        # la TV deve comparire come "device"

adb install -r apps/android-tv/app/build/outputs/apk/debug/app-debug.apk
```

5. L'app compare nella riga delle app della home TV con il nome **FelixVP**.

Installazione e avvio in un solo passaggio:

```bash
adb install -r app/build/outputs/apk/debug/app-debug.apk &&
adb shell am start -n it.felixvision.tv/.MainActivity
```

Per interrompere la connessione: `adb disconnect 192.168.1.50:5555`.

---

## 4. Cambiare `PAIRING_RELAY_URL`

L'indirizzo del servizio di abbinamento è un campo `BuildConfig`, non una costante
sparsa nel codice. Si modifica in:

```text
apps/android-tv/app/build.gradle.kts
```

```kotlin
defaultConfig {
    buildConfigField(
        "String",
        "PAIRING_RELAY_URL",
        "\"https://felixvision-pairing-relay.manganiellofelice.workers.dev\"",
    )
}
```

Valore attuale: `https://felixvision-pairing-relay.manganiellofelice.workers.dev`.

Per puntare a un altro deployment (per esempio uno staging) basta sostituire la stringa,
**mantenendo le virgolette escapate** `\"…\"` (il valore è un literal Java), poi:

```bash
./gradlew assembleDebug
```

Il QR mostrato dalla TV codifica esattamente `<PAIRING_RELAY_URL>/?code=<PIN>`, quindi
un cambio di indirizzo si riflette subito su QR, chiamate `/api/pair/*`, `/api/rubrica/*`
e `/healthz`.

---

## 5. Come è organizzata l'app

```text
app/src/main/java/it/felixvision/tv/
├── AppContainer.kt            costruzione manuale delle dipendenze (nessun framework DI)
├── FvpApplication.kt          container di processo + health check del relay all'avvio
├── MainActivity.kt            Compose for TV + permesso di rete locale (Android 17)
├── core/                      orologio, JSON, unico OkHttpClient, log
├── data/xtream/               normalizzazione indirizzo, client Xtream, modelli
├── data/pairing/              client del relay, macchina a stati dell'abbinamento
├── data/store/                cifrario Keystore AES-GCM, DataStore, archivio credenziali
├── data/catalog/              modelli tolleranti, client sequenziale, cache 24h
├── data/favorites/            DataStore dei preferiti per server+utente
├── data/playback/             URL Xtream, redazione credenziali, coda episodi, zapping
├── data/progress/             archivio avanzamento e regole 30 s / 90% (DataStore)
├── data/images/               ImageLoader Coil 3 con client dedicato (max 4, 200 MB)
└── ui/                        tema, controlli TV, QR, cataloghi, player e impostazioni
```

### Rete (protezioni anti-blocco)

Un solo `OkHttpClient` per tutta l'app:

- massimo **4 richieste contemporanee per host** e 8 in totale (dispatcher);
- **timeout di connessione 10 s** e **lettura 20 s**;
- **nessun retry automatico** su errori del server (`retryOnConnectionFailure = false`):
  se qualcosa va storto l'utente riprova con il pulsante "Accedi";
- **un solo login alla volta**: un `Mutex` serializza le chiamate di autenticazione, così
  il pannello Xtream non vede mai due login concorrenti;
- i corpi delle risposte vengono sempre chiusi (`use`).

### Credenziali

Server, utente e password vengono salvati in **DataStore** come blob **cifrato AES-GCM**,
con la chiave non esportabile nell'**Android Keystore** (alias dedicato
`fvp_credentials_key`). Se la decifratura fallisce (per esempio la chiave è stata persa
dopo un ripristino) i dati vengono cancellati e l'app torna alla schermata di accesso,
senza crash. All'avvio, se ci sono credenziali valide, l'app esegue il login automatico
con le stesse protezioni del modulo manuale.

Le credenziali non vengono mai scritte nei log, né a mano né dal client di rete.

### Traffico in chiaro

`res/xml/network_security_config.xml` consente esplicitamente il traffico HTTP: molti
pannelli Xtream servono gli elenchi su `http://` (porte 8080/25461) o su indirizzi della
rete di casa. Il motivo è documentato nel file stesso.

Da Android 17 (API 37) l'accesso alla rete locale richiede il permesso runtime
`ACCESS_LOCAL_NETWORK`: è dichiarato nel manifest e richiesto all'avvio, altrimenti i
server Xtream raggiunti con indirizzo privato non risponderebbero.

### Abbinamento remoto (Roma → Napoli)

1. All'apertura della schermata di accesso il pannello crea subito una sessione
   (`POST /api/pair/create`) e mostra QR (generato in locale con zxing, correzione M,
   bordo bianco), PIN con le cifre separate, indirizzo breve del servizio e tempo residuo.
2. Lo stato viene interrogato ogni **2 secondi** con `Authorization: Bearer <pollToken>`,
   solo mentre la schermata è visibile: si ferma in pausa e riprende al ritorno.
3. Alla scadenza la sessione viene rigenerata da sola (nuovo PIN, nuovo QR).
4. In caso di errore di rete si riprova dopo **5, 10 e poi 30 secondi**.
5. All'arrivo delle credenziali parte un login immediato: se riesce, le credenziali sono
   salvate in forma cifrata, compare il messaggio **"Configurato da remoto"** e si passa
   alla schermata successiva; se fallisce, i campi vengono compilati con i dati ricevuti,
   l'errore è mostrato e una nuova sessione è già pronta.
6. Prima della prima creazione una richiesta a `/healthz` gira in sottofondo all'avvio.

### Catalogo (PR2)

- **Caricamento sequenziale**: `get_live_categories → get_live_streams → get_vod_categories → get_vod_streams → get_series_categories → get_series`. Ogni richiesta parte solo dopo la precedente; parsing JSON su dispatcher di background con modelli tolleranti; nessun retry automatico, errore con "Riprova".
- **Cache su disco** legata a `server+utente` con timestamp: all'avvio si mostra subito la cache; nessun auto-refresh più di una volta ogni 24h; manuale da Impostazioni; durante l'aggiornamento resta disponibile la versione precedente.
- **Immagini con Coil 3** su client dedicato: max 4 download simultanei, nessun retry, cache 200 MB, solo visibili + immediate vicine; placeholder con iniziali se fallisce.
- **Navigazione a cassetto**: a riposo colonna di icone, si espande al focus; voci nell'ordine Novità, Continua a guardare, Live, Film, Serie, Preferiti, Cerca, Impostazioni; colori attivi Live #FF9F0A, Film #10B981, Serie #2DD4BF, Novità #A3E635, Continua a guardare #38BDF8, Preferiti #FBBF24, Cerca #A78BFA, Impostazioni bianco; inattive #AEAEB2; focus con bordo #34D399 e leggero ingrandimento; sfondi #1C1C1E/#2C2C2E/#3A3A3C. La larghezza aperta è misurata sulla voce più lunga, "Continua a guardare". Indietro: sezione → voce attiva del menu → Novità → finestra di uscita.
- **Sezioni**: Novità (ultimi film per `added`, ultime serie per `last_modified`, 40 ciascuna); Live con categorie a sinistra e debounce 300 ms; Film/Serie con griglia 5 colonne e dettaglio on-demand (`get_vod_info`/`get_series_info`); Preferiti con pressione lunga OK e DataStore per account; liste con `LazyColumn`/`LazyVerticalGrid` e chiavi stabili fino a 20k elementi.
- **Impostazioni**: dati account riletti dal server a ogni apertura con orario "Dati account aggiornati alle hh:mm" e "Aggiornamento dati account…" durante la lettura (utente, stato, scadenza con giorni rimanenti, "Connessioni in uso (tutti i dispositivi)"), avviso "L'account è in uso su un altro dispositivo" quando le connessioni attive raggiungono il massimo e questa TV non sta riproducendo, "Aggiorna catalogo" che apre una finestra con le righe Live, Film, Serie e gli stati "In attesa", "Scaricamento…", "Completato (N elementi)", "Errore" (nessuna percentuale, ordine e sequenzialità delle richieste invariati), "Chiudi" attivo a fine aggiornamento con focus; durante lo scaricamento Indietro chiude la finestra senza interrompere il lavoro, "Configura da remoto" con QR (verifica login, sostituisce credenziali e cancella cache se riesce, altrimenti mantiene le vecchie), "Esci" con conferma che cancella credenziali, cache, preferiti, avanzamento e archivio "Continua a guardare".
- **Correzioni abbinamento**: nessuna sessione durante verifica credenziali salvate; dopo 3 scadenze consecutive (30 min) si ferma con "Codice scaduto" e pulsante "Mostra un nuovo codice"; pannello Impostazioni attivo solo quando visibile.

### Player (PR3)

- **Media3 1.9.0** (`media3-exoplayer`, `media3-exoplayer-hls`, `media3-ui`) con
  `org.jellyfin.media3:media3-ffmpeg-decoder:1.9.0+1`: decodifica di sistema preferita,
  FFmpeg solo come ripiego audio per AC3/EAC3/DTS (`EXTENSION_RENDERER_MODE_ON`).
  Rete in `PlayerNetworkConfig`: connessione 20 s, lettura 30 s, redirect anche tra http
  e https, User-Agent di sistema; errori di rete, timeout e risposte HTTP 500/502/503/504
  ritentati fino a 3 volte (dopo 1, 2 e 4 s), nessun nuovo tentativo per HTTP 401/403/404,
  per gli altri codici HTTP e per gli altri errori.
- **URL** in `StreamUrls`: live `/live/{utente}/{password}/{id}.ts`, con `.m3u8` solo se
  l'account non ammette `ts` ma ammette `m3u8`; film `/movie/…`; episodi `/series/…`;
  estensione da `container_extension`, default `mp4`; credenziali codificate per il
  percorso. Ogni log passa da `StreamUrls.redactStreamUrl` (`***` al posto di utente e
  password): nessun URL con credenziali in log, errori o report.
- **Schermata** a tutto schermo con `PlayerView` (SurfaceView, `useController = false`) e
  comandi Compose; schermo sempre acceso; ExoPlayer rilasciato in `onStop` e all'uscita
  salvando la posizione.
- **Live**: Su/Giù cambiano canale nella categoria di partenza (circolare) con banner di
  4 s (numero, nome, categoria, logo); OK mostra/nasconde il banner; Sinistra apre la
  lista canali della categoria con focus sul canale in onda; Indietro chiude banner/lista
  o torna alla lista Live con focus sull'ultimo canale guardato.
- **Formato audio**: nella barra dei comandi e nel banner Live, etichetta ricavata dal
  `Format` della traccia selezionata (`sampleMimeType` + `channelCount`): Dolby Digital,
  Dolby Digital Plus, Dolby Atmos, Dolby AC-4, DTS/DTS-HD, AAC, MP3 e canali `2.0`/`5.1`/
  `7.1`; accanto, il contrassegno "FFmpeg" quando l'audio passa dal decoder
  dell'estensione (`AnalyticsListener.onAudioDecoderInitialized`). Mappatura in
  `AudioFormatLabels`, funzione pura coperta da test.
- **Film/episodi**: OK pausa/riprende e mostra la barra (titolo, tempi, avanzamento); Su
  mostra la barra senza mettere in pausa; la barra si nasconde dopo 5 s senza tasti;
  Sinistra/Destra −10/+10 s con etichetta "+10 s"/"−10 s" per 1,5 s sul lato del tasto e
  somme delle pressioni ravvicinate ("+30 s"); tenendo premuto resta l'accelerazione
  10→30→60 s con la barra visibile; pulsanti Audio e Sottotitoli (voce "Disattivati");
  Indietro chiude la barra o torna alla scheda di origine con focus sul contenuto.
- **Errori**: messaggio comprensibile senza URL; per 401/403/409/429/456 "Connessioni
  esaurite o accesso negato: l'account potrebbe essere in uso su un altro dispositivo";
  pulsanti Riprova e Indietro. Solo sui canali live, se dopo i tentativi resta un errore
  di rete, la sorgente riparte una volta in silenzio (stesso canale, caricamento visibile)
  prima del messaggio.
- **Avanzamento**: archivio per server+utente (`vod_<id>`/`ep_<id>`), salvataggio ogni
  10 s, in pausa e all'uscita, posizioni sotto 30 s ignorate, visto al 90%; icona occhio
  (Lucide) in alto a sinistra della copertina e a destra nella riga episodio, barra verde
  sottile tra 30 s e 90%; riprendendo un contenuto iniziato compare "Riprendi da mm:ss" /
  "Dall'inizio" con focus su Riprendi.
- **Visto/non visto a mano**: nella scheda film il pulsante "Segna come visto"/"Segna come
  non visto" dopo Preferiti; negli episodi la pressione lunga su OK alterna lo stato con il
  messaggio "Segnato come visto"/"Segnato come non visto". "Visto" salva la posizione alla
  durata nota (solo il contrassegno se la durata è ignota), "non visto" cancella la voce:
  occhio, barra e "Riprendi" spariscono subito.
- **Prossimo episodio**: riquadro tre minuti prima della fine (per gli episodi sotto i
  10 minuti nell'ultimo 10%) con titolo, "Guarda ora" (focus), "Posticipa" e "Annulla".
  "Posticipa" lo nasconde e lo fa tornare dopo 60 s di riproduzione effettiva (conta la
  posizione nel video: la pausa non avanza e un salto sposta il riferimento), con gli
  stessi pulsanti e la possibilità di posticipare più volte; se al rinvio mancano meno di
  75 s ricompare negli ultimi 15 s con il conto alla rovescia e allo scadere parte il
  successivo; "Annulla" lo nasconde per questo episodio e a fine video si torna alla
  scheda; se il video finisce mentre il riquadro è nascosto per "Posticipa" parte il
  successivo. La riproduzione continua mentre il riquadro è visibile. Tempi e rinvio in
  `NextEpisodeRules`, funzione pura coperta da test.
- **Riscontro strutturale APK**: del riferimento sono state considerate solo le
  responsabilità ad alto livello (schermata di riproduzione separata dal catalogo,
  gestione del ciclo di vita e del focus da telecomando, banner canale, barra comandi e
  selezione tracce), senza riuso di codice, stringhe, layout o risorse.

### "Continua a guardare" e Cerca (PR4)

- **Archivio "Continua a guardare"** in DataStore per server+utente
  (`fvp_continue_watching.preferences_pb`), separato da preferiti e avanzamento e
  compatibile con archivi assenti o parziali: una voce per film (`vod_<id>` con titolo,
  copertina, `categoryId`, `container_extension`, ultimo aggiornamento) e una sola per
  serie (`series_<seriesId>` con copertina della serie e l'episodio da riprendere:
  id, stagione, numero, titolo, estensione). Al massimo 30 voci, dalla più recente.
  Il player aggiorna l'archivio quando salva l'avanzamento (posizione ≥ 30 s): oltre il
  90% la voce film sparisce, la voce serie passa all'episodio successivo della coda
  (`EpisodeQueue`) o sparisce se era l'ultimo. "Segna come visto" su un film toglie la
  voce; "Segna come non visto" non la ricrea. Regole pure in `ContinueWatchingRules`.
- **Sezione Continua a guardare**: griglia a 5 colonne con copertine 2:3 e titolo sotto;
  per i film la barra verde dell'avanzamento, per le serie la riga "S2 E5" e la barra
  dell'episodio. OK avvia subito il player dal punto salvato, senza finestra "Riprendi":
  per le serie le informazioni si caricano al momento (indicatore "Caricamento…" sulla
  copertina, errore senza URL) e la coda parte dall'episodio salvato. Pressione lunga:
  "Rimosso da Continua a guardare" e voce nascosta finché il contenuto non viene
  riprodotto — in questa sezione la pressione lunga non tocca i preferiti. Al ritorno dal
  player la griglia si aggiorna e il focus torna sulla voce (o sulla prima se la voce è
  uscita). Stato vuoto: "Qui trovi film ed episodi che hai iniziato".
- **Sezione Cerca**: campo in alto con la tastiera di sistema del TV (dettatura vocale
  se il TV la offre) e focus sul campo all'ingresso; freccia giù porta ai risultati. La
  ricerca è locale sul catalogo in memoria, senza richieste al server: da 2 caratteri,
  300 ms dopo l'ultima digitazione, confronto senza maiuscole e senza accenti
  (Normalizer NFD) su canali, film e serie. Risultati in tre righe Live, Film, Serie
  (nascoste se vuote), massimo 50 per riga, prima i nomi che iniziano con il testo poi
  quelli che lo contengono poi ordine alfabetico, con il contatore "N risultati". OK su
  un canale riproduce con lo zapping della sua categoria; su un film o una serie apre la
  scheda e al ritorno il focus è sul risultato; pressione lunga aggiunge/toglie dai
  preferiti; stelle, occhio e barra come nelle altre sezioni. Nessun risultato: "Nessun
  risultato per «testo»"; il testo cercato resta tornando nella sezione nella stessa
  sessione. Regole pure in `CatalogSearch`.
- **Riscontro strutturale APK**: delle schermate nuove sono state considerate solo le
  responsabilità ad alto livello (archivio dei contenuti iniziati con ripresa immediata,
  campo di ricerca con tastiera di sistema e risultati per tipo), senza riuso di codice,
  stringhe, layout o risorse.

---

## 6. Test

```bash
./gradlew test
```

I test girano in JVM (niente emulatore) e usano OkHttp `MockWebServer`, un orologio
simulato e implementazioni finte per cifrario e preferenze:

| Area | Copertura |
| --- | --- |
| `XtreamClientTest` | login riuscito, `auth` 0, account scaduto, timeout, normalizzazione del server, limite di 4 richieste per host, login mai in parallelo |
| `PairingClientTest` | create, waiting, ready, 404, header `Authorization`, errori di rete, `healthz` |
| `PairingCoordinatorTest` | sequenza dei ritardi 5/10/30 s con orologio simulato, rigenerazione alla scadenza, contenuto del QR |
| `ServerAddressTest`, `ServerInputTest` | regola "codice o indirizzo" e normalizzazione dell'indirizzo |
| `QrMatrixTest` | il QR decodifica in `<PAIRING_RELAY_URL>/?code=<PIN>` |
| `EncryptedCredentialStoreTest` | cifratura dietro interfaccia, nessun dato in chiaro, cancellazione quando la decifratura fallisce |
| `CatalogModelsTest` | JSON reali tipici con stream_id numerico/testuale, added testuale, campi null, ordine Novità |
| `CatalogClientSequentialTest` | nessuna richiesta concorrente, errore interrompe sequenza senza retry |
| `CatalogCacheTest` | lettura all'avvio, regola 24h, separazione per server+utente, clear su Esci |
| `FavoritesStoreTest` | aggiunta/rimozione, separazione per account, cancellazione con Esci |
| `PairingExpiryTest` | niente sessione durante verifica credenziali salvate, stop dopo 3 scadenze, ripartenza con nuovo codice, riconfigurazione da Impostazioni |
| `ImageClientLimitTest` | limite 4 immagini contemporanee, nessun retry, placeholder iniziali |
| `StreamUrlsTest` | live `.ts`/`.m3u8`, film/episodio con e senza estensione, codifica credenziali, `redactStreamUrl` |
| `WatchRulesTest`, `ProgressStoreInMemoryTest`, `ProgressStoreTest` | soglia 30 s, visto al 90%, ripresa, durata mantenuta, separazione per account, archivio vuoto |
| `EpisodeQueueTest` | ordine stagioni/episodi, episodio successivo nella stessa stagione e nella seguente, ultimo episodio |
| `LiveZappingTest`, `PlaybackFormattingTest` | zapping circolare, accelerazione 10/30/60 s, tempi `mm:ss` e `h:mm:ss` |
| `ConnectionsAdvisoryTest` | avviso solo a connessioni piene e TV non in riproduzione |
| `AudioFormatLabelsTest` | mappatura dei mime audio, varianti DTS, canali `2.0`/`5.1`/`7.1`, riconoscimento del decoder FFmpeg |
| `SeekFeedbackTest` | etichette `+10 s`/`−10 s`, somma entro 1,5 s, ripartenza al cambio di verso, passo accelerato |
| `WatchToggleRulesTest`, `ProgressStoreWatchedTest` | visto/non visto sull'archivio in memoria e su DataStore, durata nota e ignota, altre voci intatte |
| `NextEpisodeRulesTest` | tre minuti, episodio corto, durata ignota, rinvio di 60 s e rinvio ripetuto, rinvio sotto i 75 s con conto alla rovescia, salto indietro dopo il rinvio |
| `CatalogRefreshTest` | righe Live/Film/Serie, ordine, "In attesa"/"Scaricamento…"/"Completato (N elementi)"/"Errore", fine aggiornamento |
| `CatalogSearchTest` | normalizzazione (maiuscole, accenti, spazi), prefisso prima di contiene poi alfabetico, limite 50 per riga, soglia 2 caratteri, catalogo assente |
| `ContinueWatchingRulesTest` | inserimento, ordine per ultimo aggiornamento, soglia 30 s, rimozione del film al 90%, passaggio all'episodio successivo, rimozione all'ultimo episodio, nascondi/ricompari, limite 30, archivio vuoto e voci incomplete |
| `ContinueWatchingStoreTest` | archivio DataStore vuoto, film salvato e riletto, nessuna scrittura sotto 30 s, rimozione al 90%, avanzamento al prossimo episodio, rimozione all'ultimo episodio, nascosta e di nuovo visibile, separazione per account, "Segna come visto" |
| `DrawerSectionsOrderTest` | ordine delle otto voci del menu, etichette delle nuove voci, icone distinte (senza simulazione D-pad) |
| `FocusMarqueeTextTest` | titoli con ellissi e fermi senza focus, marquee su una sola riga, nessuno scorrimento su più righe (Robolectric, senza D-pad) |

---

## 7. Come provare con il server Xtream finto dalla TV

Il repository include un mock Xtream che simula le API senza account reali (`tools/xtream-mock/server.ts`):

Sul Mac, nella radice del repository:

```bash
npm run mock:xtream:visual
```

Il server ascolta su `0.0.0.0:3333` (porta configurabile con `XTREAM_MOCK_PORT`). Dalla TV, sulla stessa rete Wi-Fi/LAN del Mac:

- **Server:** `http://IP-DEL-MAC:3333` (sostituisci `IP-DEL-MAC` con l'indirizzo LAN del Mac, es. `192.168.1.50:3333` — non usare `localhost`, che per la TV è se stessa)
- **Utente:** `demo`
- **Password:** `demo`

Per trovare l'IP del Mac:

```bash
ifconfig | grep 192.
# oppure su macOS 13+: ipconfig getifaddr en0
```

Sulla TV inserisci `http://192.168.1.XX:3333` (esempio) e premi Accedi. Il catalogo visuale contiene 144 film, 220 canali e 42 serie con copertine generate localmente; i profili `small` e `stress` sono disponibili con `npm run mock:xtream:small` e `npm run mock:xtream:stress`.

---

## 8. Note di conformità

- Progetto e codice sono originali: del materiale di riferimento dell'APK sono stati
  considerati solo responsabilità, flussi di focus e proporzioni (vedi
  `docs/APK_STRUCTURE_REFERENCE.md`), senza riuso di codice, stringhe o risorse.
- Logo, banner 320×180 e icona dell'app sono generati da `public/brand/fvp-icon-large.png`
  con fondo `#1C1C1E` e glifo centrato.
- Media3 1.9.0 è usata dal player (Apache 2.0). L'estensione FFmpeg
  `org.jellyfin.media3:media3-ffmpeg-decoder:1.9.0+1` è distribuita con licenza GPL-3.0:
  la sua inclusione nell'APK comporta gli obblighi della licenza, descritti in
  `THIRD_PARTY_NOTICES.md`.
