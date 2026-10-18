# Xtream Mock Server

Server locale di collaudo che simula le principali API Xtream Codes senza usare account, URL o contenuti privati.

## Requisiti

Usa lo stesso Node.js già necessario per l'app desktop. Non richiede programmi aggiuntivi, Docker, database o servizi cloud.

Dalla radice del repository:

```bash
npm install
npm run mock:xtream
```

Il server mostra:

```text
http://localhost:3333
```

Credenziali esclusivamente dimostrative:

```text
Username: demo
Password: demo
```

Per arrestarlo:

```text
Control + C
```

## Collegamento dall'app desktop

Usare nel login:

```text
Server: http://localhost:3333
Username: demo
Password: demo
```

L'app desktop deve essere avviata separatamente con il normale comando di sviluppo.

## Collegamento da telefono o TV

Il dispositivo e il Mac devono essere sulla stessa rete. Si userà l'indirizzo LAN del Mac al posto di `localhost`, per esempio:

```text
http://192.168.1.50:3333
```

Non aprire porte sulla Iliadbox. Il server è destinato esclusivamente allo sviluppo nella rete locale.

## Profili del catalogo

Il profilo predefinito è `visual`:

```bash
npm run mock:xtream:small   # 12 film, 16 canali, 5 serie
npm run mock:xtream:visual  # 144 film, 220 canali, 42 serie
npm run mock:xtream:public  # visual + fino a 200 stream HLS dalla playlist IPTV-org
npm run mock:xtream:stress  # 5.000 film, 8.000 canali, 1.000 serie
```

Il catalogo visuale genera localmente copertine di colori differenti, titoli corti e lunghi, caratteri internazionali, immagini mancanti, molte categorie, stagioni ed episodi. Il profilo stress serve a verificare virtualizzazione, ricerca e fluidità con migliaia di elementi.

Il profilo `public` scarica soltanto durante il test la playlist esterna indicata dall'utente e importa al massimo 200 stream HTTP Live Streaming nella categoria `IPTV-org — test pubblico`. Non salva la playlist nel repository. Disponibilità, autorizzazioni geografiche e continuità di questi stream dipendono dalle rispettive fonti; questo profilo è quindi opzionale e non sostituisce i test locali deterministici.

## Scenari player simulati

- Live HLS funzionante.
- Live intenzionalmente non disponibile.
- Film dimostrativo funzionante.
- Film con avvio ritardato di 8 secondi.
- Film che restituisce intenzionalmente HTTP 503.
- Serie con due stagioni.
- Episodio funzionante, lento e non disponibile.
- Locandine SVG generate localmente.

I flussi funzionanti reindirizzano a media dimostrativi pubblici usati per il collaudo dei player. Nessun URL IPTV privato è incluso nel progetto.

## Controllo rapido

Con il server avviato:

```bash
curl http://localhost:3333/health
```

Risposta attesa:

```json
{"status":"ok","service":"xtream-player-mock","version":1}
```

## Variabili opzionali

```bash
XTREAM_MOCK_PORT=3334 npm run mock:xtream
XTREAM_MOCK_HOST=127.0.0.1 npm run mock:xtream
```

Il valore predefinito di `XTREAM_MOCK_HOST` è `0.0.0.0` per consentire test controllati con dispositivi nella stessa rete locale.

## Sicurezza

- Non inserire credenziali reali in questo server.
- Non sostituire `demo/demo` con un account reale.
- Non pubblicare la porta su Internet.
- Non configurare port forwarding o UPnP.
- Non caricare catture di rete con credenziali reali su GitHub.
