(function () {
  'use strict';

  // ------- Utility: masking & redacting -------
  function maskUrl(url) {
    if (!url) return url;
    try {
      var m = url.replace(/([?&]username=)[^&]*/gi, '$1***').replace(/([?&]password=)[^&]*/gi, '$1***');
      m = m.replace(/(\/live\/)[^\/]+\/[^\/]+\//i, '$1***/***/');
      m = m.replace(/(\/movie\/)[^\/]+\/[^\/]+\//i, '$1***/***/');
      return m;
    } catch (e) {
      return url;
    }
  }

  // Redact sensitive keys recursively (username, password, url, server_url, token etc.)
  function redactJson(value) {
    if (Array.isArray(value)) {
      var arr = [];
      for (var i = 0; i < value.length; i++) arr.push(redactJson(value[i]));
      return arr;
    }
    if (value && typeof value === 'object') {
      var out = {};
      for (var k in value) {
        if (!Object.prototype.hasOwnProperty.call(value, k)) continue;
        var lk = k.toLowerCase();
        if (lk === 'username' || lk === 'password' || lk === 'url' || lk === 'server_url' || lk === 'serverurl' || lk === 'server') {
          continue;
        }
        // also strip any token-like keys for relay safety (spec says never show token)
        if (lk.indexOf('token') !== -1) continue;
        // also strip pollToken variants already covered, but be explicit
        if (lk === 'polltoken' || lk === 'poll_token') continue;
        out[k] = redactJson(value[k]);
      }
      return out;
    }
    return value;
  }

  function safeJson(obj) {
    try { return JSON.stringify(obj, null, 2); } catch (e) { return String(obj); }
  }

  function formatExpDate(val) {
    if (val == null || val === '' || val === 'n/a') return 'n/a';
    var num = Number(val);
    if (isNaN(num) || num === 0) return String(val);
    var ms = num < 1e12 ? num * 1000 : num;
    try {
      var d = new Date(ms);
      if (isNaN(d.getTime())) return String(val);
      // Format as ISO-like with locale
      var pad = function (n) { return (n < 10 ? '0' : '') + n; };
      return d.getFullYear() + '-' + pad(d.getMonth() + 1) + '-' + pad(d.getDate()) + ' ' + pad(d.getHours()) + ':' + pad(d.getMinutes()) + ':' + pad(d.getSeconds());
    } catch (e) {
      return String(val);
    }
  }

  function getServerPort(urlStr) {
    try {
      var u = new URL(urlStr);
      if (u.port) return u.port;
      if (u.protocol === 'https:') return '443';
      if (u.protocol === 'http:') return '80';
      return '—';
    } catch (e) {
      var m = urlStr.match(/:(\d{1,5})(?:\/|$)/);
      return m ? m[1] : '—';
    }
  }

  // ------- Config -------
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
    try { window.removeEventListener('resize', updWin); } catch (_) {}
    window.addEventListener('resize', updWin);
    var ci = $('cfgInfo');
    if (ci) {
      var port = getServerPort(cfg.server);
      ci.textContent = 'server configurato (porta ' + port + ') | relay=' + maskUrl(cfg.relayUrl) + ' | liveId=' + (cfg.liveStreamId || 'auto') + ' vodId=' + (cfg.vodStreamId || 'auto') + ' (' + cfgLoadedFrom + ')';
    }
    var preview = $('server-url-preview');
    if (preview) {
      var port2 = getServerPort(cfg.server);
      preview.textContent = 'server configurato (porta ' + port2 + ')/player_api.php?username=***&password=***';
    }
  }

  async function loadConfig() {
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
      }
    } catch (e) {
      // silent fallback, no logging of sensitive data
    }
    updateHeader();
  }

  // ------- 1. Server Xtream (redacted, no raw body) -------
  async function testServer() {
    var st = $('status-server');
    var det = $('detail-server');
    setStatus(st, null, '…');
    var port = getServerPort(cfg.server);
    setDetail(det, 'Richiesta in corso…\nserver configurato (porta ' + port + ') — verifica login in corso');
    var start = performance.now();
    var url = cfg.server.replace(/\/$/, '') + '/player_api.php?username=' + encodeURIComponent(cfg.username) + '&password=' + encodeURIComponent(cfg.password);
    try {
      var resp = await fetch(url, { cache: 'no-store' });
      var elapsed = Math.round(performance.now() - start);
      // Try JSON, but never show raw body
      var data = null;
      try {
        data = await resp.json();
      } catch (_) {
        // Try text then json, but not display body
        try {
          var t = await resp.text();
          try { data = JSON.parse(t); } catch (e2) { data = null; }
        } catch (e3) { data = null; }
      }
      if (!resp.ok) {
        setStatus(st, false, 'KO');
        setDetail(det, 'HTTP ' + resp.status + ' ' + resp.statusText + ' in ' + elapsed + ' ms\nserver configurato (porta ' + port + ')\nErrore HTTP — nessun corpo mostrato per sicurezza', true);
        return;
      }
      var ui = data && data.user_info ? data.user_info : null;
      // Apply redact before reading sensitive fields? But we need actual values for display of allowed fields, which are not sensitive
      // Use raw ui for these safe fields, but ensure we don't expose username/password via redaction if they were inside
      var redactedUi = ui ? redactJson(ui) : null;
      // Allowed fields to show
      var statusVal = ui && ui.status != null ? String(ui.status) : (redactedUi && redactedUi.status != null ? String(redactedUi.status) : 'n/a');
      var maxConn = ui && ui.max_connections != null ? String(ui.max_connections) : (redactedUi && redactedUi.max_connections != null ? String(redactedUi.max_connections) : 'n/a');
      var activeCons = ui && ui.active_cons != null ? String(ui.active_cons) : (redactedUi && redactedUi.active_cons != null ? String(redactedUi.active_cons) : 'n/a');
      var expDateRaw = ui && ui.exp_date != null ? ui.exp_date : (redactedUi && redactedUi.exp_date != null ? redactedUi.exp_date : null);
      var expDate = formatExpDate(expDateRaw);
      var allowed = null;
      if (data && data.allowed_output_formats) allowed = data.allowed_output_formats;
      else if (ui && ui.allowed_output_formats) allowed = ui.allowed_output_formats;
      // redact allowed if object
      var allowedStr = 'n/a';
      if (allowed != null) {
        try {
          var redAllowed = redactJson(allowed);
          allowedStr = safeJson(redAllowed);
        } catch (e) {
          allowedStr = String(allowed);
        }
      }
      var lines = [];
      lines.push('OK — HTTP ' + resp.status + ' in ' + elapsed + ' ms');
      lines.push('server configurato (porta ' + port + ')');
      lines.push('user_info.status: ' + statusVal);
      lines.push('max_connections: ' + maxConn);
      lines.push('active_cons: ' + activeCons);
      lines.push('allowed_output_formats: ' + allowedStr);
      lines.push('exp_date: ' + expDate);
      setStatus(st, true, 'OK');
      setDetail(det, lines.join('\n'));
    } catch (e) {
      var elapsed2 = Math.round(performance.now() - start);
      var msg = (e && e.name ? e.name + ': ' : '') + (e && e.message ? e.message : String(e));
      setStatus(st, false, 'KO');
      setDetail(det, 'Errore dopo ' + elapsed2 + ' ms\nserver configurato (porta ' + port + ')\n' + msg, true);
    }
  }

  // ------- 2. Relay healthz -------
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

  // ------- 2b. Relay – abbinamento POST /api/pair/create -------
  async function testPairCreate() {
    var st = $('status-pair');
    var det = $('detail-pair');
    setStatus(st, null, '…');
    var url = (cfg.relayUrl || '').replace(/\/$/, '') + '/api/pair/create';
    var masked = maskUrl(url);
    setDetail(det, 'Richiesta in corso…\nURL: ' + masked + '\norigin: ' + location.origin + '\nMetodo: POST, Content-Type: application/json, body: {}');
    try {
      var resp = await fetch(url, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: '{}',
        cache: 'no-store'
      });
      var statusLine = 'HTTP ' + resp.status + ' ' + resp.statusText;
      var text = await resp.text();
      var readable = 'no';
      var json = null;
      try {
        json = JSON.parse(text);
        readable = 'sì (JSON leggibile da JavaScript)';
      } catch (pe) {
        readable = 'no — corpo non JSON o non leggibile: ' + (pe && pe.message ? pe.message : String(pe));
      }
      var lines = [];
      lines.push(statusLine);
      lines.push('URL: ' + masked);
      lines.push('location.origin: ' + location.origin);
      lines.push('Corpo leggibile da JS: ' + readable);
      if (json) {
        // Extract PIN (code)
        var pin = json.code || json.pin || json.PIN;
        if (!pin && json.data && json.data.code) pin = json.data.code;
        if (pin != null && pin !== '') {
          lines.push('PIN restituito: ' + String(pin));
        } else {
          lines.push('PIN: non trovato nel corpo');
        }
        // Never show token: redact includes token removal
        var redacted = redactJson(json);
        // Ensure token still not present even if redact missed (extra safety)
        // redacted already stripped token keys
        var jsonStr = safeJson(redacted);
        if (jsonStr.length > 800) jsonStr = jsonStr.slice(0, 800) + '…';
        lines.push('Corpo (redatto, senza token): ' + jsonStr);
        lines.push('(token di sessione omesso per sicurezza)');
      } else {
        var bodyPreview = text ? text.slice(0, 200) : '(vuoto)';
        lines.push('Body (troncato 200): ' + bodyPreview);
      }
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
      s.onerror = function () {
        clearTimeout(timeout);
        if (clsDone) return;
        clsDone = true;
        clsResult = { ok: false, msg: 'onerror caricamento fallito' };
        setStatus(stCls, false, 'CLASSIC: KO');
        checkDone();
      };
      document.head.appendChild(s);
    })();

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
      s.onerror = function () {
        clearTimeout(timeout);
        if (modDone) return;
        modDone = true;
        modResult = { ok: false, msg: 'onerror module caricamento fallito — moduli non supportati?' };
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
  var currentVideoTest = null;
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
      try { videoEl.load(); } catch (_) {}
    }
    if (videoOverlay) {
      videoOverlay.classList.remove('open');
      videoOverlay.setAttribute('aria-hidden', 'true');
    }
    var btn = currentVideoTest ? $('btn-video-' + currentVideoTest) : $('btn-video-hls');
    if (btn) try { btn.focus(); } catch (_) {}
    currentVideoTest = null;
    if (videoInfoEl) videoInfoEl.textContent = 'Chiuso.';
  }

  async function resolveStreamIdsIfNeeded() {
    if (!cfg.liveStreamId) {
      try {
        var u = cfg.server.replace(/\/$/, '') + '/player_api.php?username=' + encodeURIComponent(cfg.username) + '&password=' + encodeURIComponent(cfg.password) + '&action=get_live_streams';
        var r = await fetch(u, { cache: 'no-store' });
        if (r.ok) {
          var arr = await r.json();
          if (Array.isArray(arr) && arr.length > 0 && arr[0].stream_id != null) {
            cfg.liveStreamId = String(arr[0].stream_id);
          }
        }
      } catch (e) { /* silent */ }
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
          }
        }
      } catch (e) { /* silent */ }
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
    setDetail(det, 'URL (mascherato): ' + masked + '\nAvvio playback…');

    currentVideoTest = kind;
    videoOverlay.classList.add('open');
    videoOverlay.setAttribute('aria-hidden', 'false');
    videoInfoEl.textContent = 'Caricamento: ' + masked + '\nIn attesa di evento playing (20 s)…';

    var onPlaying, onError, onLoadedMeta;
    var startTime = performance.now();
    var done = false;

    function finish(ok, msg) {
      if (done) return;
      done = true;
      if (videoTimeout) { clearTimeout(videoTimeout); videoTimeout = null; }
      videoEl.removeEventListener('playing', onPlaying);
      videoEl.removeEventListener('error', onError);
      videoEl.removeEventListener('loadedmetadata', onLoadedMeta);
      var elapsed = Math.round(performance.now() - startTime);
      var w = videoEl.videoWidth || 0;
      var h = videoEl.videoHeight || 0;
      var audioTracksCount = 'n/a';
      try {
        if (videoEl.audioTracks && typeof videoEl.audioTracks.length === 'number') audioTracksCount = String(videoEl.audioTracks.length);
      } catch (_) {}
      if (ok) {
        setStatus(st, true, kind.toUpperCase() + ': OK');
        var lines = [];
        lines.push('OK — playing in ' + elapsed + ' ms');
        lines.push('URL (mascherato): ' + masked);
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
        lines2.push('URL (mascherato): ' + masked);
        if (errCode) lines2.push(errCode);
        if (errMsg) lines2.push(errMsg);
        lines2.push('Risoluzione: ' + w + '×' + h);
        lines2.push('audioTracks: ' + audioTracksCount);
        setDetail(det, lines2.join('\n'), true);
        videoInfoEl.textContent = lines2.join('\n') + '\n\nPremi Indietro o Chiudi.';
      }
    }

    onPlaying = function () { finish(true, 'evento playing ricevuto'); };
    onError = function () {
      var e = videoEl.error;
      var msg = e ? 'MediaError code=' + e.code : 'errore video sconosciuto';
      finish(false, msg);
    };
    onLoadedMeta = function () { /* silent */ };

    videoEl.addEventListener('playing', onPlaying);
    videoEl.addEventListener('error', onError);
    videoEl.addEventListener('loadedmetadata', onLoadedMeta);

    videoTimeout = setTimeout(function () {
      finish(false, 'timeout 20 s senza evento playing (possibile CORS, codec non supportato, o URL non raggiungibile)');
    }, 20000);

    try {
      videoEl.src = url;
      try { videoEl.load(); } catch (_) {}
      var playPromise = videoEl.play();
      if (playPromise && playPromise.catch) {
        playPromise.catch(function (e) {
          var m = (e && e.name ? e.name + ': ' : '') + (e && e.message ? e.message : String(e));
          videoInfoEl.textContent = 'play() rejected: ' + m + '\nIn attesa di playing/error…\nURL: ' + masked;
        });
      }
    } catch (e) {
      finish(false, 'eccezione play: ' + (e && e.message ? e.message : String(e)));
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
    // wheel
    document.addEventListener('wheel', function (e) {
      wheelCount++;
      lastWheelDelta = e.deltaY;
      renderRemote();
    }, { passive: true });

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
    document.addEventListener('cursorVisibilityChange', function (e) {
      try { cursorState = (e.detail && e.detail.visibility) ? 'visible' : 'hidden'; } catch (_) {}
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
      try { window.close(); } catch (_) {}
      setTimeout(function () {
        var d = $('detail-remote');
        if (d) d.textContent = 'window.close() chiamato — su desktop il browser può bloccare la chiusura. Su TV l\'app dovrebbe chiudersi.';
      }, 300);
    });

    renderRemote();
  }

  // ------- Video overlay -------
  function setupVideoOverlay() {
    ensureVideoElements();
    var closeBtn = $('btn-video-close');
    if (closeBtn) closeBtn.addEventListener('click', closeVideo);
  }

  // ------- Navigazione spaziale (telecomando) -------
  function getFocusables() {
    if (videoOverlay && videoOverlay.classList.contains('open')) {
      return Array.prototype.slice.call(document.querySelectorAll('#video-overlay button'));
    }
    return Array.prototype.slice.call(document.querySelectorAll('main button'));
  }

  function focusElement(el) {
    if (!el) return;
    try { el.focus(); } catch (e) {}
    try { el.scrollIntoView({ block: 'center', behavior: 'smooth' }); } catch (e) { try { el.scrollIntoView(); } catch (_) {} }
    var card = el.closest ? el.closest('.card') : null;
    if (card) {
      try { card.scrollIntoView({ block: 'center', behavior: 'smooth' }); } catch (e) {}
    }
  }

  function rectCenter(rect) {
    return { x: rect.left + rect.width / 2, y: rect.top + rect.height / 2 };
  }

  function findNextFocus(current, dir) {
    var focusables = getFocusables();
    var idx = focusables.indexOf(current);
    if (idx === -1) return null;
    var curRect = current.getBoundingClientRect();
    var curC = rectCenter(curRect);
    var best = null;
    var bestDist = Infinity;
    for (var i = 0; i < focusables.length; i++) {
      if (i === idx) continue;
      var cand = focusables[i];
      var r = cand.getBoundingClientRect();
      var c = rectCenter(r);
      var dx = c.x - curC.x;
      var dy = c.y - curC.y;
      var match = false;
      if (dir === 'up') match = dy < -8;
      else if (dir === 'down') match = dy > 8;
      else if (dir === 'left') match = dx < -8;
      else if (dir === 'right') match = dx > 8;
      if (!match) continue;
      if ((dir === 'left' || dir === 'right') && Math.abs(dy) > 70) continue;
      if ((dir === 'up' || dir === 'down') && Math.abs(dx) > 500) {
        // still allow but with penalty — e.g., far horizontal distance shouldn't be chosen if closer exists
      }
      var dist = Math.sqrt(dx * dx + dy * dy);
      if (dir === 'up' || dir === 'down') dist += Math.abs(dx) * 0.35;
      else dist += Math.abs(dy) * 0.5;
      if (dist < bestDist) {
        bestDist = dist;
        best = cand;
      }
    }
    return best;
  }

  function setupSpatialNavigation() {
    // initial focus
    window.addEventListener('load', function () {
      var first = $('btn-server');
      if (first) focusElement(first);
    });
    // also focus after DOMContentLoaded if load already fired
    setTimeout(function () {
      var active = document.activeElement;
      var isButtonFocused = active && active.tagName === 'BUTTON';
      if (!isButtonFocused) {
        var first = $('btn-server');
        if (first) focusElement(first);
      }
    }, 400);

    // every focus scrolls to center
    document.addEventListener('focusin', function (e) {
      var t = e.target;
      if (t && t.tagName === 'BUTTON') {
        try { t.scrollIntoView({ block: 'center', behavior: 'smooth' }); } catch (ex) {}
        var card = t.closest ? t.closest('.card') : null;
        if (card) try { card.scrollIntoView({ block: 'center', behavior: 'smooth' }); } catch (ex2) {}
      }
    });

    // key handling for spatial nav + OK
    document.addEventListener('keydown', function (e) {
      var kc = e.keyCode || e.which || 0;
      var key = e.key || '';
      // Back 461 handling
      if (kc === 461) {
        if (videoOverlay && videoOverlay.classList.contains('open')) {
          try { e.preventDefault(); } catch (_) {}
          closeVideo();
          pushRemote({ keyCode: kc, key: key || e.key || '', code: e.code || '', time: new Date().toLocaleTimeString() + ' (Back → chiuso video)' });
          return;
        } else {
          try { e.preventDefault(); } catch (_) {}
          pushRemote({ keyCode: kc, key: key || '', code: e.code || '', time: new Date().toLocaleTimeString() });
          return;
        }
      }

      // Spatial navigation for arrows
      var isArrow = kc === 37 || kc === 38 || kc === 39 || kc === 40 || key === 'ArrowLeft' || key === 'ArrowRight' || key === 'ArrowUp' || key === 'ArrowDown';
      if (isArrow) {
        var dir = null;
        if (kc === 37 || key === 'ArrowLeft') dir = 'left';
        else if (kc === 38 || key === 'ArrowUp') dir = 'up';
        else if (kc === 39 || key === 'ArrowRight') dir = 'right';
        else if (kc === 40 || key === 'ArrowDown') dir = 'down';
        var active = document.activeElement;
        if (active && active.tagName === 'BUTTON') {
          var next = findNextFocus(active, dir);
          if (next) {
            try { e.preventDefault(); } catch (_) {}
            focusElement(next);
            // log navigation key as well
            pushRemote({ keyCode: kc, key: key || '', code: e.code || '', time: new Date().toLocaleTimeString() });
            return;
          } else {
            // no candidate, prevent scroll but still log
            try { e.preventDefault(); } catch (_) {}
          }
        } else {
          // no button focused, focus first
          var focusables = getFocusables();
          if (focusables.length) {
            try { e.preventDefault(); } catch (_) {}
            focusElement(focusables[0]);
            return;
          }
        }
      }

      // OK (13) activates focused button
      if (kc === 13 || key === 'Enter') {
        var ae = document.activeElement;
        // If focus is not on button, but OK pressed, try to focus first then click? But spec says OK attiva pulsante con focus
        // So if activeElement is BUTTON, trigger click
        if (ae && ae.tagName === 'BUTTON') {
          // let native click happen, but also ensure we prevent double? Native will click; we just log
          // But on some webOS, Enter doesn't trigger click automatically when we preventDefault elsewhere, so manually click
          // We will manually dispatch if not already
          // To avoid double, we don't preventDefault here, just log after
          // However we need to log this key as well; push after short delay to capture click
        }
      }

      // Log all keys (including arrows, OK) for remote probe
      // Don't duplicate Back already handled
      if (kc !== 461) {
        pushRemote({ keyCode: kc, key: key || '', code: e.code || '', time: new Date().toLocaleTimeString() });
      }

      // For Enter/OK, if activeElement is button, activate (in case native not fired due to our preventDefault on arrows only)
      // Check after logging, if kc 13 and active is button, simulate click if needed
      if ((kc === 13 || key === 'Enter') && document.activeElement && document.activeElement.tagName === 'BUTTON') {
        // Some TVs send 13 but not automatic click; we trigger
        // If the button already has click handler, calling click is safe (will fire once more if native also fires, but we debounce by checking event default?)
        // We will not manually click if the key event target is already the button and default not prevented — native will fire.
        // To be safe, we only manually click if we are handling spatial navigation and focus logic; but simpler: do nothing, native handles.
      }
    });
  }

  // ------- Bind buttons -------
  function bind() {
    var b1 = $('btn-server'); if (b1) b1.addEventListener('click', testServer);
    var b2 = $('btn-relay'); if (b2) b2.addEventListener('click', testRelay);
    var b2b = $('btn-pair'); if (b2b) b2b.addEventListener('click', testPairCreate);
    var b3 = $('btn-script'); if (b3) b3.addEventListener('click', testScripts);
    var bh = $('btn-video-hls'); if (bh) bh.addEventListener('click', function () { playTest('hls'); });
    var bt = $('btn-video-ts'); if (bt) bt.addEventListener('click', function () { playTest('ts'); });
    var bv = $('btn-video-vod'); if (bv) bv.addEventListener('click', function () { playTest('vod'); });
  }

  document.addEventListener('DOMContentLoaded', function () {
    updateHeader();
    loadConfig().then(function () { updateHeader(); });
    bind();
    setupRemote();
    setupVideoOverlay();
    setupSpatialNavigation();
    window.addEventListener('resize', updateHeader);
  });

  window.FVP_PROBE = {
    getConfigMasked: function () {
      var port = getServerPort(cfg.server);
      return {
        server: 'server configurato (porta ' + port + ')',
        username: '***',
        password: '***',
        relayUrl: maskUrl(cfg.relayUrl),
        liveStreamId: cfg.liveStreamId || '(auto)',
        vodStreamId: cfg.vodStreamId || '(auto)',
        vodExtension: cfg.vodExtension
      };
    },
    redactJson: redactJson
  };
})();
