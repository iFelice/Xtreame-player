export const DEFAULT_REQUEST_TIMEOUT_MS = 20_000;

export class HttpError extends Error {
  readonly status: number;
  readonly retryable: boolean;

  constructor(message: string, status: number, retryable = false) {
    super(message);
    this.name = 'HttpError';
    this.status = status;
    this.retryable = retryable;
  }
}

export interface JsonRequestOptions {
  signal?: AbortSignal;
  timeoutMs?: number;
}

function publicHttpMessage(status: number, responseBody: string): string {
  try {
    const parsed = JSON.parse(responseBody) as { error?: unknown };
    if (typeof parsed.error === 'string' && parsed.error.trim()) return parsed.error;
  } catch {
    // Non-JSON server responses are mapped to a safe message below.
  }

  if (status === 530) {
    return 'HTTP 530: il server IPTV non è raggiungibile. Verifica indirizzo, protocollo e porta.';
  }
  if (status === 502 || status === 503 || status === 504) {
    return `HTTP ${status}: il server IPTV è temporaneamente offline o non raggiungibile.`;
  }
  if (status === 401 || status === 403) {
    return `HTTP ${status}: accesso rifiutato dal server IPTV.`;
  }
  return `HTTP ${status}: richiesta non riuscita.`;
}

export async function fetchJson<T>(url: string, options: JsonRequestOptions = {}): Promise<T> {
  const timeoutController = new AbortController();
  const timeoutMs = options.timeoutMs ?? DEFAULT_REQUEST_TIMEOUT_MS;
  const timeout = setTimeout(() => timeoutController.abort('timeout'), timeoutMs);
  const abortFromCaller = () => timeoutController.abort(options.signal?.reason);

  if (options.signal?.aborted) abortFromCaller();
  options.signal?.addEventListener('abort', abortFromCaller, { once: true });

  try {
    const response = await fetch(url, {
      method: 'GET',
      headers: { Accept: 'application/json' },
      signal: timeoutController.signal,
    });

    if (!response.ok) {
      const responseBody = await response.text();
      if (response.status === 401 && responseBody.includes('ACCESS_REQUIRED') && typeof window !== 'undefined') {
        window.dispatchEvent(new Event('xtream-access-required'));
      }
      throw new HttpError(
        publicHttpMessage(response.status, responseBody),
        response.status,
        response.status === 408 || response.status === 429 || response.status >= 500
      );
    }

    try {
      return (await response.json()) as T;
    } catch {
      throw new HttpError('Il server IPTV ha restituito dati non validi.', response.status);
    }
  } catch (error) {
    if (error instanceof HttpError) throw error;
    if (timeoutController.signal.aborted) {
      if (options.signal?.aborted) throw new DOMException('Richiesta annullata', 'AbortError');
      throw new HttpError('Il server IPTV non ha risposto entro il tempo previsto.', 0, true);
    }
    throw new HttpError('Impossibile collegarsi al server IPTV. Controlla la connessione e riprova.', 0, true);
  } finally {
    clearTimeout(timeout);
    options.signal?.removeEventListener('abort', abortFromCaller);
  }
}
