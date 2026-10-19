import { useEffect, useState } from 'react';
import { isTvEnvironment } from './downloadHelper';

/** Tailwind `md` starts at 768px: everything below is the mobile layout. */
export const MOBILE_BREAKPOINT = 768;

export function isMobileViewport(width: number, isTv: boolean): boolean {
  return !isTv && width < MOBILE_BREAKPOINT;
}

function currentViewportIsMobile(): boolean {
  if (typeof window === 'undefined') return false;
  return isMobileViewport(window.innerWidth, isTvEnvironment());
}

/** Reactive mobile check (width < 768px and not in TV mode). */
export function useIsMobileViewport(): boolean {
  const [isMobile, setIsMobile] = useState<boolean>(currentViewportIsMobile);

  useEffect(() => {
    if (typeof window === 'undefined') return;
    const query = window.matchMedia?.('(max-width: 767.98px)');
    const update = () => setIsMobile(currentViewportIsMobile());
    update();
    query?.addEventListener?.('change', update);
    window.addEventListener('resize', update);
    return () => {
      query?.removeEventListener?.('change', update);
      window.removeEventListener('resize', update);
    };
  }, []);

  return isMobile;
}
