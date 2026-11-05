@file:OptIn(androidx.compose.material3.ExperimentalMaterial3Api::class)

package it.felixvision.mobile.ui.settings

import androidx.compose.foundation.background
import androidx.compose.foundation.gestures.detectHorizontalDragGestures
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.safeDrawing
import androidx.compose.foundation.layout.windowInsetsPadding
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Checkbox
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.runtime.staticCompositionLocalOf
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.geometry.Rect
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.layout.boundsInRoot
import androidx.compose.ui.layout.onGloballyPositioned
import androidx.compose.ui.platform.testTag
import androidx.activity.compose.LocalOnBackPressedDispatcherOwner
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.compose.LifecycleStartEffect
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import it.felixvision.mobile.AppContainer
import it.felixvision.mobile.data.catalog.CatalogDownloadMonitor
import it.felixvision.mobile.ui.access.AccessViewModel
import it.felixvision.mobile.ui.access.PairingPanel
import it.felixvision.mobile.ui.catalog.CatalogUiState
import it.felixvision.mobile.ui.catalog.CatalogViewModel
import it.felixvision.mobile.ui.components.FvpPrimaryButton
import it.felixvision.mobile.ui.components.FvpSecondaryButton
import it.felixvision.mobile.ui.settings.protection.ProtectedContentScreen
import it.felixvision.mobile.ui.theme.FvpColors
import it.felixvision.tv.data.protection.ProtectedContentData
import java.time.Instant
import java.time.ZoneId
import java.time.format.DateTimeFormatter
import kotlinx.coroutines.flow.MutableStateFlow

/**
 * I cinque riquadri delle Impostazioni del tablet, nell'ordine della schermata:
 * Account, Contenuti protetti, Catalogo, App, Configura da remoto.
 *
 * Da 840dp in su i riquadri stanno su due colonne (a sinistra Account e
 * Contenuti protetti, a destra Catalogo, App e Configura da remoto); sotto
 * quella larghezza restano in una colonna sola, con lo stesso ordine.
 *
 * @param leftColumn vero per i riquadri della colonna di sinistra.
 */
enum class SettingsPanel(
    val title: String,
    val testTag: String,
    val leftColumn: Boolean,
) {
    ACCOUNT("Account", "settings_card_account", leftColumn = true),
    PROTECTED("Contenuti protetti", "settings_card_protected", leftColumn = true),
    CATALOG("Catalogo", "settings_card_catalog", leftColumn = false),
    APP("App", "settings_card_app", leftColumn = false),
    REMOTE("Configura da remoto", "settings_card_remote", leftColumn = false),
    ;

    /** Tag di test del titolo del riquadro. */
    val titleTag: String get() = "${testTag}_title"
}

/** Larghezza da cui i riquadri passano su due colonne. */
val SETTINGS_TWO_COLUMNS_MIN_WIDTH = 840.dp

/** Tag del contenitore scorrevole e delle colonne dei riquadri. */
const val SETTINGS_LIST_TAG = "settings_list"
const val SETTINGS_COLUMN_LEFT_TAG = "settings_column_left"
const val SETTINGS_COLUMN_RIGHT_TAG = "settings_column_right"

/** Titolo del pulsante che apre la pagina "Contenuti protetti" dal riquadro. */
const val PROTECTED_MANAGE_LABEL = "Gestisci"

/**
 * Riga di riepilogo del riquadro "Contenuti protetti": stesso testo e stessa
 * logica di `protectedSettingsLine` delle Impostazioni della TV, con la sola
 * differenza che qui il dato arriva dall'archivio del tablet
 * ([it.felixvision.tv.data.protection.ProtectedContentData.hasPin]).
 */
fun protectedSettingsLine(hasPin: Boolean): String =
    if (hasPin) "PIN impostato" else "PIN non impostato"

/** Domanda e avviso della conferma di uscita. */
const val EXIT_CONFIRM_TITLE = "Vuoi uscire dall'account?"
const val EXIT_CONFIRM_MESSAGE =
    "Verranno cancellate le credenziali salvate e la cache del catalogo."
const val EXIT_CLEAR_USER_DATA_LABEL = "Cancella anche preferiti e cronologia"

/**
 * Stato dello scorrimento della schermata, condiviso con il riquadro "Configura
 * da remoto" per sapere se è nel riquadro visibile: il polling verso il relay
 * gira solo in quel caso.
 */
private val LocalSettingsScrollState = staticCompositionLocalOf<ScrollStateHolder?> { null }

/**
 * Vero quando il riquadro "Configura da remoto" è dentro l'intervallo visibile
 * delle Impostazioni. Un riquadro non ancora misurato ([Rect.Zero], altezza
 * nulla) conta come visibile: la misurazione arriva al primo fotogramma.
 */
internal fun isRemoteCardVisible(card: Rect, viewport: Rect): Boolean {
    if (card.height <= 0f || viewport.height <= 0f) return true
    return card.bottom > viewport.top && card.top < viewport.bottom
}

/** Contenitore scorrevole corrente e suo intervallo verticale a schermo. */
class ScrollStateHolder {

    /** Intervallo verticale (in coordinate di radice) dell'area visibile. */
    var viewport: Rect = Rect.Zero
        internal set
}

/**
 * Sezione "Impostazioni" del tablet: cinque riquadri nell'ordine della TV
 * (Account, Contenuti protetti, Catalogo, App, Configura da remoto).
 *
 * - Account: utente, stato, scadenza, connessioni in uso con l'avviso della TV,
 *   server ed Esci (con conferma e pulizia opzionale dei dati utente).
 * - Contenuti protetti: la riga di riepilogo del PIN ([protectedSettingsLine],
 *   lo stesso testo della TV) e "Gestisci", che apre la pagina
 *   [it.felixvision.mobile.ui.settings.protection.ProtectedContentScreen] al
 *   posto del contenuto delle Impostazioni; Indietro torna ai riquadri.
 * - Catalogo: ultimo aggiornamento e "Aggiorna catalogo" con la finestra
 *   esistente ([CatalogUpdateDialog], aperta anche se un aggiornamento è già in
 *   corso).
 * - App: versione "versionName (versionCode)". Nessun pulsante di aggiornamento
 *   in questo PR (arriva nel PR4).
 * - Configura da remoto: lo stesso pannello di abbinamento dell'accesso
 *   ([PairingPanel]) e lo stesso ciclo del ViewModel, attivo solo con il
 *   riquadro visibile e l'app in primo piano.
 */
@Composable
fun SettingsScreen(
    settingsViewModel: SettingsViewModel,
    catalogViewModel: CatalogViewModel,
    modifier: Modifier = Modifier,
    downloadMonitor: CatalogDownloadMonitor,
    /**
     * Contenitore dell'app: da qui arrivano l'archivio dei contenuti protetti
     * ([AppContainer.protectedContentStore]), lo stato di sessione
     * ([AppContainer.protectedSession]) e l'orologio iniettato. Con `null` la
     * pagina "Contenuti protetti" non è raggiungibile e il pulsante
     * "Gestisci" resta spento (serve solo a chi monta le Impostazioni senza il
     * container dell'app, come i test delle sole Impostazioni).
     */
    container: AppContainer? = null,
) {
    val state by settingsViewModel.ui.collectAsStateWithLifecycle()
    val catalogState by catalogViewModel.fullUi.collectAsStateWithLifecycle()
    val downloadProgress by downloadMonitor.progress.collectAsStateWithLifecycle()
    var showUpdateDialog by remember { mutableStateOf(false) }
    val scrollHolder = remember { ScrollStateHolder() }

    // --- Contenuti protetti ---
    // La pagina sostituisce il contenuto delle Impostazioni finché è aperta:
    // "Gestisci" la apre, Indietro (gestito dentro la pagina) torna qui.
    var showProtectedPage by remember { mutableStateOf(false) }
    var protectedData by remember { mutableStateOf<ProtectedContentData?>(null) }
    val protectedStore = container?.protectedContentStore
    // Archivio legato a server+utente: cambia con l'account mostrato
    // (abbinamento da remoto) e si ricarica a ogni scrittura dell'archivio.
    val protectedAccount = with(settingsViewModel) { currentServer to currentUsername }
    // Flusso di riserva (sempre a 0) quando manca il container: nessuna
    // remember condizionale, la revisione arriva dallo store quando c'è.
    val noRevision = remember { MutableStateFlow(0L) }
    val protectedRevision by (protectedStore?.revision ?: noRevision).collectAsStateWithLifecycle()
    LaunchedEffect(protectedStore, protectedRevision, protectedAccount) {
        val store = protectedStore ?: return@LaunchedEffect
        protectedData = store.get(protectedAccount.first, protectedAccount.second)
    }

    // Quando il catalogo viene ricaricato (aggiornamento riuscito), la riga
    // "Ultimo aggiornamento" rilegge l'ora salvata in cache dalla finestra.
    var lastSeenCatalogUpdate by remember { mutableStateOf<Long?>(null) }
    LaunchedEffect(catalogState.lastUpdateMillis) {
        val value = catalogState.lastUpdateMillis
        if (value != null && value != lastSeenCatalogUpdate) {
            lastSeenCatalogUpdate = value
            settingsViewModel.reloadLastUpdate()
        }
    }

    // Il pulsante resta sempre disponibile: se un aggiornamento (anche
    // automatico) è già in corso, apre la stessa finestra invece di essere
    // ignorato.
    val onRefreshClick: () -> Unit = {
        val busy = catalogState.isRefreshing || catalogState.isLoading
        if (!busy) catalogViewModel.refreshManual()
        showUpdateDialog = true
    }

    val backDispatcher = LocalOnBackPressedDispatcherOwner.current?.onBackPressedDispatcher
    BoxWithConstraints(
        modifier = modifier
            .fillMaxSize()
            .background(FvpColors.Background)
            // Un trascinamento orizzontale verso destra inoltra il back al
            // gestore attivo: dialoghi, sottopagine protette e pagina settings.
            .pointerInput(backDispatcher) {
                var totalDrag = 0f
                var handled = false
                detectHorizontalDragGestures(
                    onDragStart = { totalDrag = 0f; handled = false },
                    onDragEnd = { totalDrag = 0f; handled = false },
                    onHorizontalDrag = { change, dragAmount ->
                        totalDrag += dragAmount
                        if (!handled && totalDrag > 96.dp.toPx()) {
                            handled = true
                            backDispatcher?.onBackPressed()
                            change.consume()
                        }
                    },
                )
            }
            // Intervallo a schermo delle Impostazioni: è il riferimento per
            // sapere se il riquadro "Configura da remoto" è visibile o se lo
            // scorrimento lo ha portato fuori.
            .onGloballyPositioned { coordinates ->
                scrollHolder.viewport = coordinates.boundsInRoot()
            },
    ) {
        val twoColumns = maxWidth >= SETTINGS_TWO_COLUMNS_MIN_WIDTH

        CompositionLocalProvider(LocalSettingsScrollState provides scrollHolder) {
            Column(
                modifier = Modifier
                    .fillMaxSize()
                    // Nella schermata principale gli insets sono già stati
                    // consumati dal chrome; qui valgono quando Impostazioni è
                    // mostrata da sola.
                    .windowInsetsPadding(WindowInsets.safeDrawing)
                    .padding(horizontal = 16.dp, vertical = 12.dp)
                    .verticalScroll(rememberScrollState())
                    .testTag(SETTINGS_LIST_TAG),
                verticalArrangement = Arrangement.spacedBy(16.dp),
            ) {
                if (twoColumns) {
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.spacedBy(16.dp),
                    ) {
                        SettingsColumn(
                            panels = SettingsPanel.entries.filter { it.leftColumn },
                            testTag = SETTINGS_COLUMN_LEFT_TAG,
                            state = state,
                            catalogState = catalogState,
                            settingsViewModel = settingsViewModel,
                            onRefreshClick = onRefreshClick,
                            onOpenProtected = { showProtectedPage = true },
                            protectedHasPin = protectedData?.hasPin == true,
                            container = container,
                            modifier = Modifier.weight(1f),
                        )
                        SettingsColumn(
                            panels = SettingsPanel.entries.filter { !it.leftColumn },
                            testTag = SETTINGS_COLUMN_RIGHT_TAG,
                            state = state,
                            catalogState = catalogState,
                            settingsViewModel = settingsViewModel,
                            onRefreshClick = onRefreshClick,
                            onOpenProtected = { showProtectedPage = true },
                            protectedHasPin = protectedData?.hasPin == true,
                            container = container,
                            modifier = Modifier.weight(1f),
                        )
                    }
                } else {
                    SettingsColumn(
                        panels = SettingsPanel.entries,
                        testTag = SETTINGS_COLUMN_LEFT_TAG,
                        state = state,
                        catalogState = catalogState,
                        settingsViewModel = settingsViewModel,
                        onRefreshClick = onRefreshClick,
                        onOpenProtected = { showProtectedPage = true },
                        protectedHasPin = protectedData?.hasPin == true,
                        container = container,
                        modifier = Modifier.fillMaxWidth(),
                    )
                }
            }
        }
    }

    if (showUpdateDialog) {
        CatalogUpdateDialog(
            sections = catalogState.refreshSections,
            downloads = downloadProgress,
            errorMessage = if (catalogState.isRefreshing) null else catalogState.errorMessage,
            onRetry = catalogViewModel::retry,
            onClose = { showUpdateDialog = false },
        )
    }

    if (state.showExitConfirm) {
        ExitConfirmDialog(
            clearUserData = state.clearUserDataOnExit,
            isWorking = state.isWorking,
            onToggleClearUserData = settingsViewModel::onToggleClearUserDataOnExit,
            onCancel = settingsViewModel::onExitCancel,
            onConfirm = settingsViewModel::onExitConfirm,
        )
    }

    // La pagina "Contenuti protetti" si disegna SOPRA i riquadri e prende il
    // loro posto finché è aperta: "Gestisci" la apre, Indietro (gestito dentro
    // la pagina) la chiude e si torna alle Impostazioni così com'erano.
    if (showProtectedPage && container != null) {
        ProtectedContentScreen(
            store = container.protectedContentStore,
            session = container.protectedSession,
            credentialStore = container.credentialStore,
            clock = container.clock,
            server = settingsViewModel.currentServer,
            username = settingsViewModel.currentUsername,
            catalog = catalogState.catalog,
            onRefreshCatalog = {
                if (!catalogState.isRefreshing && !catalogState.isLoading) {
                    catalogViewModel.refreshManual()
                }
            },
            onExit = { showProtectedPage = false },
            modifier = modifier,
        )
    }
}

/** Colonna di riquadri: una per riga, con lo spazio fra i riquadri del progetto. */
@Composable
private fun SettingsColumn(
    panels: List<SettingsPanel>,
    testTag: String,
    state: SettingsUiState,
    catalogState: CatalogUiState,
    settingsViewModel: SettingsViewModel,
    onRefreshClick: () -> Unit,
    onOpenProtected: () -> Unit,
    protectedHasPin: Boolean,
    container: AppContainer?,
    modifier: Modifier = Modifier,
) {
    Column(
        modifier = modifier.testTag(testTag),
        verticalArrangement = Arrangement.spacedBy(16.dp),
    ) {
        panels.forEach { panel ->
            when (panel) {
                SettingsPanel.ACCOUNT -> SettingsCard(panel.title, panel.titleTag, panel.testTag) {
                    AccountCardContent(
                        state = state,
                        onExit = settingsViewModel::onExitClicked,
                    )
                }

                SettingsPanel.PROTECTED -> SettingsCard(panel.title, panel.titleTag, panel.testTag) {
                    Text(
                        text = protectedSettingsLine(protectedHasPin),
                        color = FvpColors.TextSecondary,
                        fontSize = 14.sp,
                        modifier = Modifier.testTag("settings_protected_summary"),
                    )
                    FvpSecondaryButton(
                        text = PROTECTED_MANAGE_LABEL,
                        onClick = onOpenProtected,
                        enabled = container != null,
                        // Riga comoda per il tocco, come gli altri comandi.
                        modifier = Modifier
                            .fillMaxWidth()
                            .heightIn(min = 48.dp),
                        testTag = "settings_protected_manage",
                    )
                }

                SettingsPanel.CATALOG -> SettingsCard(panel.title, panel.titleTag, panel.testTag) {
                    InfoRow(
                        label = "Ultimo aggiornamento",
                        value = formatMillis(state.lastUpdateMillis) ?: "Mai",
                        testTag = "settings_last_update",
                    )
                    FvpPrimaryButton(
                        text = "Aggiorna catalogo",
                        onClick = onRefreshClick,
                        modifier = Modifier.fillMaxWidth(),
                        testTag = "settings_refresh",
                    )
                }

                SettingsPanel.APP -> SettingsCard(panel.title, panel.titleTag, panel.testTag) {
                    InfoRow(
                        label = "Versione",
                        value = "${state.versionName} (${state.versionCode})",
                        testTag = "settings_version",
                    )
                }

                SettingsPanel.REMOTE -> RemoteConfigCard(
                    state = state,
                    testTag = panel.testTag,
                    titleTag = panel.titleTag,
                    onRenewCode = settingsViewModel::onRenewPairingCode,
                    onVisible = settingsViewModel::onRemoteCardVisible,
                    onHidden = settingsViewModel::onRemoteCardHidden,
                )
            }
        }
    }
}

// --- Account ---

@Composable
private fun AccountCardContent(
    state: SettingsUiState,
    onExit: () -> Unit,
) {
    InfoRow(label = "Utente", value = state.username.ifBlank { "—" }, testTag = "settings_username")
    InfoRow(
        label = "Stato",
        value = state.status.ifBlank { "—" },
        valueColor = when {
            state.status.contains("Scaduto") || state.status.contains("Disattivato") -> FvpColors.Error
            else -> FvpColors.TextPrimary
        },
        testTag = "settings_status",
    )
    val expiry = AccessViewModel.formatDate(state.expiresAtEpochSeconds)
    val daysLeft = AccessViewModel.daysRemaining(state.expiresAtEpochSeconds)
    InfoRow(
        label = "Scadenza",
        value = when {
            expiry == null -> "Non indicata dal server"
            daysLeft != null && daysLeft <= 7 -> "$expiry (tra ${daysLeft.coerceAtLeast(0)} g)"
            else -> expiry
        },
        testTag = "settings_expiry",
    )
    InfoRow(
        label = "Connessioni in uso",
        value = when {
            state.activeConnections != null && state.maxConnections != null ->
                "${state.activeConnections} / ${state.maxConnections}"
            else -> "Non indicato dal server"
        },
        testTag = "settings_connections",
    )
    if (state.connectionsWarning) {
        Box(
            modifier = Modifier
                .fillMaxWidth()
                .clip(RoundedCornerShape(10.dp))
                .background(FvpColors.Error.copy(alpha = 0.16f))
                .padding(horizontal = 12.dp, vertical = 10.dp)
                .testTag("settings_connections_warning"),
        ) {
            Text(
                text = ConnectionsAdvisory.MESSAGE,
                color = FvpColors.Error,
                fontSize = 14.sp,
                fontWeight = FontWeight.Medium,
            )
        }
    }
    InfoRow(
        label = "Server",
        value = state.serverHost,
        supporting = state.serverLabel,
        testTag = "settings_server",
    )
    FvpSecondaryButton(
        text = "Esci",
        onClick = onExit,
        modifier = Modifier.fillMaxWidth(),
        testTag = "settings_exit",
    )
}

// --- Configura da remoto ---

/**
 * Riquadro di abbinamento: codice e QR come nel login e "Mostra un nuovo
 * codice" alla scadenza.
 *
 * Il polling vive nel ViewModel e viene acceso spento da [onVisible]/[onHidden]:
 * è attivo solo quando il riquadro è dentro l'intervallo visibile dello
 * scorrimento **e** l'app è in primo piano; rotating, cambiando sezione o
 * scorrendo via il riquadro il ciclo si ferma.
 */
@Composable
internal fun RemoteConfigCard(
    state: SettingsUiState,
    testTag: String,
    titleTag: String,
    onRenewCode: () -> Unit,
    onVisible: () -> Unit,
    onHidden: () -> Unit,
) {
    val scrollHolder = LocalSettingsScrollState.current
    var bounds by remember { mutableStateOf(Rect.Zero) }
    var inViewport by remember { mutableStateOf(true) }
    var started by remember { mutableStateOf(false) }

    // Il polling gira solo con il riquadro dentro l'intervallo visibile: qui si
    // osserva la posizione del riquadro e quella della schermata.
    val currentViewport = scrollHolder?.viewport ?: Rect.Zero
    LaunchedEffect(currentViewport, bounds) {
        inViewport = isRemoteCardVisible(bounds, currentViewport)
    }

    LifecycleStartEffect(Unit) {
        started = true
        onStopOrDispose { started = false }
    }

    // Uscire dalla composizione (cambio sezione, schermata sostituita) ferma
    // comunque il ciclo: nessuna richiesta al relay senza riquadro.
    DisposableEffect(Unit) {
        onDispose { onHidden() }
    }

    LaunchedEffect(started, inViewport) {
        if (started && inViewport) onVisible() else onHidden()
    }

    SettingsCard(
        title = "Configura da remoto",
        titleTag = titleTag,
        testTag = testTag,
        modifier = Modifier.onGloballyPositioned { coordinates ->
            bounds = coordinates.boundsInRoot()
        },
    ) {
        PairingPanel(
            state = state.pairing,
            onRenewCode = onRenewCode,
            modifier = Modifier.fillMaxWidth(),
        )
        if (state.pairingBusy) {
            Text(
                text = "Verifica delle credenziali ricevute dal telefono…",
                color = FvpColors.TextSecondary,
                fontSize = 13.sp,
                modifier = Modifier.testTag("settings_remote_busy"),
            )
        }
        state.pairingMessage?.let { message ->
            Text(
                text = message,
                color = FvpColors.Green,
                fontSize = 14.sp,
                fontWeight = FontWeight.Medium,
                modifier = Modifier.testTag("settings_remote_message"),
            )
        }
        state.pairingError?.let { message ->
            Text(
                text = message,
                color = FvpColors.Error,
                fontSize = 14.sp,
                modifier = Modifier.testTag("settings_remote_error"),
            )
        }
    }
}

// --- Componenti comuni ---

/** Scheda arrotondata di un riquadro delle Impostazioni. */
@Composable
private fun SettingsCard(
    title: String,
    titleTag: String,
    testTag: String,
    modifier: Modifier = Modifier,
    content: @Composable () -> Unit,
) {
    Column(
        modifier = modifier
            .fillMaxWidth()
            .clip(RoundedCornerShape(16.dp))
            .background(FvpColors.Surface)
            .padding(16.dp)
            .testTag(testTag),
        verticalArrangement = Arrangement.spacedBy(10.dp),
    ) {
        Text(
            text = title,
            color = FvpColors.ImpostazioniActive,
            fontSize = 15.sp,
            fontWeight = FontWeight.Bold,
            modifier = Modifier.testTag(titleTag),
        )
        HorizontalDivider(color = FvpColors.SurfaceElevated, thickness = 1.dp)
        content()
    }
}

/** Voce etichetta/valore in una scheda; nessun testo viene troncato. */
@Composable
private fun InfoRow(
    label: String,
    value: String,
    testTag: String,
    supporting: String? = null,
    valueColor: Color = FvpColors.TextPrimary,
) {
    Row(
        verticalAlignment = Alignment.CenterVertically,
        modifier = Modifier.fillMaxWidth(),
    ) {
        Text(
            text = label,
            color = FvpColors.TextSecondary,
            fontSize = 14.sp,
            modifier = Modifier.weight(1f),
        )
        Column(horizontalAlignment = Alignment.End) {
            Text(
                text = value,
                color = valueColor,
                fontSize = 15.sp,
                fontWeight = FontWeight.Medium,
                modifier = Modifier.testTag(testTag),
            )
            supporting?.let {
                Text(
                    text = it,
                    color = FvpColors.TextSecondary,
                    fontSize = 12.sp,
                    modifier = Modifier.testTag("${testTag}_supporting"),
                )
            }
        }
    }
}

/** Conferma di uscita, con la casella per i dati utente non selezionata. */
@Composable
private fun ExitConfirmDialog(
    clearUserData: Boolean,
    isWorking: Boolean,
    onToggleClearUserData: () -> Unit,
    onCancel: () -> Unit,
    onConfirm: () -> Unit,
) {
    AlertDialog(
        onDismissRequest = onCancel,
        containerColor = FvpColors.Surface,
        title = {
            Text(text = EXIT_CONFIRM_TITLE, color = FvpColors.TextPrimary)
        },
        text = {
            Column(verticalArrangement = Arrangement.spacedBy(10.dp)) {
                Text(
                    text = EXIT_CONFIRM_MESSAGE,
                    color = FvpColors.TextSecondary,
                    fontSize = 14.sp,
                    modifier = Modifier.testTag("settings_exit_message"),
                )
                Row(
                    verticalAlignment = Alignment.CenterVertically,
                    modifier = Modifier
                        .fillMaxWidth()
                        .testTag("settings_exit_clear_data_row"),
                ) {
                    Checkbox(
                        checked = clearUserData,
                        onCheckedChange = { onToggleClearUserData() },
                        modifier = Modifier.testTag("settings_exit_clear_data_checkbox"),
                    )
                    Text(
                        text = EXIT_CLEAR_USER_DATA_LABEL,
                        color = FvpColors.TextPrimary,
                        fontSize = 14.sp,
                    )
                }
            }
        },
        confirmButton = {
            TextButton(
                onClick = onConfirm,
                enabled = !isWorking,
                modifier = Modifier.testTag("settings_exit_confirm"),
            ) {
                Text(
                    text = if (isWorking) "Uscita…" else "Conferma",
                    color = FvpColors.Error,
                    fontWeight = FontWeight.Bold,
                )
            }
        },
        dismissButton = {
            TextButton(
                onClick = onCancel,
                modifier = Modifier.testTag("settings_exit_cancel"),
            ) {
                Text(text = "Annulla", color = FvpColors.TextPrimary)
            }
        },
    )
}

/** Formattazione "dd/MM/yyyy HH:mm" coerente con il fuso del dispositivo. */
private fun formatMillis(millis: Long?): String? {
    if (millis == null || millis <= 0L) return null
    return runCatching {
        FORMATTER.format(Instant.ofEpochMilli(millis).atZone(ZoneId.systemDefault()))
    }.getOrNull()
}

private val FORMATTER: DateTimeFormatter = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm")
