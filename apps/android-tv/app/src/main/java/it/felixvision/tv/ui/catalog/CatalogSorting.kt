package it.felixvision.tv.ui.catalog

import it.felixvision.tv.data.catalog.CatalogOrdering
import it.felixvision.tv.data.catalog.SeriesItem
import it.felixvision.tv.data.catalog.VodStream
import java.text.Collator
import java.util.Locale

/**
 * Ordinamento delle categorie di Film e Serie.
 *
 * L'app Black ordina per data di aggiunta, dal più recente: è quindi
 * l'ordine predefinito di ogni categoria del provider, mentre il Live resta
 * nell'ordine del server (legato alla numerazione dei canali) e la categoria
 * locale "NOVITÀ" resta quella dei contenuti recenti.
 *
 * Le funzioni di questo file sono pure: nessun accesso a Compose, al contesto
 * o alle preferenze, così si provano sulla JVM senza emulatore.
 */

/**
 * Ordine scelto per una categoria.
 *
 * @property storageKey valore salvato nelle preferenze (`added`, `az`, `year`).
 */
enum class CatalogSort(val storageKey: String) {

    /** Data di aggiunta, dal più recente: ordine predefinito, come l'app Black. */
    ADDED("added"),

    /** Titolo dalla A alla Z, senza badare a maiuscole e accenti. */
    AZ("az"),

    /** Anno dal più recente; i contenuti senza anno finiscono in fondo. */
    YEAR("year");

    /** Ordine che viene dopo questo, a ciclo: OK sul pulsante gira su tre valori. */
    fun next(): CatalogSort = entries[(ordinal + 1) % entries.size]

    companion object {
        /** Ordine predefinito: data di aggiunta, dal più recente. */
        val DEFAULT: CatalogSort = ADDED

        /**
         * Ordine salvato in [storageKey]; un valore assente o sconosciuto vale
         * [DEFAULT]. Confronto indifferente a maiuscole e spazi, così un valore
         * scritto a mano non rompe la lettura.
         */
        fun fromStorage(value: String?): CatalogSort {
            val key = value?.trim()?.lowercase()
            return entries.firstOrNull { it.storageKey == key } ?: DEFAULT
        }
    }
}

/**
 * Testo del pulsante di ordinamento. Il valore è lo stesso in tutta l'app:
 * Film e Serie mostrano le tre etichette qui sotto, a ciclo.
 */
fun CatalogSort.buttonLabel(): String = when (this) {
    CatalogSort.ADDED -> "Ordina: Aggiunti di recente"
    CatalogSort.AZ -> "Ordina: A-Z"
    CatalogSort.YEAR -> "Ordina: Anno"
}

/**
 * Testi dei tre ordini, nell'ordine del ciclo del pulsante: servono ai test e
 * alle verifiche che controllano le etichette senza comporre l'interfaccia.
 */
val CATALOG_SORT_LABELS: List<String> = CatalogSort.entries.map { it.buttonLabel() }

/**
 * Confronto dei titoli per l'ordine A-Z: [Collator] italiano con forza
 * PRIMARY, che ignora maiuscole e accenti ("Èlite", "elite" e "ELITE"
 * risultano uguali, "àmbito" sta con "ambito").
 */
object CatalogTitles {

    private val collator: Collator = Collator.getInstance(Locale.ITALIAN).apply {
        strength = Collator.PRIMARY
    }

    /**
     * Confronto tra due titoli con la sola forza PRIMARY: due titoli che
     * differiscono solo per maiuscole o accenti valgono uguali (0). A parità
     * l'ordine della lista resta stabile, e le funzioni di ordinamento
     * aggiungono comunque l'identificativo decrescente come secondo criterio.
     */
    fun compare(a: String, b: String): Int = collator.compare(a, b)
}

/**
 * Anno di un contenuto: il campo `year` se c'è, altrimenti l'anno tra
 * parentesi nel titolo ("(2025)"). `null` quando non si trova nessun anno.
 */
fun yearOf(year: String?, title: String): Int? {
    year?.trim()?.takeIf { it.isNotEmpty() }?.let { value ->
        Regex("\\d{4}").find(value)?.value?.toIntOrNull()?.let { return it }
    }
    return titleYear(title)
}

/** Anno tra parentesi nel titolo: "(2025)" o "(2019-2021)" valgono il primo anno. */
fun titleYear(title: String): Int? {
    val match = Regex("\\((\\d{4})").find(title) ?: return null
    return match.groupValues[1].toIntOrNull()
}

/**
 * Film di una categoria nell'ordine scelto.
 *
 * - [CatalogSort.ADDED]: campo `added` (secondi o millisecondi, come
 *   [CatalogOrdering.parseDateToMillis]), dal più recente; una data assente
 *   vale 0 e finisce in fondo.
 * - [CatalogSort.AZ]: titolo, con [CatalogTitles].
 * - [CatalogSort.YEAR]: anno dal più recente, poi data di aggiunta; i film
 *   senza anno stanno in fondo.
 *
 * A parità resta lo `streamId` numerico decrescente, così due contenuti con la
 * stessa data non cambiano posto tra un avvio e l'altro.
 */
fun sortedFilms(films: List<VodStream>, sort: CatalogSort): List<VodStream> = when (sort) {
    CatalogSort.ADDED -> films.sortedWith(
        compareByDescending<VodStream> { addedMillisOf(it.added) }
            .thenByDescending { it.streamId.toLongOrNull() ?: 0L }
    )
    CatalogSort.AZ -> films.sortedWith(
        Comparator<VodStream> { a, b -> CatalogTitles.compare(a.name, b.name) }
            .thenByDescending { it.streamId.toLongOrNull() ?: 0L }
    )
    CatalogSort.YEAR -> films.sortedWith(
        Comparator<VodStream> { a, b ->
            compareYears(yearOf(a.year, a.name), yearOf(b.year, b.name))
        }
            .thenByDescending { addedMillisOf(it.added) }
            .thenByDescending { it.streamId.toLongOrNull() ?: 0L }
    )
}

/**
 * Serie di una categoria nell'ordine scelto: come [sortedFilms], ma la data di
 * aggiunta è `lastModified` e, in mancanza, `releaseDate`.
 */
fun sortedSeries(series: List<SeriesItem>, sort: CatalogSort): List<SeriesItem> = when (sort) {
    CatalogSort.ADDED -> series.sortedWith(
        compareByDescending<SeriesItem> { addedMillisOf(addedValueOf(it)) }
            .thenByDescending { it.seriesId.toLongOrNull() ?: 0L }
    )
    CatalogSort.AZ -> series.sortedWith(
        Comparator<SeriesItem> { a, b -> CatalogTitles.compare(a.name, b.name) }
            .thenByDescending { it.seriesId.toLongOrNull() ?: 0L }
    )
    CatalogSort.YEAR -> series.sortedWith(
        Comparator<SeriesItem> { a, b ->
            compareYears(yearOfSeries(a), yearOfSeries(b))
        }
            .thenByDescending { addedMillisOf(addedValueOf(it)) }
            .thenByDescending { it.seriesId.toLongOrNull() ?: 0L }
    )
}

/** Anno di una serie: il campo `year` se c'è, altrimenti il titolo e `releaseDate`. */
fun yearOfSeries(serie: SeriesItem): Int? {
    yearOf(null, serie.name)?.let { return it }
    // `releaseDate` in alcuni pannelli è "2021-03-04", in altri solo "2021".
    return serie.releaseDate?.let { releaseDateYear(it) }
}

/**
 * Anno di una data di uscita: le prime quattro cifre se sono un anno
 * plausibile, altrimenti l'anno tra parentesi del testo; `null` se non c'è.
 */
fun releaseDateYear(value: String): Int? {
    val text = value.trim()
    Regex("^(\\d{4})").find(text)?.groupValues?.get(1)?.toIntOrNull()
        ?.takeIf { it in 1900..2999 }
        ?.let { return it }
    return titleYear(text)
}

/** Data di aggiunta di una serie: `lastModified` e, se manca, `releaseDate`. */
private fun addedValueOf(serie: SeriesItem): String? =
    serie.lastModified?.takeIf { it.isNotBlank() } ?: serie.releaseDate

/**
 * Data in millisecondi, con la stessa lettura del resto del catalogo:
 * secondi o millisecondi, testo numerico o data ISO. Un valore assente vale
 * 0, cioè finisce in fondo all'ordine "dal più recente".
 */
fun addedMillisOf(value: String?): Long = CatalogOrdering.parseDateToMillis(value)

/** Anni dal più recente; `null` (anno sconosciuto) sempre in fondo. */
private fun compareYears(a: Int?, b: Int?): Int = when {
    a == null && b == null -> 0
    a == null -> 1
    b == null -> -1
    else -> b.compareTo(a)
}

/**
 * Contenuti di una categoria di Film nell'ordine scelto: l'appartenenza resta
 * quella di [filmsForCategory], che un contenuto mostra in tutte le sue
 * categorie; la categoria locale NOVITÀ non si ordina (i contenuti recenti
 * arrivano già per data di aggiunta, al massimo 40).
 */
fun sortedFilmsCategory(
    categoryId: String,
    streams: List<VodStream>,
    recent: List<VodStream>,
    sort: CatalogSort,
): List<VodStream> =
    if (categoryId == NOVITA_CATEGORY_ID) filmsForCategory(categoryId, streams, recent)
    else sortedFilms(filmsForCategory(categoryId, streams, recent), sort)

/** Come [sortedFilmsCategory], per le categorie di Serie. */
fun sortedSeriesCategory(
    categoryId: String,
    series: List<SeriesItem>,
    recent: List<SeriesItem>,
    sort: CatalogSort,
): List<SeriesItem> =
    if (categoryId == NOVITA_CATEGORY_ID) seriesForCategory(categoryId, series, recent)
    else sortedSeries(seriesForCategory(categoryId, series, recent), sort)
