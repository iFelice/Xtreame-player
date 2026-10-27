# Pubblicazione dell'app Android TV

Questa procedura pubblica l'APK firmato di FelixVP nel repository pubblico
`iFelice/felixvp-releases`. Le PR mostrano **Android TV CI**: si unisce solo con
la spunta verde. Il link stabile da inserire in Downloader è:

```text
https://github.com/iFelice/felixvp-releases/releases/latest/download/FelixVP.apk
```

Non inserire nel repository indirizzi di server IPTV reali, nomi utente,
password, token, chiavi o keystore. Le credenziali di rilascio si configurano
esclusivamente come segreti GitHub.

## 1. Crea la chiave di rilascio sul Mac

Apri Terminale e crea un keystore PKCS12. `keytool` chiederà le password senza
scriverle nel comando o nella cronologia della shell; usa l'alias `felixvp`.

```bash
mkdir -p "$HOME/Library/Application Support/FelixVP"
keytool -genkeypair \
  -keystore "$HOME/Library/Application Support/FelixVP/felixvp-release.p12" \
  -storetype PKCS12 \
  -alias felixvp \
  -keyalg RSA \
  -keysize 2048 \
  -validity 10000
```

Conserva una copia di sicurezza del file `.p12` e delle relative password in un
luogo sicuro **fuori dal repository** (per esempio un supporto cifrato custodito
separatamente). Non aggiungere mai il keystore al progetto o a GitHub. La stessa
chiave deve essere usata per tutte le versioni successive: se la perdi, non sarà
possibile firmare aggiornamenti compatibili con l'installazione esistente.

## 2. Crea il repository pubblico per gli APK

Su GitHub crea `iFelice/felixvp-releases` come repository **pubblico**. Inizializzalo
con un README (senza codice applicativo, configurazioni o segreti). Il repository
principale che contiene il workflow può invece restare privato.

## 3. Crea il token per la pubblicazione

Nelle impostazioni GitHub del tuo account crea un **fine-grained personal access
token** con:

- accesso limitato al solo repository `iFelice/felixvp-releases`;
- permesso repository **Contents: Read and write**;
- nessun altro repository selezionato e nessun altro permesso non necessario.

Copia il token nel gestore sicuro che usi per i segreti. Non inserirlo in file,
comandi versionati, log o messaggi.

## 4. Configura i cinque segreti nel repository privato

Nel repository `iFelice/Xtreame-player` apri **Settings → Secrets and variables →
Actions → New repository secret** e crea esattamente questi cinque segreti:

| Nome | Valore |
| --- | --- |
| `FVP_KEYSTORE_BASE64` | Contenuto Base64 del file PKCS12, generato come indicato sotto |
| `FVP_KEYSTORE_PASSWORD` | Password del keystore |
| `FVP_KEY_ALIAS` | `felixvp` |
| `FVP_KEY_PASSWORD` | Password della chiave (può coincidere con quella del keystore) |
| `RELEASES_REPO_TOKEN` | Token fine-grained limitato al repository pubblico, con `Contents: Read and write` |

Per copiare il keystore in Base64 negli appunti su macOS, esegui (adattando il
percorso se lo hai salvato altrove):

```bash
base64 -i "$HOME/Library/Application Support/FelixVP/felixvp-release.p12" | pbcopy
```

Incolla il risultato direttamente come valore di `FVP_KEYSTORE_BASE64` nelle
impostazioni dei segreti. Non salvarlo nel repository. Il workflow scrive il
keystore decodificato in un file temporaneo fuori dal repository e lo cancella
anche se il job fallisce.

## 5. Pubblica una versione

Dopo aver inviato le modifiche al branch principale, scegli uno dei metodi:

- **GitHub Desktop:** crea e pubblica un tag nel formato `tv-v1.0.0` (sostituisci
  `1.0.0` con la versione desiderata). Il push del tag avvia automaticamente il
  workflow.
- **GitHub Actions:** apri **Actions → Android TV release → Run workflow**, inserisci
  `version_name` (per esempio `1.0.0`) e avvia il workflow.

Il workflow esegue i test, `assembleRelease` e lint, controlla la firma dell'APK,
e crea nel repository pubblico una release con tag `1.0.0`, titolo `FelixVP 1.0.0`
e asset `FelixVP.apk`. Il numero di versione Android viene aumentato usando il
numero di esecuzione del workflow più 100. L'APK più recente è sempre disponibile
all'indirizzo stabile riportato all'inizio di questa guida.

## 6. Installa e aggiorna con Downloader

1. Su Android TV installa/apri l'app Downloader.
2. Nelle impostazioni della TV autorizza Downloader in **Installa app sconosciute**
   (il nome o il percorso del menu può variare in base al produttore).
3. Inserisci in Downloader questo indirizzo:

   ```text
   https://github.com/iFelice/felixvp-releases/releases/latest/download/FelixVP.apk
   ```

4. Scarica e installa FelixVP. Per le versioni successive ripeti il download e
   conferma l'aggiornamento.

**Prima installazione da una build debug:** la build debug e quella di rilascio hanno
firme diverse. Per il primo passaggio alla build firmata occorre disinstallare una
volta la versione debug; dopo aver installato la release firmata, gli aggiornamenti
futuri si installano sopra senza disinstallare l'app.

**Non perdere la chiave di rilascio:** senza il keystore originale non è possibile
pubblicare aggiornamenti firmati compatibili con l'app già installata. Mantieni la
copia di sicurezza e le password al sicuro, fuori dal repository.
