import React from 'react';
import { act, create } from 'react-test-renderer';
import { afterEach, beforeEach, describe, expect, it, vi } from 'vitest';
import type { PlayableMediaItem } from '../types/xtream';

vi.mock('mpegts.js', () => ({ default: { isSupported: () => false, createPlayer: () => ({}) } }));
vi.mock('hls.js', () => ({
  default: class {
    static isSupported() { return false; }
  },
}));

const live: PlayableMediaItem = {
  id: 'live_timeout',
  title: 'Canale lento',
  type: 'live',
  streamUrl: 'http://server.esempio:8080/live/demo/demo/7.m3u8',
  containerExtension: 'm3u8',
};

function installBrowserHarness() {
  vi.stubGlobal('navigator', { userAgent: 'Mozilla/5.0 (X11; Linux x86_64)', platform: 'Linux x86_64', maxTouchPoints: 0 });
  vi.stubGlobal('localStorage', { getItem: () => null, setItem: () => {} });
  vi.stubGlobal('sessionStorage', { getItem: () => null, setItem: () => {} });
  vi.stubGlobal('window', {
    innerWidth: 1440,
    location: { protocol: 'http:' },
    matchMedia: () => ({ matches: false, addEventListener: () => {}, removeEventListener: () => {} }),
    addEventListener: () => {}, removeEventListener: () => {},
    setInterval, clearInterval, setTimeout, clearTimeout,
  });
  vi.stubGlobal('document', { addEventListener: () => {}, removeEventListener: () => {} });
}

beforeEach(() => {
  (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT = true;
  vi.useFakeTimers();
  vi.stubEnv('MODE', 'production');
  vi.stubEnv('VITE_TARGET', '');
  vi.resetModules();
  installBrowserHarness();
});

afterEach(() => {
  vi.useRealTimers();
  vi.unstubAllEnvs();
  vi.unstubAllGlobals();
  vi.restoreAllMocks();
  delete (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT;
});

describe('MediaPlayer browser startup timeout', () => {
  it('shows the timeout error without switching a live HLS stream to MPEG-TS', async () => {
    const { MediaPlayer } = await import('./MediaPlayer');
    const video = {
      src: '', currentTime: 0, readyState: 0, videoWidth: 0, paused: true,
      canPlayType: vi.fn(() => ''), play: vi.fn(async () => {}), pause: vi.fn(), load: vi.fn(),
      removeAttribute: vi.fn(), addEventListener: vi.fn(), removeEventListener: vi.fn(),
    };
    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(<MediaPlayer media={live} onClose={() => {}} />, {
        createNodeMock: (element) => element.type === 'video' ? video : null,
      });
    });
    expect(decodeURIComponent(video.src)).toContain('.m3u8');

    await act(async () => { await vi.advanceTimersByTimeAsync(20_000); });

    const timeoutMessage = 'Il contenuto non ha risposto entro 20 secondi. Riprova oppure torna al catalogo.';
    expect(renderer!.root.findAll((node) => node.children.includes(timeoutMessage))).not.toHaveLength(0);
    expect(renderer!.root.findAll((node) => String(node.children.join('')).includes('Passa a formato MPEG-TS (.ts)'))).not.toHaveLength(0);
    expect(decodeURIComponent(video.src)).toContain('.m3u8');
    expect(decodeURIComponent(video.src)).not.toContain('.ts');
    await act(async () => renderer!.unmount());
  });
});
