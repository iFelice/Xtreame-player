package it.felixvision.tv.data.playback

import android.content.Context
import androidx.test.core.app.ApplicationProvider
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config

/**
 * Archivio del formato dello schermo per canale Live: una voce per
 * server+utente, come "I miei canali". "Adatta" è il predefinito e non occupa
 * l'archivio, quindi salvarlo equivale a dimenticare il canale.
 */
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
class ChannelVideoFormatStoreTest {

    private val server = "http://server.esempio:8080"
    private val username = "demo"

    private fun context(): Context = ApplicationProvider.getApplicationContext()

    private fun store() = ChannelVideoFormatStore(context = context())

    @Test
    fun `archivio vuoto alla prima apertura`() = runTest {
        assertTrue(store().getAll(server, username).isEmpty())
    }

    @Test
    fun `il formato scelto per un canale si rilegge`() = runTest {
        val store = store()
        store.save(server, username, "101", VideoFormat.ZOOM)
        store.save(server, username, "102", VideoFormat.RATIO_4_3)

        assertEquals(
            mapOf(
                "101" to VideoFormat.ZOOM,
                "102" to VideoFormat.RATIO_4_3,
            ),
            store.getAll(server, username),
        )

        // Cambiare idea su un canale non tocca l'altro.
        store.save(server, username, "101", VideoFormat.RATIO_16_9)
        assertEquals(VideoFormat.RATIO_16_9, store.getAll(server, username)["101"])
        assertEquals(VideoFormat.RATIO_4_3, store.getAll(server, username)["102"])
    }

    @Test
    fun `Adatta non si salva e toglie la voce del canale`() = runTest {
        val store = store()
        // "Adatta" su un archivio vuoto: nessuna voce nasce.
        store.save(server, username, "101", VideoFormat.FIT)
        assertTrue(store.getAll(server, username).isEmpty())

        store.save(server, username, "101", VideoFormat.ZOOM)
        assertEquals(mapOf("101" to VideoFormat.ZOOM), store.getAll(server, username))

        // Tornando ad "Adatta" la voce sparisce.
        store.save(server, username, "101", VideoFormat.FIT)
        assertTrue(store.getAll(server, username).isEmpty())
    }

    @Test
    fun `due utenti non vedono i formati dell altro`() = runTest {
        val store = store()
        store.save(server, username, "101", VideoFormat.ZOOM)
        store.save(server, "altro", "101", VideoFormat.RATIO_16_9)
        store.save(server, "altro", "102", VideoFormat.RATIO_4_3)

        assertEquals(mapOf("101" to VideoFormat.ZOOM), store.getAll(server, username))
        assertEquals(
            mapOf(
                "101" to VideoFormat.RATIO_16_9,
                "102" to VideoFormat.RATIO_4_3,
            ),
            store.getAll(server, "altro"),
        )
    }
}
