package it.felixvision.tv.data.channels

import it.felixvision.tv.data.catalog.LiveStream
import it.felixvision.tv.data.playback.LiveZapping
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertSame
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Player aperto da "I miei canali": quando la lista personale cambia mentre si
 * guarda, lo zapping e la numerazione seguono il nuovo ordine e il canale in
 * onda resta lo stesso.
 *
 * Riferimento di [MyChannelPlayback.sync] è sempre il canale in onda, anche
 * quando è già stato tolto dalla lista: in quel caso la sua vecchia posizione
 * contiene un altro canale.
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

    private fun ids(channels: List<LiveStream>) = channels.map { it.streamId }

    @Test
    fun `spostamento mantiene in onda lo stesso canale con il nuovo numero`() {
        // In onda Bosco TV (posizione 2). L'utente lo sposta in testa.
        val sync = MyChannelPlayback.sync(
            onAir = bosco,
            positionHint = 1,
            updated = listOf(bosco, nebbia, luna, notte),
        )

        assertEquals(listOf("102", "101", "103", "104"), ids(sync.channels))
        // Stesso canale in onda, ora numero 1.
        assertEquals("102", sync.onAir?.streamId)
        assertEquals(0, sync.index)
        assertEquals(1, sync.number)
        assertEquals(0, sync.insertIndex)
        // Su/Giù ripartono dalla nuova posizione: giù va a Nebbia TV.
        assertEquals(1, LiveZapping.next(sync.index, sync.channels.size))
        assertEquals("101", sync.channels[LiveZapping.next(sync.index, sync.channels.size)].streamId)
    }

    @Test
    fun `canale in onda rimosso resta in onda e Su e Giu vanno ai vicini`() {
        // In onda Bosco TV (posizione 2), poi rimosso: resta Nebbia, Luna, Notte.
        val sync = MyChannelPlayback.sync(
            onAir = bosco,
            positionHint = 1,
            updated = listOf(nebbia, luna, notte),
        )

        assertEquals(listOf("101", "103", "104"), ids(sync.channels))
        // Bosco TV non è più in lista ma resta in onda, senza numero.
        assertEquals("102", sync.onAir?.streamId)
        assertEquals("Bosco TV", sync.onAir?.name)
        assertNull(sync.number)
        // Occupava la posizione 2 (indice 1): sotto c'è Luna, sopra Nebbia.
        assertEquals(1, sync.insertIndex)
        val down = MyChannelPlayback.zapFromDetached(sync.insertIndex, sync.channels.size, down = true)
        assertEquals(1, down)
        assertEquals("103", sync.channels[down].streamId)
        val up = MyChannelPlayback.zapFromDetached(sync.insertIndex, sync.channels.size, down = false)
        assertEquals(0, up)
        assertEquals("101", sync.channels[up].streamId)
    }

    @Test
    fun `rimozione dell'ultimo canale in onda circonda con primo e nuovo ultimo`() {
        // In onda Notte TV (ultimo posto), poi rimosso.
        val sync = MyChannelPlayback.sync(
            onAir = notte,
            positionHint = 3,
            updated = listOf(nebbia, bosco, luna),
        )

        assertEquals("104", sync.onAir?.streamId)
        assertNull(sync.number)
        // La posizione che occupava è oltre la fine della lista nuova (0..3).
        assertEquals(3, sync.insertIndex)
        assertEquals(2, sync.index)
        // Giù: si riparte dal primo. Su: il nuovo ultimo.
        assertEquals(0, MyChannelPlayback.zapFromDetached(sync.insertIndex, sync.channels.size, down = true))
        assertEquals("101", sync.channels[0].streamId)
        assertEquals(2, MyChannelPlayback.zapFromDetached(sync.insertIndex, sync.channels.size, down = false))
        assertEquals("103", sync.channels[2].streamId)
    }

    @Test
    fun `rimozione seguita da un secondo cambio di lista`() {
        // 1) Bosco TV rimosso: resta in onda, staccato in posizione 2 (indice 1).
        val removed = MyChannelPlayback.sync(
            onAir = bosco,
            positionHint = 1,
            updated = listOf(nebbia, luna, notte),
        )
        assertNull(removed.number)
        assertEquals(1, removed.insertIndex)

        // 2) La lista cambia ancora: Notte TV in testa.
        val second = MyChannelPlayback.sync(
            onAir = removed.onAir,
            positionHint = removed.insertIndex,
            updated = listOf(notte, nebbia, luna),
        )

        assertEquals(listOf("104", "101", "103"), ids(second.channels))
        // In onda resta sempre Bosco TV, senza numero.
        assertEquals("102", second.onAir?.streamId)
        assertNull(second.number)
        assertEquals(1, second.insertIndex)
        // Giù: il canale alla posizione che occupava (Nebbia); su: quello prima (Notte).
        assertEquals("101", second.channels[second.insertIndex].streamId)
        assertEquals(
            "104",
            second.channels[MyChannelPlayback.zapFromDetached(second.insertIndex, second.channels.size, down = false)]
                .streamId,
        )
    }

    @Test
    fun `canale in onda riaggiunto alla lista riprende il suo numero`() {
        // Bosco TV era stato tolto (in onda, senza numero) e ora torna in testa.
        val sync = MyChannelPlayback.sync(
            onAir = bosco,
            positionHint = 1,
            updated = listOf(bosco, nebbia, luna, notte),
        )

        assertEquals("102", sync.onAir?.streamId)
        // Di nuovo in lista: numero 1 e nessun canale staccato.
        assertEquals(1, sync.number)
        assertEquals(0, sync.index)
        assertEquals(0, sync.insertIndex)
    }

    @Test
    fun `aggiunta di un canale prima mantiene in onda e sposta la numerazione`() {
        val sync = MyChannelPlayback.sync(
            onAir = nebbia,
            positionHint = 0,
            updated = listOf(luna, nebbia, bosco),
        )

        assertEquals(listOf("103", "101", "102"), ids(sync.channels))
        assertEquals("101", sync.onAir?.streamId)
        assertEquals(1, sync.index)
        assertEquals(2, sync.number)
        assertEquals(1, sync.insertIndex)
    }

    @Test
    fun `lista nuova vuota lascia in onda il canale senza numero`() {
        val sync = MyChannelPlayback.sync(
            onAir = nebbia,
            positionHint = 0,
            updated = emptyList(),
        )

        assertTrue(sync.channels.isEmpty())
        assertEquals("101", sync.onAir?.streamId)
        assertNull(sync.number)
        assertEquals(0, sync.index)
        assertEquals(0, sync.insertIndex)
    }

    @Test
    fun `lista invariata non cambia niente`() {
        val sync = MyChannelPlayback.sync(
            onAir = luna,
            positionHint = 2,
            updated = base,
        )

        assertSame(base, sync.channels)
        assertEquals(2, sync.index)
        assertEquals("103", sync.onAir?.streamId)
        assertEquals(3, sync.number)
    }

    @Test
    fun `zapping dal canale staccato e circolare`() {
        // Lista di 3 canali, canale staccato in posizione 0 (in testa).
        assertEquals(0, MyChannelPlayback.zapFromDetached(insertIndex = 0, size = 3, down = true))
        assertEquals(2, MyChannelPlayback.zapFromDetached(insertIndex = 0, size = 3, down = false))
        // In mezzo: sotto il canale che segue, sopra quello che precede.
        assertEquals(1, MyChannelPlayback.zapFromDetached(insertIndex = 1, size = 3, down = true))
        assertEquals(0, MyChannelPlayback.zapFromDetached(insertIndex = 1, size = 3, down = false))
        // In fondo: sotto il primo, sopra il nuovo ultimo.
        assertEquals(2, MyChannelPlayback.zapFromDetached(insertIndex = 2, size = 3, down = true))
        assertEquals(1, MyChannelPlayback.zapFromDetached(insertIndex = 2, size = 3, down = false))
        // Posizione oltre la fine (ultimo canale rimosso).
        assertEquals(0, MyChannelPlayback.zapFromDetached(insertIndex = 3, size = 3, down = true))
        assertEquals(2, MyChannelPlayback.zapFromDetached(insertIndex = 3, size = 3, down = false))
        // Lista vuota: nessuna posizione valida.
        assertEquals(0, MyChannelPlayback.zapFromDetached(insertIndex = 0, size = 0, down = true))
        assertEquals(0, MyChannelPlayback.zapFromDetached(insertIndex = 0, size = 0, down = false))
    }
}
