package it.felixvision.mobile.ui.settings.protection

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.widthIn
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberUpdatedState
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import it.felixvision.mobile.ui.components.FvpErrorText
import it.felixvision.mobile.ui.theme.FvpColors
import it.felixvision.tv.data.protection.PinHasher

/** Tag dell'intero blocco PIN touch. */
const val MOBILE_PIN_ENTRY_TAG = "pin_entry"

/** Tag del pallino [index] (0..3): la cifra non compare mai in chiaro. */
fun mobilePinDotTag(index: Int): String = "pin_dot_$index"

/** Tag del tasto cifra [digit]. */
fun mobilePinKeyTag(digit: Int): String = "pin_key_$digit"

/** Tag del tasto "⌫". */
const val MOBILE_PIN_BACK_TAG = "pin_key_back"

/** Tag del tasto "OK". */
const val MOBILE_PIN_OK_TAG = "pin_key_ok"

/** Tag del messaggio di errore / avviso del tastierino. */
const val MOBILE_PIN_ERROR_TAG = "pin_error"

/** Pallino pieno: cifra inserita. */
internal const val MOBILE_PIN_DOT_FILLED = "●"

/** Pallino vuoto: cifra mancante. */
internal const val MOBILE_PIN_DOT_EMPTY = "○"

/** Lato minimo di un tasto del tastierino (requisito touch: almeno 56dp). */
val MOBILE_PIN_KEY_SIZE = 56.dp

/**
 * Inserimento PIN touch a [PinHasher.PIN_LENGTH] cifre: titolo, pallini al
 * posto delle cifre (il PIN non compare mai in chiaro), eventuale messaggio
 * di errore e tastierino 3×4 con "⌫", 0 e "OK".
 *
 * La lunghezza arriva da [PinHasher.PIN_LENGTH], cioè la stessa del codice
 * condiviso usato dalla TV: nessun numero ripetuto qui. Il valore digitato
 * vive solo in memoria di composizione e non viene mai scritto nei log.
 *
 * Con [enabled] false (tentativi bloccati) i tasti non rispondono.
 *
 * @param onConfirm riceve il PIN completo quando si preme "OK".
 */
@Composable
internal fun PinKeypad(
    title: String,
    onConfirm: (String) -> Unit,
    modifier: Modifier = Modifier,
    errorMessage: String? = null,
    enabled: Boolean = true,
) {
    var digits by remember { mutableStateOf("") }
    val onConfirmLatest by rememberUpdatedState(onConfirm)

    fun append(digit: Int): String =
        if (digits.length >= PinHasher.PIN_LENGTH) digits else digits + digit

    Column(
        modifier = modifier
            .fillMaxWidth()
            // Larghezza raccolta: il tastierino resta al centro anche su un
            // tablet largo.
            .widthIn(max = 360.dp)
            .testTag(MOBILE_PIN_ENTRY_TAG),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.spacedBy(12.dp),
    ) {
        Text(
            text = title,
            color = FvpColors.TextPrimary,
            fontSize = 20.sp,
            fontWeight = FontWeight.Bold,
        )
        Row(
            horizontalArrangement = Arrangement.spacedBy(16.dp),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            for (index in 0 until PinHasher.PIN_LENGTH) {
                val filled = index < digits.length
                Text(
                    text = if (filled) MOBILE_PIN_DOT_FILLED else MOBILE_PIN_DOT_EMPTY,
                    color = if (filled) FvpColors.Green else FvpColors.TextSecondary,
                    fontSize = 22.sp,
                    modifier = Modifier.testTag(mobilePinDotTag(index)),
                )
            }
        }
        // Riga del messaggio sempre presente, anche senza testo: quando
        // l'errore compare o sparisce il tastierino non si sposta di lato sotto
        // le dita (e nei test le cifre restano dove sono).
        FvpErrorText(
            message = errorMessage.orEmpty(),
            testTag = MOBILE_PIN_ERROR_TAG,
            modifier = Modifier.fillMaxWidth(),
        )
        Column(
            verticalArrangement = Arrangement.spacedBy(8.dp),
            horizontalAlignment = Alignment.CenterHorizontally,
        ) {
            for (row in 0 until 3) {
                Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    for (column in 0 until 3) {
                        val digit = row * 3 + column + 1
                        PinDigitKey(
                            text = digit.toString(),
                            enabled = enabled,
                            testTag = mobilePinKeyTag(digit),
                            onClick = { digits = append(digit) },
                        )
                    }
                }
            }
            Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                PinDigitKey(
                    text = "⌫",
                    enabled = enabled && digits.isNotEmpty(),
                    testTag = MOBILE_PIN_BACK_TAG,
                    onClick = { if (digits.isNotEmpty()) digits = digits.dropLast(1) },
                )
                PinDigitKey(
                    text = "0",
                    enabled = enabled,
                    testTag = mobilePinKeyTag(0),
                    onClick = { digits = append(0) },
                )
                PinDigitKey(
                    text = "OK",
                    enabled = enabled && digits.length >= PinHasher.PIN_LENGTH,
                    testTag = MOBILE_PIN_OK_TAG,
                    onClick = {
                        if (enabled && digits.length >= PinHasher.PIN_LENGTH) {
                            val pin = digits
                            digits = ""
                            onConfirmLatest(pin)
                        }
                    },
                )
            }
        }
    }
}

/** Tasto quadrato del tastierino: lato [MOBILE_PIN_KEY_SIZE], comodo per il tocco. */
@Composable
private fun PinDigitKey(
    text: String,
    enabled: Boolean,
    testTag: String,
    onClick: () -> Unit,
) {
    Button(
        onClick = onClick,
        enabled = enabled,
        modifier = Modifier
            .size(MOBILE_PIN_KEY_SIZE)
            .testTag(testTag),
        shape = RoundedCornerShape(14.dp),
        contentPadding = PaddingValues(0.dp),
        colors = ButtonDefaults.buttonColors(
            containerColor = FvpColors.SurfaceElevated,
            contentColor = FvpColors.TextPrimary,
            disabledContainerColor = FvpColors.Surface,
            disabledContentColor = FvpColors.TextSecondary,
        ),
    ) {
        Text(text = text, fontSize = 20.sp, fontWeight = FontWeight.SemiBold)
    }
}
