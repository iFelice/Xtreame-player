package it.felixvision.tv.ui.components

import android.view.KeyEvent as AndroidKeyEvent
import androidx.compose.runtime.remember
import androidx.compose.ui.Modifier
import androidx.compose.ui.composed
import androidx.compose.ui.input.key.onPreviewKeyEvent

/**
 * Blocco del tasto OK ancora premuto all'apertura di una finestra.
 *
 * Le finestre aperte dalla pressione lunga di OK compaiono mentre il tasto è
 * ancora giù: le ripetizioni (KeyDown con repeatCount > 0) e il rilascio
 * (KeyUp) arriverebbero al primo pulsante della finestra, che scatterebbe da
 * solo. Finché dopo l'apertura non arriva un KeyDown di OK "nuovo"
 * (repeatCount == 0), ogni evento OK viene consumato; da quel KeyDown in poi
 * passa tutto. Le frecce, Indietro e ogni altro tasto non vengono mai bloccati.
 *
 * Logica pura, senza Compose: la usa [ignoreHeldOkUntilReleased] e la provano i
 * test JVM.
 */
class HeldOkKeyBlocker {
    /** `true` dopo il primo KeyDown di OK nuovo: da lì in poi non blocca più nulla. */
    var unlocked: Boolean = false
        private set

    /** Eventi OK consumati finora (ripetizioni e rilascio del tasto tenuto premuto). */
    var consumedCount: Int = 0
        private set

    /** @return `true` se l'evento va consumato e non deve arrivare alla finestra. */
    fun handle(keyCode: Int, action: Int, repeatCount: Int): Boolean {
        if (unlocked || !isOkKey(keyCode)) return false
        if (action == AndroidKeyEvent.ACTION_DOWN && repeatCount == 0) {
            // Nuova pressione dopo l'apertura: è un comando voluto, passa.
            unlocked = true
            return false
        }
        // Ripetizione o rilascio del tasto premuto prima dell'apertura.
        consumedCount++
        return true
    }

    companion object {
        /** Tasti di conferma del telecomando: DPAD_CENTER, ENTER, NUMPAD_ENTER. */
        fun isOkKey(keyCode: Int): Boolean =
            keyCode == AndroidKeyEvent.KEYCODE_DPAD_CENTER ||
                keyCode == AndroidKeyEvent.KEYCODE_ENTER ||
                keyCode == AndroidKeyEvent.KEYCODE_NUMPAD_ENTER
    }
}

/**
 * Da applicare alla radice del contenuto di ogni finestra aperta con la
 * pressione lunga di OK: ignora le ripetizioni e il rilascio del tasto ancora
 * premuto all'apertura (vedi [HeldOkKeyBlocker]). Lo stato vive quanto il
 * contenuto della finestra, quindi riparte a ogni apertura.
 */
fun Modifier.ignoreHeldOkUntilReleased(): Modifier = composed {
    val blocker = remember { HeldOkKeyBlocker() }
    onPreviewKeyEvent { event ->
        val native = event.nativeKeyEvent
        blocker.handle(
            keyCode = native.keyCode,
            action = native.action,
            repeatCount = native.repeatCount,
        )
    }
}
