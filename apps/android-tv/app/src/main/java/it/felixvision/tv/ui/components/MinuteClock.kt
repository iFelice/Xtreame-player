package it.felixvision.tv.ui.components

import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableLongStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.TextUnit
import androidx.compose.ui.unit.sp
import androidx.tv.material3.LocalTextStyle
import androidx.tv.material3.Text
import it.felixvision.tv.R
import it.felixvision.tv.ui.navigation.DrawerClockFormatting
import it.felixvision.tv.ui.theme.FvpColors
import kotlinx.coroutines.delay

/**
 * Font dell'orologio: Sora peso 500, lo stesso del menu laterale. Ora e data
 * dell'app usano questo font, il resto resta col font di sistema.
 */
val ClockFont: FontFamily = FontFamily(Font(R.font.sora_medium, FontWeight.Medium))

/**
 * Ora corrente (`HH:mm`, italiano) che si aggiorna allo scatto del minuto, come
 * l'orologio del menu laterale: stesse cifre a larghezza fissa (`tnum`) così il
 * testo non si sposta al cambio del minuto.
 *
 * [nowMillis] esiste per i test e per chi ha già un orologio condiviso; senza,
 * il componente legge l'orologio di sistema e si aggiorna da solo una volta per
 * minuto, senza polling.
 */
@Composable
fun MinuteClockText(
    scale: UiScale,
    modifier: Modifier = Modifier,
    fontSize: TextUnit? = null,
    color: Color = FvpColors.TextPrimary,
    nowMillis: Long? = null,
) {
    var internalNow by remember { mutableLongStateOf(System.currentTimeMillis()) }
    if (nowMillis == null) {
        LaunchedEffect(Unit) {
            while (true) {
                delay(DrawerClockFormatting.millisUntilNextMinute(internalNow).coerceAtLeast(1L))
                internalNow = System.currentTimeMillis()
            }
        }
    }
    val shown = nowMillis ?: internalNow
    Text(
        text = DrawerClockFormatting.timeText(shown),
        color = color,
        fontSize = fontSize ?: scale.sp(16f),
        fontFamily = ClockFont,
        fontWeight = FontWeight.Medium,
        maxLines = 1,
        softWrap = false,
        style = LocalTextStyle.current.copy(fontFeatureSettings = "tnum"),
        modifier = modifier.testTag(PLAYER_CLOCK_TAG),
    )
}

/** Tag di test dell'ora mostrata sopra il player. */
const val PLAYER_CLOCK_TAG = "player_clock"

/** Tag di test dell'ora dentro il banner del canale (Live). */
const val PLAYER_BANNER_CLOCK_TAG = "player_banner_clock"

/** Ora nella barra comandi del player (film e serie), in basso a destra. */
const val PLAYER_CONTROLS_CLOCK_TAG = "player_controls_clock"
