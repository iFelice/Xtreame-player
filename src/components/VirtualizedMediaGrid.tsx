import React, { useEffect, useLayoutEffect, useRef, useState } from 'react';
import { useVirtualizer } from '@tanstack/react-virtual';
import { columnsForViewport } from '../utils/gridColumns';

interface VirtualizedMediaGridProps<T> {
  items: T[];
  scrollRef: React.RefObject<HTMLElement | null>;
  getKey: (item: T) => React.Key;
  /** The second argument is the absolute index of the item in the grid. */
  renderItem: (item: T, index: number) => React.ReactNode;
}

/**
 * Keeps only the visible media rows in the DOM. A large category therefore
 * renders a few dozen cards rather than hundreds of image-heavy cards.
 */
export function VirtualizedMediaGrid<T>({
  items,
  scrollRef,
  getKey,
  renderItem,
}: VirtualizedMediaGridProps<T>) {
  const containerRef = useRef<HTMLDivElement | null>(null);
  const [columns, setColumns] = useState(() =>
    columnsForViewport(typeof window === 'undefined' ? 1024 : window.innerWidth)
  );
  const [containerWidth, setContainerWidth] = useState(800);
  const rowCount = Math.ceil(items.length / columns);
  const gap = typeof window !== 'undefined' && window.innerWidth >= 640 ? 20 : 16;
  const estimatedCardWidth = Math.max(120, (containerWidth - gap * (columns - 1)) / columns);
  const estimatedRowHeight = estimatedCardWidth * 1.5 + 82 + gap;

  const virtualizer = useVirtualizer({
    count: rowCount,
    getScrollElement: () => scrollRef.current,
    estimateSize: () => estimatedRowHeight,
    overscan: 2,
    getItemKey: (rowIndex) => {
      const firstItem = items[rowIndex * columns];
      return firstItem ? String(getKey(firstItem)) : rowIndex;
    },
  });

  useEffect(() => {
    const updateColumns = () => setColumns(columnsForViewport(window.innerWidth));
    updateColumns();
    window.addEventListener('resize', updateColumns);
    return () => window.removeEventListener('resize', updateColumns);
  }, []);

  useLayoutEffect(() => {
    const element = containerRef.current;
    if (!element) return;
    const observer = new ResizeObserver(([entry]) => setContainerWidth(entry.contentRect.width));
    observer.observe(element);
    setContainerWidth(element.getBoundingClientRect().width);
    return () => observer.disconnect();
  }, []);

  useLayoutEffect(() => {
    virtualizer.measure();
  }, [columns, containerWidth, items.length, virtualizer]);

  return (
    <div
      ref={containerRef}
      className="relative w-full"
      style={{ height: `${virtualizer.getTotalSize()}px`, contain: 'layout style' }}
    >
      {virtualizer.getVirtualItems().map((virtualRow) => {
        const start = virtualRow.index * columns;
        const rowItems = items.slice(start, start + columns);
        return (
          <div
            key={virtualRow.key}
            ref={virtualizer.measureElement}
            data-index={virtualRow.index}
            className="absolute top-0 left-0 w-full grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 xl:grid-cols-5 2xl:grid-cols-6 gap-4 sm:gap-5 pb-4 sm:pb-5"
            style={{ transform: `translateY(${virtualRow.start}px)` }}
          >
            {rowItems.map((item, offset) => (
              <React.Fragment key={getKey(item)}>
                {renderItem(item, start + offset)}
              </React.Fragment>
            ))}
          </div>
        );
      })}
    </div>
  );
}
