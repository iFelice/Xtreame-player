package it.felixvision.tv.data.playback

import android.view.KeyEvent as AndroidKeyEvent
import it.felixvision.tv.core.Clock
import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.LiveStream
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertSame
import org.junit.Assert.assertTrue
import org.junit.Test

class ChannelNumberInputTest {

    private class SimulatedClock(var currentMillis: Long = 1_000L) : Clock {
        override fun nowMillis(): Long = currentMillis

        fun advanceBy(deltaMillis: Long) {
            currentMillis += deltaMillis
        }
    }

    private val categories = listOf(
        Category(categoryId = "cat1", categoryName = "Intrattenimento"),
        Category(categoryId = "cat2", categoryName = "Sport"),
        Category(categoryId = "cat3", categoryName = "Notizie"),
    )

    private val catalogStreams = listOf(
        LiveStream(streamId = "001", num = 1, name = "Canale Uno", categoryId = "cat1"),
        LiveStream(streamId = "002", num = 2, name = "Canale Due", categoryId = "cat1"),
        LiveStream(streamId = "003", num = null, name = "Canale Senza Numero", categoryId = "cat1"),
        LiveStream(streamId = "010", num = 10, name = "Sport Uno", categoryId = "cat2"),
        LiveStream(streamId = "025", num = 25, name = "Sport Due", categoryId = "cat2"),
        LiveStream(streamId = "030", num = 30, name = "Sport Tre", categoryId = "cat2"),
        LiveStream(streamId = "050", num = 50, name = "Notizie 24", categoryId = "cat3"),
    )

    @Test
    fun `mappatura tasti numerici standard e tastierino numerico`() {
        val standardKeys = listOf(
            AndroidKeyEvent.KEYCODE_0,
            AndroidKeyEvent.KEYCODE_1,
            AndroidKeyEvent.KEYCODE_2,
            AndroidKeyEvent.KEYCODE_3,
            AndroidKeyEvent.KEYCODE_4,
            AndroidKeyEvent.KEYCODE_5,
            AndroidKeyEvent.KEYCODE_6,
            AndroidKeyEvent.KEYCODE_7,
            AndroidKeyEvent.KEYCODE_8,
            AndroidKeyEvent.KEYCODE_9,
        )
        val numpadKeys = listOf(
            AndroidKeyEvent.KEYCODE_NUMPAD_0,
            AndroidKeyEvent.KEYCODE_NUMPAD_1,
            AndroidKeyEvent.KEYCODE_NUMPAD_2,
            AndroidKeyEvent.KEYCODE_NUMPAD_3,
            AndroidKeyEvent.KEYCODE_NUMPAD_4,
            AndroidKeyEvent.KEYCODE_NUMPAD_5,
            AndroidKeyEvent.KEYCODE_NUMPAD_6,
            AndroidKeyEvent.KEYCODE_NUMPAD_7,
            AndroidKeyEvent.KEYCODE_NUMPAD_8,
            AndroidKeyEvent.KEYCODE_NUMPAD_9,
        )
        standardKeys.forEachIndexed { expected, keyCode ->
            assertEquals(expected, ChannelNumberInput.digitFromKeyCode(keyCode))
        }
        numpadKeys.forEachIndexed { expected, keyCode ->
            assertEquals(expected, ChannelNumberInput.digitFromKeyCode(keyCode))
        }
        assertNull(ChannelNumberInput.digitFromKeyCode(AndroidKeyEvent.KEYCODE_DPAD_UP))
        assertNull(ChannelNumberInput.digitFromKeyCode(AndroidKeyEvent.KEYCODE_DPAD_CENTER))
        assertNull(ChannelNumberInput.digitFromKeyCode(AndroidKeyEvent.KEYCODE_BACK))
    }

    @Test
    fun `accumulo cifre fino a quattro e sostituzione alla quinta cifra`() {
        val clock = SimulatedClock(1_000L)
        val session = ChannelNumberSession(clock)

        assertEquals("1", session.onDigit(1))
        assertEquals("12", session.onDigit(2))
        assertEquals("123", session.onDigit(3))
        assertEquals("1234", session.onDigit(4))
        assertEquals(
            ChannelNumberOverlay.Digits(digits = "1234", updatedAtMillis = 1_000L),
            session.overlay,
        )

        // Una quinta cifra sostituisce l'intero inserimento con la nuova cifra.
        clock.advanceBy(300L)
        assertEquals("7", session.onDigit(7))
        assertEquals(
            ChannelNumberOverlay.Digits(digits = "7", updatedAtMillis = 1_300L),
            session.overlay,
        )
        assertEquals("78", session.onDigit(8))

        // La ripetizione automatica del tasto premuto a lungo non duplica la cifra.
        val repeatOutcome = session.handleKeyEvent(
            keyCode = AndroidKeyEvent.KEYCODE_9,
            action = AndroidKeyEvent.ACTION_DOWN,
            repeatCount = 2,
            allStreams = catalogStreams,
            categories = categories,
        )
        assertEquals(ChannelKeyOutcome.Consumed, repeatOutcome)
        assertEquals("78", session.digits)
    }

    @Test
    fun `zeri iniziali contano nel limite di quattro cifre e cercano il numero intero`() {
        val clock = SimulatedClock(1_000L)
        val session = ChannelNumberSession(clock)

        session.onDigit(0)
        session.onDigit(0)
        session.onDigit(2)
        session.onDigit(5)
        assertEquals("0025", session.digits)

        val result = session.confirm(catalogStreams, categories)
        assertTrue(result is ChannelLookupResult.Found)
        val found = result as ChannelLookupResult.Found
        assertEquals(25, found.number)
        assertEquals("025", found.channel.streamId)
    }

    @Test
    fun `conferma a tempo dopo due secondi dall'ultima cifra`() {
        val clock = SimulatedClock(1_000L)
        val session = ChannelNumberSession(clock)

        session.handleKeyEvent(
            keyCode = AndroidKeyEvent.KEYCODE_2,
            action = AndroidKeyEvent.ACTION_DOWN,
            allStreams = catalogStreams,
            categories = categories,
        )
        clock.advanceBy(1_500L) // t = 2500
        assertNull(session.confirmIfDue(catalogStreams, categories))
        assertTrue(session.isInputActive)

        // Nuova cifra: la finestra di 2 s riparte da t = 2500 (scade a 4500).
        session.handleKeyEvent(
            keyCode = AndroidKeyEvent.KEYCODE_NUMPAD_5,
            action = AndroidKeyEvent.ACTION_DOWN,
            allStreams = catalogStreams,
            categories = categories,
        )
        assertEquals("25", session.digits)

        clock.advanceBy(1_999L) // t = 4499
        assertNull(session.confirmIfDue(catalogStreams, categories))
        assertTrue(session.isInputActive)

        clock.advanceBy(1L) // t = 4500
        val confirmed = session.confirmIfDue(catalogStreams, categories)
        assertTrue(confirmed is ChannelLookupResult.Found)
        assertEquals("025", (confirmed as ChannelLookupResult.Found).channel.streamId)
        assertFalse(session.isInputActive)
        assertNull(session.overlay)
    }

    @Test
    fun `conferma immediata con OK consuma pressione e rilascio`() {
        val clock = SimulatedClock(1_000L)
        val session = ChannelNumberSession(clock)

        // Senza inserimento attivo OK viene ignorato.
        val idleOk = session.handleKeyEvent(
            keyCode = AndroidKeyEvent.KEYCODE_DPAD_CENTER,
            action = AndroidKeyEvent.ACTION_DOWN,
            allStreams = catalogStreams,
            categories = categories,
        )
        assertEquals(ChannelKeyOutcome.Ignored, idleOk)
        assertFalse(idleOk.consumed)

        session.onDigit(5)
        session.onDigit(0)
        val downOutcome = session.handleKeyEvent(
            keyCode = AndroidKeyEvent.KEYCODE_DPAD_CENTER,
            action = AndroidKeyEvent.ACTION_DOWN,
            allStreams = catalogStreams,
            categories = categories,
        )
        assertTrue(downOutcome is ChannelKeyOutcome.Confirmed)
        assertTrue(downOutcome.consumed)
        val found = (downOutcome as ChannelKeyOutcome.Confirmed).result as ChannelLookupResult.Found
        assertEquals("050", found.channel.streamId)
        assertFalse(session.isInputActive)
        assertNull(session.overlay)

        val upOutcome = session.handleKeyEvent(
            keyCode = AndroidKeyEvent.KEYCODE_DPAD_CENTER,
            action = AndroidKeyEvent.ACTION_UP,
            allStreams = catalogStreams,
            categories = categories,
        )
        assertEquals(ChannelKeyOutcome.Consumed, upOutcome)
        assertTrue(upOutcome.consumed)

        // Anche ENTER e NUMPAD_ENTER confermano l'inserimento.
        session.onDigit(1)
        val enterOutcome = session.handleKeyEvent(
            keyCode = AndroidKeyEvent.KEYCODE_ENTER,
            action = AndroidKeyEvent.ACTION_DOWN,
            allStreams = catalogStreams,
            categories = categories,
        )
        assertTrue(enterOutcome is ChannelKeyOutcome.Confirmed)

        session.onDigit(2)
        val numpadEnterOutcome = session.handleKeyEvent(
            keyCode = AndroidKeyEvent.KEYCODE_NUMPAD_ENTER,
            action = AndroidKeyEvent.ACTION_DOWN,
            allStreams = catalogStreams,
            categories = categories,
        )
        assertTrue(numpadEnterOutcome is ChannelKeyOutcome.Confirmed)
    }

    @Test
    fun `annullamento con Indietro pulisce l'inserimento e blocca la conferma a tempo`() {
        val clock = SimulatedClock(1_000L)
        val session = ChannelNumberSession(clock)

        assertFalse(session.cancel())
        val idleBack = session.handleKeyEvent(
            keyCode = AndroidKeyEvent.KEYCODE_BACK,
            action = AndroidKeyEvent.ACTION_DOWN,
            allStreams = catalogStreams,
            categories = categories,
        )
        assertEquals(ChannelKeyOutcome.Ignored, idleBack)

        session.onDigit(2)
        session.onDigit(5)
        assertTrue(session.isInputActive)

        val cancelDown = session.handleKeyEvent(
            keyCode = AndroidKeyEvent.KEYCODE_BACK,
            action = AndroidKeyEvent.ACTION_DOWN,
            allStreams = catalogStreams,
            categories = categories,
        )
        assertEquals(ChannelKeyOutcome.Cancelled, cancelDown)
        assertTrue(cancelDown.consumed)
        assertFalse(session.isInputActive)
        assertNull(session.overlay)

        val cancelUp = session.handleKeyEvent(
            keyCode = AndroidKeyEvent.KEYCODE_BACK,
            action = AndroidKeyEvent.ACTION_UP,
            allStreams = catalogStreams,
            categories = categories,
        )
        assertEquals(ChannelKeyOutcome.Consumed, cancelUp)

        clock.advanceBy(5_000L)
        assertNull(session.confirmIfDue(catalogStreams, categories))
    }

    @Test
    fun `frecce direzionali annullano l'inserimento senza intercettare il tasto`() {
        val directionalKeys = listOf(
            AndroidKeyEvent.KEYCODE_DPAD_UP,
            AndroidKeyEvent.KEYCODE_DPAD_DOWN,
            AndroidKeyEvent.KEYCODE_DPAD_LEFT,
            AndroidKeyEvent.KEYCODE_DPAD_RIGHT,
        )
        for (keyCode in directionalKeys) {
            val clock = SimulatedClock(1_000L)
            val session = ChannelNumberSession(clock)
            session.onDigit(1)
            session.onDigit(0)

            val outcome = session.handleKeyEvent(
                keyCode = keyCode,
                action = AndroidKeyEvent.ACTION_DOWN,
                allStreams = catalogStreams,
                categories = categories,
            )
            assertEquals(ChannelKeyOutcome.CancelledPassThrough, outcome)
            assertFalse(outcome.consumed)
            assertFalse(session.isInputActive)
            assertNull(session.overlay)

            clock.advanceBy(3_000L)
            assertNull(session.confirmIfDue(catalogStreams, categories))
        }
    }

    @Test
    fun `ricerca per num gestisce canale trovato non trovato e duplicati in ordine catalogo`() {
        val clock = SimulatedClock(1_000L)
        val session = ChannelNumberSession(clock)

        // Canale non trovato: mostra "Canale N non trovato" per 2 secondi.
        session.onDigit(9)
        session.onDigit(9)
        session.onDigit(9)
        val missing = session.confirm(catalogStreams, categories)
        assertEquals(ChannelLookupResult.NotFound(999), missing)
        assertEquals("Canale 999 non trovato", (missing as ChannelLookupResult.NotFound).message)
        assertEquals(
            ChannelNumberOverlay.NotFound(number = 999, shownAtMillis = 1_000L),
            session.overlay,
        )

        clock.advanceBy(1_999L)
        assertFalse(session.clearExpiredNotFound())
        assertTrue(session.overlay is ChannelNumberOverlay.NotFound)

        clock.advanceBy(1L)
        assertTrue(session.clearExpiredNotFound())
        assertNull(session.overlay)

        // Una nuova cifra mentre l'avviso è visibile lo sostituisce subito con l'inserimento.
        session.onDigit(8)
        session.onDigit(8)
        session.confirm(catalogStreams, categories)
        assertTrue(session.overlay is ChannelNumberOverlay.NotFound)
        session.onDigit(1)
        assertEquals(ChannelNumberOverlay.Digits("1", clock.nowMillis()), session.overlay)

        // Più canali con lo stesso num: vince il primo nell'ordine del catalogo.
        val firstDup = LiveStream(streamId = "101", num = 7, name = "Primo Sette", categoryId = "cat2")
        val secondDupSameCat = LiveStream(streamId = "102", num = 7, name = "Secondo Sette", categoryId = "cat2")
        val thirdDupOtherCat = LiveStream(streamId = "103", num = 7, name = "Terzo Sette", categoryId = "cat3")
        val withDuplicates = listOf(
            LiveStream(streamId = "100", num = null, name = "Senza Numero", categoryId = "cat1"),
            firstDup,
            secondDupSameCat,
            thirdDupOtherCat,
        )
        val dupResult = ChannelNumberInput.lookup(7, withDuplicates, categories)
        assertTrue(dupResult is ChannelLookupResult.Found)
        val dupFound = dupResult as ChannelLookupResult.Found
        assertSame(firstDup, dupFound.channel)
        assertEquals("101", dupFound.channel.streamId)
    }

    @Test
    fun `categoria di zapping del canale trovato prosegue nella nuova categoria`() {
        // Partendo da un'altra categoria, la ricerca su tutto il catalogo trova #25 in "Sport".
        val result = ChannelNumberInput.lookup(25, catalogStreams, categories)
        assertTrue(result is ChannelLookupResult.Found)
        val found = result as ChannelLookupResult.Found

        assertEquals("025", found.channel.streamId)
        assertEquals("cat2", found.zapping.categoryId)
        assertEquals("Sport", found.zapping.categoryName)
        assertEquals(listOf("010", "025", "030"), found.zapping.channels.map { it.streamId })
        assertEquals(1, found.zapping.startIndex)

        // Lo zapping Su/Giù prosegue circolarmente nella categoria "Sport" del nuovo canale.
        val downIndex = LiveZapping.next(found.zapping.startIndex, found.zapping.channels.size)
        assertEquals("030", found.zapping.channels[downIndex].streamId)

        val wrapDownIndex = LiveZapping.next(downIndex, found.zapping.channels.size)
        assertEquals("010", found.zapping.channels[wrapDownIndex].streamId)

        val upIndex = LiveZapping.previous(found.zapping.startIndex, found.zapping.channels.size)
        assertEquals("010", found.zapping.channels[upIndex].streamId)
    }
}
