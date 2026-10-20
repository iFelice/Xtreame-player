package it.felixvision.tv.data.store

import it.felixvision.tv.core.FvpJson
import java.util.Base64
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.Json

/**
 * Archivio cifrato delle credenziali.
 *
 * Il payload JSON (server, utente, password) viene cifrato con [CredentialCipher]
 * e salvato come Base64 in [SecurePreferences]: nessun campo in chiaro finisce
 * su disco.
 *
 * Se la decifratura fallisce — caso tipico: chiave del Keystore persa dopo un
 * ripristino — i dati vengono eliminati e [load] restituisce `null`, così l'app
 * torna alla schermata di accesso senza crash.
 */
class EncryptedCredentialStore(
    private val preferences: SecurePreferences,
    private val cipher: CredentialCipher,
    private val json: Json = FvpJson,
    private val onDecryptionFailure: (Throwable) -> Unit = {},
) : CredentialStore {

    override suspend fun load(): StoredCredentials? {
        val encoded = preferences.read(KEY_CREDENTIALS) ?: return null

        return try {
            val blob = Base64.getDecoder().decode(encoded)
            val plaintext = cipher.decrypt(blob)
            val record = json.decodeFromString<CredentialRecord>(
                plaintext.toString(Charsets.UTF_8),
            )
            val credentials = record.toStoredCredentials()
            if (credentials == null) {
                // Payload formalmente decifrabile ma inutilizzabile: si riparte puliti.
                preferences.write(KEY_CREDENTIALS, null)
            }
            credentials
        } catch (error: CredentialCipherException) {
            discardUnreadableData(error)
            null
        } catch (error: IllegalArgumentException) {
            discardUnreadableData(error)
            null
        } catch (error: Exception) {
            discardUnreadableData(error)
            null
        }
    }

    override suspend fun save(credentials: StoredCredentials) {
        val record = CredentialRecord(
            server = credentials.server,
            username = credentials.username,
            password = credentials.password,
        )
        val plaintext = json.encodeToString(record).toByteArray(Charsets.UTF_8)
        val blob = cipher.encrypt(plaintext)
        preferences.write(KEY_CREDENTIALS, Base64.getEncoder().encodeToString(blob))
    }

    override suspend fun clear() {
        preferences.write(KEY_CREDENTIALS, null)
    }

    private suspend fun discardUnreadableData(error: Throwable) {
        onDecryptionFailure(error)
        preferences.write(KEY_CREDENTIALS, null)
    }

    @Serializable
    private data class CredentialRecord(
        val server: String,
        val username: String,
        val password: String,
    ) {
        fun toStoredCredentials(): StoredCredentials? {
            if (server.isBlank() || username.isBlank() || password.isEmpty()) return null
            return StoredCredentials(server = server, username = username, password = password)
        }
    }

    private companion object {
        const val KEY_CREDENTIALS = "credentials_blob_v1"
    }
}
