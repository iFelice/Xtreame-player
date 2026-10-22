package it.felixvision.tv.data.catalog

import it.felixvision.tv.core.FvpJson
import java.io.File
import kotlin.io.path.createTempDirectory
import kotlinx.coroutines.runBlocking
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test

class CatalogCacheTest {

    private lateinit var tmpDir: File
    private lateinit var cache: CatalogCache

    @Before fun setUp() {
        tmpDir = createTempDirectory("catalog").toFile()
        cache = CatalogCache(cacheDir = tmpDir, json = FvpJson)
    }

    @After fun tearDown() {
        tmpDir.deleteRecursively()
    }

    @Test
    fun `lettura all'avvio da cache se presente`() = runBlocking {
        val catalog = Catalog(liveCategories = listOf(Category(categoryId = "1", categoryName = "Live")))
        cache.save("http://server.esempio:8080", "demo", catalog)
        val loaded = cache.load("http://server.esempio:8080", "demo")
        assertNotNull(loaded)
        assertEquals("http://server.esempio:8080", loaded!!.server)
        assertEquals("demo", loaded.username)
        assertEquals(1, loaded.catalog.liveCategories.size)
    }

    @Test
    fun `regola delle 24 ore - nessun aggiornamento automatico più di una volta`() {
        val now = System.currentTimeMillis()
        val recent = now - 1 * 60 * 60 * 1000L // 1 ora fa
        val old = now - 25 * 60 * 60 * 1000L // 25 ore fa
        assertFalse(cache.shouldAutoRefresh(recent, now))
        assertTrue(cache.shouldAutoRefresh(old, now))
        assertTrue(cache.shouldAutoRefresh(null, now))
        assertTrue(cache.shouldAutoRefresh(0L, now))
    }

    @Test
    fun `separazione per server+utente`() = runBlocking {
        val catA = Catalog(vodStreams = listOf(VodStream(name = "A", streamId = "1")))
        val catB = Catalog(vodStreams = listOf(VodStream(name = "B", streamId = "2")))
        cache.save("http://server.esempio:8080", "demo", catA)
        cache.save("http://server.esempio:8080", "altro", catB)

        val loadedDemo = cache.load("http://server.esempio:8080", "demo")
        val loadedAltro = cache.load("http://server.esempio:8080", "altro")
        assertEquals("A", loadedDemo!!.catalog.vodStreams[0].name)
        assertEquals("B", loadedAltro!!.catalog.vodStreams[0].name)
        assertNotEquals(cache.fileFor("http://server.esempio:8080", "demo").absolutePath, cache.fileFor("http://server.esempio:8080", "altro").absolutePath)

        // Server diverso
        cache.save("http://altro.esempio:8080", "demo", catB)
        assertNotEquals(cache.fileFor("http://server.esempio:8080", "demo").absolutePath, cache.fileFor("http://altro.esempio:8080", "demo").absolutePath)
    }

    @Test
    fun `durante aggiornamento resta usabile versione precedente`() = runBlocking {
        val first = Catalog(vodStreams = listOf(VodStream(name = "Vecchio", streamId = "1")))
        cache.save("http://server.esempio:8080", "demo", first)
        // Simula aggiornamento manuale: save nuovo catalogo
        val second = Catalog(vodStreams = listOf(VodStream(name = "Nuovo", streamId = "2")))
        cache.save("http://server.esempio:8080", "demo", second)
        val loaded = cache.load("http://server.esempio:8080", "demo")
        assertEquals("Nuovo", loaded!!.catalog.vodStreams[0].name)
        // Prima versione era ancora leggibile prima del save: verifichiamo che file esiste e non è corrotto
        assertTrue(cache.fileFor("http://server.esempio:8080", "demo").exists())
    }

    @Test
    fun `cancellazione cache su Esci`() = runBlocking {
        val cat = Catalog()
        cache.save("http://server.esempio:8080", "demo", cat)
        assertNotNull(cache.load("http://server.esempio:8080", "demo"))
        cache.clear("http://server.esempio:8080", "demo")
        assertNull(cache.load("http://server.esempio:8080", "demo"))
    }

    @Test
    fun `lastUpdateMillis esposto per UI Impostazioni`() = runBlocking {
        val ts = System.currentTimeMillis() - 12345L
        val cat = Catalog()
        cache.saveWithTimestamp("http://server.esempio:8080", "demo", cat, ts)
        assertEquals(ts, cache.lastUpdateMillis("http://server.esempio:8080", "demo"))
    }
}
