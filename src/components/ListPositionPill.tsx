import React, { useEffect, useLayoutEffect, useMemo, useRef, useState } from 'react';
import { isTvEnvironment } from '../utils/downloadHelper';
import { columnsForViewport } from '../utils/gridColumns';
import { firstVisibleGridPosition, firstVisibleListPosition } from '../utils/listPosition';
import { pillFixedPosition } from '../utils/pillPlacement';
import type { FixedPoint } from '../utils/pillPlacement';

const DESKTOP_HIDE_DELAY_MS = 1000;
const TV_HIDE_DELAY_MS = 1500;
const UNPLACED = -9999;

interface ListPositionPillProps {
  /** Scrollable container of the media list (list or grid view). */
  scrollRef: React.RefObject<HTMLElement | null>;
  /** Number of elements of the current category or filter. */
  total: number;
  /** A grid counts rows with the responsive column count, a list has one column. */
  layout?: 'list' | 'grid';
  /** Overrides the automatic Smart TV detection (used by the TV navigation). */
  isTv?: boolean;
}

interface PillState extends FixedPoint {
  position: number;
  visible: boolean;
}

const HIDDEN_STATE: PillState = { position: 0, visible: false, top: UNPLACED, left: UNPLACED };

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
  // rows measured by the virtualizer, so the pill never depends on hard-coded
  // card sizes.
  const rowExtent = container.scrollHeight / rowCount;
  return columns > 1
    ? firstVisibleGridPosition(container.scrollTop, rowExtent, columns, total)
    : firstVisibleListPosition(container.scrollTop, rowExtent, total);
}

/**
 * Viewport position of the pill, anchored to the visible part of the scroll
 * container. Returns null when the container has no visible slice.
 */
function measurePill(container: HTMLElement, pill: HTMLElement): FixedPoint | null {
  const containerRect = container.getBoundingClientRect();
  const pillRect = pill.getBoundingClientRect();
  return pillFixedPosition(
    {
      top: containerRect.top,
      bottom: containerRect.bottom,
      left: containerRect.left,
      right: containerRect.right,
    },
    window.innerHeight,
    { width: pillRect.width, height: pillRect.height }
  );
}

/**
 * Floating "N / Totale" pill for long Live, Movies and Series lists.
 *
 * The component owns its state and listens to the scroll container itself:
 * scrolling never re-renders the catalog, only this small pill, at most once
 * per animation frame. On a Smart TV it follows the focused item instead and
 * stays visible a little longer after the last D-pad movement.
 *
 * The pill uses `position: fixed` and is placed against the visible slice of
 * the scroll container: the catalog panels are taller than the window, so
 * anchoring it to the panel bottom would push it off screen.
 */
export const ListPositionPill: React.FC<ListPositionPillProps> = ({
  scrollRef,
  total,
  layout = 'list',
  isTv,
}) => {
  const viewportColumns = useViewportColumns();
  const columns = layout === 'grid' ? viewportColumns : 1;
  const tv = useMemo(() => isTv ?? isTvEnvironment(), [isTv]);
  const pillRef = useRef<HTMLDivElement | null>(null);
  const frameRef = useRef<number | null>(null);
  const hideTimerRef = useRef<number | null>(null);
  const [state, setState] = useState<PillState>(HIDDEN_STATE);

  // A new category or filter starts from a hidden, unplaced indicator.
  useEffect(() => {
    if (hideTimerRef.current !== null) {
      window.clearTimeout(hideTimerRef.current);
      hideTimerRef.current = null;
    }
    setState((previous) => (previous === HIDDEN_STATE ? previous : HIDDEN_STATE));
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
        setState((previous) => (previous.visible ? { ...previous, visible: false } : previous));
      }, delay);
    };

    // Single coalesced update: position of the pill and, when the user moved
    // the list (or the D-pad), the "N / Totale" value.
    const flush = () => {
      frameRef.current = null;
      if (disposed) return;

      const focused = focusedPosition;
      const reveal = revealRequested || focused !== null;
      revealRequested = false;
      focusedPosition = null;

      const pill = pillRef.current;
      const coordinates = pill ? measurePill(container, pill) : null;
      const nextPosition =
        focused ?? (reveal ? currentScrollPosition(container, columns, total) : null);

      setState((previous) => {
        const position = nextPosition === null ? previous.position : nextPosition;
        // The pill stays hidden while the container is outside the window.
        const visible = coordinates !== null && position > 0 && (reveal || previous.visible);
        const top = coordinates === null ? previous.top : coordinates.top;
        const left = coordinates === null ? previous.left : coordinates.left;
        if (
          previous.position === position &&
          previous.visible === visible &&
          previous.top === top &&
          previous.left === left
        ) {
          return previous;
        }
        return { position, visible, top, left };
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

    // Window scroll and resize only refresh the coordinates: they never reveal
    // a hidden pill on their own.
    const handleViewportChange = () => {
      schedule();
    };

    if (tv) {
      container.addEventListener('focusin', handleFocusIn);
    } else {
      container.addEventListener('scroll', handleScroll, { passive: true });
    }
    window.addEventListener('scroll', handleViewportChange, { passive: true });
    window.addEventListener('resize', handleViewportChange);

    // Place the pill before its first appearance, so the fade-in starts at the
    // correct spot.
    schedule();

    return () => {
      disposed = true;
      if (frameRef.current !== null) {
        window.cancelAnimationFrame(frameRef.current);
        frameRef.current = null;
      }
      container.removeEventListener('scroll', handleScroll);
      container.removeEventListener('focusin', handleFocusIn);
      window.removeEventListener('scroll', handleViewportChange);
      window.removeEventListener('resize', handleViewportChange);
    };
  }, [scrollRef, total, columns, tv]);

  // The width of the pill changes with the number of digits: once the new
  // "N / Totale" is in the DOM, re-measure it before paint and realign the
  // right edge.
  useLayoutEffect(() => {
    if (!state.visible) return;
    const container = scrollRef.current;
    const pill = pillRef.current;
    if (!container || !pill) return;

    const coordinates = measurePill(container, pill);
    if (coordinates === null) {
      setState((previous) => (previous.visible ? { ...previous, visible: false } : previous));
      return;
    }
    setState((previous) =>
      previous.top === coordinates.top && previous.left === coordinates.left
        ? previous
        : { ...previous, top: coordinates.top, left: coordinates.left }
    );
  }, [state.visible, state.position, state.top, state.left, scrollRef, total]);

  if (total <= 0) return null;

  return (
    <div
      ref={pillRef}
      aria-hidden={!state.visible}
      className={`pointer-events-none fixed z-40 inline-flex select-none items-center gap-1 rounded-full border border-white/15 bg-zinc-900/75 px-2.5 py-1 text-[11px] font-bold shadow-lg backdrop-blur-md transition-opacity duration-300 ease-out sm:text-xs ${
        state.visible ? 'opacity-100' : 'opacity-0'
      }`}
      style={{ top: state.top, left: state.left, fontVariantNumeric: 'tabular-nums' }}
    >
      <span style={{ color: '#10B981' }}>{state.position}</span>
      <span className="text-zinc-300/90">/ {total}</span>
    </div>
  );
};
