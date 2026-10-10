export type MockProfile = 'small' | 'visual' | 'stress';

const profileSizes = {
  small: { categories: 3, vod: 12, live: 16, series: 5 },
  visual: { categories: 18, vod: 144, live: 220, series: 42 },
  stress: { categories: 100, vod: 5_000, live: 8_000, series: 1_000 },
} as const;

const titleSamples = [
  'Titolo breve',
  'Un titolo molto lungo per verificare correttamente troncamento e disposizione su più righe',
  'Città, accenti e apostrofi: L’ultima possibilità',
  '日本語 — Test internazionale',
  'Español: El viaje número 24',
  'Film senza valutazione',
  'Capitolo II — Il ritorno',
  'Documentario 4K UHD',
];

export function parseProfile(value?: string): MockProfile {
  return value === 'small' || value === 'stress' ? value : 'visual';
}

export function buildCatalog(profile: MockProfile, base: string) {
  const size = profileSizes[profile];
  const categories = Array.from({ length: size.categories }, (_, index) => ({
    category_id: String(100 + index),
    category_name: index === 0
      ? 'In evidenza'
      : index === 1
        ? 'Categoria con un nome volutamente molto lungo'
        : `Categoria visuale ${String(index + 1).padStart(2, '0')}`,
    parent_id: 0,
  }));

  const vod = Array.from({ length: size.vod }, (_, index) => ({
    num: index + 10,
    name: `${titleSamples[index % titleSamples.length]} #${index + 1}`,
    stream_type: 'movie',
    stream_id: 1_000 + index,
    stream_icon: index % 13 === 0
      ? ''
      : index % 17 === 0
        ? `${base}/assets/missing-${index}.jpg`
        : `${base}/assets/poster/${1_000 + index}.svg`,
    rating: index % 6 === 0 ? undefined : (5 + (index % 46) / 10).toFixed(1),
    category_id: categories[index % categories.length].category_id,
    container_extension: 'm3u8',
    year: index % 9 === 0 ? undefined : String(1980 + (index % 47)),
  }));

  const live = Array.from({ length: size.live }, (_, index) => ({
    num: index + 10,
    name: `${index % 7 === 0 ? 'Canale con denominazione molto estesa' : 'Canale demo'} ${index + 1}`,
    stream_type: 'live',
    stream_id: 2_000 + index,
    stream_icon: index % 11 === 0 ? '' : `${base}/assets/poster/${2_000 + index}.svg`,
    category_id: categories[index % categories.length].category_id,
    epg_channel_id: `demo.${index + 1}`,
    tv_archive: index % 4 === 0 ? 1 : 0,
    tv_archive_duration: index % 4 === 0 ? 7 : 0,
  }));

  const series = Array.from({ length: size.series }, (_, index) => ({
    num: index + 10,
    name: `${titleSamples[(index + 3) % titleSamples.length]} — Serie ${index + 1}`,
    series_id: 3_000 + index,
    cover: index % 12 === 0 ? '' : `${base}/assets/poster/${3_000 + index}.svg`,
    plot: 'Descrizione sintetica generata localmente per controllare spazi, allineamenti e testi lunghi.',
    genre: index % 2 ? 'Drammatico / Test' : 'Documentario / Demo',
    releaseDate: `${2000 + (index % 27)}-10-01`,
    rating: (6 + (index % 31) / 10).toFixed(1),
    category_id: categories[index % categories.length].category_id,
  }));

  return { categories, vod, live, series, size };
}

export function buildGeneratedSeriesInfo(seriesId: string, base: string) {
  const numericId = Number(seriesId) || 3_000;
  const seasonCount = 1 + (numericId % 5);
  const seasons = Array.from({ length: seasonCount }, (_, index) => ({
    season_number: index + 1,
    name: `Stagione ${index + 1}`,
    episode_count: 4 + ((numericId + index) % 9),
    cover: `${base}/assets/poster/${numericId}.svg`,
  }));
  const episodes = Object.fromEntries(seasons.map((season) => [
    String(season.season_number),
    Array.from({ length: season.episode_count }, (_, index) => ({
      id: String(10_000 + numericId * 100 + season.season_number * 20 + index),
      episode_num: index + 1,
      title: index % 4 === 0
        ? `Episodio ${index + 1} con un titolo molto lungo per collaudare la disposizione`
        : `Episodio ${index + 1}`,
      container_extension: 'm3u8',
      info: {
        duration: `00:${String(20 + (index % 35)).padStart(2, '0')}:00`,
        movie_image: index % 6 === 0 ? '' : `${base}/assets/poster/${numericId + index}.svg`,
        plot: 'Trama dimostrativa generata localmente.',
      },
    })),
  ]));
  return {
    seasons,
    info: {
      name: `Serie visuale ${seriesId}`,
      cover: `${base}/assets/poster/${numericId}.svg`,
      plot: 'Serie generata per verificare stagioni, episodi, testi e scorrimento.',
      genre: 'Test visuale',
      releaseDate: '2026-10-01',
      rating: '8.5',
    },
    episodes,
  };
}
