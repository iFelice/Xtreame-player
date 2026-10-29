import React from 'react';
import type { XtreamSeries, XtreamSeriesInfo } from '../types/xtream';
import { getSecureImageUrl } from '../utils/imageUrl';
import { normalizeSeriesInfo } from '../utils/seriesInfo';
import { ExpandablePlot } from './ExpandablePlot';
import { RemoteImage } from './RemoteImage';

export function SeriesInfoBlock({ info, series }: { info: XtreamSeriesInfo; series: XtreamSeries }) {
  const details = normalizeSeriesInfo(info.info, series.cover);
  if (!Object.values(details).some(Boolean)) return null;
  const fields = [
    ['Genere', details.genre], ['Anno', details.year], ['Cast', details.cast],
    ['Regia', details.director], ['Valutazione', details.rating],
  ];
  return (
    <section data-series-info className="flex items-start gap-4 border-b border-separator pb-5">
      {details.cover && (
        <RemoteImage src={getSecureImageUrl(details.cover)} alt={`Copertina di ${series.name}`} referrerPolicy="no-referrer" className="w-20 sm:w-32 aspect-[2/3] rounded-xl object-cover shrink-0" />
      )}
      <div className="min-w-0 space-y-3">
        {details.plot && <ExpandablePlot text={details.plot} lines={3} />}
        <dl className="space-y-1 text-xs sm:text-sm text-label-secondary">
          {fields.map(([label, value]) => value && <div key={label}><dt className="inline font-bold text-label">{label}: </dt><dd className="inline">{value}</dd></div>)}
        </dl>
      </div>
    </section>
  );
}
