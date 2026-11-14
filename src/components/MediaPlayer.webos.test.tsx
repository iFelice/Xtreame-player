import React from 'react';
import { act, create } from 'react-test-renderer';
import { afterEach, beforeEach, describe, expect, it, vi } from 'vitest';
import type { PlayableMediaItem } from '../types/xtream';

vi.mock('mpegts.js', () => ({ default: { isSupported: () => true, createPlayer: () => ({}) } }));
vi.mock('hls.js', () => ({
  default: class {
    static isSupported() { return true; }
  },
}));

const live = (id: number): PlayableMediaItem => ({
  id: `live_${id}`,
  title: `Canale ${id}`,
  type: 'live',
  streamUrl: `http://server.esempio:8080/live/demo/demo/${id}.m3u8`,
  containerExtension: 'm3u8',
});

const movie: PlayableMediaItem = {
  id: 'movie_1',
  title: 'Film',
  type: 'movie',
  streamUrl: 'http://server.esempio:8080/movie/demo/demo/1.mp4',
  containerExtension: 'mp4',
};

type KeyListener = (event: KeyboardEvent) => void;

function installWebOsHarness() {
  const listeners = new Map<string, KeyListener>();
  vi.stubGlobal('localStorage', { getItem: () => null, setItem: () => {} });
  vi.stubGlobal('sessionStorage', { getItem: () => null, setItem: () => {} });
  vi.stubGlobal('navigator', { userAgent: 'webOS TV', platform: 'Linux armv7l', maxTouchPoints: 0 });
  vi.stubGlobal('window', {
    innerWidth: 1920,
    location: { protocol: 'file:' },
    addEventListener: (name: string, listener: KeyListener) => listeners.set(name, listener),
    removeEventListener: (name: string) => listeners.delete(name),
    matchMedia: () => ({ matches: false, addEventListener: () => {}, removeEventListener: () => {} }),
    setTimeout, clearTimeout, setInterval, clearInterval,
  });
  vi.stubGlobal('document', {
    fullscreenElement: null,
    pictureInPictureElement: null,
    pictureInPictureEnabled: false,
    addEventListener: () => {},
    removeEventListener: () => {},
  });
  return listeners;
}

function videoNode() {
  return {
    src: '', currentTime: 0, duration: 300, readyState: 0, videoWidth: 0, paused: true,
    canPlayType: vi.fn(() => ''), play: vi.fn(async () => {}), pause: vi.fn(), load: vi.fn(),
    removeAttribute: vi.fn(), addEventListener: vi.fn(), removeEventListener: vi.fn(),
  };
}

const controlNode = (control = { focus: vi.fn(), click: vi.fn() }) => ({
  querySelectorAll: () => [control],
});

function remoteEvent(key: string, keyCode?: number, repeat = false): KeyboardEvent {
  return {
    key, keyCode, repeat, preventDefault: vi.fn(), stopPropagation: vi.fn(),
  } as unknown as KeyboardEvent;
}

beforeEach(() => {
  (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT = true;
  vi.useFakeTimers();
  vi.stubEnv('VITE_TARGET', 'webos');
  vi.stubEnv('MODE', 'production');
  vi.spyOn(console, 'info').mockImplementation(() => {});
  vi.resetModules();
});

afterEach(() => {
  vi.useRealTimers();
  vi.unstubAllEnvs();
  vi.unstubAllGlobals();
  vi.restoreAllMocks();
  delete (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT;
});

describe('real MediaPlayer in webOS mode', () => {
  it('restarts ended Live twice, switches format on the third interruption, then learns a stable automatic fallback', async () => {
    const listeners = installWebOsHarness();
    const saved = new Map<string, string>();
    const saveFormat = vi.fn((key: string, value: string) => saved.set(key, value));
    vi.stubGlobal('localStorage', { getItem: (key: string) => saved.get(key) ?? null, setItem: saveFormat });
    const { MediaPlayer } = await import('./MediaPlayer');
    const video = videoNode();
    const close = vi.fn();
    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(<MediaPlayer media={live(1)} onClose={close} />, {
        createNodeMock: (element) => element.type === 'video' ? video : { querySelectorAll: () => [] },
      });
    });
    // LG native-video measurement: HLS is the correct initial format, not TS.
    expect(video.src).toContain('/1.m3u8');
    const player = () => renderer!.root.findByType('video');
    await act(async () => { player().props.onPlaying(); });

    await act(async () => {
      player().props.onEnded();
      vi.advanceTimersByTime(1_000);
    });
    expect(video.src).toContain('/1.m3u8');
    expect(video.removeAttribute).toHaveBeenCalledWith('src');
    await act(async () => { player().props.onPlaying(); });

    await act(async () => {
      player().props.onEnded();
      vi.advanceTimersByTime(1_000);
    });
    expect(video.src).toContain('/1.m3u8');
    await act(async () => { player().props.onPlaying(); });

    await act(async () => {
      player().props.onEnded();
      vi.advanceTimersByTime(1_000);
    });
    expect(video.src).toContain('/1.ts');
    await act(async () => {
      player().props.onPlaying();
      vi.advanceTimersByTime(30_000);
    });
    expect(saveFormat).toHaveBeenCalledWith('fvp.webos.liveFormat', 'ts');

    await act(async () => { renderer!.update(<MediaPlayer media={live(2)} onClose={close} />); });
    expect(video.src).toContain('/2.ts');
    expect(listeners.get('keydown')).toBeTruthy();
    await act(async () => renderer!.unmount());
  });

  it('starts webOS Live in TS when the account allows only TS', async () => {
    installWebOsHarness();
    const { MediaPlayer } = await import('./MediaPlayer');
    const video = videoNode();
    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(<MediaPlayer media={live(1)} onClose={() => {}} allowedLiveFormats={['ts']} />, {
        createNodeMock: (element) => element.type === 'video' ? video : { querySelectorAll: () => [] },
      });
    });
    expect(video.src).toContain('/1.ts');
    await act(async () => renderer!.unmount());
  });

  it('does not recover while repeated stalled and waiting events still have qualifying progress for 90 seconds', async () => {
    installWebOsHarness();
    const { MediaPlayer } = await import('./MediaPlayer');
    const video = videoNode();
    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(<MediaPlayer media={live(1)} onClose={() => {}} />, {
        createNodeMock: (element) => element.type === 'video' ? video : { querySelectorAll: () => [] },
      });
    });
    const player = () => renderer!.root.findByType('video');
    video.paused = false;
    await act(async () => { player().props.onPlaying(); });

    for (let second = 1; second <= 90; second += 1) {
      await act(async () => {
        video.currentTime = second;
        player().props.onStalled();
        player().props.onWaiting();
        vi.advanceTimersByTime(1_000);
      });
    }

    expect(video.removeAttribute).not.toHaveBeenCalled();
    expect(video.src).toContain('/1.m3u8');
    await act(async () => renderer!.unmount());
  });

  it('does not recover when waiting is followed by qualifying progress before ten seconds', async () => {
    installWebOsHarness();
    const { MediaPlayer } = await import('./MediaPlayer');
    const video = videoNode();
    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(<MediaPlayer media={live(1)} onClose={() => {}} />, {
        createNodeMock: (element) => element.type === 'video' ? video : { querySelectorAll: () => [] },
      });
    });
    const player = () => renderer!.root.findByType('video');
    video.paused = false;
    await act(async () => {
      player().props.onPlaying();
      player().props.onWaiting();
      vi.advanceTimersByTime(9_000);
      video.currentTime = 0.5;
      vi.advanceTimersByTime(2_000);
    });

    expect(video.removeAttribute).not.toHaveBeenCalled();
    await act(async () => renderer!.unmount());
  });

  it('restarts once after ten seconds of fixed currentTime on the next progress poll', async () => {
    installWebOsHarness();
    const { MediaPlayer } = await import('./MediaPlayer');
    const video = videoNode();
    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(<MediaPlayer media={live(1)} onClose={() => {}} />, {
        createNodeMock: (element) => element.type === 'video' ? video : { querySelectorAll: () => [] },
      });
    });
    const player = () => renderer!.root.findByType('video');
    video.paused = false;
    await act(async () => { player().props.onPlaying(); });
    await act(async () => { vi.advanceTimersByTime(9_000); });
    expect(video.removeAttribute).not.toHaveBeenCalled();

    await act(async () => { vi.advanceTimersByTime(1_000); });
    expect(video.removeAttribute).toHaveBeenCalledTimes(1);
    expect(console.info).toHaveBeenCalledWith(expect.stringContaining('evento=stallo-rilevato formato=m3u8'));
    expect(console.info).toHaveBeenCalledWith(expect.stringContaining('evento=riavvio formato=m3u8'));
    await act(async () => { vi.advanceTimersByTime(1_000); });
    await act(async () => renderer!.unmount());
  });

  it('recovers ended Live immediately without waiting for a progress poll', async () => {
    installWebOsHarness();
    const { MediaPlayer } = await import('./MediaPlayer');
    const video = videoNode();
    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(<MediaPlayer media={live(1)} onClose={() => {}} />, {
        createNodeMock: (element) => element.type === 'video' ? video : { querySelectorAll: () => [] },
      });
    });
    const player = () => renderer!.root.findByType('video');
    video.paused = false;
    await act(async () => { player().props.onPlaying(); });
    await act(async () => { player().props.onEnded(); });

    expect(video.removeAttribute).toHaveBeenCalledTimes(1);
    expect(console.info).toHaveBeenCalledWith(expect.stringContaining('evento=ended formato=m3u8'));
    await act(async () => { vi.advanceTimersByTime(1_000); });
    await act(async () => renderer!.unmount());
  });

  it('does not recover an intentional paused Live stream with fixed currentTime', async () => {
    installWebOsHarness();
    const { MediaPlayer } = await import('./MediaPlayer');
    const video = videoNode();
    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(<MediaPlayer media={live(1)} onClose={() => {}} />, {
        createNodeMock: (element) => element.type === 'video' ? video : { querySelectorAll: () => [] },
      });
    });
    const player = () => renderer!.root.findByType('video');
    video.paused = false;
    await act(async () => { player().props.onPlaying(); });
    await act(async () => {
      player().props.onClick();
      video.paused = true;
      player().props.onPause();
      vi.advanceTimersByTime(30_000);
    });

    expect(video.removeAttribute).not.toHaveBeenCalled();
    await act(async () => renderer!.unmount());
  });

  it('uses category sources cyclically, displays the banner/list, and releases the previous native connection before zapping', async () => {
    const listeners = installWebOsHarness();
    const { MediaPlayer } = await import('./MediaPlayer');
    const video = videoNode();
    const selected = vi.fn();
    const close = vi.fn();
    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(
        <MediaPlayer media={live(1)} onClose={close} liveChannels={[live(1), live(2)]} onSelectLiveChannel={selected} />,
        { createNodeMock: (element) => element.type === 'video' ? video : { querySelectorAll: () => [] } },
      );
    });
    await act(async () => { listeners.get('keydown')!(remoteEvent('ArrowDown', 40)); });
    expect(selected).toHaveBeenCalledWith(expect.objectContaining({ id: 'live_2' }));
    await act(async () => { renderer!.update(<MediaPlayer media={live(2)} onClose={close} liveChannels={[live(1), live(2)]} onSelectLiveChannel={selected} />); });
    await act(async () => { listeners.get('keydown')!(remoteEvent('ArrowDown', 40)); });
    expect(selected).toHaveBeenLastCalledWith(expect.objectContaining({ id: 'live_1' }));
    await act(async () => { listeners.get('keydown')!(remoteEvent('Unidentified', 34)); });
    expect(selected).toHaveBeenLastCalledWith(expect.objectContaining({ id: 'live_1' }));
    await act(async () => { listeners.get('keydown')!(remoteEvent('Unidentified', 33)); });
    expect(selected).toHaveBeenLastCalledWith(expect.objectContaining({ id: 'live_1' }));
    expect(video.pause).toHaveBeenCalled();
    expect(video.removeAttribute).toHaveBeenCalledWith('src');
    expect(video.load).toHaveBeenCalled();
    expect(renderer!.root.findByProps({ 'data-testid': 'webos-live-banner' })).toBeTruthy();
    const liveTime = video.currentTime;
    await act(async () => {
      listeners.get('keydown')!(remoteEvent('MediaFastForward', 417));
      listeners.get('keydown')!(remoteEvent('MediaRewind', 412));
      vi.advanceTimersByTime(300);
    });
    expect(video.currentTime).toBe(liveTime);

    await act(async () => { listeners.get('keydown')!(remoteEvent('ArrowLeft', 37)); });
    expect(renderer!.root.findByProps({ 'data-tv-layer': 'player-channel-list' })).toBeTruthy();
    await act(async () => { listeners.get('keydown')!(remoteEvent('GoBack', 461)); });
    expect(renderer!.root.findAllByProps({ 'data-tv-layer': 'player-channel-list' })).toHaveLength(0);
    await act(async () => { listeners.get('keydown')!(remoteEvent('Enter', 13)); });
    expect(renderer!.root.findAllByProps({ 'data-testid': 'webos-live-banner' })).toHaveLength(0);
    await act(async () => { listeners.get('keydown')!(remoteEvent('GoBack', 461)); });
    expect(close).toHaveBeenCalledTimes(1);
    await act(async () => renderer!.unmount());
  });

  it('owns VOD remote playback, seeks three Rights by thirty seconds, ignores live seeks, and closes with media Stop/Back', async () => {
    const listeners = installWebOsHarness();
    const { MediaPlayer } = await import('./MediaPlayer');
    const vodVideo = videoNode();
    const control = { focus: vi.fn(), click: vi.fn() };
    const closeVod = vi.fn();
    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(<MediaPlayer media={movie} onClose={closeVod} />, {
        createNodeMock: (element) => element.type === 'video' ? vodVideo : controlNode(control),
      });
    });
    vodVideo.currentTime = 100;
    await act(async () => { renderer!.root.findByType('video').props.onLoadedMetadata(); });
    await act(async () => { listeners.get('keydown')!(remoteEvent('MediaPlayPause', 415)); });
    expect(vodVideo.pause).toHaveBeenCalled();
    await act(async () => { listeners.get('keydown')!(remoteEvent('MediaPlayPause', 415)); });
    expect(vodVideo.play).toHaveBeenCalled();
    await act(async () => {
      listeners.get('keydown')!(remoteEvent('MediaFastForward', 417));
      vi.advanceTimersByTime(300);
    });
    expect(vodVideo.currentTime).toBe(110);
    await act(async () => {
      listeners.get('keydown')!(remoteEvent('MediaRewind', 412));
      vi.advanceTimersByTime(300);
    });
    expect(vodVideo.currentTime).toBe(100);
    await act(async () => {
      listeners.get('keydown')!(remoteEvent('ArrowRight', 39));
      listeners.get('keydown')!(remoteEvent('ArrowRight', 39));
      listeners.get('keydown')!(remoteEvent('ArrowRight', 39));
      listeners.get('keydown')!(remoteEvent('ArrowDown', 40));
      vi.advanceTimersByTime(300);
    });
    expect(vodVideo.currentTime).toBe(130);
    expect(control.focus).toHaveBeenCalled();
    expect(renderer!.root.findAll((node) => node.props['data-webos-controls-focused'] === 'true')).not.toHaveLength(0);
    await act(async () => { listeners.get('keydown')!(remoteEvent('MediaPause', 19)); });
    expect(vodVideo.pause).toHaveBeenCalled();
    await act(async () => { listeners.get('keydown')!(remoteEvent('MediaStop', 413)); });
    expect(closeVod).toHaveBeenCalledTimes(1);
    closeVod.mockClear();
    await act(async () => { listeners.get('keydown')!(remoteEvent('GoBack', 461)); });
    expect(closeVod).toHaveBeenCalledTimes(0); // first Back closes the VOD control bar
    await act(async () => { listeners.get('keydown')!(remoteEvent('GoBack', 461)); });
    expect(closeVod).toHaveBeenCalledTimes(1);
    await act(async () => renderer!.unmount());
  });
});
