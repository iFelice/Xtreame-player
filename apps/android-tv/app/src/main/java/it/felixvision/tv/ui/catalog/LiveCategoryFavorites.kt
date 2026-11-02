package it.felixvision.tv.ui.catalog

import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.catalog.allCategoryIds
import it.felixvision.tv.data.favorites.FavoriteItem

internal data class LiveCategoryFavorite(
    val favorite: FavoriteItem,
    val available: Boolean,
    val channelCount: Int,
) {
    val supportingText: String
        get() = if (available) "$channelCount canali" else "Non più disponibile"
}

/** Catalogo attuale, non metadati memorizzati: anche una categoria vuota è disponibile. */
internal fun liveCategoryFavorites(
    favorites: List<FavoriteItem>,
    categories: List<Category>,
    streams: List<LiveStream>,
): List<LiveCategoryFavorite> {
    val categoryIds = categories.mapTo(mutableSetOf()) { it.categoryId }
    // Un canale conta in OGNI categoria che il provider gli assegna
    // (`category_id` + `category_ids`), quindi la mappa categoria → canali si
    // costruisce sull'appartenenza e non sull'uguaglianza.
    val channelsByCategory = mutableMapOf<String, Int>()
    for (stream in streams) {
        for (categoryId in stream.allCategoryIds) {
            channelsByCategory[categoryId] = (channelsByCategory[categoryId] ?: 0) + 1
        }
    }
    return favorites.filter { it.type == FavoriteItem.LIVE_CATEGORY }.map { favorite ->
        val available = favorite.categoryId != null && favorite.categoryId in categoryIds
        LiveCategoryFavorite(
            favorite = favorite,
            available = available,
            channelCount = if (available) channelsByCategory[favorite.categoryId] ?: 0 else 0,
        )
    }
}
