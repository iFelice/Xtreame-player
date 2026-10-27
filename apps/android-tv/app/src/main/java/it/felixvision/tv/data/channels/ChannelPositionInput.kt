package it.felixvision.tv.data.channels

import it.felixvision.tv.data.playback.ChannelNumberInput

/**
 * Campo numerico delle finestre "Aggiungi a I miei canali" e "Cambia numero":
 * cifre del telecomando, massimo 4, precompilato con la posizione proposta.
 *
 * Il valore precompilato è un suggerimento: la prima cifra digitata lo
 * sostituisce, le successive si aggiungono fino a 4 cifre. OK conferma, Indietro
 * annulla.
 */
data class ChannelPositionField(
    val digits: String,
    val prefilled: Boolean,
) {

    val value: Int?
        get() = digits.toIntOrNull()?.takeIf { it > 0 }

    /** Aggiunge una cifra (0..9); con il valore precompilato la sostituisce. */
    fun digit(digit: Int): ChannelPositionField {
        if (digit !in 0..9) return this
        if (prefilled) return ChannelPositionField(digits = digit.toString(), prefilled = false)
        return copy(digits = ChannelNumberInput.appendDigit(digits, digit))
    }

    companion object {

        /** Massimo 4 cifre, come il cambio canale numerico. */
        const val MAX_DIGITS = ChannelNumberInput.MAX_DIGITS

        /** Primo posto in fondo: N+1. */
        fun forAppend(size: Int): ChannelPositionField =
            ChannelPositionField(digits = (size + 1).toString(), prefilled = true)

        /** Numero attuale del canale da spostare. */
        fun forPosition(position: Int): ChannelPositionField =
            ChannelPositionField(digits = position.coerceAtLeast(1).toString(), prefilled = true)
    }
}
