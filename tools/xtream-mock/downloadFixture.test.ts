import { describe, expect, it } from 'vitest';
import { normalizeDownloadFixture } from './downloadFixture';

describe('optional download fixture', () => {
  it('converts a Drive viewer URL without storing a concrete user link', () => {
    const result = normalizeDownloadFixture('https://drive.google.com/file/d/example-id/view?usp=sharing');
    expect(result).toBe('https://drive.usercontent.google.com/download?id=example-id&export=download&confirm=t');
  });

  it('accepts direct HTTP media fixtures and rejects malformed protocols', () => {
    expect(normalizeDownloadFixture('https://example.test/video.mp4')).toBe('https://example.test/video.mp4');
    expect(normalizeDownloadFixture('file:///private/video.mp4')).toBeNull();
    expect(normalizeDownloadFixture('not-a-url')).toBeNull();
    expect(normalizeDownloadFixture()).toBeNull();
  });
});
