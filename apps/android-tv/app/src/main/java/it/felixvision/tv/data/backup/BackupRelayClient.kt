package it.felixvision.tv.data.backup

import it.felixvision.tv.core.FvpJson
import it.felixvision.tv.data.pairing.ApiResult
import java.io.IOException
import java.io.InterruptedIOException
import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.Json
import kotlinx.serialization.json.buildJsonObject
import kotlinx.serialization.json.put
import okhttp3.HttpUrl
import okhttp3.HttpUrl.Companion.toHttpUrlOrNull
import okhttp3.MediaType.Companion.toMediaType
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.RequestBody.Companion.toRequestBody
import okhttp3.Response

/**
 * Sessione di backup aperta sul relay. Il token di polling non compare in
 * [toString].
 */
data class BackupRelaySession(
    val code: String,
    val pollToken: String,
    val expiresInSeconds: Int,
) {
    override fun toString(): String = "BackupRelaySession(code=$code, expiresInSeconds=$expiresInSeconds)"
}

/** Stato della sessione di importazione sul relay. */
sealed interface BackupRelayStatus {

    /** Il telefono non ha ancora inviato nulla. */
    data object Waiting : BackupRelayStatus

    /**
     * File cifrato pronto (base64url): il relay lo consegna una sola volta e
     * poi cancella la sessione. IV e testo cifrato non compaiono in
     * [toString].
     */
    data class Ready(val iv: String, val ciphertext: String) : BackupRelayStatus {
        override fun toString(): String = "Ready"
    }

    /** Sessione scaduta, già consegnata o inesistente. */
    data object Expired : BackupRelayStatus
}

/** Operazioni del relay per il backup: interfaccia per poterle sostituire nei test. */
interface BackupRelayApi {

    suspend fun create(direction: BackupDirection): ApiResult<BackupRelaySession>

    /** Deposito del file cifrato (esportazione), una sola volta. */
    suspend fun upload(code: String, pollToken: String, envelope: BackupTransportEnvelope): ApiResult<Unit>

    /** Attesa del file cifrato (importazione). */
    suspend fun status(code: String, pollToken: String): ApiResult<BackupRelayStatus>
}

/**
 * Client delle rotte backup del relay (`/api/backup/create`,
 * `/api/backup/upload`, `/api/backup/status/{code}`).
 *
 * Il relay vede solo dati cifrati con la chiave del QR (vedi
 * [BackupTransferCrypto]), e il file resta cifrato anche con la password del
 * backup. Token, IV e testo cifrato non vanno mai nei log.
 */
class BackupRelayClient(
    private val http: OkHttpClient,
    /** Base del servizio, senza barra finale. */
    baseUrl: String,
    private val json: Json = FvpJson,
    private val io: CoroutineDispatcher = Dispatchers.IO,
) : BackupRelayApi {

    private val base: HttpUrl? = baseUrl.trim().trimEnd('/').toHttpUrlOrNull()

    override suspend fun create(direction: BackupDirection): ApiResult<BackupRelaySession> =
        withContext(io) {
            val root = base ?: return@withContext ApiResult.Malformed
            val body = buildJsonObject { put("direction", direction.param) }.toString()
                .toRequestBody(JSON_MEDIA_TYPE)
            val request = Request.Builder()
                .url(root.newBuilder().addPathSegments("api/backup/create").build())
                .post(body)
                .header("Accept", "application/json")
                .build()

            execute(request) { response ->
                if (response.code != 200) {
                    ApiResult.Http(response.code, errorCodeOf(response.body))
                } else {
                    val payload = json.decodeFromString<BackupCreateResponse>(response.body)
                    if (!isSessionCode(payload.code) || payload.pollToken.isBlank() || payload.expiresInSeconds <= 0) {
                        ApiResult.Malformed
                    } else {
                        ApiResult.Ok(
                            BackupRelaySession(
                                code = payload.code,
                                pollToken = payload.pollToken,
                                expiresInSeconds = payload.expiresInSeconds,
                            ),
                        )
                    }
                }
            }
        }

    override suspend fun upload(
        code: String,
        pollToken: String,
        envelope: BackupTransportEnvelope,
    ): ApiResult<Unit> = withContext(io) {
        val root = base ?: return@withContext ApiResult.Malformed
        val body = buildJsonObject {
            put("code", code)
            put("iv", envelope.iv)
            put("ciphertext", envelope.ciphertext)
        }.toString().toRequestBody(JSON_MEDIA_TYPE)
        val request = Request.Builder()
            .url(root.newBuilder().addPathSegments("api/backup/upload").build())
            .post(body)
            .header("Accept", "application/json")
            .header("Authorization", "Bearer $pollToken")
            .build()

        execute(request) { response ->
            when (response.code) {
                200 -> ApiResult.Ok(Unit)
                else -> ApiResult.Http(response.code, errorCodeOf(response.body))
            }
        }
    }

    override suspend fun status(code: String, pollToken: String): ApiResult<BackupRelayStatus> =
        withContext(io) {
            val root = base ?: return@withContext ApiResult.Malformed
            val url = root.newBuilder()
                .addPathSegments("api/backup/status")
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
                        val payload = json.decodeFromString<BackupStatusResponse>(response.body)
                        when (payload.status.lowercase()) {
                            "waiting" -> ApiResult.Ok(BackupRelayStatus.Waiting)
                            "ready" -> {
                                val iv = payload.iv
                                val ciphertext = payload.ciphertext
                                if (iv.isNullOrBlank() || ciphertext.isNullOrBlank()) {
                                    ApiResult.Malformed
                                } else {
                                    ApiResult.Ok(BackupRelayStatus.Ready(iv = iv, ciphertext = ciphertext))
                                }
                            }
                            else -> ApiResult.Malformed
                        }
                    }
                    404, 410 -> ApiResult.Ok(BackupRelayStatus.Expired)
                    else -> ApiResult.Http(response.code, errorCodeOf(response.body))
                }
            }
        }

    /** Risposta HTTP già letta: il corpo viene chiuso prima di tornare al chiamante. */
    private class BufferedResponse(val code: Int, val body: String)

    private fun errorCodeOf(body: String): String? =
        try {
            json.decodeFromString<BackupStatusResponse>(body).error
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
        val JSON_MEDIA_TYPE = "application/json; charset=utf-8".toMediaType()

        fun isSessionCode(code: String): Boolean = code.length == 6 && code.all { it in '0'..'9' }
    }
}

@Serializable
internal data class BackupCreateResponse(
    val code: String = "",
    val pollToken: String = "",
    val expiresInSeconds: Int = 0,
)

@Serializable
internal data class BackupStatusResponse(
    val status: String = "",
    val iv: String? = null,
    val ciphertext: String? = null,
    val error: String? = null,
)
