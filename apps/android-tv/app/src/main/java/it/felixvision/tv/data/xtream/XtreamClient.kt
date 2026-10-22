package it.felixvision.tv.data.xtream

import it.felixvision.tv.core.Clock
import it.felixvision.tv.core.FvpJson
import it.felixvision.tv.core.SystemClock
import java.io.IOException
import java.io.InterruptedIOException
import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import kotlinx.coroutines.withContext
import kotlinx.serialization.json.Json
import okhttp3.HttpUrl
import okhttp3.HttpUrl.Companion.toHttpUrlOrNull
import okhttp3.OkHttpClient
import okhttp3.Request

/**
 * Client dell'API Xtream Codes.
 *
 * Protezioni anti-blocco:
 * - un solo login in corso alla volta: i pannelli chiudono la sessione se
 *   ricevono richieste di autenticazione concorrenti (mutex dedicato);
 * - nessun nuovo tentativo automatico: un errore torna subito al chiamante;
 * - i corpi delle risposte vengono sempre chiusi (`use`).
 */
class XtreamClient(
    private val http: OkHttpClient,
    private val json: Json = FvpJson,
    private val clock: Clock = SystemClock,
    private val io: CoroutineDispatcher = Dispatchers.IO,
) {

    private val loginMutex = Mutex()

    suspend fun login(serverInput: String, username: String, password: String): LoginResult {
        val user = username.trim()
        val pass = password
        val server = ServerAddress.normalize(serverInput) ?: return LoginResult.InvalidServerAddress
        if (user.isEmpty() || pass.isEmpty()) return LoginResult.InvalidCredentials

        return loginMutex.withLock {
            withContext(io) { performLogin(server, user, pass) }
        }
    }

    private fun performLogin(server: String, username: String, password: String): LoginResult {
        val base = server.toHttpUrlOrNull() ?: return LoginResult.InvalidServerAddress
        val url: HttpUrl = base.newBuilder()
            .addPathSegments(PLAYER_API)
            .addQueryParameter("username", username)
            .addQueryParameter("password", password)
            .build()

        val request = Request.Builder()
            .url(url)
            .get()
            .header("Accept", "application/json")
            .build()

        return try {
            http.newCall(request).execute().use { response ->
                when (response.code) {
                    200 -> parseLoginBody(response.body.string(), server, username)
                    401, 403 -> LoginResult.InvalidCredentials
                    else -> LoginResult.ServerError(response.code)
                }
            }
        } catch (timeout: InterruptedIOException) {
            // SocketTimeoutException (connessione o lettura) e Call.timeout()
            LoginResult.Unreachable(timedOut = true)
        } catch (error: IOException) {
            LoginResult.Unreachable(timedOut = false, detail = error.javaClass.simpleName)
        }
    }

    internal fun parseLoginBody(body: String, server: String, username: String): LoginResult {
        val payload = try {
            json.decodeFromString<PlayerApiResponse>(body)
        } catch (error: Exception) {
            return LoginResult.UnexpectedResponse
        }

        val userInfo = payload.userInfo ?: return LoginResult.InvalidCredentials
        if (userInfo.auth != 1) return LoginResult.InvalidCredentials

        val expiresAt = parseEpochSeconds(userInfo.expDate)
        val declaredStatus = parseStatus(userInfo.status)
        val nowSeconds = clock.nowMillis() / 1_000L

        val status = when {
            declaredStatus == AccountStatus.DISABLED -> AccountStatus.DISABLED
            declaredStatus == AccountStatus.EXPIRED -> AccountStatus.EXPIRED
            expiresAt != null && expiresAt <= nowSeconds -> AccountStatus.EXPIRED
            else -> AccountStatus.ACTIVE
        }

        val account = XtreamAccount(
            // L'indirizzo canonico è quello digitato dall'utente: `server_info.url`
            // riporta l'host interno del pannello, non necessariamente raggiungibile.
            server = server,
            username = userInfo.username?.trim()?.takeIf { it.isNotEmpty() } ?: username,
            status = status,
            expiresAtEpochSeconds = expiresAt,
            isTrial = userInfo.isTrial == "1",
            maxConnections = userInfo.maxConnections?.trim()?.toIntOrNull(),
            activeConnections = userInfo.activeCons?.trim()?.toIntOrNull(),
            serverTimezone = payload.serverInfo?.timezone?.takeIf { it.isNotBlank() },
            allowedOutputFormats = userInfo.allowedOutputFormats.orEmpty(),
        )

        return when (status) {
            AccountStatus.DISABLED -> LoginResult.AccountDisabled(account)
            AccountStatus.EXPIRED -> LoginResult.AccountExpired(account)
            else -> LoginResult.Success(account)
        }
    }

    private fun parseStatus(raw: String?): AccountStatus =
        when (raw?.trim()?.lowercase()) {
            "active" -> AccountStatus.ACTIVE
            "expired" -> AccountStatus.EXPIRED
            "disabled", "banned", "inactive", "suspended" -> AccountStatus.DISABLED
            else -> AccountStatus.UNKNOWN
        }

    private fun parseEpochSeconds(raw: String?): Long? {
        val value = raw?.trim()?.takeIf { it.isNotEmpty() && it.all(Char::isDigit) } ?: return null
        return value.toLongOrNull()?.takeIf { it > 0L }
    }

    companion object {
        const val PLAYER_API = "player_api.php"
    }
}
