package it.felixvision.tv.data.log

import java.time.ZoneId
import java.time.ZonedDateTime
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Regole del Log dei problemi permanenti, senza Android: una riga per
 * problema, la data e l'ora di quando è comparso, e "Svuota log" che non fa
 * tornare il messaggio finché il problema è in corso.
 */
class IssueLogTest {

    private val zone: ZoneId = ZoneId.systemDefault()

    /** 23/11/2026 alle 18:42, ora locale del test. */
    private fun instant(day: Int, hour: Int, minute: Int): Long = ZonedDateTime.of(
        2026, 11, day, hour, minute, 0, 0, zone,
    ).toInstant().toEpochMilli()

    @Test
    fun `la riga ha data e ora, trattino lungo e messaggio`() {
        val entry = IssueEntry(
            key = IssueLog.outOfIndexKey("m2"),
            message = "lista.m3u: non presente nell'indice",
            sinceMillis = instant(23, 18, 42),
        )

        assertEquals("23/11 18:42 — lista.m3u: non presente nell'indice", IssueLog.line(entry, zone))
        assertEquals("23/11 18:42", IssueLog.stamp(entry.sinceMillis, zone))
    }

    @Test
    fun `un problema nuovo entra con la data di adesso`() {
        val now = instant(23, 18, 42)

        val entries = IssueLog.reconcile(
            entries = emptyList(),
            active = listOf(Issue(IssueLog.KEY_INDEX, "Indice delle liste: non raggiungibile")),
            nowMillis = now,
        )

        assertEquals(1, entries.size)
        assertEquals(now, entries.first().sinceMillis)
        assertEquals(IssueLog.KEY_INDEX, entries.first().key)
    }

    @Test
    fun `lo stesso problema non si duplica e tiene la sua data`() {
        val first = instant(23, 18, 42)
        val later = instant(24, 9, 5)

        val once = IssueLog.reconcile(emptyList(), listOf(Issue("list:m2", "lista.m3u: non risponde")), first)
        val twice = IssueLog.reconcile(once, listOf(Issue("list:m2", "lista.m3u: non risponde")), later)

        assertEquals(1, twice.size)
        assertEquals("la data resta quella in cui è comparso", first, twice.first().sinceMillis)
    }

    @Test
    fun `il messaggio si aggiorna senza cambiare la data`() {
        val first = instant(23, 18, 42)

        val once = IssueLog.reconcile(emptyList(), listOf(Issue(IssueLog.KEY_INDEX, "Indice: errore 500")), first)
        val twice = IssueLog.reconcile(once, listOf(Issue(IssueLog.KEY_INDEX, "Indice: non raggiungibile")), first + 60_000)

        assertEquals("Indice: non raggiungibile", twice.first().message)
        assertEquals(first, twice.first().sinceMillis)
    }

    @Test
    fun `un problema rientrato esce dal Log`() {
        val entries = IssueLog.reconcile(
            emptyList(),
            listOf(Issue("list:m2", "lista.m3u: non risponde"), Issue(IssueLog.KEY_INDEX, "Indice: errore")),
            instant(23, 18, 42),
        )

        val after = IssueLog.reconcile(entries, listOf(Issue(IssueLog.KEY_INDEX, "Indice: errore")), instant(23, 19, 0))

        assertEquals(1, after.size)
        assertEquals(IssueLog.KEY_INDEX, after.first().key)
        assertTrue("la riga rientrata non deve restare", after.none { it.key == "list:m2" })
    }

    @Test
    fun `un problema rientrato e ripresentato torna con la data nuova`() {
        val first = instant(23, 18, 42)
        val again = instant(24, 9, 5)
        val once = IssueLog.reconcile(emptyList(), listOf(Issue("list:m2", "lista.m3u: non risponde")), first)
        val resolved = IssueLog.reconcile(once, emptyList(), first + 1_000)
        val back = IssueLog.reconcile(resolved, listOf(Issue("list:m2", "lista.m3u: non risponde")), again)

        assertEquals(1, back.size)
        assertEquals("la data è quella in cui si è ripresentato", again, back.first().sinceMillis)
    }

    @Test
    fun `senza problemi il Log è vuoto`() {
        assertTrue(IssueLog.reconcile(emptyList(), emptyList(), instant(23, 18, 42)).isEmpty())
        assertTrue(IssueLog.reconcile(emptyList(), emptyList(), instant(23, 18, 42)).isEmpty())
    }

    @Test
    fun `svuota log tacita le righe senza far rientrare i problemi`() {
        val now = instant(23, 18, 42)
        val entries = IssueLog.reconcile(
            emptyList(),
            listOf(Issue("list:m2", "lista.m3u: non risponde"), Issue(IssueLog.KEY_INDEX, "Indice: errore")),
            now,
        )

        val cleared = IssueLog.clear(entries)
        assertTrue("dopo Svuota log non c'è niente da mostrare", IssueLog.visible(cleared).isEmpty())
        assertEquals("le righe restano, solo tacitate", 2, cleared.size)
        assertTrue(cleared.all { it.muted })

        // Il problema è ancora in corso: non torna.
        val after = IssueLog.reconcile(cleared, listOf(Issue("list:m2", "lista.m3u: non risponde")), now + 60_000)
        assertEquals(1, after.size)
        assertTrue(after.single().muted)
        assertTrue(IssueLog.visible(after).isEmpty())
    }

    @Test
    fun `dopo Svuota log un problema nuovo si vede`() {
        val now = instant(23, 18, 42)
        val cleared = IssueLog.clear(
            IssueLog.reconcile(emptyList(), listOf(Issue("list:m2", "lista.m3u: non risponde")), now),
        )

        val after = IssueLog.reconcile(
            cleared,
            listOf(Issue("list:m2", "lista.m3u: non risponde"), Issue(IssueLog.KEY_INDEX, "Indice: errore")),
            now + 60_000,
        )

        val visible = IssueLog.visible(after)
        assertEquals(1, visible.size)
        assertEquals(IssueLog.KEY_INDEX, visible.single().key)
        assertEquals(now + 60_000, visible.single().sinceMillis)
    }

    @Test
    fun `dopo Svuota log un problema che rientra e torna si vede di nuovo`() {
        val now = instant(23, 18, 42)
        val cleared = IssueLog.clear(
            IssueLog.reconcile(emptyList(), listOf(Issue("list:m2", "lista.m3u: non risponde")), now),
        )
        val resolved = IssueLog.reconcile(cleared, emptyList(), now + 1_000)
        assertTrue("la riga rientrata esce, anche se era tacita", resolved.isEmpty())

        val back = IssueLog.reconcile(resolved, listOf(Issue("list:m2", "lista.m3u: non risponde")), now + 5_000)
        val visible = IssueLog.visible(back)
        assertEquals(1, visible.size)
        assertEquals(now + 5_000, visible.single().sinceMillis)
    }

    @Test
    fun `le righe visibili vanno dalla più vecchia alla più recente`() {
        val now = instant(23, 18, 42)
        val entries = listOf(
            IssueEntry("b", "secondo", now + 2_000),
            IssueEntry("a", "primo", now),
            IssueEntry("c", "terzo", now + 4_000),
        )

        assertEquals(listOf("primo", "secondo", "terzo"), IssueLog.visible(entries).map { it.message })
    }

    @Test
    fun `svuotare un Log già vuoto non cambia niente`() {
        assertTrue(IssueLog.clear(emptyList()).isEmpty())
    }
}
