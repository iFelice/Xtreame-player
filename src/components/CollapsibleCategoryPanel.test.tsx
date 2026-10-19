import React from 'react';
import { act, create } from 'react-test-renderer';
import { afterEach, describe, expect, it, vi } from 'vitest';
import { CollapsibleCategoryPanel } from './CollapsibleCategoryPanel';

afterEach(() => {
  vi.restoreAllMocks();
  delete (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT;
});

const categories = [
  { category_id: '1', category_name: 'Sport' },
  { category_id: '2', category_name: 'Cinema con un nome molto lungo che dovrebbe essere troncato con ellissi' },
  { category_id: '3', category_name: 'News' },
];

const counts: Record<string, number> = { '1': 10, '2': 5, '3': 8 };

function findToggle(root: any) {
  return root
    .findAllByType('button')
    .find((button: any) => button.props['aria-controls'] === 'test-category-panel');
}

describe('collapsible category panel', () => {
  it('starts closed, opens on tap, closes on selection and on second tap', async () => {
    (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT = true;
    const onSelectCategory = vi.fn();
    const contentListRef = { current: null } as React.RefObject<HTMLDivElement | null>;

    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(
        <CollapsibleCategoryPanel
          categories={categories}
          selectedCategory="1"
          onSelectCategory={onSelectCategory}
          categoryCounts={counts}
          contentListRef={contentListRef}
          accent="live"
          panelId="test-category-panel"
        />
      );
    });

    // Closed at start: toggle collapsed, panel and filter field absent.
    let toggle = findToggle(renderer!.root);
    expect(toggle).toBeDefined();
    expect(toggle.props['aria-expanded']).toBe(false);
    expect(toggle.props['aria-controls']).toBe('test-category-panel');
    expect(renderer!.root.findAllByProps({ id: 'test-category-panel' }).length).toBe(0);
    expect(
      renderer!.root.findAllByProps({ 'aria-label': 'Filtra categorie' }).length
    ).toBe(0);

    // Opens on tap: panel with filter field and current list appears.
    await act(async () => {
      toggle.props.onClick();
    });
    toggle = findToggle(renderer!.root);
    expect(toggle.props['aria-expanded']).toBe(true);
    const panel = renderer!.root.findByProps({ id: 'test-category-panel' });
    expect(panel).toBeDefined();
    expect(
      renderer!.root.findAllByProps({ 'aria-label': 'Filtra categorie' }).length
    ).toBe(1);
    const mobileOptions = panel.findAllByType('button');
    expect(mobileOptions.length).toBe(3);

    // Choosing a category closes the panel and notifies the new selection.
    await act(async () => {
      mobileOptions[1].props.onClick();
    });
    expect(onSelectCategory).toHaveBeenCalledTimes(1);
    expect(onSelectCategory).toHaveBeenCalledWith('2');
    toggle = findToggle(renderer!.root);
    expect(toggle.props['aria-expanded']).toBe(false);
    expect(renderer!.root.findAllByProps({ id: 'test-category-panel' }).length).toBe(0);

    // Second tap on the row button closes without changing the selection.
    await act(async () => {
      toggle.props.onClick();
    });
    toggle = findToggle(renderer!.root);
    expect(toggle.props['aria-expanded']).toBe(true);
    expect(renderer!.root.findAllByProps({ id: 'test-category-panel' }).length).toBe(1);
    await act(async () => {
      toggle.props.onClick();
    });
    toggle = findToggle(renderer!.root);
    expect(toggle.props['aria-expanded']).toBe(false);
    expect(renderer!.root.findAllByProps({ id: 'test-category-panel' }).length).toBe(0);
    expect(onSelectCategory).toHaveBeenCalledTimes(1);

    await act(async () => {
      renderer!.unmount();
    });
  });
});
