# FelixVisionPlayer · Android mobile (`apps/android-mobile`)

App Android per tablet di FelixVisionPlayer, in Kotlin e Jetpack Compose
(material3, solo tema scuro). PR1: progetto Gradle, dati condivisi con l'app
TV, tema, accesso completo e CI. PR2: schermata principale adattiva con le 8
sezioni (Novità, Continua a guardare, Live, Film, Serie, Preferiti, Cerca,
Impostazioni), cataloghi con categorie, dettagli a schermo intero e gesti a
pressione lunga. Player: PR3. Aggiornamento in-app: PR4.

- `applicationId`: `it.felixvision.mobile`
- nome visualizzato: **FelixVP**
- `minSdk` 26, `compileSdk`/`targetSdk` 37 (dal catalogo condiviso "libs")
- modulo unico `:app`, progetto Gradle autonomo (non fa parte della build npm
  della radice)

---

## 1. Requisiti

- **Android Studio stabile** (con l'SDK Platform 37 installato).
- **JDK incluso in Android Studio**: non serve installare un JDK a parte. Da
  terminale, sul Mac, si usa il JDK di Android Studio tramite `JAVA_HOME`
  (vedi sotto).
- Per l'installazione: un tablet (o emulatore) con **ADB** attivo.

Esempio di `JAVA_HOME` su macOS (adattare la versione di Android Studio
installata):

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
cd apps/android-mobile
```

Test unitari della sola variante debug (JVM con Robolectric, nessun
emulatore, stesso comando della CI):

```bash
./gradlew testDebugUnitTest
```

Build dell'APK di debug:

```bash
./gradlew assembleDebug
```

Installazione sul dispositivo collegato (sostituisce la versione già
installata mantenendo i dati):

```bash
adb install -r app/build/outputs/apk/debug/app-debug.apk
```

Controllo statico della variante debug (come in CI):

```bash
./gradlew lintDebug
```

Release firmata: le variabili d'ambiente `FVP_VERSION_CODE`,
`FVP_VERSION_NAME`, `FVP_KEYSTORE_PATH`, `FVP_KEYSTORE_PASSWORD`,
`FVP_KEY_ALIAS` e `FVP_KEY_PASSWORD` sono le stesse dell'app TV; senza di esse
la release resta non firmata (stessi messaggi di avviso della TV).

---

## 3. Sorgenti condivisi con l'app TV (senza copiarli)

Il modulo `:app` compila anche i sorgenti della TV vivi nel repository, senza
duplicarli (in `app/build.gradle.kts`):

```kotlin
android.sourceSets.named("main") {
    kotlin.directories += "../../android-tv/app/src/main/java/it/felixvision/tv/data"
    kotlin.directories += "../../android-tv/app/src/main/java/it/felixvision/tv/core"
}
```

Con AGP 9 il Kotlin è integrato nel plugin Android: si usano le directory di
`sourceSets["main"].kotlin`; `kotlin { sourceSets }` e `java.srcDir` non
funzionano per i sorgenti Kotlin.

Le classi condivise mantengono i package originali `it.felixvision.tv.data.*`
e `it.felixvision.tv.core.*`. Il codice del tablet vive invece in
`it.felixvision.mobile`.

### Regola di allineamento delle dipendenze

I file in `data/` e `core/` della TV sono compilati anche qui: il modulo
tablet deve dichiarare **ogni libreria importata da qualunque file di quelle
cartelle**, con le stesse versioni della TV (catalogo condiviso `libs`, letto
da `../android-tv/gradle/libs.versions.toml` in `settings.gradle.kts`).
Se la TV aggiunge un import in `data/` o `core/`, la CI del tablet scatta
(paths del workflow) e va aggiunta la dipendenza corrispondente.

Il catalogo `mobileLibs` (`gradle/mobile.versions.toml`) contiene solo le
librerie che la TV non ha (material3 e la navigation suite adattiva), tutte
senza versione esplicita perché le gestisce il Compose BOM già presente in
`libs`.

### Perché `it.felixvision.tv.data.update` non va importato

Il package `data/update` della TV viene **compilato** (è sotto `data/`) ma
**non va usato** dal tablet: contiene nomi di package e asset dell'app TV
cablati (per esempio il receiver che riapre `it.felixvision.tv.MainActivity`).
Nessun file dell'app tablet deve importarlo:

- l'aggiornamento in-app del tablet arriverà nel PR4 in un package proprio;
- in questo PR mancano `REQUEST_INSTALL_PACKAGES` e gli attributi del receiver.

L'unica eccezione è `app/src/main/java/it/felixvision/tv/MainActivity.kt`,
una classe-ancora senza logica che serve solo a far compilare il receiver
condiviso (non è dichiarata nel manifest e non viene mai istanziata); il
motivo è spiegato nel file.

---

## 4. CI

`.github/workflows/android-mobile-ci.yml` (push su qualunque branch e
`pull_request` verso `main`, più `workflow_dispatch`) esegue due job.

**verify** — `./gradlew testDebugUnitTest assembleDebug lintDebug` da
`apps/android-mobile` (test e lint della sola variante debug, stesso
schema del CI della TV) e carica:

- **FelixVP-mobile-debug**: APK di debug (retention 7 giorni);
- **android-mobile-ci-reports**: report di test e lint, anche in caso di errore.

L'APK di debug viene costruito con una versione riconoscibile:
`FVP_VERSION_NAME` è `0.1.0-<primi 7 caratteri dello SHA del commit>` e
`FVP_VERSION_CODE` è il numero di esecuzione del workflow (`github.run_number`);
il job emette un avviso `::notice` con versione e codice, visibile nella
pagina dell'esecuzione. Nessun segreto obbligatorio nel workflow.

**emulatore** (dopo `verify`) — test strumentati end-to-end del percorso
completo del tablet su un AVD **API 35, target `google_apis`, architettura
`x86_64`, profilo `pixel_tablet`** (2560×1600, ~320dpi), tramite
`reactivecircus/android-emulator-runner@v2` con KVM verificato sul runner.
Il job:

1. avvia il mock server Xtream `tools/xtream-mock` in locale (profilo
   `visual`, porta 3333, utente demo/demo) e ne attende `/health`;
2. esegue `./gradlew connectedDebugAndroidTest`, che lancia
   `EmulatorTabletJourneyTest`: login con eventi reali, sezioni
   Novità/Live/Film/Impostazioni in entrambi gli orientamenti (controlli su
   inset/safe-area e allineamento della barra laterale), player Live e Film
   con gesti per volume, luminosità e cambio canale, aggiornamento del
   catalogo con percentuali reali; ogni schermata/orientamento viene
   fotografata in PNG dentro `filesDir/screenshots`;
3. recupera gli screenshot con `adb exec-out run-as … tar` (piano B:
   `adb root` + `adb pull`) e carica l'artifact **android-mobile-emulator**
   (report dei test connessi + screenshot, retention 7 giorni, anche in
   caso di errore).

In locale gli stessi test si eseguono con `./gradlew connectedDebugAndroidTest`
avendo un dispositivo/emulatore collegato e il mock server in ascolto su
`10.0.2.2:3333` (`npm run mock:xtream:visual` da `tools/xtream-mock`).

I path di trigger includono anche `data/`, `core/` e `libs.versions.toml` della
TV, perché il tablet compila quei sorgenti. Nessun segreto nel workflow.

---

## 5. Note di prodotto

- **Accesso**: modulo server (indirizzo completo o codice rubrica) / utente /
  password con mostra/nascondi; "Avanti" passa al campo successivo, "Fatto"
  invia.
- **Home adattiva** (dipende dalla finestra, non dal dispositivo):
  - finestra più larga che alta con larghezza ≥600dp → barra laterale
    (NavigationRail) con tutte le 8 sezioni e i colori di sezione FvpColors;
  - altrimenti barra in basso con 5 voci (Novità, Live, Film, Serie,
    Preferiti) e intestazione con le icone Cerca e Impostazioni; "Continua a
    guardare" compare come prima riga di Novità.
  Sezione iniziale: Novità. Indietro chiude prima il dialogo/il dettaglio/la
  tendina delle categorie; poi riporta a Novità e da Novità esce dall'app,
  senza conferma.
- **Cataloghi**: Live (righe con numero, logo, nome, programma in onda e
  avanzamento; icona Guida per il dettaglio del canale con catch-up), Film e
  Serie (griglie adattive di locandine ~140dp), categorie a sinistra in
  orizzontale o nella tendina dell'intestazione in verticale (la scelta la
  richiude); pressione lunga sulle categorie = preferiti di categoria.
- **Dettagli** a schermo intero dal clic su film/serie: trama, anno, durata,
  valutazione, stella dei preferiti e "Riproduci"; le serie hanno il selettore
  di stagioni e l'elenco episodi con avanzamento (regole
  ProgressStore/WatchRules; ordine di `SeasonLogic` = TV).
- **Novità e Continua a guardare**: stesse regole della TV (ultimi
  film/serie; voci dell'archivio condiviso, una per film/serie), con
  scorrimento tocco orizzontale; una voce si toglie con la pressione lunga.
- **Preferiti**: "I miei canali" numerati per primi, poi Categorie Live, Film
  e Serie come sulla TV. Modalità Modifica: trascinamento delle righe con le
  maniglie (scorrimento automatico vicino ai bordi), salvataggio su rilascio
  via MyChannelsStore e rinumerazione in PHP; in modifica sono mostrati anche
  Rimuovi e "Sposta in posizione n°".
- **Gesti**: tocco = azione principale; pressione lunga su canali, film,
  serie, voci di Continua a guardare e categorie → pannello dal basso con
  azioni esplicite (aggiungi/togli preferito, I miei canali, "Sposta in
  posizione n°", rimozione riservata a Continua a guardare); ogni azione mostra
  uno snackbar breve.
- **Ricerca con debounce** (~300 ms, nel ViewModel) su CatalogSearch con
  risultati in gruppi Live/Film/Serie.
- **Riproduzione provvisoria**: ogni "Riproduci" in ogni schermata passa da
  `CatalogViewModel.onPlayRequest`, l'unico punto di ingresso che questo PR
  fa confluire nello snackbar "Riproduzione disponibile nel prossimo
  aggiornamento"; nessun URL di stream viene costruito o loggato (arriva nel PR3).
- **Impostazioni**: account (utente, stato, scadenza, connessioni in uso con
  ConnectionsAdvisory), server, Aggiorna catalogo con avanzamento, versione
  dell'app, Esci verso l'accesso con pulizia opzionale dei dati utente.
- **Abbinamento remoto**: QR e PIN dal servizio di relay
  (`BuildConfig.PAIRING_RELAY_URL`, stesso della TV), rinnovo del codice,
  accesso automatico alla ricezione delle credenziali; il polling è attivo
  solo mentre il pannello è visibile.
- **Layout**: in orizzontale login e abbinamento affiancati (da 840dp di
  larghezza), in verticale uno sopra l'altro: la scelta dipende dalla
  larghezza della finestra, non dal tipo di dispositivo. Lo stato dei campi
  vive nel ViewModel e sopravvive alla rotazione.
- **Colori**: palette del brand (verde #10B981, grigi #1C1C1E/#2C2C2E); il
  rosso è riservato agli errori; font di sistema; target touch ≥48dp.

## Player tablet (PR3)

Il player è una schermata di `MainActivity` e mantiene un'unica istanza Media3 durante il cambio di orientamento. In verticale mostra il video 16:9 e il pannello contestuale; in orizzontale usa la modalità immersiva. I comandi touch si nascondono dopo quattro secondi, consentono Play/Pausa, ricerca, scelta delle tracce e modalità Adatta/Riempi. Il doppio tocco sui terzi laterali salta di dieci secondi, i trascinamenti orizzontali cambiano canale Live o spostano la riproduzione VOD, e quelli verticali regolano volume di sistema e luminosità temporanea della finestra. Il classificatore e le soglie sono in `TouchGestureRules`.

È disponibile il Picture-in-Picture con play/pausa e rapporto d'aspetto limitato ai valori ammessi da Android. L'audio usa il focus di sistema, si mette in pausa quando diventano indisponibili le cuffie e salva i progressi; non viene avviato un servizio in background.

### Firma di debug fissa nel CI

Il workflow legge il secret opzionale `FVP_DEBUG_KEYSTORE_BASE64`, ne decodifica il contenuto solo in `$RUNNER_TEMP` e lo rimuove sempre alla fine del job. Se il secret è configurato, l'APK debug usa quella firma fissa (password e alias standard Android); il log del CI stampa l'impronta SHA-256 del certificato, mai il keystore. Senza secret il job continua con la chiave debug effimera standard di Gradle e segnala che la firma può cambiare a ogni esecuzione. Per rendere stabile la firma è necessario configurare il secret Base64 del keystore debug, senza committare file o credenziali.
