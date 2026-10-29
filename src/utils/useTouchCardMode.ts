import { useEffect, useState } from 'react';
import { isTouchCardMode, isTouchDevice } from './touchDevice';

/**
 * True on a touch-only device that is not in TV mode. The media query is
 * re-read on mount and whenever the TV flag changes, so a rotated device or a
 * late `tv-mode` switch always matches the rendered cards.
 */
export function useTouchCardMode(isTv: boolean): boolean {
  const [touchCardMode, setTouchCardMode] = useState<boolean>(() => isTouchCardMode(isTouchDevice(), isTv));

  useEffect(() => {
    setTouchCardMode(isTouchCardMode(isTouchDevice(), isTv));
  }, [isTv]);

  return touchCardMode;
}
