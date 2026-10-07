import express, { Request, Response } from 'express';
import { buildCatalog, buildGeneratedSeriesInfo, parseProfile } from './catalog';
import { loadPublicTestStreams, publicStreamUrl } from './publicPlaylist';

const app = express();
const port = Number(process.env.XTREAM_MOCK_PORT || 3333);
const host = process.env.XTREAM_MOCK_HOST || '0.0.0.0';
const DEMO_USER = 'demo';
const DEMO_PASSWORD = 'demo';
const profile = parseProfile(process.env.XTREAM_MOCK_PROFILE);
const includePublicPlaylist = process.env.XTREAM_MOCK_PUBLIC_PLAYLIST === '1';

const publicBase = (req: Request) => `${req.protocol}://${req.get('host')}`;
const isAuthorized = (req: Request) =>
  req.query.username === DEMO_USER && req.query.password === DEMO_PASSWORD;

app.disable('x-powered-by');
app.use((_req, res, next) => {
  res.setHeader('Access-Control-Allow-Origin', '*');
  res.setHeader('Access-Control-Allow-Headers', 'Content-Type, Range');
  res.setHeader('Cache-Control', 'no-store');
  next();
});

app.get('/health', (_req, res) => {
  res.json({ status: 'ok', service: 'xtream-player-mock', version: 1 });
});

app.get('/assets/poster/:id.svg', (req, res) => {
  const label = String(req.params.id).replace(/[^a-z0-9 -]/gi, '').slice(0, 24) || 'DEMO';
  const colors: Record<string, [string, string]> = {
    '201': ['#064e3b', '#34d399'],
    '202': ['#1e3a8a', '#60a5fa'],
    '203': ['#7f1d1d', '#fb7185'],
    '301': ['#4c1d95', '#c084fc'],
    live: ['#881337', '#fb7185'],
  };
  const hue = [...label].reduce((sum, char) => sum + char.charCodeAt(0), 0) % 360;
  const [background, accent] = colors[label] || [`hsl(${hue} 55% 18%)`, `hsl(${hue} 80% 68%)`];
  res.type('image/svg+xml').send(`
    <svg xmlns="http://www.w3.org/2000/svg" width="600" height="900" viewBox="0 0 600 900">
      <rect width="600" height="900" fill="${background}"/>
      <circle cx="300" cy="340" r="150" fill="none" stroke="${accent}" stroke-width="24"/>
      <path d="M265 260l130 80-130 80z" fill="${accent}"/>
      <text x="300" y="650" fill="white" text-anchor="middle" font-family="sans-serif" font-size="52" font-weight="700">XTREAM</text>
      <text x="300" y="715" fill="${accent}" text-anchor="middle" font-family="sans-serif" font-size="38">${label}</text>
      <text x="300" y="800" fill="#d4d4d8" text-anchor="middle" font-family="sans-serif" font-size="24">CONTENUTO DI PROVA</text>
    </svg>`);
});

app.get('/player_api.php', async (req, res) => {
  if (!isAuthorized(req)) {
    return res.status(200).json({
      user_info: { auth: 0, status: 'Disabled', message: 'Credenziali demo non valide' },
    });
  }

  const base = publicBase(req);
  const action = String(req.query.action || '');

  if (!action) {
    return res.json({
      user_info: {
        username: DEMO_USER,
        password: DEMO_PASSWORD,
        auth: 1,
        status: 'Active',
        exp_date: null,
        is_trial: '1',
        active_cons: 0,
        max_connections: 1,
        created_at: '1790812800',
        allowed_output_formats: ['m3u8', 'ts', 'mp4'],
      },
      server_info: {
        url: req.hostname,
        port: String(port),
        server_protocol: req.protocol,
        timezone: 'Europe/Rome',
        time_now: new Date().toISOString(),
        timestamp_now: Math.floor(Date.now() / 1000),
      },
    });
  }

  const generated = buildCatalog(profile, base);

  if (action === 'get_live_categories') {
    return res.json([
      { category_id: '1', category_name: 'Canali demo player', parent_id: 0 },
      ...(includePublicPlaylist ? [{ category_id: '900', category_name: 'IPTV-org — test pubblico', parent_id: 0 }] : []),
      ...generated.categories,
    ]);
  }

  if (action === 'get_live_streams') {
    let publicStreams: Awaited<ReturnType<typeof loadPublicTestStreams>> = [];
    if (includePublicPlaylist) {
      try {
        publicStreams = await loadPublicTestStreams();
      } catch (error) {
        console.warn('Playlist pubblica non caricata:', error instanceof Error ? error.message : error);
      }
    }
    return res.json([
      {
        num: 1,
        name: 'Live HLS dimostrativo',
        stream_type: 'live',
        stream_id: 101,
        stream_icon: `${base}/assets/poster/live.svg`,
        category_id: '1',
        epg_channel_id: 'demo.live',
      },
      {
        num: 2,
        name: 'Live non disponibile',
        stream_type: 'live',
        stream_id: 103,
        stream_icon: `${base}/assets/poster/203.svg`,
        category_id: '1',
      },
      ...publicStreams.map(({ direct_source: _source, ...stream }) => stream),
      ...generated.live,
    ]);
  }

  if (action === 'get_vod_categories') {
    return res.json([
      { category_id: '10', category_name: 'Test del player', parent_id: 0 },
      ...generated.categories,
    ]);
  }

  if (action === 'get_vod_streams') {
    return res.json([
      {
        num: 1,
        name: 'Big Buck Bunny — Demo',
        stream_type: 'movie',
        stream_id: 201,
        stream_icon: `${base}/assets/poster/201.svg`,
        rating: '8.0',
        category_id: '10',
        container_extension: 'mp4',
        year: '2008',
      },
      {
        num: 2,
        name: 'Avvio lento — Demo',
        stream_type: 'movie',
        stream_id: 202,
        stream_icon: `${base}/assets/poster/202.svg`,
        rating: '7.0',
        category_id: '10',
        container_extension: 'mp4',
        year: '2026',
      },
      {
        num: 3,
        name: 'Contenuto offline — Demo',
        stream_type: 'movie',
        stream_id: 203,
        stream_icon: `${base}/assets/poster/203.svg`,
        category_id: '10',
        container_extension: 'mp4',
        year: '2026',
      },
      ...generated.vod,
    ]);
  }

  if (action === 'get_vod_info') {
    const id = String(req.query.vod_id || '201');
    const names: Record<string, string> = {
      '201': 'Big Buck Bunny — Demo',
      '202': 'Avvio lento — Demo',
      '203': 'Contenuto offline — Demo',
    };
    return res.json({
      info: {
        name: names[id] || 'Film demo',
        movie_image: `${base}/assets/poster/${id}.svg`,
        cover_big: `${base}/assets/poster/${id}.svg`,
        releasedate: '2026-10-01',
        duration_secs: 596,
        duration: '00:09:56',
        rating: '8.0',
        genre: 'Animazione / Test',
        plot: 'Contenuto dimostrativo usato esclusivamente per collaudare Xtream Player.',
      },
      movie_data: {
        stream_id: id,
        name: names[id] || 'Film demo',
        container_extension: 'mp4',
      },
    });
  }

  if (action === 'get_series_categories') {
    return res.json([
      { category_id: '20', category_name: 'Test del player', parent_id: 0 },
      ...generated.categories,
    ]);
  }

  if (action === 'get_series') {
    return res.json([
      {
        num: 1,
        name: 'Serie di collaudo',
        series_id: 301,
        cover: `${base}/assets/poster/301.svg`,
        plot: 'Due stagioni ed episodi dimostrativi per verificare navigazione e player.',
        genre: 'Test',
        releaseDate: '2026-10-01',
        rating: '9.0',
        category_id: '20',
      },
      ...generated.series,
    ]);
  }

  if (action === 'get_series_info') {
    const requestedSeriesId = String(req.query.series_id || '301');
    if (requestedSeriesId !== '301') return res.json(buildGeneratedSeriesInfo(requestedSeriesId, base));
    return res.json({
      seasons: [
        { season_number: 1, name: 'Stagione 1', episode_count: 2, cover: `${base}/assets/poster/301.svg` },
        { season_number: 2, name: 'Stagione 2', episode_count: 1, cover: `${base}/assets/poster/301.svg` },
      ],
      info: {
        name: 'Serie di collaudo',
        cover: `${base}/assets/poster/301.svg`,
        plot: 'Serie locale di prova, senza account o contenuti privati.',
        genre: 'Test',
        releaseDate: '2026-10-01',
        rating: '9.0',
      },
      episodes: {
        '1': [
          { id: '401', episode_num: 1, title: 'Episodio funzionante', container_extension: 'mp4', info: { duration: '00:09:56', movie_image: `${base}/assets/poster/301.svg` } },
          { id: '402', episode_num: 2, title: 'Episodio lento', container_extension: 'mp4', info: { duration: '00:09:56', movie_image: `${base}/assets/poster/202.svg` } },
        ],
        '2': [
          { id: '403', episode_num: 1, title: 'Episodio non disponibile', container_extension: 'mp4', info: { duration: '00:09:56', movie_image: `${base}/assets/poster/203.svg` } },
        ],
      },
    });
  }

  return res.status(400).json({ error: `Azione demo non supportata: ${action}` });
});

function validPathCredentials(req: Request, res: Response): boolean {
  if (req.params.user !== DEMO_USER || req.params.password !== DEMO_PASSWORD) {
    res.status(401).json({ error: 'Credenziali demo non valide' });
    return false;
  }
  return true;
}

const sampleMovie = 'https://storage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4';
const sampleLive = 'https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8';

app.get('/movie/:user/:password/:file', async (req, res) => {
  if (!validPathCredentials(req, res)) return;
  const id = req.params.file.split('.')[0];
  if (id === '202') await new Promise((resolve) => setTimeout(resolve, 8_000));
  if (id === '203') return res.status(503).json({ error: 'Contenuto demo intenzionalmente non disponibile' });
  return res.redirect(302, sampleMovie);
});

app.get('/series/:user/:password/:file', async (req, res) => {
  if (!validPathCredentials(req, res)) return;
  const id = req.params.file.split('.')[0];
  if (id === '402') await new Promise((resolve) => setTimeout(resolve, 8_000));
  if (id === '403') return res.status(503).json({ error: 'Episodio demo intenzionalmente non disponibile' });
  return res.redirect(302, sampleMovie);
});

app.get('/live/:user/:password/:file', async (req, res) => {
  if (!validPathCredentials(req, res)) return;
  const id = req.params.file.replace(/\.(m3u8|ts)$/i, '');
  if (id === '103') return res.status(503).json({ error: 'Canale demo intenzionalmente non disponibile' });
  if (id.startsWith('public_')) {
    try {
      const source = await publicStreamUrl(id);
      if (source) return res.redirect(302, source);
      return res.status(404).json({ error: 'Canale pubblico non trovato nella playlist corrente' });
    } catch (error) {
      return res.status(502).json({
        error: error instanceof Error ? error.message : 'Playlist pubblica non raggiungibile',
      });
    }
  }
  return res.redirect(302, sampleLive);
});

app.listen(port, host, () => {
  console.log(`\nXtream Mock Server attivo su http://localhost:${port}`);
  console.log(`Credenziali: ${DEMO_USER} / ${DEMO_PASSWORD}`);
  console.log(`Profilo catalogo: ${profile}`);
  console.log('Per arrestarlo premi Control + C.\n');
});
