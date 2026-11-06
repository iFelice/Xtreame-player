package it.felixvision.tv.data.epg

import java.io.ByteArrayInputStream
import java.time.Instant
import java.util.Base64
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [34])
class XmlTvParserTest {

    @Test
    fun `streaming XMLTV filtra catalogo e programmi scaduti e risolve entita`() {
        val now = Instant.parse("2026-11-06T10:30:00Z").epochSecond
        val encodedTitle = Base64.getEncoder().encodeToString("Codificato".toByteArray())
        val xml = """
            <?xml version="1.0" encoding="UTF-8"?>
            <tv>
              <programme start="20261106120000 +0200" stop="20261106130000 +0200" channel="epg-a">
                <title lang="it">R&amp;D &amp; Caffè</title><desc>Pane &amp; tè</desc>
              </programme>
              <programme start="20261106110000" stop="20261106120000" channel="epg-a">
                <title>$encodedTitle</title><desc>Descrizione</desc>
              </programme>
              <programme start="20261106070000 +0000" stop="20261106090000 +0000" channel="epg-a">
                <title>Troppo vecchio</title>
              </programme>
              <programme start="20261106120000 +0000" stop="20261106130000 +0000" channel="non-in-catalogo">
                <title>Da ignorare</title>
              </programme>
            </tv>
        """.trimIndent()

        val result = XmlTvParser.parse(
            input = ByteArrayInputStream(xml.toByteArray(Charsets.UTF_8)),
            catalogEpgChannelIds = setOf("epg-a"),
            nowEpochSeconds = now,
        )

        assertTrue(result.complete)
        val programs = result.programsByEpgChannelId.getValue("epg-a")
        assertEquals(2, programs.size)
        assertEquals("R&D & Caffè", programs[0].title)
        assertEquals("Pane & tè", programs[0].description)
        assertEquals("Codificato", programs[1].title)
        assertEquals(Instant.parse("2026-11-06T11:00:00Z").epochSecond, programs[1].start)
        assertFalse(result.programsByEpgChannelId.containsKey("non-in-catalogo"))
    }

    @Test
    fun `timestamp XMLTV senza offset e UTC e un parse incompleto mantiene i dati letti`() {
        val now = Instant.parse("2026-11-06T10:00:00Z").epochSecond
        val completeXml = """
            <tv><programme start="20261106110000" stop="20261106120000" channel="epg-a">
              <title>UTC</title>
            </programme></tv>
        """.trimIndent()
        val parsed = XmlTvParser.parse(
            ByteArrayInputStream(completeXml.toByteArray()),
            setOf("epg-a"),
            now,
        )
        assertEquals(Instant.parse("2026-11-06T11:00:00Z").epochSecond, parsed.programsByEpgChannelId.getValue("epg-a").single().start)

        val partialXml = """
            <tv><programme start="20261106110000Z" stop="20261106120000Z" channel="epg-a">
              <title>Parziale</title>
            </programme><programme
        """.trimIndent()
        val partial = XmlTvParser.parse(
            ByteArrayInputStream(partialXml.toByteArray()),
            setOf("epg-a"),
            now,
        )
        assertFalse(partial.complete)
        assertEquals("Parziale", partial.programsByEpgChannelId.getValue("epg-a").single().title)
    }

    @Test
    fun `timestamp XMLTV interpreta offsets con e senza secondi`() {
        val local = Instant.parse("2026-11-06T10:00:00Z").epochSecond
        assertEquals(local, XmlTvTimestamp.parse("20261106120000 +0200"))
        assertEquals(local, XmlTvTimestamp.parse("20261106123000 +023000"))
        assertEquals(local, XmlTvTimestamp.parse("20261106100000"))
        assertEquals(null, XmlTvTimestamp.parse("non-valido"))
    }
}
