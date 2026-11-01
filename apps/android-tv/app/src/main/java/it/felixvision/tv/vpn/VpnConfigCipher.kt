package it.felixvision.tv.vpn

import android.security.keystore.KeyGenParameterSpec
import android.security.keystore.KeyProperties
import java.security.GeneralSecurityException
import java.security.KeyStore
import javax.crypto.Cipher
import javax.crypto.KeyGenerator
import javax.crypto.SecretKey
import javax.crypto.spec.GCMParameterSpec

/**
 * Cifratura della configurazione WireGuard salvata sulla TV.
 *
 * L'interfaccia tiene la crittografia fuori da [VpnStore] e permette un
 * cifrario finto nei test.
 */
interface VpnConfigCipher {

    /** Cifra [plaintext] e restituisce il blob da salvare. */
    fun encrypt(plaintext: ByteArray): ByteArray

    /** Decifra il blob; lancia un'eccezione se non è decifrabile. */
    fun decrypt(blob: ByteArray): ByteArray
}

/**
 * AES-256-GCM con chiave non esportabile nell'Android Keystore, alias
 * [VPN_CONFIG_KEY_ALIAS], senza autenticazione dell'utente: la VPN deve poter
 * ripartire da sola all'avvio dell'app.
 *
 * Il blob è `IV (12 byte) | testo cifrato + tag GCM`; l'IV è generato dal
 * Keystore a ogni cifratura.
 */
class KeystoreVpnConfigCipher(
    private val keyAlias: String = VPN_CONFIG_KEY_ALIAS,
) : VpnConfigCipher {

    override fun encrypt(plaintext: ByteArray): ByteArray {
        val cipher = Cipher.getInstance(TRANSFORMATION)
        cipher.init(Cipher.ENCRYPT_MODE, getOrCreateKey())
        val iv = cipher.iv
        if (iv == null || iv.size != IV_SIZE) {
            throw GeneralSecurityException("IV della configurazione VPN non valido")
        }
        val ciphertext = cipher.doFinal(plaintext)
        return iv + ciphertext
    }

    override fun decrypt(blob: ByteArray): ByteArray {
        if (blob.size <= IV_SIZE + GCM_TAG_BYTES) {
            throw GeneralSecurityException("Configurazione VPN salvata non riconosciuta")
        }
        val key = existingKey() ?: throw GeneralSecurityException("Chiave della configurazione VPN assente")
        val cipher = Cipher.getInstance(TRANSFORMATION)
        cipher.init(
            Cipher.DECRYPT_MODE,
            key,
            GCMParameterSpec(GCM_TAG_BITS, blob.copyOfRange(0, IV_SIZE)),
        )
        return cipher.doFinal(blob, IV_SIZE, blob.size - IV_SIZE)
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
            .setUserAuthenticationRequired(false)
            .build()
        generator.init(spec)
        return generator.generateKey()
    }

    companion object {
        const val VPN_CONFIG_KEY_ALIAS = "fvp_vpn_config_key"

        private const val ANDROID_KEYSTORE = "AndroidKeyStore"
        private const val TRANSFORMATION = "AES/GCM/NoPadding"
        private const val IV_SIZE = 12
        private const val GCM_TAG_BITS = 128
        private const val GCM_TAG_BYTES = GCM_TAG_BITS / 8
        private const val KEY_SIZE_BITS = 256
    }
}
