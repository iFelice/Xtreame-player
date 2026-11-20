package it.felixvision.mobile.ui.catalog

import android.content.Context
import it.felixvision.tv.data.catalog.CatalogOrdering
import it.felixvision.tv.data.catalog.SeriesItem
import it.felixvision.tv.data.catalog.VodStream
import java.text.Collator
import java.util.Locale

/** Ordinamento locale, con le stesse chiavi e regole della TV. */
internal enum class CategorySort(val key: String, val label: String) {
    ADDED("added", "Aggiunti di recente"), AZ("az", "A–Z"), YEAR("year", "Anno");
    fun next(): CategorySort = entries[(ordinal + 1) % entries.size]
    companion object {
        fun fromKey(key: String?): CategorySort = entries.firstOrNull { it.key == key?.trim()?.lowercase() } ?: ADDED
    }
}

internal class CategorySortStore(context: Context) {
    private val preferences = context.applicationContext.getSharedPreferences("fvp_sort", Context.MODE_PRIVATE)
    fun get(section: String, category: String) = CategorySort.fromKey(preferences.getString("${section}_$category", null))
    fun set(section: String, category: String, sort: CategorySort) {
        preferences.edit().putString("${section}_$category", sort.key).apply()
    }
}

private fun titleYear(title: String): Int? = Regex("\\((\\d{4})").find(title)?.groupValues?.get(1)?.toIntOrNull()
private fun filmYear(film: VodStream): Int? = film.year?.let { Regex("\\d{4}").find(it)?.value?.toIntOrNull() } ?: titleYear(film.name)
private fun seriesYear(series: SeriesItem): Int? = titleYear(series.name)
    ?: series.releaseDate?.trim()?.let { Regex("^(\\d{4})").find(it)?.value?.toIntOrNull()?.takeIf { year -> year in 1900..2999 } }
private fun date(value: String?): Long = CatalogOrdering.parseDateToMillis(value)
private fun titleComparator(): Collator = Collator.getInstance(Locale.ITALIAN).apply { strength = Collator.PRIMARY }

internal fun sortFilms(items: List<VodStream>, sort: CategorySort): List<VodStream> = when (sort) {
    CategorySort.ADDED -> items.sortedWith(compareByDescending<VodStream> { date(it.added) }.thenByDescending { it.streamId.toLongOrNull() ?: 0L })
    CategorySort.AZ -> {
        val collator = titleComparator()
        items.sortedWith(Comparator<VodStream> { a, b -> collator.compare(a.name, b.name) }.thenByDescending { it.streamId.toLongOrNull() ?: 0L })
    }
    CategorySort.YEAR -> items.sortedWith(compareByDescending<VodStream> { filmYear(it) ?: Int.MIN_VALUE }.thenByDescending { date(it.added) }.thenByDescending { it.streamId.toLongOrNull() ?: 0L })
}

internal fun sortSeries(items: List<SeriesItem>, sort: CategorySort): List<SeriesItem> {
    fun added(item: SeriesItem) = date(item.lastModified?.takeIf { it.isNotBlank() } ?: item.releaseDate)
    return when (sort) {
        CategorySort.ADDED -> items.sortedWith(compareByDescending<SeriesItem> { added(it) }.thenByDescending { it.seriesId.toLongOrNull() ?: 0L })
        CategorySort.AZ -> {
            val collator = titleComparator()
            items.sortedWith(Comparator<SeriesItem> { a, b -> collator.compare(a.name, b.name) }.thenByDescending { it.seriesId.toLongOrNull() ?: 0L })
        }
        CategorySort.YEAR -> items.sortedWith(compareByDescending<SeriesItem> { seriesYear(it) ?: Int.MIN_VALUE }.thenByDescending { added(it) }.thenByDescending { it.seriesId.toLongOrNull() ?: 0L })
    }
}
