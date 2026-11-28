package it.felixvision.tv.data.m3u

import kotlinx.serialization.Serializable

/**
 * Una voce della lista M3U, come esce dal parser e come viene salvata nella
 * copia su disco.
 *
 * @property title testo dopo la virgola di `#EXTINF` (le virgole interne al
 *   titolo restano).
 * @property url indirizzo completo della voce: solo `http://` e `https://`,
 *   quelli relativi vengono scartati.
 * @property group `group-title` dell'`#EXTINF`, `null` quando manca.
 * @property tvgName `tvg-name` dell'`#EXTINF`, usato come titolo quando dopo la
 *   virgola non c'è niente; `null` quando manca.
 * @property tvgId `tvg-id` dell'`#EXTINF`, `null` quando manca.
 * @property logo `tvg-logo` dell'`#EXTINF`, `null` quando manca.
 * @property userAgent `#EXTVLCOPT:http-user-agent` della voce: molti server
 *   rispondono 403 senza l'User-Agent del browser, e le liste lo dichiarano
 *   proprio perché i player che li leggono (VLC, Kodi) lo mandino.
 * @property referer `#EXTVLCOPT:http-referrer` (o `http-referer`) della voce:
 *   il Referer della pagina, richiesto da alcuni server per i film.
 */
@Serializable
data class M3uEntry(
    val title: String = "",
    val url: String = "",
    val group: String? = null,
    val tvgName: String? = null,
    val tvgId: String? = null,
    val logo: String? = null,
    val userAgent: String? = null,
    val referer: String? = null,
) {

    /**
     * Header HTTP che la lista chiede per questa voce: User-Agent e Referer,
     * con i nomi canonici. Vuoto quando la voce non dichiara niente.
     */
    val requestHeaders: Map<String, String>
        get() {
            if (userAgent == null && referer == null) return emptyMap()
            val headers = LinkedHashMap<String, String>(2)
            userAgent?.let { headers["User-Agent"] = it }
            referer?.let { headers["Referer"] = it }
            return headers
        }
}

/**
 * Indirizzo di riproduzione di una voce di lista, con gli header che la lista
 * chiede (`#EXTVLCOPT`). Viaggia insieme all'indirizzo fino al player, che li
 * mette sulla richiesta HTTP: senza, il server risponde 403 e la voce non parte
 * anche se l'indirizzo è giusto.
 */
data class M3uPlaybackTarget(
    val url: String,
    val headers: Map<String, String> = emptyMap(),
)

/**
 * Copia su disco di una lista M3U, una per sorgente.
 *
 * L'indirizzo della lista non compare qui: si scarica dall'indirizzo di
 * compilazione. Le voci contengono gli indirizzi di riproduzione, quindi la
 * copia non va mai mostrata né registrata nei log.
 */
@Serializable
data class M3uPlaylist(
    val sourceId: String = "",
    val fetchedAtMillis: Long = 0L,
    val entries: List<M3uEntry> = emptyList(),
)
