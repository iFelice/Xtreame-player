package it.felixvision.tv.vpn

import it.felixvision.tv.core.FvpJson
import it.felixvision.tv.data.pairing.ApiResult
import java.io.IOException
import java.io.InterruptedIOException
import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.Json
import okhttp3.HttpUrl
import okhttp3.HttpUrl.Companion.toHttpUrlOrNull
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.RequestBody.Companion.toRequestBody
import okhttp3.Response

/**
 * Sessione di trasferimento della configurazione VPN aperta sul relay.
 * Il token di polling non compare in [toString].
 */
data class VpnRelaySession(
    val code: String,
    val pollToken: String,
    val expiresInSeconds: Int,
) {
    override fun toString(): String = "VpnRelaySession(code=$code, expiresInSeconds=$expiresInSeconds)"
}

/** Stato della sessione sul relay. */
sealed interface VpnRelayStatus {

    /** Il telefono non ha ancora inviato nulla. */
    data object Waiting : VpnRelayStatus

    /**
     * Configurazione cifrata pronta (base64url): il relay la consegna una sola
     * volta e poi cancella la sessione. IV e testo cifrato non compaiono in
     * [toString].
     */
    data class Ready(val iv: String, val ciphertext: String) : VpnRelayStatus {
        override fun toString(): String = "Ready"
    }

    /** Sessione scaduta, già consegnata o inesistente. */
    data object Expired : VpnRelayStatus
}

/** Operazioni del relay per la VPN: interfaccia per poterle sostituire nei test. */
interface VpnRelayApi {

    suspend fun create(): ApiResult<VpnRelaySession>

    suspend fun status(code: String, pollToken: String): ApiResult<VpnRelayStatus>
}

/**
 * Client delle rotte VPN del relay (`/api/vpn/create`, `/api/vpn/status/{code}`).
 *
 * Il relay vede solo dati cifrati: la chiave resta sulla TV (vedi
 * [VpnTransferCrypto]). Token, IV e testo cifrato non vanno mai nei log.
 */
class VpnRelayClient(
    private val http: OkHttpClient,
    /** Base del servizio, senza barra finale. */
    baseUrl: String,
    private val json: Json = FvpJson,
    private val io: CoroutineDispatcher = Dispatchers.IO,
) : VpnRelayApi {

    private val base: HttpUrl? = baseUrl.trim().trimEnd('/').toHttpUrlOrNull()

    override suspend fun create(): ApiResult<VpnRelaySession> = withContext(io) {
        val root = base ?: return@withContext ApiResult.Malformed
        val request = Request.Builder()
            .url(root.newBuilder().addPathSegments("api/vpn/create").build())
            .post(EMPTY_BODY)
            .header("Accept", "application/json")
            .build()

        execute(request) { response ->
            if (response.code != 200) {
                ApiResult.Http(response.code, errorCodeOf(response.body))
            } else {
                val payload = json.decodeFromString<VpnCreateResponse>(response.body)
                if (!isSessionCode(payload.code) || payload.pollToken.isBlank() || payload.expiresInSeconds <= 0) {
                    ApiResult.Malformed
                } else {
                    ApiResult.Ok(
                        VpnRelaySession(
                            code = payload.code,
                            pollToken = payload.pollToken,
                            expiresInSeconds = payload.expiresInSeconds,
                        ),
                    )
                }
            }
        }
    }

    override suspend fun status(code: String, pollToken: String): ApiResult<VpnRelayStatus> =
        withContext(io) {
            val root = base ?: return@withContext ApiResult.Malformed
            val url = root.newBuilder()
                .addPathSegments("api/vpn/status")
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
                        val payload = json.decodeFromString<VpnStatusResponse>(response.body)
                        when (payload.status.lowercase()) {
                            "waiting" -> ApiResult.Ok(VpnRelayStatus.Waiting)
                            "ready" -> {
                                val iv = payload.iv
                                val ciphertext = payload.ciphertext
                                if (iv.isNullOrBlank() || ciphertext.isNullOrBlank()) {
                                    ApiResult.Malformed
                                } else {
                                    ApiResult.Ok(VpnRelayStatus.Ready(iv = iv, ciphertext = ciphertext))
                                }
                            }
                            else -> ApiResult.Malformed
                        }
                    }
                    404, 410 -> ApiResult.Ok(VpnRelayStatus.Expired)
                    else -> ApiResult.Http(response.code, errorCodeOf(response.body))
                }
            }
        }

    /** Risposta HTTP già letta: il corpo viene chiuso prima di tornare al chiamante. */
    private class BufferedResponse(val code: Int, val body: String)

    private fun errorCodeOf(body: String): String? =
        try {
            json.decodeFromString<VpnStatusResponse>(body).error
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

        fun isSessionCode(code: String): Boolean = code.length == 6 && code.all { it in '0'..'9' }
    }
}

@Serializable
internal data class VpnCreateResponse(
    val code: String = "",
    val pollToken: String = "",
    val expiresInSeconds: Int = 0,
)

@Serializable
internal data class VpnStatusResponse(
    val status: String = "",
    val iv: String? = null,
    val ciphertext: String? = null,
    val error: String? = null,
)
