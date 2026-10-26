package it.felixvision.tv.data.epg

import it.felixvision.tv.core.Clock
import it.felixvision.tv.core.SystemClock
import java.nio.charset.CodingErrorAction
import java.time.Instant
import java.time.LocalDate
import java.time.ZoneId
import java.time.format.DateTimeFormatter
import java.util.Base64
import java.util.Locale
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import kotlinx.coroutines.withContext
import kotlinx.serialization.json.*
import okhttp3.HttpUrl.Companion.toHttpUrlOrNull
import okhttp3.OkHttpClient
import okhttp3.Request

data class EpgProgram(val title: String, val description: String, val start: Long, val end: Long, val hasArchive: Boolean)
data class EpgDay(val today: List<EpgProgram>, val tomorrow: List<EpgProgram>)

object EpgRules {
    fun decode(value: String?): String {
        if (value.isNullOrEmpty()) return ""
        return try {
            val bytes = Base64.getDecoder().decode(value)
            Charsets.UTF_8.newDecoder().onMalformedInput(CodingErrorAction.REPORT).onUnmappableCharacter(CodingErrorAction.REPORT).decode(java.nio.ByteBuffer.wrap(bytes)).toString().also { decoded ->
                require(decoded.none { it.isISOControl() && !it.isWhitespace() })
            }
        } catch (_: Exception) { value }
    }

    fun parse(root: JsonElement): List<EpgProgram> {
        val list = when (root) { is JsonArray -> root; is JsonObject -> (root["epg_listings"] as? JsonArray) ?: (root["programs"] as? JsonArray) ?: JsonArray(emptyList()); else -> JsonArray(emptyList()) }
        return list.mapNotNull { e ->
            val o = e as? JsonObject ?: return@mapNotNull null
            fun str(vararg keys: String): String? = keys.firstNotNullOfOrNull { o[it]?.let { v -> (v as? JsonPrimitive)?.contentOrNull } }
            fun epoch(vararg keys: String): Long? = str(*keys)?.toLongOrNull() ?: str(*keys)?.let { runCatching { Instant.parse(it).epochSecond }.getOrNull() }
            val start = epoch("start_timestamp", "start") ?: return@mapNotNull null
            val end = epoch("stop_timestamp", "end") ?: return@mapNotNull null
            if (end <= start) return@mapNotNull null
            EpgProgram(decode(str("title")), decode(str("description")), start, end, str("has_archive")?.let { it == "1" || it.equals("true", true) } ?: false)
        }.sortedBy { it.start }
    }

    fun days(programs: List<EpgProgram>, nowMillis: Long, zone: ZoneId = ZoneId.systemDefault()): EpgDay {
        val today = Instant.ofEpochMilli(nowMillis).atZone(zone).toLocalDate()
        fun belongs(p: EpgProgram, d: LocalDate) = Instant.ofEpochSecond(p.start).atZone(zone).toLocalDate() == d
        val sorted = programs.sortedBy { it.start }
        return EpgDay(sorted.filter { belongs(it, today) }, sorted.filter { belongs(it, today.plusDays(1)) })
    }
    fun onAir(programs: List<EpgProgram>, nowMillis: Long): EpgProgram? = programs.firstOrNull { nowMillis / 1000 in it.start until it.end }
    fun initialFocus(programs: List<EpgProgram>, nowMillis: Long): EpgProgram? = onAir(programs, nowMillis)
        ?: programs.filter { it.start * 1000L > nowMillis }.minByOrNull { it.start }
        ?: programs.minByOrNull { it.start }
    fun progress(program: EpgProgram, nowMillis: Long): Float = ((nowMillis / 1000.0 - program.start) / (program.end - program.start)).toFloat().coerceIn(0f, 1f)
    fun time(epochSeconds: Long, zone: ZoneId = ZoneId.systemDefault()): String = DateTimeFormatter.ofPattern("HH:mm", Locale.ITALIAN).withZone(zone).format(Instant.ofEpochSecond(epochSeconds))
}

/** Single mutex protects both cache and in-flight requests; concurrent opens for one channel coalesce. */
class ChannelEpgClient(private val http: OkHttpClient, private val clock: Clock = SystemClock) {
    private data class Entry(val expires: Long, val programs: List<EpgProgram>)
    private val mutex = Mutex()
    private val cache = mutableMapOf<String, Entry>()

    suspend fun load(server: String, username: String, password: String, streamId: String): List<EpgProgram> = withContext(Dispatchers.IO) {
        val key = "$server|$username|$streamId"
        mutex.withLock {
            cache[key]?.takeIf { it.expires > clock.nowMillis() }?.let { return@withLock it.programs }
            val base = server.toHttpUrlOrNull() ?: return@withLock emptyList()
            fun request(action: String, limit: String? = null): List<EpgProgram> = try {
                val b = base.newBuilder().addPathSegment("player_api.php").addQueryParameter("username", username).addQueryParameter("password", password).addQueryParameter("action", action).addQueryParameter("stream_id", streamId)
                limit?.let { b.addQueryParameter("limit", it) }
                http.newCall(Request.Builder().url(b.build()).build()).execute().use { r -> if (!r.isSuccessful) emptyList() else EpgRules.parse(Json.parseToJsonElement(r.body.string())) }
            } catch (_: Exception) { emptyList() }
            val programs = request("get_simple_data_table").ifEmpty { request("get_short_epg", "50") }
            val ttl = if (programs.isEmpty()) EMPTY_TTL_MILLIS else PROGRAM_TTL_MILLIS
            cache[key] = Entry(clock.nowMillis() + ttl, programs)
            programs
        }
    }
    companion object { const val PROGRAM_TTL_MILLIS = 30 * 60_000L; const val EMPTY_TTL_MILLIS = 2 * 60_000L }
}
