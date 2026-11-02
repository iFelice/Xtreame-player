package it.felixvision.tv.ui.catalog

import android.content.Context
import androidx.test.core.app.ApplicationProvider
import org.junit.Assert.assertEquals
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config

/**
 * Preferenze dell'ordinamento (`fvp_sort`), con SharedPreferences vere in
 * Robolectric: chiave per categoria, valore non valido che ricade su "Aggiunti
 * di recente", Film e Serie su chiavi diverse.
 */
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
class CategorySortStoreTest {

    private fun context(): Context = ApplicationProvider.getApplicationContext()

    private fun store(name: String = CategorySortStore.PREFERENCES_NAME) =
        CategorySortStore(context = context(), preferencesName = name)

    @Test
    fun `valore assente vale aggiunta`() {
        val store = store()
        assertEquals(CatalogSort.ADDED, store.sort(CategorySortStore.SECTION_VOD, "001"))
        assertEquals(CatalogSort.ADDED, store.sort(CategorySortStore.SECTION_SERIES, "001"))
    }

    @Test
    fun `la scelta si rilegge con una nuova istanza`() {
        store().set(CategorySortStore.SECTION_VOD, "001", CatalogSort.AZ)

        assertEquals(CatalogSort.AZ, store().sort(CategorySortStore.SECTION_VOD, "001"))
        // Un'altra categoria resta sull'ordine predefinito.
        assertEquals(CatalogSort.ADDED, store().sort(CategorySortStore.SECTION_VOD, "002"))
    }

    @Test
    fun `le chiavi sono vod o series seguite dalla categoria`() {
        val store = store()
        assertEquals("vod_001", store.key(CategorySortStore.SECTION_VOD, "001"))
        assertEquals("series_001", store.key(CategorySortStore.SECTION_SERIES, "001"))

        store.set(CategorySortStore.SECTION_SERIES, "001", CatalogSort.YEAR)
        assertEquals(CatalogSort.YEAR, store.sort(CategorySortStore.SECTION_SERIES, "001"))
        assertEquals(CatalogSort.ADDED, store.sort(CategorySortStore.SECTION_VOD, "001"))
    }

    @Test
    fun `un valore non valido in preferenze vale aggiunta`() {
        // Scrittura diretta, come un file di preferenze modificato a mano.
        context()
            .getSharedPreferences(CategorySortStore.PREFERENCES_NAME, Context.MODE_PRIVATE)
            .edit()
            .putString("vod_001", "boh")
            .apply()

        assertEquals(CatalogSort.ADDED, store().sort(CategorySortStore.SECTION_VOD, "001"))
    }

    @Test
    fun `il nome delle preferenze e fvp_sort`() {
        assertEquals("fvp_sort", CategorySortStore.PREFERENCES_NAME)
        assertEquals("vod", CategorySortStore.SECTION_VOD)
        assertEquals("series", CategorySortStore.SECTION_SERIES)
        assertEquals(listOf("added", "az", "year"), CatalogSort.entries.map { it.storageKey })
    }
}
