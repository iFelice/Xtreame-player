package it.felixvision.tv.data.update

import android.content.pm.PackageInstaller
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class AppVersionTest {

    @Test
    fun `confronto semantico numerico distingue 1_0_10 maggiore di 1_0_9`() {
        val cmp = compareSemanticVersions("1.0.10", "1.0.9")
        assertTrue(cmp != null && cmp > 0)
        assertTrue(isUpdateAvailable(currentVersion = "1.0.9", remoteTag = "1.0.10"))
        assertFalse(isUpdateAvailable(currentVersion = "1.0.10", remoteTag = "1.0.9"))
    }

    @Test
    fun `versioni uguali o con zeri finali equivalenti non sono aggiornamenti`() {
        assertEquals(0, compareSemanticVersions("1.0.3", "1.0.3"))
        assertEquals(0, compareSemanticVersions("1.0", "1.0.0"))
        assertFalse(isUpdateAvailable(currentVersion = "1.0.3", remoteTag = "1.0.3"))
        assertFalse(isUpdateAvailable(currentVersion = "1.2", remoteTag = "1.2.0"))
        assertTrue(isUpdateAvailable(currentVersion = "1.2", remoteTag = "1.2.1"))
    }

    @Test
    fun `prefisso v seguito da cifra viene interpretato correttamente`() {
        assertEquals(listOf(1, 0, 3), parseNumericVersion("v1.0.3"))
        assertTrue(isUpdateAvailable(currentVersion = "1.0.2", remoteTag = "v1.0.3"))
    }

    @Test
    fun `tag non numerici sono gestiti senza crash`() {
        assertNull(parseNumericVersion(""))
        assertNull(parseNumericVersion("nightly"))
        assertNull(parseNumericVersion("1.0.3-rc1"))
        assertNull(parseNumericVersion("1..2"))
        assertNull(compareSemanticVersions("nightly", "1.0.3"))
        assertFalse(isUpdateAvailable(currentVersion = "1.0.3", remoteTag = "nightly"))
        assertFalse(isUpdateAvailable(currentVersion = "1.0.3", remoteTag = ""))
        assertFalse(isUpdateAvailable(currentVersion = "custom-build", remoteTag = "1.0.3", isDebugBuild = false))
    }

    @Test
    fun `la build di debug 0_1_0 considera disponibile qualunque release non vuota`() {
        assertTrue(isDebugVersion("0.1.0"))
        assertFalse(isDebugVersion("1.0.0"))
        assertTrue(isUpdateAvailable(currentVersion = "0.1.0", remoteTag = "1.0.3"))
        assertTrue(isUpdateAvailable(currentVersion = "0.1.0", remoteTag = "0.1.0"))
        assertTrue(isUpdateAvailable(currentVersion = "0.1.0", remoteTag = "0.0.1"))
        assertTrue(isUpdateAvailable(currentVersion = "0.1.0", remoteTag = "release-test"))
        assertFalse(isUpdateAvailable(currentVersion = "0.1.0", remoteTag = "   "))
    }

    @Test
    fun `mappatura esiti di PackageInstaller copre firma diversa annullamento e successo`() {
        assertEquals(
            InstallOutcome.PendingUserAction,
            mapInstallStatus(PackageInstaller.STATUS_PENDING_USER_ACTION, null),
        )
        assertEquals(
            InstallOutcome.Succeeded,
            mapInstallStatus(PackageInstaller.STATUS_SUCCESS, null),
        )
        assertEquals(
            InstallOutcome.CancelledByUser,
            mapInstallStatus(PackageInstaller.STATUS_FAILURE_ABORTED, "User cancelled"),
        )
        assertEquals(
            InstallOutcome.Failed(INCOMPATIBLE_UPDATE_MESSAGE),
            mapInstallStatus(PackageInstaller.STATUS_FAILURE_CONFLICT, "INSTALL_FAILED_UPDATE_INCOMPATIBLE"),
        )
        assertEquals(
            InstallOutcome.Failed(INCOMPATIBLE_UPDATE_MESSAGE),
            mapInstallStatus(PackageInstaller.STATUS_FAILURE, "INSTALL_FAILED_UPDATE_INCOMPATIBLE: signatures do not match"),
        )
        assertEquals(
            InstallOutcome.Failed(GENERIC_INSTALL_ERROR),
            mapInstallStatus(PackageInstaller.STATUS_FAILURE, "Internal error"),
        )
    }
}
