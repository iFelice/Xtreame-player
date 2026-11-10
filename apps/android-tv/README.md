# FelixVisionPlayer · Android TV (`apps/android-tv`)

Applicazione Android TV nativa di FelixVisionPlayer, in Kotlin e Jetpack Compose for TV.
Copre **progetto, client Xtream, archiviazione sicura, accesso e abbinamento remoto
(PR1), cataloghi, preferiti e impostazioni (PR2), player live/VOD con avanzamento (PR3),
"Continua a guardare", Guida TV segnaposto e ricerca locale (PR4)**.
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
├── data/playback/             URL Xtream, redazione credenziali, coda episodi, zapping, formato live, cane da guardia
├── data/progress/             archivio avanzamento e regole 30 s / 90% (DataStore)
├── data/images/               ImageLoader Coil 3 con client dedicato (max 4, 200 MB)
├── player/                    solo TV: zapping automatico (controller puro) e preferenze del player (zapping, formato live)
├── vpn/                       VPN WireGuard: canale cifrato col telefono, relay, parser, archivio, controller
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
- **Navigazione a cassetto**: a riposo colonna di icone, si espande al focus; voci nell'ordine Novità, Preferiti, Live, Film, Serie, Guida TV, Cerca, Impostazioni; colori attivi Live #FF9F0A, Film #10B981, Serie #2DD4BF, Novità #A3E635, Guida TV #38BDF8, Preferiti #FBBF24, Cerca #A78BFA, Impostazioni bianco; inattive #AEAEB2; focus con bordo #34D399 e leggero ingrandimento; sfondi #1C1C1E/#2C2C2E/#3A3A3C. Guida TV usa l'icona vettoriale `ic_nav_tv_guide`; la larghezza aperta è misurata sulla voce più lunga, "Impostazioni". Indietro: sezione → voce attiva del menu → Novità → finestra di uscita.
- **Sezioni**: Novità con la riga orizzontale "Continua a guardare" (nascosta quando non ci sono voci) sopra gli ultimi film e le ultime serie; ultimi film per `added`, ultime serie per `last_modified`, 40 ciascuna; la voce Guida TV apre il segnaposto "disponibile nel prossimo aggiornamento". Live con categorie a sinistra e debounce 300 ms; Film/Serie con griglia 5 colonne e dettaglio on-demand (`get_vod_info`/`get_series_info`); nella colonna delle categorie la voce locale è "NOVITÀ" (il menu laterale resta "Novità") e OK su una categoria la conferma subito, senza attendere il debounce, portando il focus al primo canale o alla prima copertina (con la categoria vuota il focus resta sulla voce e la colonna resta aperta); Preferiti con pressione lunga OK e DataStore per account; liste con `LazyColumn`/`LazyVerticalGrid` e chiavi stabili fino a 20k elementi.
- **Ordine delle categorie di Film e Serie** (come l'app Black): ogni categoria del provider parte dalla data di aggiunta, dal più recente (Film: `added`; Serie: `last_modified`, in mancanza `releaseDate`; a parità l'identificativo numerico decrescente). Il Live resta nell'ordine del server, legato alla numerazione dei canali, e NOVITÀ resta l'elenco dei recenti (40 elementi). Sopra la griglia, sulla riga del contatore "N / Totale", c'è un pulsante `FvpCompactButton` basso (margine verticale 4 dp e altezza massima 32 dp, così scavalca i 40 dp minimi di tv-material e non copre la prima riga di copertine) con tre ordini a ciclo — "Ordina: Aggiunti di recente", "Ordina: A-Z" (`java.text.Collator` italiano, forza PRIMARY: maiuscole e accenti non contano), "Ordina: Anno" (campo `year` o anno tra parentesi nel titolo, dal più recente, senza anno in fondo). Dalla prima riga la Freccia su porta al pulsante, la Freccia giù torna alla prima copertina, e OK sul pulsante lascia il focus lì riportando la lista in cima. La scelta vale **per categoria** e resta al riavvio: SharedPreferences `fvp_sort`, chiave `vod_<categoryId>` o `series_<categoryId>`, valori `added`/`az`/`year` (assente o non valido = `added`). Tag dei pulsanti: `film_sort_button`, `series_sort_button`; i bounds non ritagliati del pulsante non intersecano quelli della prima copertina, con e senza focus.
- **Impostazioni**: griglia di sette card, quattro per riga e non in una lista scorrevole, nell'ordine Account, Aspetto, Contenuti protetti, VPN, Catalogo, Player, App; la card Player mostra "Zapping ogni N s" (sempre il valore attuale) e apre la pagina con "Durata zapping" (da 5 a 120 s, predefinita 10, salvata in SharedPreferences `fvp_player` e letta dallo zapping automatico all'avvio) e "Formato live" (Automatico = il formato dichiarato dal pannello, di norma MPEG-TS; MPEG-TS e HLS forzano il formato se ammesso: le tre scelte con il "✓" sull'attiva, salvate in `fvp_player` chiave `live_format` e lette alla creazione di ogni sessione del player, mini-player della Guida compreso); ogni card è alta 150 dp (scalati), con angoli da 18 dp uguali per fondo e bordi, fondo #2C2C2E, bordo #3A3A3C a riposo e #34D399 da 2 dp con il focus, icona sopra il titolo e una riga di stato: "demo · scade 12/03/2026" (solo l'utente se non c'è scadenza), "Interfaccia compatta|media|grande", "PIN impostato" o "PIN non impostato", "Connessa · server" in verde, "VPN non connessa" in rosso, "Spenta", "Nessuna configurazione", "Aggiornato alle hh:mm" o "Aggiornamento in corso…", "Versione x" o "Disponibile la versione y" in verde. Il pallino arancione degli aggiornamenti resta solo sull'icona Impostazioni del menu, mai sulle card; con un aggiornamento disponibile, in scaricamento o in installazione l'icona della card App si colora di arancione (#FF9F0A). Dall'ingresso del menu il focus va sulla prima card; OK apre la pagina della card, Indietro torna alla griglia con il focus sulla card da cui si era entrati; la card "Contenuti protetti" apre direttamente la schermata con il PIN, senza pagina intermediaria.
- **Pagine delle Impostazioni**: a tutto schermo nell'area dei contenuti, con il titolo "Impostazioni › <Nome>" e una sola colonna scorrevole (nessun rientro automatico delle righe nelle pagine con più pulsanti). Dati account riletti dal server a ogni apertura con orario "Dati account aggiornati alle hh:mm" e "Aggiornamento dati account…" durante la lettura (utente, stato, scadenza con giorni rimanenti, "Connessioni in uso (tutti i dispositivi)"), avviso "L'account è in uso su un altro dispositivo" quando le connessioni attive raggiungono il massimo e questa TV non sta riproducendo, "Aggiorna catalogo" che apre una finestra con le righe Live, Film, Serie con barra di avanzamento e stato a destra ("In attesa", "62% · 14,8 di 23,9 MB" con totale noto, "14,8 MB" con barra indeterminata senza totale, "Elaborazione…", "Completato · 21.277 elementi", "Errore"; ordine e sequenzialità delle richieste invariati), "Chiudi" attivo a fine aggiornamento con focus; durante lo scaricamento Indietro chiude la finestra senza interrompere il lavoro, "Cache immagini" con lo spazio occupato e il pulsante "Svuota cache immagini" (cache su disco di Coil in `cacheDir/fvp_images`, cache in memoria dell'`ImageLoader` e file di `cacheDir/updates` tranne l'APK di un aggiornamento in corso; il catalogo salvato in `filesDir` non viene toccato) che dopo la pulizia mostra "Cache svuotata · liberati N MB", "Configura da remoto" con QR (verifica login, sostituisce credenziali e cancella cache se riesce, altrimenti mantiene le vecchie), "Esci" con conferma che cancella credenziali, cache, preferiti, avanzamento e archivio "Continua a guardare".
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
- **Zapping automatico** (solo Live): il pulsante "Zapping" nella barra info del canale
  (quella che compare con OK; il focus iniziale va già sul pulsante e Destra ce lo riporta)
  chiude la barra e, dopo l'intervallo scelto, passa al canale successivo della lista
  corrente del player — la
  stessa dello zapping con Su/Giù: la categoria di partenza o "I miei canali", con i
  contenuti protetti già esclusi. In alto a destra compare "Zapping · N" con i secondi
  che mancano, aggiornato ogni secondo (fondo `FvpColors.PlayerOverlay`). Intervallo
  predefinito 10 s, salvato in SharedPreferences `fvp_player` chiave `zapping_seconds`
  (da 5 a 120 s compresi; un valore fuori dall'intervallo vale 10, e i vecchi 5/10/15/30
  restano validi senza migrazione), letto e scritto da `PlayerPreferences` nel pacchetto
  solo TV `player/`, scelto nella pagina Player delle Impostazioni. Un canale che entro 5 s
  dall'avvio è in errore o ancora in caricamento iniziale (non un buffering a metà
  visione) si salta subito, senza aspettare l'intervallo, e il conto riparte dal canale
  nuovo. Qualsiasi tasto del telecomando ferma lo zapping e viene consumato: si resta sul
  canale in visione, senza cambi canale, barre o uscite. Dopo l'ultimo canale compare
  "Fine della lista: vuoi ripartire dal primo canale?" con "Sì" (focus iniziale) e "No":
  "Sì" riparte dal primo canale, "No", Indietro o 15 s senza risposta tornano al canale
  da cui era partito lo zapping. Uscita dal player o cambio canale manuale fermano lo
  zapping, che non si riattiva da solo alla riapertura. Avvio, passi, canale non partito,
  fine lista e risposta sono in `ZappingController`, classe pura con orologio iniettabile.
  La barra info si apre con OK mentre il tasto è ancora giù e il focus passa subito su
  "Zapping": il contenitore della barra usa `ignoreHeldOkUntilReleased()`, quindi le
  ripetizioni e il rilascio di quell'OK vengono consumati e lo zapping parte solo con un
  OK nuovo e completo. Lo stato del blocco vive quanto la barra, quindi riparte a ogni
  apertura; frecce, Indietro e gli altri tasti non vengono mai bloccati.
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
  di rete la sorgente riparte in silenzio (stesso canale, caricamento visibile) **tre
  volte**, le prime due **immediate** e la terza dopo 1 s, prima del messaggio: ogni
  attesa è tempo con il video fermo e il riavvio ricostruisce comunque la sorgente da
  capo, quindi non c'è niente da aspettare. Il conteggio torna a zero solo dopo 30 s di
  riproduzione continua, così un canale che si strozza di continuo arriva all'errore
  invece di riprovare per sempre.
- **Stallo senza errore** (solo Live): Media3 non segnala niente quando il flusso si
  strozza a metà visione: resta in caricamento, o "pronto" con la riproduzione ferma.
  `LiveStallDetector` (classe pura, `data/playback/`) misura da quanto dura la stessa
  condizione — 5 s con il buffer pronto ma fermo, 25 s in caricamento (8 s se il Live è
  un `.ts` progressivo, dove aspettare costa più che riaprire) — e il cane da guardia in
  `PlayerEngine` passa dallo stesso riavvio silenzioso degli errori di rete. Lo zapping
  salta un canale che non è ancora partito dopo 5 s, che diventano 8 s quando il canale
  in onda è in HLS, dove l'avvio è più lento,
  quindi con lo stesso limite; esauriti i tentativi compare l'errore con Riprova. Mai in
  pausa, mai nel replay/VOD, mai per un flusso che avanza.
- **Formato live: quello dichiarato dal pannello** (`.ts` quando è ammesso, `.m3u8`
  altrimenti), come il pannello di riferimento, che costruisce l'indirizzo con
  `streamType` del server e non con una preferenza propria. Non è una scelta estetica:
  un `.ts` si apre con **una** richiesta e il primo fotogramma arriva in 2-3 s; un HLS
  deve leggere la playlist e scaricare prima i segmenti interi che coprono l'avvio (in
  Media3 l'avvio è a `3 × TARGETDURATION` dal bordo del live), impiegando sul campo
  5-12 s, con più richieste in parallelo che su un pannello che conta le connessioni
  pesano come più sessioni. `HLS (.m3u8)` resta scegliibile in Impostazioni → Player.
  Con un errore che non è una risposta HTTP il player riapre comunque una volta l'altro
  formato; le risposte 404/403/5xx non vengono scambiate.
- **Risposte di sessione (456 e 429)**: non sono un divieto ma un "riprova fra un
  attimo" — il server non ha ancora liberato la linea precedente. Hanno **due riavvii
  dedicati** (immediato, poi 1,5 s) che non consumano i tre riavvii degli errori di
  rete, e il messaggio "Connessioni esaurite…" arriva solo a budget davvero esaurito.
  Su un 456/429 scatta anche il passaggio all'altro formato, perché un HLS apre più
  richieste in parallelo ed è proprio l'HLS a farsi rifiutare su questi pannelli.
- **Nessun tentativo interno sul Live progressivo** (`PROGRESSIVE_LIVE_MIN_LOADABLE_RETRY_COUNT
  = 0`): su un `.ts` ogni retry interno costa uno `skipFully` dell'offset. L'errore
  arriva subito al player, che ricostruisce la sorgente **da zero** e quindi non ha
  nulla da scartare. Gli altri contenuti (film, episodi, replay, HLS) tengono i 3
  tentativi con 1/2/4 s.
- **Sorgente rigenerata dopo due riavvii**: al secondo riavvio consecutivo si ricostruisce
  l'indirizzo (catena di redirect e token nuovi) e, se l'account lo ammette, si passa
  all'altro formato. È il "refresh" che nei pannelli Xtream rimedia ai token e alle
  sessioni appese — di fatto quello che il pannello di riferimento ottiene ricostruendo
  l'indirizzo a ogni `prepare()`.
- **Buffer** (`PlayerNetworkConfig.loadControl()`): 50 s di buffer minimo e massimo,
  avvio con 2,5 s, ripresa dopo un'interruzione con 5 s, tempo prioritario sulla
  dimensione in byte e nessun buffer all'indietro. Sono i valori del pannello di
  riferimento, applicati sia al player a tutto schermo sia all'anteprima della Guida.
- **Fine stream Live**: il player resta in `REPEAT_MODE_ONE` (solo Live diretto, mai
  replay o VOD) e, se il provider chiude il flusso, rientra nella diretta con lo stesso
  meccanismo dei riavvii invece di restare sull'ultimo fotogramma.
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

### "Continua a guardare", Guida TV e Cerca (PR4)

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
- **Riga Continua a guardare in Novità**: riga orizzontale di copertine 2:3 e titoli,
  nascosta (senza titolo né stato vuoto) quando non ci sono voci; per i film mostra la
  barra verde dell'avanzamento, per le serie "S2 E5" e la barra dell'episodio. OK avvia
  subito il player dal punto salvato, senza finestra "Riprendi": per le serie le
  informazioni si caricano al momento (indicatore "Caricamento…" sulla copertina, errore
  senza URL) e la coda parte dall'episodio salvato. Pressione lunga: "Apri scheda" oppure
  "Rimuovi da Continua a guardare"; la rimozione nasconde la voce finché il contenuto non
  viene riprodotto e non modifica i preferiti. Al ritorno dal player il focus torna sulla
  voce (o passa alla prima card di Novità se la voce è uscita).
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

### "I miei canali" e contenuti protetti: scelta multipla

- **Aggiungi/Rimuovi canali dal telecomando**: la pressione lunga sulla scheda
  "I miei canali" apre un menu con "Aggiungi canali" e "Rimuovi canali"; con la lista
  personale vuota resta solo l'aggiunta. Lo stesso menu a tre voci (Modifica numero,
  Aggiungi canali, Rimuovi canali) è sulla pressione lunga di un canale, in Live, nella
  ricerca e nella sezione Preferiti; sopra il player le due voci in più non compaiono,
  perché lì la pagina di scelta non esiste.
- **Una sola pagina di scelta** per aggiungere e per togliere, nella stessa finestra a
  schermo intero delle altre schermate: in cima le categorie con i loro canali sotto,
  raggruppati nell'ordine del catalogo; i canali senza categoria finiscono in "Altri
  canali", così nessuno resta fuori dalla selezione. In aggiunta i canali che sono già
  nella lista personale non vengono mostrati (il numero sul tasto conta solo quelli che
  entrano davvero).
- **Gesti**: OK su una categoria **entra** nei suoi canali (il focus va al primo, le righe
  restano al loro posto: nessuna pagina annidata da aprire e chiudere); **pressione lunga**
  su una categoria spunta o toglie tutto il gruppo, come nei Contenuti protetti, e
  l'intestazione mostra "✓" quando è tutto scelto o "•" con "3/12" quando è parziale; OK su
  un canale spunta o toglie il singolo. Con più di un gruppo compare anche "Tutti i canali",
  che spunta o azzera l'intera selezione.
- **Conferma unica**: il tasto in fondo c'è solo con almeno una scelta e dice quanti canali
  muoverà ("Aggiungi (12)", "Rimuovi (3)"); una sola finestra di conferma per tutta la
  selezione, con il focus iniziale su "No" e Indietro che non modifica nulla. Una sola
  scrittura sull'archivio, come nella rimozione multipla dei Contenuti protetti.
- **Ordine e numerazione**: i canali scelti si aggiungono **in fondo**, nell'ordine di
  scelta, e la numerazione personale continua dopo l'ultimo esistente (1..N, nessun buco);
  un canale già presente resta dov'è e non viene duplicato. Togliendo, i numeri si
  ricompattano. La selezione non è salvata: si azzera uscendo dalla pagina o con Indietro.
- **Contenuti protetti — pressione lunga sulla categoria**: nell'elenco delle categorie del
  flusso "Aggiungi" la pressione lunga su una riga nasconde (o mostra di nuovo) subito tutta
  la categoria, con la stessa scrittura e lo stesso interruttore della riga "Tutta la
  categoria" dentro la categoria; quella riga resta al suo posto per chi preferisce
  entrare. Regole pure in `MyChannelSelection`, `MyChannelBulk`, `myChannelPickerGroups` e
  `myChannelRemovalGroups`, coperte da `MyChannelBulkEditTest`.

### VPN WireGuard (solo traffico di FelixVP)

- **Libreria**: `com.wireguard.android:tunnel` (Apache-2.0, vedi `THIRD_PARTY_NOTICES.md`),
  solo nell'app TV; il codice VPN sta in `vpn/` e mai in `data/` o `core/`, compilati
  anche dall'app mobile. Il tunnel ammette **solo il pacchetto di FelixVP**
  (`IncludedApplications`): le altre app della TV restano fuori, qualunque cosa dica il
  file `.conf`.
- **Configurazione dal telefono**: Impostazioni → VPN → "Configura" apre una sessione sul
  relay (`POST /api/vpn/create`) e mostra QR, codice a 6 cifre e tempo residuo. Il QR
  porta alla pagina `/vpn` con la chiave AES-256 nel frammento `#k=` (il browser non la
  manda mai al server): il telefono cifra il file `.conf` (AES-GCM, dati associati
  `felixvp-vpn-v1:<codice>`) e il relay vede solo dati cifrati. La TV controlla
  `GET /api/vpn/status/{codice}` ogni 2 secondi con `Bearer <pollToken>`, decifra,
  verifica il file e azzera la chiave.
- **Archivio**: configurazione cifrata con una chiave dell'Android Keystore
  (`fvp_vpn_config_key`) nelle preferenze `fvp_vpn`, con l'interruttore e il nome del
  server; il testo in chiaro non va mai su disco né nei log.
- **Accensione**: "Accendi" chiede il consenso di Android solo la prima volta (o se un'altra
  VPN l'ha revocato); se viene negato la VPN resta spenta. Se entro 10 secondi non arriva
  l'handshake il tunnel si chiude e FelixVP prosegue senza VPN con un avviso in basso;
  l'interruttore resta acceso e si riprova al prossimo avvio. All'avvio dell'app la VPN
  riparte solo se l'interruttore è acceso e il permesso c'è già: non chiede mai nulla e
  non scavalca un'altra VPN. Dopo ogni cambio le connessioni aperte si chiudono, così le
  richieste seguono il nuovo percorso.

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
| `StreamUrlsTest` | live con **il formato dichiarato dal pannello** (`.ts` se ammesso, `m3u8` solo se `ts` manca), preferenze TS/HLS che forzano solo se ammesse, formato alternativo per il ripiego, film/episodio con e senza estensione, codifica credenziali, `redactStreamUrl` |
| `WatchRulesTest`, `ProgressStoreInMemoryTest`, `ProgressStoreTest` | soglia 30 s, visto al 90%, ripresa, durata mantenuta, separazione per account, archivio vuoto |
| `EpisodeQueueTest` | ordine stagioni/episodi, episodio successivo nella stessa stagione e nella seguente, ultimo episodio |
| `LiveZappingTest`, `PlaybackFormattingTest` | zapping circolare, accelerazione 10/30/60 s, tempi `mm:ss` e `h:mm:ss` |
| `LiveStallDetectorTest` | cane da guardia del Live con tempo simulato: 5 s con il buffer pronto ma fermo, 25 s in caricamento, azzeramento dopo un segnale o un cambio di stato, mai in pausa, mai senza player o a fine stream, soglie sotto il read timeout di rete |
| `LiveAutoRestartTest` | tre riavvii silenziosi (immediati, immediati, 1 s) per gli errori di rete, **due riavvii dedicati** per 456/429 (immediato, poi 1,5 s) con budget separato, mai per le altre risposte HTTP o stream malformati, rigenerazione della sorgente dopo due riavvii consecutivi, azzeramento con un nuovo avvio |
| `PlayerLoadControlTest` | valori del buffer in `PlayerNetworkConfig` (50 s minimo e massimo, avvio 2,5 s, ripresa 5 s, tempo prima dei byte) e `DefaultLoadControl` che li usa davvero: nessun buffer all'indietro |
| `PlayerLoadErrorPolicyTest` | 3 tentativi 1/2/4 s per film, episodi e manifest; **zero** tentativi interni sul Live progressivo (`.ts`), riconosciuto dall'URL, così l'errore arriva subito e la sorgente si ricostruisce da zero |
| `PlaybackErrorsTest` | ogni risposta HTTP di errore riconosciuta come tale (quindi niente scambio di formato), errori di rete distinti, codici di accesso negato (401/403/409/429/456) e messaggi senza indirizzi né credenziali |
| `ZappingControllerTest` | zapping automatico con orologio finto: intervallo e conto nuovo, canale in errore o in caricamento saltato dopo 5 s, fine lista, "Sì"/"No"/15 s, arresto, durate fuori da 5..120 → 10 (4, 0, 121, null) e vecchi 5/10/15/30 ancora validi |
| `PlayerZappingTest` | Robolectric, un solo `setContent` per test: con OK la barra info del Live si apre con il focus iniziale sul pulsante "Zapping" e un secondo OK avvia lo zapping (solo Live), indicatore dopo l'attivazione, un tasto qualsiasi lo ferma senza cambiare canale, domanda di fine lista con Indietro che torna al canale di partenza; l'OK che apre la barra non avvia lo zapping al rilascio né con le ripetizioni (`repeatCount` 1 e 2), solo un OK nuovo e completo lo fa, e il blocco riparte a ogni apertura della barra |
| `ConnectionsAdvisoryTest` | avviso solo a connessioni piene e TV non in riproduzione |
| `AudioFormatLabelsTest` | mappatura dei mime audio, varianti DTS, canali `2.0`/`5.1`/`7.1`, riconoscimento del decoder FFmpeg |
| `SeekFeedbackTest` | etichette `+10 s`/`−10 s`, somma entro 1,5 s, ripartenza al cambio di verso, passo accelerato |
| `WatchToggleRulesTest`, `ProgressStoreWatchedTest` | visto/non visto sull'archivio in memoria e su DataStore, durata nota e ignota, altre voci intatte |
| `NextEpisodeRulesTest` | tre minuti, episodio corto, durata ignota, rinvio di 60 s e rinvio ripetuto, rinvio sotto i 75 s con conto alla rovescia, salto indietro dopo il rinvio |
| `CatalogRefreshTest`, `CatalogClientTest` | righe Live/Film/Serie, ordine, avanzamento streaming con e senza `Content-Length`, limite emissioni (200 ms / 1%), "In attesa"/"62% · 14,8 di 23,9 MB"/"14,8 MB"/"Elaborazione…"/"Completato · 21.277 elementi"/"Errore", fine aggiornamento |
| `SettingsCatalogProgressDialogTest` | finestra di avanzamento del catalogo con barra per ogni sezione Live/Film/Serie e stati con totale noto, senza totale, in elaborazione, completato ed errore (Robolectric, un solo `setContent` per test) |
| `CatalogSearchTest` | normalizzazione (maiuscole, accenti, spazi), prefisso prima di contiene poi alfabetico, limite 50 per riga, soglia 2 caratteri, catalogo assente |
| `ContinueWatchingRulesTest` | inserimento, ordine per ultimo aggiornamento, soglia 30 s, rimozione del film al 90%, passaggio all'episodio successivo, rimozione all'ultimo episodio, nascondi/ricompari, limite 30, archivio vuoto e voci incomplete |
| `ContinueWatchingStoreTest` | archivio DataStore vuoto, film salvato e riletto, nessuna scrittura sotto 30 s, rimozione al 90%, avanzamento al prossimo episodio, rimozione all'ultimo episodio, nascosta e di nuovo visibile, separazione per account, "Segna come visto" |
| `DrawerSectionsOrderTest` | ordine delle otto voci del menu, etichette delle nuove voci, icone distinte (senza simulazione D-pad) |
| `FocusMarqueeTextTest` | titoli con ellissi e fermi senza focus, marquee su una sola riga, nessuno scorrimento su più righe (Robolectric, senza D-pad) |
| `VpnTransferCryptoTest` | vettore della pagina `/vpn` decifrato, codice diverso e byte alterato rifiutati, IV di 12 byte, limite di 8192 byte, URL del QR, chiave nuova a ogni sessione |
| `VpnConfigParserTest` | file di esempio valido con nome del server dal commento o dall'Endpoint, applicazioni del file sostituite dal solo pacchetto dell'app, file senza `[Peer]` o con chiave non valida rifiutati con il messaggio generico |
| `VpnStoreTest` | cifrario finto: configurazione salvata e riletta, nessun testo in chiaro nelle preferenze, interruttore, cancellazione, configurazione non più decifrabile |
| `VpnRelayClientTest` | create, troppe sessioni, codice non valido, waiting con `Bearer`, ready con IV e testo cifrato, 404 come scaduta |
| `VpnControllerTest` | backend finto (mai il GoBackend nativo): permesso da chiedere all'avvio, connessione con handshake, chiusura senza handshake con avviso, Spegni anche durante la connessione, Rimuovi, nuova configurazione con riavvio, tunnel chiuso dal sistema |
| `VpnSettingsSectionTest` | riquadro VPN con stato finto: solo "Configura" senza configurazione, "Connessa · server" con tre pulsanti, Accendi/Spegni, callback dei pulsanti, riga di stato dentro la pagina "Impostazioni › VPN" |
| `InterfaceSizeSettingsTest`, `SettingsExitButtonTest`, `SettingsUpdateAndExitTest` | pagina Aspetto con la scelta della dimensione dell'interfaccia e le relative etichette, pagina Account con il pulsante di uscita e il riquadro dell'abbinamento da remoto, pagina App con versione, stato dell'aggiornamento, pulsante sempre presente ("Aggiorna" con una versione disponibile, altrimenti "Controlla aggiornamenti") e conferma di uscita |
| `SettingsPagesFocusTest` | focus d'ingresso di ogni pagina sul suo primo elemento focalizzabile (App → pulsante dell'aggiornamento, Catalogo → "Aggiorna catalogo", Account → "Esci dall'account", Aspetto → dimensione attiva, VPN → "Configura"), pagina App senza aggiornamento con "Controlla aggiornamenti" focalizzato che rilancia il controllo manuale, e ogni pagina vera dentro la navigazione con Indietro che torna sulla card |
| `SettingsCardsGridTest` | griglia con dati finti: sette card nell'ordine Account, Aspetto, Contenuti protetti, VPN, Catalogo, Player, App; quattro per riga con altezze e larghezze uguali; righe di stato con e senza scadenza, per ogni dimensione dell'interfaccia, PIN impostato o no, tutti gli stati della VPN, catalogo aggiornato o in corso, "Zapping ogni N s", versione installata e aggiornamento disponibile; icona della card App arancione (chiave semantica `SettingsCardIconTintKey`) con aggiornamento disponibile e al colore normale senza; nessun pallino degli aggiornamenti dentro le Impostazioni |
| `SettingsPlayerPageTest` | pagina Player con le voci "Durata zapping" e "Formato live": valore al centro tra "−" e "+" (un secondo per OK, pressione prolungata: 500 ms di attesa e poi un secondo ogni 100 ms, con i cambi contati sul `mainClock`), valori salvati in `fvp_player` (10 → 11, 5 fermo al limite con "−" disattivato, 120 fermo al limite con "+" disattivato), scelte rapide 5/10/15/30 con il "✓" solo sul valore attivo e nessuno con 12, valore usato dallo zapping (a 11 s nessun cambio, a 12 s cambio; regola dei 5 s invariata) e Indietro che torna alla griglia con il focus sulla card Player e la riga già aggiornata; "Formato live" parte su Automatico con le tre scelte e il "✓" sull'attiva, scegliere HLS sposta il segno e salva `live_format` (un valore sconosciuto torna ad Automatico) |
| `SettingsNavigationTest` | navigazione con pagine finte: OK su ogni card apre la pagina giusta, Indietro torna alla griglia con il focus sulla card di ingresso, ogni pagina riceve il focus d'ingresso, Indietro da una pagina senza elementi focalizzabili torna alla griglia e non al menu laterale, "Contenuti protetti" apre la schermata con il PIN, la pagina VPN apre la configurazione con il QR, durante lo scaricamento di un aggiornamento Indietro resta sulla pagina; all'ingresso c'è solo la griglia |
| `CacheCleanupTest` | cartelle vere senza Robolectric: conteggio di immagini, aggiornamenti e cache in memoria, APK in uso escluso, cartelle mancanti, arrotondamento dei megabyte |
| `SettingsCacheCleanupTest` | "Svuota cache immagini" con file finti nelle due cartelle: si svuotano tranne l'APK in uso, il messaggio riporta i MB liberati, il catalogo salvato in `filesDir` resta intatto e si rilegge |
| `CategoryConfirmFocusTest` | OK su una categoria di Film, Serie e Live, con l'orologio fermo sotto i 300 ms del debounce: la categoria cambia subito, il focus va alla prima copertina o al primo canale, la voce risulta selezionata finché la colonna resta aperta; con la categoria vuota il focus resta sulla voce e la colonna resta aperta (Robolectric, un solo `setContent` per test) |
| `NovitaCategoryTest` | la categoria locale è "NOVITÀ" (maiuscola accentata) e il menu laterale resta "Novità", oltre a ordine e filtro delle categorie |
| `CatalogSortingTest` | ordinamento puro delle categorie: data di aggiunta in secondi e millisecondi, data assente in fondo, parità per identificativo decrescente, A-Z con maiuscole e accenti ("Èlite", "elite", "Zorro", "àmbito"), Anno dal campo `year`, dall'anno tra parentesi nel titolo e senza anno, serie con `lastModified` e `releaseDate`, ciclo dei tre ordini e preferenza per categoria con valore non valido che vale "aggiunta" (JVM, nessun emulatore) |
| `CategorySortStoreTest` | preferenze `fvp_sort` vere in Robolectric: valore assente e valore non valido valgono "aggiunta", scelta riletta da una nuova istanza, chiavi `vod_<categoria>` e `series_<categoria>` distinte |
| `CatalogSortButtonTest` | pulsante di ordinamento in una categoria di Film e assente in NOVITÀ, OK che passa ad A-Z cambiando il primo titolo e lasciando il focus sul pulsante, ordine che resta uscendo e rientrando nella categoria mentre un'altra resta su "Aggiunti di recente", Freccia su dalla prima riga e Freccia giù dal pulsante, pulsante e preferenza distinti per le Serie (Robolectric, un solo `setContent` per test) |
| `MyChannelBulkEditTest` | selezione multipla pura: aggiunta in fondo nell'ordine di scelta con numerazione che continua dopo l'ultimo, canale già presente non duplicato, rimozione in blocco che ricompatta i numeri, interruttore per canale, per gruppo e per l'intero elenco, gruppi per categoria nell'ordine del catalogo con le categorie vuote saltate e i canali senza categoria in "Altri canali", spunte piena/parziale/assente del gruppo, pagina di rimozione che tiene l'ordine personale e lascia rimovibili i canali spariti dal catalogo (JVM, nessun emulatore) |

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
