package it.felixvision.tv.data.store

import android.security.keystore.KeyGenParameterSpec
import android.security.keystore.KeyProperties
import java.security.KeyStore
import javax.crypto.Cipher
import javax.crypto.KeyGenerator
import javax.crypto.SecretKey
import javax.crypto.spec.GCMParameterSpec

/**
 * Cifratura AES-GCM con chiave non esportabile conservata nell'Android Keystore,
 * sotto un alias dedicato all'app.
 *
 * Il blob salvato è: `versione (1 byte) | IV (12 byte) | testo cifrato + tag GCM`.
 * L'IV è generato dal Keystore a ogni cifratura (mai riusato).
 *
 * Se la chiave non esiste più (ripristino dell'app su un altro dispositivo o
 * cancellazione delle chiavi) la decifratura lancia
 * [CredentialDecryptionException]: chi legge i dati li cancella e riporta
 * l'utente alla schermata di accesso, senza crash.
 */
class KeystoreCredentialCipher(
    private val keyAlias: String = CREDENTIALS_KEY_ALIAS,
) : CredentialCipher {

    override fun encrypt(plaintext: ByteArray): ByteArray {
        return try {
            val cipher = Cipher.getInstance(TRANSFORMATION)
            cipher.init(Cipher.ENCRYPT_MODE, getOrCreateKey())
            val iv = cipher.iv
            val ciphertext = cipher.doFinal(plaintext)
            ByteArray(1 + iv.size + ciphertext.size).also { blob ->
                blob[0] = BLOB_VERSION
                iv.copyInto(blob, destinationOffset = 1)
                ciphertext.copyInto(blob, destinationOffset = 1 + iv.size)
            }
        } catch (error: Exception) {
            throw CredentialCipherException("Cifratura delle credenziali non riuscita", error)
        }
    }

    override fun decrypt(blob: ByteArray): ByteArray {
        if (blob.size <= 1 + IV_SIZE || blob[0] != BLOB_VERSION) {
            throw CredentialDecryptionException("Blob delle credenziali non riconosciuto")
        }
        return try {
            val iv = blob.copyOfRange(1, 1 + IV_SIZE)
            val ciphertext = blob.copyOfRange(1 + IV_SIZE, blob.size)
            val cipher = Cipher.getInstance(TRANSFORMATION)
            cipher.init(
                Cipher.DECRYPT_MODE,
                existingKey() ?: throw CredentialDecryptionException("Chiave delle credenziali assente"),
                GCMParameterSpec(GCM_TAG_BITS, iv),
            )
            cipher.doFinal(ciphertext)
        } catch (error: CredentialDecryptionException) {
            throw error
        } catch (error: Exception) {
            throw CredentialDecryptionException("Decifratura delle credenziali non riuscita", error)
        }
    }

    private fun keyStore(): KeyStore = KeyStore.getInstance(ANDROID_KEYSTORE).apply {
        load(null)
    }

    private fun existingKey(): SecretKey? = try {
        keyStore().getKey(keyAlias, null) as? SecretKey
    } catch (error: Exception) {
        null
    }

    private fun getOrCreateKey(): SecretKey {
        existingKey()?.let { return it }

        val generator = KeyGenerator.getInstance(KeyProperties.KEY_ALGORITHM_AES, ANDROID_KEYSTORE)
        val spec = KeyGenParameterSpec.Builder(
            keyAlias,
            KeyProperties.PURPOSE_ENCRYPT or KeyProperties.PURPOSE_DECRYPT,
        )
            .setBlockModes(KeyProperties.BLOCK_MODE_GCM)
            .setEncryptionPaddings(KeyProperties.ENCRYPTION_PADDING_NONE)
            .setKeySize(KEY_SIZE_BITS)
            .build()
        generator.init(spec)
        return generator.generateKey()
    }

    companion object {
        const val CREDENTIALS_KEY_ALIAS = "fvp_credentials_key"

        private const val ANDROID_KEYSTORE = "AndroidKeyStore"
        private const val TRANSFORMATION = "AES/GCM/NoPadding"
        private const val IV_SIZE = 12
        private const val GCM_TAG_BITS = 128
        private const val KEY_SIZE_BITS = 256
        private const val BLOB_VERSION: Byte = 1
    }
}
