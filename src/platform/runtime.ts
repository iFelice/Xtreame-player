import { Capacitor } from '@capacitor/core';
import { STATIC_DEPLOY } from '../utils/deployTarget';

/** Runtime helpers for the dedicated LG webOS package. */
function readEnv(key: string): string {
  const metaEnv = (import.meta as unknown as { env?: Record<string, unknown> }).env;
  const fromMeta = metaEnv?.[key];
  if (typeof fromMeta === 'string') return fromMeta.trim();
  if (typeof process !== 'undefined' && typeof process.env?.[key] === 'string') {
    return (process.env[key] as string).trim();
  }
  return '';
}

/** True only for `vite build --mode webos`. */
export function isWebOsBuild(): boolean {
  return readEnv('VITE_TARGET') === 'webos';
}

/** Clients without the local Express proxy. */
export function isDirectMode(): boolean {
  return Capacitor.isNativePlatform() || STATIC_DEPLOY || isWebOsBuild();
}

/** Close a packaged TV app; normal browser tabs are allowed to ignore this. */
export function exitTvApp(): void {
  if (typeof window === 'undefined') return;
  try {
    window.close();
  } catch {
    // Browser policies may reject closing a tab not opened by script.
  }
}
