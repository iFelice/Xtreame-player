# Piano di stabilizzazione desktop

## Stato

- [x] Prototipi Capacitor archiviati senza cancellazione.
- [x] Prima infrastruttura di test automatici.
- [x] Client HTTP con timeout, annullamento ed errori uniformi.
- [x] Server Xtream locale con cataloghi e scenari di errore, privo di dati privati.
- [x] Versionamento, migrazione e validazione dell'archiviazione locale.
- [ ] Separazione del motore player dalla UI.
- [ ] Separazione dello stato cataloghi da `App.tsx`.
- [ ] Test dei parser e della costruzione URL.
- [ ] Rimozione controllata del codice TV/mobile dalla UI desktop.
- [ ] Workspace definitivo in `apps/mac-desktop`.

## Regola di compatibilità

Ogni passaggio deve superare `npm run check`, che esegue controllo TypeScript, test automatici e build di produzione. La grafica desktop approvata non deve essere modificata durante la stabilizzazione interna.

## Primo intervento: rete

Le richieste Xtream ora hanno un limite di 20 secondi e restituiscono messaggi uniformi per server irraggiungibile, timeout, accesso negato e JSON non valido. Le credenziali contenute nell'URL non vengono incluse nei messaggi d'errore mostrati all'utente.
