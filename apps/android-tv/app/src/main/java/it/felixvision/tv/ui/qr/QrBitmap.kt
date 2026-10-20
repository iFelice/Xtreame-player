package it.felixvision.tv.ui.qr

import android.graphics.Bitmap

/**
 * Rende la matrice QR in un [Bitmap] bianco e nero: il bordo bianco (quiet zone)
 * fa parte dell'immagine, così il QR resta leggibile appoggiato alla superficie
 * scura del pannello.
 */
object QrBitmap {

    fun render(
        content: String,
        sizePx: Int,
        quietZoneModules: Int = QrMatrix.QUIET_ZONE_MODULES,
    ): Bitmap {
        val matrix = QrMatrix.encode(content, sizePx, quietZoneModules)
        val pixels = IntArray(matrix.width * matrix.height)
        for (y in 0 until matrix.height) {
            val rowOffset = y * matrix.width
            for (x in 0 until matrix.width) {
                pixels[rowOffset + x] = if (matrix.get(x, y)) DARK else LIGHT
            }
        }
        return Bitmap.createBitmap(pixels, matrix.width, matrix.height, Bitmap.Config.ARGB_8888)
    }

    private val DARK: Int = 0xFF000000.toInt()
    private val LIGHT: Int = 0xFFFFFFFF.toInt()
}
