package it.felixvision.tv.data.volume

import android.content.Context
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler
import androidx.datastore.preferences.core.PreferenceDataStoreFactory
import androidx.datastore.preferences.core.edit
import androidx.datastore.preferences.core.emptyPreferences
import androidx.datastore.preferences.core.intPreferencesKey
import java.io.File
import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.withContext

/**
 * Livello del volume del player (0–15) salvato in DataStore e ripristinato a
 * ogni avvio del player. Non è un dato sensibile: nessuna cifratura, come per
 * gli altri archivi locali non legati alle credenziali.
 */
class VolumeStore(
    private val context: Context,
    private val io: CoroutineDispatcher = Dispatchers.IO,
) {

    private val dataStore by lazy {
        PreferenceDataStoreFactory.create(
            corruptionHandler = ReplaceFileCorruptionHandler { emptyPreferences() },
            produceFile = { File(context.filesDir, "fvp_player_volume.preferences_pb") },
        )
    }

    /** Livello salvato, riportato nei limiti; [PlayerVolume.DEFAULT_LEVEL] se assente. */
    suspend fun level(): Int = withContext(io) {
        val stored = dataStore.data.map { it[LEVEL_KEY] }.first()
        PlayerVolume.clampLevel(stored ?: PlayerVolume.DEFAULT_LEVEL)
    }

    /** Salva il livello, sempre nei limiti 0–15. */
    suspend fun saveLevel(level: Int) = withContext(io) {
        val clamped = PlayerVolume.clampLevel(level)
        dataStore.edit { preferences -> preferences[LEVEL_KEY] = clamped }
    }

    private companion object {
        val LEVEL_KEY = intPreferencesKey("player_volume_level")
    }
}
