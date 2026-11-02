package it.felixvision.tv.ui.settings

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ColumnScope
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
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.runtime.withFrameNanos
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.tv.material3.Text
import it.felixvision.tv.data.images.CacheCleanup
import it.felixvision.tv.ui.access.AccessViewModel
import it.felixvision.tv.ui.access.PairingPanel
import it.felixvision.tv.ui.components.FvpCompactButton
import it.felixvision.tv.ui.components.FvpPrimaryButton
import it.felixvision.tv.ui.components.FvpSecondaryButton
import it.felixvision.tv.ui.components.FvpStatusText
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpColors
import it.felixvision.tv.ui.theme.settingsBlockSpacing
import it.felixvision.tv.ui.theme.settingsRowSpacing
import it.felixvision.tv.ui.theme.settingsRowText
import it.felixvision.tv.ui.theme.settingsSectionPadding
import it.felixvision.tv.vpn.VpnState
import java.time.Instant
import java.time.ZoneId
import java.time.format.DateTimeFormatter
import kotlinx.coroutines.launch

/** Tag di test delle pagine delle Impostazioni. */
const val SETTINGS_PAGE_TITLE_TAG = "settings_page_title"
const val SETTINGS_PAGE_ACCOUNT_TAG = "settings_page_account"
const val SETTINGS_PAGE_APPEARANCE_TAG = "settings_page_appearance"
const val SETTINGS_PAGE_VPN_TAG = "settings_page_vpn"
const val SETTINGS_PAGE_CATALOG_TAG = "settings_page_catalog"
const val SETTINGS_PAGE_APP_TAG = "settings_page_app"

/** Riquadro Account dentro la pagina Account. */
const val SETTINGS_ACCOUNT_SECTION_TAG = "settings_account_section"

/** Riquadro dell'abbinamento da remoto dentro la pagina Account. */
const val SETTINGS_PAIRING_SECTION_TAG = "settings_pairing_section"

/** Riga "Aggiorna catalogo" della pagina Catalogo. */
const val SETTINGS_CATALOG_REFRESH_ROW_TAG = "settings_catalog_refresh_row"

/** Tag di test del pulsante di aggiornamento del catalogo. */
const val SETTINGS_CATALOG_REFRESH_TAG = "settings_refresh"

/** Cache immagini della pagina Catalogo: testi e tag di test. */
const val SETTINGS_CACHE_TITLE = "Cache immagini"
const val SETTINGS_CACHE_SIZE_LABEL = "Spazio occupato"
const val SETTINGS_CACHE_SECTION_TAG = "settings_cache_section"
const val SETTINGS_CACHE_SIZE_ROW_TAG = "settings_cache_size_row"
const val SETTINGS_CACHE_SIZE_TAG = "settings_cache_size"
const val SETTINGS_CACHE_CLEAR_LABEL = "Svuota cache immagini"
const val SETTINGS_CACHE_CLEAR_TAG = "settings_cache_clear"
const val SETTINGS_CACHE_RESULT_TAG = "settings_cache_result"
const val SETTINGS_CACHE_NOTE = "Il catalogo salvato non viene cancellato."

/** "<n> MB" occupati dalle cache, arrotondati al megabyte. */
fun cacheSizeLabel(bytes: Long): String = "${CacheCleanup.megabytes(bytes)} MB"

/** Messaggio dopo la pulizia: "Cache svuotata · liberati <n> MB". */
fun cacheClearedMessage(freedBytes: Long): String =
    "Cache svuotata · liberati ${CacheCleanup.megabytes(freedBytes)} MB"

/** Titolo di una pagina: "Impostazioni › Account". */
fun settingsPageTitle(card: SettingsCard): String = "$SETTINGS_TITLE › ${card.title}"

/**
 * Cornice di una pagina delle Impostazioni: occupa tutta l'area dei contenuti,
 * con il titolo "Impostazioni › <Nome>" e il contenuto che scorre in verticale.
 *
 * Nessuna riga chiede di essere portata in vista: le pagine con più pulsanti
 * lasciano al focus il compito di far scorrere il contenuto, così non ci sono
 * richieste di scorrimento concorrenti.
 */
@Composable
internal fun SettingsPage(
    card: SettingsCard,
    scale: UiScale,
    modifier: Modifier = Modifier,
    pageTag: String,
    content: @Composable ColumnScope.() -> Unit,
) {
    val scrollState = rememberScrollState()
    Column(
        modifier = modifier
            .fillMaxSize()
            .verticalScroll(scrollState)
            .padding(horizontal = scale.dp(24f), vertical = scale.dp(16f))
            .testTag(pageTag),
        verticalArrangement = Arrangement.spacedBy(scale.settingsBlockSpacing),
    ) {
        Text(
            text = settingsPageTitle(card),
            color = FvpColors.TextPrimary,
            fontSize = scale.sp(22f),
            fontWeight = FontWeight.Bold,
            modifier = Modifier.testTag(SETTINGS_PAGE_TITLE_TAG),
        )
        content()
    }
}

/**
 * Pagina "Impostazioni › Account": i dati dell'account che stavano nel riquadro
 * Account, l'uscita dall'account (con la sua casella nella finestra di conferma)
 * e la configurazione da remoto, che sostituisce le credenziali dell'account.
 *
 * Il focus d'ingresso va su "Esci dall'account", l'unico pulsante sempre
 * presente nella pagina: chi la compone passa il [FocusRequester] ricordato in
 * [SettingsNavigation], altrimenti se ne usa uno locale.
 */
@Composable
internal fun SettingsAccountPage(
    state: SettingsUiState,
    scale: UiScale,
    modifier: Modifier = Modifier,
    onExitClicked: () -> Unit = {},
    onRenewCode: () -> Unit = {},
    entryFocusRequester: FocusRequester? = null,
) {
    val localExitFocus = remember { FocusRequester() }
    val exitFocus = entryFocusRequester ?: localExitFocus
    LaunchedEffect(Unit) {
        withFrameNanos { }
        runCatching { exitFocus.requestFocus() }
    }

    SettingsPage(
        card = SettingsCard.Account,
        scale = scale,
        modifier = modifier,
        pageTag = SETTINGS_PAGE_ACCOUNT_TAG,
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .clip(RoundedCornerShape(scale.dp(14f)))
                .background(FvpColors.Surface)
                .padding(scale.settingsSectionPadding)
                .testTag(SETTINGS_ACCOUNT_SECTION_TAG),
            verticalArrangement = Arrangement.spacedBy(scale.settingsRowSpacing),
        ) {
            Text(
                text = SettingsCard.Account.title,
                color = FvpColors.TextPrimary,
                fontSize = scale.sp(16f),
                fontWeight = FontWeight.SemiBold,
            )
            SettingsRow(label = "Utente", value = state.username, scale = scale)
            SettingsRow(label = "Stato", value = state.status, scale = scale)
            SettingsRow(label = "Scadenza", value = formatExpiry(state.expiresAtEpochSeconds), scale = scale)
            SettingsRow(
                label = "Connessioni in uso (tutti i dispositivi)",
                value = formatConnections(state.activeConnections, state.maxConnections),
                scale = scale,
                rowTestTag = "settings_connections_row",
            )
            SettingsRow(
                label = "Server",
                value = state.serverLabel,
                scale = scale,
                rowTestTag = "settings_server_row",
            )
            // Uscita dall'account: ultimo elemento del riquadro, subito dopo la
            // riga "Server", allineata a sinistra come gli altri pulsanti.
            FvpSecondaryButton(
                text = SETTINGS_EXIT_LABEL,
                onClick = onExitClicked,
                scale = scale,
                modifier = Modifier
                    .padding(top = scale.settingsRowSpacing)
                    .focusRequester(exitFocus)
                    .testTag(SETTINGS_EXIT_TAG),
            )
        }

        val accountReadAt = state.lastAccountReadMillis
        if (accountReadAt != null) {
            Text(
                text = if (state.isReadingAccount) {
                    "Aggiornamento dati account…"
                } else {
                    "Dati account aggiornati alle ${settingsClockText(accountReadAt)}"
                },
                color = FvpColors.TextSecondary,
                fontSize = scale.sp(13f),
                modifier = Modifier.testTag("settings_account_read"),
            )
        } else if (state.isReadingAccount) {
            Text(
                text = "Aggiornamento dati account…",
                color = FvpColors.TextSecondary,
                fontSize = scale.sp(13f),
            )
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
        state.error?.let {
            Text(text = it, color = FvpColors.Error, fontSize = scale.sp(14f))
        }

        // Riquadro compatto: spaziature ridotte, il QR è più piccolo (vedi PairingPanel).
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .clip(RoundedCornerShape(scale.dp(14f)))
                .background(FvpColors.Surface)
                .padding(scale.settingsSectionPadding)
                .testTag(SETTINGS_PAIRING_SECTION_TAG),
            verticalArrangement = Arrangement.spacedBy(scale.dp(6f)),
        ) {
            Text(
                text = "Configura da remoto",
                color = FvpColors.TextPrimary,
                fontSize = scale.sp(16f),
                fontWeight = FontWeight.SemiBold,
            )
            PairingPanel(state = state.pairing, scale = scale, modifier = Modifier.fillMaxWidth())
            if (state.pairing.isExpired) {
                FvpSecondaryButton(text = "Mostra un nuovo codice", onClick = onRenewCode, scale = scale)
            }
        }
    }
}

/**
 * Pagina "Impostazioni › Aspetto": la scelta della dimensione dell'interfaccia,
 * spostata qui dal riquadro Aspetto. La scelta si applica all'istante e il focus
 * resta sul pulsante premuto, così si può cambiare ancora.
 *
 * Il focus d'ingresso va sulla dimensione attiva, con i [FocusRequester]
 * ricordati qui: la pagina non ha bisogno di quello della navigazione, perché
 * il suo primo elemento focalizzabile è sempre un pulsante della riga.
 */
@Composable
internal fun SettingsAppearancePage(
    scale: UiScale,
    modifier: Modifier = Modifier,
    interfaceSize: InterfaceSize = InterfaceSize.COMPACT,
    onInterfaceSizeSelected: (InterfaceSize) -> Unit = {},
) {
    val sizeFocusRequesters = remember { InterfaceSize.entries.associateWith { FocusRequester() } }
    LaunchedEffect(Unit) {
        val initialSize = interfaceSize
        withFrameNanos { }
        runCatching { sizeFocusRequesters.getValue(initialSize).requestFocus() }
    }

    SettingsPage(
        card = SettingsCard.Appearance,
        scale = scale,
        modifier = modifier,
        pageTag = SETTINGS_PAGE_APPEARANCE_TAG,
    ) {
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
                        modifier = Modifier
                            .focusRequester(sizeFocusRequesters.getValue(size))
                            .testTag(interfaceSizeTag(size)),
                    )
                }
            }
        }
    }
}

/**
 * Pagina "Impostazioni › VPN": il riquadro [VpnSettingsSection] invariato, con
 * lo stato del tunnel e i pulsanti Accendi/Spegni, Configura e Rimuovi. La
 * pagina di configurazione con il QR si apre da qui e resta quella di prima.
 *
 * Il focus d'ingresso va su "Configura"/"Cambia configurazione".
 */
@Composable
internal fun SettingsVpnPage(
    vpnState: VpnState,
    scale: UiScale,
    modifier: Modifier = Modifier,
    onVpnToggle: () -> Unit = {},
    onVpnConfigure: () -> Unit = {},
    onVpnRemove: () -> Unit = {},
    configureFocus: FocusRequester? = null,
    entryFocusRequester: FocusRequester? = null,
) {
    val localConfigureFocus = remember { FocusRequester() }
    val focus = configureFocus ?: localConfigureFocus
    // All'apertura della pagina il focus va su "Configura" (il primo elemento
    // focalizzabile), usando il requester ricordato dalla navigazione.
    val openFocus = entryFocusRequester ?: focus
    LaunchedEffect(Unit) {
        withFrameNanos { }
        runCatching { openFocus.requestFocus() }
    }

    SettingsPage(
        card = SettingsCard.Vpn,
        scale = scale,
        modifier = modifier,
        pageTag = SETTINGS_PAGE_VPN_TAG,
    ) {
        VpnSettingsSection(
            state = vpnState,
            scale = scale,
            onToggle = onVpnToggle,
            onConfigure = onVpnConfigure,
            onRemove = onVpnRemove,
            modifier = Modifier.fillMaxWidth(),
            configureFocus = focus,
            entryFocusRequester = entryFocusRequester,
        )
    }
}

/**
 * Pagina "Impostazioni › Catalogo": l'aggiornamento del catalogo che stava
 * nella schermata (finestra di avanzamento compresa, aperta da [SettingsScreen])
 * e la cache delle immagini, con lo spazio occupato e il pulsante che la svuota.
 *
 * La cache svuotabile è quella su disco di Coil (`cacheDir/fvp_images`), quella
 * in memoria dell'`ImageLoader` e i file di `cacheDir/updates` tranne l'APK di un
 * aggiornamento in corso ([CacheCleanup]). Il catalogo salvato in `filesDir` non
 * si tocca.
 *
 * Il focus d'ingresso va su "Aggiorna catalogo".
 *
 * @param cacheBytes spazio occupato dalle cache svuotabili.
 * @param onClearCache svuota le cache e restituisce i byte liberati.
 */
@Composable
internal fun SettingsCatalogPage(
    state: SettingsUiState,
    scale: UiScale,
    modifier: Modifier = Modifier,
    catalogRefreshing: Boolean = false,
    catalogLastUpdateMillis: Long? = null,
    onRefreshCatalog: () -> Unit = {},
    cacheBytes: Long = 0L,
    onClearCache: suspend () -> Long = { 0L },
    entryFocusRequester: FocusRequester? = null,
) {
    val localRefreshFocus = remember { FocusRequester() }
    // Il primo elemento focalizzabile è il pulsante di aggiornamento.
    val refreshFocus = entryFocusRequester ?: localRefreshFocus
    val scope = rememberCoroutineScope()
    var cacheMessage by remember { mutableStateOf<String?>(null) }
    LaunchedEffect(Unit) {
        withFrameNanos { }
        runCatching { refreshFocus.requestFocus() }
    }

    SettingsPage(
        card = SettingsCard.Catalog,
        scale = scale,
        modifier = modifier,
        pageTag = SETTINGS_PAGE_CATALOG_TAG,
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .testTag(SETTINGS_CATALOG_REFRESH_ROW_TAG),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(scale.dp(12f)),
        ) {
            FvpPrimaryButton(
                text = if (catalogRefreshing) "Aggiornamento…" else "Aggiorna catalogo",
                onClick = onRefreshCatalog,
                scale = scale,
                enabled = !catalogRefreshing,
                modifier = Modifier
                    .focusRequester(refreshFocus)
                    .testTag(SETTINGS_CATALOG_REFRESH_TAG),
            )
            val lastUpdate = catalogLastUpdateMillis ?: state.lastUpdateMillis
            Text(
                text = lastUpdate?.let { "Ultimo aggiornamento: ${settingsTimestampText(it)}" }
                    ?: CATALOG_STATUS_NEVER,
                color = FvpColors.TextSecondary,
                fontSize = scale.sp(13f),
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
                modifier = Modifier.weight(1f, fill = false),
            )
        }

        Column(
            modifier = Modifier
                .fillMaxWidth()
                .clip(RoundedCornerShape(scale.dp(14f)))
                .background(FvpColors.Surface)
                .padding(scale.settingsSectionPadding)
                .testTag(SETTINGS_CACHE_SECTION_TAG),
            verticalArrangement = Arrangement.spacedBy(scale.settingsRowSpacing),
        ) {
            Text(
                text = SETTINGS_CACHE_TITLE,
                color = FvpColors.TextPrimary,
                fontSize = scale.sp(16f),
                fontWeight = FontWeight.SemiBold,
            )
            SettingsRow(
                label = SETTINGS_CACHE_SIZE_LABEL,
                value = cacheSizeLabel(cacheBytes),
                scale = scale,
                rowTestTag = SETTINGS_CACHE_SIZE_ROW_TAG,
                valueTestTag = SETTINGS_CACHE_SIZE_TAG,
            )
            FvpSecondaryButton(
                text = SETTINGS_CACHE_CLEAR_LABEL,
                onClick = {
                    scope.launch {
                        cacheMessage = cacheClearedMessage(onClearCache())
                    }
                },
                scale = scale,
                modifier = Modifier.testTag(SETTINGS_CACHE_CLEAR_TAG),
            )
            cacheMessage?.let { message ->
                Text(
                    text = message,
                    color = FvpColors.Green,
                    fontSize = scale.settingsRowText,
                    modifier = Modifier.testTag(SETTINGS_CACHE_RESULT_TAG),
                )
            }
            Text(
                text = SETTINGS_CACHE_NOTE,
                color = FvpColors.TextSecondary,
                fontSize = scale.settingsRowText,
            )
        }
    }
}

/**
 * Pagina "Impostazioni › App": versione installata, stato del controllo
 * aggiornamenti e pulsante "Aggiorna", spostati qui dal riquadro App.
 *
 * La pagina ha sempre un pulsante compatto focalizzabile, anche quando l'app è
 * aggiornata: "Aggiorna" se c'è una versione nuova, altrimenti "Controlla
 * aggiornamenti", che rilancia lo stesso controllo manuale del ViewModel. Senza
 * questo pulsante la pagina aggiornata restava senza elementi focalizzabili: il
 * focus usciva dalla pagina e il tasto Indietro non arrivava più al contenitore
 * delle Impostazioni, che tornava al menu laterale invece che alla griglia.
 *
 * Il focus d'ingresso va sul pulsante; lo stesso pulsante riprende il focus se
 * uno scaricamento annullato riporta lo stato su "Disponibile la versione <y>",
 * e quando il controllo manuale passa da "Controllo aggiornamenti…" a un esito.
 */
@Composable
internal fun SettingsAppPage(
    state: SettingsUiState,
    scale: UiScale,
    modifier: Modifier = Modifier,
    onUpdateClicked: () -> Unit = {},
    onCheckForUpdates: () -> Unit = {},
    entryFocusRequester: FocusRequester? = null,
) {
    val updateButtonFocus = remember { FocusRequester() }
    var wasDownloading by remember { mutableStateOf(false) }
    var wasChecking by remember { mutableStateOf(false) }
    val isDownloadingNow = state.updateStatus is AppUpdateStatus.Downloading
    val isCheckingNow = state.updateStatus is AppUpdateStatus.Checking

    LaunchedEffect(Unit) {
        withFrameNanos { }
        runCatching { updateButtonFocus.requestFocus() }
    }
    LaunchedEffect(isDownloadingNow, state.updateStatus) {
        if (wasDownloading && state.updateStatus is AppUpdateStatus.Available) {
            withFrameNanos { }
            runCatching { updateButtonFocus.requestFocus() }
        }
        wasDownloading = isDownloadingNow
    }
    // Al termine di un controllo manuale il pulsante è cambiato (da "Aggiorna"
    // a "Controlla aggiornamenti" o viceversa): il focus ci torna sopra. Vale
    // solo se il focus era già nella pagina (lo stato ha un elemento
    // focalizzabile), così l'apertura resta gestita dal focus d'ingresso.
    LaunchedEffect(isCheckingNow, state.updateStatus) {
        if (wasChecking && !isCheckingNow) {
            withFrameNanos { }
            runCatching { updateButtonFocus.requestFocus() }
        }
        wasChecking = isCheckingNow
    }

    SettingsPage(
        card = SettingsCard.App,
        scale = scale,
        modifier = modifier,
        pageTag = SETTINGS_PAGE_APP_TAG,
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .clip(RoundedCornerShape(scale.dp(14f)))
                .background(FvpColors.Surface)
                .padding(scale.settingsSectionPadding)
                .testTag("settings_app_section"),
            verticalArrangement = Arrangement.spacedBy(scale.settingsRowSpacing),
        ) {
            Text(
                text = SettingsCard.App.title,
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
                AppUpdateStatus.Checking -> UpdateStatusText(
                    text = UPDATE_STATUS_CHECKING,
                    color = FvpColors.TextSecondary,
                    scale = scale,
                )

                AppUpdateStatus.UpToDate -> UpdateStatusText(
                    text = UPDATE_STATUS_UP_TO_DATE,
                    color = FvpColors.TextSecondary,
                    scale = scale,
                )

                AppUpdateStatus.CheckFailed -> UpdateStatusText(
                    text = UPDATE_STATUS_ERROR,
                    color = FvpColors.Error,
                    scale = scale,
                )

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
                }

                is AppUpdateStatus.Installing -> {
                    Text(
                        text = "Installazione aggiornamento…",
                        color = FvpColors.TextPrimary,
                        fontSize = scale.settingsRowText,
                        modifier = Modifier.testTag(SETTINGS_UPDATE_STATUS_TAG),
                    )
                }
            }

            // Il pulsante c'è sempre: "Aggiorna" con una versione disponibile,
            // altrimenti "Controlla aggiornamenti" (nuovo controllo manuale).
            // Anche a controllo in corso resta, così la pagina ha sempre un
            // elemento focalizzabile e il tasto Indietro resta alle Impostazioni.
            UpdateButton(
                label = updateButtonLabel(state.updateStatus),
                enabled = when (state.updateStatus) {
                    is AppUpdateStatus.Downloading, is AppUpdateStatus.Installing -> false
                    else -> true
                },
                updateButtonFocus = updateButtonFocus,
                // Il pulsante è il primo elemento focalizzabile della pagina:
                // riceve il focus d'ingresso ricordato dalla navigazione.
                entryFocusRequester = entryFocusRequester,
                onClick = {
                    if (state.updateStatus is AppUpdateStatus.Available) {
                        onUpdateClicked()
                    } else {
                        onCheckForUpdates()
                    }
                },
                scale = scale,
            )
        }
    }
}

/**
 * Etichetta del pulsante della pagina App per lo stato [status]: "Aggiorna" con
 * una versione disponibile (e durante scaricamento e installazione, quando il
 * pulsante è disattivato), "Controlla aggiornamenti" in tutti gli altri casi.
 */
internal fun updateButtonLabel(status: AppUpdateStatus): String = when (status) {
    is AppUpdateStatus.Available,
    is AppUpdateStatus.Downloading,
    is AppUpdateStatus.Installing,
    -> SETTINGS_UPDATE_BUTTON_LABEL

    else -> SETTINGS_CHECK_UPDATES_BUTTON_LABEL
}

/** Riga di stato del controllo aggiornamenti. */
@Composable
private fun UpdateStatusText(
    text: String,
    color: Color,
    scale: UiScale,
) {
    Text(
        text = text,
        color = color,
        fontSize = scale.settingsRowText,
        modifier = Modifier.testTag(SETTINGS_UPDATE_STATUS_TAG),
    )
}

/**
 * Unico pulsante della pagina App: "Aggiorna" con una versione disponibile,
 * "Controlla aggiornamenti" altrimenti. È disattivato solo mentre scarica o
 * installa, quando il tasto Indietro appartiene allo scaricamento.
 */
@Composable
private fun UpdateButton(
    label: String,
    enabled: Boolean,
    updateButtonFocus: FocusRequester,
    onClick: () -> Unit,
    scale: UiScale,
    entryFocusRequester: FocusRequester? = null,
) {
    FvpCompactButton(
        text = label,
        onClick = onClick,
        scale = scale,
        enabled = enabled,
        modifier = Modifier
            .padding(top = scale.settingsRowSpacing)
            .focusRequester(updateButtonFocus)
            .then(
                if (entryFocusRequester != null) {
                    Modifier.focusRequester(entryFocusRequester)
                } else {
                    Modifier
                },
            )
            .testTag(SETTINGS_UPDATE_BUTTON_TAG),
    )
}

/** Riga etichetta/valore dei riquadri delle pagine. */
@Composable
internal fun SettingsRow(
    label: String,
    value: String,
    scale: UiScale,
    rowTestTag: String? = null,
    valueTestTag: String? = null,
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .then(if (rowTestTag != null) Modifier.testTag(rowTestTag) else Modifier),
        horizontalArrangement = Arrangement.SpaceBetween,
    ) {
        Text(text = label, color = FvpColors.TextSecondary, fontSize = scale.settingsRowText)
        Text(
            text = value,
            color = FvpColors.TextPrimary,
            fontSize = scale.settingsRowText,
            modifier = Modifier.then(
                if (valueTestTag != null) Modifier.testTag(valueTestTag) else Modifier,
            ),
        )
    }
}

/** Scadenza dell'account con i giorni rimanenti, come nella schermata di prima. */
internal fun formatExpiry(epochSeconds: Long?): String {
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

/** Connessioni in uso dichiarate dal server. */
internal fun formatConnections(active: Int?, max: Int?): String = when {
    active != null && max != null -> "$active di $max"
    max != null -> "massimo $max"
    active != null -> "$active in uso"
    else -> "Non indicato dal server"
}

/** "dd/MM/yyyy HH:mm" di un istante; stringa vuota se non è leggibile. */
internal fun settingsTimestampText(millis: Long): String = runCatching {
    val formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm")
    formatter.format(Instant.ofEpochMilli(millis).atZone(ZoneId.systemDefault()))
}.getOrDefault("")
