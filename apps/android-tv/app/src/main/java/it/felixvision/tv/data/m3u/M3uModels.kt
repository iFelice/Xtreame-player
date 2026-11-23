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
 */
@Serializable
data class M3uEntry(
    val title: String = "",
    val url: String = "",
    val group: String? = null,
    val tvgName: String? = null,
    val tvgId: String? = null,
    val logo: String? = null,
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
