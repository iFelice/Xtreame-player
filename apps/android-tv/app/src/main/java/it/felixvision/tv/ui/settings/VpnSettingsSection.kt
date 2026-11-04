package it.felixvision.tv.ui.settings

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.tv.material3.Text
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.settings.vpn.VpnActionCard
import it.felixvision.tv.ui.theme.FvpColors
import it.felixvision.tv.ui.theme.settingsRowSpacing
import it.felixvision.tv.ui.theme.settingsRowText
import it.felixvision.tv.ui.theme.settingsSectionPadding
import it.felixvision.tv.vpn.VpnState

/** Riquadro "VPN": testi e tag di test. */
const val SETTINGS_VPN_TITLE = "VPN"
const val SETTINGS_VPN_SECTION_TAG = "settings_vpn_section"
const val SETTINGS_VPN_STATUS_TAG = "settings_vpn_status"
const val SETTINGS_VPN_TOGGLE_TAG = "settings_vpn_toggle"
const val SETTINGS_VPN_CONFIGURE_TAG = "settings_vpn_configure"
const val SETTINGS_VPN_REMOVE_TAG = "settings_vpn_remove"

const val VPN_STATUS_NO_CONFIG = "Nessuna configurazione"
const val VPN_STATUS_OFF = "Spenta"
const val VPN_STATUS_CONNECTING = "Connessione…"
const val VPN_TURN_ON_LABEL = "Accendi"
const val VPN_TURN_OFF_LABEL = "Spegni"
const val VPN_CONFIGURE_LABEL = "Configura"
const val VPN_CHANGE_CONFIG_LABEL = "Cambia configurazione"
const val VPN_REMOVE_LABEL = "Rimuovi"

/** Avviso quando Android non concede il permesso VPN. */
const val VPN_PERMISSION_DENIED_MESSAGE = "Permesso VPN non concesso"

/** Avviso dopo il salvataggio, seguito dal nome del server. */
const val VPN_SAVED_MESSAGE_PREFIX = "Configurazione salvata · "

/** Riga di stato del riquadro per [state]. */
fun vpnStatusLine(state: VpnState): String = when (state) {
    VpnState.NoConfig -> VPN_STATUS_NO_CONFIG
    VpnState.Off -> VPN_STATUS_OFF
    VpnState.Connecting -> VPN_STATUS_CONNECTING
    is VpnState.Connected -> "Connessa · ${state.serverName}"
    is VpnState.NotConnected -> state.reason
}

/**
 * Riquadro "VPN" delle Impostazioni, stesso stile di "Contenuti protetti":
 * riga di stato e azioni. Senza configurazione c'è solo "Configura"; con la
 * configurazione anche "Accendi"/"Spegni" e "Rimuovi".
 *
 * Le tre azioni hanno l'aspetto delle card della griglia Impostazioni (vedi
 * [VpnActionCard]): è una modifica solo grafica, testi, tag, focus e callback
 * restano identici. Il riquadro ha più azioni: come per Aspetto è il focus
 * delle card a portarle in vista, senza rowInView sul riquadro.
 */
@Composable
internal fun VpnSettingsSection(
    state: VpnState,
    scale: UiScale,
    onToggle: () -> Unit,
    onConfigure: () -> Unit,
    onRemove: () -> Unit,
    modifier: Modifier = Modifier,
    /** Focus da riportare su "Configura" al rientro dalla pagina di configurazione. */
    configureFocus: FocusRequester? = null,
    /** Focus d'ingresso della pagina: va sullo stesso "Configura". */
    entryFocusRequester: FocusRequester? = null,
) {
    val hasConfig = state != VpnState.NoConfig
    // L'interruttore è acceso in tutti gli stati con configurazione tranne "Spenta".
    val switchedOn = hasConfig && state != VpnState.Off
    val statusColor = when (state) {
        is VpnState.Connected -> FvpColors.Green
        is VpnState.NotConnected -> FvpColors.Error
        else -> FvpColors.TextSecondary
    }

    Column(
        modifier = modifier
            .fillMaxWidth()
            .clip(RoundedCornerShape(scale.dp(14f)))
            .background(FvpColors.Surface)
            .padding(scale.settingsSectionPadding)
            .testTag(SETTINGS_VPN_SECTION_TAG),
        verticalArrangement = Arrangement.spacedBy(scale.settingsRowSpacing),
    ) {
        Text(
            text = SETTINGS_VPN_TITLE,
            color = FvpColors.TextPrimary,
            fontSize = scale.sp(16f),
            fontWeight = FontWeight.SemiBold,
        )
        Text(
            text = vpnStatusLine(state),
            color = statusColor,
            fontSize = scale.settingsRowText,
            modifier = Modifier.testTag(SETTINGS_VPN_STATUS_TAG),
        )
        val cardHeight = scale.dp(SettingsCardDimens.HEIGHT_BASE)
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(scale.dp(SettingsCardDimens.GRID_SPACING_BASE)),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            if (hasConfig) {
                VpnActionCard(
                    text = if (switchedOn) VPN_TURN_OFF_LABEL else VPN_TURN_ON_LABEL,
                    onClick = onToggle,
                    scale = scale,
                    modifier = Modifier
                        .weight(1f)
                        .height(cardHeight)
                        .testTag(SETTINGS_VPN_TOGGLE_TAG),
                )
            }
            VpnActionCard(
                text = if (hasConfig) VPN_CHANGE_CONFIG_LABEL else VPN_CONFIGURE_LABEL,
                onClick = onConfigure,
                scale = scale,
                modifier = Modifier
                    .weight(1f)
                    .height(cardHeight)
                    .then(
                        if (configureFocus != null) {
                            Modifier.focusRequester(configureFocus)
                        } else {
                            Modifier
                        },
                    )
                    .then(
                        if (entryFocusRequester != null) {
                            Modifier.focusRequester(entryFocusRequester)
                        } else {
                            Modifier
                        },
                    )
                    .testTag(SETTINGS_VPN_CONFIGURE_TAG),
            )
            if (hasConfig) {
                VpnActionCard(
                    text = VPN_REMOVE_LABEL,
                    onClick = onRemove,
                    scale = scale,
                    modifier = Modifier
                        .weight(1f)
                        .height(cardHeight)
                        .testTag(SETTINGS_VPN_REMOVE_TAG),
                )
            }
        }
    }
}
