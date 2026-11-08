@file:OptIn(androidx.media3.common.util.UnstableApi::class)

package it.felixvision.tv.ui.player

import androidx.annotation.OptIn
import androidx.test.ext.junit.runners.AndroidJUnit4
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

/**
 * Buffer del player: i valori stanno in [PlayerNetworkConfig] e il
 * `DefaultLoadControl` li usa davvero. Sono i valori del pannello di
 * riferimento (50 s di buffer, avvio a 2,5 s, 5 s dopo un'interruzione):
 * l'oggetto è la difesa contro gli stalli a metà visione.
 *
 * Media3 non espone getter per il buffer: si leggono i campi con la
 * riflessione, come già fa `PlayerNetworkConfigTest` per la sorgente HTTP.
 */
@RunWith(AndroidJUnit4::class)
@Config(sdk = [34])
class PlayerLoadControlTest {

    @Test
    fun `i valori del buffer stanno in PlayerNetworkConfig`() {
        assertEquals(50_000, PlayerNetworkConfig.LOAD_CONTROL_MIN_BUFFER_MILLIS)
        assertEquals(50_000, PlayerNetworkConfig.LOAD_CONTROL_MAX_BUFFER_MILLIS)
        assertEquals(2_500, PlayerNetworkConfig.LOAD_CONTROL_PLAYBACK_BUFFER_MILLIS)
        assertEquals(5_000, PlayerNetworkConfig.LOAD_CONTROL_REBUFFER_BUFFER_MILLIS)
        assertTrue(PlayerNetworkConfig.LOAD_CONTROL_PRIORITIZE_TIME)
        // I vincoli del costruttore di Media3: minimo ≤ massimo, minimo ≥
        // ogni soglia di avvio. Se cambiano qui i valori, la costruzione
        // stessa lancerebbe un'eccezione.
        assertTrue(
            PlayerNetworkConfig.LOAD_CONTROL_MIN_BUFFER_MILLIS <=
                PlayerNetworkConfig.LOAD_CONTROL_MAX_BUFFER_MILLIS,
        )
        assertTrue(
            PlayerNetworkConfig.LOAD_CONTROL_MIN_BUFFER_MILLIS >=
                PlayerNetworkConfig.LOAD_CONTROL_PLAYBACK_BUFFER_MILLIS,
        )
        assertTrue(
            PlayerNetworkConfig.LOAD_CONTROL_MIN_BUFFER_MILLIS >=
                PlayerNetworkConfig.LOAD_CONTROL_REBUFFER_BUFFER_MILLIS,
        )
    }

    @Test
    fun `il LoadControl del player usa quei valori`() {
        val loadControl = PlayerNetworkConfig.loadControl()

        // Media3 tiene i tempi in microsecondi (gli `*_MS` sono i valori di input).
        assertEquals(50_000_000L, loadControl.privateField("minBufferUs"))
        assertEquals(50_000_000L, loadControl.privateField("maxBufferUs"))
        assertEquals(2_500_000L, loadControl.privateField("bufferForPlaybackUs"))
        assertEquals(5_000_000L, loadControl.privateField("bufferForPlaybackAfterRebufferUs"))
        assertEquals(true, loadControl.privateField("prioritizeTimeOverSizeThresholds"))
        // Nessun buffer all'indietro: sul Live non serve e occuperebbe memoria.
        assertEquals(0L, loadControl.privateField("backBufferDurationUs"))
        assertEquals(false, loadControl.privateField("retainBackBufferFromKeyframe"))
    }

    private fun Any.privateField(name: String): Any? {
        val field = javaClass.getDeclaredField(name)
        field.isAccessible = true
        return field.get(this)
    }
}
