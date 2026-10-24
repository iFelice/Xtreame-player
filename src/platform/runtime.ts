import { Capacitor } from '@capacitor/core';

/**
 * Runtime platform helpers.
 *
 * La web app viene distribuita su tre famiglie di client:
 * - web (browser desktop/mobile servito da Express): le chiamate passano dal
 *   proxy Express (`/api/proxy/*`), che risolve CORS e mixed content;
 * - app nativa Capacitor (iOS/Android/Android TV): non esiste alcun server
 *   locale, ogni richiesta va fatta direttamente all'indirizzo del provider;
 * - app LG webOS (`apps/webos-tv`): la stessa web app costruita con
 *   `--mode webos`, aperta da `file://` dentro il pacchetto `.ipk`. Anche qui
 *   non c'è alcun Express: la modalità è diretta come su Capacitor.
 *
 * `isDirectMode()` è quindi la domanda corretta da porsi ovunque si scelga
 * tra "richiesta diretta" e "proxy Express".
 */

function readEnv(key: string): string {
  const metaEnv = (import.meta as unknown as { env?: Record<string, unknown> }).env;
  const fromMeta = metaEnv?.[key];
  if (typeof fromMeta === 'string') return fromMeta.trim();
  // Vitest e gli script Node non passano da Vite: lo stesso valore può
  // arrivare da process.env.
  if (typeof process !== 'undefined' && typeof process.env?.[key] === 'string') {
    return (process.env[key] as string).trim();
  }
  return '';
}

/** True only for the dedicated webOS build (`vite build --mode webos`). */
export function isWebOsBuild(): boolean {
  return readEnv('VITE_TARGET') === 'webos';
}

/** True when the client must talk to the IPTV server without the Express proxy. */
export function isDirectMode(): boolean {
  return Capacitor.isNativePlatform() || isWebOsBuild();
}

/**
 * Closes the webOS app. On LG TV `window.close()` is the documented way for a
 * self-signed Developer Mode app to leave the foreground; if the runtime
 * refuses it (e.g. the page is opened in a normal browser tab) nothing throws.
 */
export function exitTvApp(): void {
  if (typeof window === 'undefined') return;
  try {
    window.close();
  } catch {
    // Some browsers only allow script-initiated close for opened windows.
  }
}
