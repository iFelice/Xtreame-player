export function normalizeDownloadFixture(rawValue?: string): string | null {
  if (!rawValue?.trim()) return null;
  try {
    const url = new URL(rawValue.trim());
    if (url.protocol !== 'https:' && url.protocol !== 'http:') return null;

    if (url.hostname === 'drive.google.com') {
      const match = url.pathname.match(/^\/file\/d\/([^/]+)/);
      if (!match) return null;
      const direct = new URL('https://drive.usercontent.google.com/download');
      direct.searchParams.set('id', match[1]);
      direct.searchParams.set('export', 'download');
      direct.searchParams.set('confirm', 't');
      return direct.toString();
    }
    return url.toString();
  } catch {
    return null;
  }
}
