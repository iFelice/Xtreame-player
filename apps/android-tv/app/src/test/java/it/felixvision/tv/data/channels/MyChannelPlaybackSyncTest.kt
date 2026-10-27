package it.felixvision.tv.data.channels

import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.playback.LiveZapping
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertSame
import org.junit.Test

/**
 * Player aperto da "I miei canali": quando la lista personale cambia mentre si
 * guarda, lo zapping e la numerazione seguono il nuovo ordine e il canale in
 * onda resta lo stesso.
 */
class MyChannelPlaybackSyncTest {

    private fun stream(id: String, name: String = "Canale $id") = LiveStream(
        streamId = id,
        name = name,
        streamIcon = "http://server.esempio:8080/logo/$id.png",
    )

    private val nebbia = stream("101", "Nebbia TV")
    private val bosco = stream("102", "Bosco TV")
    private val luna = stream("103", "Luna TV")
    private val notte = stream("104", "Notte TV")

    private val base = listOf(nebbia, bosco, luna, notte)

    @Test
    fun `spostamento mantiene in onda lo stesso canale con il nuovo numero`() {
        // In onda Bosco TV (posizione 2). L'utente lo sposta in testa.
        val sync = MyChannelPlayback.sync(
            previousChannels = base,
            previousIndex = 1,
            updated = listOf(bosco, nebbia, luna, notte),
        )

        assertEquals(listOf("102", "101", "103", "104"), sync.channels.map { it.streamId })
        // Stesso canale in onda, ora numero 1.
        assertEquals("102", sync.onAir?.streamId)
        assertEquals(0, sync.index)
        assertEquals(1, sync.number)
        // Su/Giù ripartono dalla nuova posizione: giù va a Nebbia TV.
        assertEquals(1, LiveZapping.next(sync.index, sync.channels.size))
        assertEquals("101", sync.channels[LiveZapping.next(sync.index, sync.channels.size)].streamId)
    }

    @Test
    fun `spostamento in fondo aggiorna numero e posizione`() {
        // In onda Nebbia TV (posizione 1) spostata in fondo.
        val sync = MyChannelPlayback.sync(
            previousChannels = base,
            previousIndex = 0,
            updated = listOf(bosco, luna, notte, nebbia),
        )

        assertEquals("101", sync.onAir?.streamId)
        assertEquals(3, sync.index)
        assertEquals(4, sync.number)
        // Dall'ultima posizione si torna alla prima (circolare).
        assertEquals(0, LiveZapping.next(sync.index, sync.channels.size))
    }

    @Test
    fun `canale in onda rimosso resta in onda e lo zapping riparte da dove era`() {
        // In onda Bosco TV (posizione 2), poi rimosso dalla lista.
        val sync = MyChannelPlayback.sync(
            previousChannels = base,
            previousIndex = 1,
            updated = listOf(nebbia, luna, notte),
        )

        assertEquals(listOf("101", "103", "104"), sync.channels.map { it.streamId })
        // Bosco TV non è più in lista ma resta in onda, senza numero.
        assertEquals("102", sync.onAir?.streamId)
        assertEquals("Bosco TV", sync.onAir?.name)
        assertNull(sync.number)
        assertEquals(1, sync.index)
        // Giù dalla posizione che occupava: Notte TV; su: Nebbia TV.
        assertEquals(2, LiveZapping.next(sync.index, sync.channels.size))
        assertEquals("104", sync.channels[LiveZapping.next(sync.index, sync.channels.size)].streamId)
        assertEquals(0, LiveZapping.previous(sync.index, sync.channels.size))
        assertEquals("101", sync.channels[LiveZapping.previous(sync.index, sync.channels.size)].streamId)
    }

    @Test
    fun `rimozione dell'ultimo canale in onda limita la posizione alla lista nuova`() {
        // In onda Notte TV (ultima posizione), poi rimosso.
        val sync = MyChannelPlayback.sync(
            previousChannels = base,
            previousIndex = 3,
            updated = listOf(nebbia, bosco, luna),
        )

        assertEquals("104", sync.onAir?.streamId)
        assertNull(sync.number)
        assertEquals(2, sync.index)
        assertEquals(0, LiveZapping.next(sync.index, sync.channels.size))
    }

    @Test
    fun `aggiunta di un canale prima mantiene in onda e sposta la numerazione`() {
        val sync = MyChannelPlayback.sync(
            previousChannels = listOf(nebbia, bosco),
            previousIndex = 0,
            updated = listOf(luna, nebbia, bosco),
        )

        assertEquals(listOf("103", "101", "102"), sync.channels.map { it.streamId })
        assertEquals("101", sync.onAir?.streamId)
        assertEquals(1, sync.index)
        assertEquals(2, sync.number)
    }

    @Test
    fun `lista nuova vuota lascia tutto com'era`() {
        val sync = MyChannelPlayback.sync(
            previousChannels = base,
            previousIndex = 1,
            updated = emptyList(),
        )

        assertSame(base, sync.channels)
        assertEquals(1, sync.index)
        assertEquals("102", sync.onAir?.streamId)
        assertEquals(2, sync.number)
    }

    @Test
    fun `lista invariata non cambia niente`() {
        val sync = MyChannelPlayback.sync(
            previousChannels = base,
            previousIndex = 2,
            updated = base,
        )

        assertSame(base, sync.channels)
        assertEquals(2, sync.index)
        assertEquals("103", sync.onAir?.streamId)
        assertEquals(3, sync.number)
    }
}
