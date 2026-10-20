import React from 'react';
import { act, create } from 'react-test-renderer';
import { afterEach, describe, expect, it, vi } from 'vitest';
import { MobileSectionBar } from './MobileSectionBar';

afterEach(() => {
  vi.restoreAllMocks();
  delete (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT;
});

describe('mobile section bar', () => {
  it('renders five items with aria-current on the active one', async () => {
    (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT = true;
    const onSelect = vi.fn();
    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(<MobileSectionBar activeTab="movies" onSelect={onSelect} />);
    });

    const nav = renderer!.root.findByProps({ 'aria-label': 'Sezioni' });
    expect(nav.type).toBe('nav');
    const buttons = nav.findAllByType('button');
    expect(buttons.length).toBe(5);

    const labels = buttons.map((button) => {
      const spans = button.findAllByType('span');
      return spans.map((span) => span.props.children).join('');
    });
    expect(labels).toEqual(['Live', 'Film', 'Serie', 'Novità', 'Preferiti']);

    const active = buttons[1];
    expect(active.props['aria-current']).toBe('page');
    expect(active.props.className).toContain('text-accent');
    for (const [index, button] of buttons.entries()) {
      if (index === 1) continue;
      expect(button.props['aria-current']).toBeUndefined();
      expect(button.props.className).toContain('text-label-secondary');
    }

    await act(async () => {
      buttons[2].props.onClick();
    });
    expect(onSelect).toHaveBeenCalledWith('series');

    await act(async () => {
      renderer!.unmount();
    });
  });

  it('stays rendered while the player is open (visibility is decided by the app shell)', async () => {
    (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT = true;
    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(<MobileSectionBar activeTab="live" onSelect={() => {}} />);
    });

    const nav = renderer!.root.findByProps({ 'aria-label': 'Sezioni' });
    expect(nav.findAllByType('button').length).toBe(5);

    await act(async () => {
      renderer!.unmount();
    });
  });
});
