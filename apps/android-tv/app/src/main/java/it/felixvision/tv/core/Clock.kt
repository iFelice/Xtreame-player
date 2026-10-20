package it.felixvision.tv.core

/**
 * Orologio iniettabile: serve a rendere deterministici i calcoli di scadenza
 * delle sessioni di abbinamento e dei test con orologio simulato.
 */
fun interface Clock {
    fun nowMillis(): Long
}

object SystemClock : Clock {
    override fun nowMillis(): Long = System.currentTimeMillis()
}
