package it.felixvision.tv.data.playback

/**
 * Formato del flusso Live: MPEG-TS (`.ts`, una sola connessione lunga) oppure
 * HLS (`.m3u8`, tanti segmenti brevi).
 *
 * La scelta è dell'utente e vive in
 * [it.felixvision.tv.player.PlayerPreferences]. [AUTO] usa **il formato che il
 * pannello dichiara** (`.ts` quando è ammesso, `.m3u8` altrimenti), come il
 * pannello di riferimento: un `.ts` si apre con una richiesta e parte in 2-3 s,
 * un HLS deve scaricare prima i segmenti interi dell'avvio (vedi
 * [StreamUrls.liveExtension]).
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

        /** Formato predefinito: quello dichiarato dal pannello (di norma TS). */
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
