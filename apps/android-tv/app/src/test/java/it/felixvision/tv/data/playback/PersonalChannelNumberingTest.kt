package it.felixvision.tv.data.playback

import it.felixvision.tv.core.Clock
import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.channels.ChannelPositionField
import it.felixvision.tv.data.catalog.LiveStream
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Numerazione personale di "I miei canali" contro numerazione del provider:
 * l'origine decide quale vale, e lo zapping segue l'ordine della lista.
 */
class PersonalChannelNumberingTest {

    private val category = Category(categoryId = "010", categoryName = "Notizie")

    private val luna = LiveStream(num = 12, name = "Luna TV", streamId = "703", categoryId = "010")
    private val nebbia = LiveStream(num = 5, name = "Nebbia TV", streamId = "101", categoryId = "010")
    private val bosco = LiveStream(num = 9, name = "Bosco TV", streamId = "102", categoryId = "020")

    private val providerChannels = listOf(luna, nebbia, bosco)

    /** Ordine scelto dall'utente: numero 1 = Luna TV, numero 2 = Nebbia TV. */
    private val personalOrder = listOf(luna, nebbia)

    private val clock = Clock { 1_700_000_000_000L }

    @Test
    fun `l'origine decide la numerazione`() {
        assertEquals(ChannelNumbering.PROVIDER, ChannelListOrigin.LIVE.numbering)
        assertEquals(ChannelNumbering.PERSONAL, ChannelListOrigin.MY_CHANNELS.numbering)
    }

    @Test
    fun `numerazione del provider per il Live`() {
        val found = ChannelNumberInput.lookup(9, providerChannels, listOf(category), ChannelListOrigin.LIVE.numbering)

        assertEquals(ChannelLookupResult.Found(9, bosco, LiveZappingTarget(listOf(bosco), 0, "020", null)), found)
        val notFound = ChannelNumberInput.lookup(2, providerChannels, listOf(category), ChannelListOrigin.LIVE.numbering) as ChannelLookupResult.NotFound
        assertEquals(2, notFound.number)
        assertEquals("Canale 2 non trovato", notFound.message)
        // 9 è il numero del provider: nella lista personale non è una posizione.
        assertTrue(ChannelNumberInput.lookupPersonal(9, personalOrder) is ChannelLookupResult.NotFound)
    }

    @Test
    fun `numerazione personale per I miei canali`() {
        val numbering = ChannelListOrigin.MY_CHANNELS.numbering

        val first = ChannelNumberInput.lookup(1, personalOrder, emptyList(), numbering) as ChannelLookupResult.Found
        assertEquals(luna, first.channel)
        assertEquals(1, first.number)
        assertEquals(personalOrder, first.zapping.channels)
        assertEquals(0, first.zapping.startIndex)

        val second = ChannelNumberInput.lookup(2, personalOrder, emptyList(), numbering) as ChannelLookupResult.Found
        assertEquals(nebbia, second.channel)
        assertEquals(1, second.zapping.startIndex)

        val missing = ChannelNumberInput.lookup(3, personalOrder, emptyList(), numbering) as ChannelLookupResult.NotFound
        assertEquals("Canale 3 non trovato", missing.message)
        // Lo stesso numero 12 del provider non vale nella numerazione personale.
        assertTrue(ChannelNumberInput.lookup(12, personalOrder, emptyList(), numbering) is ChannelLookupResult.NotFound)
    }

    @Test
    fun `zapping circolare nell'ordine della lista`() {
        val found = ChannelNumberInput.lookupPersonal(1, personalOrder) as ChannelLookupResult.Found
        assertEquals(luna.streamId, found.zapping.channels[found.zapping.startIndex].streamId)
        assertEquals(1, LiveZapping.next(found.zapping.startIndex, found.zapping.channels.size))
        assertEquals(
            nebbia.streamId,
            found.zapping.channels[LiveZapping.next(found.zapping.startIndex, found.zapping.channels.size)].streamId,
        )
        // Dall'ultimo si torna al primo e dal primo all'ultimo (circolare).
        assertEquals(0, LiveZapping.next(1, 2))
        assertEquals(1, LiveZapping.previous(0, 2))
        // Con un solo canale lo zapping resta su quello.
        assertEquals(0, LiveZapping.next(0, 1))
        assertEquals(0, LiveZapping.previous(0, 1))
    }

    @Test
    fun `sessione numerica con numerazione personale`() {
        val personal = ChannelNumberSession(clock, ChannelNumbering.PERSONAL)
        personal.onDigit(2)
        val personalResult = personal.confirm(personalOrder, emptyList())
        assertEquals(nebbia, (personalResult as ChannelLookupResult.Found).channel)

        val provider = ChannelNumberSession(clock, ChannelNumbering.PROVIDER)
        provider.onDigit(2)
        val providerResult = provider.confirm(personalOrder, emptyList())
        assertEquals(2, (providerResult as ChannelLookupResult.NotFound).number)

        val providerHits = ChannelNumberSession(clock, ChannelNumbering.PROVIDER)
        providerHits.onDigit(9)
        val hit = providerHits.confirm(providerChannels, listOf(category)) as ChannelLookupResult.Found
        assertEquals(bosco, hit.channel)
    }

    @Test
    fun `campo numerico precompilato e limite di quattro cifre`() {
        val append = ChannelPositionField.forAppend(3)
        assertEquals("4", append.digits)
        assertTrue(append.prefilled)
        assertEquals(4, append.value)

        // La prima cifra sostituisce il suggerimento.
        val typed = append.digit(2)
        assertEquals("2", typed.digits)
        assertEquals(2, typed.value)
        assertEquals("21", typed.digit(1).digits)
        assertEquals("213", typed.digit(1).digit(3).digits)

        val current = ChannelPositionField.forPosition(2)
        assertEquals("2", current.digits)
        assertTrue(current.prefilled)
        // Massimo 4 cifre: una quinta cifra riparte da quella nuova.
        assertEquals("2135", current.digit(2).digit(1).digit(3).digit(5).digits)
        assertEquals("9", current.digit(2).digit(1).digit(3).digit(5).digit(9).digits)
        // Zero non è una posizione valida.
        assertEquals(null, ChannelPositionField.forAppend(0).digit(0).value)
    }
}
