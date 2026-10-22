# FelixVisionPlayer · Android TV (`apps/android-tv`)

Applicazione Android TV nativa di FelixVisionPlayer, in Kotlin e Jetpack Compose for TV.
Questa prima parte copre **progetto, client Xtream, archiviazione sicura, schermata di
accesso e abbinamento remoto**. Cataloghi e player arriveranno nelle parti successive;
dopo l'accesso l'app mostra una schermata provvisoria con utente, scadenza e stato
dell'account.

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
├── data/images/               ImageLoader Coil 3 con client dedicato (max 4, 200 MB)
└── ui/                        tema, controlli TV, QR, cataloghi e impostazioni
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
- **Navigazione a cassetto**: a riposo colonna di icone, si espande al focus; voci nell'ordine Novità, Live, Film, Serie, Preferiti, Impostazioni; colori attivi Live #FF9F0A, Film #10B981, Serie #2DD4BF, Novità #A3E635, Preferiti #FBBF24, Impostazioni bianco; inattive #AEAEB2; focus con bordo #34D399 e leggero ingrandimento; sfondi #1C1C1E/#2C2C2E/#3A3A3C.
- **Sezioni**: Novità (ultimi film per `added`, ultime serie per `last_modified`, 40 ciascuna); Live con categorie a sinistra e debounce 300 ms; Film/Serie con griglia 5 colonne e dettaglio on-demand (`get_vod_info`/`get_series_info`); Preferiti con pressione lunga OK e DataStore per account; liste con `LazyColumn`/`LazyVerticalGrid` e chiavi stabili fino a 20k elementi.
- **Impostazioni**: dati account (utente, stato, scadenza con giorni rimanenti, connessioni, server come host), "Aggiorna catalogo" con orario, "Configura da remoto" con QR (verifica login, sostituisce credenziali e cancella cache se riesce, altrimenti mantiene le vecchie), "Esci" con conferma che cancella credenziali, cache e preferiti.
- **Correzioni abbinamento**: nessuna sessione durante verifica credenziali salvate; dopo 3 scadenze consecutive (30 min) si ferma con "Codice scaduto" e pulsante "Mostra un nuovo codice"; pannello Impostazioni attivo solo quando visibile.

### Traffico in chiaro

`res/xml/network_security_config.xml` consente esplicitamente il traffico HTTP: molti
pannelli Xtream servono gli elenchi su `http://` (porte 8080/25461) o su indirizzi della
rete di casa. Il motivo è documentato nel file stesso.

Da Android 17 (API 37) l'accesso alla rete locale richiede il permesso runtime
`ACCESS_LOCAL_NETWORK`: è dichiarato nel manifest e richiesto all'avvio, altrimenti i
server Xtream raggiunti con indirizzo privato non risponderebbero.


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
- Media3 **non** è ancora una dipendenza: la versione è già fissata nel catalogo
  (`gradle/libs.versions.toml`) e servirà al player nella parte 3.
