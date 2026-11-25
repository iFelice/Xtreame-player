package it.felixvision.tv.ui.player

/**
 * Regole dei tasti del volume nel player.
 *
 * Stanno qui, pure e senza Compose, per poterle provare: il pannello del volume
 * intercetta Su/Giù **solo** mentre il focus è sul volume (radice del player o
 * pulsante "Volume"). Appena il focus va su un altro comando il pannello si
 * chiude e le frecce tornano ai pulsanti; il pannello si chiude anche da solo
 * dopo 3 s senza tasti (vedi `PlayerVolume.HIDE_DELAY_MILLIS`).
 */
object PlayerVolumeKeys {

    /** Il focus è "sul volume": radice del player oppure pulsante "Volume". */
    fun volumeHasFocus(rootFocused: Boolean, volumeButtonFocused: Boolean): Boolean =
        rootFocused || volumeButtonFocused

    /**
     * Su/Giù cambiano il livello solo con il pannello aperto **e** il focus sul
     * volume: con il focus su un altro comando o sulla barra di avanzamento le
     * frecce devono arrivare ai pulsanti.
     */
    fun upDownAdjustVolume(volumePanelVisible: Boolean, volumeFocus: Boolean): Boolean =
        volumePanelVisible && volumeFocus

    /** Il pannello si chiude appena il focus lascia il volume. */
    fun shouldClosePanel(volumePanelVisible: Boolean, volumeFocus: Boolean): Boolean =
        volumePanelVisible && !volumeFocus
}
