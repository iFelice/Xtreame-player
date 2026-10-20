package it.felixvision.tv.ui.qr

import com.google.zxing.BinaryBitmap
import com.google.zxing.MultiFormatReader
import com.google.zxing.RGBLuminanceSource
import com.google.zxing.Result
import com.google.zxing.ResultMetadataType
import com.google.zxing.common.BitMatrix
import com.google.zxing.common.HybridBinarizer
import it.felixvision.tv.BuildConfig
import it.felixvision.tv.data.pairing.PairingCoordinator
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Il QR deve contenere esattamente `<PAIRING_RELAY_URL>/?code=<PIN>`: lo si
 * verifica decodificando l'immagine generata con lo stesso zxing.
 */
class QrMatrixTest {

    @Test
    fun `il QR contiene l'indirizzo del servizio con il PIN`() {
        val payload = PairingCoordinator.buildQrPayload(BuildConfig.PAIRING_RELAY_URL, "123456")

        val decoded = decode(QrMatrix.encode(payload, SIZE_PX))

        assertEquals(payload, decoded)
        assertEquals("${BuildConfig.PAIRING_RELAY_URL}/?code=123456", decoded)
    }

    @Test
    fun `il QR usa il livello di correzione M e un bordo bianco`() {
        val payload = PairingCoordinator.buildQrPayload(BuildConfig.PAIRING_RELAY_URL, "654321")
        val matrix = QrMatrix.encode(payload, SIZE_PX)

        // zxing arrotonda il lato al multiplo esatto dei moduli: resta comunque
        // sopra il minimo richiesto per la lettura a distanza (280 px a 1080p).
        assertTrue(matrix.width in MIN_SIDE_PX..SIZE_PX)
        assertEquals(matrix.width, matrix.height)
        // Il quiet zone richiesto è presente: i primi moduli in alto a sinistra
        // restano bianchi perché il writer rispetta il margine.
        assertTrue(!matrix.get(0, 0))

        val result = read(matrix)
        assertEquals(payload, result.text)
        assertEquals("M", result.resultMetadata[ResultMetadataType.ERROR_CORRECTION_LEVEL])
    }

    @Test(expected = IllegalArgumentException::class)
    fun `un contenuto vuoto non produce un QR`() {
        QrMatrix.encode("", SIZE_PX)
    }

    private fun decode(matrix: BitMatrix): String = read(matrix).text

    /** Decodifica la matrice zxing ingrandendola, come farebbe la fotocamera. */
    private fun read(matrix: BitMatrix): Result {
        val scale = 6
        val quiet = 4
        val side = (matrix.width + quiet * 2) * scale
        val pixels = IntArray(side * side) { WHITE }
        for (y in 0 until matrix.height) {
            for (x in 0 until matrix.width) {
                if (!matrix.get(x, y)) continue
                for (dy in 0 until scale) {
                    for (dx in 0 until scale) {
                        val px = (x + quiet) * scale + dx
                        val py = (y + quiet) * scale + dy
                        pixels[py * side + px] = BLACK
                    }
                }
            }
        }
        val source = RGBLuminanceSource(side, side, pixels)
        return MultiFormatReader().decode(BinaryBitmap(HybridBinarizer(source)))
    }

    private companion object {
        const val SIZE_PX = 360
        const val MIN_SIDE_PX = 280
        val WHITE: Int = 0xFFFFFFFF.toInt()
        val BLACK: Int = 0xFF000000.toInt()
    }
}
