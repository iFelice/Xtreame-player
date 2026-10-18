import tailwindcss from '@tailwindcss/vite';
import react from '@vitejs/plugin-react';
import path from 'path';
import {defineConfig} from 'vite';

export default defineConfig(() => {
  return {
    plugins: [react(), tailwindcss()],
    resolve: {
      alias: {
        '@': path.resolve(import.meta.dirname, '.'),
      },
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
