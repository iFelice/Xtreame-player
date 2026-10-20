import React from 'react';
import { act, create } from 'react-test-renderer';
import { afterEach, describe, expect, it, vi } from 'vitest';
import * as downloadHelper from '../utils/downloadHelper';
import { LiveChannelListRow } from './LiveChannelRow';

afterEach(() => {
  vi.restoreAllMocks();
  delete (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT;
});

function collectTexts(instance: any): string[] {
  const out: string[] = [];
  const walk = (node: any) => {
    if (typeof node === 'string') {
      out.push(node);
      return;
    }
    if (!node || typeof node !== 'object') return;
    for (const child of node.children ?? []) walk(child);
  };
  walk(instance);
  return out;
}

describe('mobile live channel row', () => {
  it('shows the name, labels the play button and omits LIVE in mobile markup', async () => {
    (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT = true;
    const onPlay = vi.fn();
    const onToggleFavorite = vi.fn();

    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(
        <LiveChannelListRow
          stream={{ name: 'Rai 1 HD', stream_id: 101, category_id: '1' }}
          index={0}
          isFavorite={false}
          isPlaying={false}
          onPlay={onPlay}
          onToggleFavorite={onToggleFavorite}
        />
      );
    });

    const root = renderer!.root;

    // Channel name present in the mobile two-line heading.
    const mobileHeadings = root.findAll(
      (node) =>
        node.type === 'h4' &&
        typeof node.props?.className === 'string' &&
        node.props.className.includes('line-clamp-2')
    );
    expect(mobileHeadings.length).toBe(1);
    expect(collectTexts(mobileHeadings[0]).join('')).toContain('Rai 1 HD');

    // Round play button labelled with the channel name.
    const playButton = root.findByProps({ 'aria-label': 'Guarda Rai 1 HD' });
    expect(playButton.type).toBe('button');
    expect(playButton.props.className).toContain('bg-live');
    expect(playButton.props.className).toContain('rounded-full');
    await act(async () => {
      playButton.props.onClick({ stopPropagation: () => {} });
    });
    expect(onPlay).toHaveBeenCalledTimes(1);

    // No LIVE text inside any mobile-only container.
    const mobileContainers = root.findAll(
      (node) =>
        typeof node.props?.className === 'string' &&
        node.props.className.includes('live-row-mobile')
    );
    expect(mobileContainers.length).toBeGreaterThan(0);
    for (const container of mobileContainers) {
      for (const text of collectTexts(container)) {
        expect(text).not.toContain('LIVE');
      }
    }

    // Desktop markup still carries the LIVE badge and Guarda label.
    const allTexts = collectTexts(root);
    expect(allTexts).toContain('LIVE');
    expect(allTexts).toContain('Guarda');

    // Compact mobile spacing below md (< 768px) with untouched md+ classes.
    const outer = root.findByProps({ id: 'live-channel-101' });
    expect(outer.props.className).toContain('p-2.5');
    expect(outer.props.className).toContain('md:p-4');
    expect(outer.props.className).toContain('gap-2');
    expect(outer.props.className).toContain('md:gap-5');

    const leftBlock = outer.children[0] as any;
    expect(leftBlock.props.className).toContain('gap-2.5');
    expect(leftBlock.props.className).toContain('md:gap-5');

    const logoBox = leftBlock.children[1] as any;
    expect(logoBox.props.className).toContain('w-10');
    expect(logoBox.props.className).toContain('h-10');
    expect(logoBox.props.className).toContain('md:w-14');
    expect(logoBox.props.className).toContain('md:h-14');

    await act(async () => {
      renderer!.unmount();
    });
  });

  it('preserves previous spacing classes in TV mode', async () => {
    (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT = true;
    vi.spyOn(downloadHelper, 'isTvEnvironment').mockReturnValue(true);

    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(
        <LiveChannelListRow
          stream={{ name: 'Canale 5 HD', stream_id: 105, category_id: '1' }}
          index={1}
          isFavorite={false}
          isPlaying={false}
          onPlay={() => {}}
          onToggleFavorite={() => {}}
        />
      );
    });

    const outer = renderer!.root.findByProps({ id: 'live-channel-105' });
    expect(outer.props.className).toContain('p-3.5');
    expect(outer.props.className).toContain('sm:p-4');
    expect(outer.props.className).toContain('gap-3');
    expect(outer.props.className).toContain('sm:gap-5');

    const leftBlock = outer.children[0] as any;
    expect(leftBlock.props.className).toContain('gap-3.5');
    expect(leftBlock.props.className).toContain('sm:gap-5');

    const logoBox = leftBlock.children[1] as any;
    expect(logoBox.props.className).toContain('w-12');
    expect(logoBox.props.className).toContain('h-12');

    await act(async () => {
      renderer!.unmount();
    });
  });
});
