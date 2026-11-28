package it.felixvision.tv.data.m3u

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Parser della lista M3U esteso, senza librerie.
 *
 * I casi coprono quello che i file veri fanno: BOM, righe CRLF, virgole nel
 * titolo, attributi mancanti, righe sconosciute, playlist HLS da rifiutare,
 * indirizzi relativi da scartare, voci duplicate e file troppo grandi. Negli
 * esempi c'è solo `http://server.esempio/…`: nessun indirizzo reale.
 */
class M3uParserTest {

    private fun entries(text: String): List<M3uEntry> {
        val result = M3uParser.parse(text)
        assertTrue("atteso Success, trovato $result", result is M3uParseResult.Success)
        return (result as M3uParseResult.Success).entries
    }

    private fun failure(text: String): M3uFailure {
        val result = M3uParser.parse(text)
        assertTrue("atteso Failure, trovato $result", result is M3uParseResult.Failure)
        return (result as M3uParseResult.Failure).reason
    }

    @Test
    fun `legge titolo attributi e indirizzo`() {
        val parsed = entries(
            """
            #EXTM3U
            #EXTINF:-1 tvg-id="uno" tvg-logo="http://server.esempio/logo.png" group-title="Film",Primo film
            http://server.esempio/uno.mp4
            """.trimIndent(),
        )

        assertEquals(1, parsed.size)
        assertEquals("Primo film", parsed[0].title)
        assertEquals("http://server.esempio/uno.mp4", parsed[0].url)
        assertEquals("Film", parsed[0].group)
        assertEquals("uno", parsed[0].tvgId)
        assertEquals("http://server.esempio/logo.png", parsed[0].logo)
    }

    @Test
    fun `tollera il BOM iniziale`() {
        val text = "\uFEFF#EXTM3U\n#EXTINF:-1,Con BOM\nhttp://server.esempio/bom.mp4\n"

        val parsed = entries(text)

        assertEquals(1, parsed.size)
        assertEquals("Con BOM", parsed[0].title)
    }

    @Test
    fun `tollera le righe CRLF e CR`() {
        val crlf = "#EXTM3U\r\n#EXTINF:-1,Riga CRLF\r\nhttp://server.esempio/crlf.mp4\r\n"
        val cr = "#EXTM3U\r#EXTINF:-1,Riga CR\rhttp://server.esempio/cr.mp4\r"

        assertEquals("Riga CRLF", entries(crlf).single().title)
        assertEquals("Riga CR", entries(cr).single().title)
        assertEquals("http://server.esempio/cr.mp4", entries(cr).single().url)
    }

    @Test
    fun `le virgole nel titolo restano nel titolo`() {
        val parsed = entries(
            "#EXTM3U\n" +
                "#EXTINF:-1 tvg-id=\"due\" group-title=\"Commedia, divertente\",Titolo, con virgole, davvero\n" +
                "http://server.esempio/due.mkv\n",
        )

        assertEquals("Titolo, con virgole, davvero", parsed.single().title)
        // La virgola dentro le virgolette dell'attributo non spezza il titolo.
        assertEquals("Commedia, divertente", parsed.single().group)
    }

    @Test
    fun `senza attributi il titolo e comunque letto`() {
        val parsed = entries(
            "#EXTM3U\n#EXTINF:-1,Solo titolo\nhttp://server.esempio/solo.mp4\n",
        )

        val entry = parsed.single()
        assertEquals("Solo titolo", entry.title)
        assertEquals(null, entry.group)
        assertEquals(null, entry.tvgId)
        assertEquals(null, entry.logo)
    }

    @Test
    fun `senza titolo si usa tvg-name`() {
        val parsed = entries(
            "#EXTM3U\n#EXTINF:-1 tvg-name=\"Puntata uno\",\nhttp://server.esempio/puntata-01.mp4\n",
        )

        assertEquals("Puntata uno", parsed.single().title)
    }

    @Test
    fun `senza titolo ne tvg-name si usa Video N`() {
        val parsed = entries(
            "#EXTM3U\n" +
                "#EXTINF:-1\nhttp://server.esempio/a.mp4\n" +
                "#EXTINF:-1,\nhttp://server.esempio/a.mp4\n" +
                "#EXTINF:-1 tvg-name=\" \"\nhttp://server.esempio/a.mp4\n",
        )

        // Mai il nome del file: nelle liste reali molti indirizzi finiscono con
        // lo stesso nome.
        assertEquals(listOf("Video 1", "Video 2", "Video 3"), parsed.map { it.title })
    }

    @Test
    fun `tvg-id resta la chiave della voce`() {
        val parsed = entries(
            "#EXTM3U\n#EXTINF:-1 tvg-id=\"ep01\",Puntata 1\nhttp://server.esempio/uno.mp4\n",
        )

        assertEquals("ep01", parsed.single().tvgId)
    }

    @Test
    fun `ignora righe sconosciute e commenti`() {
        val parsed = entries(
            """
            #EXTM3U
            #PLAYLIST:Lista di prova
            #EXTGRP:Film
            #EXTINF:-1,Prima
            # commento in mezzo
            http://server.esempio/prima.mp4
            riga sconosciuta senza indirizzo
            #EXTINF:-1,Dopo
            http://server.esempio/dopo.mp4
            """.trimIndent(),
        )

        assertEquals(listOf("Prima", "Dopo"), parsed.map { it.title })
    }

    /**
     * Il caso vero: la lista dichiara User-Agent e Referer con le direttive di
     * VLC perché il server li pretende. Senza, la voce risponde 403 e non parte.
     */
    @Test
    fun `legge gli header EXTVLCOPT della voce`() {
        val parsed = entries(
            """
            #EXTM3U
            #EXTINF:-1 tvg-id="p1v1" group-title="NUOVI OK",Video uno
            #EXTVLCOPT:http-user-agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) Chrome/120.0.0.0 Safari/537.36
            #EXTVLCOPT:http-referrer=https://sito.esempio/video/809445/
            https://sito.esempio/get_file/809445/809445_360p.mp4
            """.trimIndent(),
        )

        assertEquals(1, parsed.size)
        assertEquals(
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) Chrome/120.0.0.0 Safari/537.36",
            parsed[0].userAgent,
        )
        assertEquals("https://sito.esempio/video/809445/", parsed[0].referer)
        assertEquals(
            mapOf(
                "User-Agent" to
                    "Mozilla/5.0 (Windows NT 10.0; Win64; x64) Chrome/120.0.0.0 Safari/537.36",
                "Referer" to "https://sito.esempio/video/809445/",
            ),
            parsed[0].requestHeaders,
        )
    }

    @Test
    fun `le direttive valgono anche scritte prima di EXTINF`() {
        val parsed = entries(
            """
            #EXTM3U
            #EXTVLCOPT:http-user-agent=PlayerTV/1.0
            #EXTINF:-1,Prima
            https://sito.esempio/prima.mp4
            #EXTINF:-1,Seconda
            https://sito.esempio/seconda.mp4
            """.trimIndent(),
        )

        // Solo la voce che segue la direttiva la eredita.
        assertEquals("PlayerTV/1.0", parsed[0].userAgent)
        assertNull(parsed[1].userAgent)
        assertNull(parsed[1].referer)
        assertEquals(emptyMap<String, String>(), parsed[1].requestHeaders)
    }

    @Test
    fun `accetta referer e referrer, ignora le altre direttive`() {
        val parsed = entries(
            """
            #EXTM3U
            #EXTINF:-1,Uno
            #EXTVLCOPT:http-referer=https://sito.esempio/pagina
            #EXTVLCOPT:network-caching=3000
            #EXTVLCOPT:http-user-agent=Diverso/2.0
            https://sito.esempio/uno.mp4
            """.trimIndent(),
        )

        assertEquals("https://sito.esempio/pagina", parsed[0].referer)
        assertEquals("Diverso/2.0", parsed[0].userAgent)
    }

    @Test
    fun `una direttiva vuota o senza valore non diventa un header`() {
        val parsed = entries(
            """
            #EXTM3U
            #EXTINF:-1,Uno
            #EXTVLCOPT:http-user-agent=
            #EXTVLCOPT:http-referrer
            #EXTVLCOPT:http-referer=https://sito.esempio/pagina?q=1&r=2
            https://sito.esempio/uno.mp4
            """.trimIndent(),
        )

        assertNull(parsed[0].userAgent)
        // Il valore si prende intero, `=` compresi.
        assertEquals("https://sito.esempio/pagina?q=1&r=2", parsed[0].referer)
    }

    @Test
    fun `gli header non passano alla voce dopo un indirizzo scartato`() {
        val parsed = entries(
            """
            #EXTM3U
            #EXTINF:-1,Scartata
            #EXTVLCOPT:http-user-agent=PlayerTV/1.0
            /relativo.mp4
            #EXTINF:-1,Buona
            https://sito.esempio/buona.mp4
            """.trimIndent(),
        )

        assertEquals(listOf("Buona"), parsed.map { it.title })
        assertNull(parsed[0].userAgent)
    }

    @Test
    fun `senza direttive non ci sono header`() {
        val parsed = entries(
            """
            #EXTM3U
            #EXTINF:-1,Semplice
            https://sito.esempio/semplice.mp4
            """.trimIndent(),
        )

        assertNull(parsed[0].userAgent)
        assertNull(parsed[0].referer)
        assertEquals(emptyMap<String, String>(), parsed[0].requestHeaders)
    }

    @Test
    fun `scarta gli indirizzi relativi`() {
        val parsed = entries(
            """
            #EXTM3U
            #EXTINF:-1,Relativo
            /film/relativo.mp4
            #EXTINF:-1,File locale
            file:///sdcard/locale.mp4
            #EXTINF:-1,Assoluto
            http://server.esempio/assoluto.mp4
            """.trimIndent(),
        )

        assertEquals(1, parsed.size)
        assertEquals("Assoluto", parsed.single().title)
        assertEquals("http://server.esempio/assoluto.mp4", parsed.single().url)
    }

    @Test
    fun `rifiuta una playlist HLS`() {
        val targetDuration = """
            #EXTM3U
            #EXT-X-VERSION:3
            #EXT-X-TARGETDURATION:10
            #EXTINF:10.0,
            segmento1.ts
            """.trimIndent()
        val streamInf = """
            #EXTM3U
            #EXT-X-STREAM-INF:BANDWIDTH=800000
            http://server.esempio/variante.m3u8
            """.trimIndent()

        assertEquals(M3uFailure.HLS_PLAYLIST, failure(targetDuration))
        assertEquals(M3uFailure.HLS_PLAYLIST, failure(streamInf))
    }

    @Test
    fun `un testo senza EXTINF non e una lista`() {
        assertEquals(M3uFailure.NOT_A_LIST, failure("#EXTM3U\n# solo commenti\n"))
        assertEquals(M3uFailure.NOT_A_LIST, failure("testo qualsiasi\nsenza struttura\n"))
    }

    @Test
    fun `un contenuto binario non e una lista`() {
        assertEquals(M3uFailure.INVALID_TEXT, failure("#EXTM3U\n#EXTINF:-1,Con null\u0000\nhttp://server.esempio/x.mp4\n"))
    }

    @Test
    fun `un file oltre 5 MB viene rifiutato`() {
        val big = StringBuilder("#EXTM3U\n")
        val chunk = "#EXTINF:-1,Voce\nhttp://server.esempio/voce.mp4\n"
        while (big.length <= M3uParser.MAX_PLAYLIST_BYTES) {
            big.append(chunk)
        }

        assertEquals(M3uFailure.TOO_LARGE, failure(big.toString()))
    }

    @Test
    fun `le voci duplicate restano tutte`() {
        val parsed = entries(
            """
            #EXTM3U
            #EXTINF:-1 tvg-id="stesso",Prima copia
            http://server.esempio/prima.mp4
            #EXTINF:-1 tvg-id="stesso",Seconda copia
            http://server.esempio/seconda.mp4
            """.trimIndent(),
        )

        assertEquals(2, parsed.size)
        // Le due voci hanno lo stesso tvg-id: la disambiguazione avviene nella
        // costruzione del catalogo (M3uLibrary), non nel parser.
        assertEquals("stesso", parsed[0].tvgId)
        assertEquals("stesso", parsed[1].tvgId)
    }

    @Test
    fun `decode toglie il BOM dai byte`() {
        val bytes = "\uFEFF#EXTM3U\n#EXTINF:-1,Dai byte\nhttp://server.esempio/byte.mp4\n"
            .toByteArray(Charsets.UTF_8)

        val text = M3uParser.decode(bytes)

        assertTrue(text.startsWith("#EXTM3U"))
        assertEquals("Dai byte", entries(text).single().title)
    }

    @Test
    fun `le righe vuote non contano`() {
        val parsed = entries(
            "\n\n#EXTM3U\n\n#EXTINF:-1,Con spazi\n\nhttp://server.esempio/spazi.mp4\n\n",
        )

        assertEquals(1, parsed.size)
        assertEquals("Con spazi", parsed.single().title)
    }
}
