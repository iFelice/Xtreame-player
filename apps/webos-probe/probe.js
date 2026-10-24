(function () {
  'use strict';

  // ------- Utility: masking -------
  function maskUrl(url) {
    if (!url) return url;
    // mask username/password query params and path segments /live/user/pass/ etc.
    try {
      // Replace query params
      var m = url.replace(/([?&]username=)[^&]*/gi, '$1***').replace(/([?&]password=)[^&]*/gi, '$1***');
      // Replace path segments /live/<user>/<pass>/  and /movie/<user>/<pass>/
      m = m.replace(/(\/live\/)[^\/]+\/[^\/]+\//i, '$1***/***/');
      m = m.replace(/(\/movie\/)[^\/]+\/[^\/]+\//i, '$1***/***/');
      return m;
    } catch (e) {
      return url;
    }
  }
  function maskText(t) {
    if (!t) return t;
    // generic replacement if somehow credentials leaked
    return t;
  }
  function safeJson(obj) {
    try { return JSON.stringify(obj, null, 2); } catch (e) { return String(obj); }
  }

  // ------- Config loading -------
  var cfg = {
    server: 'http://server.esempio:8080',
    username: 'demo',
    password: 'demo',
    relayUrl: 'https://felixvision-pairing-relay.manganiellofelice.workers.dev',
    liveStreamId: '',
    vodStreamId: '',
    vodExtension: ''
  };
  var cfgLoadedFrom = 'default (config.example)';

  function applyConfig(c) {
    if (!c || typeof c !== 'object') return;
    if (typeof c.server === 'string' && c.server) cfg.server = c.server;
    if (typeof c.username === 'string') cfg.username = c.username;
    if (typeof c.password === 'string') cfg.password = c.password;
    if (typeof c.relayUrl === 'string' && c.relayUrl) cfg.relayUrl = c.relayUrl;
    if (typeof c.liveStreamId === 'string' || typeof c.liveStreamId === 'number') cfg.liveStreamId = String(c.liveStreamId);
    if (typeof c.vodStreamId === 'string' || typeof c.vodStreamId === 'number') cfg.vodStreamId = String(c.vodStreamId);
    if (typeof c.vodExtension === 'string') cfg.vodExtension = c.vodExtension;
  }

  // Display helpers
  function $(id) { return document.getElementById(id); }
  function setStatus(el, ok, label) {
    if (!el) return;
    el.textContent = label;
    el.className = 'status ' + (ok === true ? 'ok' : ok === false ? 'ko' : 'idle');
  }
  function setDetail(el, text, isError) {
    if (!el) return;
    el.textContent = text;
    el.className = isError ? 'detail error' : 'detail';
  }

  // Update header meta
  function updateHeader() {
    var uaEl = $('ua');
    if (uaEl) uaEl.textContent = navigator.userAgent || 'n/a';
    var ori = $('origin');
    if (ori) ori.textContent = location.origin;
    var ori2 = $('origin2');
    if (ori2) ori2.textContent = location.origin;
    function updWin() {
      var ws = $('winSize');
      if (ws) ws.textContent = window.innerWidth + '×' + window.innerHeight;
    }
    updWin();
    window.addEventListener('resize', updWin);
    // cfg info
    var ci = $('cfgInfo');
    if (ci) {
      var srvMasked = maskUrl(cfg.server);
      ci.textContent = 'server=' + srvMasked + ' user=*** relay=' + maskUrl(cfg.relayUrl) + ' liveId=' + (cfg.liveStreamId || 'auto') + ' vodId=' + (cfg.vodStreamId || 'auto') + ' (' + cfgLoadedFrom + ')';
    }
    var preview = $('server-url-preview');
    if (preview) {
      var u = cfg.server.replace(/\/$/, '') + '/player_api.php?username=***&password=***';
      preview.textContent = maskUrl(u);
    }
  }

  // Try to load config.local.json via fetch, fallback to window.FVP_CONFIG
  async function loadConfig() {
    // If window.FVP_CONFIG already present (from config.local.js script tag), use it as base
    if (window.FVP_CONFIG && typeof window.FVP_CONFIG === 'object') {
      applyConfig(window.FVP_CONFIG);
      cfgLoadedFrom = 'window.FVP_CONFIG (config.local.js)';
    }
    try {
      var resp = await fetch('config.local.json', { cache: 'no-store' });
      if (resp.ok) {
        var j = await resp.json();
        applyConfig(j);
        cfgLoadedFrom = 'config.local.json (fetch)';
      } else {
        // if 404, keep previous
        if (resp.status !== 404) {
          console.warn('config.local.json fetch status', resp.status);
        }
      }
    } catch (e) {
      // fetch may fail for file:// or CORS; keep window.FVP_CONFIG fallback
      console.warn('config.local.json fetch failed, fallback to window.FVP_CONFIG', e && e.message);
      // already applied if present
    }
    updateHeader();
  }

  // ------- 1. Server Xtream -------
  async function testServer() {
    var btn = $('btn-server');
    var st = $('status-server');
    var det = $('detail-server');
    setStatus(st, null, '…');
    setDetail(det, 'Richiesta in corso…\nURL: ' + maskUrl(cfg.server.replace(/\/$/, '') + '/player_api.php?username=***&password=***'));
    var start = performance.now();
    var url = cfg.server.replace(/\/$/, '') + '/player_api.php?username=' + encodeURIComponent(cfg.username) + '&password=' + encodeURIComponent(cfg.password);
    var maskedUrl = maskUrl(url);
    try {
      var resp = await fetch(url, { cache: 'no-store' });
      var elapsed = Math.round(performance.now() - start);
      var text = await resp.text();
      var data;
      try { data = JSON.parse(text); } catch (_) { data = null; }
      if (!resp.ok) {
        setStatus(st, false, 'KO');
        setDetail(det, 'HTTP ' + resp.status + ' ' + resp.statusText + ' in ' + elapsed + ' ms\nURL: ' + maskedUrl + '\nBody: ' + (text ? text.slice(0, 800) : '(vuoto)'), true);
        return;
      }
      // Expected fields
      var ui = data && data.user_info ? data.user_info : null;
      var status = ui ? ui.status : 'n/a';
      var maxConn = ui ? ui.max_connections : 'n/a';
      var allowed = data && data.allowed_output_formats ? safeJson(data.allowed_output_formats) : (ui && ui.allowed_output_formats ? safeJson(ui.allowed_output_formats) : 'n/a');
      var lines = [];
      lines.push('OK — HTTP ' + resp.status + ' in ' + elapsed + ' ms');
      lines.push('URL: ' + maskedUrl);
      lines.push('user_info.status: ' + String(status));
      lines.push('max_connections: ' + String(maxConn));
      lines.push('allowed_output_formats: ' + allowed);
      lines.push('Risposta (troncata 1000): ' + (text ? text.slice(0, 1000) : '(vuota)'));
      setStatus(st, true, 'OK');
      setDetail(det, lines.join('\n'));
    } catch (e) {
      var elapsed2 = Math.round(performance.now() - start);
      var msg = (e && e.name ? e.name + ': ' : '') + (e && e.message ? e.message : String(e));
      setStatus(st, false, 'KO');
      setDetail(det, 'Errore dopo ' + elapsed2 + ' ms\nURL: ' + maskedUrl + '\n' + msg + '\n\nSuggerimento: su webOS i fetch cross-origin possono fallire per CORS; prova via proxy o con server che invia Access-Control-Allow-Origin.', true);
    }
  }

  // ------- 2. Relay -------
  async function testRelay() {
    var st = $('status-relay');
    var det = $('detail-relay');
    setStatus(st, null, '…');
    setDetail(det, 'Richiesta in corso…\nURL: ' + maskUrl((cfg.relayUrl || '').replace(/\/$/, '') + '/healthz') + '\norigin: ' + location.origin);
    var url = (cfg.relayUrl || '').replace(/\/$/, '') + '/healthz';
    var masked = maskUrl(url);
    try {
      var resp = await fetch(url, { cache: 'no-store' });
      var text = await resp.text();
      var lines = [];
      lines.push('HTTP ' + resp.status + ' ' + resp.statusText);
      lines.push('URL: ' + masked);
      lines.push('location.origin: ' + location.origin);
      lines.push('Body (troncato 800): ' + (text ? text.slice(0, 800) : '(vuoto)'));
      if (resp.ok) {
        setStatus(st, true, 'OK');
        setDetail(det, lines.join('\n'));
      } else {
        setStatus(st, false, 'KO');
        setDetail(det, lines.join('\n'), true);
      }
    } catch (e) {
      var msg = (e && e.name ? e.name + ': ' : '') + (e && e.message ? e.message : String(e));
      setStatus(st, false, 'KO');
      setDetail(det, 'Errore fetch\nURL: ' + masked + '\norigin: ' + location.origin + '\n' + msg, true);
    }
  }

  // ------- 3. Script -------
  function testScripts() {
    var stMod = $('status-module');
    var stCls = $('status-classic');
    var det = $('detail-script');
    setStatus(stMod, null, 'MODULE: …');
    setStatus(stCls, null, 'CLASSIC: …');
    setDetail(det, 'Caricamento in corso…');
    // Reset globals
    try { delete window.FVP_MODULE_TEST; } catch (_) { window.FVP_MODULE_TEST = undefined; }
    try { delete window.FVP_CLASSIC_TEST; } catch (_) { window.FVP_CLASSIC_TEST = undefined; }

    var modDone = false;
    var clsDone = false;
    var modResult = { ok: null, msg: '' };
    var clsResult = { ok: null, msg: '' };

    function checkDone() {
      if (modDone && clsDone) {
        var lines = [];
        lines.push('Module: ' + (modResult.ok ? 'OK' : 'KO') + ' — ' + modResult.msg);
        lines.push('Classic: ' + (clsResult.ok ? 'OK' : 'KO') + ' — ' + clsResult.msg);
        var allOk = modResult.ok && clsResult.ok;
        setDetail(det, lines.join('\n'), !allOk);
      }
    }

    // Classic test
    (function () {
      var s = document.createElement('script');
      s.src = 'classic-test.js';
      var timeout = setTimeout(function () {
        if (!clsDone) {
          clsDone = true;
          clsResult = { ok: false, msg: 'timeout 5s senza onload' };
          setStatus(stCls, false, 'CLASSIC: KO');
          checkDone();
        }
      }, 5000);
      s.onload = function () {
        clearTimeout(timeout);
        if (clsDone) return;
        clsDone = true;
        var v = window.FVP_CLASSIC_TEST;
        if (v === 'ok-classic') {
          clsResult = { ok: true, msg: 'window.FVP_CLASSIC_TEST=' + v };
          setStatus(stCls, true, 'CLASSIC: OK');
        } else {
          clsResult = { ok: false, msg: 'globale mancante o valore errato: ' + String(v) };
          setStatus(stCls, false, 'CLASSIC: KO');
        }
        checkDone();
      };
      s.onerror = function (e) {
        clearTimeout(timeout);
        if (clsDone) return;
        clsDone = true;
        clsResult = { ok: false, msg: 'onerror ' + (e && e.message ? e.message : 'caricamento fallito') };
        setStatus(stCls, false, 'CLASSIC: KO');
        checkDone();
      };
      document.head.appendChild(s);
    })();

    // Module test dynamic
    (function () {
      var s = document.createElement('script');
      s.type = 'module';
      s.src = 'module-test.js';
      var timeout = setTimeout(function () {
        if (!modDone) {
          modDone = true;
          modResult = { ok: false, msg: 'timeout 5s senza onload (modulo non supportato?)' };
          setStatus(stMod, false, 'MODULE: KO');
          checkDone();
        }
      }, 5000);
      s.onload = function () {
        clearTimeout(timeout);
        if (modDone) return;
        // Need small delay to let module evaluate
        setTimeout(function () {
          modDone = true;
          var v = window.FVP_MODULE_TEST;
          if (v === 'ok-module') {
            modResult = { ok: true, msg: 'window.FVP_MODULE_TEST=' + v };
            setStatus(stMod, true, 'MODULE: OK');
          } else {
            modResult = { ok: false, msg: 'globale mancante dopo module load: ' + String(v) };
            setStatus(stMod, false, 'MODULE: KO');
          }
          checkDone();
        }, 100);
      };
      s.onerror = function (e) {
        clearTimeout(timeout);
        if (modDone) return;
        modDone = true;
        modResult = { ok: false, msg: 'onerror module ' + (e && e.message ? e.message : 'caricamento fallito — moduli non supportati?') };
        setStatus(stMod, false, 'MODULE: KO');
        checkDone();
      };
      document.head.appendChild(s);
    })();
  }

  // ------- 4. Video -------
  var videoOverlay = null;
  var videoEl = null;
  var videoInfoEl = null;
  var currentVideoTest = null; // 'hls'|'ts'|'vod'
  var videoTimeout = null;

  function ensureVideoElements() {
    videoOverlay = $('video-overlay');
    videoEl = $('probe-video');
    videoInfoEl = $('video-info');
  }

  function getStatusElFor(kind) {
    if (kind === 'hls') return $('status-hls');
    if (kind === 'ts') return $('status-ts');
    if (kind === 'vod') return $('status-vod');
    return null;
  }
  function getDetailElFor(kind) {
    if (kind === 'hls') return $('detail-hls');
    if (kind === 'ts') return $('detail-ts');
    if (kind === 'vod') return $('detail-vod');
    return null;
  }

  function closeVideo() {
    if (videoTimeout) { clearTimeout(videoTimeout); videoTimeout = null; }
    if (videoEl) {
      try { videoEl.pause(); } catch (_) {}
      videoEl.removeAttribute('src');
      videoEl.load();
    }
    if (videoOverlay) {
      videoOverlay.classList.remove('open');
      videoOverlay.setAttribute('aria-hidden', 'true');
    }
    // focus back to button that launched or first video button
    var btn = currentVideoTest ? $('btn-video-' + currentVideoTest) : $('btn-video-hls');
    if (btn) try { btn.focus(); } catch (_) {}
    currentVideoTest = null;
    if (videoInfoEl) videoInfoEl.textContent = 'Chiuso.';
  }

  async function resolveStreamIdsIfNeeded() {
    // If liveStreamId empty, fetch get_live_streams
    if (!cfg.liveStreamId) {
      try {
        var u = cfg.server.replace(/\/$/, '') + '/player_api.php?username=' + encodeURIComponent(cfg.username) + '&password=' + encodeURIComponent(cfg.password) + '&action=get_live_streams';
        var r = await fetch(u, { cache: 'no-store' });
        if (r.ok) {
          var arr = await r.json();
          if (Array.isArray(arr) && arr.length > 0 && arr[0].stream_id != null) {
            cfg.liveStreamId = String(arr[0].stream_id);
            console.log('resolved liveStreamId', cfg.liveStreamId);
          }
        }
      } catch (e) { console.warn('get_live_streams failed', e); }
    }
    if (!cfg.vodStreamId) {
      try {
        var u2 = cfg.server.replace(/\/$/, '') + '/player_api.php?username=' + encodeURIComponent(cfg.username) + '&password=' + encodeURIComponent(cfg.password) + '&action=get_vod_streams';
        var r2 = await fetch(u2, { cache: 'no-store' });
        if (r2.ok) {
          var arr2 = await r2.json();
          if (Array.isArray(arr2) && arr2.length > 0 && arr2[0].stream_id != null) {
            cfg.vodStreamId = String(arr2[0].stream_id);
            if (!cfg.vodExtension && arr2[0].container_extension) cfg.vodExtension = String(arr2[0].container_extension);
            else if (!cfg.vodExtension) cfg.vodExtension = 'mp4';
            console.log('resolved vodStreamId', cfg.vodStreamId, cfg.vodExtension);
          }
        }
      } catch (e) { console.warn('get_vod_streams failed', e); }
    }
    if (!cfg.vodExtension) cfg.vodExtension = 'mp4';
    updateHeader();
  }

  function buildVideoUrl(kind) {
    var base = cfg.server.replace(/\/$/, '');
    var user = encodeURIComponent(cfg.username);
    var pass = encodeURIComponent(cfg.password);
    if (kind === 'hls') {
      return base + '/live/' + user + '/' + pass + '/' + encodeURIComponent(cfg.liveStreamId) + '.m3u8';
    } else if (kind === 'ts') {
      return base + '/live/' + user + '/' + pass + '/' + encodeURIComponent(cfg.liveStreamId) + '.ts';
    } else if (kind === 'vod') {
      var ext = cfg.vodExtension || 'mp4';
      if (ext.charAt(0) === '.') ext = ext.slice(1);
      return base + '/movie/' + user + '/' + pass + '/' + encodeURIComponent(cfg.vodStreamId) + '.' + encodeURIComponent(ext);
    }
    return '';
  }

  async function playTest(kind) {
    ensureVideoElements();
    var st = getStatusElFor(kind);
    var det = getDetailElFor(kind);
    setStatus(st, null, kind.toUpperCase() + ': …');
    setDetail(det, 'Preparazione…');

    // Validate IDs
    if (kind === 'hls' || kind === 'ts') {
      if (!cfg.liveStreamId) {
        setDetail(det, 'Tentativo di recupero liveStreamId da get_live_streams…');
        await resolveStreamIdsIfNeeded();
        if (!cfg.liveStreamId) {
          setStatus(st, false, kind.toUpperCase() + ': KO');
          setDetail(det, 'liveStreamId vuoto e nessun risultato da get_live_streams.\nConfigura liveStreamId in config.local.json oppure assicurati che il server risponda a get_live_streams.', true);
          return;
        }
      }
    } else if (kind === 'vod') {
      if (!cfg.vodStreamId) {
        setDetail(det, 'Tentativo di recupero vodStreamId da get_vod_streams…');
        await resolveStreamIdsIfNeeded();
        if (!cfg.vodStreamId) {
          setStatus(st, false, 'VOD: KO');
          setDetail(det, 'vodStreamId vuoto e nessun risultato da get_vod_streams.\nConfigura vodStreamId in config.local.json.', true);
          return;
        }
        if (!cfg.vodExtension) cfg.vodExtension = 'mp4';
      }
    }

    var url = buildVideoUrl(kind);
    var masked = maskUrl(url);
    setDetail(det, 'URL: ' + masked + '\nAvvio playback…');

    // Show overlay
    currentVideoTest = kind;
    videoOverlay.classList.add('open');
    videoOverlay.setAttribute('aria-hidden', 'false');
    videoInfoEl.textContent = 'Caricamento: ' + masked + '\nIn attesa di evento playing (20 s)…';

    // Cleanup previous listeners
    var onPlaying, onError, onLoadedMeta;
    var startTime = performance.now();
    var done = false;

    function finish(ok, msg, isError) {
      if (done) return;
      done = true;
      if (videoTimeout) { clearTimeout(videoTimeout); videoTimeout = null; }
      // Remove listeners
      videoEl.removeEventListener('playing', onPlaying);
      videoEl.removeEventListener('error', onError);
      videoEl.removeEventListener('loadedmetadata', onLoadedMeta);
      var elapsed = Math.round(performance.now() - startTime);
      var w = videoEl.videoWidth || 0;
      var h = videoEl.videoHeight || 0;
      var audioTracksCount = 'n/a';
      try {
        if (videoEl.audioTracks && typeof videoEl.audioTracks.length === 'number') audioTracksCount = String(videoEl.audioTracks.length);
        else if (videoEl.webkitAudioDecodedByteCount != null) audioTracksCount = 'webkit n/a';
      } catch (_) {}
      if (ok) {
        setStatus(st, true, kind.toUpperCase() + ': OK');
        var lines = [];
        lines.push('OK — playing in ' + elapsed + ' ms');
        lines.push('URL: ' + masked);
        lines.push('Risoluzione: ' + w + '×' + h);
        lines.push('audioTracks: ' + audioTracksCount);
        lines.push('Tempo al primo fotogramma: ' + elapsed + ' ms');
        if (msg) lines.push(msg);
        setDetail(det, lines.join('\n'));
        videoInfoEl.textContent = lines.join('\n') + '\n\nPremi Indietro o Chiudi per tornare.';
      } else {
        setStatus(st, false, kind.toUpperCase() + ': KO');
        var errCode = '';
        var errMsg = msg || '';
        try {
          if (videoEl.error) {
            errCode = 'MediaError code=' + videoEl.error.code + (videoEl.error.message ? ' msg=' + videoEl.error.message : '');
          }
        } catch (_) {}
        var lines2 = [];
        lines2.push('KO dopo ' + elapsed + ' ms');
        lines2.push('URL: ' + masked);
        if (errCode) lines2.push(errCode);
        if (errMsg) lines2.push(errMsg);
        lines2.push('Risoluzione: ' + w + '×' + h);
        lines2.push('audioTracks: ' + audioTracksCount);
        setDetail(det, lines2.join('\n'), true);
        videoInfoEl.textContent = lines2.join('\n') + '\n\nPremi Indietro o Chiudi.';
      }
      // Do not auto-close; let user close with Back
    }

    onPlaying = function () {
      var elapsed = Math.round(performance.now() - startTime);
      finish(true, 'evento playing ricevuto', false);
    };
    onError = function () {
      var e = videoEl.error;
      var msg = e ? 'MediaError code=' + e.code : 'errore video sconosciuto';
      finish(false, msg, true);
    };
    onLoadedMeta = function () {
      // not finish, just log
      console.log('loadedmetadata', videoEl.videoWidth, videoEl.videoHeight);
    };

    videoEl.addEventListener('playing', onPlaying);
    videoEl.addEventListener('error', onError);
    videoEl.addEventListener('loadedmetadata', onLoadedMeta);

    // Timeout 20s
    videoTimeout = setTimeout(function () {
      finish(false, 'timeout 20 s senza evento playing (possibile CORS, codec non supportato, o URL non raggiungibile)', true);
    }, 20000);

    try {
      videoEl.src = url;
      // Some webOS need load()
      try { videoEl.load(); } catch (_) {}
      var playPromise = videoEl.play();
      if (playPromise && playPromise.catch) {
        playPromise.catch(function (e) {
          var m = (e && e.name ? e.name + ': ' : '') + (e && e.message ? e.message : String(e));
          // Not necessarily fatal; still wait for playing or error
          videoInfoEl.textContent = 'play() rejected: ' + m + '\nIn attesa di playing/error…\nURL: ' + masked;
        });
      }
    } catch (e) {
      finish(false, 'eccezione play: ' + (e && e.message ? e.message : String(e)), true);
    }
  }

  // ------- 5. Remote -------
  var remoteHistory = [];
  var wheelCount = 0;
  var lastWheelDelta = null;
  var cursorState = '—';

  function pushRemote(entry) {
    remoteHistory.unshift(entry);
    if (remoteHistory.length > 10) remoteHistory.pop();
    renderRemote();
  }
  function renderRemote() {
    var tbody = $('remote-body');
    var det = $('detail-remote');
    if (!tbody) return;
    if (remoteHistory.length === 0) {
      tbody.innerHTML = '<tr><td colspan="5" class="muted">Nessun tasto ancora.</td></tr>';
    } else {
      var html = '';
      for (var i = 0; i < remoteHistory.length; i++) {
        var r = remoteHistory[i];
        html += '<tr><td>' + (i + 1) + '</td><td>' + r.keyCode + '</td><td>' + esc(r.key) + '</td><td>' + esc(r.code) + '</td><td>' + esc(r.time) + '</td></tr>';
      }
      tbody.innerHTML = html;
    }
    var extra = [];
    extra.push('CursorStateChange: ' + cursorState);
    extra.push('Wheel events: ' + wheelCount + (lastWheelDelta != null ? ' (ultimo deltaY=' + lastWheelDelta + ')' : ''));
    extra.push('Ultimi 10 tasti sopra — Indietro (461) registrato ma NON chiude l\'app qui.');
    if (det) det.textContent = extra.join('\n');
  }
  function esc(s) {
    if (s == null) return '—';
    return String(s).replace(/&/g,'&amp;').replace(/</g,'&lt;').replace(/>/g,'&gt;');
  }
  function setupRemote() {
    // keydown capture
    document.addEventListener('keydown', function (e) {
      var kc = e.keyCode || e.which || 0;
      // Back 461: prevent closing when overlay not open and main screen
      if (kc === 461) {
        if (videoOverlay && videoOverlay.classList.contains('open')) {
          // If video open, close video instead of app
          e.preventDefault();
          closeVideo();
          pushRemote({ keyCode: kc, key: e.key || '', code: e.code || '', time: new Date().toLocaleTimeString() + ' (Back → chiuso video)' });
          return;
        } else {
          // On main screen, prevent default that would close app via disableBackHistoryAPI=false? But we have true, so app should handle.
          // Just prevent any default back navigation
          try { e.preventDefault(); } catch (_) {}
          // Do NOT close app
        }
      }
      var entry = {
        keyCode: kc,
        key: e.key || '',
        code: e.code || '',
        time: new Date().toLocaleTimeString()
      };
      pushRemote(entry);
      // Also update detail for wheel/cursor part
    });

    // wheel
    document.addEventListener('wheel', function (e) {
      wheelCount++;
      lastWheelDelta = e.deltaY;
      var el = $('detail-remote');
      // Also push a pseudo entry? Keep separate count
      // Update render
      renderRemote();
      // Also show wheel in table as extra? Just update detail
    }, { passive: true });

    // cursorStateChange webOS
    document.addEventListener('cursorStateChange', function (e) {
      try {
        cursorState = (e && e.detail && e.detail.visibility ? 'visible' : (e.detail ? safeJson(e.detail) : 'evento ricevuto'));
        if (e.visibility != null) cursorState = e.visibility ? 'visible' : 'hidden';
      } catch (_) {
        cursorState = 'evento cursorStateChange';
      }
      var csEl = $('cursor-status');
      if (csEl) {
        csEl.textContent = 'CURSORE: ' + cursorState;
        csEl.className = 'status idle';
      }
      renderRemote();
    });
    // Also older webOS event name
    document.addEventListener('cursorVisibilityChange', function (e) {
      cursorState = (e.detail && e.detail.visibility) ? 'visible' : 'hidden';
      renderRemote();
    });

    var clearBtn = $('btn-clear-remote');
    if (clearBtn) clearBtn.addEventListener('click', function () {
      remoteHistory = [];
      wheelCount = 0;
      lastWheelDelta = null;
      renderRemote();
    });

    var exitBtn = $('btn-exit');
    if (exitBtn) exitBtn.addEventListener('click', function () {
      // Close app
      try { window.close(); } catch (_) {}
      // For webOS, also try palm service close?
      try {
        if (window.PalmSystem && window.PalmSystem.stageReady) {
          // no close API; window.close is correct
        }
      } catch (_) {}
      // Show message if not closed (desktop test)
      setTimeout(function () {
        var d = $('detail-remote');
        if (d) d.textContent = 'window.close() chiamato — su desktop il browser può bloccare la chiusura. Su TV l\'app dovrebbe chiudersi.';
      }, 300);
    });

    renderRemote();
  }

  // ------- Video overlay back handling -------
  function setupVideoOverlay() {
    ensureVideoElements();
    var closeBtn = $('btn-video-close');
    if (closeBtn) closeBtn.addEventListener('click', closeVideo);
    // Also global Back handling for video already in remote setup (keydown)
  }

  // ------- Focus navigation helpers (arrow nav) -------
  function setupFocus() {
    // Ensure all buttons are focusable and visible focus
    // Add initial focus to first button
    window.addEventListener('load', function () {
      var first = $('btn-server');
      if (first) try { first.focus(); } catch (_) {}
    });
    // No JS needed for arrow nav; browser handles sequential focus, but ensure TV spatial navigation works
    // Enable webOS spartial navigation if available
    try {
      if (window.webOS) console.log('webOS present');
    } catch (_) {}
  }

  // ------- Bind buttons -------
  function bind() {
    var b1 = $('btn-server');
    if (b1) b1.addEventListener('click', testServer);
    var b2 = $('btn-relay');
    if (b2) b2.addEventListener('click', testRelay);
    var b3 = $('btn-script');
    if (b3) b3.addEventListener('click', testScripts);
    var bh = $('btn-video-hls');
    if (bh) bh.addEventListener('click', function () { playTest('hls'); });
    var bt = $('btn-video-ts');
    if (bt) bt.addEventListener('click', function () { playTest('ts'); });
    var bv = $('btn-video-vod');
    if (bv) bv.addEventListener('click', function () { playTest('vod'); });
  }

  // Init
  document.addEventListener('DOMContentLoaded', function () {
    updateHeader();
    loadConfig().then(function () { updateHeader(); });
    bind();
    setupRemote();
    setupVideoOverlay();
    setupFocus();

    // Also update window size continuously for TV
    window.addEventListener('resize', updateHeader);

    // Global error handling to avoid silent fails
    window.addEventListener('error', function (e) {
      console.error('global error', e && e.message, e && e.filename);
    });
  });

  // Expose for debugging (no credentials)
  window.FVP_PROBE = {
    getConfigMasked: function () {
      return {
        server: maskUrl(cfg.server),
        username: '***',
        password: '***',
        relayUrl: maskUrl(cfg.relayUrl),
        liveStreamId: cfg.liveStreamId || '(auto)',
        vodStreamId: cfg.vodStreamId || '(auto)',
        vodExtension: cfg.vodExtension
      };
    }
  };
})();
