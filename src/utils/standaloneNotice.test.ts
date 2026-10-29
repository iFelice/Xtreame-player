import { afterEach, describe, expect, it, vi } from 'vitest';
import {
  rememberStandaloneNoticeDismissed,
  shouldShowStandaloneNotice,
  STANDALONE_NOTICE_STORAGE_KEY,
  wasStandaloneNoticeDismissed,
} from './standaloneNotice';

afterEach(() => vi.unstubAllGlobals());

const environment = (overrides: Partial<Parameters<typeof shouldShowStandaloneNotice>[0]> = {}) => ({
  staticDeploy: true,
  appleMobile: true,
  standalone: true,
  dismissed: false,
  ...overrides,
});

describe('standalone notice decision', () => {
  it('shows the notice only in the static standalone Apple web app', () => {
    expect(shouldShowStandaloneNotice(environment())).toBe(true);
    expect(shouldShowStandaloneNotice(environment({ standalone: false }))).toBe(false);
    expect(shouldShowStandaloneNotice(environment({ appleMobile: false }))).toBe(false);
    expect(shouldShowStandaloneNotice(environment({ staticDeploy: false }))).toBe(false);
    expect(shouldShowStandaloneNotice(environment({ dismissed: true }))).toBe(false);
  });

  it('remembers the dismissal and survives a broken storage', () => {
    const store = new Map<string, string>();
    vi.stubGlobal('localStorage', {
      getItem: (key: string) => store.get(key) ?? null,
      setItem: (key: string, value: string) => void store.set(key, value),
    });
    expect(wasStandaloneNoticeDismissed()).toBe(false);
    rememberStandaloneNoticeDismissed();
    expect(store.get(STANDALONE_NOTICE_STORAGE_KEY)).toBe('1');
    expect(wasStandaloneNoticeDismissed()).toBe(true);

    vi.stubGlobal('localStorage', {
      getItem: () => {
        throw new Error('storage blocked');
      },
      setItem: () => {
        throw new Error('storage blocked');
      },
    });
    expect(wasStandaloneNoticeDismissed()).toBe(false);
    expect(() => rememberStandaloneNoticeDismissed()).not.toThrow();
  });
});
