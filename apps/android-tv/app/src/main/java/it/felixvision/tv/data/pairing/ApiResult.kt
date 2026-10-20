package it.felixvision.tv.data.pairing

/** Esito generico di una chiamata di rete, senza eccezioni da gestire a monte. */
sealed interface ApiResult<out T> {

    data class Ok<T>(val value: T) : ApiResult<T>

    /** Risposta HTTP ricevuta ma non positiva (`error` è il codice applicativo, se presente). */
    data class Http(val code: Int, val error: String? = null) : ApiResult<Nothing>

    /** Nessuna risposta: rete assente, host non raggiungibile o timeout. */
    data class Network(val timedOut: Boolean) : ApiResult<Nothing>

    /** Risposta ricevuta ma non interpretabile. */
    data object Malformed : ApiResult<Nothing>
}
