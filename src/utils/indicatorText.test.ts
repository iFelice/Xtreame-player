import { describe, expect, it } from 'vitest';
import { counterParts, idleCountSuffix } from './indicatorText';

describe('header position indicator text', () => {
  it('splits the counter into the green position and the grey total', () => {
    expect(counterParts(120, 800)).toEqual({ position: '120', total: ' / 800' });
    expect(counterParts(1, 1)).toEqual({ position: '1', total: ' / 1' });
  });

  it('clamps the counter inside the current list', () => {
    expect(counterParts(0, 800)).toEqual({ position: '1', total: ' / 800' });
    expect(counterParts(999, 800)).toEqual({ position: '800', total: ' / 800' });
    expect(counterParts(Number.NaN, 800)).toEqual({ position: '1', total: ' / 800' });
    expect(counterParts(4, 0)).toEqual({ position: '0', total: ' / 0' });
  });

  it('keeps the idle line identical to the previous wording', () => {
    expect(idleCountSuffix('canali')).toBe(' canali');
    expect(idleCountSuffix('film')).toBe(' film');
    expect(idleCountSuffix('serie TV')).toBe(' serie TV');
  });

  it('appends the active search query to the idle line', () => {
    expect(idleCountSuffix('canali', 'rai 1')).toBe(' canali per "rai 1"');
    expect(idleCountSuffix('film', 'dune')).toBe(' film per "dune"');
    expect(idleCountSuffix('serie TV', 'breaking')).toBe(' serie TV per "breaking"');
  });

  it('ignores a blank search query', () => {
    expect(idleCountSuffix('film', '')).toBe(' film');
    expect(idleCountSuffix('film', '   ')).toBe(' film');
    expect(idleCountSuffix('film', undefined)).toBe(' film');
  });
});
