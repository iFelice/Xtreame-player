package it.felixvision.tv.data.backup

import it.felixvision.tv.data.channels.MyChannel
import it.felixvision.tv.data.favorites.FavoriteItem
import it.felixvision.tv.data.progress.WatchProgress
import it.felixvision.tv.data.protection.HiddenCategory
import it.felixvision.tv.data.protection.HiddenItem
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Regole di unione del backup: insiemi uniti senza cancellare nulla di ciò
 * che è già sulla TV, avanzamento più recente per titolo, rilevazione di un
 * altro account, PIN mancante e configurazione VPN presente o assente.
 */
class BackupMergeTest {

    private fun favorite(id: String) = FavoriteItem(id = id, type = FavoriteItem.VOD, title = "Titolo $id")

    @Test
    fun `i preferiti si uniscono senza duplicati e senza cancellare`() {
        val current = listOf(favorite("vod_1"), favorite("vod_2"))
        val incoming = listOf(favorite("vod_2"), favorite("vod_3"))

        val merged = BackupMerge.mergeFavorites(current, incoming)

        assertEquals(listOf("vod_1", "vod_2", "vod_3"), merged.merged.map { it.id })
        assertEquals(1, merged.added)
    }

    @Test
    fun `i miei canali conservano l'ordine della TV con i nuovi in fondo`() {
        val current = listOf(MyChannel("101", "Canale 101"), MyChannel("102", "Canale 102"))
        val incoming = listOf(MyChannel("102", "Canale 102"), MyChannel("103", "Canale 103"))

        val merged = BackupMerge.mergeMyChannels(current, incoming)

        assertEquals(listOf("101", "102", "103"), merged.merged.map { it.streamId })
        assertEquals(1, merged.added)
    }

    @Test
    fun `le categorie nascoste si uniscono per tipo e id`() {
        val current = listOf(HiddenCategory(kind = "live", categoryId = "001", name = "Sport"))
        val incoming = listOf(
            HiddenCategory(kind = "live", categoryId = "001", name = "Sport"),
            HiddenCategory(kind = "vod", categoryId = "001", name = "Film"),
        )

        val merged = BackupMerge.mergeHiddenCategories(current, incoming)

        assertEquals(2, merged.merged.size)
        assertEquals(1, merged.added)
    }

    @Test
    fun `i contenuti nascosti si uniscono per tipo e id`() {
        val current = listOf(HiddenItem(kind = "vod", itemId = "201", categoryId = null, name = "Film"))
        val incoming = listOf(
            HiddenItem(kind = "vod", itemId = "201", categoryId = null, name = "Film"),
            HiddenItem(kind = "series", itemId = "301", categoryId = null, name = "Serie"),
        )

        val merged = BackupMerge.mergeHiddenItems(current, incoming)

        assertEquals(2, merged.merged.size)
        assertEquals(1, merged.added)
    }

    @Test
    fun `per ogni titolo vince l'avanzamento piu recente`() {
        val current = mapOf(
            "vod_1" to WatchProgress(positionMillis = 60_000L, durationMillis = 600_000L, updatedAtMillis = 1_000L),
            "vod_2" to WatchProgress(positionMillis = 60_000L, durationMillis = 600_000L, updatedAtMillis = 3_000L),
        )
        val incoming = mapOf(
            "vod_1" to WatchProgress(positionMillis = 120_000L, durationMillis = 600_000L, updatedAtMillis = 2_000L),
            "vod_2" to WatchProgress(positionMillis = 30_000L, durationMillis = 600_000L, updatedAtMillis = 1_500L),
            "vod_3" to WatchProgress(positionMillis = 60_000L, durationMillis = 600_000L, updatedAtMillis = 500L),
        )

        val merged = BackupMerge.mergeProgress(current, incoming)

        assertEquals(120_000L, merged.merged.getValue("vod_1").positionMillis)
        assertEquals(60_000L, merged.merged.getValue("vod_2").positionMillis)
        assertTrue(merged.merged.containsKey("vod_3"))
        assertEquals(1, merged.added)
        assertEquals(1, merged.updated)
    }

    @Test
    fun `a parita di data vince l'avanzamento della TV`() {
        val tv = WatchProgress(positionMillis = 60_000L, durationMillis = 600_000L, updatedAtMillis = 1_000L)
        val backup = WatchProgress(positionMillis = 120_000L, durationMillis = 600_000L, updatedAtMillis = 1_000L)

        val merged = BackupMerge.mergeProgress(mapOf("vod_1" to tv), mapOf("vod_1" to backup))

        assertEquals(60_000L, merged.merged.getValue("vod_1").positionMillis)
        assertEquals(0, merged.added)
        assertEquals(0, merged.updated)
    }

    @Test
    fun `il backup dello stesso account non chiede conferma`() {
        val account = BackupAccountIds.forAccount("http://server.esempio:8080", "demo")

        assertFalse(BackupMerge.isOtherAccount(account, "http://server.esempio:8080", "demo"))
    }

    @Test
    fun `il backup di un altro account chiede conferma`() {
        val account = BackupAccountIds.forAccount("http://server.esempio:8080", "demo")

        assertTrue(BackupMerge.isOtherAccount(account, "http://server.esempio:8080", "altro"))
        assertTrue(BackupMerge.isOtherAccount(account, "http://altro-server.esempio:8080", "demo"))
    }

    @Test
    fun `il PIN va creato solo senza PIN sulla TV e con protetti nel backup`() {
        assertTrue(BackupMerge.needsPinCreation(tvHasPin = false, incomingHiddenCount = 2))
        assertFalse(BackupMerge.needsPinCreation(tvHasPin = true, incomingHiddenCount = 2))
        assertFalse(BackupMerge.needsPinCreation(tvHasPin = false, incomingHiddenCount = 0))
    }

    @Test
    fun `la VPN si importa in silenzio solo se la TV non ne ha una`() {
        val backupVpn = BackupVpn(text = "configurazione", serverName = "Server")

        assertEquals(VpnPlan.NothingToImport, BackupMerge.vpnPlan(tvHasConfig = false, backupVpn = null))
        assertEquals(VpnPlan.NothingToImport, BackupMerge.vpnPlan(tvHasConfig = true, backupVpn = null))
        assertEquals(VpnPlan.ImportSilently, BackupMerge.vpnPlan(tvHasConfig = false, backupVpn = backupVpn))
        assertEquals(VpnPlan.AskUser, BackupMerge.vpnPlan(tvHasConfig = true, backupVpn = backupVpn))
    }

    @Test
    fun `il riepilogo riporta voci modificate`() {
        assertFalse(BackupSummary().hasChanges)
        assertTrue(BackupSummary(favoritesAdded = 1).hasChanges)
        assertTrue(BackupSummary(channelsAdded = 1).hasChanges)
        assertTrue(BackupSummary(hiddenAdded = 1).hasChanges)
        assertTrue(BackupSummary(progressAdded = 1).hasChanges)
        assertTrue(BackupSummary(progressUpdated = 1).hasChanges)
        assertTrue(BackupSummary(vpnImported = true).hasChanges)
    }
}
