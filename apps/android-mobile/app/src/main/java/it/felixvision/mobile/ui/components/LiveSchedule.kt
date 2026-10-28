package it.felixvision.mobile.ui.components

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableLongStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import it.felixvision.mobile.ui.theme.FvpColors
import it.felixvision.tv.core.Clock
import it.felixvision.tv.data.epg.ChannelScheduleLoader
import it.felixvision.tv.data.epg.ChannelScheduleRules
import it.felixvision.tv.data.epg.EpgProgram
import kotlinx.coroutines.delay

/**
 * Ora corrente dall'orologio dell'app, aggiornata ogni minuto: la riga
 * "in onda / a seguire" avanza da sola mentre la si guarda. Stessa regola
 * della TV ([ChannelScheduleRules.REFRESH_MILLIS]).
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
 * Guida dei canali visibili a schermo.
 *
 * La richiesta parte 300 ms dopo l'ultima mossa di scorrimento (l'effetto
 * riparte a ogni cambio di [streamIds], quindi il ritardo fa da debounce), usa
 * [ChannelScheduleLoader] per il limite di 4 richieste contemporanee e non
 * chiede nulla per i canali già in cache valida. Stessa logica della TV.
 */
@Composable
fun rememberChannelSchedulePrograms(
    streamIds: List<String>,
    loader: ChannelScheduleLoader?,
    server: String,
    username: String,
    password: String,
): Map<String, List<EpgProgram>> {
    var programs by remember(server, username) {
        mutableStateOf<Map<String, List<EpgProgram>>>(emptyMap())
    }
    LaunchedEffect(streamIds, loader, server, username, password) {
        val scheduleLoader = loader ?: return@LaunchedEffect
        if (streamIds.isEmpty()) return@LaunchedEffect
        delay(ChannelScheduleRules.DEBOUNCE_MILLIS)
        val loaded = scheduleLoader.load(server, username, password, streamIds)
        if (loaded.isNotEmpty()) programs = programs + loaded
    }
    return programs
}

/**
 * Riga secondaria "Ora: Titolo · HH:mm–HH:mm" con barretta di avanzamento
 * sottile e, quando richiesto, "Dopo: Titolo HH:mm".
 *
 * Senza guida non compare nulla: nome e logo del canale restano da soli
 * (nessun messaggio e nessuno spazio vuoto).
 */
@Composable
fun NowOnLine(
    programs: List<EpgProgram>?,
    nowMillis: Long,
    modifier: Modifier = Modifier,
    showNext: Boolean = false,
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
                fontSize = 12.sp,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
                modifier = Modifier.testTag("${testTagPrefix}_now"),
            )
        }
        Box(
            modifier = Modifier
                .padding(top = 2.dp)
                .fillMaxWidth()
                .height(2.dp)
                .clip(RoundedCornerShape(1.dp))
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
                fontSize = 12.sp,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
                modifier = Modifier
                    .padding(top = 2.dp)
                    .testTag("${testTagPrefix}_next"),
            )
        }
    }
}
