package it.felixvision.tv.data.playback

import it.felixvision.tv.data.xtream.ServerAddress
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class StreamUrlsTest {

    private val server = "http://server.esempio:8080"
    private val base = ServerAddress.normalize(server) ?: error("server di test non valido")

    @Test
    fun `live predefinito in ts`() {
        val url = StreamUrls.build(server, "demo", "demo", StreamTarget.Live("001", emptyList()))
        assertEquals("$base/live/demo/demo/001.ts", url)
    }

    @Test
    fun `live resta ts quando l'account ammette sia ts sia m3u8`() {
        val url = StreamUrls.build(server, "demo", "demo", StreamTarget.Live("001", listOf("ts", "m3u8")))
        assertEquals("$base/live/demo/demo/001.ts", url)
    }

    @Test
    fun `live passa a m3u8 solo se manca ts ed esiste m3u8`() {
        val hls = StreamUrls.build(server, "demo", "demo", StreamTarget.Live("001", listOf("M3U8")))
        assertEquals("$base/live/demo/demo/001.m3u8", hls)

        val neither = StreamUrls.build(server, "demo", "demo", StreamTarget.Live("001", listOf("mp4")))
        assertEquals("$base/live/demo/demo/001.ts", neither)
    }

    @Test
    fun `film usa container_extension con default mp4`() {
        val mkv = StreamUrls.build(
            server,
            "demo",
            "demo",
            StreamTarget.Movie("201", containerExtension = ".mkv"),
        )
        assertEquals("$base/movie/demo/demo/201.mkv", mkv)

        val missing = StreamUrls.build(server, "demo", "demo", StreamTarget.Movie("201"))
        assertEquals("$base/movie/demo/demo/201.mp4", missing)
    }

    @Test
    fun `episodio usa container_extension con default mp4`() {
        val avi = StreamUrls.build(
            server,
            "demo",
            "demo",
            StreamTarget.Episode("301", containerExtension = "avi"),
        )
        assertEquals("$base/series/demo/demo/301.avi", avi)

        val blank = StreamUrls.build(
            server,
            "demo",
            "demo",
            StreamTarget.Episode("301", containerExtension = "  "),
        )
        assertEquals("$base/series/demo/demo/301.mp4", blank)
    }

    @Test
    fun `credenziali e identificativo sono codificati nel percorso`() {
        val url = StreamUrls.build(
            server,
            "us er",
            "p@ss/word",
            StreamTarget.Movie("a b", containerExtension = "mp4"),
        )
        assertEquals("$base/movie/us%20er/p%40ss%2Fword/a%20b.mp4", url)
        assertFalse(url!!.contains("p@ss/word"))
    }

    @Test
    fun `credenziali vuote non producono url`() {
        assertNull(StreamUrls.build(server, "", "demo", StreamTarget.Live("1", emptyList())))
        assertNull(StreamUrls.build(server, "demo", "", StreamTarget.Live("1", emptyList())))
    }

    @Test
    fun `server non valido non produce url`() {
        assertNull(StreamUrls.build("", "demo", "demo", StreamTarget.Live("1", emptyList())))
    }

    @Test
    fun `redactStreamUrl nasconde utente e password in live movie series`() {
        val live = "$base/live/demo/segreta/001.ts"
        val movie = "$base/movie/demo/segreta/201.mp4"
        val series = "$base/series/demo/segreta/301.mkv"

        val redactedLive = StreamUrls.redactStreamUrl(live)
        val redactedMovie = StreamUrls.redactStreamUrl(movie)
        val redactedSeries = StreamUrls.redactStreamUrl(series)

        assertTrue(redactedLive.contains("/live/***/***/001.ts"))
        assertTrue(redactedMovie.contains("/movie/***/***/201.mp4"))
        assertTrue(redactedSeries.contains("/series/***/***/301.mkv"))
        listOf(redactedLive, redactedMovie, redactedSeries).forEach { redacted ->
            assertFalse(redacted.contains("demo"))
            assertFalse(redacted.contains("segreta"))
        }
    }

    @Test
    fun `redactStreamUrl gestisce valori assenti`() {
        assertEquals("", StreamUrls.redactStreamUrl(null))
        assertEquals("", StreamUrls.redactStreamUrl(""))
        assertEquals(
            "http://server.esempio:8080/player_api.php",
            StreamUrls.redactStreamUrl("http://server.esempio:8080/player_api.php"),
        )
    }
}
