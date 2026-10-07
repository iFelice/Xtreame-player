# Collaudo watchdog del player

Questa prova usa esclusivamente il server demo locale. Non inserire account reali.

## Avvio

Aprire due finestre di Terminale nella cartella del repository.

Terminale 1:

```bash
npm install
npm run mock:xtream:small
```

Terminale 2:

```bash
npm run dev
```

Aprire l'indirizzo mostrato dall'app e accedere con:

```text
Server: http://localhost:3333
Username: demo
Password: demo
```

## Prove

1. Aprire `Big Buck Bunny — Demo`: deve iniziare normalmente.
2. Aprire `Avvio lento — Demo`: deve partire dopo circa 8 secondi senza errore.
3. Aprire `Contenuto offline — Demo`: il caricamento deve terminare con un messaggio; non deve restare infinito.
4. Premere `Riprova`: deve iniziare un unico nuovo tentativo.
5. Premere `Torna al catalogo`: il player deve chiudersi e il catalogo deve rimanere utilizzabile.
6. Aprire il Live non disponibile e verificare che il player mostri un errore anziché riprovare indefinitamente.

Per arrestare i due server premere `Control + C` in ciascun Terminale.

## Dati da comunicare

Per ogni prova indicare soltanto: `superata`, `errore` oppure `caricamento infinito`. Non servono URL, credenziali reali o catture di rete.
