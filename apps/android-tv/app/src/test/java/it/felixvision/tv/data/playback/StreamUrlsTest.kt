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
    fun `live senza formati dichiarati resta in ts`() {
        val url = StreamUrls.build(server, "demo", "demo", StreamTarget.Live("001", emptyList()))
        assertEquals("$base/live/demo/demo/001.ts", url)
    }

    /**
     * Regola nuova, con il motivo misurato: un `.ts` riaperto a metà su un
     * pannello che ignora il `Range` costa decine di secondi di download
     * scartato, un HLS no. Quindi con "Automatico" vince HLS quando c'è.
     */
    @Test
    fun `live automatico sceglie m3u8 quando l'account ammette sia ts sia m3u8`() {
        val url = StreamUrls.build(server, "demo", "demo", StreamTarget.Live("001", listOf("ts", "m3u8")))
        assertEquals("$base/live/demo/demo/001.m3u8", url)
    }

    @Test
    fun `live passa a m3u8 se esiste, altrimenti resta ts`() {
        val hls = StreamUrls.build(server, "demo", "demo", StreamTarget.Live("001", listOf("M3U8")))
        assertEquals("$base/live/demo/demo/001.m3u8", hls)

        val onlyTs = StreamUrls.build(server, "demo", "demo", StreamTarget.Live("001", listOf("ts")))
        assertEquals("$base/live/demo/demo/001.ts", onlyTs)

        val neither = StreamUrls.build(server, "demo", "demo", StreamTarget.Live("001", listOf("mp4")))
        assertEquals("$base/live/demo/demo/001.ts", neither)
    }

    @Test
    fun `la preferenza hls sceglie m3u8 solo se l'account lo ammette`() {
        val both = StreamUrls.build(
            server, "demo", "demo",
            StreamTarget.Live("001", listOf("ts", "m3u8"), preferredFormat = LiveStreamFormat.HLS),
        )
        assertEquals("$base/live/demo/demo/001.m3u8", both)

        // Canale solo in ts: la preferenza non inventa un formato che non c'è.
        val onlyTs = StreamUrls.build(
            server, "demo", "demo",
            StreamTarget.Live("001", listOf("ts"), preferredFormat = LiveStreamFormat.HLS),
        )
        assertEquals("$base/live/demo/demo/001.ts", onlyTs)
    }

    @Test
    fun `la preferenza ts vale solo se l'account ammette ts`() {
        // Account solo HLS: resta m3u8, come con "Automatico".
        val onlyHls = StreamUrls.build(
            server, "demo", "demo",
            StreamTarget.Live("001", listOf("m3u8"), preferredFormat = LiveStreamFormat.TS),
        )
        assertEquals("$base/live/demo/demo/001.m3u8", onlyHls)
    }

    @Test
    fun `automatico preferisce hls ma resta ts se hls non c'e`() {
        val both = StreamUrls.build(
            server, "demo", "demo",
            StreamTarget.Live("001", listOf("ts", "m3u8"), preferredFormat = LiveStreamFormat.AUTO),
        )
        assertEquals("$base/live/demo/demo/001.m3u8", both)

        val onlyTs = StreamUrls.build(
            server, "demo", "demo",
            StreamTarget.Live("001", listOf("ts"), preferredFormat = LiveStreamFormat.AUTO),
        )
        assertEquals("$base/live/demo/demo/001.ts", onlyTs)
    }

    @Test
    fun `la preferenza ts impone il flusso diretto`() {
        val forced = StreamUrls.build(
            server, "demo", "demo",
            StreamTarget.Live("001", listOf("ts", "m3u8"), preferredFormat = LiveStreamFormat.TS),
        )
        assertEquals("$base/live/demo/demo/001.ts", forced)
    }

    @Test
    fun `il formato alternativo esiste solo se l'account lo ammette`() {
        assertEquals(
            LiveStreamFormat.HLS,
            StreamUrls.alternateLiveFormat(LiveStreamFormat.TS, listOf("ts", "m3u8")),
        )
        assertEquals(
            LiveStreamFormat.TS,
            StreamUrls.alternateLiveFormat(LiveStreamFormat.HLS, listOf("ts", "m3u8")),
        )
        assertNull(StreamUrls.alternateLiveFormat(LiveStreamFormat.HLS, listOf("m3u8")))
        assertNull(StreamUrls.alternateLiveFormat(LiveStreamFormat.TS, listOf("ts")))
        // Con "Automatico" non c'è niente da scambiare: decide l'account.
        assertNull(StreamUrls.alternateLiveFormat(LiveStreamFormat.AUTO, listOf("ts", "m3u8")))
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
        val replay = "$base/timeshift/demo/segreta/60/2024-04-01:10-00/001.ts"

        val redactedLive = StreamUrls.redactStreamUrl(live)
        val redactedMovie = StreamUrls.redactStreamUrl(movie)
        val redactedSeries = StreamUrls.redactStreamUrl(series)
        val redactedReplay = StreamUrls.redactStreamUrl(replay)

        assertTrue(redactedLive.contains("/live/***/***/001.ts"))
        assertTrue(redactedMovie.contains("/movie/***/***/201.mp4"))
        assertTrue(redactedSeries.contains("/series/***/***/301.mkv"))
        assertTrue(redactedReplay.contains("/timeshift/***/***/60/2024-04-01:10-00/001.ts"))
        listOf(redactedLive, redactedMovie, redactedSeries, redactedReplay).forEach { redacted ->
            assertFalse(redacted.contains("demo"))
            assertFalse(redacted.contains("segreta"))
        }
    }

    @Test
    fun `timeshift usa il fuso del server e arrotonda la durata per eccesso`() {
        val epoch = java.time.Instant.parse("2024-03-31T01:30:00Z").epochSecond
        val rome = StreamUrls.buildCatchup(server, "demo", "demo", "001", epoch, 3_601L, "Europe/Rome", java.time.ZoneId.of("UTC"))
        val deviceUtc = StreamUrls.buildCatchup(server, "demo", "demo", "001", epoch, 3_601L, null, java.time.ZoneId.of("UTC"))
        assertEquals("$base/timeshift/demo/demo/61/2024-03-31:03-30/001.ts", rome)
        assertEquals("$base/timeshift/demo/demo/61/2024-03-31:01-30/001.ts", deviceUtc)
    }

    @Test
    fun `timeshift spostato arrotonda al minuto e usa la durata residua`() {
        val epoch = java.time.Instant.parse("2024-04-01T10:00:00Z").epochSecond
        val url = StreamUrls.buildShiftedCatchup(server, "demo", "demo", "001", epoch, 7_200L, 3_670L, "UTC", java.time.ZoneId.of("Europe/Rome"))
        assertEquals("$base/timeshift/demo/demo/59/2024-04-01:11-01/001.ts", url)
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
