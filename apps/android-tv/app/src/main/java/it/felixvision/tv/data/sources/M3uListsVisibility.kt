package it.felixvision.tv.data.sources

import android.content.Context

/**
 * Interruttore **generale** "Mostra" della riga "Liste M3U" delle Impostazioni.
 *
 * È una scelta a sé, non una proprietà delle singole liste: spegnendolo tutte le
 * liste escono dal catalogo, ma le scelte fatte lista per lista restano salvate
 * e tornano quando lo riaccende. Dentro la pagina "Liste M3U" le liste si
 * vedono e si comandano comunque, altrimenti a generale spento non ci sarebbe
 * modo di riaccenderle una per una.
 */
interface M3uListsVisibility {

    /** Vero se le liste M3U possono comparire nel catalogo. */
    fun listsVisible(): Boolean

    /** Salva la scelta dell'interruttore generale. */
    fun setListsVisible(visible: Boolean)

    companion object {
        /** Nessun interruttore generale (test, app senza la pagina): sempre visibili. */
        val ALWAYS_VISIBLE: M3uListsVisibility = object : M3uListsVisibility {
            override fun listsVisible(): Boolean = true
            override fun setListsVisible(visible: Boolean) = Unit
        }
    }
}

/**
 * Interruttore generale salvato nelle preferenze (`fvp_sources`, chiave
 * `m3u_lists_visible`, acceso se la chiave non c'è).
 *
 * È un dato piccolo e non sensibile, come l'ordinamento delle categorie: la
 * lettura è sincrona così il catalogo nasce già nello stato giusto, senza un
 * primo fotogramma con le liste che poi spariscono.
 */
class SharedPreferencesM3uListsVisibility(
    context: Context,
    private val preferencesName: String = PREFERENCES_NAME,
) : M3uListsVisibility {

    private val preferences = context.applicationContext
        .getSharedPreferences(preferencesName, Context.MODE_PRIVATE)

    override fun listsVisible(): Boolean =
        runCatching { preferences.getBoolean(KEY_VISIBLE, true) }.getOrDefault(true)

    override fun setListsVisible(visible: Boolean) {
        runCatching { preferences.edit().putBoolean(KEY_VISIBLE, visible).apply() }
    }

    companion object {
        const val PREFERENCES_NAME = "fvp_sources"
        const val KEY_VISIBLE = "m3u_lists_visible"
    }
}
