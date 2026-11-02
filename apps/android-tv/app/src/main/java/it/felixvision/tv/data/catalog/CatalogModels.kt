package it.felixvision.tv.data.catalog

import kotlinx.serialization.KSerializer
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.descriptors.PrimitiveKind
import kotlinx.serialization.descriptors.PrimitiveSerialDescriptor
import kotlinx.serialization.descriptors.SerialDescriptor
import kotlinx.serialization.encoding.Decoder
import kotlinx.serialization.encoding.Encoder
import kotlinx.serialization.json.JsonDecoder
import kotlinx.serialization.json.JsonElement
import kotlinx.serialization.json.JsonNull
import kotlinx.serialization.json.JsonPrimitive
import kotlinx.serialization.json.doubleOrNull
import kotlinx.serialization.json.longOrNull

/**
 * Modelli del catalogo Xtream. Ogni campo è tollerante: numeri come testo e
 * viceversa, campi assenti o null (come già fa FvpJson con ignoreUnknownKeys,
 * isLenient, coerceInputValues).
 *
 * La serializzazione usa deserializzatori flessibili per gli identificativi
 * che in alcuni pannelli arrivano come numeri e in altri come stringhe.
 */

// --- Serializzatori flessibili ---

object FlexibleStringSerializer : KSerializer<String> {
    override val descriptor: SerialDescriptor =
        PrimitiveSerialDescriptor("FlexibleString", PrimitiveKind.STRING)

    override fun deserialize(decoder: Decoder): String {
        if (decoder is JsonDecoder) {
            val element = decoder.decodeJsonElement()
            return when {
                element is JsonNull -> ""
                element is JsonPrimitive && element.isString -> element.content
                element is JsonPrimitive -> element.content
                else -> ""
            }
        }
        return decoder.decodeString()
    }

    override fun serialize(encoder: Encoder, value: String) = encoder.encodeString(value)
}

object NullableFlexibleStringSerializer : KSerializer<String?> {
    override val descriptor: SerialDescriptor =
        PrimitiveSerialDescriptor("NullableFlexibleString", PrimitiveKind.STRING)

    override fun deserialize(decoder: Decoder): String? {
        if (decoder is JsonDecoder) {
            val element = decoder.decodeJsonElement()
            if (element is JsonNull) return null
            if (element is JsonPrimitive) return element.content
            return null
        }
        return try { decoder.decodeString() } catch (_: Exception) { null }
    }

    override fun serialize(encoder: Encoder, value: String?) {
        if (value == null) encoder.encodeNull() else encoder.encodeString(value)
    }
}

object FlexibleIntSerializer : KSerializer<Int> {
    override val descriptor = PrimitiveSerialDescriptor("FlexibleInt", PrimitiveKind.INT)
    override fun deserialize(decoder: Decoder): Int {
        if (decoder is JsonDecoder) {
            val el = decoder.decodeJsonElement()
            if (el is JsonPrimitive) {
                el.longOrNull?.let { return it.toInt() }
                el.doubleOrNull?.let { return it.toInt() }
                el.content.toIntOrNull()?.let { return it }
                el.content.toLongOrNull()?.let { return it.toInt() }
                return 0
            }
            return 0
        }
        return decoder.decodeInt()
    }

    override fun serialize(encoder: Encoder, value: Int) = encoder.encodeInt(value)
}

object NullableFlexibleIntSerializer : KSerializer<Int?> {
    override val descriptor = PrimitiveSerialDescriptor("NullableFlexibleInt", PrimitiveKind.INT)
    override fun deserialize(decoder: Decoder): Int? {
        if (decoder is JsonDecoder) {
            val el = decoder.decodeJsonElement()
            if (el is JsonNull) return null
            if (el is JsonPrimitive) {
                el.longOrNull?.let { return it.toInt() }
                el.content.toIntOrNull()?.let { return it }
                return null
            }
            return null
        }
        return try { decoder.decodeInt() } catch (_: Exception) { null }
    }

    override fun serialize(encoder: Encoder, value: Int?) {
        if (value == null) encoder.encodeNull() else encoder.encodeInt(value)
    }
}

object FlexibleLongSerializer : KSerializer<Long> {
    override val descriptor = PrimitiveSerialDescriptor("FlexibleLong", PrimitiveKind.LONG)
    override fun deserialize(decoder: Decoder): Long {
        if (decoder is JsonDecoder) {
            val el = decoder.decodeJsonElement()
            if (el is JsonPrimitive) {
                el.longOrNull?.let { return it }
                el.doubleOrNull?.let { return it.toLong() }
                el.content.toLongOrNull()?.let { return it }
                return 0L
            }
            return 0L
        }
        return decoder.decodeLong()
    }

    override fun serialize(encoder: Encoder, value: Long) = encoder.encodeLong(value)
}

object NullableFlexibleLongSerializer : KSerializer<Long?> {
    override val descriptor = PrimitiveSerialDescriptor("NullableFlexibleLong", PrimitiveKind.LONG)
    override fun deserialize(decoder: Decoder): Long? {
        if (decoder is JsonDecoder) {
            val el = decoder.decodeJsonElement()
            if (el is JsonNull) return null
            if (el is JsonPrimitive) {
                el.longOrNull?.let { return it }
                el.content.toLongOrNull()?.let { return it }
                return null
            }
            return null
        }
        return try { decoder.decodeLong() } catch (_: Exception) { null }
    }

    override fun serialize(encoder: Encoder, value: Long?) {
        if (value == null) encoder.encodeNull() else encoder.encodeLong(value)
    }
}

// --- Modelli ---

@Serializable
data class Category(
    @Serializable(with = FlexibleStringSerializer::class)
    @SerialName("category_id") val categoryId: String = "",
    @SerialName("category_name") val categoryName: String? = null,
    @Serializable(with = NullableFlexibleStringSerializer::class)
    @SerialName("parent_id") val parentId: String? = null,
)

@Serializable
data class LiveStream(
    @Serializable(with = NullableFlexibleIntSerializer::class)
    val num: Int? = null,
    val name: String = "",
    @SerialName("stream_type") val streamType: String? = null,
    @Serializable(with = FlexibleStringSerializer::class)
    @SerialName("stream_id") val streamId: String = "",
    @Serializable(with = NullableFlexibleStringSerializer::class)
    @SerialName("stream_icon") val streamIcon: String? = null,
    @Serializable(with = NullableFlexibleStringSerializer::class)
    @SerialName("category_id") val categoryId: String? = null,
    // Elenco completo delle categorie del contenuto: alcuni pannelli (XUI e
    // simili) lo mandano accanto a `category_id`, che resta la principale.
    @Serializable(with = FlexibleStringListSerializer::class)
    @SerialName("category_ids") val categoryIds: List<String> = emptyList(),
    @Serializable(with = NullableFlexibleStringSerializer::class)
    @SerialName("epg_channel_id") val epgChannelId: String? = null,
    @Serializable(with = NullableFlexibleStringSerializer::class) val added: String? = null,
    @Serializable(with = NullableFlexibleIntSerializer::class) @SerialName("tv_archive") val tvArchive: Int? = null,
    @Serializable(with = NullableFlexibleIntSerializer::class) @SerialName("tv_archive_duration") val tvArchiveDuration: Int? = null,
)

@Serializable
data class VodStream(
    @Serializable(with = NullableFlexibleIntSerializer::class)
    val num: Int? = null,
    val name: String = "",
    @SerialName("stream_type") val streamType: String? = null,
    @Serializable(with = FlexibleStringSerializer::class)
    @SerialName("stream_id") val streamId: String = "",
    @Serializable(with = NullableFlexibleStringSerializer::class)
    @SerialName("stream_icon") val streamIcon: String? = null,
    // Alcuni pannelli inviano rating come numero, altri come stringa, altri assente
    @Serializable(with = NullableFlexibleStringSerializer::class) val rating: String? = null,
    @Serializable(with = NullableFlexibleStringSerializer::class) val added: String? = null,
    @Serializable(with = NullableFlexibleStringSerializer::class)
    @SerialName("category_id") val categoryId: String? = null,
    // Elenco completo delle categorie del contenuto (vedi LiveStream).
    @Serializable(with = FlexibleStringListSerializer::class)
    @SerialName("category_ids") val categoryIds: List<String> = emptyList(),
    @Serializable(with = NullableFlexibleStringSerializer::class)
    @SerialName("container_extension") val containerExtension: String? = null,
    @Serializable(with = NullableFlexibleStringSerializer::class) val year: String? = null,
)

@Serializable
data class SeriesItem(
    @Serializable(with = NullableFlexibleIntSerializer::class)
    val num: Int? = null,
    val name: String = "",
    @Serializable(with = FlexibleStringSerializer::class)
    @SerialName("series_id") val seriesId: String = "",
    @Serializable(with = NullableFlexibleStringSerializer::class)
    val cover: String? = null,
    @Serializable(with = NullableFlexibleStringSerializer::class)
    val plot: String? = null,
    @Serializable(with = NullableFlexibleStringSerializer::class)
    val genre: String? = null,
    @Serializable(with = NullableFlexibleStringSerializer::class)
    @SerialName("releaseDate") val releaseDate: String? = null,
    @Serializable(with = NullableFlexibleStringSerializer::class)
    @SerialName("last_modified") val lastModified: String? = null,
    @Serializable(with = NullableFlexibleStringSerializer::class)
    val rating: String? = null,
    @Serializable(with = NullableFlexibleStringSerializer::class)
    @SerialName("category_id") val categoryId: String? = null,
    // Elenco completo delle categorie del contenuto (vedi LiveStream).
    @Serializable(with = FlexibleStringListSerializer::class)
    @SerialName("category_ids") val categoryIds: List<String> = emptyList(),
    @Serializable(with = NullableFlexibleStringSerializer::class) val added: String? = null,
)

@Serializable
data class VodInfoResponse(
    val info: VodInfoDetails? = null,
    @SerialName("movie_data") val movieData: VodMovieData? = null,
)

@Serializable
data class VodInfoDetails(
    @Serializable(with = NullableFlexibleStringSerializer::class) val name: String? = null,
    @Serializable(with = NullableFlexibleStringSerializer::class) @SerialName("movie_image") val movieImage: String? = null,
    @Serializable(with = NullableFlexibleStringSerializer::class) @SerialName("cover_big") val coverBig: String? = null,
    @Serializable(with = NullableFlexibleStringSerializer::class) val releasedate: String? = null,
    @Serializable(with = NullableFlexibleIntSerializer::class) @SerialName("duration_secs") val durationSecs: Int? = null,
    @Serializable(with = NullableFlexibleStringSerializer::class) val duration: String? = null,
    @Serializable(with = NullableFlexibleStringSerializer::class) val rating: String? = null,
    @Serializable(with = NullableFlexibleStringSerializer::class) val genre: String? = null,
    @Serializable(with = NullableFlexibleStringSerializer::class) val plot: String? = null,
)

@Serializable
data class VodMovieData(
    @Serializable(with = FlexibleStringSerializer::class) @SerialName("stream_id") val streamId: String = "",
    val name: String? = null,
    @Serializable(with = NullableFlexibleStringSerializer::class) @SerialName("container_extension") val containerExtension: String? = null,
)

@Serializable
data class SeriesInfoResponse(
    val seasons: List<Season> = emptyList(),
    val info: SeriesInfoDetails? = null,
    val episodes: Map<String, List<Episode>> = emptyMap(),
)

@Serializable
data class Season(
    @Serializable(with = FlexibleIntSerializer::class) @SerialName("season_number") val seasonNumber: Int = 0,
    val name: String? = null,
    @Serializable(with = NullableFlexibleIntSerializer::class) @SerialName("episode_count") val episodeCount: Int? = null,
    @Serializable(with = NullableFlexibleStringSerializer::class) val cover: String? = null,
)

@Serializable
data class SeriesInfoDetails(
    @Serializable(with = NullableFlexibleStringSerializer::class) val name: String? = null,
    @Serializable(with = NullableFlexibleStringSerializer::class) val cover: String? = null,
    @Serializable(with = NullableFlexibleStringSerializer::class) val plot: String? = null,
    @Serializable(with = NullableFlexibleStringSerializer::class) val genre: String? = null,
    @Serializable(with = NullableFlexibleStringSerializer::class) @SerialName("releaseDate") val releaseDate: String? = null,
    @Serializable(with = NullableFlexibleStringSerializer::class) val rating: String? = null,
    @Serializable(with = NullableFlexibleStringSerializer::class) @SerialName("backdrop_path") val backdropPath: String? = null,
)

@Serializable
data class Episode(
    @Serializable(with = FlexibleStringSerializer::class) val id: String = "",
    @Serializable(with = FlexibleStringSerializer::class) @SerialName("episode_num") val episodeNum: String = "",
    val title: String = "",
    @Serializable(with = NullableFlexibleStringSerializer::class) @SerialName("container_extension") val containerExtension: String? = null,
    val info: EpisodeInfo? = null,
)

@Serializable
data class EpisodeInfo(
    @Serializable(with = NullableFlexibleStringSerializer::class) val plot: String? = null,
    @Serializable(with = NullableFlexibleIntSerializer::class) @SerialName("duration_secs") val durationSecs: Int? = null,
    @Serializable(with = NullableFlexibleStringSerializer::class) val duration: String? = null,
    @Serializable(with = NullableFlexibleStringSerializer::class) @SerialName("movie_image") val movieImage: String? = null,
    @Serializable(with = NullableFlexibleStringSerializer::class) val rating: String? = null,
    @Serializable(with = NullableFlexibleStringSerializer::class) val releasedate: String? = null,
)

/**
 * Catalogo completo come restituito dalle sei chiamate sequenziali.
 */
@Serializable
data class Catalog(
    @SerialName("live_categories") val liveCategories: List<Category> = emptyList(),
    @SerialName("live_streams") val liveStreams: List<LiveStream> = emptyList(),
    @SerialName("vod_categories") val vodCategories: List<Category> = emptyList(),
    @SerialName("vod_streams") val vodStreams: List<VodStream> = emptyList(),
    @SerialName("series_categories") val seriesCategories: List<Category> = emptyList(),
    @SerialName("series") val series: List<SeriesItem> = emptyList(),
    @SerialName("updated_at_millis") val updatedAtMillis: Long = 0L,
)

/**
 * Persistenza su disco legata a server+utente.
 */
@Serializable
data class CachedCatalog(
    val server: String = "",
    val username: String = "",
    val updatedAtMillis: Long = 0L,
    val catalog: Catalog = Catalog(),
)
