package it.felixvision.tv.ui.components

import android.util.Log
import android.view.KeyEvent as AndroidKeyEvent
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.composed
import androidx.compose.ui.input.key.onPreviewKeyEvent
import it.felixvision.tv.BuildConfig

/**
 * Handler testable per pressione lunga. Usato dal modifier e dai test JVM.
 * Gestisce 3 modi: FLAG_LONG_PRESS, repeatCount>0, KEY_UP dopo 600ms.
 */
class FvpLongPressHandler(private val onLongPress: () -> Unit) {
    private var downTime: Long? = null
    var triggered: Boolean = false
        private set
    private var consumeNextUp: Boolean = false
    var longPressCount: Int = 0
        private set
    var clickShouldBeConsumed: Boolean = false
        private set

    fun handle(
        keyCode: Int,
        action: Int,
        repeatCount: Int,
        flags: Int,
        eventTime: Long
    ): Boolean {
        // Alternative keys MENU/BUTTON_Y
        if ((keyCode == AndroidKeyEvent.KEYCODE_MENU || keyCode == AndroidKeyEvent.KEYCODE_BUTTON_Y) && action == AndroidKeyEvent.ACTION_DOWN && repeatCount == 0) {
            if (!triggered) {
                triggered = true
                longPressCount++
                onLongPress()
                consumeNextUp = true
            }
            return true
        }
        if ((keyCode == AndroidKeyEvent.KEYCODE_MENU || keyCode == AndroidKeyEvent.KEYCODE_BUTTON_Y) && action == AndroidKeyEvent.ACTION_UP) {
            if (consumeNextUp) {
                consumeNextUp = false
                triggered = false
                downTime = null
                return true
            }
            if (triggered) {
                triggered = false
                return true
            }
        }

        val isRelevant = keyCode == AndroidKeyEvent.KEYCODE_DPAD_CENTER ||
                keyCode == AndroidKeyEvent.KEYCODE_ENTER ||
                keyCode == AndroidKeyEvent.KEYCODE_NUMPAD_ENTER
        if (!isRelevant) return false

        when (action) {
            AndroidKeyEvent.ACTION_DOWN -> {
                if (repeatCount == 0) {
                    downTime = eventTime
                    triggered = false
                    consumeNextUp = false
                }
                val isLongByFlag = (flags and AndroidKeyEvent.FLAG_LONG_PRESS) != 0
                val isLongByRepeat = repeatCount > 0
                if ((isLongByFlag || isLongByRepeat) && !triggered) {
                    triggered = true
                    consumeNextUp = true
                    longPressCount++
                    onLongPress()
                    return true
                }
                return false
            }
            AndroidKeyEvent.ACTION_UP -> {
                if (triggered && consumeNextUp) {
                    triggered = false
                    consumeNextUp = false
                    downTime = null
                    clickShouldBeConsumed = true
                    return true
                }
                val dt = downTime
                if (dt != null) {
                    val elapsed = eventTime - dt
                    if (elapsed >= 600 && !triggered) {
                        triggered = true
                        longPressCount++
                        onLongPress()
                        downTime = null
                        clickShouldBeConsumed = true
                        return true
                    }
                }
                downTime = null
                triggered = false
                consumeNextUp = false
                clickShouldBeConsumed = false
                return false
            }
            else -> return false
        }
    }

    fun reset() {
        downTime = null
        triggered = false
        consumeNextUp = false
        longPressCount = 0
    }
}

fun Modifier.fvpLongPress(onLongPress: () -> Unit): Modifier = composed {
    val handler = remember { FvpLongPressHandler(onLongPress) }
    onPreviewKeyEvent { event ->
        val native = event.nativeKeyEvent as? AndroidKeyEvent
        if (native != null && BuildConfig.DEBUG) {
            Log.d(
                "FVP-KEYS",
                "keyCode=${native.keyCode} action=${native.action} repeatCount=${native.repeatCount} flags=${native.flags} eventTime=${native.eventTime}"
            )
        }
        if (native == null) return@onPreviewKeyEvent false
        handler.handle(
            keyCode = native.keyCode,
            action = native.action,
            repeatCount = native.repeatCount,
            flags = native.flags,
            eventTime = native.eventTime
        )
    }
}
