package it.felixvision.tv.ui.qr

import com.google.zxing.BarcodeFormat
import com.google.zxing.EncodeHintType
import com.google.zxing.common.BitMatrix
import com.google.zxing.qrcode.QRCodeWriter
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel

/**
 * Generazione del QR in locale con zxing, senza servizi esterni.
 *
 * Correzione d'errore M (circa il 15%): buon compromesso tra robustezza e
 * dimensione dei moduli, che a distanza di salotto restano leggibili.
 */
object QrMatrix {

    const val QUIET_ZONE_MODULES = 2

    fun encode(
        content: String,
        sizePx: Int,
        quietZoneModules: Int = QUIET_ZONE_MODULES,
    ): BitMatrix {
        require(content.isNotEmpty()) { "Contenuto del QR vuoto" }
        require(sizePx > 0) { "Lato del QR non valido: $sizePx" }

        val hints = mapOf(
            EncodeHintType.ERROR_CORRECTION to ErrorCorrectionLevel.M,
            EncodeHintType.CHARACTER_SET to "UTF-8",
            EncodeHintType.MARGIN to quietZoneModules,
        )
        return QRCodeWriter().encode(content, BarcodeFormat.QR_CODE, sizePx, sizePx, hints)
    }
}
