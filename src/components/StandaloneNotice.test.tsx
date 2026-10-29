import React from 'react';
import { act, create } from 'react-test-renderer';
import { afterEach, beforeEach, describe, expect, it, vi } from 'vitest';

const store = new Map<string, string>();

function stubDevice(options: { appleMobile: boolean; standalone: boolean }) {
  vi.stubGlobal('navigator', {
    userAgent: options.appleMobile ? 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_0)' : 'Mozilla/5.0 (Macintosh; Intel Mac OS X)',
    platform: options.appleMobile ? 'iPhone' : 'MacIntel',
    maxTouchPoints: options.appleMobile ? 5 : 0,
    standalone: options.standalone,
  });
  vi.stubGlobal('window', {
    innerWidth: 390,
    location: { host: '192.168.1.10:5174' },
    matchMedia: () => ({ matches: false, addEventListener: () => {}, removeEventListener: () => {} }),
    addEventListener: () => {},
    removeEventListener: () => {},
  });
  vi.stubGlobal('localStorage', {
    getItem: (key: string) => store.get(key) ?? null,
    setItem: (key: string, value: string) => void store.set(key, value),
    removeItem: (key: string) => void store.delete(key),
  });
}

async function mountNotice(mode: 'static' | 'production') {
  vi.stubEnv('MODE', mode);
  vi.resetModules();
  const { StandaloneNotice } = await import('./StandaloneNotice');
  let renderer: ReturnType<typeof create>;
  await act(async () => {
    renderer = create(<StandaloneNotice />);
  });
  return renderer!;
}

beforeEach(() => {
  (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT = true;
  store.clear();
});

afterEach(() => {
  vi.unstubAllEnvs();
  vi.unstubAllGlobals();
  vi.restoreAllMocks();
  delete (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT;
});

describe('standalone one-time notice', () => {
  it('names the current host and the Home Screen installation steps', async () => {
    const { standaloneNoticeMessage } = await import('./StandaloneNotice');
    const expected = 'Picture-in-Picture e download non funzionano in questa modalità. Per averli: apri 192.168.1.10:5174 in Safari → Condividi → Aggiungi alla schermata Home e disattiva «Apri come app web».';
    expect(standaloneNoticeMessage('192.168.1.10:5174')).toBe(expected);
    // The host is taken from the page, never hard-coded.
    expect(standaloneNoticeMessage('')).not.toContain('192.168');
    expect(standaloneNoticeMessage('server.esempio:8080')).toContain('apri server.esempio:8080 in Safari');
  });

  it('is shown once in the standalone Apple web app and stays dismissed', async () => {
    stubDevice({ appleMobile: true, standalone: true });
    const { standaloneNoticeMessage } = await import('./StandaloneNotice');
    const renderer = await mountNotice('static');

    const text = JSON.stringify(renderer.toJSON());
    expect(text).toContain(standaloneNoticeMessage('192.168.1.10:5174'));
    expect(text).toContain('in Safari → Condividi → Aggiungi alla schermata Home e disattiva «Apri come app web».');
    const close = renderer.root.findByProps({ 'aria-label': 'Chiudi avviso' });
    await act(async () => {
      close.props.onClick();
    });
    expect(renderer.toJSON()).toBeNull();
    expect(store.size).toBeGreaterThan(0);
    await act(async () => renderer.unmount());

    // A new app start reads the stored dismissal and shows nothing.
    const again = await mountNotice('static');
    expect(again.toJSON()).toBeNull();
    await act(async () => again.unmount());
  });

  it('is never shown in a Safari tab', async () => {
    stubDevice({ appleMobile: true, standalone: false });
    const renderer = await mountNotice('static');
    expect(renderer.toJSON()).toBeNull();
    await act(async () => renderer.unmount());
  });

  it('is never shown on desktop or in the normal build', async () => {
    stubDevice({ appleMobile: false, standalone: true });
    const desktop = await mountNotice('static');
    expect(desktop.toJSON()).toBeNull();
    await act(async () => desktop.unmount());

    stubDevice({ appleMobile: true, standalone: true });
    const normalBuild = await mountNotice('production');
    expect(normalBuild.toJSON()).toBeNull();
    await act(async () => normalBuild.unmount());
  });
});
