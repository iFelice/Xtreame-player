import tailwindcss from '@tailwindcss/vite';
import react from '@vitejs/plugin-react';
import path from 'path';
import {defineConfig, type Plugin} from 'vite';

/**
 * Target webOS (LG TV): la stessa web app, costruita per essere aperta da
 * `file://` dentro il pacchetto .ipk. In questo contesto non esistono né il
 * server Express (quindi né proxy né modulepreload da server) né un'origine
 * http(s) a cui attribuire i credenziali CORS: gli script devono essere
 * caricati senza attributo `crossorigin`, esattamente come verificato sul TV
 * con l'app di prova.
 */
const WEBOS_MODE = 'webos';

/** Rimuove `crossorigin` (con o senza valore) dai tag generati da Vite. */
export function stripCrossOriginAttributes(): Plugin {
  return {
    name: 'xtream:webos-strip-crossorigin',
    apply: 'build',
    transformIndexHtml(html) {
      return html.replace(/\s+crossorigin(?:="[^"]*")?/g, '');
    },
  };
}

export default defineConfig(({mode}) => {
  const isWebOs = mode === WEBOS_MODE;

  return {
    // Su webOS i file vengono letti da file:// dentro il pacchetto: ogni
    // percorso deve essere relativo alla cartella dell'app.
    base: isWebOs ? './' : '/',
    plugins: [react(), tailwindcss(), ...(isWebOs ? [stripCrossOriginAttributes()] : [])],
    resolve: {
      alias: {
        '@': path.resolve(import.meta.dirname, '.'),
      },
    },
    build: {
      ...(isWebOs
        ? {
            outDir: path.resolve(import.meta.dirname, 'apps/webos-tv/build'),
            // Senza modulepreload: il TV carica lo script principale e, da lì,
            // le dipendenze; i <link rel="modulepreload"> sono inutili e sono
            // gli unici posti (con crossorigin) dove Vite emette URL assolute.
            modulePreload: false,
            sourcemap: false,
            copyPublicDir: true,
          }
        : {}),
    },
    server: {
      // Il server di sviluppo ascolta su 0.0.0.0 per essere raggiungibile
      // da TV e telefono nella rete di casa. Vite di default accetta solo
      // "localhost" e gli indirizzi IP nell'header Host: un dispositivo che
      // raggiunge il PC tramite nome host (es. http://nome-pc.local:3000)
      // riceverebbe un 403. allowedHosts: true li ammette tutti; la
      // protezione effettiva resta l'elenco dei provider consentiti del
      // proxy (server/allowedHosts.ts), non questo controllo.
      allowedHosts: true as const,
    },
  };
});
