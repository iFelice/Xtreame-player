package it.felixvision.tv.vpn

import android.content.Context
import androidx.test.core.app.ApplicationProvider
import com.wireguard.android.backend.Backend
import com.wireguard.android.backend.Statistics
import com.wireguard.android.backend.Tunnel
import com.wireguard.config.Config
import com.wireguard.crypto.Key
import it.felixvision.tv.core.Clock
import java.security.SecureRandom
import java.util.Base64
import java.util.concurrent.Executors
import kotlinx.coroutines.*
import kotlinx.coroutines.test.*
import okhttp3.OkHttpClient
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config as RobolectricConfig

@RunWith(RobolectricTestRunner::class)
@RobolectricConfig(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
@OptIn(ExperimentalCoroutinesApi::class)
class VpnServersTest {
    private val context: Context get() = ApplicationProvider.getApplicationContext()
    private val cipher = object : VpnConfigCipher {
        override fun encrypt(plaintext: ByteArray) = plaintext.map { (it.toInt() xor 90).toByte() }.toByteArray()
        override fun decrypt(blob: ByteArray) = encrypt(blob)
    }
    private fun config(): String {
        fun key() = Base64.getEncoder().encodeToString(ByteArray(32).also { SecureRandom().nextBytes(it) })
        return "[Interface]\nPrivateKey = ${key()}\nAddress = 192.168.1.2/32\n[Peer]\nPublicKey = ${key()}\nAllowedIPs = 0.0.0.0/0\nEndpoint = 192.168.1.10:51820\n"
    }
    private fun store() = VpnStore(context, cipher)

    @Test fun `migration preserves ciphertext name switch and stable id`() {
        val text = config()
        val blob = Base64.getEncoder().encodeToString(cipher.encrypt(text.toByteArray()))
        val preferences = context.getSharedPreferences(VpnStore.PREFERENCES_NAME, Context.MODE_PRIVATE)
        preferences.edit().putString("config", blob).putString("server_name", "Demo").putBoolean("enabled", true).apply()
        val first = store()
        assertEquals(1, first.servers.size)
        assertEquals("Demo", first.serverName)
        assertTrue(first.isEnabled)
        assertTrue("configuration round trip", text == first.loadConfigText())
        val migrated = preferences.all
        assertEquals(first.servers, store().servers)
        assertEquals(migrated, preferences.all)
        assertFalse(preferences.contains("config"))
        assertTrue(preferences.getString("servers", "")!!.contains(blob))
        assertFalse(preferences.all.toString().contains("PrivateKey"))
    }

    @Test fun `five individually encrypted servers unique names and sixth leaves archive unchanged`() {
        val store = store()
        repeat(5) { store.saveConfig(config(), "Demo") }
        assertEquals(listOf("Demo", "Demo (2)", "Demo (3)", "Demo (4)", "Demo (5)"), store.servers.map { it.name })
        assertEquals(5, store.servers.map { it.id }.toSet().size)
        val before = store.servers
        try { store.saveConfig(config(), "Demo"); fail("limit") } catch (error: IllegalStateException) {
            assertEquals(VpnStore.LIMIT_MESSAGE, error.message)
        }
        assertEquals(before, store.servers)
        before.forEach { assertNotNull(store.loadConfigText(it.id)) }
    }

    @Test fun `rename validates and persists trimmed name`() {
        val store = store()
        store.saveConfig(config(), "Demo")
        val id = store.activeId!!
        assertFalse(store.rename(id, "   "))
        assertFalse(store.rename(id, "x".repeat(31)))
        assertTrue(store.rename(id, "  Nuovo nome  "))
        assertEquals("Nuovo nome", store().serverName)
    }

    @Test fun `batch removal uses one preferences notification and chooses first remaining`() {
        val store = store()
        repeat(3) { store.saveConfig(config(), "Demo") }
        store.setEnabled(true)
        val first = store.servers.first()
        val removed = store.servers.drop(1).map { it.id }.toSet()
        val preferences = context.getSharedPreferences(VpnStore.PREFERENCES_NAME, Context.MODE_PRIVATE)
        var writes = 0
        val listener = android.content.SharedPreferences.OnSharedPreferenceChangeListener { _, key -> if (key == "servers") writes++ }
        preferences.registerOnSharedPreferenceChangeListener(listener)
        store.remove(removed)
        org.robolectric.Shadows.shadowOf(android.os.Looper.getMainLooper()).idle()
        preferences.unregisterOnSharedPreferenceChangeListener(listener)
        assertEquals(1, writes)
        assertEquals(listOf(first), store.servers)
        assertEquals(first.id, store.activeId)
        assertTrue(store.isEnabled)
        store.remove(setOf(first.id))
        assertFalse(store.hasConfig())
        assertFalse(store.isEnabled)
        assertNull(store.activeId)
    }

    /** Scheduler advanced on a worker: virtual time, but never backend/OkHttp on main. */
    private fun scenario(block: Scenario.() -> Unit) {
        val scenario = Scenario()
        try { scenario.block() } finally { scenario.scope.cancel(); scenario.worker.shutdownNow() }
    }
    private inner class Scenario {
        val scheduler = TestCoroutineScheduler()
        val dispatcher = StandardTestDispatcher(scheduler)
        val scope = CoroutineScope(SupervisorJob() + dispatcher)
        val worker = Executors.newSingleThreadExecutor()
        val store = store().apply {
            saveConfig(config(), "Primo"); saveConfig(config().replace("192.168.1.10", "192.168.1.11"), "Secondo")
            activate(servers.first().id); setEnabled(true)
        }
        var successOn = 2
        var ups = 0
        val calls = mutableListOf<Tunnel.State>()
        val hosts = mutableListOf<String>()
        val backend = object : Backend {
            override fun getRunningTunnelNames() = emptySet<String>()
            override fun getState(tunnel: Tunnel) = calls.lastOrNull() ?: Tunnel.State.DOWN
            override fun getVersion() = "test"
            override fun isAlwaysOn() = false
            override fun isLockdownEnabled() = false
            override fun setState(tunnel: Tunnel, state: Tunnel.State, config: Config?): Tunnel.State {
                calls += state
                if (state == Tunnel.State.UP) {
                    ups++
                    hosts += requireNotNull(config).peers.single().endpoint.get().host
                }
                return state
            }
            override fun getStatistics(tunnel: Tunnel): Statistics {
                val constructor = Statistics::class.java.getDeclaredConstructor().apply { isAccessible = true }
                val stats = constructor.newInstance()
                if (ups == successOn) {
                    val add = Statistics::class.java.getDeclaredMethod("add", Key::class.java, java.lang.Long.TYPE, java.lang.Long.TYPE, java.lang.Long.TYPE).apply { isAccessible = true }
                    add.invoke(stats, Key.fromBase64(Base64.getEncoder().encodeToString(ByteArray(32).also { SecureRandom().nextBytes(it) })), 0L, 0L, 1000L)
                }
                return stats
            }
        }
        val controller = VpnController(context, store, OkHttpClient(), OkHttpClient(), scope,
            Clock { scheduler.currentTime }, { backend }, "", dispatcher, { null }, 1000L, 100L)
        val messages = mutableListOf<String>()
        init { scope.launch { controller.messages.collect { messages += it } }; current() }
        fun current() { worker.submit { scheduler.runCurrent() }.get() }
        fun finish() { worker.submit { scheduler.advanceUntilIdle() }.get() }
    }

    @Test fun `startup falls back to second server and persists it with warning`() = scenario {
        controller.startIfEnabled(); finish()
        assertEquals("Secondo", store.serverName)
        assertEquals(VpnState.Connected("Secondo"), controller.state.value)
        assertEquals(listOf(Tunnel.State.UP, Tunnel.State.DOWN, Tunnel.State.UP), calls)
        assertEquals(listOf("Primo non risponde: ora è attivo Secondo"), messages)
        assertEquals(listOf("192.168.1.10", "192.168.1.11"), hosts)
    }

    @Test fun `manual activation stops before starting and never falls back`() = scenario {
        successOn = 1
        controller.startIfEnabled(); finish()
        successOn = -1
        controller.activateServer(store.servers[1].id); finish()
        assertEquals(listOf(Tunnel.State.UP, Tunnel.State.DOWN, Tunnel.State.UP, Tunnel.State.DOWN), calls)
        assertEquals(2, ups)
        assertEquals(listOf("192.168.1.10", "192.168.1.11"), hosts)
        assertEquals(listOf("Secondo non risponde"), messages)
        assertEquals("Secondo", store.serverName)
    }

    @Test fun `all servers unavailable preserves switch and continues without VPN`() = scenario {
        successOn = -1
        controller.enable(); finish()
        assertEquals(2, ups)
        assertTrue(store.isEnabled)
        assertEquals("Primo", store.serverName)
        assertEquals(VpnState.NotConnected(VpnController.NOT_CONNECTED_REASON), controller.state.value)
        assertEquals(listOf(VpnController.NOT_CONNECTED_MESSAGE), messages)
    }

    @Test fun `removing active server restarts on first remaining and removing all disables VPN`() = scenario {
        successOn = 1
        controller.startIfEnabled(); finish()
        successOn = 2
        controller.removeServers(setOf(store.activeId!!)); finish()
        assertEquals("Secondo", store.serverName)
        assertEquals(VpnState.Connected("Secondo"), controller.state.value)
        assertEquals(listOf(Tunnel.State.UP, Tunnel.State.DOWN, Tunnel.State.UP), calls)
        controller.removeServers(store.servers.map { it.id }.toSet()); finish()
        assertEquals(VpnState.NoConfig, controller.state.value)
        assertFalse(store.isEnabled)
        assertTrue(store.servers.isEmpty())
        assertEquals(Tunnel.State.DOWN, calls.last())
    }

    @Test fun `removing all during startup cancels before the timeout`() = scenario {
        successOn = -1
        controller.startIfEnabled(); current()
        controller.removeServers(store.servers.map { it.id }.toSet()); finish()
        assertEquals(0L, scheduler.currentTime)
        assertEquals(1, ups)
        assertEquals(VpnState.NoConfig, controller.state.value)
        assertFalse(store.isEnabled)
        assertTrue(messages.isEmpty())
    }

    @Test fun `disable cancels fallback immediately with no virtual timeout elapsed`() = scenario {
        successOn = -1
        controller.enable(); current()
        assertEquals(VpnState.Connecting, controller.state.value)
        assertEquals("Primo", controller.tryingServer.value)
        controller.disable(); finish()
        assertEquals(0L, scheduler.currentTime)
        assertEquals(1, ups)
        assertEquals(VpnState.Off, controller.state.value)
        assertFalse(store.isEnabled)
        assertTrue(messages.isEmpty())
    }
}
