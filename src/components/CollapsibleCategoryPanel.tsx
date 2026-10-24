import React, { useEffect, useMemo, useRef, useState } from 'react';
import {
  Search,
  Layers,
  Tv,
  Film,
  ChevronUp,
  ChevronDown,
} from 'lucide-react';
import { XtreamCategory } from '../types/xtream';
import { isTvEnvironment } from '../utils/downloadHelper';
import { registerTvOverlay } from '../platform/tvOverlays';

export type CategoryAccent = 'live' | 'accent' | 'series';

interface CollapsibleCategoryPanelProps {
  categories: XtreamCategory[];
  selectedCategory: string;
  onSelectCategory: (categoryId: string) => void;
  categoryCounts: Record<string, number>;
  contentListRef: React.RefObject<HTMLDivElement | null>;
  accent: CategoryAccent;
  panelId: string;
}

const ACCENT_CONFIG: Record<
  CategoryAccent,
  {
    title: (count: number) => string;
    searchPlaceholder: string;
    focusBorder: string;
    selectedButton: string;
    selectedCount: string;
    widthClass: string;
    desktopIcon: React.ReactNode;
    mobileIcon: React.ReactNode;
    scrollUpTitle: string;
    scrollDownTitle: string;
  }
> = {
  live: {
    title: (count) => `Categorie (${count})`,
    searchPlaceholder: 'Filtra categorie...',
    focusBorder: 'focus:border-live',
    selectedButton: 'bg-live text-on-accent',
    selectedCount: 'bg-live text-on-accent',
    widthClass: 'lg:w-84',
    desktopIcon: <Layers className="w-6 h-6 text-live" />,
    mobileIcon: <Tv className="w-5 h-5 text-live shrink-0" />,
    scrollUpTitle: 'Scorri su (▲)',
    scrollDownTitle: 'Scorri giù (▼)',
  },
  accent: {
    title: (count) => `Categorie Film (${count})`,
    searchPlaceholder: 'Filtra categorie film...',
    focusBorder: 'focus:border-accent',
    selectedButton: 'bg-accent text-on-accent',
    selectedCount: 'bg-accent text-on-accent',
    widthClass: 'lg:w-80',
    desktopIcon: <Layers className="w-6 h-6 text-accent-strong" />,
    mobileIcon: <Film className="w-5 h-5 text-accent shrink-0" />,
    scrollUpTitle: 'Scorri categorie su (▲)',
    scrollDownTitle: 'Scorri categorie giù (▼)',
  },
  series: {
    title: (count) => `Categorie Serie (${count})`,
    searchPlaceholder: 'Filtra categorie serie...',
    focusBorder: 'focus:border-series',
    selectedButton: 'bg-series text-on-accent',
    selectedCount: 'bg-series text-on-accent',
    widthClass: 'lg:w-80',
    desktopIcon: <Layers className="w-6 h-6 text-series" />,
    mobileIcon: <Layers className="w-5 h-5 text-series shrink-0" />,
    scrollUpTitle: 'Scorri categorie su (▲)',
    scrollDownTitle: 'Scorri categorie giù (▼)',
  },
};

export const CollapsibleCategoryPanel: React.FC<CollapsibleCategoryPanelProps> = ({
  categories,
  selectedCategory,
  onSelectCategory,
  categoryCounts,
  contentListRef,
  accent,
  panelId,
}) => {
  const isTv = isTvEnvironment();
  const [isOpen, setIsOpen] = useState<boolean>(false);
  const [categorySearch, setCategorySearch] = useState<string>('');
  // Il pannello categorie aperto è il livello più basso da chiudere col
  // tasto Indietro del telecomando: si registra mentre è visibile.
  useEffect(() => {
    if (!isOpen) return;
    return registerTvOverlay('category-panel', () => setIsOpen(false));
  }, [isOpen]);

  const desktopListRef = useRef<HTMLDivElement | null>(null);
  const mobileListRef = useRef<HTMLDivElement | null>(null);

  const config = ACCENT_CONFIG[accent];

  const filteredCategories = useMemo(() => {
    if (!categorySearch.trim()) return categories;
    const q = categorySearch.toLowerCase();
    return categories.filter((c) => c.category_name.toLowerCase().includes(q));
  }, [categories, categorySearch]);

  const selectedName = useMemo(() => {
    return (
      categories.find((c) => String(c.category_id) === String(selectedCategory))
        ?.category_name ?? 'Seleziona categoria'
    );
  }, [categories, selectedCategory]);

  const selectedCount = categoryCounts[selectedCategory] ?? 0;

  const scrollDesktopCategories = (direction: 'up' | 'down') => {
    if (desktopListRef.current) {
      const delta = direction === 'up' ? -260 : 260;
      desktopListRef.current.scrollBy({ top: delta, behavior: 'smooth' });
    }
  };

  const handleMobileSelect = (categoryId: string) => {
    onSelectCategory(categoryId);
    setIsOpen(false);
    const content = contentListRef.current;
    if (content) {
      try {
        content.scrollTo({ top: 0 });
      } catch {
        // Fall through to direct assignment below.
      }
      content.scrollTop = 0;
    }
  };

  const handleDesktopSelect = (categoryId: string) => {
    onSelectCategory(categoryId);
  };

  return (
    <>
      {/* Mobile collapsible categories: hidden from md up and never rendered on TV. */}
      {!isTv && (
        <div className="mobile-category-panel md:hidden w-full">
          <button
            type="button"
            aria-expanded={isOpen}
            aria-controls={panelId}
            onClick={() => setIsOpen((value) => !value)}
            className="w-full flex items-center gap-2.5 px-4 py-3.5 rounded-2xl bg-surface-0/90 border border-separator text-label shadow-xl transition cursor-pointer min-h-[52px]"
          >
            <span className="shrink-0 flex items-center">{config.mobileIcon}</span>
            <span className="flex-1 min-w-0 truncate text-left text-sm sm:text-base font-bold">
              {selectedName}
            </span>
            <span className="text-xs font-bold px-2.5 py-0.5 rounded-full bg-surface-1 text-label-secondary shrink-0">
              {selectedCount}
            </span>
            <ChevronDown
              className={`w-5 h-5 text-label-secondary shrink-0 transition-transform ${isOpen ? 'rotate-180' : ''}`}
            />
          </button>

          {isOpen && (
            <div
              id={panelId}
              className="mt-2 bg-surface-0/90 border border-separator rounded-3xl p-4 shadow-xl"
            >
              <div className="relative">
                <Search className="w-5 h-5 absolute left-4 top-1/2 -translate-y-1/2 text-label-secondary" />
                <input
                  type="text"
                  value={categorySearch}
                  onChange={(e) => setCategorySearch(e.target.value)}
                  placeholder="Filtra categorie..."
                  aria-label="Filtra categorie"
                  className={`w-full pl-12 pr-4 py-3 bg-surface-0 border border-separator-strong/80 rounded-2xl text-sm font-medium text-label placeholder-label-tertiary focus:outline-hidden transition shadow-inner ${config.focusBorder}`}
                />
              </div>

              <div
                ref={mobileListRef}
                className="space-y-2 overflow-y-auto scroll-smooth pr-1.5 mt-3 max-h-[50vh]"
              >
                {filteredCategories.length === 0 ? (
                  <div className="py-10 text-center text-label-tertiary text-sm font-medium">
                    Nessuna categoria trovata
                  </div>
                ) : (
                  filteredCategories.map((cat) => {
                    const count = categoryCounts[cat.category_id] || 0;
                    const isSelected = String(cat.category_id) === String(selectedCategory);
                    return (
                      <button
                        key={cat.category_id}
                        onClick={() => handleMobileSelect(String(cat.category_id))}
                        className={`w-full text-left px-4 py-3 rounded-2xl text-sm font-bold flex items-center justify-between transition cursor-pointer group ${
                          isSelected
                            ? `${config.selectedButton} shadow-xl scale-[1.02]`
                            : 'text-label hover:bg-surface-1 hover:text-label bg-surface-0/40 border border-separator'
                        }`}
                      >
                        <span className="truncate pr-2">{cat.category_name}</span>
                        <span
                          className={`text-xs font-bold px-2.5 py-0.5 rounded-full shrink-0 ${
                            isSelected
                              ? config.selectedCount
                              : 'bg-surface-1 text-label-secondary group-hover:text-label'
                          }`}
                        >
                          {count}
                        </span>
                      </button>
                    );
                  })
                )}
              </div>
            </div>
          )}
        </div>
      )}

      {/* Desktop / TV sidebar: identical to the previous layout. */}
      <aside
        className={`media-category-panel w-full ${config.widthClass} xl:w-96 shrink-0 bg-surface-0/90 border border-separator rounded-3xl p-4 sm:p-5 ${isTv ? 'flex' : 'hidden md:flex'} flex-col shadow-xl h-[calc(100vh-210px)] min-h-[680px]`}
      >
        <div className="flex items-center justify-between px-1 shrink-0">
          <div className="flex items-center gap-2.5">
            {config.desktopIcon}
            <h3 className="text-base sm:text-lg font-black text-label tracking-wide uppercase">
              {config.title(categories.length)}
            </h3>
          </div>
          {/* Scroll Navigation Arrows for TV / Remote */}
          <div className="flex items-center gap-1">
            <button
              type="button"
              onClick={() => scrollDesktopCategories('up')}
              className="p-1.5 rounded-xl bg-surface-1 hover:bg-surface-2 text-label-secondary hover:text-label transition cursor-pointer shadow-xs"
              title={config.scrollUpTitle}
            >
              <ChevronUp className="w-4 h-4" />
            </button>
            <button
              type="button"
              onClick={() => scrollDesktopCategories('down')}
              className="p-1.5 rounded-xl bg-surface-1 hover:bg-surface-2 text-label-secondary hover:text-label transition cursor-pointer shadow-xs"
              title={config.scrollDownTitle}
            >
              <ChevronDown className="w-4 h-4" />
            </button>
          </div>
        </div>

        {/* Search Category */}
        <div className="relative shrink-0 mt-3">
          <Search className="w-5 h-5 absolute left-4 top-1/2 -translate-y-1/2 text-label-secondary" />
          <input
            type="text"
            value={categorySearch}
            onChange={(e) => setCategorySearch(e.target.value)}
            placeholder={config.searchPlaceholder}
            className={`w-full pl-12 pr-4 py-3 bg-surface-0 border border-separator-strong/80 rounded-2xl text-sm sm:text-base font-medium text-label placeholder-label-tertiary focus:outline-hidden transition shadow-inner ${config.focusBorder}`}
          />
        </div>

        {/* Scrollable Categories List taking full remaining height */}
        <div
          ref={desktopListRef}
          className="flex-1 min-h-0 space-y-2 overflow-y-auto scroll-smooth pr-1.5 mt-3"
        >
          {filteredCategories.length === 0 ? (
            <div className="py-10 text-center text-label-tertiary text-sm sm:text-base font-medium">
              Nessuna categoria trovata
            </div>
          ) : (
            filteredCategories.map((cat) => {
              const count = categoryCounts[cat.category_id] || 0;
              const isSelected = String(cat.category_id) === String(selectedCategory);
              return (
                <button
                  key={cat.category_id}
                  onClick={() => handleDesktopSelect(String(cat.category_id))}
                  className={`w-full text-left px-4 py-3 sm:py-3.5 rounded-2xl text-sm sm:text-base font-bold flex items-center justify-between transition cursor-pointer group ${
                    isSelected
                      ? `${config.selectedButton} shadow-xl scale-[1.02]`
                      : 'text-label hover:bg-surface-1 hover:text-label bg-surface-0/40 border border-separator'
                  }`}
                >
                  <span className="truncate pr-2">{cat.category_name}</span>
                  <span
                    className={`text-xs sm:text-sm font-bold px-2.5 py-0.5 rounded-full shrink-0 ${
                      isSelected
                        ? config.selectedCount
                        : 'bg-surface-1 text-label-secondary group-hover:text-label'
                    }`}
                  >
                    {count}
                  </span>
                </button>
              );
            })
          )}
        </div>
      </aside>
    </>
  );
};
