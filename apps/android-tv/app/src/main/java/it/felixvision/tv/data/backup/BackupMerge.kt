package it.felixvision.tv.data.backup

import it.felixvision.tv.data.channels.MyChannel
import it.felixvision.tv.data.favorites.FavoriteItem
import it.felixvision.tv.data.progress.WatchProgress
import it.felixvision.tv.data.protection.HiddenCategory
import it.felixvision.tv.data.protection.HiddenItem

/**
 * Regole pure di unione del backup con i dati della TV. Nulla di ciò che è
 * già sulla TV viene cancellato: le unioni aggiungono solo voci mancanti e
 * per l'avanzamento vince la voce più recente per titolo.
 * Tipo puro: nessun Android e nessuna dipendenza da `ui/` o da tv-material
 * (compilato anche dall'app mobile).
 */
object BackupMerge {

    /** Preferiti uniti (TV prima, poi le voci nuove del backup) e quanti aggiunti. */
    fun mergeFavorites(
        current: List<FavoriteItem>,
        incoming: List<FavoriteItem>,
    ): MergeResult<List<FavoriteItem>> {
        val known = current.map { it.id }.toMutableSet()
        val added = mutableListOf<FavoriteItem>()
        for (item in incoming) {
            if (known.add(item.id)) added.add(item)
        }
        return MergeResult(current + added, added.size)
    }

    /** "I miei canali" uniti (ordine TV conservato, nuovi in fondo) e quanti aggiunti. */
    fun mergeMyChannels(
        current: List<MyChannel>,
        incoming: List<MyChannel>,
    ): MergeResult<List<MyChannel>> {
        val known = current.map { it.streamId }.toMutableSet()
        val added = mutableListOf<MyChannel>()
        for (channel in incoming) {
            if (known.add(channel.streamId)) added.add(channel)
        }
        return MergeResult(current + added, added.size)
    }

    /** Categorie nascoste unite per (tipo, id) e quante aggiunte. Mai il PIN. */
    fun mergeHiddenCategories(
        current: List<HiddenCategory>,
        incoming: List<HiddenCategory>,
    ): MergeResult<List<HiddenCategory>> {
        val known = current.map { it.kind to it.categoryId }.toMutableSet()
        val added = mutableListOf<HiddenCategory>()
        for (category in incoming) {
            if (known.add(category.kind to category.categoryId)) added.add(category)
        }
        return MergeResult(current + added, added.size)
    }

    /** Contenuti singoli nascosti uniti per (tipo, id) e quanti aggiunti. Mai il PIN. */
    fun mergeHiddenItems(
        current: List<HiddenItem>,
        incoming: List<HiddenItem>,
    ): MergeResult<List<HiddenItem>> {
        val known = current.map { it.kind to it.itemId }.toMutableSet()
        val added = mutableListOf<HiddenItem>()
        for (item in incoming) {
            if (known.add(item.kind to item.itemId)) added.add(item)
        }
        return MergeResult(current + added, added.size)
    }

    /**
     * Avanzamento unito: per ogni titolo vince la voce con
     * [WatchProgress.updatedAtMillis] più recente; a parità vince la TV.
     * Riporta quanti titoli aggiunti e quanti aggiornati.
     */
    fun mergeProgress(
        current: Map<String, WatchProgress>,
        incoming: Map<String, WatchProgress>,
    ): ProgressMerge {
        if (incoming.isEmpty()) return ProgressMerge(current, added = 0, updated = 0)
        val merged = current.toMutableMap()
        var added = 0
        var updated = 0
        for ((key, entry) in incoming) {
            val existing = merged[key]
            if (existing == null) {
                merged[key] = entry
                added++
            } else if (entry.updatedAtMillis > existing.updatedAtMillis && entry != existing) {
                merged[key] = entry
                updated++
            }
        }
        return ProgressMerge(merged, added, updated)
    }

    /**
     * Vero quando il backup proviene da un altro account: la TV chiede
     * conferma con Sì/No prima di applicare qualsiasi cosa.
     */
    fun isOtherAccount(account: BackupAccountId, server: String, username: String): Boolean =
        !BackupAccountIds.matches(account, server, username)

    /**
     * Vero quando la TV deve far creare un PIN prima di applicare l'elenco
     * dei contenuti protetti: la TV non ne ha uno e il backup ne contiene.
     */
    fun needsPinCreation(tvHasPin: Boolean, incomingHiddenCount: Int): Boolean =
        !tvHasPin && incomingHiddenCount > 0

    /**
     * Piano per la VPN del backup: niente da fare senza configurazione nel
     * backup, importazione diretta quando la TV non ne ha una, domanda Sì/No
     * quando la TV ne ha già una (mai sovrascrittura senza consenso).
     */
    fun vpnPlan(tvHasConfig: Boolean, backupVpn: BackupVpn?): VpnPlan = when {
        backupVpn == null -> VpnPlan.NothingToImport
        !tvHasConfig -> VpnPlan.ImportSilently
        else -> VpnPlan.AskUser
    }
}

/** Valore unito e quante voci aggiunte rispetto alla TV. */
data class MergeResult<T>(
    val merged: T,
    val added: Int,
)

/** Avanzamento unito, con titoli aggiunti e aggiornati. */
data class ProgressMerge(
    val merged: Map<String, WatchProgress>,
    val added: Int,
    val updated: Int,
)

/** Cosa fare con la configurazione VPN del backup. */
enum class VpnPlan {
    NothingToImport,
    ImportSilently,
    AskUser,
}

/** Riepilogo mostrato al termine dell'importazione. */
data class BackupSummary(
    val favoritesAdded: Int = 0,
    val channelsAdded: Int = 0,
    val hiddenAdded: Int = 0,
    val progressAdded: Int = 0,
    val progressUpdated: Int = 0,
    val vpnImported: Boolean = false,
) {
    /** Vero quando almeno una voce è cambiata sulla TV. */
    val hasChanges: Boolean
        get() = favoritesAdded > 0 || channelsAdded > 0 || hiddenAdded > 0 ||
            progressAdded > 0 || progressUpdated > 0 || vpnImported
}
