import { LG_KEY_BACK } from '../platform/tvBack';

/**
 * WebOS reports the physical Back button inconsistently in `key`, but its
 * documented keyCode is stable. Player-specific media commands live in PR2.
 */
export function isWebOsRemoteBackEvent(input: { key?: string; keyCode?: number | null }): boolean {
  return input.keyCode === LG_KEY_BACK || input.key === 'GoBack';
}
