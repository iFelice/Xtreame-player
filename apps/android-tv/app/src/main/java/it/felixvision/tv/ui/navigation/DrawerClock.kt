package it.felixvision.tv.ui.navigation

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.mutableLongStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.getValue
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.TextUnit
import androidx.compose.ui.unit.sp
import androidx.tv.material3.LocalTextStyle
import androidx.tv.material3.Text
import it.felixvision.tv.R
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpColors
import java.time.Instant
import java.time.ZoneId
import java.time.format.DateTimeFormatter
import java.util.Locale
import kotlinx.coroutines.delay

/** Tag di test dell'ora nel menu laterale. */
const val DRAWER_CLOCK_TAG = "drawer_clock"

/** Tag di test della data breve, visibile solo a menu aperto. */
const val DRAWER_CLOCK_DATE_TAG = "drawer_clock_date"

/** Millisecondi in un minuto: l'orologio si aggiorna allo scatto del minuto. */
const val MILLIS_PER_MINUTE = 60_000L

/**
 * Font dell'orologio: Sora peso 500 (file statico in `res/font`). Vale solo
 * per ora e data del menu laterale: il resto dell'app resta con il font di
 * sistema.
 */
private val DrawerClockFont: FontFamily =
    FontFamily(Font(R.font.sora_medium, FontWeight.Medium))

/**
 * Aumento dell'ora e della data del menu laterale, in unità di progetto.
 *
 * Si aggiunge **dopo** `UiScale.sp`: la soglia minima di [UiScale.sp] (base 13)
 * annullerebbe un semplice aumento della base, perché per i testi piccoli
 * restituirebbe comunque la dimensione di progetto. Con l'addendo successivo
 * l'ingrandimento si vede anche in "Compatta".
 */
internal const val DRAWER_CLOCK_EXTRA = 3f

/** Dimensione dell'ora del menu laterale (base 13) nella scala [scale]. */
internal fun drawerClockTimeSize(scale: UiScale): TextUnit =
    (scale.sp(13f).value + DRAWER_CLOCK_EXTRA * scale.designFactor).sp

/** Dimensione della data del menu laterale (base 11) nella scala [scale]. */
internal fun drawerClockDateSize(scale: UiScale): TextUnit =
    (scale.sp(11f).value + DRAWER_CLOCK_EXTRA * scale.designFactor).sp

/**
 * Formattazione dell'ora e della data del menu laterale, in italiano.
 *
 * Funzioni pure: l'ora nel formato 24 ore `HH:mm` e, a menu aperto, la data
 * breve `EEE d MMM` (per esempio "dom 25 ott"). Il calcolo dell'attesa usa lo
 * scatto del minuto, quindi l'aggiornamento non richiede un controllo al
 * secondo.
 */
object DrawerClockFormatting {

    private val TIME_FORMATTER: DateTimeFormatter =
        DateTimeFormatter.ofPattern("HH:mm", Locale.ITALY)

    private val DATE_FORMATTER: DateTimeFormatter =
        DateTimeFormatter.ofPattern("EEE d MMM", Locale.ITALY)

    /** Ora locale in formato 24 ore, per esempio "21:07". */
    fun timeText(epochMillis: Long, zone: ZoneId = ZoneId.systemDefault()): String =
        TIME_FORMATTER.format(Instant.ofEpochMilli(epochMillis).atZone(zone))

    /** Data breve italiana, per esempio "dom 25 ott". */
    fun dateText(epochMillis: Long, zone: ZoneId = ZoneId.systemDefault()): String =
        DATE_FORMATTER.format(Instant.ofEpochMilli(epochMillis).atZone(zone))

    /**
     * Millisecondi che mancano al prossimo scatto del minuto: da 1 a 60000.
     * Serve a pianificare un solo aggiornamento per minuto.
     */
    fun millisUntilNextMinute(epochMillis: Long): Long {
        val remainder = Math.floorMod(epochMillis, MILLIS_PER_MINUTE)
        return MILLIS_PER_MINUTE - remainder
    }
}

/**
 * Ora sotto l'ultima voce del menu laterale: `HH:mm` aggiornata allo scatto del
 * minuto e, solo a menu aperto, la data breve sotto l'ora. Testo secondario,
 * non focalizzabile, centrato sotto l'icona quando il menu è chiuso.
 */
@Composable
fun DrawerClock(
    scale: UiScale,
    expanded: Boolean,
    modifier: Modifier = Modifier,
) {
    var nowMillis by remember { mutableLongStateOf(System.currentTimeMillis()) }

    // Un aggiornamento per minuto, allo scatto esatto del minuto: nessun polling.
    LaunchedEffect(Unit) {
        while (true) {
            delay(DrawerClockFormatting.millisUntilNextMinute(nowMillis).coerceAtLeast(1L))
            nowMillis = System.currentTimeMillis()
        }
    }

    // `tnum`: cifre a larghezza fissa, così al cambio dei minuti l'ora non si
    // sposta. Non è un parametro di `Text` in tv-material, quindi si passa
    // dallo stile del testo, derivato da quello corrente (nulla d'altro cambia).
    val clockTextStyle = LocalTextStyle.current.copy(fontFeatureSettings = "tnum")

    Column(
        modifier = modifier.testTag(DRAWER_CLOCK_TAG),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.spacedBy(scale.dp(2f)),
    ) {
        Text(
            text = DrawerClockFormatting.timeText(nowMillis),
            color = FvpColors.TextSecondary,
            fontSize = drawerClockTimeSize(scale),
            fontFamily = DrawerClockFont,
            fontWeight = FontWeight.Medium,
            maxLines = 1,
            softWrap = false,
            style = clockTextStyle,
        )
        if (expanded) {
            Text(
                text = DrawerClockFormatting.dateText(nowMillis),
                color = FvpColors.TextSecondary,
                fontSize = drawerClockDateSize(scale),
                fontFamily = DrawerClockFont,
                fontWeight = FontWeight.Medium,
                maxLines = 1,
                softWrap = false,
                modifier = Modifier.testTag(DRAWER_CLOCK_DATE_TAG),
                style = clockTextStyle,
            )
        }
    }
}
