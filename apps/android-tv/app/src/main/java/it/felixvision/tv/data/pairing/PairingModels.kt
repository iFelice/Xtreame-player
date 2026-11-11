package it.felixvision.tv.data.pairing

import kotlinx.serialization.Serializable

/** Risposta di `POST /api/pair/create`. */
@Serializable
data class PairCreateResponse(
    val code: String,
    val pollToken: String,
    val expiresInSeconds: Int,
)

/** Risposta di `GET /api/pair/status/:code`. */
@Serializable
data class PairStatusResponse(
    val status: String = "",
    val credentials: RemoteCredentials? = null,
    val error: String? = null,
)

/** Credenziali inserite dal telefono e consegnate alla TV. */
@Serializable
data class RemoteCredentials(
    val v: Int = 1,
    val server: String,
    val username: String,
    val password: String,
    val serverCode: String? = null,
)

/** Risposta di `GET /api/rubrica/:code`. */
@Serializable
data class RubricaResponse(
    val server: String,
    val error: String? = null,
)

/** Sessione di abbinamento creata dal relay. */
data class PairingSession(
    val code: String,
    val pollToken: String,
    /** Istante di scadenza secondo l'orologio dell'app. */
    val expiresAtMillis: Long,
)

/** Esito di una singola interrogazione dello stato. */
sealed interface PairingStatus {

    data object Waiting : PairingStatus

    data class Ready(val credentials: RemoteCredentials) : PairingStatus

    /** La sessione non esiste più (scaduta o già consumata). */
    data object Gone : PairingStatus
}
