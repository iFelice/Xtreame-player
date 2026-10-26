package it.felixvision.tv.data.epg

import it.felixvision.tv.core.Clock
import it.felixvision.tv.core.SystemClock
import java.time.Instant
import java.time.LocalDate
import java.time.ZoneId
import java.time.format.DateTimeFormatter
import java.util.Base64
import java.util.Locale
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import kotlinx.coroutines.withContext
import kotlinx.coroutines.Dispatchers
import kotlinx.serialization.json.*
import okhttp3.HttpUrl.Companion.toHttpUrlOrNull
import okhttp3.OkHttpClient
import okhttp3.Request

data class EpgProgram(val title: String, val description: String, val start: Long, val end: Long, val hasArchive: Boolean)
data class EpgDay(val today: List<EpgProgram>, val tomorrow: List<EpgProgram>)

object EpgRules {
    fun decode(value: String?): String {
        if (value.isNullOrEmpty()) return ""
        return try { String(Base64.getDecoder().decode(value), Charsets.UTF_8).takeIf { it.isNotBlank() } ?: value } catch (_: Exception) { value }
    }
    fun parse(root: JsonElement): List<EpgProgram> {
        val list = when (root) { is JsonArray -> root; is JsonObject -> (root["epg_listings"] as? JsonArray) ?: (root["programs"] as? JsonArray) ?: JsonArray(emptyList()); else -> JsonArray(emptyList()) }
        return list.mapNotNull { e ->
            val o = e as? JsonObject ?: return@mapNotNull null
            fun str(vararg keys: String) = keys.firstNotNullOfOrNull { o[it]?.let { v -> when(v) { is JsonPrimitive -> v.contentOrNull; else -> null } } }
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
        return EpgDay(programs.sortedBy { it.start }.filter { belongs(it, today) }, programs.sortedBy { it.start }.filter { belongs(it, today.plusDays(1)) })
    }
    fun onAir(programs: List<EpgProgram>, nowMillis: Long): EpgProgram? = programs.firstOrNull { nowMillis / 1000 in it.start until it.end }
    fun progress(program: EpgProgram, nowMillis: Long): Float = ((nowMillis / 1000.0 - program.start) / (program.end - program.start)).toFloat().coerceIn(0f, 1f)
    fun time(epochSeconds: Long): String = DateTimeFormatter.ofPattern("HH:mm", Locale.ITALIAN).withZone(ZoneId.systemDefault()).format(Instant.ofEpochSecond(epochSeconds))
}

class ChannelEpgClient(private val http: OkHttpClient, private val clock: Clock = SystemClock, private val now: () -> Long = { clock.nowMillis() }) {
    private data class Entry(val expires: Long, val programs: List<EpgProgram>)
    private val cache = mutableMapOf<String, Entry>()
    private val locks = mutableMapOf<String, Mutex>()
    suspend fun load(server: String, username: String, password: String, streamId: String): List<EpgProgram> = withContext(Dispatchers.IO) {
        val key = "$server|$username|$streamId"
        locks.getOrPut(key) { Mutex() }.withLock {
            cache[key]?.takeIf { it.expires > now() }?.let { return@withLock it.programs }
            val base = server.toHttpUrlOrNull() ?: return@withLock emptyList()
            fun request(action: String, limit: String? = null): List<EpgProgram> {
                val b = base.newBuilder().addPathSegment("player_api.php").addQueryParameter("username", username).addQueryParameter("password", password).addQueryParameter("action", action).addQueryParameter("stream_id", streamId)
                limit?.let { b.addQueryParameter("limit", it) }
                return try { http.newCall(Request.Builder().url(b.build()).build()).execute().use { r -> if (!r.isSuccessful) emptyList() else EpgRules.parse(Json.parseToJsonElement(r.body.string())) } } catch (_: Exception) { emptyList() }
            }
            val values = request("get_simple_data_table").ifEmpty { request("get_short_epg", "50") }
            cache[key] = Entry(now() + 30 * 60_000L, values)
            values
        }
    }
}

fun redactStreamUrl(url: String): String = url.replace(Regex("(?i)(username|password)=([^&]*)"), "$1=<redacted>")
