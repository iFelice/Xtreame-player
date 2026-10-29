import React from 'react';
import { act, create } from 'react-test-renderer';
import { Cast, PictureInPicture2 } from 'lucide-react';
import { afterEach, beforeEach, describe, expect, it, vi } from 'vitest';
import type { PlayableMediaItem } from '../types/xtream';

vi.mock('mpegts.js', () => ({ default: { isSupported: () => false, createPlayer: () => ({}) } }));
vi.mock('hls.js', () => ({
  default: class {
    static isSupported() {
      return false;
    }
  },
}));

const movie: PlayableMediaItem = {
  id: 'movie_1',
  title: 'Film',
  type: 'movie',
  streamUrl: 'http://server.esempio:8080/movie/demo/demo/1.mp4',
  containerExtension: 'mp4',
};

const PIP_TITLE = 'Picture in Picture (Finestra fluttuante)';

function stubDevice(appleMobile: boolean) {
  vi.stubGlobal('navigator', {
    userAgent: appleMobile ? 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_0)' : 'Mozilla/5.0 (Macintosh; Intel Mac OS X)',
    platform: appleMobile ? 'iPhone' : 'MacIntel',
    maxTouchPoints: appleMobile ? 5 : 0,
  });
  vi.stubGlobal('window', {
    innerWidth: appleMobile ? 390 : 1440,
    location: { protocol: 'http:' },
    matchMedia: () => ({ matches: false, addEventListener: () => {}, removeEventListener: () => {} }),
    addEventListener: () => {},
    removeEventListener: () => {},
    setInterval,
    clearInterval,
    setTimeout,
    clearTimeout,
  });
  vi.stubGlobal('localStorage', { getItem: () => null, setItem: () => {} });
  vi.stubGlobal('sessionStorage', { getItem: () => null, setItem: () => {} });
  vi.stubGlobal('document', {
    fullscreenElement: null,
    pictureInPictureElement: null,
    // WebKit bug 303885: true even where PiP cannot start.
    pictureInPictureEnabled: true,
    addEventListener: () => {},
    removeEventListener: () => {},
  });
}

function videoNode(webkitPipSupport: boolean | undefined) {
  const video = {
    src: '',
    currentTime: 0,
    readyState: 0,
    videoWidth: 0,
    duration: 0,
    paused: true,
    canPlayType: vi.fn(() => 'probably'),
    play: vi.fn(async () => {}),
    pause: vi.fn(),
    load: vi.fn(),
    removeAttribute: vi.fn(),
    addEventListener: vi.fn(),
    removeEventListener: vi.fn(),
    webkitSupportsPresentationMode: webkitPipSupport === undefined
      ? undefined
      : (mode: string) => mode === 'picture-in-picture' && webkitPipSupport,
  };
  return video;
}

async function mountPlayer(video: ReturnType<typeof videoNode>) {
  const { MediaPlayer } = await import('./MediaPlayer');
  let renderer: ReturnType<typeof create>;
  await act(async () => {
    renderer = create(<MediaPlayer media={movie} onClose={() => {}} />, {
      createNodeMock: (element) => (element.type === 'video' ? video : null),
    });
  });
  return renderer!;
}

beforeEach(() => {
  (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT = true;
  vi.stubEnv('MODE', 'static');
  vi.resetModules();
});

afterEach(() => {
  vi.unstubAllEnvs();
  vi.unstubAllGlobals();
  vi.restoreAllMocks();
  delete (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT;
});

describe('Picture-in-Picture control', () => {
  it('uses the PictureInPicture2 icon instead of Cast and keeps the inline video setup', async () => {
    stubDevice(false);
    const renderer = await mountPlayer(videoNode(true));

    expect(renderer.root.findAllByProps({ title: PIP_TITLE })).toHaveLength(1);
    expect(renderer.root.findAllByType(PictureInPicture2).length).toBeGreaterThan(0);
    expect(renderer.root.findAllByType(Cast)).toHaveLength(0);

    const video = renderer.root.findByType('video');
    expect(video.props['x-webkit-airplay']).toBe('allow');
    expect(video.props.playsInline).toBe(true);
    expect(video.props.disablePictureInPicture).toBeUndefined();

    await act(async () => renderer.unmount());
  });

  it('shows the button on Apple mobile only when webkitSupportsPresentationMode allows it', async () => {
    stubDevice(true);
    const supported = await mountPlayer(videoNode(true));
    expect(supported.root.findAllByProps({ title: PIP_TITLE })).toHaveLength(1);
    await act(async () => supported.unmount());

    const hidden = await mountPlayer(videoNode(false));
    expect(hidden.root.findAllByProps({ title: PIP_TITLE })).toHaveLength(0);
    await act(async () => hidden.unmount());

    const unanswered = await mountPlayer(videoNode(undefined));
    expect(unanswered.root.findAllByProps({ title: PIP_TITLE })).toHaveLength(0);
    await act(async () => unanswered.unmount());
  });

  it('keeps the button on desktop even when the WebKit check is unavailable', async () => {
    stubDevice(false);
    const renderer = await mountPlayer(videoNode(undefined));
    expect(renderer.root.findAllByProps({ title: PIP_TITLE })).toHaveLength(1);
    await act(async () => renderer.unmount());
  });
});
