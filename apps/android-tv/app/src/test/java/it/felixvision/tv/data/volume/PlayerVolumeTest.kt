package it.felixvision.tv.data.volume

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Volume del player: scala 0–15, curva percettiva e chiusura automatica.
 *
 * Test puri, senza dispositivo: verificano i limiti, la curva
 * `(livello / 15)^2`, i passi, il silenziamento e la scadenza dei 3 secondi.
 */
class PlayerVolumeTest {

    @Test
    fun `scala e valori predefiniti`() {
        assertEquals(15, PlayerVolume.MAX_LEVEL)
        assertEquals(0, PlayerVolume.MIN_LEVEL)
        assertEquals(15, PlayerVolume.DEFAULT_LEVEL)
        assertEquals(15, PlayerVolume.TICKS)
        assertEquals(3_000L, PlayerVolume.HIDE_DELAY_MILLIS)
    }

    @Test
    fun `curva percettiva agli estremi`() {
        assertEquals(0f, PlayerVolume.volumeForLevel(0), 0.0001f)
        assertEquals(1f, PlayerVolume.volumeForLevel(15), 0.0001f)
    }

    @Test
    fun `curva percettiva al centro`() {
        // (7 / 15)^2 = 0.2177…
        assertEquals(0.2177f, PlayerVolume.volumeForLevel(7), 0.001f)
        // (3 / 15)^2 = 0.04: i primi passi sono molto più fini.
        assertEquals(0.04f, PlayerVolume.volumeForLevel(3), 0.0001f)
    }

    @Test
    fun `la curva cresce sempre con il livello`() {
        var previous = -1f
        for (level in 0..15) {
            val volume = PlayerVolume.volumeForLevel(level)
            assertTrue("volume non crescente a $level", volume > previous)
            previous = volume
        }
    }

    @Test
    fun `i livelli fuori scala vengono riportati nei limiti`() {
        assertEquals(0, PlayerVolume.clampLevel(-8))
        assertEquals(15, PlayerVolume.clampLevel(40))
        assertEquals(9, PlayerVolume.clampLevel(9))
        assertEquals(0f, PlayerVolume.volumeForLevel(-4), 0.0001f)
        assertEquals(1f, PlayerVolume.volumeForLevel(99), 0.0001f)
    }

    @Test
    fun `passo di un livello con limiti`() {
        assertEquals(11, PlayerVolume.step(10, 1))
        assertEquals(9, PlayerVolume.step(10, -1))
        assertEquals(15, PlayerVolume.step(15, 1))
        assertEquals(0, PlayerVolume.step(0, -1))
        // Un passo ampio non esce comunque dai limiti.
        assertEquals(15, PlayerVolume.step(12, 40))
        assertEquals(0, PlayerVolume.step(2, -40))
    }

    @Test
    fun `muto solo a livello zero`() {
        assertTrue(PlayerVolume.isMuted(0))
        assertFalse(PlayerVolume.isMuted(1))
        assertFalse(PlayerVolume.isMuted(15))
        assertTrue(PlayerVolume.isMuted(-3))
    }

    @Test
    fun `tacche accese e frazione della barra`() {
        assertEquals(0, PlayerVolume.litTicks(0))
        assertEquals(15, PlayerVolume.litTicks(15))
        assertEquals(6, PlayerVolume.litTicks(6))
        assertEquals(0f, PlayerVolume.levelFraction(0), 0.0001f)
        assertEquals(1f, PlayerVolume.levelFraction(15), 0.0001f)
        assertEquals(0.4f, PlayerVolume.levelFraction(6), 0.0001f)
    }

    @Test
    fun `chiusura automatica dopo tre secondi`() {
        assertFalse(PlayerVolume.shouldAutoHide(0))
        assertFalse(PlayerVolume.shouldAutoHide(2_999))
        assertTrue(PlayerVolume.shouldAutoHide(3_000))
        assertTrue(PlayerVolume.shouldAutoHide(3_500))
    }
}
