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

/** Tag di test delle pagine delle Impostazioni. */
const val SETTINGS_PAGE_TITLE_TAG = "settings_page_title"
const val SETTINGS_PAGE_ACCOUNT_TAG = "settings_page_account"
const val SETTINGS_PAGE_APPEARANCE_TAG = "settings_page_appearance"
const val SETTINGS_PAGE_VPN_TAG = "settings_page_vpn"
const val SETTINGS_PAGE_CATALOG_TAG = "settings_page_catalog"
const val SETTINGS_PAGE_APP_TAG = "settings_page_app"

/** Riquadro Account dentro la pagina Account. */
const val SETTINGS_ACCOUNT_SECTION_TAG = "settings_account_section"

/** Riga "Aggiorna catalogo" della pagina Catalogo. */
const val SETTINGS_CATALOG_REFRESH_ROW_TAG = "settings_catalog_refresh_row"

/** Tag di test del pulsante di aggiornamento del catalogo. */
const val SETTINGS_CATALOG_REFRESH_TAG = "settings_refresh"

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
 * presente nella pagina.
 */
@Composable
internal fun SettingsAccountPage(
    state: SettingsUiState,
    scale: UiScale,
    modifier: Modifier = Modifier,
    onExitClicked: () -> Unit = {},
    onRenewCode: () -> Unit = {},
) {
    val exitFocus = remember { FocusRequester() }
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
 * Il focus d'ingresso va sulla dimensione attiva.
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
) {
    val localConfigureFocus = remember { FocusRequester() }
    val focus = configureFocus ?: localConfigureFocus
    LaunchedEffect(Unit) {
        withFrameNanos { }
        runCatching { focus.requestFocus() }
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
        )
    }
}

/**
 * Pagina "Impostazioni › Catalogo": l'aggiornamento del catalogo che stava
 * nella schermata, con la finestra di avanzamento aperta da [SettingsScreen].
 *
 * Il focus d'ingresso va su "Aggiorna catalogo".
 */
@Composable
internal fun SettingsCatalogPage(
    state: SettingsUiState,
    scale: UiScale,
    modifier: Modifier = Modifier,
    catalogRefreshing: Boolean = false,
    catalogLastUpdateMillis: Long? = null,
    onRefreshCatalog: () -> Unit = {},
) {
    val refreshFocus = remember { FocusRequester() }
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
    }
}

/**
 * Pagina "Impostazioni › App": versione installata, stato del controllo
 * aggiornamenti e pulsante "Aggiorna", spostati qui dal riquadro App.
 *
 * Il focus d'ingresso va sul pulsante "Aggiorna" quando c'è; lo stesso pulsante
 * riprende il focus se uno scaricamento annullato riporta lo stato su
 * "Disponibile la versione <y>".
 */
@Composable
internal fun SettingsAppPage(
    state: SettingsUiState,
    scale: UiScale,
    modifier: Modifier = Modifier,
    onUpdateClicked: () -> Unit = {},
) {
    val updateButtonFocus = remember { FocusRequester() }
    var wasDownloading by remember { mutableStateOf(false) }
    val isDownloadingNow = state.updateStatus is AppUpdateStatus.Downloading

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
                    UpdateButton(
                        scale = scale,
                        enabled = true,
                        updateButtonFocus = updateButtonFocus,
                        onUpdateClicked = onUpdateClicked,
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
                    UpdateButton(
                        scale = scale,
                        enabled = false,
                        updateButtonFocus = updateButtonFocus,
                        onUpdateClicked = onUpdateClicked,
                    )
                }

                is AppUpdateStatus.Installing -> {
                    Text(
                        text = "Installazione aggiornamento…",
                        color = FvpColors.TextPrimary,
                        fontSize = scale.settingsRowText,
                        modifier = Modifier.testTag(SETTINGS_UPDATE_STATUS_TAG),
                    )
                    UpdateButton(
                        scale = scale,
                        enabled = false,
                        updateButtonFocus = updateButtonFocus,
                        onUpdateClicked = onUpdateClicked,
                    )
                }
            }
        }
    }
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

/** Pulsante "Aggiorna", attivo solo con una versione disponibile. */
@Composable
private fun UpdateButton(
    scale: UiScale,
    enabled: Boolean,
    updateButtonFocus: FocusRequester,
    onUpdateClicked: () -> Unit,
) {
    FvpPrimaryButton(
        text = SETTINGS_UPDATE_BUTTON_LABEL,
        onClick = onUpdateClicked,
        scale = scale,
        enabled = enabled,
        modifier = Modifier
            .padding(top = scale.settingsRowSpacing)
            .focusRequester(updateButtonFocus)
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
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .then(if (rowTestTag != null) Modifier.testTag(rowTestTag) else Modifier),
        horizontalArrangement = Arrangement.SpaceBetween,
    ) {
        Text(text = label, color = FvpColors.TextSecondary, fontSize = scale.settingsRowText)
        Text(text = value, color = FvpColors.TextPrimary, fontSize = scale.settingsRowText)
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
