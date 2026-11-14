import { describe, expect, it } from 'vitest';
import { isWebOsRemoteBackEvent } from './webosRemote';

describe('webOS remote normalization', () => {
  it('recognises the real LG Back event by keyCode and its GoBack fallback', () => {
    expect(isWebOsRemoteBackEvent({ key: 'Unidentified', keyCode: 461 })).toBe(true);
    expect(isWebOsRemoteBackEvent({ key: 'GoBack' })).toBe(true);
    expect(isWebOsRemoteBackEvent({ key: 'Escape', keyCode: 27 })).toBe(false);
  });
});
