# Materiale di riferimento

L'estrazione apktool/JADX dell'APK fornito come riferimento (cartella `Progetto-APK/`, oltre 27.000 file e circa 642 MB) serve a studiare proporzioni, navigazione D-pad e organizzazione delle schermate Android TV. Non è più presente nell'albero del repository: è materiale di riferimento conservato in locale dal proprietario, fuori dal repository, ed è escluso da Git tramite la voce `Progetto-APK/` in `.gitignore`.

Non è codice sorgente del prodotto e non deve essere usato direttamente nelle applicazioni FelixVisionPlayer. Resta separato dal codice applicativo e non è una dipendenza di compilazione.

## Recupero dalla storia

Il materiale resta recuperabile dalla storia git al commit `5df2645`:

```bash
git checkout 5df2645 -- Progetto-APK
```

Il comando ricrea la cartella nella radice del repository aggiornando indice e working tree. Se il materiale serve solo in locale, dopo il recupero si può riportarlo allo stato non tracciato con `git restore --staged Progetto-APK`: da quel momento vale la voce di `.gitignore`.
