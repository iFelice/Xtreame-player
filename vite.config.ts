import tailwindcss from '@tailwindcss/vite';
import react from '@vitejs/plugin-react';
import path from 'path';
import { defineConfig, type Plugin } from 'vite';

const WEBOS_MODE = 'webos';

/** `file://` webOS must not receive Vite's crossorigin attributes. */
export function stripCrossOriginAttributes(): Plugin {
  return {
    name: 'xtream:webos-strip-crossorigin',
    apply: 'build',
    transformIndexHtml(html) {
      return html.replace(/\s+crossorigin(?:="[^"]*")?/g, '');
    },
  };
}

export default defineConfig(({ mode }) => {
  const isWebOs = mode === WEBOS_MODE;
  return {
    base: isWebOs ? './' : '/',
    plugins: [react(), tailwindcss(), ...(isWebOs ? [stripCrossOriginAttributes()] : [])],
    resolve: {
      alias: { '@': path.resolve(import.meta.dirname, '.') },
    },
    build: isWebOs
      ? {
          outDir: path.resolve(import.meta.dirname, 'apps/webos-tv/build'),
          modulePreload: false,
          sourcemap: false,
          copyPublicDir: true,
        }
      : undefined,
    server: {
      // The local development server is intentionally reachable on the LAN.
      allowedHosts: true as const,
    },
  };
});
