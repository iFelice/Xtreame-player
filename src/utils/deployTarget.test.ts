import { afterEach, describe, expect, it, vi } from 'vitest';

afterEach(() => vi.unstubAllEnvs());

describe('deployment target', () => {
  it('is true only for the static Vite mode at module initialization', async () => {
    for (const [mode, expected] of [['static', true], ['production', false], ['development', false], ['test', false]] as const) {
      vi.stubEnv('MODE', mode);
      vi.resetModules();
      const { isStaticDeploy } = await import('./deployTarget');
      expect(isStaticDeploy()).toBe(expected);
    }
  });
});
