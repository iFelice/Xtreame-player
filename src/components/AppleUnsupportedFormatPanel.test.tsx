import React from 'react';
import { act, create } from 'react-test-renderer';
import { afterEach, beforeEach, describe, expect, it, vi } from 'vitest';
import { AppleUnsupportedFormatPanel } from './AppleUnsupportedFormatPanel';

const direct = 'http://server.esempio:8080/movie/demo/demo/123.mkv';

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
