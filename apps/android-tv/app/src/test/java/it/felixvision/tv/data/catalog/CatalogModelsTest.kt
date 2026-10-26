package it.felixvision.tv.data.catalog

import it.felixvision.tv.core.FvpJson
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class CatalogModelsTest {

    private val json = FvpJson

    @Test
    fun `stream_id numerico e testuale, added testuale, campi null tollerati`() {
        val vodJson = """
            [
              {"name":"Film Demo","stream_id":201,"stream_icon":"http://server.esempio:8080/icon.jpg","category_id":"10","rating":8,"year":null,"added":"1684938210","container_extension":"m3u8"},
              {"name":"Altro","stream_id":"202","stream_icon":null,"category_id":10,"rating":"7.5","year":"2024","added":1684938210,"container_extension":null}
            ]
        """.trimIndent()
        val list = json.decodeFromString<List<VodStream>>(vodJson)
        assertEquals(2, list.size)
        assertEquals("201", list[0].streamId)
        assertEquals("202", list[1].streamId)
        assertEquals("10", list[0].categoryId)
        assertEquals("10", list[1].categoryId)
        assertEquals("1684938210", list[0].added)
        assertEquals("1684938210", list[1].added)
        // campi null tollerati
        assertNull(list[0].year)
        assertNull(list[1].containerExtension)
        assertNotNull(list[0].rating)
    }

    @Test
    fun `live stream con num mancante e tv_archive assente`() {
        val liveJson = """
            [{"name":"Canale 1","stream_id":"101","category_id":"1","stream_icon":"http://server.esempio:8080/logo.jpg","epg_channel_id":null}]
        """.trimIndent()
        val list = json.decodeFromString<List<LiveStream>>(liveJson)
        assertEquals(1, list.size)
        assertEquals("101", list[0].streamId)
        assertNull(list[0].num)
        assertNull(list[0].tvArchive)
    }

    @Test
    fun `live stream conserva disponibilita e durata archive`() {
        val streams = json.decodeFromString<List<LiveStream>>(
            """[{"name":"Canale 1","stream_id":"001","tv_archive":"1","tv_archive_duration":"7"}]""",
        )
        assertEquals(1, streams.single().tvArchive)
        assertEquals(7, streams.single().tvArchiveDuration)
    }

    @Test
    fun `series con last_modified testuale e serie_id numerico`() {
        val seriesJson = """
            [
              {"name":"Serie A","series_id":301,"cover":"http://server.esempio:8080/cover.jpg","category_id":"20","last_modified":"1684938210","rating":"8.5"},
              {"name":"Serie B","series_id":"302","cover":null,"category_id":20,"last_modified":1684938220,"rating":null}
            ]
        """.trimIndent()
        val list = json.decodeFromString<List<SeriesItem>>(seriesJson)
        assertEquals("301", list[0].seriesId)
        assertEquals("302", list[1].seriesId)
        assertEquals("1684938210", list[0].lastModified)
        assertEquals("1684938220", list[1].lastModified)
    }

    @Test
    fun `category_id flessibile int o stringa, parent_id opzionale`() {
        val catJson = """[{"category_id":"1","category_name":"Film","parent_id":0},{"category_id":2,"category_name":"Serie"}]"""
        val list = json.decodeFromString<List<Category>>(catJson)
        assertEquals("1", list[0].categoryId)
        assertEquals("2", list[1].categoryId)
        assertEquals("0", list[0].parentId)
        assertNull(list[1].parentId)
    }

    @Test
    fun `ordine Novità per added e last_modified decrescente`() {
        val vods = listOf(
            VodStream(name = "A", streamId = "1", added = "100", categoryId = "10"),
            VodStream(name = "B", streamId = "2", added = "300", categoryId = "10"),
            VodStream(name = "C", streamId = "3", added = "200", categoryId = "10"),
        )
        val ordered = CatalogOrdering.recentVodStreams(vods, limit = 40)
        assertEquals("2", ordered[0].streamId)
        assertEquals("3", ordered[1].streamId)
        assertEquals("1", ordered[2].streamId)

        val series = listOf(
            SeriesItem(name = "S1", seriesId = "1", lastModified = "100", categoryId = "20"),
            SeriesItem(name = "S2", seriesId = "2", lastModified = "300", categoryId = "20"),
        )
        val orderedSeries = CatalogOrdering.recentSeries(series, limit = 40)
        assertEquals("2", orderedSeries[0].seriesId)

        // Limite 40
        val many = (1..50).map { i -> VodStream(name = "F$i", streamId = "$i", added = "$i", categoryId = "10") }
        assertEquals(40, CatalogOrdering.recentVodStreams(many, 40).size)
    }

    @Test
    fun `vod_info e series_info campi opzionali tollerati`() {
        val vodInfoJson = """{"info":{"name":"Film","plot":null,"rating":"8.0"},"movie_data":{"stream_id":201,"name":"Film","container_extension":"m3u8"}}"""
        val vodInfo = json.decodeFromString<VodInfoResponse>(vodInfoJson)
        assertEquals("Film", vodInfo.info?.name)
        assertNull(vodInfo.info?.plot)

        val seriesInfoJson = """{"seasons":[{"season_number":"1","name":"S1","episode_count":"2"}],"info":{"name":"Serie"},"episodes":{"1":[{"id":"401","episode_num":1,"title":"Ep1","container_extension":"m3u8"}]}}"""
        val seriesInfo = json.decodeFromString<SeriesInfoResponse>(seriesInfoJson)
        assertEquals(1, seriesInfo.seasons[0].seasonNumber)
        assertEquals(2, seriesInfo.seasons[0].episodeCount)
        assertEquals("Ep1", seriesInfo.episodes["1"]?.first()?.title)
    }
}
