package it.felixvision.tv.ui.catalog

import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.SeriesItem
import it.felixvision.tv.data.catalog.VodStream

const val NOVITA_CATEGORY_ID = "__fvp_novita__"
const val NOVITA_CATEGORY_NAME = "Novità"

/** Categoria locale seguita dalle categorie del provider, nello stesso ordine. */
fun withNovitaCategory(categories: List<Category>): List<Category> =
    listOf(Category(categoryId = NOVITA_CATEGORY_ID, categoryName = NOVITA_CATEGORY_NAME)) + categories

/** I contenuti recenti mantengono il proprio categoryId originale. */
fun filmsForCategory(categoryId: String, streams: List<VodStream>, recent: List<VodStream>): List<VodStream> =
    if (categoryId == NOVITA_CATEGORY_ID) recent else streams.filter { it.categoryId == categoryId }

/** I contenuti recenti mantengono il proprio categoryId originale. */
fun seriesForCategory(categoryId: String, series: List<SeriesItem>, recent: List<SeriesItem>): List<SeriesItem> =
    if (categoryId == NOVITA_CATEGORY_ID) recent else series.filter { it.categoryId == categoryId }
