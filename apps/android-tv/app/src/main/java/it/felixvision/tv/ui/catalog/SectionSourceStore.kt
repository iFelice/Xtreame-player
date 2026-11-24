package it.felixvision.tv.ui.catalog

import android.content.Context

/** Chiavi delle sorgenti scegliibili in una sezione. */
object SectionSourceKeys {

    /** L'account Xtream. */
    const val XTREAM = "xtream"

    /** Tutte le liste M3U abilitate, unite in una sola voce. */
    const val M3U_LISTS = "m3u"
}

/** Sezioni della schermata principale che ricordano una sorgente. */
object SectionKeys {

    /** Film: l'unica sezione con la scelta della sorgente. */
    const val FILM = "film"
}

/**
 * Voce della scelta della sorgente nella sezione Film: chiave stabile (quella
 * salvata) ed etichetta mostrata sul pulsante.
 */
data class FilmSourceOption(
    val key: String,
    val label: String,
)

/** Ricorda l'ultima sorgente usata in ogni sezione. */
interface SectionSourceStorage {

    /** Chiave dell'ultima sorgente della sezione, o null alla prima apertura. */
    fun read(section: String): String?

    /** Salva la sorgente scelta per la sezione. */
    fun write(section: String, sourceKey: String)
}

/**
 * Ultima sorgente usata in ogni sezione, salvata in SharedPreferences
 * (`fvp_section_source`, chiave = nome della sezione).
 *
 * La lettura è sincrona apposta, come per l'ordinamento delle categorie: la
 * sezione deve nascere già sulla sorgente giusta, senza un primo fotogramma
 * sull'altra. È una stringa piccola e non sensibile.
 */
class SectionSourceStore(
    context: Context,
    private val preferencesName: String = PREFERENCES_NAME,
) : SectionSourceStorage {

    private val preferences = context.applicationContext
        .getSharedPreferences(preferencesName, Context.MODE_PRIVATE)

    override fun read(section: String): String? =
        preferences.getString(section, null)?.takeIf { it.isNotBlank() }

    override fun write(section: String, sourceKey: String) {
        preferences.edit().putString(section, sourceKey).apply()
    }

    companion object {
        const val PREFERENCES_NAME = "fvp_section_source"
    }
}

/** Versione in memoria, per i test e le anteprime. */
class InMemorySectionSourceStorage(
    initial: Map<String, String> = emptyMap(),
) : SectionSourceStorage {

    private val values = HashMap<String, String>(initial)

    override fun read(section: String): String? = values[section]

    override fun write(section: String, sourceKey: String) {
        values[section] = sourceKey
    }
}

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
 * Sorgente da mostrare in Film: quella ricordata se ha ancora contenuti,
 * altrimenti la prima disponibile (per esempio quando l'ultima è stata
 * disattivata in Impostazioni). `null` quando nessuna sorgente ha film.
 */
fun resolveFilmSource(
    options: List<FilmSourceOption>,
    remembered: String?,
): FilmSourceOption? = options.firstOrNull { it.key == remembered } ?: options.firstOrNull()
