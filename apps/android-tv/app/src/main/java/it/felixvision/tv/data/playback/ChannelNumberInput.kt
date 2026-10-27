package it.felixvision.tv.data.playback

import android.view.KeyEvent as AndroidKeyEvent
import it.felixvision.tv.core.Clock
import it.felixvision.tv.core.SystemClock
import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.LiveStream

/**
 * Indicatore mostrato in alto a destra durante il cambio canale numerico:
 * le cifre in corso di inserimento oppure l'avviso di canale non trovato.
 */
sealed interface ChannelNumberOverlay {

    data class Digits(
        val digits: String,
        val updatedAtMillis: Long,
    ) : ChannelNumberOverlay

    data class NotFound(
        val number: Int,
        val shownAtMillis: Long,
    ) : ChannelNumberOverlay {
        val message: String
            get() = ChannelNumberInput.notFoundMessage(number)
    }
}

/**
 * Contesto di zapping del canale: tutti i canali della sua categoria
 * nell'ordine del catalogo, l'indice iniziale e il nome della categoria.
 */
data class LiveZappingTarget(
    val channels: List<LiveStream>,
    val startIndex: Int,
    val categoryId: String?,
    val categoryName: String?,
)

/** Esito della ricerca per numero (`num` del provider) su tutti i canali Live. */
sealed interface ChannelLookupResult {

    data class Found(
        val number: Int,
        val channel: LiveStream,
        val zapping: LiveZappingTarget,
    ) : ChannelLookupResult

    data class NotFound(
        val number: Int,
    ) : ChannelLookupResult {
        val message: String
            get() = ChannelNumberInput.notFoundMessage(number)
    }
}

/** Esito della gestione di un evento tasto durante il cambio canale numerico. */
sealed interface ChannelKeyOutcome {

    val consumed: Boolean

    /** Il tasto non riguarda il cambio canale numerico. */
    data object Ignored : ChannelKeyOutcome {
        override val consumed: Boolean = false
    }

    /** Il tasto è stato consumato dall'inserimento (cifra o rilascio di OK/Indietro). */
    data object Consumed : ChannelKeyOutcome {
        override val consumed: Boolean = true
    }

    /** Inserimento confermato subito con OK (tasto consumato). */
    data class Confirmed(val result: ChannelLookupResult) : ChannelKeyOutcome {
        override val consumed: Boolean = true
    }

    /** Inserimento annullato con Indietro (tasto consumato). */
    data object Cancelled : ChannelKeyOutcome {
        override val consumed: Boolean = true
    }

    /**
     * Freccia direzionale durante l'inserimento: l'inserimento viene annullato
     * ma il tasto non è intercettato, così esegue la sua azione normale.
     */
    data object CancelledPassThrough : ChannelKeyOutcome {
        override val consumed: Boolean = false
    }
}

/** Numerazione usata dai tasti numerici. */
enum class ChannelNumbering {

    /** Numero del provider (`LiveStream.num`), comportamento del Live. */
    PROVIDER,

    /** Posizione in "I miei canali" (1..N). */
    PERSONAL,
}

/**
 * Da dove si è aperta la lista o il player: la numerazione personale vale in
 * "I miei canali" e nel player aperto da lì, quella del provider in Live e nel
 * player aperto da Live.
 */
enum class ChannelListOrigin(val numbering: ChannelNumbering) {
    LIVE(ChannelNumbering.PROVIDER),
    MY_CHANNELS(ChannelNumbering.PERSONAL),
}

/**
 * Regole pure del cambio canale digitando il numero del provider (`LiveStream.num`):
 * - massimo 4 cifre (una cifra ulteriore sostituisce l'inserimento con la nuova cifra);
 * - conferma automatica dopo 2 s dall'ultima cifra oppure immediata con OK;
 * - annullamento con Indietro o (senza intercettare il tasto) con Su/Giù/Sinistra/Destra;
 * - ricerca su tutti i canali Live del catalogo nell'ordine del catalogo.
 */
object ChannelNumberInput {

    const val MAX_DIGITS = 4
    const val CONFIRM_DELAY_MILLIS = 2_000L
    const val NOT_FOUND_DURATION_MILLIS = 2_000L

    /** Converte `KEYCODE_0..9` e `KEYCODE_NUMPAD_0..9` nella cifra 0..9. */
    fun digitFromKeyCode(keyCode: Int): Int? = when (keyCode) {
        AndroidKeyEvent.KEYCODE_0, AndroidKeyEvent.KEYCODE_NUMPAD_0 -> 0
        AndroidKeyEvent.KEYCODE_1, AndroidKeyEvent.KEYCODE_NUMPAD_1 -> 1
        AndroidKeyEvent.KEYCODE_2, AndroidKeyEvent.KEYCODE_NUMPAD_2 -> 2
        AndroidKeyEvent.KEYCODE_3, AndroidKeyEvent.KEYCODE_NUMPAD_3 -> 3
        AndroidKeyEvent.KEYCODE_4, AndroidKeyEvent.KEYCODE_NUMPAD_4 -> 4
        AndroidKeyEvent.KEYCODE_5, AndroidKeyEvent.KEYCODE_NUMPAD_5 -> 5
        AndroidKeyEvent.KEYCODE_6, AndroidKeyEvent.KEYCODE_NUMPAD_6 -> 6
        AndroidKeyEvent.KEYCODE_7, AndroidKeyEvent.KEYCODE_NUMPAD_7 -> 7
        AndroidKeyEvent.KEYCODE_8, AndroidKeyEvent.KEYCODE_NUMPAD_8 -> 8
        AndroidKeyEvent.KEYCODE_9, AndroidKeyEvent.KEYCODE_NUMPAD_9 -> 9
        else -> null
    }

    fun isConfirmKeyCode(keyCode: Int): Boolean =
        keyCode == AndroidKeyEvent.KEYCODE_DPAD_CENTER ||
            keyCode == AndroidKeyEvent.KEYCODE_ENTER ||
            keyCode == AndroidKeyEvent.KEYCODE_NUMPAD_ENTER

    fun isCancelKeyCode(keyCode: Int): Boolean =
        keyCode == AndroidKeyEvent.KEYCODE_BACK

    fun isDirectionalKeyCode(keyCode: Int): Boolean =
        keyCode == AndroidKeyEvent.KEYCODE_DPAD_UP ||
            keyCode == AndroidKeyEvent.KEYCODE_DPAD_DOWN ||
            keyCode == AndroidKeyEvent.KEYCODE_DPAD_LEFT ||
            keyCode == AndroidKeyEvent.KEYCODE_DPAD_RIGHT

    /**
     * Accumula una cifra (0..9) fino a [MAX_DIGITS]; se le cifre sono già 4,
     * una nuova cifra sostituisce l'inserimento ripartendo dalla nuova cifra.
     */
    fun appendDigit(currentDigits: String, digit: Int): String {
        if (digit !in 0..9) return currentDigits
        return if (currentDigits.length >= MAX_DIGITS) {
            digit.toString()
        } else {
            currentDigits + digit.toString()
        }
    }

    /** Vero quando sono trascorsi almeno 2 secondi dall'ultima cifra digitata. */
    fun shouldAutoConfirm(lastDigitAtMillis: Long, nowMillis: Long): Boolean =
        nowMillis - lastDigitAtMillis >= CONFIRM_DELAY_MILLIS

    /** Vero finché il messaggio "Canale N non trovato" deve restare visibile (2 s). */
    fun isNotFoundVisible(shownAtMillis: Long, nowMillis: Long): Boolean =
        nowMillis - shownAtMillis < NOT_FOUND_DURATION_MILLIS

    fun notFoundMessage(number: Int): String = "Canale $number non trovato"

    /**
     * Primo canale del catalogo con `num == number`; in presenza di duplicati
     * vince il primo nell'ordine di [allStreams].
     */
    fun findByNumber(
        number: Int,
        allStreams: List<LiveStream>,
    ): LiveStream? = allStreams.firstOrNull { it.num == number }

    /**
     * Costruisce la lista di zapping nella categoria del canale scelto,
     * mantenendo l'ordine del catalogo.
     */
    fun resolveZappingTarget(
        channel: LiveStream,
        allStreams: List<LiveStream>,
        categories: List<Category> = emptyList(),
    ): LiveZappingTarget {
        val categoryId = channel.categoryId
        val categoryChannels = allStreams
            .filter { it.categoryId == categoryId }
            .ifEmpty { listOf(channel) }
        val byReference = categoryChannels.indexOfFirst { it === channel }
        val foundIndex = if (byReference >= 0) {
            byReference
        } else {
            categoryChannels.indexOfFirst { it.streamId == channel.streamId }
        }
        val channels = if (foundIndex >= 0) categoryChannels else listOf(channel)
        val startIndex = if (foundIndex >= 0) foundIndex else 0
        val categoryName = if (categoryId != null) {
            categories.firstOrNull { it.categoryId == categoryId }?.categoryName
        } else {
            null
        }
        return LiveZappingTarget(
            channels = channels,
            startIndex = startIndex,
            categoryId = categoryId,
            categoryName = categoryName,
        )
    }

    /** Cerca il canale per numero su tutto il catalogo Live e calcola lo zapping. */
    fun lookup(
        number: Int,
        allStreams: List<LiveStream>,
        categories: List<Category> = emptyList(),
    ): ChannelLookupResult {
        val channel = findByNumber(number, allStreams)
            ?: return ChannelLookupResult.NotFound(number)
        return ChannelLookupResult.Found(
            number = number,
            channel = channel,
            zapping = resolveZappingTarget(channel, allStreams, categories),
        )
    }

    /**
     * Numerazione personale di "I miei canali": il numero è la posizione nella
     * lista (1..N) e lo zapping segue lo stesso ordine.
     */
    fun lookupPersonal(
        number: Int,
        channels: List<LiveStream>,
    ): ChannelLookupResult {
        val channel = channels.getOrNull(number - 1)
            ?: return ChannelLookupResult.NotFound(number)
        return ChannelLookupResult.Found(
            number = number,
            channel = channel,
            zapping = LiveZappingTarget(
                channels = channels,
                startIndex = number - 1,
                categoryId = null,
                categoryName = null,
            ),
        )
    }

    /** Ricerca per numero con la numerazione dell'origine scelta. */
    fun lookup(
        number: Int,
        allStreams: List<LiveStream>,
        categories: List<Category> = emptyList(),
        numbering: ChannelNumbering,
    ): ChannelLookupResult = when (numbering) {
        ChannelNumbering.PROVIDER -> lookup(number, allStreams, categories)
        ChannelNumbering.PERSONAL -> lookupPersonal(number, allStreams)
    }
}

/**
 * Macchina a stati pura dell'inserimento numerico, con [Clock] iniettabile per
 * i test deterministici senza simulazione del telecomando.
 */
class ChannelNumberSession(
    private val clock: Clock = SystemClock,
    private val numbering: ChannelNumbering = ChannelNumbering.PROVIDER,
) {

    var digits: String = ""
        private set

    var lastDigitAtMillis: Long = 0L
        private set

    var notFoundNumber: Int? = null
        private set

    var notFoundAtMillis: Long = 0L
        private set

    private var consumeConfirmKeyUp: Boolean = false
    private var consumeCancelKeyUp: Boolean = false

    val isInputActive: Boolean
        get() = digits.isNotEmpty()

    val overlay: ChannelNumberOverlay?
        get() = when {
            digits.isNotEmpty() -> ChannelNumberOverlay.Digits(
                digits = digits,
                updatedAtMillis = lastDigitAtMillis,
            )
            notFoundNumber != null -> ChannelNumberOverlay.NotFound(
                number = notFoundNumber!!,
                shownAtMillis = notFoundAtMillis,
            )
            else -> null
        }

    fun onDigit(digit: Int): String {
        if (digit !in 0..9) return digits
        digits = ChannelNumberInput.appendDigit(digits, digit)
        lastDigitAtMillis = clock.nowMillis()
        notFoundNumber = null
        notFoundAtMillis = 0L
        return digits
    }

    fun confirm(
        allStreams: List<LiveStream>,
        categories: List<Category> = emptyList(),
    ): ChannelLookupResult? {
        if (digits.isEmpty()) return null
        val entered = digits
        digits = ""
        lastDigitAtMillis = 0L
        val number = entered.toIntOrNull() ?: return null
        val result = ChannelNumberInput.lookup(number, allStreams, categories, numbering)
        when (result) {
            is ChannelLookupResult.Found -> {
                notFoundNumber = null
                notFoundAtMillis = 0L
            }
            is ChannelLookupResult.NotFound -> {
                notFoundNumber = result.number
                notFoundAtMillis = clock.nowMillis()
            }
        }
        return result
    }

    /** Conferma se l'inserimento è attivo e sono passati almeno 2 s dall'ultima cifra. */
    fun confirmIfDue(
        allStreams: List<LiveStream>,
        categories: List<Category> = emptyList(),
    ): ChannelLookupResult? {
        if (!isInputActive) return null
        if (!ChannelNumberInput.shouldAutoConfirm(lastDigitAtMillis, clock.nowMillis())) {
            return null
        }
        return confirm(allStreams, categories)
    }

    /** Nasconde il messaggio di canale non trovato quando sono trascorsi 2 s. */
    fun clearExpiredNotFound(): Boolean {
        if (notFoundNumber == null) return false
        if (ChannelNumberInput.isNotFoundVisible(notFoundAtMillis, clock.nowMillis())) {
            return false
        }
        notFoundNumber = null
        notFoundAtMillis = 0L
        return true
    }

    /** Annulla l'inserimento in corso; restituisce `true` se c'erano cifre attive. */
    fun cancel(): Boolean {
        if (!isInputActive) return false
        digits = ""
        lastDigitAtMillis = 0L
        return true
    }

    /** Chiude cifre e avviso mantenendo l'eventuale riassorbimento del KeyUp in corso. */
    fun dismissOverlay() {
        digits = ""
        lastDigitAtMillis = 0L
        notFoundNumber = null
        notFoundAtMillis = 0L
    }

    /** Ripristina completamente la sessione. */
    fun clear() {
        dismissOverlay()
        consumeConfirmKeyUp = false
        consumeCancelKeyUp = false
    }

    fun handleKeyEvent(
        keyCode: Int,
        action: Int,
        repeatCount: Int = 0,
        allStreams: List<LiveStream>,
        categories: List<Category> = emptyList(),
    ): ChannelKeyOutcome {
        val digit = ChannelNumberInput.digitFromKeyCode(keyCode)
        if (digit != null) {
            return when (action) {
                AndroidKeyEvent.ACTION_DOWN -> {
                    if (repeatCount == 0) {
                        onDigit(digit)
                    }
                    ChannelKeyOutcome.Consumed
                }
                AndroidKeyEvent.ACTION_UP -> ChannelKeyOutcome.Consumed
                else -> ChannelKeyOutcome.Ignored
            }
        }

        if (ChannelNumberInput.isConfirmKeyCode(keyCode)) {
            return when (action) {
                AndroidKeyEvent.ACTION_DOWN -> {
                    if (isInputActive) {
                        consumeConfirmKeyUp = true
                        val result = confirm(allStreams, categories)
                        if (result != null) {
                            ChannelKeyOutcome.Confirmed(result)
                        } else {
                            ChannelKeyOutcome.Consumed
                        }
                    } else {
                        consumeConfirmKeyUp = false
                        ChannelKeyOutcome.Ignored
                    }
                }
                AndroidKeyEvent.ACTION_UP -> {
                    if (consumeConfirmKeyUp) {
                        consumeConfirmKeyUp = false
                        ChannelKeyOutcome.Consumed
                    } else {
                        ChannelKeyOutcome.Ignored
                    }
                }
                else -> ChannelKeyOutcome.Ignored
            }
        }

        if (ChannelNumberInput.isCancelKeyCode(keyCode)) {
            return when (action) {
                AndroidKeyEvent.ACTION_DOWN -> {
                    if (isInputActive) {
                        cancel()
                        consumeCancelKeyUp = true
                        ChannelKeyOutcome.Cancelled
                    } else {
                        consumeCancelKeyUp = false
                        ChannelKeyOutcome.Ignored
                    }
                }
                AndroidKeyEvent.ACTION_UP -> {
                    if (consumeCancelKeyUp) {
                        consumeCancelKeyUp = false
                        ChannelKeyOutcome.Consumed
                    } else {
                        ChannelKeyOutcome.Ignored
                    }
                }
                else -> ChannelKeyOutcome.Ignored
            }
        }

        if (ChannelNumberInput.isDirectionalKeyCode(keyCode)) {
            if (action == AndroidKeyEvent.ACTION_DOWN && isInputActive) {
                cancel()
                return ChannelKeyOutcome.CancelledPassThrough
            }
            return ChannelKeyOutcome.Ignored
        }

        return ChannelKeyOutcome.Ignored
    }
}
