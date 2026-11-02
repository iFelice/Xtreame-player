package it.felixvision.tv.ui.settings

import android.app.Activity
import android.content.ActivityNotFoundException
import androidx.activity.compose.BackHandler
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.animation.core.LinearEasing
import androidx.compose.animation.core.RepeatMode
import androidx.compose.animation.core.animateFloatAsState
import androidx.compose.animation.core.repeatable
import androidx.compose.animation.core.tween
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableLongStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.runtime.withFrameNanos
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.input.key.Key
import androidx.compose.ui.input.key.KeyEventType
import androidx.compose.ui.input.key.key
import androidx.compose.ui.input.key.onPreviewKeyEvent
import androidx.compose.ui.input.key.type
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.window.Dialog
import androidx.compose.ui.window.DialogProperties
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import androidx.lifecycle.compose.LocalLifecycleOwner
import androidx.tv.material3.Text
import it.felixvision.tv.BuildConfig
import it.felixvision.tv.data.catalog.Catalog
import it.felixvision.tv.data.catalog.CatalogRefresh
import it.felixvision.tv.data.catalog.CatalogSectionProgress
import it.felixvision.tv.data.catalog.CatalogSectionStatus
import it.felixvision.tv.ui.components.FvpCheckboxButton
import it.felixvision.tv.ui.components.FvpPrimaryButton
import it.felixvision.tv.ui.components.FvpSecondaryButton
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.settings.protection.ProtectedContentScreen
import it.felixvision.tv.ui.settings.vpn.VpnSetupScreen
import it.felixvision.tv.ui.theme.FvpColors
import it.felixvision.tv.vpn.VpnState

/**
 * Schermata Impostazioni: una griglia di sette card (Account, Aspetto, Contenuti
 * protetti, VPN, Catalogo, Player, App) e, per ogni card, la pagina della sua
 * funzione a tutto schermo nell'area dei contenuti.
 *
 * Il contenuto dei vecchi riquadri sta nelle pagine ([SettingsAccountPage],
 * [SettingsAppearancePage], [SettingsVpnPage], [SettingsCatalogPage],
 * [SettingsAppPage]); la card "Contenuti protetti" apre direttamente
 * [ProtectedContentScreen], PIN compreso, senza pagina intermedia, e la pagina
 * della VPN apre la configurazione con il QR [VpnSetupScreen] com'era prima.
 *
 * Qui stanno i dati (ViewModel, controller VPN, abbinamento) e le finestre di
 * servizio; la navigazione griglia ↔ pagine è [SettingsNavigation].
 */
@Composable
fun SettingsScreen(
    viewModel: SettingsViewModel,
    scale: UiScale,
    modifier: Modifier = Modifier,
    contentFocusRequester: FocusRequester? = null,
    /** Righe Live/Film/Serie dell'ultimo aggiornamento, dal CatalogViewModel. */
    catalogSections: List<CatalogSectionProgress> = CatalogRefresh.idle(),
    catalogRefreshing: Boolean = false,
    catalogLastUpdateMillis: Long? = null,
    onRefreshCatalog: () -> Unit = {},
    /** Catalogo del server, per la scelta dei contenuti da nascondere. */
    catalog: Catalog? = null,
) {
    val state by viewModel.ui.collectAsState()
    // Dimensione dell'interfaccia: il valore vive nello store dell'app (lo usa
    // anche FvpApp), qui si osserva e si cambia.
    val interfaceSize by viewModel.interfaceSize.collectAsState()
    var showCatalogDialog by remember { mutableStateOf(false) }
    // Spazio occupato dalle cache svuotabili, riletto a ogni apertura della pagina Catalogo.
    var cacheBytes by remember { mutableLongStateOf(0L) }
    val catalogCloseFocus = remember { FocusRequester() }
    val lifecycleOwner = LocalLifecycleOwner.current

    // Riepilogo del PIN per la riga di stato della card "Contenuti protetti".
    val protectedSummary by viewModel.protectedSummary.collectAsState()

    // VPN: lo stato arriva dal controller dell'app. La pagina di configurazione
    // con il QR si apre dalla pagina VPN; al rientro il focus torna su
    // "Configura"/"Cambia configurazione".
    val vpnController = viewModel.vpnController
    val vpnState by vpnController.state.collectAsState()
    var showVpnSetup by remember { mutableStateOf(false) }
    val vpnConfigureFocus = remember { FocusRequester() }
    var wasVpnSetupOpen by remember { mutableStateOf(false) }
    LaunchedEffect(showVpnSetup) {
        if (wasVpnSetupOpen && !showVpnSetup) {
            withFrameNanos { }
            runCatching { vpnConfigureFocus.requestFocus() }
        }
        wasVpnSetupOpen = showVpnSetup
    }
    // Dopo "Rimuovi" spariscono "Spegni" e "Rimuovi": il focus va su "Configura".
    var vpnFocusAfterRemove by remember { mutableStateOf(false) }
    LaunchedEffect(vpnState, vpnFocusAfterRemove) {
        if (vpnFocusAfterRemove && vpnState == VpnState.NoConfig) {
            withFrameNanos { }
            runCatching { vpnConfigureFocus.requestFocus() }
            vpnFocusAfterRemove = false
        }
    }
    // Consenso di Android alla prima accensione (o dopo che un'altra VPN l'ha
    // revocato): se l'utente rifiuta la VPN resta spenta.
    val vpnPermissionLauncher = rememberLauncherForActivityResult(
        ActivityResultContracts.StartActivityForResult(),
    ) { result ->
        if (result.resultCode == Activity.RESULT_OK) {
            vpnController.enable()
        } else {
            vpnController.postMessage(VPN_PERMISSION_DENIED_MESSAGE)
        }
    }
    val onVpnToggle: () -> Unit = {
        if (vpnState == VpnState.Off) {
            val permission = vpnController.permissionIntent()
            if (permission == null) {
                vpnController.enable()
            } else {
                try {
                    vpnPermissionLauncher.launch(permission)
                } catch (error: ActivityNotFoundException) {
                    vpnController.postMessage(VPN_PERMISSION_DENIED_MESSAGE)
                }
            }
        } else {
            vpnController.disable()
        }
    }
    val packageName = LocalContext.current.packageName

    LaunchedEffect(viewModel) {
        viewModel.onSettingsVisible()
    }
    DisposableEffect(lifecycleOwner, viewModel) {
        var skipInitialResume = true
        val observer = LifecycleEventObserver { _, event ->
            if (event == Lifecycle.Event.ON_RESUME) {
                if (skipInitialResume) {
                    skipInitialResume = false
                } else {
                    viewModel.onSettingsResumed()
                }
            }
        }
        lifecycleOwner.lifecycle.addObserver(observer)
        onDispose {
            lifecycleOwner.lifecycle.removeObserver(observer)
            viewModel.onSettingsHidden()
        }
    }

    // Durante lo scaricamento dell'APK il tasto Indietro annulla il download e
    // cancella il file parziale senza uscire dalle Impostazioni: per questo la
    // navigazione tra griglia e pagine lascia il tasto al download.
    BackHandler(enabled = state.isDownloadingUpdate) {
        viewModel.cancelUpdateDownload()
    }

    SettingsNavigation(
        cardsState = SettingsCardsState(
            username = state.username,
            expiresAtEpochSeconds = state.expiresAtEpochSeconds,
            interfaceSize = interfaceSize,
            protectedSummary = protectedSummary,
            vpnState = vpnState,
            catalogLastUpdateMillis = catalogLastUpdateMillis ?: state.lastUpdateMillis,
            catalogRefreshing = catalogRefreshing,
            zappingSeconds = container.playerPreferences.zappingSeconds,
            versionName = state.versionName,
            updateStatus = state.updateStatus,
        ),
        scale = scale,
        modifier = modifier,
        // Il focus d'ingresso dal menu laterale va sulla prima card.
        entryFocusRequester = contentFocusRequester,
        downloadInProgress = state.isDownloadingUpdate,
        vpnSetupOpen = showVpnSetup,
        onCloseVpnSetup = { showVpnSetup = false },
        accountPage = { pageModifier, entryFocus ->
            SettingsAccountPage(
                state = state,
                scale = scale,
                modifier = pageModifier,
                onExitClicked = { viewModel.onExitClicked() },
                onRenewCode = { viewModel.onRenewCode() },
                entryFocusRequester = entryFocus,
            )
        },
        // La pagina Aspetto dà il focus alla dimensione attiva con i propri
        // FocusRequester: non le serve quello della navigazione.
        appearancePage = { pageModifier, _ ->
            SettingsAppearancePage(
                scale = scale,
                modifier = pageModifier,
                interfaceSize = interfaceSize,
                onInterfaceSizeSelected = { viewModel.onInterfaceSizeSelected(it) },
            )
        },
        protectedPage = { pageModifier, closeProtectedPage ->
            ProtectedContentScreen(
                store = viewModel.protectedContentStore,
                session = viewModel.protectedSession,
                credentialStore = viewModel.credentialStore,
                clock = viewModel.clock,
                server = viewModel.server,
                username = viewModel.username,
                catalog = catalog,
                scale = scale,
                modifier = pageModifier,
                // Indietro dalla radice della schermata torna alla griglia.
                onExit = closeProtectedPage,
            )
        },
        vpnPage = { pageModifier, entryFocus ->
            SettingsVpnPage(
                vpnState = vpnState,
                scale = scale,
                modifier = pageModifier,
                onVpnToggle = onVpnToggle,
                onVpnConfigure = { showVpnSetup = true },
                onVpnRemove = {
                    vpnFocusAfterRemove = true
                    vpnController.removeConfig()
                },
                configureFocus = vpnConfigureFocus,
                entryFocusRequester = entryFocus,
            )
        },
        vpnSetupPage = { pageModifier ->
            VpnSetupScreen(
                relay = viewModel.vpnRelayClient,
                clock = viewModel.clock,
                relayBaseUrl = BuildConfig.PAIRING_RELAY_URL,
                packageName = packageName,
                scale = scale,
                saveConfig = { text, serverName -> vpnController.saveConfig(text, serverName) },
                onSaved = { serverName ->
                    vpnController.postMessage("$VPN_SAVED_MESSAGE_PREFIX$serverName")
                    showVpnSetup = false
                },
                modifier = pageModifier,
                onExit = { showVpnSetup = false },
            )
        },
        catalogPage = { pageModifier, entryFocus ->
            // Lo spazio occupato si misura a ogni apertura: cresce con l'uso dell'app.
            LaunchedEffect(Unit) { cacheBytes = viewModel.cacheOccupiedBytes() }
            SettingsCatalogPage(
                state = state,
                scale = scale,
                modifier = pageModifier,
                catalogRefreshing = catalogRefreshing,
                catalogLastUpdateMillis = catalogLastUpdateMillis,
                // La finestra di avanzamento si apre qui: la pagina resta senza stato.
                onRefreshCatalog = {
                    showCatalogDialog = true
                    onRefreshCatalog()
                },
                cacheBytes = cacheBytes,
                // Dopo la pulizia si rilegge lo spazio: l'APK di un aggiornamento in
                // corso resta e quindi il conto non arriva a zero per forza.
                onClearCache = {
                    val freed = viewModel.clearCaches()
                    cacheBytes = viewModel.cacheOccupiedBytes()
                    freed
                },
                entryFocusRequester = entryFocus,
            )
        },
        playerPage = { pageModifier, _ ->
            SettingsPlayerPage(
                scale = scale,
                modifier = pageModifier,
                zappingSeconds = container.playerPreferences.zappingSeconds,
                onZappingSecondsSelected = { seconds ->
                    container.playerPreferences.zappingSeconds = seconds
                },
            )
        },
        appPage = { pageModifier, entryFocus ->
            SettingsAppPage(
                state = state,
                scale = scale,
                modifier = pageModifier,
                onUpdateClicked = { viewModel.onUpdateClicked() },
                // Stesso controllo manuale già esistente nel ViewModel.
                onCheckForUpdates = { viewModel.checkForUpdates() },
                entryFocusRequester = entryFocus,
            )
        },
    )

    if (showCatalogDialog) {
        Dialog(
            onDismissRequest = { showCatalogDialog = false },
            properties = DialogProperties(usePlatformDefaultWidth = false),
        ) {
            // Indietro chiude la finestra senza interrompere l'aggiornamento:
            // il lavoro continua nel CatalogViewModel.
            BackHandler { showCatalogDialog = false }
            CatalogRefreshDialogContent(
                catalogSections = catalogSections,
                catalogRefreshing = catalogRefreshing,
                scale = scale,
                closeFocusRequester = catalogCloseFocus,
                onDismiss = { showCatalogDialog = false },
            )
        }
    }

    if (state.showExitConfirm) {
        Dialog(
            onDismissRequest = { viewModel.onExitCancel() },
            properties = DialogProperties(usePlatformDefaultWidth = false),
        ) {
            SettingsExitConfirmContent(
                clearUserData = state.clearUserDataOnExit,
                scale = scale,
                onToggleClearUserData = { viewModel.onToggleClearUserDataOnExit() },
                onCancel = { viewModel.onExitCancel() },
                onConfirm = { viewModel.onExitConfirm() },
            )
        }
    }
}

/**
 * Navigazione della schermata Impostazioni: griglia di card e pagine, senza
 * ViewModel né archivi, così il passaggio da una card alla sua pagina e il
 * ritorno con il focus sulla card si provano con dati finti.
 *
 * Le pagine arrivano come contenuti già pronti: chi compone decide cosa mettere
 * in ognuna. La pagina della VPN può aprirne un'altra (la configurazione con il
 * QR): [vpnSetupOpen] dice se è aperta e [onCloseVpnSetup] la chiude, così
 * Indietro dalla configurazione torna alla pagina VPN e solo da lì alla griglia.
 *
 * @param entryFocusRequester focus d'ingresso dal menu laterale: va sulla prima
 *   card della griglia.
 * @param downloadInProgress mentre scarica un aggiornamento il tasto Indietro
 *   appartiene alla schermata (annulla lo scaricamento), non alla navigazione.
 */
@Composable
internal fun SettingsNavigation(
    cardsState: SettingsCardsState,
    scale: UiScale,
    modifier: Modifier = Modifier,
    entryFocusRequester: FocusRequester? = null,
    cardFocusRequesters: Map<SettingsCard, FocusRequester> = rememberSettingsCardFocusRequesters(),
    downloadInProgress: Boolean = false,
    vpnSetupOpen: Boolean = false,
    onCloseVpnSetup: () -> Unit = {},
    accountPage: @Composable (Modifier, FocusRequester?) -> Unit = { _, _ -> },
    appearancePage: @Composable (Modifier, FocusRequester?) -> Unit = { _, _ -> },
    protectedPage: @Composable (Modifier, () -> Unit) -> Unit = { _, _ -> },
    vpnPage: @Composable (Modifier, FocusRequester?) -> Unit = { _, _ -> },
    vpnSetupPage: @Composable (Modifier) -> Unit = {},
    catalogPage: @Composable (Modifier, FocusRequester?) -> Unit = { _, _ -> },
    playerPage: @Composable (Modifier, FocusRequester?) -> Unit = { _, _ -> },
    appPage: @Composable (Modifier, FocusRequester?) -> Unit = { _, _ -> },
) {
    // La card aperta decide cosa occupa l'area dei contenuti; [lastOpenedCard]
    // resta anche dopo la chiusura, così il focus torna sulla card di ingresso.
    var openCard by remember { mutableStateOf<SettingsCard?>(null) }
    var lastOpenedCard by remember { mutableStateOf<SettingsCard?>(null) }

    // Focus d'ingresso delle pagine: ognuna lo riceve (è ricordato qui, mai
    // creato fuori da remember) e lo mette sul proprio primo elemento
    // focalizzabile. Una pagina senza elementi focalizzabili lascerebbe uscire
    // il focus e con lui il tasto Indietro.
    val pageEntryFocusRequesters = rememberSettingsPageFocusRequesters()

    LaunchedEffect(openCard) {
        val card = lastOpenedCard
        if (openCard == null && card != null) {
            withFrameNanos { }
            runCatching { cardFocusRequesters[card]?.requestFocus() }
        }
    }

    // Tornare alla griglia chiude anche l'eventuale configurazione della VPN.
    val closePage: () -> Unit = {
        onCloseVpnSetup()
        openCard = null
    }

    // Indietro da una pagina torna alla griglia, e chiude anche l'eventuale
    // configurazione della VPN. Due casi non passano di qui: "Contenuti
    // protetti" e la configurazione della VPN gestiscono il tasto da sole e
    // chiamano [closePage] quando è il momento di tornare indietro, mentre
    // durante lo scaricamento di un aggiornamento Indietro appartiene alla
    // schermata, che annulla lo scaricamento.
    //
    // Il tasto si prende con onPreviewKeyEvent sul contenitore della pagina:
    // la pagina protetta e la configurazione della VPN restano libere di
    // gestirlo (qui si restituisce false), e i test iniettano i tasti
    // nell'albero Compose, che non raggiunge il gestore Indietro dell'Activity.
    // La riserva per il dispositivo vero è il BackHandler qui sotto.
    val pageHandlesBack = openCard != SettingsCard.Protected &&
        !(openCard == SettingsCard.Vpn && vpnSetupOpen) &&
        !downloadInProgress

    // Riserva per il dispositivo vero: quando la pagina non ha elementi
    // focalizzabili (o il focus è comunque uscito) Indietro non passa da
    // onPreviewKeyEvent. Questo BackHandler è composto DOPO quello di
    // FvpMainScreen, quindi ha la precedenza e riporta alla griglia invece che
    // al menu laterale. Il BackHandler dello scaricamento aggiornamento, più in
    // alto in SettingsScreen, resta prioritario: qui downloadInProgress lo
    // esclude.
    BackHandler(enabled = openCard != null && pageHandlesBack) {
        closePage()
    }

    when {
        openCard == null -> SettingsGrid(
            state = cardsState,
            scale = scale,
            modifier = modifier,
            cardFocusRequesters = cardFocusRequesters,
            entryFocusRequester = entryFocusRequester,
            onOpenCard = { card ->
                lastOpenedCard = card
                openCard = card
            },
        )

        else -> Box(
            modifier = Modifier
                .fillMaxSize()
                .onPreviewKeyEvent { event ->
                    if (event.key != Key.Back || !pageHandlesBack) return@onPreviewKeyEvent false
                    when (event.type) {
                        // Come nelle altre schermate: la pressione si consuma e
                        // l'azione avviene al rilascio, senza doppi effetti.
                        KeyEventType.KeyDown -> true
                        KeyEventType.KeyUp -> {
                            closePage()
                            true
                        }
                        else -> false
                    }
                },
        ) {
            when (openCard) {
                SettingsCard.Protected -> protectedPage(modifier, closePage)
                SettingsCard.Vpn -> if (vpnSetupOpen) {
                    vpnSetupPage(modifier)
                } else {
                    vpnPage(modifier, pageEntryFocusRequesters.getValue(SettingsCard.Vpn))
                }
                SettingsCard.Account -> accountPage(
                    modifier,
                    pageEntryFocusRequesters.getValue(SettingsCard.Account),
                )
                SettingsCard.Appearance -> appearancePage(
                    modifier,
                    pageEntryFocusRequesters.getValue(SettingsCard.Appearance),
                )
                SettingsCard.Catalog -> catalogPage(
                    modifier,
                    pageEntryFocusRequesters.getValue(SettingsCard.Catalog),
                )
                SettingsCard.Player -> playerPage(
                    modifier,
                    pageEntryFocusRequesters.getValue(SettingsCard.Player),
                )
                SettingsCard.App -> appPage(modifier, pageEntryFocusRequesters.getValue(SettingsCard.App))
                null -> Unit
            }
        }
    }
}

/**
 * Contenuto della finestra di avanzamento dell'aggiornamento del catalogo
 * (Impostazioni › Catalogo): per ogni sezione Live, Film, Serie mostra il nome,
 * la barra di avanzamento e il testo di stato a destra, oltre al pulsante
 * "Chiudi" attivo a fine aggiornamento.
 */
@Composable
internal fun CatalogRefreshDialogContent(
    catalogSections: List<CatalogSectionProgress>,
    catalogRefreshing: Boolean,
    scale: UiScale,
    modifier: Modifier = Modifier,
    closeFocusRequester: FocusRequester? = null,
    onDismiss: () -> Unit = {},
) {
    val localCloseFocus = remember { FocusRequester() }
    val closeFocus = closeFocusRequester ?: localCloseFocus
    LaunchedEffect(catalogRefreshing) {
        if (!catalogRefreshing) {
            withFrameNanos { }
            runCatching { closeFocus.requestFocus() }
        }
    }
    Box(
        modifier = modifier
            .fillMaxSize()
            .background(FvpColors.Background.copy(alpha = 0.8f))
            .padding(scale.dp(32f)),
        contentAlignment = Alignment.Center,
    ) {
        Column(
            modifier = Modifier
                .background(FvpColors.Surface, shape = RoundedCornerShape(scale.dp(12f)))
                .padding(scale.dp(20f))
                .fillMaxWidth(0.55f)
                .testTag("settings_catalog_dialog"),
            verticalArrangement = Arrangement.spacedBy(scale.dp(12f)),
        ) {
            Text(
                text = "Aggiornamento catalogo",
                color = FvpColors.TextPrimary,
                fontSize = scale.sp(18f),
                fontWeight = FontWeight.Bold,
            )
            catalogSections.forEach { section ->
                CatalogSectionProgressRow(
                    section = section,
                    scale = scale,
                )
            }
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.End,
            ) {
                FvpPrimaryButton(
                    text = "Chiudi",
                    onClick = onDismiss,
                    scale = scale,
                    enabled = !catalogRefreshing,
                    modifier = Modifier
                        .focusRequester(closeFocus)
                        .testTag("settings_catalog_close"),
                )
            }
        }
    }
}

/** Riga di avanzamento di una sezione (nome, barra, testo di stato a destra). */
@Composable
internal fun CatalogSectionProgressRow(
    section: CatalogSectionProgress,
    scale: UiScale,
    modifier: Modifier = Modifier,
) {
    val sectionKey = section.section.name.lowercase()
    Row(
        modifier = modifier
            .fillMaxWidth()
            .testTag("settings_catalog_$sectionKey"),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.spacedBy(scale.dp(12f)),
    ) {
        Text(
            text = section.section.label,
            color = FvpColors.TextPrimary,
            fontSize = scale.sp(15f),
            modifier = Modifier.width(scale.dp(56f)),
        )
        CatalogSectionProgressBar(
            section = section,
            sectionKey = sectionKey,
            scale = scale,
            modifier = Modifier.weight(1f),
        )
        Text(
            text = section.statusLabel,
            color = if (section.status == CatalogSectionStatus.ERROR) {
                FvpColors.Error
            } else {
                FvpColors.TextSecondary
            },
            fontSize = scale.sp(14f),
            maxLines = 1,
            modifier = Modifier.testTag("settings_catalog_${sectionKey}_status"),
        )
    }
}

/**
 * Barra di avanzamento disegnata con [Box] nello stile dell'app:
 * [FvpColors.Green] (oppure [FvpColors.Error] in caso di errore) su fondo
 * [FvpColors.SurfaceElevated], con angoli arrotondati.
 */
@Composable
internal fun CatalogSectionProgressBar(
    section: CatalogSectionProgress,
    sectionKey: String,
    scale: UiScale,
    modifier: Modifier = Modifier,
) {
    val shape = RoundedCornerShape(scale.dp(3f))
    Box(
        modifier = modifier
            .height(scale.dp(6f))
            .clip(shape)
            .background(FvpColors.SurfaceElevated)
            .testTag("settings_catalog_${sectionKey}_bar"),
    ) {
        if (section.isIndeterminate) {
            var targetOffset by remember { mutableStateOf(0.001f) }
            LaunchedEffect(Unit) {
                targetOffset = 0.999f
            }
            val offset by animateFloatAsState(
                targetValue = targetOffset,
                animationSpec = repeatable(
                    iterations = 20,
                    animation = tween(durationMillis = 800, easing = LinearEasing),
                    repeatMode = RepeatMode.Reverse,
                ),
                label = "catalog_progress_offset_$sectionKey",
            )
            val leftWeight = offset.coerceIn(0.001f, 0.999f)
            val rightWeight = (1f - leftWeight).coerceIn(0.001f, 0.999f)
            Row(modifier = Modifier.fillMaxSize()) {
                Spacer(modifier = Modifier.weight(leftWeight))
                Box(
                    modifier = Modifier
                        .fillMaxWidth(0.35f)
                        .fillMaxHeight()
                        .clip(shape)
                        .background(FvpColors.Green)
                        .testTag("settings_catalog_${sectionKey}_bar_indeterminate"),
                )
                Spacer(modifier = Modifier.weight(rightWeight))
            }
        } else {
            val fraction = section.progressFraction.coerceIn(0f, 1f)
            val barColor = if (section.status == CatalogSectionStatus.ERROR) {
                FvpColors.Error
            } else {
                FvpColors.Green
            }
            if (fraction > 0f) {
                Box(
                    modifier = Modifier
                        .fillMaxWidth(fraction)
                        .fillMaxHeight()
                        .background(barColor)
                        .testTag("settings_catalog_${sectionKey}_bar_fill"),
                )
            }
        }
    }
}

@Composable
internal fun SettingsExitConfirmContent(
    clearUserData: Boolean,
    scale: UiScale,
    onToggleClearUserData: () -> Unit,
    onCancel: () -> Unit,
    onConfirm: () -> Unit,
) {
    val annullaFocus = remember { FocusRequester() }
    LaunchedEffect(Unit) {
        withFrameNanos { }
        runCatching { annullaFocus.requestFocus() }
    }
    Box(
        modifier = Modifier
            .fillMaxSize()
            .background(FvpColors.Background.copy(alpha = 0.8f))
            .padding(scale.dp(32f)),
        contentAlignment = Alignment.Center,
    ) {
        Column(
            modifier = Modifier
                .background(FvpColors.Surface, shape = RoundedCornerShape(scale.dp(12f)))
                .padding(scale.dp(20f))
                .testTag("settings_exit_dialog"),
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.spacedBy(scale.dp(14f)),
        ) {
            Text(
                text = "Vuoi uscire dall'account? Verranno cancellate le credenziali salvate e la cache del catalogo.",
                color = FvpColors.TextPrimary,
                fontSize = scale.sp(14f),
            )
            FvpCheckboxButton(
                text = SETTINGS_EXIT_CLEAR_DATA_LABEL,
                checked = clearUserData,
                onCheckedChange = { onToggleClearUserData() },
                scale = scale,
                modifier = Modifier.testTag(SETTINGS_EXIT_CLEAR_DATA_TAG),
            )
            Row(horizontalArrangement = Arrangement.spacedBy(scale.dp(12f))) {
                FvpSecondaryButton(
                    text = "Annulla",
                    onClick = onCancel,
                    scale = scale,
                    modifier = Modifier
                        .focusRequester(annullaFocus)
                        .testTag("settings_exit_annulla"),
                )
                FvpPrimaryButton(
                    text = "Conferma",
                    onClick = onConfirm,
                    scale = scale,
                    modifier = Modifier.testTag("settings_exit_conferma"),
                )
            }
        }
    }
}

/** Tag di test del pulsante di uscita dall'account. */
const val SETTINGS_EXIT_TAG = "settings_exit"

/** Testo del pulsante di uscita dall'account. */
const val SETTINGS_EXIT_LABEL = "Esci dall'account"

/** Casella opzionale di cancellazione dati utente all'uscita dall'account. */
const val SETTINGS_EXIT_CLEAR_DATA_LABEL = "Cancella anche preferiti e cronologia"
const val SETTINGS_EXIT_CLEAR_DATA_TAG = "settings_exit_clear_data"

/** Pagina "Aspetto": dimensione dell'interfaccia sulle TV da 50" in su. */
const val SETTINGS_APPEARANCE_TITLE = "Aspetto"
const val SETTINGS_APPEARANCE_SECTION_TAG = "settings_appearance_section"

/** Titolo della card "Contenuti protetti": la card apre direttamente la schermata. */
const val SETTINGS_PROTECTED_TITLE = "Contenuti protetti"

/** Etichetta della riga che raccoglie i pulsanti della dimensione interfaccia. */
const val SETTINGS_INTERFACE_SIZE_LABEL = "Dimensione interfaccia"

/** Prefisso del pulsante della dimensione attiva. */
const val INTERFACE_SIZE_ACTIVE_PREFIX = "✓ "

/** Tag di test del pulsante di [size] nella pagina Aspetto. */
fun interfaceSizeTag(size: InterfaceSize): String = "settings_interface_size_${size.storageKey}"

/** Etichetta del pulsante: il nome della dimensione, con "✓ " se è quella attiva. */
fun interfaceSizeButtonLabel(size: InterfaceSize, active: InterfaceSize): String =
    if (size == active) INTERFACE_SIZE_ACTIVE_PREFIX + size.label else size.label

/** Testi e tag del controllo aggiornamenti dell'app. */
const val UPDATE_STATUS_CHECKING = "Controllo aggiornamenti…"
const val UPDATE_STATUS_UP_TO_DATE = "App aggiornata"
const val UPDATE_STATUS_ERROR = "Impossibile controllare gli aggiornamenti"
const val SETTINGS_UPDATE_BUTTON_LABEL = "Aggiorna"

/**
 * Pulsante della pagina App senza aggiornamenti disponibili: rilancia lo stesso
 * controllo manuale del ViewModel. Resta sempre presente, così la pagina ha un
 * elemento focalizzabile e il tasto Indietro non esce dalle Impostazioni.
 */
const val SETTINGS_CHECK_UPDATES_BUTTON_LABEL = "Controlla aggiornamenti"
const val SETTINGS_UPDATE_BUTTON_TAG = "settings_update_button"
const val SETTINGS_UPDATE_STATUS_TAG = "settings_update_status"

fun updateAvailableLabel(version: String): String = "Disponibile la versione $version"
