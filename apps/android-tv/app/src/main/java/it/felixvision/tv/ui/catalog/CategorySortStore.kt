package it.felixvision.tv.ui.catalog

import android.content.Context
import it.felixvision.tv.data.sources.SourceIds

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

    /** Ordine dell'account Xtream (S1): la chiave di sempre. */
    override fun sort(section: String, categoryId: String): CatalogSort =
        sort(LEGACY_SOURCE_ID, section, categoryId)

    /** Ordine dell'account Xtream (S1): la chiave di sempre. */
    override fun set(section: String, categoryId: String, sort: CatalogSort) {
        set(LEGACY_SOURCE_ID, section, categoryId, sort)
    }

    /**
     * Ordine salvato per la categoria [categoryId] della sorgente [sourceId].
     *
     * Per S1, alla prima lettura di una chiave partizionata che non c'è ancora,
     * si legge la chiave della versione precedente (`<section>_<categoryId>`) e
     * la si ricopia in quella nuova: la scelta già fatta dall'utente passa a S1
     * senza chiedergli nulla.
     */
    override fun sort(sourceId: String, section: String, categoryId: String): CatalogSort {
        val stored = runCatching { preferences.getString(partitionedKey(sourceId, section, categoryId), null) }.getOrNull()
        if (stored != null) return CatalogSort.fromStorage(stored)
        if (SourceIds.isScoped(categoryId) || !isLegacySource(sourceId)) return CatalogSort.DEFAULT
        val legacy = runCatching { preferences.getString(legacyKey(section, categoryId), null) }.getOrNull()
            ?: return CatalogSort.DEFAULT
        val migrated = CatalogSort.fromStorage(legacy)
        runCatching { preferences.edit().putString(partitionedKey(sourceId, section, categoryId), migrated.storageKey).apply() }
        return migrated
    }

    /** Salva l'ordine della categoria [categoryId] della sorgente [sourceId]. */
    override fun set(sourceId: String, section: String, categoryId: String, sort: CatalogSort) {
        runCatching {
            preferences.edit().putString(partitionedKey(sourceId, section, categoryId), sort.storageKey).apply()
        }
    }

    /**
     * Chiave usata nelle preferenze, partizionata per sorgente:
     * `<section>_<sourceId>_<categoryId>`. Per S1 resta disponibile
     * [legacyKey], la chiave della versione precedente.
     */
    fun partitionedKey(sourceId: String, section: String, categoryId: String): String =
        "${section}_${sourceId}_$categoryId"

    /** Chiave della versione precedente, senza sorgente (`<section>_<categoryId>`). */
    fun legacyKey(section: String, categoryId: String): String = "${section}_$categoryId"

    /** Chiave dell'account Xtream (S1) prima della partizione per sorgente. */
    fun key(section: String, categoryId: String): String = legacyKey(section, categoryId)

    private fun isLegacySource(sourceId: String): Boolean =
        sourceId == LEGACY_SOURCE_ID

    companion object {

        /** Sorgente dell'account Xtream: mantiene le chiavi della versione precedente. */
        const val LEGACY_SOURCE_ID = "s1"

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

    /** Ordine salvato per la categoria [categoryId] della sezione [section] (S1). */
    fun sort(section: String, categoryId: String): CatalogSort

    /** Salva l'ordine della categoria [categoryId] della sezione [section] (S1). */
    fun set(section: String, categoryId: String, sort: CatalogSort)

    /**
     * Ordine della categoria [categoryId] appartenente alla sorgente
     * [sourceId]: ogni sorgente ha il proprio ordinamento. Le implementazioni
     * che non partizionano ricadono sulle due funzioni di sopra.
     */
    fun sort(sourceId: String, section: String, categoryId: String): CatalogSort =
        sort(section, categoryId)

    /** Salva l'ordine della categoria [categoryId] della sorgente [sourceId]. */
    fun set(sourceId: String, section: String, categoryId: String, sort: CatalogSort) =
        set(section, categoryId, sort)
}

/**
 * Scelta di ordinamento che vale per la sola sessione: la usano le verifiche
 * automatiche e le anteprime senza `Context`. In applicazione arriva sempre
 * [CategorySortStore].
 */
class InMemoryCategorySortStore : CategorySortStorage {

    private val values = mutableMapOf<String, CatalogSort>()

    override fun sort(section: String, categoryId: String): CatalogSort =
        sort(LEGACY_SOURCE_ID, section, categoryId)

    override fun set(section: String, categoryId: String, sort: CatalogSort) {
        set(LEGACY_SOURCE_ID, section, categoryId, sort)
    }

    override fun sort(sourceId: String, section: String, categoryId: String): CatalogSort =
        values[key(sourceId, section, categoryId)] ?: CatalogSort.DEFAULT

    override fun set(sourceId: String, section: String, categoryId: String, sort: CatalogSort) {
        values[key(sourceId, section, categoryId)] = sort
    }

    private fun key(sourceId: String, section: String, categoryId: String): String =
        "${sourceId}_${section}_$categoryId"
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
