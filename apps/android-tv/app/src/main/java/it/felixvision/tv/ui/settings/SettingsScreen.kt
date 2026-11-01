package it.felixvision.tv.ui.settings

import androidx.activity.compose.BackHandler
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.runtime.withFrameNanos
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.focus.onFocusChanged
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.window.Dialog
import androidx.compose.ui.window.DialogProperties
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import androidx.lifecycle.compose.LocalLifecycleOwner
import androidx.tv.material3.Text
import it.felixvision.tv.data.catalog.Catalog
import it.felixvision.tv.data.catalog.CatalogRefresh
import it.felixvision.tv.data.catalog.CatalogSectionProgress
import it.felixvision.tv.data.catalog.CatalogSectionStatus
import it.felixvision.tv.ui.access.AccessViewModel
import it.felixvision.tv.ui.access.PairingPanel
import it.felixvision.tv.ui.components.FvpCheckboxButton
import it.felixvision.tv.ui.components.FvpCompactButton
import it.felixvision.tv.ui.components.FvpPrimaryButton
import it.felixvision.tv.ui.components.FvpSecondaryButton
import it.felixvision.tv.ui.components.FvpStatusText
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.components.rememberRowsBringIntoViewer
import it.felixvision.tv.ui.settings.protection.ProtectedContentScreen
import it.felixvision.tv.ui.theme.FvpColors
import it.felixvision.tv.ui.theme.settingsBlockSpacing
import it.felixvision.tv.ui.theme.settingsRowSpacing
import it.felixvision.tv.ui.theme.settingsRowText
import it.felixvision.tv.ui.theme.settingsSectionPadding
import java.time.Instant
import java.time.ZoneId
import java.time.format.DateTimeFormatter

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
    val catalogCloseFocus = remember { FocusRequester() }
    val lifecycleOwner = LocalLifecycleOwner.current

    // Pagina "Contenuti protetti": mentre è aperta sostituisce il contenuto
    // delle Impostazioni; al rientro il focus torna sul pulsante "Gestisci".
    val protectedSummary by viewModel.protectedSummary.collectAsState()
    var showProtectedScreen by remember { mutableStateOf(false) }
    val protectedManageFocus = remember { FocusRequester() }
    var wasProtectedOpen by remember { mutableStateOf(false) }
    LaunchedEffect(showProtectedScreen) {
        if (wasProtectedOpen && !showProtectedScreen) {
            withFrameNanos { }
            runCatching { protectedManageFocus.requestFocus() }
        }
        wasProtectedOpen = showProtectedScreen
    }

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
    // cancella il file parziale senza uscire dalle Impostazioni.
    BackHandler(enabled = state.isDownloadingUpdate) {
        viewModel.cancelUpdateDownload()
    }

    if (showProtectedScreen) {
        ProtectedContentScreen(
            store = viewModel.protectedContentStore,
            session = viewModel.protectedSession,
            credentialStore = viewModel.credentialStore,
            clock = viewModel.clock,
            server = viewModel.server,
            username = viewModel.username,
            catalog = catalog,
            scale = scale,
            modifier = modifier,
            onExit = { showProtectedScreen = false },
        )
    } else {
        SettingsContent(
            state = state,
            scale = scale,
            modifier = modifier,
            contentFocusRequester = contentFocusRequester,
            interfaceSize = interfaceSize,
            onInterfaceSizeSelected = { viewModel.onInterfaceSizeSelected(it) },
            catalogRefreshing = catalogRefreshing,
            catalogLastUpdateMillis = catalogLastUpdateMillis,
            // La finestra di avanzamento si apre qui: il contenuto resta senza stato.
            onRefreshCatalog = {
                showCatalogDialog = true
                onRefreshCatalog()
            },
            onUpdateClicked = { viewModel.onUpdateClicked() },
            onExitClicked = { viewModel.onExitClicked() },
            onRenewCode = { viewModel.onRenewCode() },
            protectedSummary = protectedSummary,
            onOpenProtected = { showProtectedScreen = true },
            protectedManageFocus = protectedManageFocus,
        )
    }

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

/** Riquadro "Aspetto": dimensione dell'interfaccia sulle TV da 50" in su. */
const val SETTINGS_APPEARANCE_TITLE = "Aspetto"
const val SETTINGS_APPEARANCE_SECTION_TAG = "settings_appearance_section"

/** Riquadro "Contenuti protetti": PIN ed elenco nascosti per l'account. */
const val SETTINGS_PROTECTED_TITLE = "Contenuti protetti"
const val SETTINGS_PROTECTED_SECTION_TAG = "settings_protected_section"
const val SETTINGS_PROTECTED_SUMMARY_TAG = "settings_protected_summary"
const val SETTINGS_PROTECTED_MANAGE_LABEL = "Gestisci"
const val SETTINGS_PROTECTED_OPEN_TAG = "settings_protected_open"

/** Etichetta della riga che raccoglie i pulsanti della dimensione interfaccia. */
const val SETTINGS_INTERFACE_SIZE_LABEL = "Dimensione interfaccia"

/** Prefisso del pulsante della dimensione attiva. */
const val INTERFACE_SIZE_ACTIVE_PREFIX = "✓ "

/** Tag di test del pulsante di [size] nel riquadro Aspetto. */
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

/** Righe della schermata che ricevono il focus, per il bringIntoView. */
private const val SETTINGS_ROW_ACCOUNT = 0
private const val SETTINGS_ROW_APP = 1
private const val SETTINGS_ROW_ACTIONS = 2
private const val SETTINGS_ROW_PAIRING = 3

/**
 * Contenuto della schermata Impostazioni, senza ViewModel: così i riquadri
 * Account, Aspetto e App si possono comporre e provare senza rete né archivi.
 *
 * Il contenuto scorre in verticale: con le righe compatte e i margini del focus
 * non tutto sta in una schermata, e senza lo scorrimento gli ultimi pulsanti
 * non sarebbero raggiungibili con il telecomando.
 */
@Composable
internal fun SettingsContent(
    state: SettingsUiState,
    scale: UiScale,
    modifier: Modifier = Modifier,
    contentFocusRequester: FocusRequester? = null,
    /** Dimensione dell'interfaccia attiva, evidenziata con "✓ ". */
    interfaceSize: InterfaceSize = InterfaceSize.COMPACT,
    onInterfaceSizeSelected: (InterfaceSize) -> Unit = {},
    catalogRefreshing: Boolean = false,
    catalogLastUpdateMillis: Long? = null,
    onRefreshCatalog: () -> Unit = {},
    onUpdateClicked: () -> Unit = {},
    onExitClicked: () -> Unit = {},
    onRenewCode: () -> Unit = {},
    /** Stato del PIN per la riga del riquadro. */
    protectedSummary: ProtectedSummary = ProtectedSummary(),
    onOpenProtected: () -> Unit = {},
    /** Focus da riportare sul pulsante "Gestisci" al rientro dalla schermata. */
    protectedManageFocus: FocusRequester? = null,
) {
    // Come in Novità: il contenuto scorre in verticale e la riga che riceve il
    // focus viene portata interamente in vista, così anche gli ultimi pulsanti
    // (uscita dall'account compresa) restano raggiungibili con Su/Giù.
    val scrollState = rememberScrollState()
    val rowsBringIntoView = rememberRowsBringIntoViewer()
    val updateButtonFocus = remember { FocusRequester() }
    var wasDownloading by remember { mutableStateOf(false) }
    val isDownloadingNow = state.updateStatus is AppUpdateStatus.Downloading

    LaunchedEffect(isDownloadingNow, state.updateStatus) {
        if (wasDownloading && state.updateStatus is AppUpdateStatus.Available) {
            withFrameNanos { }
            runCatching { updateButtonFocus.requestFocus() }
        }
        wasDownloading = isDownloadingNow
    }

    fun Modifier.rowInView(row: Int): Modifier = this
        .then(rowsBringIntoView.rowModifier(row))
        .onFocusChanged { focusState -> if (focusState.hasFocus) rowsBringIntoView.onRowFocused(row) }

    Column(
        modifier = modifier
            .fillMaxSize()
            .verticalScroll(scrollState)
            .padding(horizontal = scale.dp(24f), vertical = scale.dp(16f)),
        verticalArrangement = Arrangement.spacedBy(scale.settingsBlockSpacing),
    ) {
        Text(text = "Impostazioni", color = FvpColors.TextPrimary, fontSize = scale.sp(22f), fontWeight = FontWeight.Bold)

        Column(
            modifier = Modifier
                .fillMaxWidth()
                .rowInView(SETTINGS_ROW_ACCOUNT)
                .clip(RoundedCornerShape(scale.dp(14f)))
                .background(FvpColors.Surface)
                .padding(scale.settingsSectionPadding),
            verticalArrangement = Arrangement.spacedBy(scale.settingsRowSpacing),
        ) {
            Text(text = "Account", color = FvpColors.TextPrimary, fontSize = scale.sp(16f), fontWeight = FontWeight.SemiBold)
            SettingsRow(label = "Utente", value = state.username, scale = scale)
            SettingsRow(label = "Stato", value = state.status, scale = scale)
            SettingsRow(label = "Scadenza", value = formatExpiry(state.expiresAtEpochSeconds), scale = scale)
            SettingsRow(
                label = "Connessioni in uso (tutti i dispositivi)",
                value = formatConnections(state.activeConnections, state.maxConnections),
                scale = scale,
                rowTestTag = "settings_connections_row",
            )
            SettingsRow(label = "Server", value = state.serverLabel, scale = scale, rowTestTag = "settings_server_row")
            // Uscita dall'account: ultimo elemento del riquadro, subito dopo la
            // riga "Server", allineata a sinistra come gli altri pulsanti secondari.
            FvpSecondaryButton(
                text = SETTINGS_EXIT_LABEL,
                onClick = onExitClicked,
                scale = scale,
                modifier = Modifier
                    .padding(top = scale.settingsRowSpacing)
                    .testTag(SETTINGS_EXIT_TAG),
            )
        }

        // Riquadro Aspetto subito dopo Account: dimensione dell'interfaccia.
        // La scelta si applica all'istante (OK la salva e la usa FvpApp) e il
        // focus resta sul pulsante premuto, così si può cambiare ancora. È il
        // focus a portare in vista i pulsanti: non richiedere anche la vista
        // dell'intero riquadro, per evitare richieste di scorrimento concorrenti.
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .clip(RoundedCornerShape(scale.dp(14f)))
                .background(FvpColors.Surface)
                .padding(scale.settingsSectionPadding)
                .testTag(SETTINGS_APPEARANCE_SECTION_TAG),
            verticalArrangement = Arrangement.spacedBy(scale.settingsRowSpacing),
        ) {
            Text(
                text = SETTINGS_APPEARANCE_TITLE,
                color = FvpColors.TextPrimary,
                fontSize = scale.sp(16f),
                fontWeight = FontWeight.SemiBold,
            )
            Text(
                text = SETTINGS_INTERFACE_SIZE_LABEL,
                color = FvpColors.TextSecondary,
                fontSize = scale.settingsRowText,
            )
            Row(
                horizontalArrangement = Arrangement.spacedBy(scale.dp(8f)),
                verticalAlignment = Alignment.CenterVertically,
            ) {
                InterfaceSize.entries.forEach { size ->
                    FvpCompactButton(
                        text = interfaceSizeButtonLabel(size = size, active = interfaceSize),
                        onClick = { onInterfaceSizeSelected(size) },
                        scale = scale,
                        modifier = Modifier.testTag(interfaceSizeTag(size)),
                    )
                }
            }
        }

        // Riquadro "Contenuti protetti" subito dopo Aspetto, stesso stile: una
        // riga di riepilogo e il pulsante che apre la schermata di gestione.
        // Come per Aspetto, il focus dei pulsanti porta in vista le righe: qui
        // non serve rowInView sul riquadro.
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .clip(RoundedCornerShape(scale.dp(14f)))
                .background(FvpColors.Surface)
                .padding(scale.settingsSectionPadding)
                .testTag(SETTINGS_PROTECTED_SECTION_TAG),
            verticalArrangement = Arrangement.spacedBy(scale.settingsRowSpacing),
        ) {
            Text(
                text = SETTINGS_PROTECTED_TITLE,
                color = FvpColors.TextPrimary,
                fontSize = scale.sp(16f),
                fontWeight = FontWeight.SemiBold,
            )
            Text(
                text = protectedSettingsLine(protectedSummary),
                color = FvpColors.TextSecondary,
                fontSize = scale.settingsRowText,
                modifier = Modifier.testTag(SETTINGS_PROTECTED_SUMMARY_TAG),
            )
            FvpCompactButton(
                text = SETTINGS_PROTECTED_MANAGE_LABEL,
                onClick = onOpenProtected,
                scale = scale,
                modifier = Modifier
                    .then(
                        if (protectedManageFocus != null) {
                            Modifier.focusRequester(protectedManageFocus)
                        } else {
                            Modifier
                        },
                    )
                    .testTag(SETTINGS_PROTECTED_OPEN_TAG),
            )
        }

        // Riquadro App subito sotto Account: versione installata e aggiornamenti.
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .rowInView(SETTINGS_ROW_APP)
                .clip(RoundedCornerShape(scale.dp(14f)))
                .background(FvpColors.Surface)
                .padding(scale.settingsSectionPadding)
                .testTag("settings_app_section"),
            verticalArrangement = Arrangement.spacedBy(scale.settingsRowSpacing),
        ) {
            Text(
                text = "App",
                color = FvpColors.TextPrimary,
                fontSize = scale.sp(16f),
                fontWeight = FontWeight.SemiBold,
            )
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .testTag("settings_version_row"),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically,
            ) {
                Text(
                    text = "Versione",
                    color = FvpColors.TextSecondary,
                    fontSize = scale.settingsRowText,
                )
                Row(
                    horizontalArrangement = Arrangement.spacedBy(scale.dp(4f)),
                    verticalAlignment = Alignment.CenterVertically,
                ) {
                    Text(
                        text = state.versionName,
                        color = FvpColors.TextPrimary,
                        fontSize = scale.settingsRowText,
                        modifier = Modifier.testTag("settings_version_name"),
                    )
                    Text(
                        text = "(${state.versionCode})",
                        color = FvpColors.TextSecondary,
                        fontSize = scale.settingsRowText,
                        modifier = Modifier.testTag("settings_version_code"),
                    )
                }
            }

            when (val update = state.updateStatus) {
                AppUpdateStatus.Checking -> {
                    Text(
                        text = UPDATE_STATUS_CHECKING,
                        color = FvpColors.TextSecondary,
                        fontSize = scale.settingsRowText,
                        modifier = Modifier.testTag(SETTINGS_UPDATE_STATUS_TAG),
                    )
                }

                AppUpdateStatus.UpToDate -> {
                    Text(
                        text = UPDATE_STATUS_UP_TO_DATE,
                        color = FvpColors.TextSecondary,
                        fontSize = scale.settingsRowText,
                        modifier = Modifier.testTag(SETTINGS_UPDATE_STATUS_TAG),
                    )
                }

                AppUpdateStatus.CheckFailed -> {
                    Text(
                        text = UPDATE_STATUS_ERROR,
                        color = FvpColors.Error,
                        fontSize = scale.settingsRowText,
                        modifier = Modifier.testTag(SETTINGS_UPDATE_STATUS_TAG),
                    )
                }

                is AppUpdateStatus.Available -> {
                    Text(
                        text = updateAvailableLabel(update.release.version),
                        color = FvpColors.Green,
                        fontSize = scale.settingsRowText,
                        fontWeight = FontWeight.Medium,
                        modifier = Modifier.testTag(SETTINGS_UPDATE_STATUS_TAG),
                    )
                    update.noticeMessage?.let { notice ->
                        Text(
                            text = notice,
                            color = FvpColors.TextSecondary,
                            fontSize = scale.settingsRowText,
                            modifier = Modifier.testTag("settings_update_notice"),
                        )
                    }
                    update.errorMessage?.let { err ->
                        Text(
                            text = err,
                            color = FvpColors.Error,
                            fontSize = scale.settingsRowText,
                            modifier = Modifier.testTag("settings_update_error"),
                        )
                    }
                    FvpPrimaryButton(
                        text = SETTINGS_UPDATE_BUTTON_LABEL,
                        onClick = onUpdateClicked,
                        scale = scale,
                        enabled = true,
                        modifier = Modifier
                            .padding(top = scale.settingsRowSpacing)
                            .focusRequester(updateButtonFocus)
                            .testTag(SETTINGS_UPDATE_BUTTON_TAG),
                    )
                }

                is AppUpdateStatus.Downloading -> {
                    val clampedPercent = update.progressPercent.coerceIn(0, 100)
                    Text(
                        text = "Scaricamento aggiornamento… $clampedPercent%",
                        color = FvpColors.TextPrimary,
                        fontSize = scale.settingsRowText,
                        modifier = Modifier.testTag(SETTINGS_UPDATE_STATUS_TAG),
                    )
                    Box(
                        modifier = Modifier
                            .fillMaxWidth()
                            .height(scale.dp(6f))
                            .clip(RoundedCornerShape(scale.dp(3f)))
                            .background(FvpColors.SurfaceElevated)
                            .testTag("settings_update_progress_bar"),
                    ) {
                        Box(
                            modifier = Modifier
                                .fillMaxWidth(clampedPercent / 100f)
                                .fillMaxHeight()
                                .background(FvpColors.Green),
                        )
                    }
                    Text(
                        text = "Premi Indietro per annullare lo scaricamento.",
                        color = FvpColors.TextSecondary,
                        fontSize = scale.sp(12f),
                    )
                    FvpPrimaryButton(
                        text = SETTINGS_UPDATE_BUTTON_LABEL,
                        onClick = onUpdateClicked,
                        scale = scale,
                        enabled = false,
                        modifier = Modifier
                            .padding(top = scale.settingsRowSpacing)
                            .focusRequester(updateButtonFocus)
                            .testTag(SETTINGS_UPDATE_BUTTON_TAG),
                    )
                }

                is AppUpdateStatus.Installing -> {
                    Text(
                        text = "Installazione aggiornamento…",
                        color = FvpColors.TextPrimary,
                        fontSize = scale.settingsRowText,
                        modifier = Modifier.testTag(SETTINGS_UPDATE_STATUS_TAG),
                    )
                    FvpPrimaryButton(
                        text = SETTINGS_UPDATE_BUTTON_LABEL,
                        onClick = onUpdateClicked,
                        scale = scale,
                        enabled = false,
                        modifier = Modifier
                            .padding(top = scale.settingsRowSpacing)
                            .focusRequester(updateButtonFocus)
                            .testTag(SETTINGS_UPDATE_BUTTON_TAG),
                    )
                }
            }
        }

        // "Aggiorna catalogo" da solo nella sua riga, con l'ultimo aggiornamento.
        Row(
            modifier = Modifier.fillMaxWidth().rowInView(SETTINGS_ROW_ACTIONS),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(scale.dp(12f)),
        ) {
            FvpPrimaryButton(
                text = if (catalogRefreshing) "Aggiornamento…" else "Aggiorna catalogo",
                onClick = onRefreshCatalog,
                scale = scale,
                enabled = !catalogRefreshing,
                modifier = Modifier
                    .then(if (contentFocusRequester != null) Modifier.focusRequester(contentFocusRequester) else Modifier)
                    .testTag("settings_refresh")
            )
            val lastUpdate = catalogLastUpdateMillis ?: state.lastUpdateMillis
            Text(
                text = lastUpdate?.let { "Ultimo aggiornamento: ${formatTimestamp(it)}" } ?: "Mai aggiornato",
                color = FvpColors.TextSecondary,
                fontSize = scale.sp(13f),
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
                modifier = Modifier.weight(1f, fill = false),
            )
        }

        val accountReadAt = state.lastAccountReadMillis
        if (accountReadAt != null) {
            Text(
                text = if (state.isReadingAccount) {
                    "Aggiornamento dati account…"
                } else {
                    "Dati account aggiornati alle ${formatClock(accountReadAt)}"
                },
                color = FvpColors.TextSecondary,
                fontSize = scale.sp(13f),
                modifier = Modifier.testTag("settings_account_read"),
            )
        } else if (state.isReadingAccount) {
            Text(text = "Aggiornamento dati account…", color = FvpColors.TextSecondary, fontSize = scale.sp(13f))
        }

        if (state.connectionsWarning) {
            Text(
                text = ConnectionsAdvisory.MESSAGE,
                color = FvpColors.Error,
                fontSize = scale.sp(14f),
                modifier = Modifier.testTag("settings_connections_warning"),
            )
        }

        state.message?.let { FvpStatusText(message = it, scale = scale) }
        state.error?.let { Text(text = it, color = FvpColors.Error, fontSize = scale.sp(14f)) }

        // Riquadro compatto: spaziature ridotte, il QR è più piccolo (vedi PairingPanel).
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .rowInView(SETTINGS_ROW_PAIRING)
                .clip(RoundedCornerShape(scale.dp(14f)))
                .background(FvpColors.Surface)
                .padding(scale.settingsSectionPadding),
            verticalArrangement = Arrangement.spacedBy(scale.dp(6f)),
        ) {
            Text(text = "Configura da remoto", color = FvpColors.TextPrimary, fontSize = scale.sp(16f), fontWeight = FontWeight.SemiBold)
            PairingPanel(state = state.pairing, scale = scale, modifier = Modifier.fillMaxWidth())
            if (state.pairing.isExpired) {
                FvpSecondaryButton(text = "Mostra un nuovo codice", onClick = onRenewCode, scale = scale)
            }
        }
    }
}

@Composable
private fun SettingsRow(label: String, value: String, scale: UiScale, rowTestTag: String? = null) {
    Row(modifier = Modifier.fillMaxWidth().then(if (rowTestTag != null) Modifier.testTag(rowTestTag) else Modifier), horizontalArrangement = Arrangement.SpaceBetween) {
        Text(text = label, color = FvpColors.TextSecondary, fontSize = scale.settingsRowText)
        Text(text = value, color = FvpColors.TextPrimary, fontSize = scale.settingsRowText)
    }
}

private fun formatExpiry(epochSeconds: Long?): String {
    if (epochSeconds == null || epochSeconds <= 0L) return "Nessuna scadenza indicata"
    val date = AccessViewModel.formatDate(epochSeconds) ?: return "Nessuna scadenza indicata"
    val days = AccessViewModel.daysRemaining(epochSeconds)
    return when {
        days == null -> date
        days < 0L -> "$date (scaduto)"
        days == 0L -> "$date (oggi)"
        else -> "$date (${days} giorni)"
    }
}

private fun formatConnections(active: Int?, max: Int?): String = when {
    active != null && max != null -> "$active di $max"
    max != null -> "massimo $max"
    active != null -> "$active in uso"
    else -> "Non indicato dal server"
}

private fun formatClock(millis: Long): String {
    return try {
        val formatter = DateTimeFormatter.ofPattern("HH:mm")
        formatter.format(Instant.ofEpochMilli(millis).atZone(ZoneId.systemDefault()))
    } catch (_: Exception) { "" }
}

private fun formatTimestamp(millis: Long): String {
    return try {
        val formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm")
        formatter.format(Instant.ofEpochMilli(millis).atZone(ZoneId.systemDefault()))
    } catch (_: Exception) { "" }
}
