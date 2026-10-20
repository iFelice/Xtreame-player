package it.felixvision.tv.data.store

import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.edit
import androidx.datastore.preferences.core.stringPreferencesKey
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.flow.map

/**
 * Archivio chiave/valore minimale su cui poggia il salvataggio cifrato. Il blob
 * scritto qui è già cifrato: DataStore non vede mai il testo in chiaro.
 */
interface SecurePreferences {
    suspend fun read(key: String): String?
    suspend fun write(key: String, value: String?)
}

class DataStoreSecurePreferences(
    private val dataStore: DataStore<Preferences>,
) : SecurePreferences {

    override suspend fun read(key: String): String? =
        dataStore.data.map { preferences -> preferences[stringPreferencesKey(key)] }.first()

    override suspend fun write(key: String, value: String?) {
        val preferencesKey = stringPreferencesKey(key)
        dataStore.edit { preferences ->
            if (value == null) {
                preferences.remove(preferencesKey)
            } else {
                preferences[preferencesKey] = value
            }
        }
    }
}
