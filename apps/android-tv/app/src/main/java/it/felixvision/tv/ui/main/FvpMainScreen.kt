package it.felixvision.tv.ui.main

import android.app.Activity
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import androidx.activity.compose.BackHandler
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.input.rememberTextFieldState
import androidx.compose.runtime.Composable
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.produceState
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.runtime.getValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.window.Dialog
import androidx.compose.ui.window.DialogProperties
import androidx.core.content.ContextCompat
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import androidx.lifecycle.compose.LocalLifecycleOwner
import androidx.lifecycle.viewmodel.compose.viewModel
import androidx.lifecycle.viewmodel.initializer
import androidx.lifecycle.viewmodel.viewModelFactory
import androidx.tv.material3.DrawerValue
import androidx.tv.material3.Text
import androidx.tv.material3.rememberDrawerState
import it.felixvision.tv.AppContainer
import it.felixvision.tv.data.catalog.Catalog
import it.felixvision.tv.data.catalog.Episode
import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.catalog.VodStream
import it.felixvision.tv.data.channels.MyChannel
import it.felixvision.tv.data.channels.MyChannelPlayback
import it.felixvision.tv.data.channels.MyChannels
import it.felixvision.tv.data.continuewatching.ContinueEntry
import it.felixvision.tv.data.favorites.FavoriteItem
import it.felixvision.tv.data.playback.ChannelListOrigin
import it.felixvision.tv.data.playback.ChannelNumberInput
import it.felixvision.tv.data.playback.SeriesPlayback
import it.felixvision.tv.data.playback.buildEpisodeQueue
import it.felixvision.tv.data.playback.indexOfEpisode
import it.felixvision.tv.data.progress.ProgressKeys
import it.felixvision.tv.data.progress.WatchProgress
import it.felixvision.tv.data.update.UpdateCheckState
import it.felixvision.tv.ui.access.AccessViewModel
import it.felixvision.tv.ui.catalog.CatalogViewModel
import it.felixvision.tv.ui.catalog.ContinueWatchingSection
import it.felixvision.tv.ui.catalog.FavoritesSection
import it.felixvision.tv.ui.catalog.FilmSection
import it.felixvision.tv.ui.catalog.LiveSection
import it.felixvision.tv.ui.catalog.MyChannelDialog
import it.felixvision.tv.ui.catalog.NovitaSection
import it.felixvision.tv.ui.catalog.SearchSection
import it.felixvision.tv.ui.catalog.SerieSection
import it.felixvision.tv.ui.catalog.deriveSeasons
import it.felixvision.tv.ui.detail.LocalContinueEntries
import it.felixvision.tv.ui.components.AppBackground
import it.felixvision.tv.ui.components.BrandBackdrop
import it.felixvision.tv.ui.components.EmptyState
import it.felixvision.tv.ui.components.ErrorState
import it.felixvision.tv.ui.components.FvpPrimaryButton
import it.felixvision.tv.ui.components.FvpSecondaryButton
import it.felixvision.tv.ui.components.LoadingState
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.navigation.DrawerFocusHandle
import it.felixvision.tv.ui.navigation.DrawerSection
import it.felixvision.tv.ui.navigation.FvpNavigationDrawer
import it.felixvision.tv.ui.player.PlaybackSource
import it.felixvision.tv.ui.player.PlayerScreen
import it.felixvision.tv.ui.player.PlayerSession
import it.felixvision.tv.ui.settings.SettingsScreen
import it.felixvision.tv.ui.settings.SettingsViewModel
import it.felixvision.tv.ui.theme.FvpColors
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch

/**
 * Costruisce la chiave di un ViewModel legata alla sessione di accesso in
 * [FvpMainScreen]. Anche con gli stessi [server] e [username], un nuovo
 * [sessionId] genera una chiave diversa: dopo l'uscita dall'account e un nuovo
 * accesso lo store dell'Activity crea una nuova istanza e le istanze della
 * sessione precedente non vengono più restituite.
 */
fun sessionViewModelKey(
    prefix: String,
    sessionId: Long,
    server: String,
    username: String,
): String = "${prefix}_${sessionId}_$server|$username"

fun settingsSessionKey(
    sessionId: Long,
    server: String,
    username: String,
): String = sessionViewModelKey(
    prefix = "settings",
    sessionId = sessionId,
    server = server,
    username = username,
)

fun catalogSessionKey(
    sessionId: Long,
    server: String,
    username: String,
): String = sessionViewModelKey(
    prefix = "catalog",
    sessionId = sessionId,
    server = server,
    username = username,
)

@Composable
fun FvpMainScreen(
    container: AppContainer,
    server: String,
    username: String,
    password: String,
    serverCode: String? = null,
    accountStatus: String,
    expiresAtEpochSeconds: Long?,
    maxConnections: Int?,
    activeConnections: Int?,
    allowedOutputFormats: List<String> = emptyList(),
    serverTimezone: String? = null,
    scale: UiScale,
    accessViewModel: AccessViewModel,
    onSignOut: () -> Unit,
    sessionId: Long = 0L,
) {
    var currentServer by remember(sessionId) { mutableStateOf(server) }
    var currentUsername by remember(sessionId) { mutableStateOf(username) }
    var currentPassword by remember(sessionId) { mutableStateOf(password) }
    var selectedTab by remember(sessionId) { mutableStateOf(DrawerSection.Novita) }
    // One-shot return route, scoped to the current account and cleared by menu navigation.
    var liveCategoryEntry by remember(sessionId, currentServer, currentUsername) { mutableStateOf<FavoriteItem?>(null) }
    var restoreCategoryFavoriteId by remember(sessionId, currentServer, currentUsername) { mutableStateOf<String?>(null) }
    var showExitConfirm by remember(sessionId) { mutableStateOf(false) }
    var playerSession by remember(sessionId, currentServer, currentUsername) { mutableStateOf<PlayerSession?>(null) }
    var playerReturnTick by remember(sessionId) { mutableIntStateOf(0) }
    var returnLiveChannelId by remember(sessionId) { mutableStateOf<String?>(null) }
    var returnEpisodeId by remember(sessionId) { mutableStateOf<String?>(null) }
    var favoritesTick by remember(sessionId) { mutableStateOf(0L) }
    // Canale della finestra "Aggiungi a I miei canali" / menu di modifica.
    var myChannelEdit by remember(sessionId, currentServer, currentUsername) { mutableStateOf<MyChannel?>(null) }
    var myChannelFocusId by remember(sessionId, currentServer, currentUsername) { mutableStateOf<String?>(null) }
    var myChannelFocusTick by remember(sessionId) { mutableIntStateOf(0) }
    var favoritesMessage by remember(sessionId) { mutableStateOf<String?>(null) }
    var continueLoadingKey by remember(sessionId) { mutableStateOf<String?>(null) }
    var continueErrorMessage by remember(sessionId) { mutableStateOf<String?>(null) }
    // Il testo cercato resta quando si torna nella sezione durante la sessione.
    val searchQueryState = rememberTextFieldState()
    val scope = rememberCoroutineScope()
    val context = LocalContext.current

    val contentFocusRequester = remember { FocusRequester() }
    val drawerFocusHandle = remember { DrawerFocusHandle() }
    val drawerState = rememberDrawerState(initialValue = DrawerValue.Closed)

    val catalogViewModel: CatalogViewModel = viewModel(
        factory = viewModelFactory {
            initializer { CatalogViewModel(container, currentServer, currentUsername, currentPassword) }
        },
        key = catalogSessionKey(sessionId, currentServer, currentUsername),
    )
    val catalogState by catalogViewModel.ui.collectAsState()

    val settingsViewModel: SettingsViewModel = viewModel(
        factory = viewModelFactory {
            initializer {
                SettingsViewModel(
                    container = container,
                    server = currentServer,
                    username = currentUsername,
                    password = currentPassword,
                    expiresAtEpochSeconds = expiresAtEpochSeconds,
                    status = accountStatus,
                    maxConnections = maxConnections,
                    activeConnections = activeConnections,
                    onCredentialsReplaced = { newServer, newUser, newPass ->
                        currentServer = newServer
                        currentUsername = newUser
                        currentPassword = newPass
                    },
                    onSignOut = onSignOut,
                )
            }
        },
        key = settingsSessionKey(sessionId, currentServer, currentUsername),
    )

    // Favorites for all sections
    val allFavorites by produceState<List<FavoriteItem>>(initialValue = emptyList(), favoritesTick, currentServer, currentUsername) {
        value = container.favoritesStore.getFavorites(currentServer, currentUsername)
    }

    // "I miei canali": lista personale numerata, ricaricata a ogni scrittura.
    val myChannelsRevision by container.myChannelsStore.revision.collectAsState()
    val myChannels by produceState<List<MyChannel>>(
        initialValue = emptyList(),
        myChannelsRevision,
        currentServer,
        currentUsername,
    ) {
        value = container.myChannelsStore.getChannels(currentServer, currentUsername)
    }

    // Standby (ACTION_SCREEN_OFF) e passaggio in secondo piano (ON_STOP)
    // ribloccano la sessione: nessun contenuto protetto resta visibile.
    DisposableEffect(context, container) {
        val receiver = object : BroadcastReceiver() {
            override fun onReceive(receiverContext: Context?, intent: Intent?) {
                if (intent?.action == Intent.ACTION_SCREEN_OFF) container.protectedSession.lock()
            }
        }
        val registered = runCatching {
            ContextCompat.registerReceiver(
                context,
                receiver,
                IntentFilter(Intent.ACTION_SCREEN_OFF),
                ContextCompat.RECEIVER_NOT_EXPORTED,
            )
        }.isSuccess
        onDispose {
            if (registered) runCatching { context.unregisterReceiver(receiver) }
        }
    }

    val lifecycleOwner = LocalLifecycleOwner.current
    DisposableEffect(lifecycleOwner, container) {
        val observer = LifecycleEventObserver { _, event ->
            if (event == Lifecycle.Event.ON_STOP) container.protectedSession.lock()
        }
        lifecycleOwner.lifecycle.addObserver(observer)
        onDispose { lifecycleOwner.lifecycle.removeObserver(observer) }
    }

    // Alla prima apertura dell'account i vecchi preferiti "live" si tolgono
    // dall'archivio preferiti: non vengono migrati in "I miei canali".
    LaunchedEffect(sessionId, currentServer, currentUsername) {
        container.myChannelsStore.migrateLegacyLiveFavorites(
            server = currentServer,
            username = currentUsername,
            favoritesStore = container.favoritesStore,
        )
        favoritesTick += 1
    }

    // Avanzamento di film ed episodi: si ricarica a ogni salvataggio del player.
    val progressRevision by container.progressStore.revision.collectAsState()
    val watchProgress by produceState<Map<String, WatchProgress>>(
        initialValue = emptyMap(),
        progressRevision,
        currentServer,
        currentUsername,
    ) {
        value = container.progressStore.getAll(currentServer, currentUsername)
    }

    // "Continua a guardare": si ricarica a ogni scrittura dell'archivio.
    val continueRevision by container.continueWatchingStore.revision.collectAsState()
    val continueEntries by produceState<List<ContinueEntry>>(
        initialValue = emptyList(),
        continueRevision,
        currentServer,
        currentUsername,
    ) {
        value = container.continueWatchingStore.getAll(currentServer, currentUsername)
    }

    // Contenuti protetti: la sessione dice se mostrarli (in memoria, spenta a
    // ogni avvio), l'archivio dice cosa è nascosto per server+utente.
    // `null` = archivio dell'account corrente non ancora letto: finché la
    // sessione è bloccata non si mostra nulla (né altro account né dati vecchi).
    val unlocked by container.protectedSession.unlocked.collectAsState()
    val protectedData by rememberProtectedData(
        store = container.protectedContentStore,
        server = currentServer,
        username = currentUsername,
    )

    // Tutte le liste visibili della schermata: con la sessione bloccata (o con
    // qualcosa di nascosto) categorie e contenuti protetti spariscono ovunque,
    // zapping e tasti numerici del player compresi.
    val visible = remember(
        catalogState.catalog,
        catalogState.recentFilms,
        catalogState.recentSeries,
        allFavorites,
        continueEntries,
        myChannels,
        protectedData,
        unlocked,
    ) {
        visibleContent(
            catalog = catalogState.catalog,
            recentFilms = catalogState.recentFilms,
            recentSeries = catalogState.recentSeries,
            favorites = allFavorites,
            continueEntries = continueEntries,
            myChannels = myChannels,
            data = protectedData,
            unlocked = unlocked,
        )
    }
    val visibleCatalog = visible.catalog
    val visibleRecentFilms = visible.recentFilms
    val visibleRecentSeries = visible.recentSeries
    val visibleFavorites = visible.favorites
    val visibleContinueEntries = visible.continueEntries
    val visibleMyChannels = visible.myChannels
    val visibleMyChannelIds = remember(visibleMyChannels) { visibleMyChannels.map { it.streamId }.toSet() }

    // Riblocco dalla pagina delle Impostazioni con un player aperto: il player
    // si chiude subito (stessa uscita dell'OK/Indietro, con ripristino del
    // focus nella sezione) e le liste tornano filtrate.
    LaunchedEffect(unlocked) {
        if (!unlocked && playerSession != null) {
            playerSession = null
            playerReturnTick += 1
        }
    }

    // Aggiornamenti dell'app: stato condiviso con le Impostazioni (una sola
    // fonte, nessuna richiesta duplicata) e controllo all'apertura della
    // schermata principale, poi ogni 12 ore finché l'app resta aperta.
    val updateCheckState by container.updateChecker.state.collectAsState()
    LaunchedEffect(container, sessionId) {
        container.updateChecker.startPeriodicChecks()
    }

    LaunchedEffect(Unit) {
        delay(200)
        contentFocusRequester.requestFocus()
    }

    LaunchedEffect(favoritesMessage) {
        if (favoritesMessage != null) {
            delay(2000)
            favoritesMessage = null
        }
    }

    BackHandler(enabled = true) {
        if (showExitConfirm) {
            showExitConfirm = false
            // return focus to Novità drawer
            scope.launch {
                drawerState.setValue(DrawerValue.Open)
                drawerFocusHandle.requestFocus()
            }
            return@BackHandler
        }
        if (drawerState.currentValue == DrawerValue.Open) {
            if (selectedTab != DrawerSection.Novita) {
                liveCategoryEntry = null
                restoreCategoryFavoriteId = null
                selectedTab = DrawerSection.Novita
                // Drawer will auto-focus Novità via LaunchedEffect; ensure request
                scope.launch {
                    // small delay to allow LaunchedEffect to set handle
                    delay(50)
                    drawerFocusHandle.requestFocus()
                }
            } else {
                showExitConfirm = true
            }
            return@BackHandler
        }
        if (selectedTab == DrawerSection.Live && liveCategoryEntry != null) {
            restoreCategoryFavoriteId = liveCategoryEntry?.id
            liveCategoryEntry = null
            selectedTab = DrawerSection.Preferiti
            return@BackHandler
        }
        // In content -> focus menu
        scope.launch {
            drawerState.setValue(DrawerValue.Open)
        }
    }

    fun newPlayerSession(
        source: PlaybackSource,
        autoResume: Boolean = false,
    ) = PlayerSession(
        id = System.nanoTime(),
        server = currentServer,
        username = currentUsername,
        password = currentPassword,
        allowedOutputFormats = allowedOutputFormats,
        serverTimezone = serverTimezone,
        source = source,
        autoResume = autoResume,
    )

    fun playLive(channel: LiveStream) {
        val catalog = visibleCatalog
        val allStreams = catalog?.liveStreams.orEmpty()
        val categories = catalog?.liveCategories.orEmpty()
        // Zapping nella categoria di partenza; il player riceve anche tutti i
        // canali Live del catalogo per il cambio canale digitando il numero.
        val target = ChannelNumberInput.resolveZappingTarget(
            channel = channel,
            allStreams = allStreams,
            categories = categories,
        )
        playerSession = newPlayerSession(
            PlaybackSource.Live(
                channels = target.channels,
                startIndex = target.startIndex,
                categoryId = target.categoryId,
                categoryName = target.categoryName,
                allChannels = allStreams.ifEmpty { target.channels },
                categories = categories,
            )
        )
    }

    /**
     * OK su un canale di "I miei canali": player con zapping Su/Giù nell'ordine
     * della lista (circolare) e numerazione personale dei tasti numerici.
     */
    fun playMyChannel(channel: MyChannel) {
        val catalog = visibleCatalog
        val ordered = MyChannelPlayback.streams(visibleMyChannels, catalog?.liveStreams.orEmpty())
            .ifEmpty { listOf(LiveStream(streamId = channel.streamId, name = channel.name, streamIcon = channel.logo)) }
        val index = ordered.indexOfFirst { it.streamId == channel.streamId }.coerceAtLeast(0)
        playerSession = newPlayerSession(
            PlaybackSource.Live(
                channels = ordered,
                startIndex = index,
                categoryId = null,
                categoryName = "I miei canali",
                allChannels = ordered,
                categories = emptyList(),
                numbering = ChannelListOrigin.MY_CHANNELS.numbering,
            )
        )
    }

    /** Pressione lunga su un canale: aggiunta o menu di modifica. */
    fun openMyChannelDialog(stream: LiveStream) {
        myChannelEdit = MyChannel(
            streamId = stream.streamId,
            name = stream.name,
            logo = stream.streamIcon,
        )
    }

    fun closeMyChannelDialog(channel: MyChannel?) {
        myChannelEdit = null
        if (channel != null) {
            myChannelFocusId = channel.streamId
            myChannelFocusTick += 1
        }
    }

    fun confirmMyChannelPosition(channel: MyChannel, position: Int) {
        scope.launch {
            val current = container.myChannelsStore.getChannels(currentServer, currentUsername)
            if (MyChannels.contains(current, channel.streamId)) {
                container.myChannelsStore.moveTo(currentServer, currentUsername, channel.streamId, position)
            } else {
                container.myChannelsStore.insertAt(currentServer, currentUsername, channel, position)
            }
            closeMyChannelDialog(channel)
        }
    }

    /**
     * Spostamento di una posizione dal menu: il menu resta aperto e mostra il
     * numero aggiornato; alla chiusura il focus torna sul canale modificato.
     */
    fun moveMyChannel(channel: MyChannel, up: Boolean) {
        scope.launch {
            if (up) {
                container.myChannelsStore.moveUp(currentServer, currentUsername, channel.streamId)
            } else {
                container.myChannelsStore.moveDown(currentServer, currentUsername, channel.streamId)
            }
        }
    }

    fun removeMyChannel(channel: MyChannel) {
        scope.launch {
            container.myChannelsStore.remove(currentServer, currentUsername, channel.streamId)
            closeMyChannelDialog(channel)
        }
    }

    fun playMovie(film: VodStream, autoResume: Boolean = false) {
        // Da Preferiti/Novità/Continua a guardare la card può non avere
        // l'estensione del contenitore: se il catalogo è disponibile si usa la
        // voce completa.
        val resolved = visibleCatalog
            ?.vodStreams
            ?.firstOrNull { it.streamId == film.streamId }
            ?: film
        playerSession = newPlayerSession(
            PlaybackSource.Movie(
                stream = resolved,
                categoryId = resolved.categoryId,
                title = resolved.name.ifBlank { film.name },
            ),
            autoResume = autoResume,
        )
    }

    fun playEpisode(playback: SeriesPlayback) {
        playerSession = newPlayerSession(PlaybackSource.Series(playback))
    }

    fun showContinueError(message: String) {
        continueErrorMessage = message
        scope.launch {
            delay(5000)
            if (continueErrorMessage == message) continueErrorMessage = null
        }
    }

    /**
     * Le serie hanno bisogno della coda episodi della scheda: le informazioni
     * si caricano al momento, con indicatore di caricamento e messaggio
     * d'errore senza URL.
     */
    fun openContinueSeries(entry: ContinueEntry) {
        val seriesId = entry.seriesId ?: return
        continueLoadingKey = entry.key
        continueErrorMessage = null
        scope.launch {
            val info = try {
                catalogViewModel.loadSeriesInfo(seriesId)
            } catch (e: CancellationException) {
                throw e
            } catch (_: Exception) {
                null
            }
            continueLoadingKey = null
            if (info == null) {
                showContinueError("Informazioni della serie non disponibili. Riprova.")
                return@launch
            }
            val seasonOrder = deriveSeasons(info.seasons, info.episodes).map { it.seasonNumber }
            val queue = buildEpisodeQueue(seasonOrder, info.episodes)
            if (queue.isEmpty()) {
                showContinueError("Nessun episodio disponibile per questa serie.")
                return@launch
            }
            val savedIndex = indexOfEpisode(queue, entry.episodeId.orEmpty())
            playerSession = newPlayerSession(
                PlaybackSource.Series(
                    SeriesPlayback(
                        seriesId = seriesId,
                        title = entry.title,
                        categoryId = entry.categoryId,
                        queue = queue,
                        startIndex = if (savedIndex >= 0) savedIndex else 0,
                        cover = entry.poster,
                    ),
                ),
                autoResume = true,
            )
        }
    }

    /**
     * "Continua a guardare": OK avvia subito il player dal punto salvato, senza
     * la finestra "Riprendi".
     */
    fun openContinueEntry(entry: ContinueEntry) {
        if (entry.isMovie) {
            val streamId = entry.streamId ?: return
            val fromCatalog = visibleCatalog?.vodStreams?.firstOrNull { it.streamId == streamId }
            val film = fromCatalog ?: VodStream(
                streamId = streamId,
                name = entry.title,
                streamIcon = entry.poster,
                categoryId = entry.categoryId,
                containerExtension = entry.containerExtension,
            )
            playMovie(
                film = film.copy(
                    name = film.name.ifBlank { entry.title },
                    streamIcon = film.streamIcon ?: entry.poster,
                    containerExtension = film.containerExtension ?: entry.containerExtension,
                ),
                autoResume = true,
            )
            return
        }
        openContinueSeries(entry)
    }

    /** Pressione lunga nella sezione: la voce sparisce finché non viene ripresa. */
    fun hideContinueEntry(entry: ContinueEntry) {
        scope.launch {
            container.continueWatchingStore.hide(currentServer, currentUsername, entry.key)
            favoritesMessage = "Rimosso da Continua a guardare"
        }
    }

    /** "Segna come (non) visto" dai cataloghi: l'archivio aggiorna subito le icone. */
    fun setMovieWatched(film: VodStream, watched: Boolean, durationMillis: Long) {
        scope.launch {
            val key = ProgressKeys.movie(film.streamId)
            if (watched) {
                container.progressStore.markWatched(currentServer, currentUsername, key, durationMillis)
                // "Segna come visto" toglie la voce film da Continua a guardare;
                // "Segna come non visto" non la ricrea.
                container.continueWatchingStore.remove(
                    currentServer,
                    currentUsername,
                    ContinueEntry.movieKey(film.streamId),
                )
            } else {
                container.progressStore.remove(currentServer, currentUsername, key)
            }
        }
    }

    fun setEpisodeWatched(episode: Episode, watched: Boolean, durationMillis: Long) {
        scope.launch {
            val key = ProgressKeys.episode(episode.id)
            if (watched) {
                container.progressStore.markWatched(currentServer, currentUsername, key, durationMillis)
            } else {
                container.progressStore.remove(currentServer, currentUsername, key)
            }
        }
    }

    fun toggleFavorite(item: FavoriteItem) {
        scope.launch {
            val added = container.favoritesStore.toggleFavorite(currentServer, currentUsername, item)
            favoritesTick += 1
            favoritesMessage = if (added) "Aggiunto ai preferiti" else "Rimosso dai preferiti"
        }
    }

    // La scheda serie legge da qui la stagione dell'episodio da continuare.
    CompositionLocalProvider(LocalContinueEntries provides visibleContinueEntries) {
    FvpNavigationDrawer(
        selected = selectedTab,
        onSelect = {
            liveCategoryEntry = null
            restoreCategoryFavoriteId = null
            selectedTab = it
        },
        scale = scale,
        drawerState = drawerState,
        contentFocusRequester = contentFocusRequester,
        drawerFocusHandle = drawerFocusHandle,
        // Pallino arancio su Impostazioni finché l'app non risulta aggiornata;
        // un errore di controllo non mostra nulla nel menu.
        updateAvailable = updateCheckState is UpdateCheckState.Available,
    ) {
        // Sfondo unico dell'area a destra del menu (colonna categorie e contenuti
        // compresi): base #1C1C1E e due aloni verdi molto tenui.
        AppBackground(modifier = Modifier.fillMaxSize()) {
            Box(modifier = Modifier.fillMaxSize().padding(scale.dp(8f))) {
                when {
                    // L'attesa del primo catalogo è a schermo intero: il BrandBackdrop
                    // è composto in fondo a questa schermata, sopra il menu laterale.
                    catalogState.isLoading && catalogState.catalog == null -> Unit
                    catalogState.errorMessage != null && catalogState.catalog == null -> {
                        ErrorState(message = catalogState.errorMessage!!, scale = scale, onRetry = { catalogViewModel.retry() }, modifier = Modifier.align(Alignment.Center))
                    }
                    else -> {
                        // Catalogo visibile: tutto ciò che non è protetto.
                        val catalog: Catalog? = visibleCatalog
                        if (visible.pending) {
                            // Sessione bloccata e contenuti protetti dell'account
                            // corrente non ancora letti: nessuna sezione e nessun
                            // "Catalogo vuoto", lo stesso vuoto dell'attesa del
                            // primo catalogo. Il menu laterale resta.
                        } else if (catalog != null) {
                            when (selectedTab) {
                                DrawerSection.Novita -> NovitaSection(
                                    recentFilms = visibleRecentFilms,
                                    recentSeries = visibleRecentSeries,
                                    scale = scale,
                                    onLongPressFilm = { vod ->
                                        val fav = FavoriteItem(id = "vod_${vod.streamId}", type = "vod", title = vod.name, poster = vod.streamIcon, categoryId = vod.categoryId)
                                        toggleFavorite(fav)
                                    },
                                    onLongPressSeries = { serie ->
                                        val fav = FavoriteItem(id = "series_${serie.seriesId}", type = "series", title = serie.name, poster = serie.cover, categoryId = serie.categoryId)
                                        toggleFavorite(fav)
                                    },
                                    onPlayFilm = { film -> playMovie(film) },
                                    onPlayEpisode = { _, playback -> playEpisode(playback) },
                                    onSetEpisodeWatched = { episode, watched, duration ->
                                        setEpisodeWatched(episode, watched, duration)
                                    },
                                    onToggleWatched = { film, watched, duration ->
                                        setMovieWatched(film, watched, duration)
                                    },
                                    favorites = visibleFavorites,
                                    catalogViewModel = catalogViewModel,
                                    contentFocusRequester = contentFocusRequester,
                                    progress = watchProgress,
                                    refocusTick = playerReturnTick,
                                    focusEpisodeId = returnEpisodeId,
                                    modifier = Modifier.fillMaxSize().focusRequester(contentFocusRequester),
                                )
                                DrawerSection.ContinuaAGuardare -> ContinueWatchingSection(
                                    entries = visibleContinueEntries,
                                    scale = scale,
                                    progress = watchProgress,
                                    loadingKey = continueLoadingKey,
                                    errorMessage = continueErrorMessage,
                                    onPlayEntry = { entry -> openContinueEntry(entry) },
                                    onRemoveEntry = { entry -> hideContinueEntry(entry) },
                                    refocusTick = playerReturnTick,
                                    catalogViewModel = catalogViewModel,
                                    favorites = visibleFavorites,
                                    onToggleFavorite = { toggleFavorite(it) },
                                    onPlayVod = { film -> playMovie(film) },
                                    onPlayEpisode = { _, playback -> playEpisode(playback) },
                                    onSetEpisodeWatched = { episode, watched, duration ->
                                        setEpisodeWatched(episode, watched, duration)
                                    },
                                    onToggleWatched = { film, watched, duration ->
                                        setMovieWatched(film, watched, duration)
                                    },
                                    focusEpisodeId = returnEpisodeId,
                                    contentFocusRequester = contentFocusRequester,
                                    modifier = Modifier.fillMaxSize().focusRequester(contentFocusRequester),
                                )
                                DrawerSection.Live -> LiveSection(
                                    initialCategoryId = liveCategoryEntry?.categoryId,
                                    onLongPressCategory = { category ->
                                        toggleFavorite(FavoriteItem.liveCategory(category.categoryId, category.categoryName ?: "Senza nome"))
                                    },
                                    categories = catalog.liveCategories,
                                    streams = catalog.liveStreams,
                                    scale = scale,
                                    onSelectChannel = { stream -> playLive(stream) },
                                    onLongPressChannel = { stream -> openMyChannelDialog(stream) },
                                    favorites = visibleFavorites,
                                    myChannelIds = visibleMyChannelIds,
                                    epgClient = container.channelScheduleLoader,
                                    epgServer = currentServer,
                                    epgUsername = currentUsername,
                                    epgPassword = currentPassword,
                                    clock = container.clock,
                                    contentFocusRequester = contentFocusRequester,
                                    focusChannelId = returnLiveChannelId,
                                    focusChannelTick = playerReturnTick,
                                    onChannelFocusRestored = { returnLiveChannelId = null },
                                    modifier = Modifier.fillMaxSize().focusRequester(contentFocusRequester),
                                )
                                DrawerSection.Film -> FilmSection(
                                    categories = catalog.vodCategories,
                                    streams = catalog.vodStreams,
                                    recentStreams = visibleRecentFilms,
                                    scale = scale,
                                    onLongPressFilm = { vod ->
                                        val fav = FavoriteItem(id = "vod_${vod.streamId}", type = "vod", title = vod.name, poster = vod.streamIcon, categoryId = vod.categoryId)
                                        toggleFavorite(fav)
                                    },
                                    onPlayFilm = { film -> playMovie(film) },
                                    favorites = visibleFavorites,
                                    catalogViewModel = catalogViewModel,
                                    progress = watchProgress,
                                    onToggleWatched = { film, watched, duration ->
                                        setMovieWatched(film, watched, duration)
                                    },
                                    refocusTick = playerReturnTick,
                                    contentFocusRequester = contentFocusRequester,
                                    modifier = Modifier.fillMaxSize().focusRequester(contentFocusRequester),
                                )
                                DrawerSection.Serie -> SerieSection(
                                    categories = catalog.seriesCategories,
                                    series = catalog.series,
                                    recentSeries = visibleRecentSeries,
                                    scale = scale,
                                    onLongPressSerie = { serie ->
                                        val fav = FavoriteItem(id = "series_${serie.seriesId}", type = "series", title = serie.name, poster = serie.cover, categoryId = serie.categoryId)
                                        toggleFavorite(fav)
                                    },
                                    onPlayEpisode = { _, playback -> playEpisode(playback) },
                                    onSetEpisodeWatched = { episode, watched, duration ->
                                        setEpisodeWatched(episode, watched, duration)
                                    },
                                    favorites = visibleFavorites,
                                    catalogViewModel = catalogViewModel,
                                    contentFocusRequester = contentFocusRequester,
                                    progress = watchProgress,
                                    refocusTick = playerReturnTick,
                                    focusEpisodeId = returnEpisodeId,
                                    modifier = Modifier.fillMaxSize().focusRequester(contentFocusRequester),
                                )
                                DrawerSection.Preferiti -> {
                                    FavoritesSection(
                                        favorites = visibleFavorites,
                                        liveCategories = catalog.liveCategories,
                                        liveStreams = catalog.liveStreams,
                                        restoreCategoryFavoriteId = restoreCategoryFavoriteId,
                                        onCategoryFocusRestored = { restoreCategoryFavoriteId = null },
                                        scale = scale,
                                        onSelectFavorite = { favorite ->
                                            if (favorite.type == FavoriteItem.LIVE_CATEGORY) {
                                                if (catalog.liveCategories.any { it.categoryId == favorite.categoryId }) {
                                                    liveCategoryEntry = favorite
                                                    restoreCategoryFavoriteId = null
                                                    selectedTab = DrawerSection.Live
                                                }
                                            }
                                        },
                                        onToggleFavorite = { toggleFavorite(it) },
                                        onPlayLive = { stream -> playLive(stream) },
                                        onPlayVod = { film -> playMovie(film) },
                                        onPlayEpisode = { _, playback -> playEpisode(playback) },
                                        onSetEpisodeWatched = { episode, watched, duration ->
                                            setEpisodeWatched(episode, watched, duration)
                                        },
                                        onToggleWatched = { film, watched, duration ->
                                            setMovieWatched(film, watched, duration)
                                        },
                                        progress = watchProgress,
                                        refocusTick = playerReturnTick,
                                        focusEpisodeId = returnEpisodeId,
                                        catalogViewModel = catalogViewModel,
                                        contentFocusRequester = contentFocusRequester,
                                        myChannels = visibleMyChannels,
                                        epgClient = container.channelScheduleLoader,
                                        epgServer = currentServer,
                                        epgUsername = currentUsername,
                                        epgPassword = currentPassword,
                                        clock = container.clock,
                                        onPlayMyChannel = { channel -> playMyChannel(channel) },
                                        onLongPressMyChannel = { channel ->
                                            myChannelEdit = channel
                                        },
                                        focusMyChannelId = myChannelFocusId,
                                        focusMyChannelTick = myChannelFocusTick,
                                        onMyChannelFocusRestored = { myChannelFocusId = null },
                                        modifier = Modifier.fillMaxSize().focusRequester(contentFocusRequester),
                                    )
                                }
                                DrawerSection.Cerca -> SearchSection(
                                    queryState = searchQueryState,
                                    catalog = catalog,
                                    scale = scale,
                                    favorites = visibleFavorites,
                                    progress = watchProgress,
                                    catalogViewModel = catalogViewModel,
                                    onPlayLive = { stream -> playLive(stream) },
                                    onPlayFilm = { film -> playMovie(film) },
                                    onPlayEpisode = { _, playback -> playEpisode(playback) },
                                    onToggleFavorite = { favorite -> toggleFavorite(favorite) },
                                    onLongPressLive = { stream -> openMyChannelDialog(stream) },
                                    myChannelIds = visibleMyChannelIds,
                                    onSetEpisodeWatched = { episode, watched, duration ->
                                        setEpisodeWatched(episode, watched, duration)
                                    },
                                    onToggleWatched = { film, watched, duration ->
                                        setMovieWatched(film, watched, duration)
                                    },
                                    refocusTick = playerReturnTick,
                                    contentFocusRequester = contentFocusRequester,
                                    modifier = Modifier.fillMaxSize().focusRequester(contentFocusRequester),
                                )
                                DrawerSection.Impostazioni -> SettingsScreen(
                                    viewModel = settingsViewModel,
                                    scale = scale,
                                    modifier = Modifier.fillMaxSize().focusRequester(contentFocusRequester),
                                    contentFocusRequester = contentFocusRequester,
                                    catalogSections = catalogState.refreshSections,
                                    catalogRefreshing = catalogState.isRefreshing,
                                    catalogLastUpdateMillis = catalogState.lastUpdateMillis,
                                    onRefreshCatalog = { catalogViewModel.refreshManual() },
                                    // Catalogo per la pagina "Contenuti protetti":
                                    // categorie e contenuti da nascondere.
                                    catalog = catalogState.catalog,
                                )
                            }
                        } else {
                            EmptyState(title = "Catalogo vuoto", description = "Il server non ha restituito contenuti. Premi Riprova.", scale = scale)
                        }
                    }
                }

                favoritesMessage?.let { msg ->
                    Box(modifier = Modifier.align(Alignment.BottomCenter).padding(bottom = scale.dp(24f)).background(FvpColors.SurfaceElevated, shape = RoundedCornerShape(scale.dp(8f))).padding(horizontal = scale.dp(16f), vertical = scale.dp(8f))) {
                        Text(text = msg, color = FvpColors.TextPrimary)
                    }
                }

                if (showExitConfirm) {
                    val annullaFocus = remember { FocusRequester() }
                    LaunchedEffect(Unit) { annullaFocus.requestFocus() }
                    Dialog(
                        onDismissRequest = {
                            showExitConfirm = false
                            scope.launch {
                                drawerState.setValue(DrawerValue.Open)
                                drawerFocusHandle.requestFocus()
                            }
                        },
                        properties = DialogProperties(usePlatformDefaultWidth = false)
                    ) {
                        Box(
                            modifier = Modifier
                                .fillMaxSize()
                                .background(FvpColors.Background.copy(alpha = 0.8f))
                                .padding(scale.dp(32f)),
                            contentAlignment = Alignment.Center
                        ) {
                            Column(
                                modifier = Modifier
                                    .background(FvpColors.Surface, shape = RoundedCornerShape(scale.dp(12f)))
                                    .padding(scale.dp(20f))
                                    .testTag("exit_dialog"),
                                horizontalAlignment = Alignment.CenterHorizontally
                            ) {
                                Text(text = "Vuoi uscire da FelixVP?", color = FvpColors.TextPrimary, fontWeight = FontWeight.Bold)
                                Row(horizontalArrangement = Arrangement.spacedBy(scale.dp(12f)), modifier = Modifier.padding(top = scale.dp(16f))) {
                                    FvpSecondaryButton(
                                        text = "Annulla",
                                        onClick = {
                                            showExitConfirm = false
                                            scope.launch {
                                                drawerState.setValue(DrawerValue.Open)
                                                drawerFocusHandle.requestFocus()
                                            }
                                        },
                                        scale = scale,
                                        modifier = Modifier.focusRequester(annullaFocus).testTag("exit_annulla")
                                    )
                                    FvpPrimaryButton(
                                        text = "Esci",
                                        onClick = {
                                            showExitConfirm = false
                                            (context as? Activity)?.finish()
                                        },
                                        scale = scale,
                                        modifier = Modifier.testTag("exit_esci")
                                    )
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    playerSession?.let { session ->
        PlayerScreen(
            container = container,
            session = session,
            scale = scale,
            onExit = { info ->
                playerSession = null
                playerReturnTick += 1
                when (playerReturnTarget(session.source)) {
                    PlayerReturnTarget.LIVE -> {
                        returnLiveChannelId = info.lastLiveChannelId
                        liveCategoryEntry = null
                        restoreCategoryFavoriteId = null
                        selectedTab = DrawerSection.Live
                    }
                    PlayerReturnTarget.MY_CHANNELS -> {
                        info.lastLiveChannelId?.let {
                            myChannelFocusId = it
                            myChannelFocusTick += 1
                        }
                    }
                    PlayerReturnTarget.NONE -> returnEpisodeId = info.lastEpisodeId
                }
            },
        )
    }

    // Pressione lunga su un canale (Live, Cerca, player): aggiunta se il canale
    // non è in "I miei canali", menu di modifica se è già presente.
    myChannelEdit?.let { channel ->
        MyChannelDialog(
            channel = channel,
            channels = visibleMyChannels,
            scale = scale,
            onInsertAt = { position -> confirmMyChannelPosition(channel, position) },
            onMoveUp = { moveMyChannel(channel, up = true) },
            onMoveDown = { moveMyChannel(channel, up = false) },
            onRemove = { removeMyChannel(channel) },
            // Indietro chiude e riporta il focus sul canale modificato.
            onDismiss = { closeMyChannelDialog(channel) },
        )
    }

    // Primo caricamento del catalogo: attesa a schermo intero con lo stesso
    // sfondo dell'avvio, sopra il menu laterale.
    if (catalogState.isLoading && catalogState.catalog == null) {
        BrandBackdrop(scale = scale) {
            LoadingState(message = "Caricamento catalogo in corso…", scale = scale)
        }
    }
    }
}
