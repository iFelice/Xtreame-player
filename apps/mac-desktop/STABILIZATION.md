# Piano di stabilizzazione desktop

## Stato

- [x] Prototipi Capacitor archiviati senza cancellazione.
- [x] Prima infrastruttura di test automatici.
- [x] Client HTTP con timeout, annullamento ed errori uniformi.
- [x] Server Xtream locale con cataloghi e scenari di errore, privo di dati privati.
- [x] Versionamento, migrazione e validazione dell'archiviazione locale.
- [ ] Separazione del motore player dalla UI.
  - [x] Watchdog di avvio, limite buffering, retry pulito e ritorno al catalogo.
  - [x] Macchina a stati testata per caricamento, riproduzione, pausa, buffering ed errore.
  - [x] Selezione e distruzione dei motori isolate in un modulo testabile.
- [ ] Separazione dello stato cataloghi da `App.tsx`.
- [ ] Test dei parser e della costruzione URL.
- [ ] Rimozione controllata del codice TV/mobile dalla UI desktop.
- [ ] Workspace definitivo in `apps/mac-desktop`.

## Regola di compatibilità

Ogni passaggio deve superare `npm run check`, che esegue controllo TypeScript, test automatici e build di produzione. La grafica desktop approvata non deve essere modificata durante la stabilizzazione interna.

## Primo intervento: rete

Le richieste Xtream ora hanno un limite di 20 secondi e restituiscono messaggi uniformi per server irraggiungibile, timeout, accesso negato e JSON non valido. Le credenziali contenute nell'URL non vengono incluse nei messaggi d'errore mostrati all'utente.

## Esito stabilizzazione desktop — 11 ottobre 2026

Stato: **superata come specifica funzionale desktop di riferimento**.

Collaudi completati:

- login, cataloghi e aggiornamento con mock e account reale;
- Live, VOD ed episodi con selezione motore HLS/MPEG-TS/video nativo;
- pausa, ripresa, seek tramite trascinamento e clic sulla timeline;
- cambio rapido dei contenuti, cleanup e assenza di audio sovrapposto;
- riproduzione prolungata;
- preferiti, cronologia e persistenza dopo refresh;
- apertura di una serie preferita sulla scelta episodio;
- chiusura del selettore episodi all'avvio del player;
- download diretto verificato con un file MP4 reale e nascosto per playlist HLS;
- modalità `dev:safe`, blocco account esterni e segmenti HLS firmati;
- caricamento differito di cataloghi e player.

La prova reale è stata eseguita senza salvare credenziali, URL o token nel repository. La base React/Mac rimane un riferimento funzionale: non viene classificata come applicazione macOS nativa.
