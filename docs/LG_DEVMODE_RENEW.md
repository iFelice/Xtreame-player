# Rinnovo sessione Developer Mode LG webOS (GitHub Actions)

## Cosa fa

Il workflow `.github/workflows/lg-devmode-renew.yml` rinnova automaticamente la sessione Developer Mode di un TV LG webOS. La sessione dura circa 1000 ore e, chiamando l'endpoint ufficiale di LG, viene resettata e ripartita da zero senza intervento manuale sul televisore.

- Esecuzione settimanale: domenica alle 03:17 UTC (`cron: 17 3 * * 0`), più avvio manuale tramite `workflow_dispatch`.
- L'endpoint chiamato è `GET https://developer.lge.com/secure/ResetDevModeSession.dev?sessionToken=<token>`; in caso di successo risponde JSON con `"result": "success"`.
- Il token non cambia dopo il rinnovo.

## Come leggere il token dal TV

Prerequisite: l'app Developer Mode sul TV deve avere il **Key Server** attivo.

1. Sulla stessa rete del TV, scarica la chiave dal Key Server (usando come indirizzo di esempio `192.168.1.x`, mai un indirizzo reale in questo documento):

   ```bash
   ssh-keygen -f webos_rsa -t rsa -b 2048 -N ""
   curl -sS http://192.168.1.x:9991/webos_rsa -o webos_rsa.pub
   ```

2. Connettiti al TV via SSH sull'porta 9922 con l'utente `prisoner`, usando la chiave appena scaricata:

   ```bash
   ssh -i webos_rsa -p 9922 prisoner@192.168.1.x
   ```

3. Leggi il contenuto del file delle preferenze di Developer Mode:

   ```bash
   cat /var/luna/preferences/devmode_enabled
   ```

   Il valore stampato è il **session token**: è quello da salvare come segreto.

## Come salvare il token nei segreti del repository

Il token è una credenziale e vive **solo** nel segreto del repository, mai in file, log o commit.

1. In GitHub, vai su **Settings → Secrets and variables → Actions → New repository secret**.
2. Nome del segreto: `LG_DEVMODE_TOKEN`.
3. Valore: il token letto dal TV (without spazi o newline finali).

Se il segreto è vuoto o assente, il workflow fallisce con `Segreto LG_DEVMODE_TOKEN mancante`.

## Come avviare l'automazione a mano

Nella barra laterale del repository vai su **Actions → "LG webOS – rinnovo Developer Mode" → Run workflow**, scegli l'evento manuale e avvia l'esecuzione. L'output mostra `Rinnovo riuscito` e l'`errorCode`; in caso di esito negativo mostra `result`, `errorCode` e `errorMsg`, e il workflow termina con codice 1 (GitHub invia quindi l'email di esecuzione fallita).

## Comportamento del timer sul TV

Il countdown mostrato dal TV si riallinea **dopo un riavvio completo** (scollegare la corrente, attendere, ricollegare). Prima del riavvio, le ore mostre dall'interfaccia possono non aggiornarsi immediatamente anche se il rinnovo è avvenuto con successo.

## Avvertenze

- Usare l'account sviluppatore su un **altro TV** invalida la sessione corrente: è necessario rileggere il token dal TV e aggiornare il segreto `LG_DEVMODE_TOKEN`.
- Nessun token, indirizzo IP reale, username o password deve essere committato: negli esempi solo `192.168.1.x`.
