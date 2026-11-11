package it.felixvision.tv.ui.components

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableLongStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.style.TextOverflow
import androidx.tv.material3.Text
import it.felixvision.tv.core.Clock
import it.felixvision.tv.data.epg.ChannelScheduleRules
import it.felixvision.tv.data.epg.EpgProgram
import it.felixvision.tv.ui.theme.FvpColors
import kotlinx.coroutines.delay

/**
 * Ora corrente dall'orologio dell'app, aggiornata ogni minuto: la riga
 * "in onda / a seguire" avanza da sola mentre la si guarda.
 */
@Composable
fun rememberMinuteNow(clock: Clock): Long {
    var now by remember(clock) { mutableLongStateOf(clock.nowMillis()) }
    LaunchedEffect(clock) {
        while (true) {
            delay(ChannelScheduleRules.REFRESH_MILLIS)
            now = clock.nowMillis()
        }
    }
    return now
}

/**
 * Riga secondaria "Ora: Titolo · HH:mm–HH:mm" con barretta di avanzamento
 * sottile e, quando lo spazio lo consente, "Dopo: Titolo HH:mm".
 *
 * Senza guida non compare nulla: nessun messaggio e nessuno spazio vuoto.
 */
@Composable
fun ChannelScheduleInfo(
    programs: List<EpgProgram>?,
    nowMillis: Long,
    scale: UiScale,
    modifier: Modifier = Modifier,
    showNext: Boolean = true,
    textSizeBase: Float = 11f,
    testTagPrefix: String = "channel_schedule",
) {
    val line = remember(programs, nowMillis) {
        ChannelScheduleRules.line(programs.orEmpty(), nowMillis)
    }
    if (!line.isAvailable) return
    val onAirText = ChannelScheduleRules.onAirText(line)
    Column(modifier = modifier.testTag(testTagPrefix)) {
        if (onAirText != null) {
            Text(
                text = onAirText,
                color = FvpColors.TextSecondary,
                fontSize = scale.sp(textSizeBase),
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
                modifier = Modifier.testTag("${testTagPrefix}_now"),
            )
        }
        Box(
            modifier = Modifier
                .padding(top = scale.dp(2f))
                .fillMaxWidth()
                .height(scale.dp(2f))
                .clip(RoundedCornerShape(scale.dp(1f)))
                .background(FvpColors.Green.copy(alpha = 0.25f))
                .testTag("${testTagPrefix}_progress"),
        ) {
            Box(
                modifier = Modifier
                    .fillMaxWidth(line.progress.coerceIn(0f, 1f))
                    .fillMaxHeight()
                    .background(FvpColors.Green),
            )
        }
        val nextText = ChannelScheduleRules.nextText(line)
        if (showNext && nextText != null) {
            Text(
                text = nextText,
                color = FvpColors.TextSecondary,
                fontSize = scale.sp(textSizeBase),
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
                modifier = Modifier
                    .padding(top = scale.dp(2f))
                    .testTag("${testTagPrefix}_next"),
            )
        }
    }
}
