import React from 'react';
import { act, create } from 'react-test-renderer';
import { afterEach, beforeEach, describe, expect, it, vi } from 'vitest';
import { AppleUnsupportedFormatPanel } from './AppleUnsupportedFormatPanel';

const direct = 'http://server.esempio:8080/movie/demo/demo/123.mkv';

function stubAppleSafari() {
  vi.stubEnv('MODE', 'static');
  vi.resetModules();
  vi.stubGlobal('navigator', {
    userAgent: 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_0 like Mac OS X)',
    platform: 'iPhone',
    maxTouchPoints: 5,
    clipboard: { writeText: vi.fn(async () => {}) },
  });
  vi.stubGlobal('window', {
    innerWidth: 390,
    matchMedia: () => ({ matches: false, addEventListener: () => {}, removeEventListener: () => {} }),
    addEventListener: () => {},
    removeEventListener: () => {},
  });
}

beforeEach(() => {
  (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT = true;
});

afterEach(() => {
  vi.unstubAllGlobals();
  delete (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT;
});

describe('unsupported Safari format panel', () => {
  it('offers VLC, the App Store and copies the direct link with confirmation', async () => {
    const writeText = vi.fn(async (_text: string) => {});
    vi.stubGlobal('navigator', { clipboard: { writeText } });
    const proxy = `/api/proxy/stream?url=${encodeURIComponent(direct)}`;
    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(<AppleUnsupportedFormatPanel streamUrl={proxy} title="Film" onClose={() => {}} />);
    });
    expect(renderer!.root.findByType('h2').children.join('')).toBe('Formato non riproducibile in Safari');
    const links = renderer!.root.findAllByType('a');
    expect(links[0].props.href).toBe(`vlc://${direct}`);
    expect(links[1].props.href).toBe('https://apps.apple.com/app/vlc-media-player/id650377962');
    expect(JSON.stringify(renderer!.toJSON())).toContain("In VLC l'avanzamento non viene salvato in Continua a guardare.");
    const copyButton = renderer!.root.findAllByType('button').find((button) => button.children.includes(' Copia link'));
    expect(copyButton).toBeDefined();
    await act(async () => {
      copyButton!.props.onClick();
      await Promise.resolve();
    });
    expect(writeText).toHaveBeenCalledWith(direct);
    expect(renderer!.root.findByProps({ role: 'status' }).children.join('')).toBe('Link copiato.');
    await act(async () => renderer!.unmount());
  });

  it('offers the direct download link next to VLC in a Safari tab', async () => {
    stubAppleSafari();
    const { AppleUnsupportedFormatPanel: Panel } = await import('./AppleUnsupportedFormatPanel');
    const { APPLE_SAFARI_DOWNLOAD_HINT } = await import('./AppleDownloadLink');
    const proxy = `/api/proxy/stream?url=${encodeURIComponent(direct)}`;
    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(<Panel streamUrl={proxy} title="Film" containerExtension="mkv" onClose={() => {}} />);
    });

    const links = renderer!.root.findAllByType('a');
    // VLC first, then the download link, then the App Store.
    expect(links[0].props.href).toBe(`vlc://${direct}`);
    const download = links.find((link) => link.props.href === direct);
    expect(download).toBeDefined();
    expect(download!.props.target).toBe('_blank');
    expect(download!.props.rel).toBe('noopener noreferrer');
    expect(JSON.stringify(renderer!.toJSON())).toContain(APPLE_SAFARI_DOWNLOAD_HINT);
    await act(async () => renderer!.unmount());
  });

  it('keeps the panel without a download link on desktop or in the normal build', async () => {
    stubAppleSafari();
    vi.stubGlobal('navigator', { userAgent: 'Macintosh', platform: 'MacIntel', maxTouchPoints: 0, clipboard: { writeText: vi.fn() } });
    const { AppleUnsupportedFormatPanel: Panel } = await import('./AppleUnsupportedFormatPanel');
    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(<Panel streamUrl={direct} title="Film" containerExtension="avi" onClose={() => {}} />);
    });
    expect(renderer!.root.findAllByType('a').map((link) => link.props.href)).toEqual([
      `vlc://${direct}`,
      'https://apps.apple.com/app/vlc-media-player/id650377962',
    ]);
    await act(async () => renderer!.unmount());
  });

  it('copies on HTTP using the selection fallback when Clipboard API is unavailable', async () => {
    vi.stubGlobal('navigator', {});
    const field = { value: '', style: { position: '', left: '' }, setAttribute: vi.fn(), select: vi.fn(), setSelectionRange: vi.fn(), remove: vi.fn() };
    const execCommand = vi.fn(() => true);
    vi.stubGlobal('document', { createElement: () => field, body: { appendChild: vi.fn() }, execCommand });
    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(<AppleUnsupportedFormatPanel streamUrl={direct} title="Film" onClose={() => {}} />);
    });
    const copyButton = renderer!.root.findAllByType('button').find((button) => button.children.includes(' Copia link'));
    await act(async () => { copyButton!.props.onClick(); await Promise.resolve(); });
    expect(field.value).toBe(direct);
    expect(execCommand).toHaveBeenCalledWith('copy');
    expect(renderer!.root.findByProps({ role: 'status' }).children.join('')).toBe('Link copiato.');
    await act(async () => renderer!.unmount());
  });

  it('offers manual selection if neither Clipboard API nor the HTTP fallback works', async () => {
    vi.stubGlobal('navigator', {});
    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(<AppleUnsupportedFormatPanel streamUrl={direct} title="Film" onClose={() => {}} />);
    });
    const copyButton = renderer!.root.findAllByType('button').find((button) => button.children.includes(' Copia link'));
    await act(async () => {
      copyButton!.props.onClick();
      await Promise.resolve();
    });
    expect(renderer!.root.findByProps({ role: 'alert' })).toBeDefined();
    expect(renderer!.root.findByProps({ 'aria-label': 'Link diretto dello stream' }).props.value).toBe(direct);
    await act(async () => renderer!.unmount());
  });
});
