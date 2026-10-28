import React from 'react';
import { act, create } from 'react-test-renderer';
import { afterEach, beforeEach, describe, expect, it, vi } from 'vitest';
import type { PlayableMediaItem } from '../types/xtream';

// Browser-only engines are mocked in Node. Apple HLS must use neither engine
// when native HLS is available, even if both report support.
vi.mock('mpegts.js', () => ({ default: { isSupported: () => true, createPlayer: () => { throw new Error('unexpected MPEG-TS'); } } }));
vi.mock('hls.js', () => ({ default: class {
  static isSupported() { return true; }
  constructor() { throw new Error('unexpected HLS.js'); }
} }));

const direct = 'http://server.esempio:8080/movie/demo/demo/123.mkv';
const movie: PlayableMediaItem = {
  id: 'movie_123',
  title: 'Film',
  type: 'movie',
  streamUrl: `/api/proxy/stream?url=${encodeURIComponent(direct)}`,
  containerExtension: 'MKV',
};

beforeEach(() => {
  (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT = true;
  vi.stubEnv('MODE', 'static');
  vi.resetModules();
  vi.stubGlobal('navigator', { userAgent: 'iPhone', platform: 'iPhone', maxTouchPoints: 5 });
  vi.stubGlobal('localStorage', { getItem: () => null, setItem: () => {} });
  vi.stubGlobal('sessionStorage', { getItem: () => null, setItem: () => {} });
  vi.stubGlobal('window', {
    innerWidth: 390,
    location: { protocol: 'http:' },
    matchMedia: () => ({ matches: false, addEventListener: () => {}, removeEventListener: () => {} }),
    addEventListener: () => {}, removeEventListener: () => {},
    setInterval, clearInterval, setTimeout, clearTimeout,
  });
  vi.stubGlobal('document', { addEventListener: () => {}, removeEventListener: () => {} });
});

afterEach(() => {
  vi.unstubAllEnvs();
  vi.unstubAllGlobals();
  vi.restoreAllMocks();
  delete (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT;
});

describe('Apple mobile player', () => {
  it('never mounts a video for MKV or AVI, but leaves MP4 inline with PiP enabled', async () => {
    const { MediaPlayer } = await import('./MediaPlayer');
    let renderer: ReturnType<typeof create>;
    await act(async () => { renderer = create(<MediaPlayer media={movie} onClose={() => {}} />); });
    expect(renderer!.root.findAllByType('video')).toHaveLength(0);
    expect(renderer!.root.findAllByType('a')[0].props.href).toBe(`vlc://${direct}`);
    const episode = { ...movie, id: 'episode_123', type: 'series' as const, containerExtension: 'avi' };
    await act(async () => { renderer!.update(<MediaPlayer media={episode} onClose={() => {}} />); });
    expect(renderer!.root.findAllByType('video')).toHaveLength(0);
    const mp4 = { ...movie, containerExtension: 'mp4', streamUrl: 'http://server.esempio:8080/movie/demo/demo/123.mp4' };
    await act(async () => { renderer!.update(<MediaPlayer media={mp4} onClose={() => {}} />); });
    const video = renderer!.root.findByType('video');
    expect(video.props.playsInline).toBe(true);
    expect(video.props.disablePictureInPicture).toBeUndefined();
    expect(renderer!.root.findAllByProps({ 'aria-label': 'Scarica video' })).toHaveLength(0);
    await act(async () => renderer!.unmount());
  });

  it.each(['static', 'production'])('uses native HLS and keeps the retry panel on Apple mobile in %s mode', async (mode) => {
    vi.stubEnv('MODE', mode);
    const { MediaPlayer } = await import('./MediaPlayer');
    const { MobilePlayerErrorPanel } = await import('./MobilePlayerErrorPanel');
    vi.stubGlobal('localStorage', { getItem: () => 'false', setItem: () => {} });
    const video = {
      src: '', currentTime: 0, readyState: 0, videoWidth: 0, paused: true,
      canPlayType: vi.fn(() => 'maybe'),
      play: vi.fn(async () => {}), pause: vi.fn(), load: vi.fn(), removeAttribute: vi.fn(),
      addEventListener: vi.fn(), removeEventListener: vi.fn(),
    };
    const live: PlayableMediaItem = {
      id: 'live_123', title: 'Canale', type: 'live',
      streamUrl: 'http://server.esempio:8080/live/demo/demo/123.ts', containerExtension: 'ts',
    };
    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(<MediaPlayer media={live} onClose={() => {}} />, {
        createNodeMock: (element) => element.type === 'video' ? video : null,
      });
    });
    expect(video.src).toBe('http://server.esempio:8080/live/demo/demo/123.m3u8');
    // An error after playback started must still show Riprova on iOS.
    video.currentTime = 5;
    video.videoWidth = 1280;
    video.paused = false;
    video.pause.mockImplementation(() => { video.paused = true; });
    await act(async () => { renderer!.root.findByType('video').props.onError(); });
    expect(video.pause).toHaveBeenCalled();
    const panel = renderer!.root.findByType(MobilePlayerErrorPanel);
    expect(panel.props.canSwitchFormat).toBe(false);
    expect(panel.props.showProxyOption).toBe(mode !== 'static');
    expect(renderer!.root.findAllByType('button').some((button) => button.children.includes('Riprova'))).toBe(true);
    expect(video.src).toBe('http://server.esempio:8080/live/demo/demo/123.m3u8');
    await act(async () => renderer!.unmount());
  });

  it('keeps desktop MKV playback unchanged', async () => {
    const { MediaPlayer } = await import('./MediaPlayer');
    vi.stubGlobal('navigator', { userAgent: 'Macintosh', platform: 'MacIntel', maxTouchPoints: 0 });
    let renderer: ReturnType<typeof create>;
    await act(async () => { renderer = create(<MediaPlayer media={movie} onClose={() => {}} />); });
    expect(renderer!.root.findAllByType('video')).toHaveLength(1);
    expect(renderer!.root.findAllByType('h2').some((node) => node.children.includes('Formato non riproducibile in Safari'))).toBe(false);
    await act(async () => renderer!.unmount());
  });
});
