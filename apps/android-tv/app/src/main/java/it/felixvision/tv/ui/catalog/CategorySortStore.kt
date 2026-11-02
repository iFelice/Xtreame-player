package it.felixvision.tv.ui.catalog

import android.content.Context

/**
 * Ordinamento scelto **per categoria** di Film e Serie, salvato in
 * SharedPreferences (`fvp_sort`, chiave `<vod|series>_<categoryId>`).
 *
 * La scelta è per categoria, come nell'app Black: cambiare l'ordine di "Azione"
 * non tocca quello di "Commedia". Un valore assente o non valido vale
 * [CatalogSort.DEFAULT], cioè l'ordine per data di aggiunta.
 *
 * La lettura è sincrona apposta: la griglia deve nascere già nell'ordine
 * scelto, senza un primo fotogramma in un ordine diverso. Il dato è una
 * stringa piccola e non sensibile, quindi SharedPreferences basta.
 *
 * Class in un pacchetto TV-only (non `data/` né `core/`, che sono compilati
 * anche dall'app per tablet).
 */
class CategorySortStore(
    context: Context,
    private val preferencesName: String = PREFERENCES_NAME,
) : CategorySortStorage {

    private val preferences = context.applicationContext
        .getSharedPreferences(preferencesName, Context.MODE_PRIVATE)

    /** Ordine salvato per la categoria [categoryId] della sezione [section]. */
    override fun sort(section: String, categoryId: String): CatalogSort =
        CatalogSort.fromStorage(
            runCatching { preferences.getString(key(section, categoryId), null) }.getOrNull()
        )

    /** Salva l'ordine della categoria [categoryId] della sezione [section]. */
    override fun set(section: String, categoryId: String, sort: CatalogSort) {
        preferences.edit().putString(key(section, categoryId), sort.storageKey).apply()
    }

    /** Chiave usata nelle preferenze: `<vod|series>_<categoryId>`. */
    fun key(section: String, categoryId: String): String = "${section}_$categoryId"

    companion object {

        /** Nome delle preferenze dell'ordinamento. */
        const val PREFERENCES_NAME = "fvp_sort"

        /**
         * Sezione dei film: la stessa stringa della chiave nelle preferenze
         * (`vod_<categoryId>`), come `vod_<streamId>` per i preferiti.
         */
        const val SECTION_VOD = "vod"

        /** Sezione delle serie: chiave `series_<categoryId>`. */
        const val SECTION_SERIES = "series"
    }
}

/**
 * Archivio dell'ordinamento scelto: le sezioni leggono e scrivono SOLO tramite
 * questa interfaccia, così la stessa composizione funziona in applicazione
 * ([CategorySortStore], SharedPreferences) e nelle verifiche automatiche e
 * anteprime senza `Context` ([InMemoryCategorySortStore]).
 */
interface CategorySortStorage {

    /** Ordine salvato per la categoria [categoryId] della sezione [section]. */
    fun sort(section: String, categoryId: String): CatalogSort

    /** Salva l'ordine della categoria [categoryId] della sezione [section]. */
    fun set(section: String, categoryId: String, sort: CatalogSort)
}

/**
 * Scelta di ordinamento che vale per la sola sessione: la usano le verifiche
 * automatiche e le anteprime senza `Context`. In applicazione arriva sempre
 * [CategorySortStore].
 */
class InMemoryCategorySortStore : CategorySortStorage {

    private val values = mutableMapOf<String, CatalogSort>()

    override fun sort(section: String, categoryId: String): CatalogSort =
        values[key(section, categoryId)] ?: CatalogSort.DEFAULT

    override fun set(section: String, categoryId: String, sort: CatalogSort) {
        values[key(section, categoryId)] = sort
    }

    private fun key(section: String, categoryId: String): String = "${section}_$categoryId"
}

/**
 * Ordinamento scelto per la categoria [categoryId]: dall'archivio passato dalla
 * sezione o, se manca, il predefinito (data di aggiunta).
 */
internal fun readCategorySort(categoryId: String, section: String, store: CategorySortStorage?): CatalogSort =
    store?.sort(section, categoryId) ?: CatalogSort.DEFAULT

/** Salva l'ordinamento della categoria [categoryId] nell'archivio disponibile. */
internal fun writeCategorySort(categoryId: String, section: String, sort: CatalogSort, store: CategorySortStorage?) {
    store?.set(section, categoryId, sort)
}
