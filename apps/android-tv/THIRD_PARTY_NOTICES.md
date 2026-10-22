# Third Party Notices

Questo file elenca le licenze di componenti di terze parti utilizzati in FelixVision TV.

## Lucide Icons

- **Origine:** https://lucide.dev / https://github.com/lucide-icons/lucide
- **Licenza:** ISC License
- **Copyright:** Lucide Contributors
- **Utilizzo:** Icone del drawer convertite in VectorDrawable Android senza dipendenze runtime:
  - `ic_nav_sparkles.xml` ← `sparkles.svg` (Novità)
  - `ic_nav_tv.xml` ← `tv.svg` (Live)
  - `ic_nav_film.xml` ← `film.svg` (Film)
  - `ic_nav_library.xml` ← `library.svg` (Serie)
  - `ic_nav_star.xml` ← `star.svg` (Preferiti)
  - `ic_nav_settings.xml` ← `settings.svg` (Impostazioni)
  - `ic_eye.xml` ← `eye.svg` (contenuto già visto nel player, PR3)
- **Modifiche:** Conversione da SVG a `VectorDrawable` Android (`viewport 24×24`, `strokeWidth 2`, `strokeLineCap round`, `strokeLineJoin round`, `fillColor transparent`), nessun cambio di design.
- **Testo licenza ISC:**

```
ISC License

Copyright (c) Lucide Contributors

Permission to use, copy, modify, and/or distribute this software for any
purpose with or without fee is hereby granted, provided that the above
copyright notice and this permission notice appear in all copies.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH
REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY
AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT,
INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM
LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR
OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
PERFORMANCE OF THIS SOFTWARE.
```

Le icone sono rese a runtime tramite `Icon(painter = painterResource(R.drawable.ic_nav_*), tint = ...)` mantenendo i colori attivi/disattivi già presenti nel tema.

## AndroidX Media3

- **Origine:** https://developer.android.com/media/media3
- **Componenti:** `androidx.media3:media3-exoplayer`, `androidx.media3:media3-exoplayer-hls`, `androidx.media3:media3-ui`
- **Versione:** 1.9.0
- **Licenza:** Apache License 2.0
- **Utilizzo:** riproduzione live HLS/TS e VOD del player (PR3), controller disattivato e SurfaceView.

## Jellyfin Media3 FFmpeg decoder

- **Origine:** https://github.com/jellyfin/jellyfin-androidx-media
- **Artefatto:** `org.jellyfin.media3:media3-ffmpeg-decoder:1.9.0+1` (Maven Central)
- **Licenza:** GNU General Public License v3.0 (GPL-3.0)
- **Utilizzo:** ripiego software per l'audio che il dispositivo non decodifica (AC3/EAC3/DTS), caricato per riflessione da `DefaultRenderersFactory` con `EXTENSION_RENDERER_MODE_ON`; non contiene decodificatori video.
- **Nota:** l'inclusione di un componente GPL-3.0 nell'APK comporta gli obblighi della licenza per la distribuzione dell'app.
