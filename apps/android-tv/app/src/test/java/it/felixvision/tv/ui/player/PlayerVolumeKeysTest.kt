package it.felixvision.tv.ui.player

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Regole dei tasti del volume: Su/Giù cambiano il livello solo con il pannello
 * aperto e il focus sul volume; appena il focus va altrove il pannello si chiude
 * (e con il focus sul volume resta la chiusura automatica dopo 3 s).
 */
class PlayerVolumeKeysTest {

    @Test
    fun `il focus sul volume e la radice o il pulsante Volume`() {
        assertTrue(PlayerVolumeKeys.volumeHasFocus(rootFocused = true, volumeButtonFocused = false))
        assertTrue(PlayerVolumeKeys.volumeHasFocus(rootFocused = false, volumeButtonFocused = true))
        assertFalse(PlayerVolumeKeys.volumeHasFocus(rootFocused = false, volumeButtonFocused = false))
    }

    @Test
    fun `Su e Giu cambiano il volume solo con il pannello aperto e il focus sul volume`() {
        assertTrue(PlayerVolumeKeys.upDownAdjustVolume(volumePanelVisible = true, volumeFocus = true))
        // Pannello chiuso: Su/Giù non toccano il volume.
        assertFalse(PlayerVolumeKeys.upDownAdjustVolume(volumePanelVisible = false, volumeFocus = true))
        // Focus su un altro comando: le frecce servono ai pulsanti.
        assertFalse(PlayerVolumeKeys.upDownAdjustVolume(volumePanelVisible = true, volumeFocus = false))
        assertFalse(PlayerVolumeKeys.upDownAdjustVolume(volumePanelVisible = false, volumeFocus = false))
    }

    @Test
    fun `il pannello si chiude appena il focus lascia il volume`() {
        assertTrue(PlayerVolumeKeys.shouldClosePanel(volumePanelVisible = true, volumeFocus = false))
        // Con il focus sul volume resta aperto: lo chiude il conteggio dei 3 s.
        assertFalse(PlayerVolumeKeys.shouldClosePanel(volumePanelVisible = true, volumeFocus = true))
        assertFalse(PlayerVolumeKeys.shouldClosePanel(volumePanelVisible = false, volumeFocus = false))
    }
}
