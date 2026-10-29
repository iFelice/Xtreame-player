import { afterEach, describe, expect, it, vi } from 'vitest';
import { shouldShowPipButton } from './pictureInPicture';

afterEach(() => vi.restoreAllMocks());

const videoWith = (support: boolean | 'throws' | undefined) => ({
  webkitSupportsPresentationMode: support === undefined
    ? undefined
    : (mode: string) => {
        if (support === 'throws') throw new Error('unsupported');
        return mode === 'picture-in-picture' ? support : false;
      },
});

describe('Picture-in-Picture button visibility', () => {
  it('keeps the button on every non-Apple platform', () => {
    expect(shouldShowPipButton(false, null)).toBe(true);
    expect(shouldShowPipButton(false, videoWith(false))).toBe(true);
    expect(shouldShowPipButton(false, videoWith(undefined))).toBe(true);
  });

  it('on Apple mobile follows webkitSupportsPresentationMode', () => {
    expect(shouldShowPipButton(true, videoWith(true))).toBe(true);
    expect(shouldShowPipButton(true, videoWith(false))).toBe(false);
  });

  it('hides the button on Apple mobile when the video element cannot answer', () => {
    expect(shouldShowPipButton(true, null)).toBe(false);
    expect(shouldShowPipButton(true, undefined)).toBe(false);
    expect(shouldShowPipButton(true, {})).toBe(false);
    expect(shouldShowPipButton(true, videoWith(undefined))).toBe(false);
  });

  it('does not trust document.pictureInPictureEnabled alone (WebKit bug 303885)', () => {
    // The buggy standalone state: the document flag is true, the video is not.
    const video = { ...videoWith(false), requestPictureInPicture: () => {} };
    expect(shouldShowPipButton(true, video)).toBe(false);
  });

  it('hides the button instead of throwing when the feature check throws', () => {
    expect(shouldShowPipButton(true, videoWith('throws'))).toBe(false);
  });
});
