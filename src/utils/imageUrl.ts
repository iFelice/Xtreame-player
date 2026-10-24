import { isDirectMode } from '../platform/runtime';

/**
 * Utility to make image URLs secure (HTTPS) and avoid Mixed Content blocks in Chrome/Safari,
 * as well as bypassing hotlink/referer restrictions from IPTV servers.
 * Uses the free Cloudflare-backed image cache (wsrv.nl) for insecure HTTP images.
 */
export function getSecureImageUrl(rawUrl?: string | null): string {
  if (!rawUrl || typeof rawUrl !== 'string') return '';
  const trimmed = rawUrl.trim();
  if (!trimmed) return '';

  // If it's already a data: or blob: URL, return as is
  if (trimmed.startsWith('data:') || trimmed.startsWith('blob:')) {
    return trimmed;
  }

  // Su app nativa (iOS / Android) e su webOS carichiamo direttamente, senza
  // proxy wsrv.nl: il TV non ha alcuna pagina HTTPS che blocchi un'immagine
  // HTTP (mixed content), quindi il bypass non serve.
  if (isDirectMode()) {
    return trimmed;
  }

  // If page is on HTTPS and image is on HTTP, route through free Cloudflare cache proxy
  // This avoids Mixed Content browser blocks without consuming ANY server bandwidth.
  const isHttpsPage = typeof window !== 'undefined' && window.location.protocol === 'https:';

  if (isHttpsPage && trimmed.startsWith('http://')) {
    // wsrv.nl is a free, fast, global CDN image proxy
    return `https://wsrv.nl/?url=${encodeURIComponent(trimmed)}&default=1`;
  }

  return trimmed;
}
