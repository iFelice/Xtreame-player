package it.felixvision.tv.ui.settings

import android.content.Context
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow

/**
 * Dimensione dell'interfaccia scelta nelle Impostazioni, salvata in
 * SharedPreferences (`fvp_ui`, chiave `interface_size`).
 *
 * La lettura è sincrona apposta: il primo fotogramma dell'app deve già avere la
 * dimensione giusta, senza un passaggio visibile dalla misura grande a quella
 * scelta. SharedPreferences va bene qui perché il dato è un'unica stringa
 * piccola; non c'è nulla di sensibile e non serve cifratura.
 */
class InterfaceSizeStore(
    context: Context,
    private val preferencesName: String = "fvp_ui",
) {

    private val preferences = context.applicationContext
        .getSharedPreferences(preferencesName, Context.MODE_PRIVATE)

    private val _size = MutableStateFlow(
        InterfaceSize.fromStorage(preferences.getString(KEY_INTERFACE_SIZE, null)),
    )

    /** Dimensione attiva; emessa subito con il valore salvato. */
    val size: StateFlow<InterfaceSize> = _size.asStateFlow()

    /** Salva la dimensione e aggiorna subito [size]. */
    fun set(size: InterfaceSize) {
        if (_size.value == size) return
        preferences.edit().putString(KEY_INTERFACE_SIZE, size.storageKey).apply()
        _size.value = size
    }

    private companion object {
        const val KEY_INTERFACE_SIZE = "interface_size"
    }
}
