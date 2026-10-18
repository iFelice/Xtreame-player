import React, { useEffect, useMemo, useState } from 'react';
import { isTvEnvironment } from '../utils/downloadHelper';
import { columnsForViewport } from '../utils/gridColumns';
import { firstVisibleGridPosition, firstVisibleListPosition } from '../utils/listPosition';

const DESKTOP_HIDE_DELAY_MS = 1000;
const TV_HIDE_DELAY_MS = 1500;

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

interface PillState {
  position: number;
  visible: boolean;
}

const HIDDEN_STATE: PillState = { position: 0, visible: false };

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

/**
 * Floating "N / Totale" pill for long Live, Movies and Series lists.
 *
 * The component owns its state and listens to the scroll container itself:
 * scrolling never re-renders the catalog, only this small pill, at most once
 * per animation frame. On a Smart TV it follows the focused item instead and
 * stays visible a little longer after the last D-pad movement.
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
  const [state, setState] = useState<PillState>(HIDDEN_STATE);

  useEffect(() => {
    const container = scrollRef.current;

    // A new category, filter or layout starts from a hidden, fresh indicator.
    setState((previous) =>
      previous.position === 0 && !previous.visible ? previous : HIDDEN_STATE
    );

    if (!container || total <= 0) return;

    let hideTimer: number | null = null;
    let frame: number | null = null;
    let disposed = false;

    const commit = (position: number) => {
      const safePosition = Math.min(total, Math.max(0, Math.floor(position)));
      const visible = safePosition > 0;
      setState((previous) =>
        previous.position === safePosition && previous.visible === visible
          ? previous
          : { position: safePosition, visible }
      );
    };

    const hideLater = (delay: number) => {
      if (hideTimer !== null) window.clearTimeout(hideTimer);
      hideTimer = window.setTimeout(() => {
        hideTimer = null;
        setState((previous) =>
          previous.visible ? { ...previous, visible: false } : previous
        );
      }, delay);
    };

    const currentPosition = () => {
      const rowCount = Math.ceil(total / columns);
      if (rowCount <= 0) return 0;
      // scrollHeight is the real measured height of the content, including
      // the rows measured by the virtualizer, so the pill never depends on
      // hard-coded card sizes.
      const rowExtent = container.scrollHeight / rowCount;
      return columns > 1
        ? firstVisibleGridPosition(container.scrollTop, rowExtent, columns, total)
        : firstVisibleListPosition(container.scrollTop, rowExtent, total);
    };

    const paint = () => {
      frame = null;
      if (disposed) return;
      commit(currentPosition());
      hideLater(DESKTOP_HIDE_DELAY_MS);
    };

    const handleScroll = () => {
      if (frame === null) frame = window.requestAnimationFrame(paint);
    };

    const handleFocusIn = (event: FocusEvent) => {
      const target =
        event.target instanceof Element
          ? event.target.closest<HTMLElement>('[data-media-index]')
          : null;
      if (!target || !container.contains(target)) return;

      const position = Number(target.dataset.mediaIndex);
      if (!Number.isFinite(position) || position <= 0) return;

      commit(position);
      hideLater(TV_HIDE_DELAY_MS);
    };

    if (tv) {
      container.addEventListener('focusin', handleFocusIn);
    } else {
      container.addEventListener('scroll', handleScroll, { passive: true });
    }

    return () => {
      disposed = true;
      if (frame !== null) window.cancelAnimationFrame(frame);
      if (hideTimer !== null) window.clearTimeout(hideTimer);
      container.removeEventListener('scroll', handleScroll);
      container.removeEventListener('focusin', handleFocusIn);
    };
  }, [scrollRef, total, columns, tv]);

  if (total <= 0) return null;

  return (
    <div
      aria-hidden={!state.visible}
      className={`pointer-events-none absolute right-2 bottom-2 z-40 inline-flex select-none items-center gap-1 rounded-full border border-white/15 bg-zinc-900/75 px-2.5 py-1 text-[11px] font-bold shadow-lg backdrop-blur-md transition-opacity duration-300 ease-out sm:right-3 sm:bottom-2.5 sm:text-xs ${
        state.visible ? 'opacity-100' : 'opacity-0'
      }`}
      style={{ fontVariantNumeric: 'tabular-nums' }}
    >
      <span style={{ color: '#10B981' }}>{state.position}</span>
      <span className="text-zinc-300/90">/ {total}</span>
    </div>
  );
};
