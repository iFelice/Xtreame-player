package it.felixvision.mobile.ui.player

/** Formato temporaneo: una scelta per canale non viene salvata automaticamente. */
enum class PlayerVideoFormat(val label: String, val ratio: Float?) {
    ORIGINAL("Originale", null), WIDE("16:9", 16f / 9f), CLASSIC("4:3", 4f / 3f);
    fun next() = entries[(ordinal + 1) % entries.size]
}
