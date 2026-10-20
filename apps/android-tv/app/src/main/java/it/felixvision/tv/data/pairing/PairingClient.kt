package it.felixvision.tv.data.pairing

import it.felixvision.tv.core.Clock
import it.felixvision.tv.core.FvpJson
import it.felixvision.tv.core.SystemClock
import java.io.IOException
import java.io.InterruptedIOException
import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import kotlinx.serialization.json.Json
import okhttp3.HttpUrl
import okhttp3.HttpUrl.Companion.toHttpUrlOrNull
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.RequestBody.Companion.toRequestBody
import okhttp3.Response

/**
 * Client del servizio di abbinamento (Cloudflare Worker).
 *
 * Le richieste dell'app nativa non hanno header `Origin`: il relay le ammette
 * esplicitamente. Le credenziali ricevute non vengono mai registrate nei log.
 */
interface PairingApi {

    suspend fun createSession(): ApiResult<PairingSession>

    suspend fun pollStatus(code: String, pollToken: String): ApiResult<PairingStatus>

    /** Restituisce l'indirizzo associato al codice, `null` se il codice non esiste. */
    suspend fun resolveRubrica(code: String): ApiResult<String>

    /** Controllo leggero di raggiungibilità del servizio, in sottofondo. */
    suspend fun healthCheck(): Boolean
}

class PairingClient(
    private val http: OkHttpClient,
    /** Base del servizio, senza barra finale. */
    baseUrl: String,
    private val json: Json = FvpJson,
    private val clock: Clock = SystemClock,
    private val io: CoroutineDispatcher = Dispatchers.IO,
) : PairingApi {

    private val base: HttpUrl? = baseUrl.trim().trimEnd('/').toHttpUrlOrNull()

    override suspend fun createSession(): ApiResult<PairingSession> = withContext(io) {
        val root = base ?: return@withContext ApiResult.Malformed
        val request = Request.Builder()
            .url(root.newBuilder().addPathSegments("api/pair/create").build())
            .post(EMPTY_BODY)
            .header("Accept", "application/json")
            .build()

        execute(request) { response ->
            if (response.code != 200) {
                ApiResult.Http(response.code, errorCodeOf(response.body))
            } else {
                val payload = json.decodeFromString<PairCreateResponse>(response.body)
                if (payload.code.isBlank() || payload.pollToken.isBlank()) {
                    ApiResult.Malformed
                } else {
                    ApiResult.Ok(
                        PairingSession(
                            code = payload.code,
                            pollToken = payload.pollToken,
                            expiresAtMillis = clock.nowMillis() +
                                payload.expiresInSeconds.coerceAtLeast(0) * 1_000L,
                        ),
                    )
                }
            }
        }
    }

    override suspend fun pollStatus(code: String, pollToken: String): ApiResult<PairingStatus> =
        withContext(io) {
            val root = base ?: return@withContext ApiResult.Malformed
            val url = root.newBuilder()
                .addPathSegments("api/pair/status")
                .addPathSegment(code)
                .build()
            val request = Request.Builder()
                .url(url)
                .get()
                .header("Accept", "application/json")
                .header("Authorization", "Bearer $pollToken")
                .build()

            execute(request) { response ->
                when (response.code) {
                    200 -> {
                        val payload = json.decodeFromString<PairStatusResponse>(response.body)
                        when (payload.status.lowercase()) {
                            "waiting" -> ApiResult.Ok(PairingStatus.Waiting)
                            "ready" -> payload.credentials
                                ?.let { ApiResult.Ok(PairingStatus.Ready(it)) }
                                ?: ApiResult.Malformed
                            else -> ApiResult.Malformed
                        }
                    }
                    404, 410 -> ApiResult.Ok(PairingStatus.Gone)
                    else -> ApiResult.Http(response.code, errorCodeOf(response.body))
                }
            }
        }

    override suspend fun resolveRubrica(code: String): ApiResult<String> = withContext(io) {
        val root = base ?: return@withContext ApiResult.Malformed
        val url = root.newBuilder()
            .addPathSegments("api/rubrica")
            .addPathSegment(code.trim().lowercase())
            .build()
        val request = Request.Builder()
            .url(url)
            .get()
            .header("Accept", "application/json")
            .build()

        execute(request) { response ->
            when (response.code) {
                200 -> {
                    val payload = json.decodeFromString<RubricaResponse>(response.body)
                    val server = payload.server.trim()
                    if (server.isEmpty()) ApiResult.Malformed else ApiResult.Ok(server)
                }
                404 -> ApiResult.Http(404, "UNKNOWN_SERVER_CODE")
                else -> ApiResult.Http(response.code, errorCodeOf(response.body))
            }
        }
    }

    override suspend fun healthCheck(): Boolean = withContext(io) {
        val root = base ?: return@withContext false
        val request = Request.Builder()
            .url(root.newBuilder().addPathSegments("healthz").build())
            .get()
            .build()
        try {
            http.newCall(request).execute().use { it.isSuccessful }
        } catch (error: IOException) {
            false
        }
    }

    /** Risposta HTTP già letta: il corpo viene chiuso prima di tornare al chiamante. */
    private class BufferedResponse(val code: Int, val body: String)

    private fun errorCodeOf(body: String): String? =
        try {
            json.decodeFromString<PairStatusResponse>(body).error
        } catch (error: Exception) {
            null
        }

    /**
     * Esegue la richiesta chiudendo sempre il corpo della risposta e converte
     * errori di rete e di parsing in [ApiResult], senza eccezioni a monte.
     */
    private inline fun <T> execute(
        request: Request,
        parse: (BufferedResponse) -> ApiResult<T>,
    ): ApiResult<T> {
        val response: Response = try {
            http.newCall(request).execute()
        } catch (timeout: InterruptedIOException) {
            return ApiResult.Network(timedOut = true)
        } catch (error: IOException) {
            return ApiResult.Network(timedOut = false)
        }

        val buffered = response.use {
            BufferedResponse(code = it.code, body = it.body.string())
        }
        return try {
            parse(buffered)
        } catch (error: Exception) {
            ApiResult.Malformed
        }
    }

    private companion object {
        val EMPTY_BODY = ByteArray(0).toRequestBody()
    }
}
