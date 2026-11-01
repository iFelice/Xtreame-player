package it.felixvision.tv.vpn

import android.content.Context
import android.content.SharedPreferences
import java.util.Base64

/**
 * Stato salvato della VPN, in SharedPreferences (`fvp_vpn`):
 * interruttore acceso/spento, configurazione WireGuard cifrata con
 * [VpnConfigCipher] (IV e dati in Base64) e nome del server da mostrare.
 *
 * Il testo in chiaro della configurazione non viene mai scritto su disco né
 * nei log.
 */
class VpnStore(
    context: Context,
    private val cipher: VpnConfigCipher,
    preferencesName: String = PREFERENCES_NAME,
) {

    private val preferences: SharedPreferences = context.applicationContext
        .getSharedPreferences(preferencesName, Context.MODE_PRIVATE)

    /** Interruttore della VPN scelto dall'utente. */
    val isEnabled: Boolean
        get() = preferences.getBoolean(KEY_ENABLED, false)

    fun setEnabled(enabled: Boolean) {
        preferences.edit().putBoolean(KEY_ENABLED, enabled).apply()
    }

    /** Nome del server della configurazione salvata, `null` se non c'è. */
    val serverName: String?
        get() = preferences.getString(KEY_SERVER_NAME, null)

    fun hasConfig(): Boolean = preferences.contains(KEY_CONFIG)

    /** Cifra e salva [text]; il buffer in chiaro viene azzerato subito dopo. */
    fun saveConfig(text: String, serverName: String) {
        val plaintext = text.toByteArray(Charsets.UTF_8)
        val blob = try {
            cipher.encrypt(plaintext)
        } finally {
            plaintext.fill(0)
        }
        preferences.edit()
            .putString(KEY_CONFIG, Base64.getEncoder().encodeToString(blob))
            .putString(KEY_SERVER_NAME, serverName)
            .apply()
    }

    /**
     * Testo della configurazione salvata, `null` se non c'è o se non è più
     * decifrabile (per esempio chiave del Keystore persa).
     */
    fun loadConfigText(): String? {
        val encoded = preferences.getString(KEY_CONFIG, null) ?: return null
        val plaintext = try {
            cipher.decrypt(Base64.getDecoder().decode(encoded))
        } catch (error: Exception) {
            return null
        }
        return try {
            String(plaintext, Charsets.UTF_8)
        } finally {
            plaintext.fill(0)
        }
    }

    /** Cancella configurazione, nome del server e interruttore. */
    fun clear() {
        preferences.edit()
            .remove(KEY_CONFIG)
            .remove(KEY_SERVER_NAME)
            .remove(KEY_ENABLED)
            .apply()
    }

    companion object {
        const val PREFERENCES_NAME = "fvp_vpn"

        private const val KEY_ENABLED = "enabled"
        private const val KEY_CONFIG = "config"
        private const val KEY_SERVER_NAME = "server_name"
    }
}
