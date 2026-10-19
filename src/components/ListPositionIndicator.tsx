import React, { useEffect, useMemo, useRef, useState } from 'react';
import { isTvEnvironment } from '../utils/downloadHelper';
import { columnsForViewport } from '../utils/gridColumns';
import { counterParts, idleCountSuffix } from '../utils/indicatorText';
import { firstVisibleGridPosition, firstVisibleListPosition } from '../utils/listPosition';

const DESKTOP_HIDE_DELAY_MS = 1000;
const TV_HIDE_DELAY_MS = 1500;

interface ListPositionIndicatorProps {
  /** Scrollable container of the media list (list or grid view). */
  scrollRef: React.RefObject<HTMLElement | null>;
  /** Number of elements of the current category or filter. */
  total: number;
  /** Plural noun of the idle line: "canali", "film", "serie TV". */
  label: string;
  /** Active search inside the category, appended to the idle line. */
  searchQuery?: string;
  /** A grid counts rows with the responsive column count, a list has one column. */
  layout?: 'list' | 'grid';
  /** Overrides the automatic Smart TV detection (used by the TV navigation). */
  isTv?: boolean;
}

interface IndicatorState {
  position: number;
  active: boolean;
}

const IDLE_STATE: IndicatorState = { position: 0, active: false };

/** Keeps the grid column count in sync with the breakpoints of VirtualizedMediaGrid. */
function useViewportColumns(): number {
  const [columns, setColumns] = useState(() =>
    columnsForViewport(typeof window === 'undefined' ? 1024 : window.innerWidth)
  );

  useEffect(() => {
    const update = () => setColumns(columnsForViewport(window.innerWidth));
    update();
    window.addEventListener('resize', update);
    return () => window.removeEventListener('resize', update);
  }, []);

  return columns;
}

function currentScrollPosition(container: HTMLElement, columns: number, total: number): number {
  const rowCount = Math.ceil(total / columns);
  if (rowCount <= 0) return 0;
  // scrollHeight is the real measured height of the content, including the
  // rows measured by the virtualizer, so the position never depends on
  // hard-coded card sizes.
  const rowExtent = container.scrollHeight / rowCount;
  return columns > 1
    ? firstVisibleGridPosition(container.scrollTop, rowExtent, columns, total)
    : firstVisibleListPosition(container.scrollTop, rowExtent, total);
}

/**
 * Position indicator of the long Live, Movies and Series lists.
 *
 * It lives in the panel header, where the idle "Mostrando N ..." line is, and
 * replaces that line with "N / Totale" while the list moves. Both texts are
 * stacked in the same grid cell, so swapping them never shifts the header.
 *
 * The component owns its state and listens to the scroll container itself:
 * scrolling never re-renders the catalog, only this line, at most once per
 * animation frame. On a Smart TV it follows the focused item instead and stays
 * on screen a little longer after the last D-pad movement.
 */
export const ListPositionIndicator: React.FC<ListPositionIndicatorProps> = ({
  scrollRef,
  total,
  label,
  searchQuery,
  layout = 'list',
  isTv,
}) => {
  const viewportColumns = useViewportColumns();
  const columns = layout === 'grid' ? viewportColumns : 1;
  const tv = useMemo(() => isTv ?? isTvEnvironment(), [isTv]);
  const frameRef = useRef<number | null>(null);
  const hideTimerRef = useRef<number | null>(null);
  const [state, setState] = useState<IndicatorState>(IDLE_STATE);

  // A new category or filter goes back to the idle line.
  useEffect(() => {
    if (hideTimerRef.current !== null) {
      window.clearTimeout(hideTimerRef.current);
      hideTimerRef.current = null;
    }
    setState((previous) => (previous === IDLE_STATE ? previous : IDLE_STATE));
  }, [scrollRef, total, tv]);

  // Cancel the pending frame/timer when the catalog is unmounted.
  useEffect(
    () => () => {
      if (frameRef.current !== null) window.cancelAnimationFrame(frameRef.current);
      if (hideTimerRef.current !== null) window.clearTimeout(hideTimerRef.current);
    },
    []
  );

  useEffect(() => {
    const container = scrollRef.current;
    if (!container || total <= 0) return;

    let disposed = false;
    let revealRequested = false;
    let focusedPosition: number | null = null;

    const hideLater = (delay: number) => {
      if (hideTimerRef.current !== null) window.clearTimeout(hideTimerRef.current);
      hideTimerRef.current = window.setTimeout(() => {
        hideTimerRef.current = null;
        setState((previous) => (previous.active ? { ...previous, active: false } : previous));
      }, delay);
    };

    // Single coalesced update per animation frame.
    const flush = () => {
      frameRef.current = null;
      if (disposed) return;

      const focused = focusedPosition;
      const reveal = revealRequested || focused !== null;
      revealRequested = false;
      focusedPosition = null;

      const nextPosition =
        focused ?? (reveal ? currentScrollPosition(container, columns, total) : null);

      setState((previous) => {
        const position = nextPosition === null ? previous.position : nextPosition;
        const active = position > 0 && (reveal || previous.active);
        return previous.position === position && previous.active === active
          ? previous
          : { position, active };
      });

      if (reveal) hideLater(tv ? TV_HIDE_DELAY_MS : DESKTOP_HIDE_DELAY_MS);
    };

    const schedule = () => {
      if (frameRef.current === null) frameRef.current = window.requestAnimationFrame(flush);
    };

    const handleScroll = () => {
      revealRequested = true;
      schedule();
    };

    const handleFocusIn = (event: FocusEvent) => {
      const target =
        event.target instanceof Element
          ? event.target.closest<HTMLElement>('[data-media-index]')
          : null;
      if (!target || !container.contains(target)) return;

      const position = Number(target.dataset.mediaIndex);
      if (!Number.isFinite(position) || position <= 0) return;

      focusedPosition = Math.min(total, Math.max(1, Math.floor(position)));
      schedule();
    };

    if (tv) {
      container.addEventListener('focusin', handleFocusIn);
    } else {
      container.addEventListener('scroll', handleScroll, { passive: true });
    }

    return () => {
      disposed = true;
      if (frameRef.current !== null) {
        window.cancelAnimationFrame(frameRef.current);
        frameRef.current = null;
      }
      container.removeEventListener('scroll', handleScroll);
      container.removeEventListener('focusin', handleFocusIn);
    };
  }, [scrollRef, total, columns, tv]);

  const counter = counterParts(state.position, total);

  return (
    <p aria-live="off" className="mt-1 text-xs sm:text-sm text-label-secondary font-medium">
      {/* Both texts share the same grid cell: the line keeps the size of the
          wider/taller one, so the header never moves when they swap. */}
      <span className="inline-grid min-w-40 max-w-full align-top">
        <span
          aria-hidden={state.active}
          className={`col-start-1 row-start-1 transition-opacity duration-300 ease-out ${
            state.active ? 'opacity-0' : 'opacity-100'
          }`}
        >
          Mostrando <strong className="text-label">{total}</strong>
          {idleCountSuffix(label, searchQuery)}
        </span>
        <span
          aria-hidden={!state.active}
          className={`col-start-1 row-start-1 whitespace-nowrap transition-opacity duration-300 ease-out ${
            state.active ? 'opacity-100' : 'opacity-0'
          }`}
          style={{ fontVariantNumeric: 'tabular-nums' }}
        >
          <span style={{ color: '#10B981' }}>{counter.position}</span>
          <span className="text-label-secondary/90">{counter.total}</span>
        </span>
      </span>
    </p>
  );
};
