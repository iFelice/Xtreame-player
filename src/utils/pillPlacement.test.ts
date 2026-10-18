import { describe, expect, it } from 'vitest';
import { PILL_EDGE_GAP, pillFixedPosition } from './pillPlacement';

const PILL = { width: 96, height: 26 };

describe('long list position pill placement', () => {
  it('keeps the pill at the bottom right of a fully visible container', () => {
    expect(
      pillFixedPosition({ top: 170, bottom: 800, left: 300, right: 1376 }, 900, PILL)
    ).toEqual({
      top: 800 - PILL_EDGE_GAP - PILL.height,
      left: 1376 - PILL_EDGE_GAP - PILL.width,
    });
  });

  it('lifts the pill to the window bottom when the container overflows it', () => {
    // TV 1920x1080: the panel spans 171-1106, well past the viewport.
    expect(
      pillFixedPosition({ top: 171, bottom: 1106, left: 420, right: 1880 }, 1080, PILL)
    ).toEqual({
      top: 1080 - PILL_EDGE_GAP - PILL.height,
      left: 1880 - PILL_EDGE_GAP - PILL.width,
    });

    // Desktop 1440x900: the panel spans 170-945, below the viewport.
    expect(
      pillFixedPosition({ top: 170, bottom: 945, left: 320, right: 1376 }, 900, PILL)
    ).toEqual({
      top: 900 - PILL_EDGE_GAP - PILL.height,
      left: 1376 - PILL_EDGE_GAP - PILL.width,
    });
  });

  it('follows a container that is cut at the top of the window', () => {
    expect(
      pillFixedPosition({ top: -120, bottom: 640, left: 40, right: 1200 }, 900, PILL)
    ).toEqual({
      top: 640 - PILL_EDGE_GAP - PILL.height,
      left: 1200 - PILL_EDGE_GAP - PILL.width,
    });
  });

  it('hides the pill when the container is outside the window', () => {
    // Entirely below the viewport.
    expect(
      pillFixedPosition({ top: 950, bottom: 1200, left: 200, right: 1200 }, 900, PILL)
    ).toBeNull();
    // Entirely above the viewport.
    expect(
      pillFixedPosition({ top: -400, bottom: -20, left: 200, right: 1200 }, 900, PILL)
    ).toBeNull();
    // Horizontally off screen.
    expect(
      pillFixedPosition({ top: 100, bottom: 600, left: -900, right: -200 }, 900, PILL)
    ).toBeNull();
    // Collapsed to zero height.
    expect(
      pillFixedPosition({ top: 300, bottom: 300, left: 200, right: 1200 }, 900, PILL)
    ).toBeNull();
  });

  it('keeps the pill on screen when only a thin slice of the container is visible', () => {
    expect(
      pillFixedPosition({ top: -500, bottom: 30, left: 0, right: 800 }, 900, PILL)
    ).toEqual({
      top: 0,
      left: 800 - PILL_EDGE_GAP - PILL.width,
    });
  });

  it('rejects unusable measurements', () => {
    const rect = { top: 0, bottom: 800, left: 0, right: 800 };
    expect(pillFixedPosition(rect, 0, PILL)).toBeNull();
    expect(pillFixedPosition(rect, Number.NaN, PILL)).toBeNull();
    expect(pillFixedPosition({ ...rect, top: Number.NaN }, 900, PILL)).toBeNull();
    expect(pillFixedPosition(rect, 900, { width: Number.NaN, height: 26 })).toBeNull();
    expect(pillFixedPosition(rect, 900, { width: 96, height: -1 })).toBeNull();
  });
});
