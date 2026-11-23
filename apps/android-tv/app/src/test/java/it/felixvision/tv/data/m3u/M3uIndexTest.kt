package it.felixvision.tv.data.m3u

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Indice delle liste: riconoscimento dal contenuto (non dall'estensione),
 * righe vuote, commenti, doppioni, limite di 64 KB.
 *
 * Valori dimostrativi: `http://server.esempio`.
 */
class M3uIndexTest {

    @Test
    fun `una lista si riconosce dal contenuto e non dall'estensione`() {
        assertTrue(
            M3uIndex.looksLikePlaylist(
                "#EXTM3U\n#EXTINF:-1,Uno\nhttp://server.esempio/uno.mp4\n",
            ),
        )
        // BOM e righe vuote in testa non nascondono l'intestazione.
        assertTrue(M3uIndex.looksLikePlaylist("\uFEFF\n\n#EXTM3U\n#EXTINF:-1,Due\n"))
        assertFalse(M3uIndex.looksLikePlaylist("http://server.esempio/lista1.m3u8\n"))
    }

    @Test
    fun `indice con righe vuote commenti doppioni e indirizzi relativi`() {
        val result = M3uIndex.parse(
            """
            # commento da ignorare
            http://server.esempio/lista1.m3u8

            http://server.esempio/lista2.m3u8
            http://server.esempio/lista1.m3u8
            /lista-relativa.m3u8
            lista-senza-schema.m3u8
              http://server.esempio/lista3.m3u8
            """.trimIndent(),
        )

        val urls = (result as M3uIndexResult.Success).urls
        assertEquals(
            listOf(
                "http://server.esempio/lista1.m3u8",
                "http://server.esempio/lista2.m3u8",
                "http://server.esempio/lista3.m3u8",
            ),
            urls,
        )
    }

    @Test
    fun `un indice senza indirizzi non e valido`() {
        val result = M3uIndex.parse("# solo commenti\n\n   \n")

        assertEquals(M3uIndexResult.Failure(M3uIndexFailure.EMPTY), result)
    }

    @Test
    fun `un indice oltre 64 KB viene scartato`() {
        val big = "http://server.esempio/lista.m3u8\n".repeat(4_000)

        val result = M3uIndex.parse(big)

        assertEquals(M3uIndexResult.Failure(M3uIndexFailure.TOO_LARGE), result)
    }

    @Test
    fun `un indice con byte non testuali viene scartato`() {
        val result = M3uIndex.parse("http://server.esempio/lista.m3u8\u0000\n")

        assertEquals(M3uIndexResult.Failure(M3uIndexFailure.INVALID_TEXT), result)
    }

    @Test
    fun `il BOM all'inizio non rompe l'indice`() {
        val result = M3uIndex.parse("\uFEFFhttp://server.esempio/lista1.m3u8\n")

        val urls = (result as M3uIndexResult.Success).urls
        assertEquals(listOf("http://server.esempio/lista1.m3u8"), urls)
    }
}
