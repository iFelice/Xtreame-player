# Applicazioni FelixVisionPlayer

Ogni piattaforma avrà un'applicazione progettata espressamente per il proprio ambiente. Non verrà riutilizzata l'interfaccia desktop tramite WebView come soluzione definitiva.

Le cartelle verranno aggiunte una alla volta, quando inizierà concretamente lo sviluppo della relativa app.

Ordine previsto:

1. `mac-desktop` — stabilizzazione dell'attuale prodotto desktop.
2. `android-tv` — Kotlin e interfaccia TV nativa; include in seguito la variante Fire TV.
3. `ios` — SwiftUI per iPhone e iPad.
4. `android-mobile` — Kotlin/Compose per telefoni e tablet.
5. `tizen-tv` — applicazione Samsung TV dedicata.
6. `webos-tv` — applicazione LG TV dedicata. **Esistente**: la cartella
   `webos-tv` non contiene codice React proprio, è una **build dedicata della
   web app in modalità TV** (`vite build --mode webos`) impacchettata come
   `.ipk` per Developer Mode. Le misure sul TV che hanno guidato la
   realizzazione sono state fatte con un'app di prova standalone
   (`apps/webos-probe`, nel branch `arena/c66c45c6-xtreame-player`, che non va
   unito e non fa parte del prodotto).
   → guida: [`docs/WEBOS.md`](../docs/WEBOS.md).

Le app Android TV (`android-tv`, Kotlin nativo) e webOS (`webos-tv`, web app
compilata) restano due approcci diversi: la prima ha un catalogo e un player
nativi, la seconda riusa l'interfaccia React della web app.
