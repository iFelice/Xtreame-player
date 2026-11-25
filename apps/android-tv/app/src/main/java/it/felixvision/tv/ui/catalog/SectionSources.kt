package it.felixvision.tv.ui.catalog

/** Chiavi delle sorgenti scegliibili in una sezione. */
object SectionSourceKeys {

    /** L'account Xtream. */
    const val XTREAM = "xtream"

    /** Tutte le liste M3U abilitate, unite in una sola voce. */
    const val M3U_LISTS = "m3u"
}

/**
 * Voce della scelta della sorgente nella sezione Film: chiave stabile ed
 * etichetta mostrata nella finestra di scelta.
 */
data class FilmSourceOption(
    val key: String,
    val label: String,
)

/**
 * Voci della scelta della sorgente in Film.
 *
 * Compaiono solo le sorgenti che hanno film: l'account Xtream (se ha film) e le
 * liste M3U unite (se almeno una lista ha film). Serie e Live sono sempre
 * dell'account, quindi non entrano nella scelta.
 */
fun filmSourceOptionsFor(hasXtreamFilms: Boolean, hasM3uFilms: Boolean): List<FilmSourceOption> =
    buildList {
        if (hasXtreamFilms) add(FilmSourceOption(SectionSourceKeys.XTREAM, "Xtream"))
        if (hasM3uFilms) add(FilmSourceOption(SectionSourceKeys.M3U_LISTS, "Liste M3U"))
    }

/**
 * Sorgente da mostrare in Film: quella scelta in questa sessione se ha ancora
 * contenuti, altrimenti la prima disponibile. All'avvio la scelta non c'è, così
 * si parte da Xtream (o dall'unica sorgente che ha film); `null` quando nessuna
 * sorgente ha film.
 */
fun resolveFilmSource(
    options: List<FilmSourceOption>,
    selected: String?,
): FilmSourceOption? = options.firstOrNull { it.key == selected } ?: options.firstOrNull()
