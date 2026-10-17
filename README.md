# 🎬 Xtream StreamPlayer (Self-Hosted & Privato)

Un lettore multimediale e navigatore di cataloghi basato su **Xtream Codes** indipendente, veloce e privato.

---

## 🛡️ Garanzia di Privacy & Sicurezza dei tuoi dati

- **Zero Chiamate AI**: Questa applicazione **non** invia né username, né password, né link a modelli di intelligenza artificiale o server esterni.
- **Nessun Database Esterno**: I preferiti e la cronologia vengono salvati **esclusivamente nel `localStorage` del tuo browser**.
- **Proxy Locale Indipendente**: Il backend Node.js/Express serve unicamente come proxy per inoltrare i flussi video e le chiamate API verso il tuo server Xtream, risolvendo i problemi di CORS e Mixed-Content (HTTP su HTTPS) dei browser moderni.

---

## 🚀 Come fare il Deploy Gratuito su Render (Guida Passo-Passo)

Puoi pubblicare questa applicazione sul tuo account personale di **[Render.com](https://render.com)** gratuitamente in meno di 3 minuti:

### Metodo 1: Tramite GitHub (Consigliato)
1. **Crea un nuovo repository su GitHub**:
   - Vai su [GitHub](https://github.com/new) e crea un repository privato (es. `mio-xtream-player`).
2. **Carica il codice nel tuo repository**:
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   git branch -M main
   git remote add origin https://github.com/TUO_UTENTE/mio-xtream-player.git
   git push -u origin main
   ```
3. **Collega Render**:
   - Accedi a [Render.com](https://dashboard.render.com).
   - Clicca su **New +** > **Web Service**.
   - Seleziona **Build and deploy from a Git repository** e scegli il tuo repository GitHub.
   - Render rileverà automaticamente il file `render.yaml` oppure imposta:
     - **Environment**: `Node`
     - **Build Command**: `npm install --legacy-peer-deps && npm run build`
     - **Start Command**: `npm start`
     - **Instance Type**: `Free`
   - Clicca su **Deploy Web Service**.
4. In circa 2 minuti avrai il tuo link personale (es. `https://mio-xtream-player.onrender.com`), protetto dal token `APP_ACCESS_TOKEN` e dal relativo cookie di accesso firmato.

---

## 💻 Come eseguirlo in Locale sul tuo PC (Massima Riservatezza)

Se non vuoi caricare il codice su nessun servizio cloud e preferisci usarlo solo sul tuo computer:

1. **Requisiti**: Avere installato Node.js (v18 o superiore).
2. **Installazione**:
   ```bash
   npm install
   ```
3. **Avvio**:
   ```bash
   npm run dev
   ```
4. Apri il browser all'indirizzo:
   ```
   http://localhost:3000
   ```
Tutto funzionerà localmente sulla tua macchina, senza che nessun dato esca dal tuo computer se non per comunicare con il server Xtream.

---

## 🐳 Esecuzione con Docker

Se disponi di Docker o un piccolo server/VPS:

```bash
# Costruzione immagine
docker build -t xtream-streamplayer .

# Avvio container sulla porta 3000
docker run -d -p 3000:3000 --name xtream-player xtream-streamplayer
```
Visita `http://localhost:3000`.

---

## ✨ Funzionalità Incluse
- **Parsing Intelligente**: incolla link diretti come `http://host/movie/User/Pass/id.mp4`, `series` o `live`.
- **Riproduzione Immediata**: player video con seek, volume, velocità, proporzioni e Picture-in-Picture.
- **Catalogo Completo**: Film VOD, Canali Live con loghi, Serie TV divise per stagioni ed episodi.
- **Bypass CORS/HTTP**: streaming fluido senza blocchi del browser.

## Sicurezza dell'istanza

L'istanza accetta soltanto richieste API same-origin. In produzione `APP_ACCESS_TOKEN` è obbligatorio (minimo 24 caratteri); Render lo genera automaticamente e lo mostra in **Dashboard → Service → Environment**. Inseriscilo una volta nella schermata di sblocco: viene creato un cookie HttpOnly firmato, valido 30 giorni.

In locale, se vuoi provare la protezione:

```bash
APP_ACCESS_TOKEN='usa-almeno-24-caratteri-casuali' npm run dev
```

Con Docker passa la variabile senza inserirla nell'immagine:

```bash
docker run -e APP_ACCESS_TOKEN='usa-almeno-24-caratteri-casuali' -p 3000:3000 xtream-player
```

Le destinazioni private sono bloccate in produzione. `ALLOW_PRIVATE_TARGETS=1` disattiva esplicitamente tale protezione ed è destinato soltanto a reti amministrate e fidate.
