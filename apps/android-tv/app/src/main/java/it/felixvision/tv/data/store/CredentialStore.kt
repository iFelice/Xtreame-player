package it.felixvision.tv.data.store

/** Credenziali come circolano nell'app: mai scritte nei log. */
data class StoredCredentials(
    val server: String,
    val username: String,
    val password: String,
) {
    /** Rappresentazione sicura da usare nei log: senza password. */
    override fun toString(): String = "StoredCredentials(server=$server, username=$username, password=***)"
}

interface CredentialStore {

    /** Credenziali salvate, oppure `null` se assenti o illeggibili. */
    suspend fun load(): StoredCredentials?

    suspend fun save(credentials: StoredCredentials)

    suspend fun clear()
}
