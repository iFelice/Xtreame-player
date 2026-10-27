package it.felixvision.tv.data.channels

import android.content.Context
import androidx.test.core.app.ApplicationProvider
import it.felixvision.tv.core.Clock
import it.felixvision.tv.data.favorites.FavoriteItem
import it.felixvision.tv.data.favorites.FavoritesStore
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
class MyChannelsStoreTest {

    private val server = "http://server.esempio:8080"
    private val username = "demo"
    private val clock = Clock { 1_700_000_000_000L }

    private fun context(): Context = ApplicationProvider.getApplicationContext()

    private fun store() = MyChannelsStore(context = context(), clock = clock)

    private fun favoritesStore() = FavoritesStore(context = context(), clock = clock)

    private fun channel(id: String, name: String = "Canale $id") = MyChannel(
        streamId = id,
        name = name,
        logo = "http://server.esempio:8080/logo/$id.png",
    )

    @Test
    fun `archivio persistente vuoto`() = runTest {
        val store = store()
        assertTrue(store.getChannels(server, username).isEmpty())
        assertEquals(0L, store.revision.value)
    }

    @Test
    fun `aggiunta inserimento spostamento e rimozione sono persistenti`() = runTest {
        val store = store()
        assertEquals(listOf("101"), store.add(server, username, channel("101")).map { it.streamId })
        store.add(server, username, channel("102"))
        store.insertAt(server, username, channel("103"), 1)
        assertEquals(
            listOf("103", "101", "102"),
            store.getChannels(server, username).map { it.streamId },
        )
        assertEquals("Canale 103", store.getChannels(server, username).first().name)
        assertEquals("http://server.esempio:8080/logo/103.png", store.getChannels(server, username).first().logo)

        store.moveTo(server, username, "101", 3)
        assertEquals(listOf("103", "102", "101"), store.getChannels(server, username).map { it.streamId })

        store.moveUp(server, username, "101")
        assertEquals(listOf("103", "101", "102"), store.getChannels(server, username).map { it.streamId })

        store.moveDown(server, username, "101")
        assertEquals(listOf("103", "102", "101"), store.getChannels(server, username).map { it.streamId })

        store.remove(server, username, "103")
        val remaining = store.getChannels(server, username)
        assertEquals(listOf("102", "101"), remaining.map { it.streamId })
        // La numerazione è la posizione: nessun buco.
        assertEquals(1, MyChannels.numberOf(remaining, "102"))
        assertEquals(2, MyChannels.numberOf(remaining, "101"))
        assertTrue(store.revision.value > 0L)
    }

    @Test
    fun `lo stesso canale aggiunto due volte resta una sola volta`() = runTest {
        val store = store()
        store.add(server, username, channel("101"))
        store.add(server, username, channel("102"))
        store.add(server, username, channel("101"))
        val channels = store.getChannels(server, username)
        assertEquals(listOf("102", "101"), channels.map { it.streamId })
        assertEquals(1, channels.count { it.streamId == "101" })
    }

    @Test
    fun `archivi separati per account`() = runTest {
        val store = store()
        store.add(server, username, channel("101"))
        store.add(server, "altro", channel("999"))
        assertEquals(listOf("101"), store.getChannels(server, username).map { it.streamId })
        assertEquals(listOf("999"), store.getChannels(server, "altro").map { it.streamId })
        store.clearForAccount(server, username)
        assertTrue(store.getChannels(server, username).isEmpty())
        assertEquals(listOf("999"), store.getChannels(server, "altro").map { it.streamId })
    }

    @Test
    fun `prima apertura rimuove solo i preferiti live e non li migra`() = runTest {
        val favorites = favoritesStore()
        favorites.addFavorite(server, username, FavoriteItem("live_101", FavoriteItem.LIVE, "Nebbia TV"))
        favorites.addFavorite(server, username, FavoriteItem("live_102", FavoriteItem.LIVE, "Bosco TV"))
        favorites.addFavorite(server, username, FavoriteItem("vod_201", FavoriteItem.VOD, "Il film inventato"))
        favorites.addFavorite(server, username, FavoriteItem("series_301", FavoriteItem.SERIES, "La serie inventata"))
        favorites.addFavorite(server, username, FavoriteItem.liveCategory("001", "Notizie"))
        val store = store()

        assertFalse(store.hasMigratedLiveFavorites(server, username))
        val removed = store.migrateLegacyLiveFavorites(server, username, favorites)

        assertEquals(2, removed)
        val remaining = favorites.getFavorites(server, username).map { it.id }.toSet()
        assertEquals(setOf("vod_201", "series_301", "livecat_001"), remaining)
        // I canali Live non vengono migrati: la lista personale resta vuota.
        assertTrue(store.getChannels(server, username).isEmpty())
        assertTrue(store.hasMigratedLiveFavorites(server, username))
        // L'altro account non viene toccato.
        assertEquals(0, store.migrateLegacyLiveFavorites(server, "altro", favorites))
    }

    @Test
    fun `la pulizia dei preferiti live avviene solo alla prima apertura`() = runTest {
        val favorites = favoritesStore()
        favorites.addFavorite(server, username, FavoriteItem("live_101", FavoriteItem.LIVE, "Nebbia TV"))
        val store = store()
        assertEquals(1, store.migrateLegacyLiveFavorites(server, username, favorites))
        assertTrue(favorites.getFavorites(server, username).isEmpty())

        // Un preferito Live creato dopo la prima apertura resta: la pulizia non si ripete.
        favorites.addFavorite(server, username, FavoriteItem("live_102", FavoriteItem.LIVE, "Bosco TV"))
        assertEquals(0, store.migrateLegacyLiveFavorites(server, username, favorites))
        assertEquals(
            listOf("live_102"),
            favorites.getFavorites(server, username).map { it.id },
        )
    }

    @Test
    fun `prima apertura senza preferiti live non tocca film serie e categorie`() = runTest {
        val favorites = favoritesStore()
        favorites.addFavorite(server, username, FavoriteItem("vod_201", FavoriteItem.VOD, "Il film inventato"))
        favorites.addFavorite(server, username, FavoriteItem.liveCategory("001", "Notizie"))
        val store = store()

        assertEquals(0, store.migrateLegacyLiveFavorites(server, username, favorites))
        assertEquals(
            setOf("vod_201", "livecat_001"),
            favorites.getFavorites(server, username).map { it.id }.toSet(),
        )
        assertTrue(store.hasMigratedLiveFavorites(server, username))
    }
}
