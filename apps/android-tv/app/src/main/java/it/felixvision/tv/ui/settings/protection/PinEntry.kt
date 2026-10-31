package it.felixvision.tv.ui.settings.protection

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberUpdatedState
import androidx.compose.runtime.setValue
import androidx.compose.runtime.withFrameNanos
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.input.key.KeyEventType
import androidx.compose.ui.input.key.onPreviewKeyEvent
import androidx.compose.ui.input.key.type
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.tv.material3.Text
import it.felixvision.tv.data.playback.ChannelNumberInput
import it.felixvision.tv.data.protection.PinHasher
import it.felixvision.tv.ui.components.FvpCompactButton
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpColors
import it.felixvision.tv.ui.theme.settingsRowText

/** Tag dell'intero blocco PIN: intercetta i tasti numerici del telecomando. */
const val PIN_ENTRY_TAG = "pin_entry"

/** Tag del puntino [index] (0..3) che rappresenta una cifra del PIN. */
fun pinDotTag(index: Int): String = "pin_dot_$index"

/** Tag del tasto cifra [digit] del tastierino. */
fun pinKeyTag(digit: Int): String = "pin_key_$digit"

/** Tag del tasto "⌫". */
const val PIN_BACK_TAG = "pin_key_back"

/** Tag del tasto "OK". */
const val PIN_OK_TAG = "pin_key_ok"

/** Tag del messaggio di errore, quando c'è. */
const val PIN_ERROR_TAG = "pin_error"

/** Pallino del PIN già inserito: la cifra non compare mai in chiaro. */
internal const val PIN_DOT_FILLED = "●"

/** Pallino vuoto. */
internal const val PIN_DOT_EMPTY = "○"

/**
 * Inserimento PIN a 4 cifre riusabile (creazione, conferma e verifica):
 * titolo, quattro pallini, eventuale messaggio di errore e tastierino 3×4
 * con i tasti 1–9, "⌫", 0 e "OK".
 *
 * Funziona sia con il tastierino a schermo sia con i tasti numerici del
 * telecomando: l'evento è intercettato sul contenitore e convertito con
 * [ChannelNumberInput.digitFromKeyCode]. "OK" è attivo solo con 4 cifre; con
 * 4 cifre digitate dal telecomando la conferma arriva da sola. Il focus
 * iniziale è sul tasto "1". Le cifre inserite non sono mai mostrate come
 * testo: solo i pallini.
 *
 * Con [enabled] false (tentativi bloccati) tastierino, tasti remoti e OK non
 * rispondono.
 */
@Composable
fun PinEntry(
    title: String,
    scale: UiScale,
    onConfirm: (String) -> Unit,
    modifier: Modifier = Modifier,
    errorMessage: String? = null,
    enabled: Boolean = true,
) {
    var digits by remember { mutableStateOf("") }
    val firstKeyFocus = remember { FocusRequester() }
    val onConfirmLatest by rememberUpdatedState(onConfirm)

    // Focus iniziale sul tasto "1", dopo il primo frame del passo corrente.
    LaunchedEffect(title) {
        withFrameNanos { }
        runCatching { firstKeyFocus.requestFocus() }
    }

    fun append(digit: Int): String =
        if (digits.length >= PinHasher.PIN_LENGTH) digit.toString() else digits + digit

    fun confirm(pin: String) {
        digits = ""
        onConfirmLatest(pin)
    }

    Column(
        modifier = modifier
            .testTag(PIN_ENTRY_TAG)
            // Tasti numerici del telecomando intercettati sul contenitore:
            // valgono come il tastierino a schermo, con conferma automatica
            // alla quarta cifra.
            .onPreviewKeyEvent { event ->
                if (!enabled || event.type != KeyEventType.KeyDown) return@onPreviewKeyEvent false
                val digit = ChannelNumberInput.digitFromKeyCode(event.nativeKeyEvent.keyCode)
                    ?: return@onPreviewKeyEvent false
                val next = append(digit)
                if (next.length >= PinHasher.PIN_LENGTH) confirm(next) else digits = next
                true
            },
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.spacedBy(scale.dp(10f)),
    ) {
        Text(
            text = title,
            color = FvpColors.TextPrimary,
            fontSize = scale.sp(18f),
            fontWeight = FontWeight.Bold,
        )
        Row(
            horizontalArrangement = Arrangement.spacedBy(scale.dp(16f)),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            for (index in 0 until PinHasher.PIN_LENGTH) {
                val filled = index < digits.length
                Text(
                    text = if (filled) PIN_DOT_FILLED else PIN_DOT_EMPTY,
                    color = if (filled) FvpColors.Green else FvpColors.TextSecondary,
                    fontSize = scale.sp(16f),
                    modifier = Modifier.testTag(pinDotTag(index)),
                )
            }
        }
        if (errorMessage != null) {
            Text(
                text = errorMessage,
                color = FvpColors.Error,
                fontSize = scale.settingsRowText,
                modifier = Modifier.testTag(PIN_ERROR_TAG),
            )
        }
        Column(
            modifier = Modifier.fillMaxWidth(),
            verticalArrangement = Arrangement.spacedBy(scale.dp(8f)),
            horizontalAlignment = Alignment.CenterHorizontally,
        ) {
            for (row in 0 until 3) {
                Row(
                    horizontalArrangement = Arrangement.spacedBy(scale.dp(8f)),
                    verticalAlignment = Alignment.CenterVertically,
                ) {
                    for (column in 0 until 3) {
                        PinDigitButton(
                            digit = row * 3 + column + 1,
                            scale = scale,
                            enabled = enabled,
                            firstKey = row == 0 && column == 0,
                            firstKeyFocus = firstKeyFocus,
                            onDigit = { digit -> digits = append(digit) },
                        )
                    }
                }
            }
            Row(
                horizontalArrangement = Arrangement.spacedBy(scale.dp(8f)),
                verticalAlignment = Alignment.CenterVertically,
            ) {
                FvpCompactButton(
                    text = "⌫",
                    onClick = { if (digits.isNotEmpty()) digits = digits.dropLast(1) },
                    scale = scale,
                    enabled = enabled && digits.isNotEmpty(),
                    modifier = Modifier.testTag(PIN_BACK_TAG),
                )
                PinDigitButton(
                    digit = 0,
                    scale = scale,
                    enabled = enabled,
                    firstKey = false,
                    firstKeyFocus = firstKeyFocus,
                    onDigit = { digit -> digits = append(digit) },
                )
                FvpCompactButton(
                    text = "OK",
                    onClick = {
                        if (enabled && digits.length >= PinHasher.PIN_LENGTH) confirm(digits)
                    },
                    scale = scale,
                    enabled = enabled && digits.length >= PinHasher.PIN_LENGTH,
                    modifier = Modifier.testTag(PIN_OK_TAG),
                )
            }
        }
    }
}

/** Un tasto cifra del tastierino: tag [pinKeyTag], focus iniziale su "1" quando [firstKey]. */
@Composable
private fun PinDigitButton(
    digit: Int,
    scale: UiScale,
    enabled: Boolean,
    firstKey: Boolean,
    firstKeyFocus: FocusRequester,
    onDigit: (Int) -> Unit,
) {
    FvpCompactButton(
        text = digit.toString(),
        onClick = { onDigit(digit) },
        scale = scale,
        enabled = enabled,
        modifier = Modifier
            .then(if (firstKey) Modifier.focusRequester(firstKeyFocus) else Modifier)
            .testTag(pinKeyTag(digit)),
    )
}
