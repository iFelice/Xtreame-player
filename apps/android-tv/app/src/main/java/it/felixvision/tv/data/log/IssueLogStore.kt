package it.felixvision.tv.data.log

import android.content.Context
import it.felixvision.tv.core.Clock
import it.felixvision.tv.core.FvpJson
import it.felixvision.tv.core.SystemClock
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.serialization.builtins.ListSerializer
import kotlinx.serialization.json.Json

/**
 * Archivio del Log: le righe dei problemi permanenti, lette dalla card e dalla
 * pagina "Log" delle Impostazioni e dall'avviso all'apertura dell'app.
 *
 * Chi conosce i problemi ([it.felixvision.tv.data.sources.M3uIssueCollector])
 * chiama [update] con l'elenco di quelli attivi; le regole stanno in
 * [IssueLog]. Le righe restano su disco, così dopo un riavvio il Log è ancora
 * lì (e un problema svuotato non ricompare).
 */
interface IssueLogStore {

    /** Le righe del Log, svuotate comprese (vedi [IssueLog.visible]). */
    val entries: StateFlow<List<IssueEntry>>

    /** Allinea il Log ai problemi attivi in questo momento. */
    fun update(active: List<Issue>)

    /** "Svuota log": i problemi in corso non tornano finché non rientrano. */
    fun clear()
}

/**
 * Log tenuto in memoria: test e anteprime, senza preferenze né disco.
 *
 * @param clock orologio iniettabile, per date e ore prevedibili nei test.
 */
class InMemoryIssueLogStore(
    private val clock: Clock = SystemClock,
) : IssueLogStore {

    private val _entries = MutableStateFlow<List<IssueEntry>>(emptyList())

    override val entries: StateFlow<List<IssueEntry>> = _entries.asStateFlow()

    override fun update(active: List<Issue>) {
        val updated = IssueLog.reconcile(_entries.value, active, clock.nowMillis())
        if (updated != _entries.value) _entries.value = updated
    }

    override fun clear() {
        val cleared = IssueLog.clear(_entries.value)
        if (cleared != _entries.value) _entries.value = cleared
    }
}

/**
 * Log salvato nelle preferenze (`fvp_log`, chiave `issues`) come JSON: poche
 * righe di testo, nessun dato sensibile, quindi niente cifratura.
 *
 * La prima lettura è sincrona: la card Log e l'avviso all'apertura devono
 * sapere subito se ci sono messaggi, senza un primo fotogramma vuoto.
 * Un archivio illeggibile (JSON rovinato) vale "Log vuoto", senza errori.
 */
class SharedPreferencesIssueLogStore(
    context: Context,
    private val clock: Clock = SystemClock,
    private val json: Json = FvpJson,
    private val preferencesName: String = PREFERENCES_NAME,
) : IssueLogStore {

    private val preferences = context.applicationContext
        .getSharedPreferences(preferencesName, Context.MODE_PRIVATE)

    private val _entries = MutableStateFlow(read())

    override val entries: StateFlow<List<IssueEntry>> = _entries.asStateFlow()

    override fun update(active: List<Issue>) {
        val updated = IssueLog.reconcile(_entries.value, active, clock.nowMillis())
        if (updated == _entries.value) return
        _entries.value = updated
        write(updated)
    }

    override fun clear() {
        val cleared = IssueLog.clear(_entries.value)
        if (cleared == _entries.value) return
        _entries.value = cleared
        write(cleared)
    }

    private fun read(): List<IssueEntry> = runCatching {
        val raw = preferences.getString(KEY_ENTRIES, null) ?: return emptyList()
        json.decodeFromString(ListSerializer(IssueEntry.serializer()), raw)
    }.getOrDefault(emptyList())

    private fun write(entries: List<IssueEntry>) {
        runCatching {
            val raw = json.encodeToString(ListSerializer(IssueEntry.serializer()), entries)
            preferences.edit().putString(KEY_ENTRIES, raw).apply()
        }
    }

    companion object {
        const val PREFERENCES_NAME = "fvp_log"
        const val KEY_ENTRIES = "issues"
    }
}
