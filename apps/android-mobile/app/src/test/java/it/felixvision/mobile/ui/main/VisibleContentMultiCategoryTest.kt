package it.felixvision.mobile.ui.main

import it.felixvision.tv.data.catalog.Catalog
import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.VodStream
import it.felixvision.tv.data.protection.HiddenCategory
import it.felixvision.tv.data.protection.ProtectedContentData
import it.felixvision.tv.data.protection.ProtectedKind
import it.felixvision.mobile.ui.catalog.filmsForCategory
import org.junit.Assert.assertEquals
import org.junit.Assert.assertSame
import org.junit.Test

/**
 * Percorso completo della schermata principale per un film in due categorie:
 * sessione bloccata con la categoria secondaria nascosta → il film non compare
 * in nessuna lista; sessione sbloccata → torna visibile in entrambe le
 * categorie. Dati inventati.
 */
class VisibleContentMultiCategoryTest {

    private val filmInDueCategorie = VodStream(
        streamId = "201",
        name = "Film in due categorie",
        categoryId = "001",
        categoryIds = listOf("001", "002"),
    )
    private val filmSoloPrima = VodStream(streamId = "202", name = "Film solo in una", categoryId = "001")
    private val vodStreams = listOf(filmInDueCategorie, filmSoloPrima)

    private val catalog = Catalog(
        vodCategories = listOf(
            Category(categoryId = "001", categoryName = "Azione"),
            Category(categoryId = "002", categoryName = "Ultimi usciti"),
        ),
        vodStreams = vodStreams,
        updatedAtMillis = 1_700_000_000_000L,
    )

    private val data = ProtectedContentData(
        hiddenCategories = listOf(
            HiddenCategory(ProtectedKind.VOD.storageKey, "002", "Ultimi usciti"),
        ),
    )

    private fun visible(unlocked: Boolean) = visibleContent(
        catalog = catalog,
        recentFilms = vodStreams,
        recentSeries = emptyList(),
        favorites = emptyList(),
        continueEntries = emptyList(),
        myChannels = emptyList(),
        data = data,
        unlocked = unlocked,
    )

    @Test
    fun `con la categoria secondaria nascosta il film non compare in nessuna categoria`() {
        val visibleCatalog = visible(unlocked = false).catalog
        requireNotNull(visibleCatalog)

        assertEquals(listOf("001"), visibleCatalog.vodCategories.map { it.categoryId })
        // In "001" resta solo il film che non appartiene alla categoria nascosta.
        assertEquals(
            listOf(filmSoloPrima),
            filmsForCategory("001", visibleCatalog.vodStreams, emptyList()),
        )
        assertEquals(
            emptyList<VodStream>(),
            filmsForCategory("002", visibleCatalog.vodStreams, emptyList()),
        )
    }

    @Test
    fun `con la sessione sbloccata il film torna visibile in tutte le sue categorie`() {
        val visibleCatalog = visible(unlocked = true).catalog
        requireNotNull(visibleCatalog)

        assertSame(catalog, visibleCatalog)
        assertEquals(
            listOf(filmInDueCategorie, filmSoloPrima),
            filmsForCategory("001", visibleCatalog.vodStreams, emptyList()),
        )
        assertEquals(
            listOf(filmInDueCategorie),
            filmsForCategory("002", visibleCatalog.vodStreams, emptyList()),
        )
    }
}
