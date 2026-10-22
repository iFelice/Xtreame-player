package it.felixvision.tv.data.favorites

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class FavoritesStoreTest {

    @Test
    fun `aggiunta e rimozione toggle`() {
        val store = FavoritesStore.InMemory()
        val item = FavoriteItem(id = "live_101", type = "live", title = "Canale 1")
        assertFalse(store.isFav("http://server.esempio:8080", "demo", "live_101"))
        store.toggle("http://server.esempio:8080", "demo", item)
        assertTrue(store.isFav("http://server.esempio:8080", "demo", "live_101"))
        store.toggle("http://server.esempio:8080", "demo", item)
        assertFalse(store.isFav("http://server.esempio:8080", "demo", "live_101"))
    }

    @Test
    fun `separazione per account`() {
        val store = FavoritesStore.InMemory()
        val live = FavoriteItem(id = "live_1", type = "live", title = "Canale")
        val film = FavoriteItem(id = "vod_1", type = "vod", title = "Film")
        store.add("http://server.esempio:8080", "demo", live)
        store.add("http://server.esempio:8080", "altro", film)
        assertEquals(1, store.get("http://server.esempio:8080", "demo").size)
        assertEquals(1, store.get("http://server.esempio:8080", "altro").size)
        assertEquals("live_1", store.get("http://server.esempio:8080", "demo")[0].id)
        assertEquals("vod_1", store.get("http://server.esempio:8080", "altro")[0].id)
    }

    @Test
    fun `cancellazione con Esci rimuove solo quell'account`() {
        val store = FavoritesStore.InMemory()
        store.add("http://server.esempio:8080", "demo", FavoriteItem(id = "live_1", type = "live", title = "A"))
        store.add("http://server.esempio:8080", "demo", FavoriteItem(id = "vod_1", type = "vod", title = "B"))
        store.add("http://altro.esempio:8080", "demo", FavoriteItem(id = "live_2", type = "live", title = "C"))

        store.clear("http://server.esempio:8080", "demo")

        assertEquals(0, store.get("http://server.esempio:8080", "demo").size)
        assertEquals(1, store.get("http://altro.esempio:8080", "demo").size)
    }

    @Test
    fun `tre righe Canali Film Serie - vuote nascoste`() {
        val store = FavoritesStore.InMemory()
        // Solo un film
        store.add("http://server.esempio:8080", "demo", FavoriteItem(id = "vod_201", type = "vod", title = "Film"))
        val all = store.get("http://server.esempio:8080", "demo")
        val live = all.filter { it.type == "live" }
        val vod = all.filter { it.type == "vod" }
        val series = all.filter { it.type == "series" }
        assertTrue(live.isEmpty())
        assertEquals(1, vod.size)
        assertTrue(series.isEmpty())
        // Le vuote sarebbero nascoste in UI, solo vod visibile
    }

    @Test
    fun `spiegazione se non ci sono preferiti`() {
        val store = FavoritesStore.InMemory()
        val empty = store.get("http://server.esempio:8080", "demo")
        assertTrue(empty.isEmpty())
        // UI dovrebbe mostrare spiegazione: "Tieni premuto OK..."
        // Verifichiamo che lo store restituisca lista vuota e non errori
    }
}
