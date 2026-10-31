package it.felixvision.tv.ui.main

import androidx.compose.runtime.Composable
import androidx.compose.runtime.State
import androidx.compose.runtime.produceState
import it.felixvision.tv.data.protection.ProtectedContentData
import it.felixvision.tv.data.protection.ProtectedContentStore
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.flow.collectLatest

/**
 * `null` solo alla prima lettura o al cambio account/archivio. Le revisioni
 * mantengono i dati precedenti durante la rilettura, senza smontare la pagina
 * di gestione dei contenuti protetti quando la sessione è bloccata.
 */
@Composable
fun rememberProtectedData(
    store: ProtectedContentStore,
    server: String,
    username: String,
): State<ProtectedContentData?> = produceState<ProtectedContentData?>(
    initialValue = null,
    store,
    server,
    username,
) {
    value = null
    store.revision.collectLatest {
        value = try {
            store.get(server, username)
        } catch (e: CancellationException) {
            throw e
        } catch (_: Exception) {
            value ?: ProtectedContentData()
        }
    }
}
