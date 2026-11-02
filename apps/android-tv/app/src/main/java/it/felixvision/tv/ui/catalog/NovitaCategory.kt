package it.felixvision.tv.ui.catalog

import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.SeriesItem
import it.felixvision.tv.data.catalog.VodStream
import it.felixvision.tv.data.catalog.allCategoryIds

const val NOVITA_CATEGORY_ID = "__fvp_novita__"
const val NOVITA_CATEGORY_NAME = "Novità"

/** Categoria locale seguita dalle categorie del provider, nello stesso ordine. */
fun withNovitaCategory(categories: List<Category>): List<Category> =
    listOf(Category(categoryId = NOVITA_CATEGORY_ID, categoryName = NOVITA_CATEGORY_NAME)) + categories

/**
 * I contenuti recenti mantengono il proprio categoryId originale.
 *
 * Un contenuto compare in OGNI categoria che il provider gli assegna
 * (`category_id` principale + `category_ids`), non solo nella principale:
 * l'appartenenza si verifica con `categoryId in it.allCategoryIds`. L'ordine
 * dentro la categoria resta quello dell'elenco del provider.
 */
fun filmsForCategory(categoryId: String, streams: List<VodStream>, recent: List<VodStream>): List<VodStream> =
    if (categoryId == NOVITA_CATEGORY_ID) recent else streams.filter { categoryId in it.allCategoryIds }

/** Come [filmsForCategory]: un contenuto compare in tutte le sue categorie. */
fun seriesForCategory(categoryId: String, series: List<SeriesItem>, recent: List<SeriesItem>): List<SeriesItem> =
    if (categoryId == NOVITA_CATEGORY_ID) recent else series.filter { categoryId in it.allCategoryIds }
