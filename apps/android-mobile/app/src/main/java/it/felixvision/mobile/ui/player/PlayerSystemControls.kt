package it.felixvision.mobile.ui.player

import android.content.Context
import android.media.AudioManager
import android.provider.Settings
import android.view.Window
import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember

/**
 * Volume multimediale del dispositivo, ridotto all'essenziale che serve ai
 * gesti del player. L'interfaccia esiste per poterla sostituire nei test
 * Compose: la produzione usa [AudioManagerVolumeControl] su STREAM_MUSIC.
 */
interface VolumeControl {
    /** Livello attuale, in passi interi tra 0 e [max]. */
    val current: Int

    /** Livello massimo dello stream (almeno 1). */
    val max: Int

    /** Imposta il livello assoluto, già arrotondato dal chiamante. */
    fun set(level: Int)
}

/**
 * Luminosità della finestra: 0..1. [current] è la luminosità reale con cui la
 * finestra sta mostrando il contenuto, cioè quella di sistema quando la
 * finestra non forza un valore. [restore] riporta la finestra al valore di
 * sistema (luminosità "automatica" del sistema operativo).
 */
interface BrightnessControl {
    val current: Float

    fun set(value: Float)

    fun restore()
}

/** Volume di sistema via [AudioManager.STREAM_MUSIC]. */
class AudioManagerVolumeControl(private val audio: AudioManager) : VolumeControl {

    override val max: Int
        get() = audio.getStreamMaxVolume(AudioManager.STREAM_MUSIC).coerceAtLeast(1)

    override val current: Int
        get() = audio.getStreamVolume(AudioManager.STREAM_MUSIC).coerceIn(0, max)

    override fun set(level: Int) {
        val target = level.coerceIn(0, max)
        if (target == current) return
        audio.setStreamVolume(AudioManager.STREAM_MUSIC, target, 0)
    }
}

/**
 * Luminosità tramite [Window.screenBrightness]. Se la finestra non ha un
 * valore proprio (-1, luminosità gestita dal sistema) [current] legge la
 * luminosità reale dalle impostazioni di sistema, così il gesto parte da
 * quello che l'utente vede e non da un valore inventato.
 */
class WindowBrightnessControl(
    private val window: Window?,
    private val systemBrightness: () -> Float,
) : BrightnessControl {

    override val current: Float
        get() {
            val windowValue = window?.attributes?.screenBrightness ?: SYSTEM_VALUE
            if (windowValue >= 0f) return windowValue.coerceIn(MIN_VALUE, 1f)
            return systemBrightness().coerceIn(MIN_VALUE, 1f)
        }

    override fun set(value: Float) {
        val target = value.coerceIn(MIN_VALUE, 1f)
        val currentWindow = window ?: return
        currentWindow.attributes = currentWindow.attributes.apply { screenBrightness = target }
    }

    override fun restore() {
        val currentWindow = window ?: return
        currentWindow.attributes = currentWindow.attributes.apply {
            screenBrightness = PlayerLayoutRules.restoredBrightness()
        }
    }

    private companion object {
        /** [WindowManager.LayoutParams.BRIGHTNESS_OVERRIDE_NONE]: nessun valore proprio. */
        const val SYSTEM_VALUE = -1f

        /** Sotto questa soglia lo schermo diventerebbe illeggibile. */
        const val MIN_VALUE = .02f
    }
}

/**
 * Luminosità di sistema in frazione 0..1: [Settings.System.SCREEN_BRIGHTNESS]
 * è un intero 0..255. In caso di lettura impossibile resta il valore medio.
 */
fun systemBrightnessFraction(context: Context): Float {
    val level = runCatching {
        Settings.System.getInt(context.contentResolver, Settings.System.SCREEN_BRIGHTNESS)
    }.getOrNull() ?: return DEFAULT_SYSTEM_BRIGHTNESS
    return (level / 255f).coerceIn(0f, 1f)
}

private const val DEFAULT_SYSTEM_BRIGHTNESS = .5f

/** Volume reale del dispositivo, creato una volta per contenitore. */
@Composable
fun rememberVolumeControl(context: Context): VolumeControl = remember(context) {
    val audio = context.applicationContext.getSystemService(Context.AUDIO_SERVICE) as AudioManager
    AudioManagerVolumeControl(audio)
}

/** Luminosità della finestra dell'attività, con lettura del valore di sistema. */
@Composable
fun rememberBrightnessControl(context: Context, window: Window?): BrightnessControl =
    remember(context, window) {
        val appContext = context.applicationContext
        WindowBrightnessControl(window) { systemBrightnessFraction(appContext) }
    }
