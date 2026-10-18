import { describe, expect, it } from 'vitest';
import { firstVisibleGridPosition, firstVisibleListPosition } from './listPosition';

const LIST_ROW = 96;
const GRID_ROW = 420;

describe('list position indicator', () => {
  it('starts from the first element at the top of the list', () => {
    expect(firstVisibleListPosition(0, LIST_ROW, 800)).toBe(1);
    expect(firstVisibleListPosition(LIST_ROW - 1, LIST_ROW, 800)).toBe(1);
  });

  it('counts a partially visible row as the first visible element', () => {
    expect(firstVisibleListPosition(LIST_ROW, LIST_ROW, 800)).toBe(2);
    expect(firstVisibleListPosition(LIST_ROW * 1.5, LIST_ROW, 800)).toBe(2);
    expect(firstVisibleListPosition(LIST_ROW * 119 + 1, LIST_ROW, 800)).toBe(120);
  });

  it('stays within the total at the end of a long list', () => {
    // With an 800-row list and a 640px viewport the last scrollable offset
    // still shows row 794 as the first partially visible one.
    expect(firstVisibleListPosition(LIST_ROW * 800 - 640, LIST_ROW, 800)).toBe(794);
    expect(firstVisibleListPosition(LIST_ROW * 5000, LIST_ROW, 800)).toBe(800);
  });

  it('returns zero for an empty list', () => {
    expect(firstVisibleListPosition(0, LIST_ROW, 0)).toBe(0);
  });

  it('keeps a single-element list at position one', () => {
    expect(firstVisibleListPosition(0, LIST_ROW, 1)).toBe(1);
    expect(firstVisibleListPosition(LIST_ROW * 9, LIST_ROW, 1)).toBe(1);
  });

  it('falls back to the first position when the row extent is not measurable', () => {
    expect(firstVisibleListPosition(240, 0, 800)).toBe(1);
    expect(firstVisibleListPosition(240, Number.NaN, 800)).toBe(1);
    expect(firstVisibleListPosition(-50, LIST_ROW, 800)).toBe(1);
  });
});

describe('grid position indicator', () => {
  it('maps the first visible row to its first element', () => {
    expect(firstVisibleGridPosition(0, GRID_ROW, 5, 800)).toBe(1);
    expect(firstVisibleGridPosition(GRID_ROW - 1, GRID_ROW, 5, 800)).toBe(1);
    expect(firstVisibleGridPosition(GRID_ROW, GRID_ROW, 5, 800)).toBe(6);
    expect(firstVisibleGridPosition(GRID_ROW * 3 + 200, GRID_ROW, 5, 800)).toBe(16);
  });

  it('recomputes the position for every responsive column count', () => {
    const rowIndex = 4;
    for (const columns of [2, 3, 4, 5, 6]) {
      expect(firstVisibleGridPosition(GRID_ROW * rowIndex, GRID_ROW, columns, 800)).toBe(
        rowIndex * columns + 1
      );
    }
  });

  it('normalizes an invalid column count to a single column', () => {
    expect(firstVisibleGridPosition(GRID_ROW * 2, GRID_ROW, 0, 800)).toBe(3);
    expect(firstVisibleGridPosition(GRID_ROW * 2, GRID_ROW, Number.NaN, 800)).toBe(3);
    expect(firstVisibleGridPosition(GRID_ROW * 2, GRID_ROW, 3.7, 800)).toBe(7);
  });

  it('stays within the total when the last row is incomplete', () => {
    expect(firstVisibleGridPosition(GRID_ROW * 2, GRID_ROW, 5, 12)).toBe(11);
    expect(firstVisibleGridPosition(GRID_ROW * 2, GRID_ROW, 5, 11)).toBe(11);
    expect(firstVisibleGridPosition(GRID_ROW * 50, GRID_ROW, 5, 12)).toBe(12);
  });

  it('returns zero when the current category or filter is empty', () => {
    expect(firstVisibleGridPosition(GRID_ROW * 3, GRID_ROW, 5, 0)).toBe(0);
  });

  it('keeps a single-element grid at position one for every column count', () => {
    for (const columns of [2, 3, 4, 5, 6]) {
      expect(firstVisibleGridPosition(0, GRID_ROW, columns, 1)).toBe(1);
      expect(firstVisibleGridPosition(GRID_ROW * 7, GRID_ROW, columns, 1)).toBe(1);
    }
  });
});
