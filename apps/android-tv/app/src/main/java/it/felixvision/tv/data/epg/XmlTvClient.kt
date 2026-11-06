package it.felixvision.tv.data.epg

import it.felixvision.tv.core.Clock
import it.felixvision.tv.core.SystemClock
import java.io.FilterInputStream
import java.io.IOException
import java.io.InputStream
import java.util.concurrent.TimeUnit
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.suspendCancellableCoroutine
import kotlinx.coroutines.withContext
import okhttp3.Call
import okhttp3.Callback
import okhttp3.HttpUrl.Companion.toHttpUrlOrNull
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.Response

/** Esito XMLTV; il parser può restituire dati parziali se il documento si interrompe. */
data class XmlTvFetchResult(
    val programsByEpgChannelId: Map<String, List<EpgProgram>> = emptyMap(),
    val complete: Boolean = false,
)

/** Download XMLTV streaming con limiti rigidi e senza header Accept-Encoding impostati a mano. */
class XmlTvClient(
    private val http: OkHttpClient,
    private val clock: Clock = SystemClock,
) {
    suspend fun fetch(
        server: String,
        username: String,
        password: String,
        catalogEpgChannelIds: Set<String>,
    ): XmlTvFetchResult = withContext(Dispatchers.IO) {
        // Il callback OkHttp è asincrono; anche lo streaming/parsing del body
        // resta su IO, mai sul dispatcher principale che avvia il refresh.
        val eligibleIds = catalogEpgChannelIds.mapNotNull { it.trim().takeIf(String::isNotEmpty) }.toSet()
        if (eligibleIds.isEmpty()) return@withContext XmlTvFetchResult(complete = true)
        val base = server.toHttpUrlOrNull() ?: return@withContext XmlTvFetchResult()
        val url = base.newBuilder()
            .addPathSegment("xmltv.php")
            .addQueryParameter("username", username)
            .addQueryParameter("password", password)
            .build()
        val request = Request.Builder().url(url).build()
        val startedAtNanos = System.nanoTime()
        try {
            executeCancellable(request).use { response ->
                val body = response.body
                if (!response.isSuccessful || body == null || body.contentLength() > MAX_BYTES) {
                    XmlTvFetchResult()
                } else {
                    val bounded = ByteAndTimeLimitedInputStream(
                        input = body.byteStream(),
                        maxBytes = MAX_BYTES,
                        startedAtNanos = startedAtNanos,
                    )
                    val parsed = XmlTvParser.parse(
                        input = bounded,
                        catalogEpgChannelIds = eligibleIds,
                        nowEpochSeconds = clock.nowMillis() / 1_000L,
                        withinTimeLimit = { System.nanoTime() - startedAtNanos < MAX_DURATION_NANOS },
                    )
                    XmlTvFetchResult(parsed.programsByEpgChannelId, parsed.complete)
                }
            }
        } catch (cancelled: CancellationException) {
            throw cancelled
        } catch (_: Exception) {
            XmlTvFetchResult()
        }
    }

    private suspend fun executeCancellable(request: Request): Response =
        suspendCancellableCoroutine { continuation ->
            val call = http.newCall(request)
            call.timeout().timeout(MAX_DURATION_MILLIS, TimeUnit.MILLISECONDS)
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

    private class ByteAndTimeLimitedInputStream(
        input: InputStream,
        private val maxBytes: Long,
        private val startedAtNanos: Long,
    ) : FilterInputStream(input) {
        private var bytesRead = 0L

        override fun read(): Int {
            checkDeadline()
            if (bytesRead >= maxBytes) {
                val extra = super.read()
                if (extra < 0) return -1
                throw PayloadLimitExceededException()
            }
            val value = super.read()
            if (value >= 0) bytesRead++
            return value
        }

        override fun read(buffer: ByteArray, offset: Int, length: Int): Int {
            if (length == 0) return 0
            checkDeadline()
            if (bytesRead >= maxBytes) {
                val extra = super.read()
                if (extra < 0) return -1
                throw PayloadLimitExceededException()
            }
            val allowed = minOf(length.toLong(), maxBytes - bytesRead).toInt()
            val read = super.read(buffer, offset, allowed)
            if (read > 0) bytesRead += read
            return read
        }

        override fun skip(count: Long): Long {
            if (count <= 0L) return 0L
            checkDeadline()
            val allowed = minOf(count, maxBytes - bytesRead)
            val skipped = super.skip(allowed)
            if (skipped > 0L) bytesRead += skipped
            if (bytesRead >= maxBytes) {
                val extra = super.read()
                if (extra >= 0) throw PayloadLimitExceededException()
            }
            return skipped
        }

        private fun checkDeadline() {
            if (System.nanoTime() - startedAtNanos >= MAX_DURATION_NANOS) {
                throw PayloadLimitExceededException()
            }
        }
    }

    private class PayloadLimitExceededException : IOException()

    companion object {
        const val MAX_BYTES = 100L * 1_024L * 1_024L
        const val MAX_DURATION_MILLIS = 120_000L
        private const val MAX_DURATION_NANOS = MAX_DURATION_MILLIS * 1_000_000L
    }
}
