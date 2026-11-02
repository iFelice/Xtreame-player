package it.felixvision.mobile.ui.catalog

import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.catalog.SeriesItem
import it.felixvision.tv.data.catalog.VodStream
import it.felixvision.tv.data.catalog.allCategoryIds
import it.felixvision.tv.data.favorites.FavoriteItem

/**
 * Categoria locale "Novità" preposta alle categorie del provider in Film e
 * Serie, con la stessa logica della TV
 * (`it.felixvision.tv.ui.catalog.NovitaCategory`): i contenuti recenti
 * mantengono il proprio categoryId originale e un contenuto compare in OGNI
 * categoria che il provider gli assegna (`category_id` principale +
 * `category_ids`), non solo nella principale.
 *
 * Le funzioni qui sono **riplicate** (non importate da `it.felixvision.tv.ui`)
 * perché il tablet ha il proprio package UI e i propri test di comportamento.
 */
const val NOVITA_CATEGORY_ID = "__fvp_novita__"

/**
 * Nome della categoria locale nella colonna delle categorie: maiuscolo, con
 * la À accentata. L'etichetta del menu (sidebar) resta invece "Novità".
 */
const val NOVITA_CATEGORY_NAME = "NOVITÀ"

/** Categoria locale seguita dalle categorie del provider, nello stesso ordine. */
fun withNovitaCategory(categories: List<Category>): List<Category> =
    listOf(Category(categoryId = NOVITA_CATEGORY_ID, categoryName = NOVITA_CATEGORY_NAME)) + categories

/**
 * Film della categoria scelta, nell'ordine dell'elenco del provider.
 *
 * Appartenenza, non uguaglianza: un contenuto compare in OGNI categoria che
 * il provider gli assegna. L'ordine dentro la categoria resta quello dell'elenco
 * del provider. La categoria [NOVITA_CATEGORY_ID] mostra i film recenti.
 */
fun filmsForCategory(categoryId: String, streams: List<VodStream>, recent: List<VodStream>): List<VodStream> =
    if (categoryId == NOVITA_CATEGORY_ID) recent else streams.filter { categoryId in it.allCategoryIds }

/** Come [filmsForCategory]: un contenuto compare in tutte le sue categorie. */
fun seriesForCategory(categoryId: String, series: List<SeriesItem>, recent: List<SeriesItem>): List<SeriesItem> =
    if (categoryId == NOVITA_CATEGORY_ID) recent else series.filter { categoryId in it.allCategoryIds }

/**
 * Canali Live della categoria scelta, nell'ordine dell'elenco del provider.
 *
 * Appartenenza, non uguaglianza: un canale compare in OGNI categoria che il
 * provider gli assegna (`category_id` principale + `category_ids`), non solo
 * nella principale. Categoria non scelta = nessun canale.
 */
fun liveStreamsForCategory(categoryId: String?, streams: List<LiveStream>): List<LiveStream> {
    if (categoryId == null) return emptyList()
    return streams.filter { categoryId in it.allCategoryIds }
}

/** Dati di una categoria Live preferita, con il conteggio dei canali. */
data class MobileLiveCategoryFavorite(
    val favorite: FavoriteItem,
    val available: Boolean,
    val channelCount: Int,
) {
    val supportingText: String
        get() = if (available) "$channelCount canali" else "Non più disponibile"
}

/**
 * Categorie Live preferite con il numero di canali visibili.
 *
 * Catalogo attuale, non metadati memorizzati: anche una categoria vuota è
 * disponibile. Il conteggio usa l'appartenenza (`allCategoryIds`), quindi un
 * canale con più categorie conta in ognuna di loro.
 */
fun mobileLiveCategoryFavorites(
    favorites: List<FavoriteItem>,
    categories: List<Category>,
    streams: List<LiveStream>,
): List<MobileLiveCategoryFavorite> {
    val categoryIds = categories.mapTo(mutableSetOf()) { it.categoryId }
    val channelsByCategory = mutableMapOf<String, Int>()
    for (stream in streams) {
        for (categoryId in stream.allCategoryIds) {
            channelsByCategory[categoryId] = (channelsByCategory[categoryId] ?: 0) + 1
        }
    }
    return favorites.filter { it.type == FavoriteItem.LIVE_CATEGORY }.map { favorite ->
        val available = favorite.categoryId != null && favorite.categoryId in categoryIds
        MobileLiveCategoryFavorite(
            favorite = favorite,
            available = available,
            channelCount = if (available) channelsByCategory[favorite.categoryId] ?: 0 else 0,
        )
    }
}
