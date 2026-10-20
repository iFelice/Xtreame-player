package it.felixvision.tv.data.store

/**
 * Cifratura simmetrica delle credenziali salvate.
 *
 * L'interfaccia esiste per due motivi: tenere la crittografia fuori dalla
 * logica di archiviazione (che così è verificabile in JVM) e permettere
 * un'implementazione finta nei test.
 */
interface CredentialCipher {

    /** Cifra il testo in chiaro e restituisce il blob da salvare. */
    fun encrypt(plaintext: ByteArray): ByteArray

    /**
     * Decifra il blob. Deve lanciare [CredentialDecryptionException] quando il
     * blob non è decifrabile (chiave persa, dati ripristinati da un altro
     * dispositivo, payload alterato).
     */
    fun decrypt(blob: ByteArray): ByteArray
}

open class CredentialCipherException(
    message: String,
    cause: Throwable? = null,
) : Exception(message, cause)

class CredentialDecryptionException(
    message: String,
    cause: Throwable? = null,
) : CredentialCipherException(message, cause)
