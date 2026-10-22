package it.felixvision.tv.ui.main

import android.app.Activity
import androidx.activity.compose.BackHandler
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.produceState
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.window.Dialog
import androidx.compose.ui.window.DialogProperties
import androidx.lifecycle.viewmodel.compose.viewModel
import androidx.lifecycle.viewmodel.initializer
import androidx.lifecycle.viewmodel.viewModelFactory
import androidx.tv.material3.DrawerValue
import androidx.tv.material3.Text
import androidx.tv.material3.rememberDrawerState
import it.felixvision.tv.AppContainer
import it.felixvision.tv.data.catalog.Catalog
import it.felixvision.tv.data.favorites.FavoriteItem
import it.felixvision.tv.ui.access.AccessViewModel
import it.felixvision.tv.ui.catalog.CatalogViewModel
import it.felixvision.tv.ui.catalog.FavoritesSection
import it.felixvision.tv.ui.catalog.FilmSection
import it.felixvision.tv.ui.catalog.LiveSection
import it.felixvision.tv.ui.catalog.NovitaSection
import it.felixvision.tv.ui.catalog.SerieSection
import it.felixvision.tv.ui.components.EmptyState
import it.felixvision.tv.ui.components.ErrorState
import it.felixvision.tv.ui.components.FvpPrimaryButton
import it.felixvision.tv.ui.components.FvpSecondaryButton
import it.felixvision.tv.ui.components.LoadingState
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.navigation.DrawerFocusHandle
import it.felixvision.tv.ui.navigation.DrawerSection
import it.felixvision.tv.ui.navigation.FvpNavigationDrawer
import it.felixvision.tv.ui.settings.SettingsScreen
import it.felixvision.tv.ui.settings.SettingsViewModel
import it.felixvision.tv.ui.theme.FvpColors
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch

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
    scale: UiScale,
    accessViewModel: AccessViewModel,
    onSignOut: () -> Unit,
) {
    var currentServer by remember { mutableStateOf(server) }
    var currentUsername by remember { mutableStateOf(username) }
    var currentPassword by remember { mutableStateOf(password) }
    var selectedTab by remember { mutableStateOf(DrawerSection.Novita) }
    // One-shot return route, scoped to the current account and cleared by menu navigation.
    var liveCategoryEntry by remember(currentServer, currentUsername) { mutableStateOf<FavoriteItem?>(null) }
    var restoreCategoryFavoriteId by remember(currentServer, currentUsername) { mutableStateOf<String?>(null) }
    var showExitConfirm by remember { mutableStateOf(false) }
    var showPlaybackMessage by remember { mutableStateOf<String?>(null) }
    var favoritesTick by remember { mutableStateOf(0L) }
    var favoritesMessage by remember { mutableStateOf<String?>(null) }
    val scope = rememberCoroutineScope()
    val context = LocalContext.current

    val contentFocusRequester = remember { FocusRequester() }
    val drawerFocusHandle = remember { DrawerFocusHandle() }
    val drawerState = rememberDrawerState(initialValue = DrawerValue.Closed)

    val catalogViewModel: CatalogViewModel = viewModel(
        factory = viewModelFactory {
            initializer { CatalogViewModel(container, currentServer, currentUsername, currentPassword) }
        },
        key = "$currentServer|$currentUsername",
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
        key = "settings_$currentServer|$currentUsername",
    )

    // Favorites for all sections
    val allFavorites by produceState<List<FavoriteItem>>(initialValue = emptyList(), favoritesTick, currentServer, currentUsername) {
        value = container.favoritesStore.getFavorites(currentServer, currentUsername)
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
        if (showPlaybackMessage != null) {
            showPlaybackMessage = null
            return@BackHandler
        }
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

    fun toggleFavorite(item: FavoriteItem) {
        scope.launch {
            val added = container.favoritesStore.toggleFavorite(currentServer, currentUsername, item)
            favoritesTick += 1
            favoritesMessage = if (added) "Aggiunto ai preferiti" else "Rimosso dai preferiti"
        }
    }

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
    ) {
        Box(modifier = Modifier.fillMaxSize().background(FvpColors.Background).padding(scale.dp(8f))) {
            when {
                catalogState.isLoading && catalogState.catalog == null -> {
                    LoadingState(message = "Caricamento catalogo in corso…", scale = scale, modifier = Modifier.align(Alignment.Center))
                }
                catalogState.errorMessage != null && catalogState.catalog == null -> {
                    ErrorState(message = catalogState.errorMessage!!, scale = scale, onRetry = { catalogViewModel.retry() }, modifier = Modifier.align(Alignment.Center))
                }
                else -> {
                    val catalog: Catalog? = catalogState.catalog
                    if (catalog != null) {
                        when (selectedTab) {
                            DrawerSection.Novita -> NovitaSection(
                                recentFilms = catalogState.recentFilms,
                                recentSeries = catalogState.recentSeries,
                                scale = scale,
                                onLongPressFilm = { vod ->
                                    val fav = FavoriteItem(id = "vod_${vod.streamId}", type = "vod", title = vod.name, poster = vod.streamIcon, categoryId = vod.categoryId)
                                    toggleFavorite(fav)
                                },
                                onLongPressSeries = { serie ->
                                    val fav = FavoriteItem(id = "series_${serie.seriesId}", type = "series", title = serie.name, poster = serie.cover, categoryId = serie.categoryId)
                                    toggleFavorite(fav)
                                },
                                onPlayFilm = { showPlaybackMessage = "Riproduzione disponibile nel prossimo aggiornamento" },
                                onPlaySerie = { showPlaybackMessage = "Riproduzione disponibile nel prossimo aggiornamento" },
                                onPlayEpisode = { showPlaybackMessage = "Riproduzione disponibile nel prossimo aggiornamento" },
                                favorites = allFavorites,
                                catalogViewModel = catalogViewModel,
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
                                onSelectChannel = { showPlaybackMessage = "Riproduzione disponibile nel prossimo aggiornamento" },
                                onLongPressChannel = { stream ->
                                    val fav = FavoriteItem(
                                        id = "live_${stream.streamId}",
                                        type = "live",
                                        title = stream.name,
                                        poster = stream.streamIcon,
                                        categoryId = stream.categoryId
                                    )
                                    toggleFavorite(fav)
                                },
                                favorites = allFavorites,
                                contentFocusRequester = contentFocusRequester,
                                modifier = Modifier.fillMaxSize().focusRequester(contentFocusRequester),
                            )
                            DrawerSection.Film -> FilmSection(
                                categories = catalog.vodCategories,
                                streams = catalog.vodStreams,
                                scale = scale,
                                onLongPressFilm = { vod ->
                                    val fav = FavoriteItem(id = "vod_${vod.streamId}", type = "vod", title = vod.name, poster = vod.streamIcon, categoryId = vod.categoryId)
                                    toggleFavorite(fav)
                                },
                                onPlayFilm = { showPlaybackMessage = "Riproduzione disponibile nel prossimo aggiornamento" },
                                favorites = allFavorites,
                                catalogViewModel = catalogViewModel,
                                contentFocusRequester = contentFocusRequester,
                                modifier = Modifier.fillMaxSize().focusRequester(contentFocusRequester),
                            )
                            DrawerSection.Serie -> SerieSection(
                                categories = catalog.seriesCategories,
                                series = catalog.series,
                                scale = scale,
                                onLongPressSerie = { serie ->
                                    val fav = FavoriteItem(id = "series_${serie.seriesId}", type = "series", title = serie.name, poster = serie.cover, categoryId = serie.categoryId)
                                    toggleFavorite(fav)
                                },
                                onPlayEpisode = { showPlaybackMessage = "Riproduzione disponibile nel prossimo aggiornamento" },
                                onPlaySerie = { showPlaybackMessage = "Riproduzione disponibile nel prossimo aggiornamento" },
                                favorites = allFavorites,
                                catalogViewModel = catalogViewModel,
                                contentFocusRequester = contentFocusRequester,
                                modifier = Modifier.fillMaxSize().focusRequester(contentFocusRequester),
                            )
                            DrawerSection.Preferiti -> {
                                FavoritesSection(
                                    favorites = allFavorites,
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
                                        } else {
                                            showPlaybackMessage = "Riproduzione disponibile nel prossimo aggiornamento"
                                        }
                                    },
                                    onToggleFavorite = { toggleFavorite(it) },
                                    catalogViewModel = catalogViewModel,
                                    contentFocusRequester = contentFocusRequester,
                                    modifier = Modifier.fillMaxSize().focusRequester(contentFocusRequester),
                                )
                            }
                            DrawerSection.Impostazioni -> SettingsScreen(viewModel = settingsViewModel, scale = scale, modifier = Modifier.fillMaxSize().focusRequester(contentFocusRequester), contentFocusRequester = contentFocusRequester)
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

            showPlaybackMessage?.let { msg ->
                Box(modifier = Modifier.fillMaxSize().background(FvpColors.Background.copy(alpha = 0.7f)).padding(scale.dp(24f)).testTag("playback_message"), contentAlignment = Alignment.Center) {
                    Column(horizontalAlignment = Alignment.CenterHorizontally, verticalArrangement = Arrangement.spacedBy(scale.dp(12f))) {
                        Text(text = msg, color = FvpColors.TextPrimary, fontWeight = FontWeight.SemiBold)
                        androidx.tv.material3.Button(onClick = { showPlaybackMessage = null }) {
                            Text(text = "Chiudi")
                        }
                    }
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
