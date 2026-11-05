package it.felixvision.tv.data.backup

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Identificatore dell'account nel backup: riconosce lo stesso account senza
 * permettere di risalire a server o username, ed è insensibile a maiuscole e
 * spazi come gli archivi della TV.
 */
class BackupAccountIdsTest {

    private val server = "http://server.esempio:8080"
    private val username = "demo"

    @Test
    fun `lo stesso account viene riconosciuto`() {
        val account = BackupAccountIds.forAccount(server, username)

        assertTrue(BackupAccountIds.matches(account, server, username))
    }

    @Test
    fun `un altro account non viene riconosciuto`() {
        val account = BackupAccountIds.forAccount(server, username)

        assertFalse(BackupAccountIds.matches(account, server, "altro"))
        assertFalse(BackupAccountIds.matches(account, "http://altro-server.esempio:8080", username))
    }

    @Test
    fun `maiuscole e spazi non cambiano il riconoscimento`() {
        val account = BackupAccountIds.forAccount(server, username)

        assertTrue(BackupAccountIds.matches(account, "  HTTP://SERVER.ESEMPIO:8080 ", " Demo "))
    }

    @Test
    fun `l'identificatore non contiene server o username in chiaro`() {
        val account = BackupAccountIds.forAccount(server, username)

        assertFalse(account.salt.contains("server", ignoreCase = true))
        assertFalse(account.hash.contains("server", ignoreCase = true))
        assertFalse(account.salt.contains(username, ignoreCase = true))
        assertFalse(account.hash.contains(username, ignoreCase = true))
        assertFalse(account.toString().contains("server", ignoreCase = true))
    }

    @Test
    fun `due identificatori dello stesso account hanno sale diverse`() {
        val first = BackupAccountIds.forAccount(server, username)
        val second = BackupAccountIds.forAccount(server, username)

        assertTrue(first.salt != second.salt)
        assertTrue(first.hash != second.hash)
        assertTrue(BackupAccountIds.matches(first, server, username))
        assertTrue(BackupAccountIds.matches(second, server, username))
    }

    @Test
    fun `dati malformati non vengono riconosciuti senza eccezioni`() {
        assertFalse(BackupAccountIds.matches(BackupAccountId("non-base64url!!!", "AA"), server, username))
        assertFalse(BackupAccountIds.matches(BackupAccountId("AA", "non-base64url!!!"), server, username))
    }
}
