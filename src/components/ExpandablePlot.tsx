import React, { useLayoutEffect, useRef, useState } from 'react';

/** Measure the clamped text itself, so the control appears only on overflow. */
export function ExpandablePlot({ text, lines }: { text: string; lines: 2 | 3 }) {
  const [expanded, setExpanded] = useState(false);
  const [overflow, setOverflow] = useState(false);
  const measureRef = useRef<HTMLParagraphElement>(null);

  useLayoutEffect(() => {
    const element = measureRef.current;
    if (!element) return;
    const measure = () => setOverflow(element.scrollHeight > element.clientHeight + 1);
    measure();
    const observer = typeof ResizeObserver === 'undefined' ? null : new ResizeObserver(measure);
    observer?.observe(element);
    window.addEventListener('resize', measure);
    return () => {
      observer?.disconnect();
      window.removeEventListener('resize', measure);
    };
  }, [text, lines]);

  const clamp: React.CSSProperties = { display: '-webkit-box', WebkitBoxOrient: 'vertical', WebkitLineClamp: lines, overflow: 'hidden' };
  return (
    <div className="text-xs sm:text-sm text-label-secondary min-w-0" data-expandable-plot>
      <div className="relative">
        <p style={expanded ? { whiteSpace: 'pre-line' } : { ...clamp, whiteSpace: 'pre-line' }}>{text}</p>
        <p ref={measureRef} aria-hidden="true" style={{ ...clamp, whiteSpace: 'pre-line', position: 'absolute', visibility: 'hidden', inset: 0, height: 'auto', pointerEvents: 'none' }}>{text}</p>
      </div>
      {(overflow || expanded) && (
        <button type="button" className="text-series font-semibold hover:underline cursor-pointer mt-1" aria-expanded={expanded} onClick={(event) => { event.stopPropagation(); setExpanded(!expanded); }}>
          {expanded ? 'Meno' : 'Altro'}
        </button>
      )}
    </div>
  );
}
