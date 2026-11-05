# FelixVisionPlayer · Pairing Relay (Cloudflare Workers + Durable Objects)

Servizio pubblico di abbinamento TV ↔ smartphone per **FelixVisionPlayer** basato su Cloudflare Workers (piano gratuito) e Durable Objects con backend SQLite, completo di rubrica per codici brevi dei server Xtream.

---

## Trasferimento configurazione VPN

La TV crea una sessione e mostra un QR con `https://<relay>/vpn?code=<6 cifre>#k=<chiave base64url>`. La chiave AES-256 è casuale e resta nel frammento del QR, che il browser non invia al relay. Sul telefono la pagina cifra il file `.conf` con AES-GCM e AAD `felixvp-vpn-v1:<codice>`; il relay conserva soltanto `iv` e testo cifrato. La TV legge il risultato una sola volta usando il proprio `pollToken`.

- `POST /api/vpn/create` crea una sessione e restituisce codice, `pollToken` e scadenza.
- `POST /api/vpn/submit` riceve `{ code, iv, ciphertext }` in base64url.
- `GET /api/vpn/status/{code}` con `Authorization: Bearer <pollToken>` restituisce `waiting` o `ready`; alla consegna cancella la sessione.

Le sessioni scadono dopo 10 minuti. Il relay non riceve né memorizza la chiave AES o il testo in chiaro.

---

## Trasferimento del file di backup

La TV crea una sessione di esportazione o di importazione e mostra un QR con `https://<relay>/backup?mode=export|import&code=<6 cifre>#k=<chiave base64url>`. La chiave AES-256 di trasporto è casuale e resta nel frammento del QR, che il browser non invia al relay; il file resta cifrato anche con la password del backup, che non passa mai dal telefono né dal relay. La cifratura di trasporto è AES-GCM con AAD `felixvp-backup-v1:<codice>`, sullo stesso schema della VPN.

- `POST /api/backup/create` con `{ direction: "export" | "import" }` crea una sessione e restituisce codice, `pollToken` e scadenza (10 minuti).
- `POST /api/backup/upload` con `Authorization: Bearer <pollToken>` e `{ code, iv, ciphertext }` deposita il file cifrato (solo la TV che ha creato una sessione di esportazione, una sola volta).
- `GET /api/backup/download/{code}` consegna il file cifrato alla pagina del telefono (in attesa con `waiting`); alla consegna cancella la sessione: un solo ritiro. È l'unica rotta leggibile senza token (la pagina conosce solo il codice) e i codici inesistenti contano come tentativi falliti, con lo stesso blocco anti forza-bruta degli invii.
- `POST /api/backup/submit` riceve `{ code, iv, ciphertext }` in base64url dalla pagina del telefono (sessioni di importazione, con gli stessi limiti anti-abuso dell'invio VPN).
- `GET /api/backup/status/{code}` con `Authorization: Bearer <pollToken>` restituisce `waiting` o `ready`; alla consegna cancella la sessione: un solo ritiro.

Limiti: file in chiaro fino a 256 KiB (`BACKUP_MAX_PLAINTEXT_BYTES`), corpo delle richieste fino a 768 KiB, sessioni con scadenza di 10 minuti e un solo ritiro, massimo 100 sessioni totali e 5 per IP, blocco IP dopo 10 tentativi falliti. Il relay non riceve né memorizza la chiave di trasporto, la password o il contenuto del backup.

---

## 1. Come modificare la rubrica (`rubrica.json`)

La rubrica dei codici brevi si trova nel file [`rubrica.json`](./rubrica.json) ed è inclusa nel pacchetto al momento della pubblicazione (build).

Formato del file:

```json
[
  {
    "nome": "Server principale",
    "codici": ["001"],
    "server": "http://server.esempio:8080"
  },
  {
    "nome": "Secondo server",
    "codici": ["002"],
    "server": "http://altro-server.esempio:8080"
  }
]
```

### Regole
- Ogni voce contiene `nome` (descrittivo, non esposto dalle API), `codici` (elenco di codici brevi associati al server) e `server` (URL completo `http://` o `https://`).
- I codici successivi seguono la numerazione progressiva `002`, `003`, ecc.
- I codici sono confrontati dopo normalizzazione (`trim` + minuscole).
- Non sono ammessi codici duplicati tra voci diverse o nella stessa voce (i test falliscono automaticamente in presenza di duplicati).
- Per aggiornare l'indirizzo reale del server senza toccare il codice sorgente, basta modificare `services/pairing-relay/rubrica.json` direttamente dall'interfaccia web di GitHub e salvare il commit.

---

## 2. Collegamento a Cloudflare Workers Builds (GitHub)

Essendo il repository privato, puoi collegarlo direttamente a **Cloudflare Workers Builds** dalla dashboard di Cloudflare:

1. Apri la dashboard Cloudflare → **Workers & Pages** → **Create** → **Import a repository** (oppure collega il repository GitHub a un Worker esistente in **Settings → Builds**).
2. Seleziona il repository privato `Xtreame-player`.
3. Configura le impostazioni di build:
   - **Root directory**: `services/pairing-relay`
   - **Build command**: `npm test` (oppure vuoto)
   - **Deploy command**: `npx wrangler deploy`
   - **Watch paths**:
     - `services/pairing-relay/**`
     - `shared/**`

Ogni modifica a `services/pairing-relay/rubrica.json`, al servizio o al modulo condiviso `shared/` avvierà automaticamente una nuova pubblicazione su Cloudflare.

---

## 3. Configurazione di `ALLOWED_ORIGINS`

La variabile `ALLOWED_ORIGINS` elenca le origini web autorizzate a effettuare richieste CORS verso il Worker (separate da virgola). Le richieste prive di header `Origin` (es. app native Android TV / iOS / Android) sono sempre consentite.

Puoi impostarla:
- **Dalla dashboard Cloudflare**: vai nel Worker → **Settings** → **Variables and Secrets** → aggiungi o modifica la variabile `ALLOWED_ORIGINS`, ad esempio:
  ```text
  https://tuo-player.pages.dev,http://localhost:3000
  ```
- **In `wrangler.jsonc`**: nella sezione `"vars"` prima del deploy:
  ```json
  "vars": {
    "ALLOWED_ORIGINS": "https://tuo-player.pages.dev,http://localhost:3000"
  }
  ```

---

## 4. Sviluppo locale, test e pubblicazione manuale

Dalla cartella `services/pairing-relay`:

```bash
# Installa le dipendenze del sottopacchetto
npm install

# Esegui il controllo dei tipi e i test
npm test
npm run check

# Avvia il Worker in locale con Wrangler
npx wrangler dev

# Pubblicazione manuale su Cloudflare Workers
npx wrangler deploy
```

Una volta pubblicato il Worker, imposta nell'ambiente di build dell'applicazione web la variabile:

```bash
VITE_PAIRING_RELAY_URL=https://<nome-worker>.<tuo-sottodominio>.workers.dev
```
