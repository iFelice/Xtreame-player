package it.felixvision.tv.ui.components

import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.tv.material3.Text
import it.felixvision.tv.data.playback.ChannelNumberOverlay
import it.felixvision.tv.ui.theme.FvpColors
import it.felixvision.tv.ui.theme.FvpDimens
import it.felixvision.tv.ui.theme.glassBorder
import it.felixvision.tv.ui.theme.surfaceCorner

/** Tag di test del riquadro numerico in alto a destra. */
const val CHANNEL_NUMBER_OVERLAY_TAG = "channel_number_overlay"

/** Tag di test del testo con le cifre in inserimento. */
const val CHANNEL_NUMBER_DIGITS_TAG = "channel_number_digits"

/** Tag di test del messaggio "Canale N non trovato". */
const val CHANNEL_NUMBER_NOT_FOUND_TAG = "channel_number_not_found"

/**
 * Indicatore in alto a destra per il cambio canale numerico, condiviso tra il
 * player Live e la sezione Live: sfondo [FvpColors.PlayerOverlay], angoli e
 * bordo sottile identici agli altri elementi sopra il video.
 *
 * Non è focalizzabile: non sposta né intercetta il focus.
 */
@Composable
fun ChannelNumberIndicator(
    overlay: ChannelNumberOverlay?,
    scale: UiScale,
    modifier: Modifier = Modifier,
) {
    if (overlay == null) return
    val shape = RoundedCornerShape(scale.surfaceCorner)
    Box(
        modifier = modifier
            .clip(shape)
            .background(FvpColors.PlayerOverlay)
            .border(
                width = scale.glassBorder,
                color = FvpColors.GlassBorder,
                shape = shape,
            )
            .testTag(CHANNEL_NUMBER_OVERLAY_TAG),
        contentAlignment = Alignment.Center,
    ) {
        when (overlay) {
            is ChannelNumberOverlay.Digits -> {
                Text(
                    text = overlay.digits,
                    color = FvpColors.TextPrimary,
                    fontSize = scale.sp(FvpDimens.CHANNEL_NUMBER_DIGITS_TEXT_BASE),
                    fontWeight = FontWeight.Bold,
                    maxLines = 1,
                    softWrap = false,
                    modifier = Modifier
                        .padding(
                            horizontal = scale.dp(20f),
                            vertical = scale.dp(10f),
                        )
                        .testTag(CHANNEL_NUMBER_DIGITS_TAG),
                )
            }
            is ChannelNumberOverlay.NotFound -> {
                Text(
                    text = overlay.message,
                    color = FvpColors.TextPrimary,
                    fontSize = scale.sp(FvpDimens.CHANNEL_NUMBER_MESSAGE_TEXT_BASE),
                    fontWeight = FontWeight.SemiBold,
                    maxLines = 1,
                    softWrap = false,
                    modifier = Modifier
                        .padding(
                            horizontal = scale.dp(18f),
                            vertical = scale.dp(12f),
                        )
                        .testTag(CHANNEL_NUMBER_NOT_FOUND_TAG),
                )
            }
        }
    }
}
