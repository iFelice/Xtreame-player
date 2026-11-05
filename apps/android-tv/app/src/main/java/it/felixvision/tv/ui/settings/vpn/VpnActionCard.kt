package it.felixvision.tv.ui.settings.vpn

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.onFocusChanged
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.semantics.disabled
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.tv.material3.Border
import androidx.tv.material3.Card
import androidx.tv.material3.CardDefaults
import androidx.tv.material3.Icon
import androidx.tv.material3.Text
import it.felixvision.tv.R
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.settings.SettingsCardDimens
import it.felixvision.tv.ui.theme.FvpColors

/**
 * Aspetto delle azioni VPN: la stessa [Card] tv-material delle otto card della
 * griglia Impostazioni (fondo [FvpColors.Surface] in ogni stato, angoli
 * [SettingsCardDimens.CORNER_BASE], bordo [FvpColors.SurfaceElevated] a riposo
 * e [FvpColors.GreenFocus] con il focus, ingrandimento con il focus), con icona
 * decorativa e testo dell'azione al centro.
 *
 * Cambia solo la grafica rispetto al pulsante compatto: [onClick], il testo, i
 * tag di test e i FocusRequester passati con [modifier], e lo stato [enabled]
 * restano decisi dal chiamante. L'icona non ha descrizione, così l'unico testo
 * della card è [text]. Dimensioni e misure non sono imposte qui: le decide il
 * chiamante con [modifier], come nella griglia delle Impostazioni.
 *
 * Quando [enabled] è falso l'azione non parte, il contenuto si attenua e la
 * card risulta disabilitata anche ai servizi di accessibilità: tv-material non
 * espone `enabled` sulla Card, quindi lo stato è applicato qui, senza toccare
 * la logica di chi chiama.
 */
@Composable
internal fun VpnActionCard(
    text: String,
    onClick: () -> Unit,
    scale: UiScale,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
) {
    val shape = remember(scale) { RoundedCornerShape(scale.dp(SettingsCardDimens.CORNER_BASE)) }
    val restBorder = Border(
        border = BorderStroke(
            width = scale.dp(SettingsCardDimens.REST_BORDER_BASE),
            color = FvpColors.SurfaceElevated,
        ),
        shape = shape,
    )
    val focusBorder = Border(
        border = BorderStroke(
            width = scale.dp(SettingsCardDimens.FOCUS_BORDER_BASE),
            color = FvpColors.GreenFocus,
        ),
        shape = shape,
    )
    var focused by remember { mutableStateOf(false) }
    val iconTint = when {
        !enabled -> FvpColors.TextSecondary
        focused -> FvpColors.GreenFocus
        else -> FvpColors.TextPrimary
    }

    Card(
        onClick = { if (enabled) onClick() },
        modifier = modifier
            .onFocusChanged { focusState -> focused = focusState.isFocused }
            .semantics { if (!enabled) disabled() },
        scale = CardDefaults.scale(focusedScale = SettingsCardDimens.FOCUSED_SCALE),
        shape = CardDefaults.shape(shape = shape),
        colors = CardDefaults.colors(
            containerColor = FvpColors.Surface,
            contentColor = FvpColors.TextPrimary,
            focusedContainerColor = FvpColors.Surface,
            focusedContentColor = FvpColors.TextPrimary,
            pressedContainerColor = FvpColors.Surface,
            pressedContentColor = FvpColors.TextPrimary,
        ),
        border = CardDefaults.border(
            border = restBorder,
            focusedBorder = focusBorder,
            pressedBorder = focusBorder,
        ),
    ) {
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(scale.dp(SettingsCardDimens.CARD_PADDING_BASE)),
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.spacedBy(
                scale.dp(SettingsCardDimens.CARD_TEXT_SPACING_BASE),
                Alignment.CenterVertically,
            ),
        ) {
            Icon(
                painter = painterResource(R.drawable.ic_settings_vpn),
                contentDescription = null,
                tint = iconTint,
                modifier = Modifier.size(scale.dp(SettingsCardDimens.ICON_BASE)),
            )
            Text(
                text = text,
                color = if (enabled) FvpColors.TextPrimary else FvpColors.TextSecondary,
                fontSize = scale.sp(SettingsCardDimens.TITLE_TEXT_BASE),
                fontWeight = FontWeight.SemiBold,
                maxLines = 2,
                overflow = TextOverflow.Ellipsis,
                textAlign = TextAlign.Center,
            )
        }
    }
}
