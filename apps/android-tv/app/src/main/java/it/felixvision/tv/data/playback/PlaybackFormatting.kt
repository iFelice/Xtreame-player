package it.felixvision.tv.data.playback

/** Formattazione dei tempi del player: `mm:ss` sotto l'ora, `h:mm:ss` sopra. */
object PlaybackFormatting {

    fun formatTime(millis: Long): String {
        val totalSeconds = (millis.coerceAtLeast(0L)) / 1_000L
        val hours = totalSeconds / 3_600L
        val minutes = (totalSeconds % 3_600L) / 60L
        val seconds = totalSeconds % 60L
        return if (hours > 0L) {
            "$hours:${minutes.twoDigits()}:${seconds.twoDigits()}"
        } else {
            "${minutes.twoDigits()}:${seconds.twoDigits()}"
        }
    }

    private fun Long.twoDigits(): String = toString().padStart(2, '0')
}
