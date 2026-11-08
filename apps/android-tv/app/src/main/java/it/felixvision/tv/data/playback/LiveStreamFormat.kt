package it.felixvision.tv.data.playback

/**
 * Formato del flusso Live: MPEG-TS (`.ts`, una sola connessione lunga) oppure
 * HLS (`.m3u8`, tanti segmenti brevi).
 *
 * La scelta è dell'utente e vive in
 * [it.felixvision.tv.player.PlayerPreferences]; [AUTO] lascia decidere
 * all'account, cioè la regola di sempre di [StreamUrls.liveExtension] (`.ts`
 * quando è ammesso, `.m3u8` solo se `ts` manca).
 *
 * Il tipo è qui, in `data/` e senza dipendenze Android o Media3, perché serve
 * sia al player TV sia a quello mobile e ai test JVM.
 *
 * Differenza dal pannello di riferimento: lì il formato del Live arriva dalle
 * impostazioni del pannello (`players.stream_type`) e vale per tutti i canali;
 * qui resta una scelta locale, con il ripiego automatico sull'altro formato
 * quando il flusso corrente non parte (vedi [StreamUrls.alternateLiveFormat]).
 */
enum class LiveStreamFormat(val storageKey: String, val label: String) {
    AUTO("auto", "Automatico"),
    TS("ts", "MPEG-TS (.ts)"),
    HLS("m3u8", "HLS (.m3u8)"),
    ;

    companion object {

        /** Formato predefinito: decide l'account, come prima di questa opzione. */
        val DEFAULT: LiveStreamFormat = AUTO

        /**
         * Formato con questa chiave di archiviazione, `null` per `null` o per
         * un valore sconosciuto (per esempio un archivio di una versione
         * diversa): in quel caso vale [DEFAULT].
         */
        fun fromStorage(value: String?): LiveStreamFormat? =
            entries.firstOrNull { it.storageKey == value }
    }
}
