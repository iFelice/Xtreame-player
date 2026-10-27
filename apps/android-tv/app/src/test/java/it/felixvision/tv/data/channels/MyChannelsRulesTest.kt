package it.felixvision.tv.data.channels

import it.felixvision.tv.data.catalog.LiveStream
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertSame
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Operazioni pure di "I miei canali": inserimento, spostamento, rimozione,
 * numerazione 1..N senza buchi e nessun duplicato.
 */
class MyChannelsRulesTest {

    private fun channel(id: String, name: String = "Canale $id") = MyChannel(
        streamId = id,
        name = name,
        logo = "http://server.esempio:8080/logo/$id.png",
    )

    private val nebbia = channel("101", "Nebbia TV")
    private val bosco = channel("102", "Bosco TV")
    private val luna = channel("103", "Luna TV")
    private val base = listOf(nebbia, bosco, luna)

    private fun ids(channels: List<MyChannel>) = channels.map { it.streamId }

    @Test
    fun `lista iniziale vuota e numerazione senza buchi`() {
        val empty = emptyList<MyChannel>()
        assertTrue(empty.isEmpty())
        assertNull(MyChannels.numberOf(empty, "101"))
        assertNull(MyChannels.channelAt(empty, 1))
        assertEquals(listOf(1, 2, 3), base.indices.map { it + 1 })
        assertEquals(1, MyChannels.numberOf(base, "101"))
        assertEquals(2, MyChannels.numberOf(base, "102"))
        assertEquals(3, MyChannels.numberOf(base, "103"))
        assertNull(MyChannels.numberOf(base, "999"))
        assertEquals(nebbia, MyChannels.channelAt(base, 1))
        assertEquals(luna, MyChannels.channelAt(base, 3))
        assertNull(MyChannels.channelAt(base, 4))
        assertNull(MyChannels.channelAt(base, 0))
    }

    @Test
    fun `aggiunta in fondo nell'ordine di scelta`() {
        var list = MyChannels.add(emptyList(), nebbia)
        assertEquals(listOf("101"), ids(list))
        list = MyChannels.add(list, bosco)
        list = MyChannels.add(list, luna)
        assertEquals(listOf("101", "102", "103"), ids(list))
        assertEquals(3, MyChannels.numberOf(list, "103"))
    }

    @Test
    fun `canale presente una sola volta - riaggiungerlo lo sposta in fondo`() {
        val afterAdd = MyChannels.add(base, nebbia)
        assertEquals(listOf("102", "103", "101"), ids(afterAdd))
        assertEquals(3, MyChannels.numberOf(afterAdd, "101"))
        assertEquals(1, MyChannels.numberOf(afterAdd, "102"))
        assertEquals(2, MyChannels.numberOf(afterAdd, "103"))
    }

    @Test
    fun `inserimento alla posizione fa scalare gli altri`() {
        val notte = channel("104", "Notte TV")
        // Inserimento in mezzo: posizione 2.
        assertEquals(listOf("101", "104", "102", "103"), ids(MyChannels.insertAt(base, notte, 2)))
        // Inserimento in testa.
        assertEquals(listOf("104", "101", "102", "103"), ids(MyChannels.insertAt(base, notte, 1)))
    }

    @Test
    fun `inserimento oltre la fine vale come ultimo posto`() {
        val notte = channel("104", "Notte TV")
        assertEquals(listOf("101", "102", "103", "104"), ids(MyChannels.insertAt(base, notte, 4)))
        assertEquals(listOf("101", "102", "103", "104"), ids(MyChannels.insertAt(base, notte, 99)))
        // Anche una posizione non positiva resta in testa, senza buchi.
        assertEquals(listOf("104", "101", "102", "103"), ids(MyChannels.insertAt(base, notte, 0)))
    }

    @Test
    fun `inserimento di un canale già presente lo sposta`() {
        assertEquals(listOf("103", "101", "102"), ids(MyChannels.insertAt(base, luna, 1)))
        assertEquals(listOf("101", "102", "103"), ids(MyChannels.insertAt(base, luna, 9)))
        assertEquals(3, MyChannels.insertAt(base, luna, 1).size)
    }

    @Test
    fun `spostamento alla posizione rimuove e reinserisce`() {
        assertEquals(listOf("102", "103", "101"), ids(MyChannels.moveTo(base, "101", 3)))
        assertEquals(listOf("103", "101", "102"), ids(MyChannels.moveTo(base, "103", 1)))
        assertEquals(listOf("102", "101", "103"), ids(MyChannels.moveTo(base, "101", 2)))
        // Spostare un canale già nella sua posizione non cambia nulla.
        assertSame(base, MyChannels.moveTo(base, "102", 2))
        // Posizione oltre la fine: in fondo.
        assertEquals(listOf("102", "103", "101"), ids(MyChannels.moveTo(base, "101", 42)))
        // Canale assente: lista invariata.
        assertSame(base, MyChannels.moveTo(base, "999", 2))
    }

    @Test
    fun `spostamento su e giù di una posizione`() {
        assertEquals(listOf("102", "101", "103"), ids(MyChannels.moveUp(base, "102")))
        assertEquals(listOf("101", "103", "102"), ids(MyChannels.moveDown(base, "102")))
        // Il primo non sale, l'ultimo non scende.
        assertSame(base, MyChannels.moveUp(base, "101"))
        assertSame(base, MyChannels.moveDown(base, "103"))
        assertSame(base, MyChannels.moveUp(base, "999"))
        // Sequenza su poi giù: torna com'era, senza buchi di numerazione.
        val moved = MyChannels.moveDown(MyChannels.moveUp(base, "102"), "102")
        assertEquals(ids(base), ids(moved))
        assertEquals(listOf(1, 2, 3), moved.map { MyChannels.numberOf(moved, it.streamId) })
    }

    @Test
    fun `rimozione fa risalire i canali sotto`() {
        val afterRemove = MyChannels.remove(base, "101")
        assertEquals(listOf("102", "103"), ids(afterRemove))
        assertEquals(1, MyChannels.numberOf(afterRemove, "102"))
        assertEquals(2, MyChannels.numberOf(afterRemove, "103"))
        assertFalse(MyChannels.contains(afterRemove, "101"))
        assertEquals(listOf("101", "103"), ids(MyChannels.remove(base, "102")))
        // Rimuovere un canale assente non cambia nulla.
        assertEquals(ids(base), ids(MyChannels.remove(base, "999")))
        assertTrue(MyChannels.remove(listOf(nebbia), "101").isEmpty())
    }

    @Test
    fun `canali live nello stesso ordine personale con i dati del catalogo`() {
        val catalog = listOf(
            LiveStream(
                num = 12,
                name = "Luna TV HD",
                streamId = "103",
                streamIcon = "http://server.esempio:8080/logo/103.png",
                categoryId = "020",
                epgChannelId = "luna",
            ),
            LiveStream(
                num = 5,
                name = "Nebbia TV HD",
                streamId = "101",
                categoryId = "010",
            ),
        )
        val ordered = MyChannelPlayback.streams(listOf(nebbia, channel("999", "Ospite TV")), catalog)
        assertEquals(listOf("101", "999"), ordered.map { it.streamId })
        // Dal catalogo restano numero del provider e categoria, il nome è quello personale.
        assertEquals("Nebbia TV", ordered[0].name)
        assertEquals(5, ordered[0].num)
        assertEquals("010", ordered[0].categoryId)
        // Canale non ancora nel catalogo: si mostrano i dati salvati.
        assertEquals("Ospite TV", ordered[1].name)
        assertNull(ordered[1].num)
        assertNull(ordered[1].categoryId)
    }
}
