package it.felixvision.mobile.ui.settings.protection

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class ProtectedPageGuardTest {
    @Test
    fun revocationInvalidatesAnInFlightVerification() {
        val guard = ProtectedPageGuard()
        val ticket = guard.generation.value
        assertTrue(guard.grantIfCurrent(ticket))
        guard.revoke()
        assertFalse(guard.isAuthorized)
        assertFalse(guard.grantIfCurrent(ticket))
        assertTrue(guard.grantIfCurrent(guard.generation.value))
    }
}
