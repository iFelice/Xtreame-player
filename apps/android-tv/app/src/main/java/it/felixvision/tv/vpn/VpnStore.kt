package it.felixvision.tv.vpn

import android.content.Context
import java.util.Base64
import java.util.UUID
import org.json.JSONArray
import org.json.JSONObject

/** Public metadata only: encrypted configuration never leaves the private archive. */
data class VpnServer(val id: String, val name: String)

class VpnStore(
    context: Context,
    private val cipher: VpnConfigCipher,
    preferencesName: String = PREFERENCES_NAME,
) {
    private val preferences = context.applicationContext.getSharedPreferences(preferencesName, Context.MODE_PRIVATE)

    init {
        // Copy the existing ciphertext without decrypting it. One atomic, idempotent migration.
        if (!preferences.contains("servers") && preferences.contains("config")) {
            val id = UUID.randomUUID().toString()
            val records = JSONArray().put(JSONObject().put("id", id)
                .put("name", preferences.getString("server_name", "Server VPN"))
                .put("blob", preferences.getString("config", null)))
            preferences.edit().putString("servers", records.toString()).putString("active", id)
                .remove("config").remove("server_name").apply()
        }
    }

    private fun records() = JSONArray(preferences.getString("servers", "[]"))
    val servers: List<VpnServer> get() = records().let { array ->
        List(array.length()) { array.getJSONObject(it).let { VpnServer(it.getString("id"), it.getString("name")) } }
    }
    val activeId: String? get() = preferences.getString("active", null)
    val serverName: String? get() = servers.firstOrNull { it.id == activeId }?.name
    val isEnabled: Boolean get() = preferences.getBoolean("enabled", false)
    val guideShown: Boolean get() = preferences.getBoolean("guide_shown", false)
    fun markGuideShown() { preferences.edit().putBoolean("guide_shown", true).apply() }
    fun setEnabled(enabled: Boolean) { preferences.edit().putBoolean("enabled", enabled).apply() }
    fun hasConfig() = servers.isNotEmpty()

    @Synchronized
    fun saveConfig(text: String, serverName: String) {
        check(servers.size < MAX_SERVERS) { LIMIT_MESSAGE }
        val names = servers.map { it.name }.toSet()
        var name = serverName
        var suffix = 2
        while (name in names) name = "$serverName (${suffix++})"
        val plaintext = text.toByteArray(Charsets.UTF_8)
        val blob = try { cipher.encrypt(plaintext) } finally { plaintext.fill(0) }
        val id = UUID.randomUUID().toString()
        val array = records().put(JSONObject().put("id", id).put("name", name)
            .put("blob", Base64.getEncoder().encodeToString(blob)))
        preferences.edit().putString("servers", array.toString()).putString("active", id).apply()
    }

    fun loadConfigText(id: String? = activeId): String? {
        val array = records()
        val record = (0 until array.length()).map { array.getJSONObject(it) }.firstOrNull { it.getString("id") == id } ?: return null
        val plaintext = try { cipher.decrypt(Base64.getDecoder().decode(record.getString("blob"))) } catch (_: Exception) { return null }
        return try { String(plaintext, Charsets.UTF_8) } finally { plaintext.fill(0) }
    }

    @Synchronized
    fun activate(id: String) {
        require(servers.any { it.id == id })
        preferences.edit().putString("active", id).apply()
    }

    @Synchronized
    fun rename(id: String, name: String): Boolean {
        val cleaned = name.trim()
        if (cleaned.length !in 1..30) return false
        val array = records()
        val record = (0 until array.length()).map { array.getJSONObject(it) }.firstOrNull { it.getString("id") == id } ?: return false
        record.put("name", cleaned)
        preferences.edit().putString("servers", array.toString()).apply()
        return true
    }

    @Synchronized
    fun remove(ids: Set<String>) {
        val old = records()
        val remaining = JSONArray()
        for (i in 0 until old.length()) if (old.getJSONObject(i).getString("id") !in ids) remaining.put(old.getJSONObject(i))
        val editor = preferences.edit()
        if (remaining.length() == 0) editor.remove("servers").remove("active").remove("enabled")
        else {
            editor.putString("servers", remaining.toString())
            if (activeId in ids) editor.putString("active", remaining.getJSONObject(0).getString("id"))
        }
        editor.apply()
    }

    fun clear() { preferences.edit().remove("servers").remove("active").remove("enabled").apply() }

    companion object {
        const val PREFERENCES_NAME = "fvp_vpn"
        const val MAX_SERVERS = 5
        const val LIMIT_MESSAGE = "Hai già 5 server: rimuovine uno per aggiungerne un altro"
    }
}
