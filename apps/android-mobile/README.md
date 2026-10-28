# FelixVisionPlayer · Android mobile (`apps/android-mobile`)

App Android per tablet di FelixVisionPlayer, in Kotlin e Jetpack Compose
(material3, solo tema scuro). Questo PR (1 di 5) contiene il progetto Gradle,
i dati condivisi con l'app TV, il tema, l'accesso completo e la CI;
cataloghi, player e aggiornamento in-app arrivano nei PR successivi.

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

Test unitari (JVM con Robolectric, nessun emulatore):

```bash
./gradlew test
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

Controllo statico (come in CI):

```bash
./gradlew lint
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
`pull_request` verso `main`, più `workflow_dispatch`) esegue
`./gradlew test assembleDebug lint` da `apps/android-mobile` e carica:

- **FelixVP-mobile-debug**: APK di debug (retention 7 giorni);
- **android-mobile-ci-reports**: report di test e lint, anche in caso di errore.

I path di trigger includono anche `data/`, `core/` e `libs.versions.toml` della
TV, perché il tablet compila quei sorgenti. Nessun segreto nel workflow.

---

## 5. Note di prodotto

- **Accesso**: modulo server (indirizzo completo o codice rubrica) / utente /
  password con mostra/nascondi; "Avanti" passa al campo successivo, "Fatto"
  invia. Dopo l'accesso: schermata provvisoria con riepilogo account (stato,
  scadenza, connessioni) e pulsante **Esci**.
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
