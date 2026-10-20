import React from 'react';
import { act, create } from 'react-test-renderer';
import { afterEach, describe, expect, it, vi } from 'vitest';
import { MobilePlayerErrorPanel } from './MobilePlayerErrorPanel';

function textOf(node: any): string {
  const parts: string[] = [];
  const walk = (value: any) => {
    if (typeof value === 'string') {
      parts.push(value);
      return;
    }
    if (!value || typeof value !== 'object') return;
    for (const child of value.children ?? []) walk(child);
  };
  walk(node);
  return parts.join(' ').replace(/\s+/g, ' ').trim();
}

function buttonLabels(renderer: ReturnType<typeof create>): string[] {
  return renderer.root.findAllByType('button').map((button) => textOf(button));
}

function buttonByLabel(renderer: ReturnType<typeof create>, label: string) {
  const button = renderer.root
    .findAllByType('button')
    .find((candidate) => textOf(candidate) === label);
  if (!button) throw new Error(`Button "${label}" not found`);
  return button;
}

afterEach(() => {
  vi.restoreAllMocks();
  delete (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT;
});

describe('mobile player error panel', () => {
  const baseProps = {
    message: 'Errore di caricamento del flusso video.',
    canSwitchFormat: true,
    formatLabel: 'Passa a formato MPEG-TS (.ts)',
    showProxyOption: true,
    proxyLabel: '🛡️ Attiva Proxy HTTPS',
    proxyFilled: true,
  };

  it('renders the compact view with a clamped message, Riprova and Chiudi', async () => {
    (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT = true;
    const onRetry = vi.fn();
    const onClose = vi.fn();
    let renderer: ReturnType<typeof create>;

    await act(async () => {
      renderer = create(
        <MobilePlayerErrorPanel {...baseProps} onRetry={onRetry} onClose={onClose} onToggleFormat={() => {}} onToggleProxy={() => {}} />
      );
    });

    const message = renderer!.root.findByType('p');
    expect(textOf(message)).toBe(baseProps.message);
    expect(message.props.className).toContain('line-clamp-2');
    expect(message.props.className).toContain('text-label');

    expect(buttonLabels(renderer!)).toEqual(['Riprova', 'Chiudi', 'Altre opzioni']);
    for (const button of renderer!.root.findAllByType('button')) {
      expect(button.props.className).toContain('min-h-10');
    }

    await act(async () => {
      buttonByLabel(renderer!, 'Riprova').props.onClick();
    });
    expect(onRetry).toHaveBeenCalledTimes(1);

    await act(async () => {
      buttonByLabel(renderer!, 'Chiudi').props.onClick();
    });
    expect(onClose).toHaveBeenCalledTimes(1);

    await act(async () => {
      renderer!.unmount();
    });
  });

  it('shows format and proxy options from Altre opzioni and returns with Indietro', async () => {
    (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT = true;
    const onToggleFormat = vi.fn();
    const onToggleProxy = vi.fn();
    let renderer: ReturnType<typeof create>;

    await act(async () => {
      renderer = create(
        <MobilePlayerErrorPanel
          {...baseProps}
          onRetry={() => {}}
          onClose={() => {}}
          onToggleFormat={onToggleFormat}
          onToggleProxy={onToggleProxy}
        />
      );
    });

    await act(async () => {
      buttonByLabel(renderer!, 'Altre opzioni').props.onClick();
    });

    expect(renderer!.root.findAllByType('p')).toHaveLength(0);
    expect(buttonLabels(renderer!)).toEqual([
      'Passa a formato MPEG-TS (.ts)',
      '🛡️ Attiva Proxy HTTPS',
      'Indietro',
    ]);

    await act(async () => {
      buttonByLabel(renderer!, 'Passa a formato MPEG-TS (.ts)').props.onClick();
    });
    expect(onToggleFormat).toHaveBeenCalledTimes(1);

    await act(async () => {
      buttonByLabel(renderer!, '🛡️ Attiva Proxy HTTPS').props.onClick();
    });
    expect(onToggleProxy).toHaveBeenCalledTimes(1);

    await act(async () => {
      buttonByLabel(renderer!, 'Indietro').props.onClick();
    });
    expect(textOf(renderer!.root.findByType('p'))).toBe(baseProps.message);
    expect(buttonLabels(renderer!)).toEqual(['Riprova', 'Chiudi', 'Altre opzioni']);

    await act(async () => {
      renderer!.unmount();
    });
  });

  it('keeps only Indietro when format and proxy commands are unavailable', async () => {
    (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT = true;
    let renderer: ReturnType<typeof create>;

    await act(async () => {
      renderer = create(
        <MobilePlayerErrorPanel
          {...baseProps}
          canSwitchFormat={false}
          showProxyOption={false}
          onRetry={() => {}}
          onClose={() => {}}
          onToggleFormat={() => {}}
          onToggleProxy={() => {}}
        />
      );
    });

    await act(async () => {
      buttonByLabel(renderer!, 'Altre opzioni').props.onClick();
    });
    expect(buttonLabels(renderer!)).toEqual(['Indietro']);

    await act(async () => {
      renderer!.unmount();
    });
  });
});
