package it.felixvision.tv.data.xtream

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

/**
 * Risposta di `GET <server>/player_api.php?username=…&password=…`.
 *
 * I campi sono tutti opzionali perché i pannelli Xtream non sono uniformi: un
 * campo assente non deve rompere il parsing, ma solo cambiare lo stato mostrato.
 */
@Serializable
data class PlayerApiResponse(
    @SerialName("user_info") val userInfo: UserInfo? = null,
    @SerialName("server_info") val serverInfo: ServerInfo? = null,
)

@Serializable
data class UserInfo(
    val auth: Int? = null,
    val status: String? = null,
    @SerialName("exp_date") val expDate: String? = null,
    @SerialName("is_trial") val isTrial: String? = null,
    @SerialName("active_cons") val activeCons: String? = null,
    @SerialName("max_connections") val maxConnections: String? = null,
    val username: String? = null,
    val message: String? = null,
)

@Serializable
data class ServerInfo(
    val url: String? = null,
    val port: String? = null,
    @SerialName("https_port") val httpsPort: String? = null,
    @SerialName("server_protocol") val serverProtocol: String? = null,
    @SerialName("rtmp_port") val rtmpPort: String? = null,
    @SerialName("timezone") val timezone: String? = null,
    @SerialName("time_now") val timeNow: String? = null,
)

/** Stato dell'account ricavato da `user_info.status`. */
enum class AccountStatus {
    ACTIVE,
    EXPIRED,
    DISABLED,
    UNKNOWN,
}

/**
 * Dati dell'account Xtream dopo un accesso riuscito. Non contiene la password:
 * una volta validata, la password resta solo nell'archivio cifrato.
 */
data class XtreamAccount(
    val server: String,
    val username: String,
    val status: AccountStatus,
    /** Scadenza in secondi epoch, `null` se il pannello non la espone. */
    val expiresAtEpochSeconds: Long? = null,
    val isTrial: Boolean = false,
    val maxConnections: Int? = null,
    val activeConnections: Int? = null,
    val serverTimezone: String? = null,
)

/** Esito dell'operazione di accesso. */
sealed interface LoginResult {

    data class Success(val account: XtreamAccount) : LoginResult

    /** `user_info.auth` diverso da 1, oppure utente/password non accettati. */
    data object InvalidCredentials : LoginResult

    data class AccountExpired(val account: XtreamAccount) : LoginResult

    data class AccountDisabled(val account: XtreamAccount) : LoginResult

    /** Nessuna risposta dal server. `timedOut` distingue il timeout dagli altri errori. */
    data class Unreachable(val timedOut: Boolean, val detail: String? = null) : LoginResult

    /** Il server ha risposto con uno stato HTTP di errore. */
    data class ServerError(val httpCode: Int) : LoginResult

    /** Indirizzo vuoto o non valido. */
    data object InvalidServerAddress : LoginResult

    /** Risposta non interpretabile come JSON atteso. */
    data object UnexpectedResponse : LoginResult
}
