export const STORAGE_SCHEMA_VERSION = 1;

export interface StorageAdapter {
  getItem(key: string): string | null;
  setItem(key: string, value: string): void;
  removeItem(key: string): void;
}

interface StorageEnvelope<T> {
  version: number;
  data: T;
  updatedAt: number;
}

function isEnvelope(value: unknown): value is StorageEnvelope<unknown> {
  if (!value || typeof value !== 'object') return false;
  const candidate = value as Partial<StorageEnvelope<unknown>>;
  return typeof candidate.version === 'number' && 'data' in candidate;
}

export function writeVersioned<T>(adapter: StorageAdapter, key: string, data: T): void {
  const envelope: StorageEnvelope<T> = {
    version: STORAGE_SCHEMA_VERSION,
    data,
    updatedAt: Date.now(),
  };
  adapter.setItem(key, JSON.stringify(envelope));
}

export function readVersioned<T>(
  adapter: StorageAdapter,
  key: string,
  fallback: T,
  validate: (value: unknown) => value is T
): T {
  const raw = adapter.getItem(key);
  if (!raw) return fallback;

  try {
    const parsed: unknown = JSON.parse(raw);
    if (isEnvelope(parsed)) {
      if (parsed.version !== STORAGE_SCHEMA_VERSION || !validate(parsed.data)) return fallback;
      return parsed.data;
    }

    // Legacy data was stored directly. Validate it before migrating in place.
    if (!validate(parsed)) return fallback;
    writeVersioned(adapter, key, parsed);
    return parsed;
  } catch {
    return fallback;
  }
}

export const isUnknownArray = (value: unknown): value is unknown[] => Array.isArray(value);
export const isString = (value: unknown): value is string => typeof value === 'string';
export const isNullableObject = (value: unknown): value is Record<string, unknown> | null =>
  value === null || (typeof value === 'object' && !Array.isArray(value));
