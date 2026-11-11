package it.felixvision.tv.data.epg

import it.felixvision.tv.core.Clock
import it.felixvision.tv.core.SystemClock
import java.io.IOException
import java.nio.charset.CodingErrorAction
import java.time.Instant
import java.time.LocalDate
import java.time.LocalDateTime
import java.time.ZoneId
import java.time.format.DateTimeFormatter
import java.util.Base64
import java.util.Locale
import java.util.concurrent.ConcurrentHashMap
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.suspendCancellableCoroutine
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import kotlinx.coroutines.withContext
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.*
import okhttp3.Call
import okhttp3.Callback
import okhttp3.HttpUrl.Companion.toHttpUrlOrNull
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.Response

@Serializable
data class EpgProgram(val title: String, val description: String, val start: Long, val end: Long, val hasArchive: Boolean)
data class EpgDay(val today: List<EpgProgram>, val tomorrow: List<EpgProgram>)

object EpgRules {
    fun decode(value: String?): String {
        if (value.isNullOrEmpty()) return ""
        return try {
            val bytes = Base64.getDecoder().decode(value)
            Charsets.UTF_8.newDecoder().onMalformedInput(CodingErrorAction.REPORT).onUnmappableCharacter(CodingErrorAction.REPORT).decode(java.nio.ByteBuffer.wrap(bytes)).toString().also { decoded ->
                require(decoded.none { it.isISOControl() })
            }
        } catch (_: Exception) { value }
    }

    /**
     * Rende affidabili i dati EPG del server: un solo programma per istante
     * iniziale, nessuna sovrapposizione e ordine cronologico stabile.
     */
    fun normalize(programs: List<EpgProgram>): List<EpgProgram> {
        val exactDuplicates = LinkedHashMap<Triple<Long, Long, String>, EpgProgram>()
        for (program in programs) {
            if (program.end <= program.start) continue
            val key = Triple(program.start, program.end, program.title)
            val previous = exactDuplicates[key]
            exactDuplicates[key] = if (previous == null) program else previous.copy(
                description = if (program.description.length > previous.description.length) program.description else previous.description,
                hasArchive = previous.hasArchive || program.hasArchive,
            )
        }

        val byStart = exactDuplicates.values
            .groupBy { it.start }
            .values
            .mapNotNull { sameStart ->
                sameStart.maxWithOrNull(
                    compareBy<EpgProgram> { it.end }
                        .thenBy { it.description.length }
                        .thenBy { it.title.isNotBlank() },
                )
            }
            .sortedBy { it.start }

        return byStart.mapIndexedNotNull { index, program ->
            val nextStart = byStart.getOrNull(index + 1)?.start
            val correctedEnd = if (nextStart != null && program.end > nextStart) nextStart else program.end
            if (correctedEnd <= program.start) null else program.copy(end = correctedEnd)
        }
    }

    fun parse(root: JsonElement): List<EpgProgram> {
        val list = when (root) {
            is JsonArray -> root
            is JsonObject -> (root["epg_listings"] as? JsonArray)
                ?: (root["programs"] as? JsonArray)
                ?: JsonArray(emptyList())
            else -> JsonArray(emptyList())
        }
        return list.mapNotNull { element ->
            val item = element as? JsonObject ?: return@mapNotNull null
            fun text(vararg keys: String): String? = keys.firstNotNullOfOrNull { key ->
                item[key]?.let { value -> (value as? JsonPrimitive)?.contentOrNull }
            }
            fun epoch(value: String?): Long? {
                val raw = value?.trim()?.takeIf(String::isNotEmpty) ?: return null
                raw.toLongOrNull()?.let { return it }
                runCatching { Instant.parse(raw).epochSecond }.getOrNull()?.let { return it }
                val localText = raw.replace(' ', 'T')
                val local = runCatching { LocalDateTime.parse(localText, DateTimeFormatter.ISO_LOCAL_DATE_TIME) }.getOrNull()
                    ?: return null
                // Alcuni pannelli inviano `start`/`end` senza fuso: per l'API
                // Xtream il valore è nell'ora locale del dispositivo.
                return local.atZone(ZoneId.systemDefault()).toEpochSecond()
            }
            val start = epoch(text("start_timestamp")) ?: epoch(text("start")) ?: return@mapNotNull null
            val end = epoch(text("stop_timestamp"))
                ?: epoch(text("end_timestamp"))
                ?: epoch(text("stop"))
                ?: epoch(text("end"))
                ?: return@mapNotNull null
            if (end <= start) return@mapNotNull null
            EpgProgram(
                title = decode(text("title")),
                description = decode(text("description")),
                start = start,
                end = end,
                hasArchive = text("has_archive")?.let { it == "1" || it.equals("true", true) } ?: false,
            )
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

/**
 * Guida dei canali, con normalizzazione e cache.
 *
 * La cache ha un solo lucchetto; le richieste in corso sono coalescenti per
 * canale: due aperture dello stesso canale aspettano la stessa risposta, mentre
 * canali diversi possono essere chiesti in parallelo (il limite di 4 richieste
 * contemporanee è applicato da [ChannelScheduleLoader]).
 */
class ChannelEpgClient(private val http: OkHttpClient, private val clock: Clock = SystemClock) {
    private data class Entry(val expires: Long, val programs: List<EpgProgram>)
    private val cacheMutex = Mutex()
    private val cache = mutableMapOf<String, Entry>()
    private val channelLocks = ConcurrentHashMap<String, Mutex>()

    private fun cacheKey(server: String, username: String, streamId: String): String =
        "$server|$username|$streamId"

    private fun lockFor(key: String): Mutex = channelLocks.computeIfAbsent(key) { Mutex() }

    /** Programmi in cache valida, senza nessuna richiesta al server. */
    suspend fun cached(server: String, username: String, streamId: String): List<EpgProgram>? =
        withContext(Dispatchers.IO) {
            val key = cacheKey(server, username, streamId)
            cacheMutex.withLock {
                cache[key]?.takeIf { it.expires > clock.nowMillis() }?.programs
            }
        }

    suspend fun load(server: String, username: String, password: String, streamId: String): List<EpgProgram> = withContext(Dispatchers.IO) {
        val key = cacheKey(server, username, streamId)
        lockFor(key).withLock {
            cacheMutex.withLock {
                cache[key]?.takeIf { it.expires > clock.nowMillis() }?.programs
            }?.let { return@withLock it }
            val base = server.toHttpUrlOrNull() ?: return@withLock emptyList()
            fun request(action: String, limit: String? = null): List<EpgProgram> = try {
                val b = base.newBuilder().addPathSegment("player_api.php").addQueryParameter("username", username).addQueryParameter("password", password).addQueryParameter("action", action).addQueryParameter("stream_id", streamId)
                limit?.let { b.addQueryParameter("limit", it) }
                http.newCall(Request.Builder().url(b.build()).build()).execute().use { r -> if (!r.isSuccessful) emptyList() else EpgRules.parse(Json.parseToJsonElement(r.body.string())) }
            } catch (_: Exception) { emptyList() }
            val programs = EpgRules.normalize(
                request("get_simple_data_table").ifEmpty { request("get_short_epg", "50") },
            )
            val ttl = if (programs.isEmpty()) EMPTY_TTL_MILLIS else PROGRAM_TTL_MILLIS
            cacheMutex.withLock {
                cache[key] = Entry(clock.nowMillis() + ttl, programs)
            }
            programs
        }
    }

    /**
     * Singola richiesta get_short_epg per la Guida. La cache persistente e la
     * deduplica per epg_channel_id sono gestite da [GuideEpgRepository].
     */
    suspend fun loadShort(
        server: String,
        username: String,
        password: String,
        streamId: String,
    ): EpgFetchResult = withContext(Dispatchers.IO) {
        val base = server.toHttpUrlOrNull() ?: return@withContext EpgFetchResult.Failure
        val url = base.newBuilder()
            .addPathSegment("player_api.php")
            .addQueryParameter("username", username)
            .addQueryParameter("password", password)
            .addQueryParameter("action", "get_short_epg")
            .addQueryParameter("stream_id", streamId)
            .addQueryParameter("limit", "50")
            .build()
        val request = Request.Builder().url(url).build()
        try {
            executeCancellable(request).use { response ->
                if (!response.isSuccessful) {
                    EpgFetchResult.Failure
                } else {
                    val body = response.body?.string() ?: return@withContext EpgFetchResult.Failure
                    val programs = EpgRules.normalize(EpgRules.parse(Json.parseToJsonElement(body)))
                    EpgFetchResult.Success(programs)
                }
            }
        } catch (cancelled: CancellationException) {
            throw cancelled
        } catch (_: Exception) {
            EpgFetchResult.Failure
        }
    }

    /** Svuota anche la cache in memoria del percorso EPG usato dal Live. */
    suspend fun clearCache() = withContext(Dispatchers.IO) {
        cacheMutex.withLock { cache.clear() }
    }

    private suspend fun executeCancellable(request: Request): Response =
        suspendCancellableCoroutine { continuation ->
            val call = http.newCall(request)
            call.enqueue(object : Callback {
                override fun onFailure(call: Call, e: IOException) {
                    if (continuation.isActive) continuation.resumeWith(Result.failure(e))
                }

                override fun onResponse(call: Call, response: Response) {
                    if (continuation.isActive) {
                        continuation.resumeWith(Result.success(response))
                    } else {
                        response.close()
                    }
                }
            })
            continuation.invokeOnCancellation { call.cancel() }
        }

    companion object {
        const val PROGRAM_TTL_MILLIS = 30 * 60_000L
        const val EMPTY_TTL_MILLIS = 2 * 60_000L
    }
}
