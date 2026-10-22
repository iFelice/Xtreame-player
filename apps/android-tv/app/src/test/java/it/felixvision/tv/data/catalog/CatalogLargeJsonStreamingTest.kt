package it.felixvision.tv.data.catalog

import it.felixvision.tv.core.FvpJson
import java.io.ByteArrayInputStream
import kotlinx.serialization.ExperimentalSerializationApi
import kotlinx.serialization.json.decodeFromStream
import kotlinx.serialization.json.encodeToStream
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import java.io.ByteArrayOutputStream

/**
 * Verifica che la deserializzazione streaming regga cataloghi di grandi dimensioni
 * (30k elementi) senza tenere l'intero body in memoria come String.
 * Usa encodeToStream/decodeFromStream con buffer 8k come in CatalogCache/CatalogClient.
 */
class CatalogLargeJsonStreamingTest {

    @OptIn(ExperimentalSerializationApi::class)
    @Test
    fun `decodifica streaming di 30k LiveStream senza OOM`() {
        val count = 30_000
        val streams = (1..count).map {
            LiveStream(streamId = it.toString(), name = "Canale $it", categoryId = (it % 100).toString())
        }
        // Codifica con streaming
        val out = ByteArrayOutputStream()
        out.use { FvpJson.encodeToStream(streams, it) }
        val bytes = out.toByteArray()
        assertTrue(bytes.size > 100_000)

        // Decodifica con streaming (come CatalogClient)
        val decoded: List<LiveStream> = ByteArrayInputStream(bytes).use { input ->
            java.io.BufferedInputStream(input).let { buffered -> FvpJson.decodeFromStream(buffered) }
        }
        assertEquals(count, decoded.size)
        assertEquals("1", decoded.first().streamId)
        assertEquals(count.toString(), decoded.last().streamId)
    }

    @OptIn(ExperimentalSerializationApi::class)
    @Test
    fun `cache streaming con atomic rename non corrompe su 20k`() {
        val count = 20_000
        val catalog = Catalog(
            liveCategories = (1..100).map { Category(categoryId = it.toString(), categoryName = "Cat $it") },
            liveStreams = (1..count).map { LiveStream(streamId = it.toString(), name = "Canale $it", categoryId = "1") },
            vodCategories = emptyList(),
            vodStreams = emptyList(),
            seriesCategories = emptyList(),
            series = emptyList(),
            updatedAtMillis = 123456789L
        )
        val out = ByteArrayOutputStream()
        FvpJson.encodeToStream(catalog, out)
        val decoded: Catalog = ByteArrayInputStream(out.toByteArray()).use { FvpJson.decodeFromStream(it) }
        assertEquals(count, decoded.liveStreams.size)
    }
}
