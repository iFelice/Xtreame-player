@file:OptIn(androidx.compose.material3.ExperimentalMaterial3Api::class)

package it.felixvision.mobile.ui.main

import android.app.Activity
import androidx.activity.compose.BackHandler
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.WindowInsetsSides
import androidx.compose.foundation.layout.displayCutout
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.navigationBars
import androidx.compose.foundation.layout.only
import androidx.compose.foundation.layout.safeDrawing
import androidx.compose.foundation.layout.systemBars
import androidx.compose.foundation.layout.windowInsetsPadding
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.SnackbarHost
import androidx.compose.material3.SnackbarHostState
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.unit.dp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.lifecycle.viewmodel.compose.viewModel
import androidx.lifecycle.viewmodel.initializer
import androidx.lifecycle.viewmodel.viewModelFactory
import coil3.ImageLoader
import it.felixvision.mobile.AppContainer
import it.felixvision.mobile.ui.access.AccountSummary
import it.felixvision.mobile.ui.catalog.ActionSheetHost
import it.felixvision.mobile.ui.catalog.BackAction
import it.felixvision.mobile.ui.catalog.CatalogViewModel
import it.felixvision.mobile.ui.catalog.CercaSection
import it.felixvision.mobile.ui.catalog.ContinueWatchingSection
import it.felixvision.mobile.ui.catalog.DetailTarget
import it.felixvision.mobile.ui.catalog.FilmSection
import it.felixvision.mobile.ui.catalog.LiveSection
import it.felixvision.mobile.ui.catalog.NovitaSection
import it.felixvision.mobile.ui.catalog.PreferitiSection
import it.felixvision.mobile.ui.catalog.SerieSection
import it.felixvision.mobile.ui.components.EmptyState
import it.felixvision.mobile.ui.components.SectionLoading
import it.felixvision.mobile.ui.detail.FilmDetailScreen
import it.felixvision.mobile.ui.detail.LiveGuideScreen
import it.felixvision.mobile.ui.detail.SeriesDetailScreen
import it.felixvision.mobile.ui.settings.SettingsScreen
import it.felixvision.mobile.ui.settings.SettingsViewModel
import it.felixvision.mobile.ui.theme.FvpColors
import it.felixvision.mobile.ui.player.MobilePlayerSession
import it.felixvision.mobile.ui.player.PlayerScreen
import it.felixvision.mobile.ui.player.createMobilePlayerSession
import it.felixvision.tv.data.epg.ChannelScheduleLoader

/**
 * Schermata principale del tablet dopo l'accesso.
 *
 * - più larga che alta con larghezza ≥ 600dp → barra laterale con le 8
 *   sezioni nell'ordine della TV (colori FvpColors di sezione);
 * - altrimenti barra in basso con le 5 sezioni di [AppSection.bottomBarSections]
 *   e intestazione con Cerca/Impostazioni; "Continua a guardare" resta la
 *   prima riga di Novità;
 * - sezione iniziale Novità; Indietro: dialogo → dettaglio → tendina
 *   categorie → Novità → chiusura app senza conferma (regole nel ViewModel);
 * - migrazione dei vecchi preferiti Live nello stesso punto della TV (una
 *   volta per server+utente, dopo la prima apertura dell'account);
 * - banner "Configurato da remoto" convertito in snackbar una sola volta;
 * - ogni avviso e conferma passa dallo snackbar centrale del ViewModel.
 *
 * I ViewModel hanno costruttori iniettabili per i test; qui vengono creati
 * con l'[AppContainer] e la tupla server/utente della sessione.
 */
@androidx.media3.common.util.UnstableApi
@Composable
fun HomeScreen(
    container: AppContainer,
    summary: AccountSummary,
    password: String,
    banner: String?,
    onSignOut: () -> Unit,
    modifier: Modifier = Modifier,
    /** Caricatore della guida Live; `null` nei test e offline. */
    channelScheduleLoader: ChannelScheduleLoader?,
    imageLoader: ImageLoader,
    catalogViewModel: CatalogViewModel = viewModel(
        key = "catalog_${summary.server}_${summary.username}",
        factory = viewModelFactory {
            initializer {
                CatalogViewModel(
                    container = container,
                    server = summary.server,
                    username = summary.username,
                    password = password,
                )
            }
        },
    ),
    settingsViewModel: SettingsViewModel = viewModel(
        key = "settings_${summary.server}_${summary.username}",
        factory = viewModelFactory {
            initializer {
                SettingsViewModel(
                    container = container,
                    server = summary.server,
                    username = summary.username,
                    password = password,
                    expiresAtEpochSeconds = summary.expiresAtEpochSeconds,
                    status = "",
                    maxConnections = summary.maxConnections,
                    activeConnections = summary.activeConnections,
                    onSignOut = onSignOut,
                )
            }
        },
    ),
    playerContent: @Composable (AppContainer, MobilePlayerSession, () -> Unit) -> Unit =
        { playerContainer, session, onExit ->
            PlayerScreen(container = playerContainer, session = session, onExit = onExit)
        },
) {
    val catalogState by catalogViewModel.ui.collectAsStateWithLifecycle()
    val section by catalogViewModel.selectedSection.collectAsStateWithLifecycle()
    val detailTarget by catalogViewModel.detailTarget.collectAsStateWithLifecycle()
    val actionTarget by catalogViewModel.actionTarget.collectAsStateWithLifecycle()
    val positionDialog by catalogViewModel.positionDialog.collectAsStateWithLifecycle()
    val notice by catalogViewModel.notice.collectAsStateWithLifecycle()
    val playRequest by catalogViewModel.playRequest.collectAsStateWithLifecycle()
    var playerSession by remember { mutableStateOf<MobilePlayerSession?>(null) }

    val snackbarHostState = remember { SnackbarHostState() }
    val context = LocalContext.current

    // Migrazione dei vecchi preferiti Live, esattamente dove la TV la fa
    // (prima apertura dell'account; lo store la esegue una sola volta).
    LaunchedEffect(summary.server, summary.username) {
        catalogViewModel.migrateLegacyLiveFavorites()
    }

    // Snackbar: conferme delle azioni + riproduzione provvisoria, singola
    // per ogni avviso pubblicato.
    val pendingNotice = notice
    LaunchedEffect(pendingNotice?.id) {
        val current = pendingNotice ?: return@LaunchedEffect
        snackbarHostState.showSnackbar(current.message)
        catalogViewModel.consumeNotice(current.id)
    }
    // Il banner post-abbinamento arriva come snackbar una sola volta.
    val shownBanners = remember { mutableSetOf<String>() }
    LaunchedEffect(banner) {
        val text = banner ?: return@LaunchedEffect
        if (shownBanners.add(text)) {
            snackbarHostState.showSnackbar(text)
        }
    }

    LaunchedEffect(playRequest, catalogState.catalog) {
        val request = playRequest ?: return@LaunchedEffect
        val catalog = catalogState.catalog ?: return@LaunchedEffect
        val resolved = runCatching {
            createMobilePlayerSession(request, catalog, container, summary, password, catalogViewModel)
        }.getOrNull()
        if (resolved != null) playerSession = resolved
        else snackbarHostState.showSnackbar("Contenuto non disponibile per la riproduzione")
        catalogViewModel.consumePlayRequest(request)
    }

    // Apertura delle Impostazioni: rilettura account + etichetta server.
    LaunchedEffect(section) {
        if (section == AppSection.IMPOSTAZIONI) {
            settingsViewModel.onSettingsVisible()
        }
    }

    if (playerSession != null) {
        playerContent(container, playerSession!!) { playerSession = null }
        return
    }

    // Tasto Indietro gestito dal ViewModel (ordine del KDoc della classe).
    BackHandler(enabled = true) {
        when (catalogViewModel.onBackPressed()) {
            BackAction.EXIT_APP -> (context as? Activity)?.finish()
            else -> Unit
        }
    }

    Box(
        modifier = modifier
            .fillMaxSize()
            .background(FvpColors.Background)
            .testTag("home_screen"),
    ) {
        BoxWithConstraints(modifier = Modifier.fillMaxSize()) {
            val wideLayout = AppSection.useNavigationRail(
                isWiderThanTall = maxWidth > maxHeight,
                widthIsAtLeast600 = maxWidth >= 600.dp,
            )

            // Edge-to-edge (obbligatorio da targetSdk 35): lo sfondo riempie
            // tutto lo schermo, il contenuto si sposta dentro le barre.
            // La barra laterale prende systemBars e displayCutout su start,
            // top e bottom; l'intestazione e il contenuto prendono safeDrawing
            // sui lati non coperti dalla barra laterale o da quella in basso.
            // I getter di WindowInsets sono @Composable: si leggono qui, non
            // dentro un remember.
            val railInsets = WindowInsets.systemBars.only(
                WindowInsetsSides.Start + WindowInsetsSides.Top + WindowInsetsSides.Bottom,
            )
            val cutoutInsets = WindowInsets.displayCutout.only(
                WindowInsetsSides.Start + WindowInsetsSides.Top + WindowInsetsSides.Bottom,
            )
            val contentInsets = WindowInsets.safeDrawing.only(
                if (wideLayout) {
                    WindowInsetsSides.Top + WindowInsetsSides.End + WindowInsetsSides.Bottom
                } else {
                    WindowInsetsSides.Top + WindowInsetsSides.Start + WindowInsetsSides.End
                },
            )

            if (detailTarget != null) {
                DetailHost(
                    target = detailTarget,
                    catalogViewModel = catalogViewModel,
                    container = container,
                    summary = summary,
                    password = password,
                    imageLoader = imageLoader,
                    channelScheduleLoader = channelScheduleLoader,
                    modifier = Modifier.fillMaxSize(),
                )
            } else {
                Row(modifier = Modifier.fillMaxSize()) {
                    if (wideLayout) {
                        HomeNavigationRail(
                            current = section,
                            onSelect = catalogViewModel::selectSection,
                            modifier = Modifier
                                .windowInsetsPadding(railInsets)
                                .windowInsetsPadding(cutoutInsets),
                        )
                    }
                    Column(
                        modifier = Modifier
                            .weight(1f)
                            .fillMaxSize()
                            .windowInsetsPadding(contentInsets),
                    ) {
                        if (!wideLayout) {
                            HomeCompactHeader(
                                current = section,
                                onSelect = catalogViewModel::selectSection,
                            )
                        }
                        Box(modifier = Modifier.weight(1f).fillMaxWidth()) {
                            when {
                                catalogState.isLoading ->
                                    SectionLoading(
                                        message = "Caricamento catalogo…",
                                        modifier = Modifier.fillMaxSize().testTag("home_loading"),
                                    )
                                catalogState.catalog == null && catalogState.errorMessage != null ->
                                    EmptyState(
                                        title = "Catalogo non disponibile",
                                        description = catalogState.errorMessage
                                            ?: "Il server non ha risposto",
                                        actionLabel = "Riprova",
                                        onAction = catalogViewModel::retry,
                                        modifier = Modifier.fillMaxSize().testTag("home_error"),
                                    )
                                else -> SectionContent(
                                    section = section,
                                    catalogViewModel = catalogViewModel,
                                    settingsViewModel = settingsViewModel,
                                    container = container,
                                    summary = summary,
                                    password = password,
                                    wideLayout = wideLayout,
                                    imageLoader = imageLoader,
                                    channelScheduleLoader = channelScheduleLoader,
                                    modifier = Modifier.fillMaxSize(),
                                )
                            }
                        }
                        if (!wideLayout) {
                            HomeBottomBar(
                                current = section,
                                onSelect = catalogViewModel::selectSection,
                                // La barra in basso lascia fuori il contenuto
                                // solo lo spazio della barra di navigazione.
                                modifier = Modifier.windowInsetsPadding(
                                    WindowInsets.navigationBars,
                                ),
                            )
                        }
                    }
                }
            }
        }

        // Popup da pressione lunga sopra il contenuto.
        if (actionTarget != null || positionDialog != null) {
            ActionSheetHost(catalogViewModel)
        }

        SnackbarHost(
            hostState = snackbarHostState,
            modifier = Modifier
                .align(Alignment.BottomCenter)
                .windowInsetsPadding(
                    WindowInsets.safeDrawing.only(WindowInsetsSides.Bottom),
                )
                .padding(bottom = 24.dp)
                .testTag("home_snackbar"),
        )
    }
}


/**
 * Navigazione adattiva della schermata principale: le 8 voci con la barra
 * laterale nelle finestre orizzontali (≥600dp), le 5 della barra in basso con
 * la piccola intestazione nelle finestre compatte. Stato e regole Indietro nel
 * [CatalogViewModel]; l'icona di uscita chiude l'app senza conferma.
 */

/** Contenuto della sezione corrente (cataloghi, ricerca, impostazioni). */
@Composable
private fun SectionContent(
    section: AppSection,
    catalogViewModel: CatalogViewModel,
    settingsViewModel: SettingsViewModel,
    container: AppContainer,
    summary: AccountSummary,
    password: String,
    wideLayout: Boolean,
    imageLoader: ImageLoader,
    channelScheduleLoader: ChannelScheduleLoader?,
    modifier: Modifier = Modifier,
) {
    when (section) {
        AppSection.NOVITA -> NovitaSection(
            viewModel = catalogViewModel,
            imageLoader = imageLoader,
            modifier = modifier,
        )
        AppSection.RIPRENDI -> ContinueWatchingSection(
            viewModel = catalogViewModel,
            imageLoader = imageLoader,
            modifier = modifier,
        )
        AppSection.LIVE -> LiveSection(
            viewModel = catalogViewModel,
            imageLoader = imageLoader,
            wideLayout = wideLayout,
            scheduleLoader = channelScheduleLoader,
            server = summary.server,
            username = summary.username,
            password = password,
            clock = container.clock,
            modifier = modifier,
        )
        AppSection.FILM -> FilmSection(
            viewModel = catalogViewModel,
            imageLoader = imageLoader,
            wideLayout = wideLayout,
            modifier = modifier,
        )
        AppSection.SERIE -> SerieSection(
            viewModel = catalogViewModel,
            imageLoader = imageLoader,
            wideLayout = wideLayout,
            modifier = modifier,
        )
        AppSection.PREFERITI -> PreferitiSection(
            viewModel = catalogViewModel,
            imageLoader = imageLoader,
            scheduleLoader = channelScheduleLoader,
            server = summary.server,
            username = summary.username,
            password = password,
            clock = container.clock,
            modifier = modifier,
        )
        AppSection.CERCA -> CercaSection(
            viewModel = catalogViewModel,
            imageLoader = imageLoader,
            modifier = modifier,
        )
        AppSection.IMPOSTAZIONI -> SettingsScreen(
            settingsViewModel = settingsViewModel,
            catalogViewModel = catalogViewModel,
            modifier = modifier,
            downloadMonitor = container.catalogDownloadMonitor,
        )
    }
}

/** Pagina di dettaglio a schermo intero. */
@Composable
private fun DetailHost(
    target: DetailTarget?,
    catalogViewModel: CatalogViewModel,
    container: AppContainer,
    summary: AccountSummary,
    password: String,
    imageLoader: ImageLoader,
    channelScheduleLoader: ChannelScheduleLoader?,
    modifier: Modifier = Modifier,
) {
    when (target) {
        is DetailTarget.Film -> FilmDetailScreen(
            target = target,
            viewModel = catalogViewModel,
            imageLoader = imageLoader,
            modifier = modifier,
        )
        is DetailTarget.Series -> SeriesDetailScreen(
            target = target,
            viewModel = catalogViewModel,
            imageLoader = imageLoader,
            modifier = modifier,
        )
        is DetailTarget.LiveGuide -> LiveGuideScreen(
            target = target,
            viewModel = catalogViewModel,
            imageLoader = imageLoader,
            scheduleLoader = channelScheduleLoader,
            server = summary.server,
            username = summary.username,
            password = password,
            clock = container.clock,
            modifier = modifier,
        )
        null -> Unit
    }
}
