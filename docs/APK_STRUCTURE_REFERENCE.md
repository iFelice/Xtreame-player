# Riferimento strutturale APK

L'estrazione apktool/JADX dell'APK (`Progetto-APK/`) viene consultata esclusivamente come riferimento strutturale e comportamentale. Non è più presente nell'albero del repository: il proprietario la conserva in locale, fuori dal repository, ed è esclusa da Git tramite la voce `Progetto-APK/` in `.gitignore`. Non è sorgente del prodotto e non autorizza il riuso di codice, marchi o risorse proprietarie.

Per consultarla occorre ripristinarla dalla storia git al commit `5df2645`:

```bash
git checkout 5df2645 -- Progetto-APK
```

I percorsi elencati qui sotto si riferiscono a quella copia locale, non a file presenti nel repository.

## Materiale disponibile

- `Progetto-APK/cartella-apktool/AndroidManifest.xml`: componenti Android dichiarati e configurazione applicativa.
- `Progetto-APK/cartella-apktool/res/`: classificazione delle risorse Android per densità, orientamento e tipo.
- `Progetto-APK/cartella-apktool/assets/`: organizzazione di asset runtime, shader e dati accessori.
- `Progetto-APK/cartella-apktool/lib/`: copertura ABI `arm64-v8a`, `armeabi-v7a`, `x86` e `x86_64`.
- `Progetto-APK/cartella-apktool/smali/`: struttura compilata, utile solo per ricostruire responsabilità e flussi ad alto livello.
- `Progetto-APK/esportazione-jadx/`: vista di supporto per individuare schermate, lifecycle e separazione dei componenti.

## Vincoli per il nuovo prodotto

1. Usare il riferimento per inventariare schermate, gerarchie, lifecycle e flussi di navigazione.
2. Reimplementare ogni comportamento con architettura, nomi e codice originali.
3. Usare esclusivamente logo e asset approvati di FelixVisionPlayer.
4. Non copiare layout pixel-per-pixel, stringhe distintive, codice decompilato o risorse del prodotto di riferimento.
5. Per Android TV mantenere moduli e risorse native adatte a telecomando, focus, densità TV e Media3.
6. Conservare il riferimento nel repository senza trasformarlo in una dipendenza di compilazione.

## Uso nelle fasi successive

Ogni specifica di schermata Android TV deve includere una voce “riscontro strutturale APK” che descriva quali responsabilità o passaggi sono stati considerati, senza riportare implementazioni proprietarie.
