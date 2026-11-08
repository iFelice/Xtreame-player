package it.felixvision.tv.player

import android.content.Context
import it.felixvision.tv.data.playback.LiveStreamFormat

/**
 * Preferenze del player TV, salvate in SharedPreferences `fvp_player`.
 *
 * Sta in un pacchetto solo TV: `data/` e `core/` sono compilati anche da
 * `apps/android-mobile`, questo no. Le preferenze sono l'intervallo dello
 * zapping automatico e il formato del flusso Live, entrambe scelte nella
 * pagina Player delle Impostazioni.
 *
 * La lettura è sincrona e piccolissima: nessun dato sensibile, nessuna
 * cifratura (come `InterfaceSizeStore` per `fvp_ui`).
 */
class PlayerPreferences(
    context: Context,
    private val preferencesName: String = "fvp_player",
) {

    private val preferences = context.applicationContext
        .getSharedPreferences(preferencesName, Context.MODE_PRIVATE)

    /**
     * Intervallo dello zapping automatico in secondi: da [ZappingSeconds.MIN] a
     * [ZappingSeconds.MAX], predefinito [ZappingSeconds.DEFAULT]. Con un valore
     * salvato fuori dall'intervallo (o assente) vale il predefinito; i vecchi
     * 5, 10, 15 e 30 restano validi senza migrazione.
     */
    var zappingSeconds: Int
        get() {
            val stored = runCatching {
                preferences.getInt(KEY_ZAPPING_SECONDS, ZappingSeconds.DEFAULT)
            }.getOrNull()
            return ZappingSeconds.normalize(stored)
        }
        set(value) {
            preferences.edit()
                .putInt(KEY_ZAPPING_SECONDS, ZappingSeconds.normalize(value))
                .apply()
        }

    /**
     * Formato del flusso Live: [LiveStreamFormat.AUTO] (decide l'account),
     * [LiveStreamFormat.TS] o [LiveStreamFormat.HLS]. Con un valore salvato
     * sconosciuto (per esempio scritto da una versione diversa) vale il
     * predefinito, così un archivio vecchio non blocca il player.
     */
    var liveStreamFormat: LiveStreamFormat
        get() = LiveStreamFormat.fromStorage(preferences.getString(KEY_LIVE_FORMAT, null))
            ?: LiveStreamFormat.DEFAULT
        set(value) {
            preferences.edit()
                .putString(KEY_LIVE_FORMAT, value.storageKey)
                .apply()
        }

    companion object {
        /** Nome dell'archivio SharedPreferences del player. */
        const val PREFERENCES_NAME = "fvp_player"

        /** Chiave dell'intervallo dello zapping automatico, in secondi. */
        const val KEY_ZAPPING_SECONDS = "zapping_seconds"

        /** Chiave del formato del flusso Live: `auto`, `ts` oppure `m3u8`. */
        const val KEY_LIVE_FORMAT = "live_format"
    }
}
