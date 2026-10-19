import React from 'react';
import { Tv, Film, Layers, Sparkles, Star } from 'lucide-react';
import { PlayableMediaItem } from '../types/xtream';

export type SectionTab = 'live' | 'movies' | 'series' | 'recent' | 'favorites';

interface MobileSectionBarProps {
  activeTab: SectionTab;
  onSelect: (tab: SectionTab) => void;
  activeMedia?: PlayableMediaItem | null;
}

const ITEMS: Array<{
  tab: SectionTab;
  label: string;
  Icon: React.ComponentType<{ className?: string }>;
  activeClass: string;
}> = [
  { tab: 'live', label: 'Live', Icon: Tv, activeClass: 'text-live' },
  { tab: 'movies', label: 'Film', Icon: Film, activeClass: 'text-accent' },
  { tab: 'series', label: 'Serie', Icon: Layers, activeClass: 'text-series' },
  { tab: 'recent', label: 'Novità', Icon: Sparkles, activeClass: 'text-fresh' },
  { tab: 'favorites', label: 'Preferiti', Icon: Star, activeClass: 'text-favorite' },
];

export const MobileSectionBar: React.FC<MobileSectionBarProps> = ({
  activeTab,
  onSelect,
  activeMedia = null,
}) => {
  if (activeMedia) return null;

  return (
    <nav
      aria-label="Sezioni"
      className="mobile-section-bar fixed bottom-0 left-0 right-0 z-40 bg-surface-1 border-t border-separator md:hidden"
      style={{ paddingBottom: 'env(safe-area-inset-bottom)' }}
    >
      <div className="flex h-14">
        {ITEMS.map(({ tab, label, Icon, activeClass }) => {
          const isActive = activeTab === tab;
          return (
            <button
              key={tab}
              type="button"
              onClick={() => onSelect(tab)}
              aria-current={isActive ? 'page' : undefined}
              className={`flex-1 min-w-[44px] min-h-[44px] flex flex-col items-center justify-center gap-1 py-2 transition cursor-pointer ${
                isActive ? activeClass : 'text-label-secondary'
              }`}
            >
              <Icon className="w-5 h-5 shrink-0" />
              <span className="text-[11px] font-bold leading-none truncate max-w-full">
                {label}
              </span>
            </button>
          );
        })}
      </div>
    </nav>
  );
};
