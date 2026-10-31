package it.felixvision.tv.data.protection

import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class PinHasherTest {

    private val pin = "1234"

    @Test
    fun `verify accetta il PIN giusto e rifiuta quello sbagliato`() {
        val credential = PinHasher.create(pin)
        assertTrue(PinHasher.verify(pin, credential.hash, credential.salt, credential.iterations))
        assertFalse(PinHasher.verify("4321", credential.hash, credential.salt, credential.iterations))
        // Dati salvati malformati: falso senza eccezioni.
        assertFalse(PinHasher.verify(pin, "no-esadec!", credential.salt, credential.iterations))
        assertFalse(PinHasher.verify(pin, credential.hash, "zz", credential.iterations))
        assertFalse(PinHasher.verify(pin, credential.hash, credential.salt, 0))
        assertFalse(PinHasher.verify(pin, "", credential.salt, credential.iterations))
    }

    @Test
    fun `due creazioni dello stesso PIN usano sale e hash diversi`() {
        val a = PinHasher.create(pin)
        val b = PinHasher.create(pin)
        assertNotEquals(a.salt, b.salt)
        assertNotEquals(a.hash, b.hash)
        // Ognuno dei due salva verifiche comunque lo stesso PIN.
        assertTrue(PinHasher.verify(pin, a.hash, a.salt, a.iterations))
        assertTrue(PinHasher.verify(pin, b.hash, b.salt, b.iterations))
    }

    @Test
    fun `isValidPin accetta solo quattro cifre`() {
        assertTrue(PinHasher.isValidPin("1234"))
        assertTrue(PinHasher.isValidPin("0000"))
        assertFalse(PinHasher.isValidPin("123"))
        assertFalse(PinHasher.isValidPin("12345"))
        assertFalse(PinHasher.isValidPin("12a4"))
        assertFalse(PinHasher.isValidPin(""))
    }

    @Test
    fun `l hash non contiene il PIN in chiaro`() {
        val credential = PinHasher.create(pin)
        // Hash di 256 bit e sale di 16 byte, in esadecimale minuscolo.
        assertEquals(64, credential.hash.length)
        assertEquals(32, credential.salt.length)
        assertEquals(20_000, credential.iterations)
        assertNotEquals(pin, credential.hash)
        assertNotEquals(pin, credential.salt)
        // Nessun carattere non esadecimale: non c'è testo in chiaro salvato.
        assertTrue(credential.hash.all { it in '0'..'9' || it in 'a'..'f' })
        assertTrue(credential.salt.all { it in '0'..'9' || it in 'a'..'f' })
        // Il PIN in chiaro non compare nemmeno come sequenza esadecimale dei
        // suoi byte ASCII ("31323334"): sarebbe la sua forma grezza.
        val pinAsHex = PinHasher.toHex(pin.toByteArray(Charsets.US_ASCII))
        assertEquals("31323334", pinAsHex)
        assertFalse(credential.hash.contains(pinAsHex))
        assertFalse(credential.salt.contains(pinAsHex))
    }

    @Test
    fun `codifica esadecimale propria round-trip`() {
        val bytes = byteArrayOf(0, -1, 16, 112, -128)
        val hex = PinHasher.toHex(bytes)
        assertEquals("00ff107080", hex)
        assertArrayEquals(bytes, PinHasher.fromHex(hex))
        assertNull(PinHasher.fromHex("abc"))
        assertNull(PinHasher.fromHex("zz"))
        assertArrayEquals(ByteArray(0), PinHasher.fromHex(""))
    }
}
