package it.felixvision.tv.ui.settings

import android.app.Activity
import android.content.ActivityNotFoundException
import androidx.activity.compose.BackHandler
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
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
 * Schermata Impostazioni: una griglia di sei card (Account, Aspetto, Contenuti
 * protetti, VPN, Catalogo, App) e, per ogni card, la pagina della sua funzione
 * a tutto schermo nell'area dei contenuti.
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
        accountPage = { pageModifier ->
            SettingsAccountPage(
                state = state,
                scale = scale,
                modifier = pageModifier,
                onExitClicked = { viewModel.onExitClicked() },
                onRenewCode = { viewModel.onRenewCode() },
            )
        },
        appearancePage = { pageModifier ->
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
        vpnPage = { pageModifier ->
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
        catalogPage = { pageModifier ->
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
            )
        },
        appPage = { pageModifier ->
            SettingsAppPage(
                state = state,
                scale = scale,
                modifier = pageModifier,
                onUpdateClicked = { viewModel.onUpdateClicked() },
            )
        },
    )

    if (showCatalogDialog) {
        LaunchedEffect(catalogRefreshing) {
            if (!catalogRefreshing) {
                withFrameNanos { }
                runCatching { catalogCloseFocus.requestFocus() }
            }
        }
        Dialog(
            onDismissRequest = { showCatalogDialog = false },
            properties = DialogProperties(usePlatformDefaultWidth = false)
        ) {
            // Indietro chiude la finestra senza interrompere l'aggiornamento:
            // il lavoro continua nel CatalogViewModel.
            BackHandler { showCatalogDialog = false }
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
                        .fillMaxWidth(0.5f)
                        .testTag("settings_catalog_dialog"),
                    verticalArrangement = Arrangement.spacedBy(scale.dp(10f))
                ) {
                    Text(
                        text = "Aggiornamento catalogo",
                        color = FvpColors.TextPrimary,
                        fontSize = scale.sp(18f),
                        fontWeight = FontWeight.Bold
                    )
                    catalogSections.forEach { section ->
                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .testTag("settings_catalog_${section.section.name.lowercase()}"),
                            horizontalArrangement = Arrangement.SpaceBetween
                        ) {
                            Text(text = section.section.label, color = FvpColors.TextPrimary, fontSize = scale.sp(15f))
                            Text(
                                text = section.statusLabel,
                                color = if (section.status == CatalogSectionStatus.ERROR) {
                                    FvpColors.Error
                                } else {
                                    FvpColors.TextSecondary
                                },
                                fontSize = scale.sp(14f),
                                modifier = Modifier.testTag(
                                    "settings_catalog_${section.section.name.lowercase()}_status"
                                )
                            )
                        }
                    }
                    Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.End) {
                        FvpPrimaryButton(
                            text = "Chiudi",
                            onClick = { showCatalogDialog = false },
                            scale = scale,
                            enabled = !catalogRefreshing,
                            modifier = Modifier
                                .focusRequester(catalogCloseFocus)
                                .testTag("settings_catalog_close")
                        )
                    }
                }
            }
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
    accountPage: @Composable (Modifier) -> Unit = {},
    appearancePage: @Composable (Modifier) -> Unit = {},
    protectedPage: @Composable (Modifier, () -> Unit) -> Unit = { _, _ -> },
    vpnPage: @Composable (Modifier) -> Unit = {},
    vpnSetupPage: @Composable (Modifier) -> Unit = {},
    catalogPage: @Composable (Modifier) -> Unit = {},
    appPage: @Composable (Modifier) -> Unit = {},
) {
    // La card aperta decide cosa occupa l'area dei contenuti; [lastOpenedCard]
    // resta anche dopo la chiusura, così il focus torna sulla card di ingresso.
    var openCard by remember { mutableStateOf<SettingsCard?>(null) }
    var lastOpenedCard by remember { mutableStateOf<SettingsCard?>(null) }

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
    // Il tasto si prende con onPreviewKeyEvent sul contenitore della pagina e
    // non con un BackHandler: la pagina protetta e la configurazione della VPN
    // restano libere di gestirlo (qui si restituisce false), e i test iniettano
    // i tasti nell'albero Compose, che non raggiunge il gestore Indietro
    // dell'Activity.
    val pageHandlesBack = openCard != SettingsCard.Protected &&
        !(openCard == SettingsCard.Vpn && vpnSetupOpen) &&
        !downloadInProgress

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
                SettingsCard.Vpn -> if (vpnSetupOpen) vpnSetupPage(modifier) else vpnPage(modifier)
                SettingsCard.Account -> accountPage(modifier)
                SettingsCard.Appearance -> appearancePage(modifier)
                SettingsCard.Catalog -> catalogPage(modifier)
                SettingsCard.App -> appPage(modifier)
                null -> Unit
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
const val SETTINGS_UPDATE_BUTTON_TAG = "settings_update_button"
const val SETTINGS_UPDATE_STATUS_TAG = "settings_update_status"

fun updateAvailableLabel(version: String): String = "Disponibile la versione $version"
