# Riferimento strutturale APK

Il contenuto di `Progetto-APK/` viene consultato esclusivamente come riferimento strutturale e comportamentale. Non è sorgente del prodotto e non autorizza il riuso di codice, marchi o risorse proprietarie.

## Materiale disponibile

- `cartella-apktool/AndroidManifest.xml`: componenti Android dichiarati e configurazione applicativa.
- `cartella-apktool/res/`: classificazione delle risorse Android per densità, orientamento e tipo.
- `cartella-apktool/assets/`: organizzazione di asset runtime, shader e dati accessori.
- `cartella-apktool/lib/`: copertura ABI `arm64-v8a`, `armeabi-v7a`, `x86` e `x86_64`.
- `cartella-apktool/smali/`: struttura compilata, utile solo per ricostruire responsabilità e flussi ad alto livello.
- `esportazione-jadx/`: vista di supporto per individuare schermate, lifecycle e separazione dei componenti.

## Vincoli per il nuovo prodotto

1. Usare il riferimento per inventariare schermate, gerarchie, lifecycle e flussi di navigazione.
2. Reimplementare ogni comportamento con architettura, nomi e codice originali.
3. Usare esclusivamente logo e asset approvati di FelixVisionPlayer.
4. Non copiare layout pixel-per-pixel, stringhe distintive, codice decompilato o risorse del prodotto di riferimento.
5. Per Android TV mantenere moduli e risorse native adatte a telecomando, focus, densità TV e Media3.
6. Conservare il riferimento nel repository senza trasformarlo in una dipendenza di compilazione.

## Uso nelle fasi successive

Ogni specifica di schermata Android TV deve includere una voce “riscontro strutturale APK” che descriva quali responsabilità o passaggi sono stati considerati, senza riportare implementazioni proprietarie.
