// Render Server URL default
const RENDER_DEFAULT_URL = 'https://login-extream-neyt.onrender.com';
let renderServerUrl = localStorage.getItem('render_server_url') || RENDER_DEFAULT_URL;

let currentCode = null;
let pollInterval = null;
let currentCatalogType = null; // 'live', 'vod', 'series'

// In-memory catalog cache to avoid reloading from proxy
let catalogCache = {
    live: { categories: [], items: [], loaded: false },
    vod: { categories: [], items: [], loaded: false },
    series: { categories: [], items: [], loaded: false }
};

document.addEventListener('DOMContentLoaded', () => {
    const renderUrlInput = document.getElementById('renderUrlInput');
    if (renderUrlInput) {
        renderUrlInput.value = renderServerUrl;
        renderUrlInput.addEventListener('change', (e) => {
            let val = e.target.value.trim();
            if (val && !val.startsWith('http://') && !val.startsWith('https://')) {
                val = 'https://' + val;
            }
            renderServerUrl = val;
            localStorage.setItem('render_server_url', renderServerUrl);
            initRemoteSession();
        });
    }

    // Auto load last saved Xtream credentials
    const savedServer = localStorage.getItem('xtream_server');
    const savedUser = localStorage.getItem('xtream_username');
    const savedPass = localStorage.getItem('xtream_password');

    if (savedServer) document.getElementById('serverUrl').value = savedServer;
    if (savedUser) document.getElementById('username').value = savedUser;
    if (savedPass) document.getElementById('password').value = savedPass;

    // Android TV D-pad keyboard prevention trick:
    // Inputs start as readonly so focusing with D-pad arrows doesn't pop up the virtual keyboard.
    // Pressing OK / Enter enables editing and brings up the keyboard only when requested.
    const inputs = document.querySelectorAll('input[type="url"], input[type="text"], input[type="password"]');
    inputs.forEach(input => {
        input.setAttribute('readonly', 'true');

        input.addEventListener('click', () => {
            input.removeAttribute('readonly');
            input.focus();
        });

        input.addEventListener('keydown', (e) => {
            if (e.key === 'Enter') {
                if (input.hasAttribute('readonly')) {
                    input.removeAttribute('readonly');
                    input.focus();
                    e.preventDefault();
                }
            }
        });

        input.addEventListener('blur', () => {
            input.setAttribute('readonly', 'true');
        });
    });

    // Initialize remote PIN session for TV
    initRemoteSession();

    // Login Form Submission
    document.getElementById('loginForm').addEventListener('submit', async (e) => {
        e.preventDefault();
        const server = document.getElementById('serverUrl').value.trim().replace(/\/$/, '');
        const user = document.getElementById('username').value.trim();
        const pass = document.getElementById('password').value;

        if (!server || !user || !pass) {
            showStatus('Per favore compila tutti i campi!', '#ef4444');
            return;
        }

        showStatus('Verifica credenziali in corso...', '#38bdf8');
        await performXtreamLogin(server, user, pass);
    });

    // Logout button
    document.getElementById('logoutBtn').addEventListener('click', () => {
        document.getElementById('catalogView').classList.add('hidden');
        document.getElementById('loginView').style.display = 'flex';
        initRemoteSession();
    });

    // Back to dashboard from content view
    document.getElementById('btnBackToDashboard').addEventListener('click', () => {
        document.getElementById('contentView').classList.add('hidden');
        document.getElementById('catalogView').classList.remove('hidden');
        setTimeout(() => document.getElementById('cardLive').focus(), 100);
    });

    // Back from video player
    document.getElementById('btnBackFromPlayer').addEventListener('click', () => {
        const video = document.getElementById('tvVideoPlayer');
        video.pause();
        video.src = '';
        document.getElementById('playerView').classList.add('hidden');
        document.getElementById('contentView').classList.remove('hidden');
    });

    // Cards click action for Live TV, Movies, Series
    document.getElementById('cardLive').addEventListener('click', () => loadCatalog('live', 'Canali Live TV'));
    document.getElementById('cardMovies').addEventListener('click', () => loadCatalog('vod', 'Film / Cinema VOD'));
    document.getElementById('cardSeries').addEventListener('click', () => loadCatalog('series', 'Serie TV'));

    ['cardLive', 'cardMovies', 'cardSeries'].forEach(id => {
        const el = document.getElementById(id);
        if (el) {
            el.addEventListener('keydown', (e) => {
                if (e.key === 'Enter') el.click();
            });
        }
    });
});

async function performXtreamLogin(server, user, pass) {
    try {
        const cleanRenderUrl = renderServerUrl.replace(/\/$/, '');
        const authUrl = `${cleanRenderUrl}/api/proxy?server=${encodeURIComponent(server)}&username=${encodeURIComponent(user)}&password=${encodeURIComponent(pass)}`;

        const response = await fetch(authUrl);
        const data = await response.json();

        if (data && data.user_info && data.user_info.auth === 1) {
            localStorage.setItem('xtream_server', server);
            localStorage.setItem('xtream_username', user);
            localStorage.setItem('xtream_password', pass);
            openCatalogView(data.user_info, user);
        } else {
            showStatus('Credenziali errate o account non attivo!', '#ef4444');
        }
    } catch (err) {
        console.warn('Proxy Auth check failed, proceeding anyway:', err);
        localStorage.setItem('xtream_server', server);
        localStorage.setItem('xtream_username', user);
        localStorage.setItem('xtream_password', pass);
        openCatalogView({ status: 'Attivo', exp_date: 'Illimitata' }, user);
    }
}

function openCatalogView(userInfo, user) {
    if (pollInterval) clearInterval(pollInterval);

    document.getElementById('loginView').style.display = 'none';
    const catalogView = document.getElementById('catalogView');
    catalogView.classList.remove('hidden');

    document.getElementById('loggedUsername').innerText = user;
    document.getElementById('accountStatus').innerText = userInfo.status || 'Attivo';

    if (userInfo.exp_date && !isNaN(userInfo.exp_date)) {
        const d = new Date(parseInt(userInfo.exp_date) * 1000);
        document.getElementById('expDate').innerText = d.toLocaleDateString('it-IT');
    } else {
        document.getElementById('expDate').innerText = userInfo.exp_date || 'Illimitata';
    }

    setTimeout(() => document.getElementById('cardLive').focus(), 100);

    // BACKGROUND PRE-LOAD: Pre-fetch all catalogs immediately in background
    preloadAllCatalogs();
}

async function preloadAllCatalogs() {
    const server = localStorage.getItem('xtream_server');
    const user = localStorage.getItem('xtream_username');
    const pass = localStorage.getItem('xtream_password');
    const cleanRenderUrl = renderServerUrl.replace(/\/$/, '');

    const types = [
        { type: 'live', cat: 'get_live_categories', stream: 'get_live_streams' },
        { type: 'vod', cat: 'get_vod_categories', stream: 'get_vod_streams' },
        { type: 'series', cat: 'get_series_categories', stream: 'get_series' }
    ];

    for (let t of types) {
        if (!catalogCache[t.type].loaded) {
            try {
                const [catRes, streamRes] = await Promise.all([
                    fetch(`${cleanRenderUrl}/api/proxy?server=${encodeURIComponent(server)}&username=${encodeURIComponent(user)}&password=${encodeURIComponent(pass)}&action=${t.cat}`),
                    fetch(`${cleanRenderUrl}/api/proxy?server=${encodeURIComponent(server)}&username=${encodeURIComponent(user)}&password=${encodeURIComponent(pass)}&action=${t.stream}`)
                ]);
                const cats = await catRes.json();
                const items = await streamRes.json();

                catalogCache[t.type].categories = Array.isArray(cats) ? cats : [];
                catalogCache[t.type].items = Array.isArray(items) ? items : [];
                catalogCache[t.type].loaded = true;
            } catch (e) {
                console.warn(`Background preload failed for ${t.type}:`, e);
            }
        }
    }
}

async function loadCatalog(type, titleText) {
    currentCatalogType = type;
    document.getElementById('catalogView').classList.add('hidden');
    const contentView = document.getElementById('contentView');
    contentView.classList.remove('hidden');

    document.getElementById('contentSectionTitle').innerText = titleText;
    document.getElementById('contentCountBadge').innerText = 'Caricamento...';
    document.getElementById('loadingSpinner').classList.remove('hidden');
    document.getElementById('itemsGrid').classList.add('hidden');
    document.getElementById('categoryList').innerHTML = '';
    document.getElementById('itemsGrid').innerHTML = '';

    if (catalogCache[type].loaded && catalogCache[type].items.length > 0) {
        document.getElementById('contentCountBadge').innerText = `${catalogCache[type].items.length} Elementi`;
        document.getElementById('loadingSpinner').classList.add('hidden');
        document.getElementById('itemsGrid').classList.remove('hidden');

        renderCategories();
        renderItems(null);
        return;
    }

    const server = localStorage.getItem('xtream_server');
    const user = localStorage.getItem('xtream_username');
    const pass = localStorage.getItem('xtream_password');
    const cleanRenderUrl = renderServerUrl.replace(/\/$/, '');

    let catAction = type === 'vod' ? 'get_vod_categories' : (type === 'series' ? 'get_series_categories' : 'get_live_categories');
    let streamAction = type === 'vod' ? 'get_vod_streams' : (type === 'series' ? 'get_series' : 'get_live_streams');

    try {
        const [catRes, streamRes] = await Promise.all([
            fetch(`${cleanRenderUrl}/api/proxy?server=${encodeURIComponent(server)}&username=${encodeURIComponent(user)}&password=${encodeURIComponent(pass)}&action=${catAction}`),
            fetch(`${cleanRenderUrl}/api/proxy?server=${encodeURIComponent(server)}&username=${encodeURIComponent(user)}&password=${encodeURIComponent(pass)}&action=${streamAction}`)
        ]);

        const cats = await catRes.json();
        const items = await streamRes.json();

        catalogCache[type].categories = Array.isArray(cats) ? cats : [];
        catalogCache[type].items = Array.isArray(items) ? items : [];
        catalogCache[type].loaded = true;

        document.getElementById('contentCountBadge').innerText = `${catalogCache[type].items.length} Elementi`;
        document.getElementById('loadingSpinner').classList.add('hidden');
        document.getElementById('itemsGrid').classList.remove('hidden');

        renderCategories();
        renderItems(null);

    } catch (err) {
        console.error('Error loading catalog:', err);
        document.getElementById('loadingMsg').innerText = 'Impossibile scaricare il catalogo tramite proxy render.';
    }
}

function renderCategories() {
    const listEl = document.getElementById('categoryList');
    listEl.innerHTML = '';

    const allBtn = document.createElement('button');
    allBtn.className = 'category-btn active';
    allBtn.innerText = 'Tutte le categorie';
    allBtn.tabIndex = 31;
    allBtn.addEventListener('click', () => {
        document.querySelectorAll('.category-btn').forEach(el => el.classList.remove('active'));
        allBtn.classList.add('active');
        renderItems(null);
    });
    listEl.appendChild(allBtn);

    const categories = catalogCache[currentCatalogType].categories;
    categories.forEach((cat, idx) => {
        const item = document.createElement('button');
        item.className = 'category-btn';
        item.innerText = cat.category_name;
        item.tabIndex = 32 + idx;
        item.addEventListener('click', () => {
            document.querySelectorAll('.category-btn').forEach(el => el.classList.remove('active'));
            item.classList.add('active');
            renderItems(cat.category_id);
        });
        listEl.appendChild(item);
    });
}

function renderItems(categoryId) {
    const gridEl = document.getElementById('itemsGrid');
    gridEl.innerHTML = '';

    const items = catalogCache[currentCatalogType].items;
    const filtered = categoryId
        ? items.filter(i => i.category_id == categoryId)
        : items;

    if (filtered.length === 0) {
        gridEl.innerHTML = '<p style="color:#94a3b8;grid-column:1/-1;text-align:center;padding:2rem;">Nessun elemento trovato.</p>';
        return;
    }

    filtered.slice(0, 100).forEach((item, idx) => {
        const card = document.createElement('div');
        card.className = 'item-card';
        card.tabIndex = 100 + idx;

        const title = item.name || item.title || 'Senza titolo';
        const img = item.stream_icon || item.cover || '';

        card.innerHTML = `
            ${img ? `<img class="item-icon" src="${img}" alt="" onerror="this.style.display='none'"/>` : `<div class="item-icon" style="font-size:2rem;">📺</div>`}
            <div class="item-name">${title}</div>
        `;

        card.addEventListener('click', () => playMedia(item));
        gridEl.appendChild(card);
    });

    const firstCard = gridEl.querySelector('.item-card');
    if (firstCard) firstCard.focus();
}

function playMedia(item) {
    const server = localStorage.getItem('xtream_server').replace(/\/$/, '');
    const user = localStorage.getItem('xtream_username');
    const pass = localStorage.getItem('xtream_password');

    let streamUrl = '';
    let title = item.name || item.title || 'Streaming';

    if (currentCatalogType === 'live') {
        streamUrl = `${server}/live/${user}/${pass}/${item.stream_id}.m3u8`;
    } else if (currentCatalogType === 'vod') {
        const ext = item.container_extension || 'mp4';
        streamUrl = `${server}/movie/${user}/${pass}/${item.stream_id}.${ext}`;
    } else if (currentCatalogType === 'series') {
        alert(`Serie TV: ${title}`);
        return;
    }

    document.getElementById('contentView').classList.add('hidden');
    const playerView = document.getElementById('playerView');
    playerView.classList.remove('hidden');
    document.getElementById('playerTitle').innerText = title;

    const video = document.getElementById('tvVideoPlayer');
    video.src = streamUrl;
    video.play().catch(e => console.error('Playback error:', e));
}

async function initRemoteSession() {
    const qrContainer = document.getElementById('qrcode');
    const pinDisplay = document.getElementById('pinDisplay');
    const webUrlText = document.getElementById('webUrlText');
    const statusText = document.getElementById('remoteStatusText');

    if (pollInterval) clearInterval(pollInterval);

    statusText.innerText = 'Richiesta codice in corso...';

    const cleanRenderUrl = renderServerUrl.replace(/\/$/, '');

    try {
        const response = await fetch(`${cleanRenderUrl}/api/session/create`);
        if (!response.ok) throw new Error(`HTTP ${response.status}`);

        const data = await response.json();
        currentCode = data.code;

        pinDisplay.innerText = currentCode;
        const targetUrl = `${cleanRenderUrl}/?code=${currentCode}`;
        webUrlText.innerHTML = `<span>${cleanRenderUrl}</span>`;

        qrContainer.innerHTML = '';
        if (typeof QRCode !== 'undefined') {
            try {
                new QRCode(qrContainer, {
                    text: targetUrl,
                    width: 134,
                    height: 134,
                    colorDark: "#000000",
                    colorLight: "#ffffff"
                });
            } catch (e) {
                qrContainer.innerHTML = `<img src="https://api.qrserver.com/v1/create-qr-code/?size=134x134&data=${encodeURIComponent(targetUrl)}" width="134" height="134" alt="QR Code" />`;
            }
        } else {
            qrContainer.innerHTML = `<img src="https://api.qrserver.com/v1/create-qr-code/?size=134x134&data=${encodeURIComponent(targetUrl)}" width="134" height="134" alt="QR Code" />`;
        }

        statusText.innerText = 'In attesa dello smartphone...';

        pollInterval = setInterval(() => checkSessionStatus(cleanRenderUrl, currentCode), 2000);

    } catch (err) {
        console.error('Remote Session Error:', err);
        pinDisplay.innerText = '----';
        statusText.innerText = 'Server Render non raggiungibile.';
        qrContainer.innerHTML = '<p style="color:#ef4444;font-size:0.75rem;">Impossibile caricare QR</p>';
    }
}

async function checkSessionStatus(baseUrl, code) {
    try {
        const res = await fetch(`${baseUrl}/api/session/status/${code}`);
        if (!res.ok) return;

        const session = await res.json();
        if (session.status === 'completed' && session.data) {
            clearInterval(pollInterval);

            document.getElementById('serverUrl').value = session.data.server || '';
            document.getElementById('username').value = session.data.username || '';
            document.getElementById('password').value = session.data.password || '';

            const statusText = document.getElementById('remoteStatusText');
            statusText.innerText = ' Credenziali ricevute!';
            statusText.style.color = '#4ade80';

            showStatus(' Credenziali compilate dallo smartphone!', '#4ade80');

            setTimeout(() => {
                const loginBtn = document.getElementById('loginBtn');
                if (loginBtn) loginBtn.focus();
            }, 150);
        }
    } catch (err) {
        console.warn('Polling error:', err);
    }
}

function showStatus(text, color) {
    const el = document.getElementById('statusNotification');
    if (el) {
        el.innerText = text;
        el.style.color = color;
    }
}
