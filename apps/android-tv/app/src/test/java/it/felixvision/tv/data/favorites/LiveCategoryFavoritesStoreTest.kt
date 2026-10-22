package it.felixvision.tv.data.favorites

import android.content.Context
import androidx.test.core.app.ApplicationProvider
import it.felixvision.tv.core.FvpJson
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
class LiveCategoryFavoritesStoreTest {
    @Test
    fun `toggle categoria nello store persistente non modifica il canale con lo stesso id`() = runTest {
        val context = ApplicationProvider.getApplicationContext<Context>()
        val store = FavoritesStore(context)
        val server = "http://server.esempio:8080"
        val username = "demo"
        val category = FavoriteItem.liveCategory("001", "Notizie")
        val channel = FavoriteItem("live_001", "live", "Canale demo")
        store.clearForAccount(server, username)
        try {
            assertEquals("livecat_001", category.id)
            assertEquals("live_category", category.type)
            assertEquals("001", category.categoryId)
            assertEquals("Notizie", category.title)
            assertNull(category.poster)

            store.addFavorite(server, username, channel)
            assertTrue(store.toggleFavorite(server, username, category))
            assertTrue(store.isFavorite(server, username, category.id))
            val saved = store.getFavorites(server, username)
            assertEquals(2, saved.size)
            assertEquals(category.copy(addedAtMillis = saved.first().addedAtMillis), saved.first())

            assertFalse(store.toggleFavorite(server, username, category))
            assertFalse(store.isFavorite(server, username, category.id))
            assertEquals(listOf(channel.id), store.getFavorites(server, username).map { it.id })
        } finally {
            store.clearForAccount(server, username)
        }
    }

    @Test
    fun `payload precedente senza categorie mantiene tutti i preferiti e i default`() {
        // Stesso serializer usato da getFavorites e persist, senza migrazioni.
        val raw = """{"items":[
            {"id":"live_001","type":"live","title":"Canale demo"},
            {"id":"vod_001","type":"vod","title":"Film demo","categoryId":"001","addedAtMillis":42},
            {"id":"series_001","type":"series","title":"Serie demo","poster":null}
        ]}"""
        val legacy = FvpJson.decodeFromString<FavoritesPayload>(raw)
        assertEquals(listOf("live", "vod", "series"), legacy.items.map { it.type })
        assertNull(legacy.items.first().poster)
        assertNull(legacy.items.first().categoryId)
        assertEquals(0L, legacy.items.first().addedAtMillis)
        assertEquals(42L, legacy.items[1].addedAtMillis)

        val mixed = FavoritesPayload(listOf(FavoriteItem.liveCategory("001", "Notizie")) + legacy.items)
        val encoded = FvpJson.encodeToString(FavoritesPayload.serializer(), mixed)
        val restored = FvpJson.decodeFromString<FavoritesPayload>(encoded)
        assertEquals(mixed, restored)
        assertEquals(legacy.items, restored.items.filterNot { it.type == FavoriteItem.LIVE_CATEGORY })
        assertEquals(emptyList<FavoriteItem>(), FvpJson.decodeFromString<FavoritesPayload>("{}").items)
    }
}
