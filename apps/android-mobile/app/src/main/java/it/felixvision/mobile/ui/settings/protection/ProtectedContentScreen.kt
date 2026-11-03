package it.felixvision.mobile.ui.settings.protection

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.foundation.text.input.rememberTextFieldState
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Checkbox
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableLongStateOf
import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import it.felixvision.mobile.ui.components.FvpIcons
import it.felixvision.mobile.ui.theme.FvpColors
import it.felixvision.tv.core.Clock
import it.felixvision.tv.data.catalog.allCategoryIds
import it.felixvision.tv.data.protection.HiddenCategory
import it.felixvision.tv.data.protection.HiddenItem
import it.felixvision.tv.data.protection.ProtectedContentData
import it.felixvision.tv.data.protection.ProtectedContentRules
import it.felixvision.tv.data.protection.ProtectedContentStore
import it.felixvision.tv.data.protection.ProtectedKind
import it.felixvision.tv.data.protection.ProtectedSession
import it.felixvision.tv.data.store.CredentialStore
import it.felixvision.tv.data.store.StoredCredentials
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch

/** Etichetta breve di un tipo di contenuto negli elenchi. */
internal fun protectedKindLabel(kind: ProtectedKind): String = when (kind) {
    ProtectedKind.LIVE -> "Live"
    ProtectedKind.VOD -> "Film"
    ProtectedKind.SERIES -> "Serie"
}

/** Tipo a partire dalla chiave salvata negli elenchi; null se sconosciuta. */
internal fun protectedKindFromStorageKey(key: String): ProtectedKind? =
    ProtectedKind.entries.firstOrNull { it.storageKey == key }

/** Pagine della schermata; la prima della pila è la radice. */
internal sealed interface ProtectedPage {
    data object Main : ProtectedPage
    data object CreatePin : ProtectedPage
    data object ConfirmPin : ProtectedPage
    data object VerifyPin : ProtectedPage
    data object ForgotPin : ProtectedPage
    data object AddKind : ProtectedPage
    data class AddCategories(val kind: ProtectedKind) : ProtectedPage
    data class AddItems(
        val kind: ProtectedKind,
        val categoryId: String,
        val categoryName: String,
    ) : ProtectedPage
}

/** Da quale flusso arriva la creazione del PIN: decide dove si torna dopo il salvataggio. */
internal enum class CreateOrigin { Initial, Change, ForgotBackToVerify, ForgotBackToMain }

/**
 * Schermata dei "Contenuti protetti" del tablet: sostituisce il contenuto
 * delle Impostazioni finché è aperta.
 *
 * Flussi: CREA PIN (con conferma e "I PIN non coincidono"), VERIFICA PIN
 * ("PIN errato"; blocco 30 s dopo 5 tentativi consecutivi con tastierino
 * spento e "Troppi tentativi: riprova tra N s"; "PIN dimenticato"), PIN
 * DIMENTICATO (password del provider → nuovo PIN, elenchi conservati),
 * pagina principale con interruttore "Mostra/Nascondi", "Aggiungi",
 * "Cambia PIN" e elenco "Nascosti", e flusso Aggiungi (tipo → categoria →
 * contenuti con "Tutta la categoria" + checkbox per voce).
 *
 * Il tastierino PIN è touch (pulsanti >= 48dp); la password del provider usa
 * la tastiera del sistema. Il PIN non è mai in chiaro in UI/log/test.
 */
@Composable
fun ProtectedContentScreen(
    store: ProtectedContentStore,
    session: ProtectedSession,
    credentials: StoredCredentials,
    server: String,
    username: String,
    clock: Clock,
    onExit: () -> Unit,
    modifier: Modifier = Modifier,
) {
    val scope = rememberCoroutineScope()
    val data: StateFlow<ProtectedContentData> = remember {
        MutableStateFlow(ProtectedContentData())
    }
    val saved by remember { session.unlocked }.let { it }

    // Carica l'archivio all'apertura della schermata.
    LaunchedEffect(Unit) {
        data.value = store.get(server, username)
    }

    val stack = remember { mutableStateListOf<ProtectedPage>(ProtectedPage.Main) }
    var createOrigin by remember { mutableStateOf(CreateOrigin.Initial) }
    var pendingPin by remember { mutableStateOf("") }
    var errorMessage by remember { mutableStateOf("") }
    var lockedUntilMillis by remember { mutableLongStateOf(0L) }
    var showForgotBackToMainConfirm by remember { mutableStateOf(false) }
    var showChangePinConfirm by remember { mutableStateOf(false) }
    var showRemoveConfirm by remember { mutableStateOf(false) }
    var pendingRemove by remember { mutableStateOf<RemoveTarget?>(null) }

    // Leggi il tempo di blocco dalla sessione.
    val lockedUntil by remember { session.lockedUntilMillis() }.let { it }
    if (lockedUntil != null) lockedUntilMillis = lockedUntil
    val isLocked = lockedUntilMillis > clock.nowMillis()

    // Il PIN è memorizzato solo in una variabile locale; mai nel log.
    val current = data.value

    Column(
        modifier = modifier
            .fillMaxSize()
            .padding(16.dp)
            .verticalScrollSafe(),
        verticalArrangement = Arrangement.spacedBy(16.dp),
    ) {
        val page = stack.last()
        when (page) {
            is ProtectedPage.Main -> ProtectedMainPage(
                current = current,
                unlocked = session.unlocked.value,
                onToggle = {
                    if (session.unlocked.value) session.lock() else session.unlock()
                },
                onAdd = { stack.add(ProtectedPage.AddKind) },
                onChangePin = {
                    createOrigin = CreateOrigin.Change
                    stack.add(ProtectedPage.CreatePin)
                },
                onRemove = { target ->
                    pendingRemove = target
                    showRemoveConfirm = true
                },
                onExit = onExit,
            )
            is ProtectedPage.CreatePin -> PinEntryPage(
                title = "Crea PIN",
                onBack = { stack.removeAt(stack.lastIndex); stack.add(ProtectedPage.Main) },
                onSubmit = { pin ->
                    if (pin.length < 4) {
                        errorMessage = "Il PIN deve avere almeno 4 cifre"
                        return@PinEntryPage
                    }
                    pendingPin = pin
                    errorMessage = ""
                    stack.add(ProtectedPage.ConfirmPin)
                },
                errorMessage = errorMessage,
            )
            is ProtectedPage.ConfirmPin -> PinEntryPage(
                title = "Ripeti PIN",
                onBack = { stack.removeAt(stack.lastIndex); stack.add(ProtectedPage.CreatePin) },
                onSubmit = { pin ->
                    if (pin != pendingPin) {
                        errorMessage = "I PIN non coincidono"
                        return@PinEntryPage
                    }
                    scope.launch {
                        store.setPin(server, username, pendingPin)
                        data.value = store.get(server, username)
                        pendingPin = ""
                        session.unlock()
                        stack.clear(); stack.add(ProtectedPage.Main)
                    }
                },
                errorMessage = errorMessage,
            )
            is ProtectedPage.VerifyPin -> PinEntryPage(
                title = "Verifica PIN",
                showForgotPin = true,
                lockedUntilMillis = lockedUntilMillis,
                clock = clock,
                onBack = {
                    if (stack.size <= 1) onExit() else stack.removeAt(stack.lastIndex)
                },
                onForgot = { stack.add(ProtectedPage.ForgotPin) },
                onSubmit = { pin ->
                    scope.launch {
                        if (store.verifyPin(server, username, pin)) {
                            session.registerSuccess()
                            session.unlock()
                            errorMessage = ""
                            stack.clear(); stack.add(ProtectedPage.Main)
                        } else {
                            session.registerFailure()
                            errorMessage = "PIN errato"
                            val lux = session.lockedUntilMillis()
                            if (lux != null) lockedUntilMillis = lux
                        }
                    }
                },
                errorMessage = errorMessage,
            )
            is ProtectedPage.ForgotPin -> ForgotPinPage(
                onBack = { stack.removeAt(stack.lastIndex) },
                onSuccess = {
                    scope.launch {
                        store.setPin(server, username, it)
                        data.value = store.get(server, username)
                        session.unlock()
                        stack.clear(); stack.add(ProtectedPage.Main)
                    }
                },
            )
            is ProtectedPage.AddKind -> ProtectedAddKindPage(
                onBack = { stack.removeAt(stack.lastIndex) },
                onSelect = { kind -> stack.add(ProtectedPage.AddCategories(kind)) },
            )
            is ProtectedPage.AddCategories -> ProtectedAddCategoriesPage(
                kind = page.kind,
                server = server,
                username = username,
                store = store,
                onBack = { stack.removeAt(stack.lastIndex) },
                onSelectCategory = { cat -> stack.add(ProtectedPage.AddItems(page.kind, cat.categoryId, cat.name)) },
            )
            is ProtectedPage.AddItems -> ProtectedAddItemsPage(
                kind = page.kind,
                categoryId = page.categoryId,
                categoryName = page.categoryName,
                server = server,
                username = username,
                store = store,
                onBack = { stack.removeAt(stack.lastIndex) },
                onDone = { stack.clear(); stack.add(ProtectedPage.Main) },
            )
        }
    }

    if (showForgotBackToMainConfirm) {
        AlertDialog(
            onDismissRequest = { showForgotBackToMainConfirm = false },
            title = { Text(text = "Esci?", color = FvpColors.TextPrimary) },
            text = {
                Text(
                    text = "Escindo senza creare un nuovo PIN. I contenuti nascosti restano nascosti.",
                    color = FvpColors.TextSecondary,
                )
            },
            confirmButton = {
                TextButton(onClick = {
                    showForgotBackToMainConfirm = false
                    session.lock()
                    stack.clear(); stack.add(ProtectedPage.VerifyPin)
                }) { Text(text = "Esci", color = FvpColors.Error, fontWeight = FontWeight.Bold) }
            },
            dismissButton = {
                TextButton(onClick = { showForgotBackToMainConfirm = false }) {
                    Text(text = "Annulla", color = FvpColors.TextPrimary)
                }
            },
        )
    }
    if (showChangePinConfirm) {
        AlertDialog(
            onDismissRequest = { showChangePinConfirm = false },
            title = { Text(text = "Cambiare PIN?", color = FvpColors.TextPrimary) },
            text = {
                Text(
                    text = "Il nuovo PIN verrà impostato subito. I contenuti nascosti restano tali.",
                    color = FvpColors.TextSecondary,
                )
            },
            confirmButton = {
                TextButton(onClick = {
                    showChangePinConfirm = false
                    createOrigin = CreateOrigin.Change
                    stack.clear(); stack.add(ProtectedPage.CreatePin)
                }) { Text(text = "Cambia", color = FvpColors.Error, fontWeight = FontWeight.Bold) }
            },
            dismissButton = {
                TextButton(onClick = { showChangePinConfirm = false }) {
                    Text(text = "Annulla", color = FvpColors.TextPrimary)
                }
            },
        )
    }
    if (showRemoveConfirm && pendingRemove != null) {
        AlertDialog(
            onDismissRequest = { showRemoveConfirm = false; pendingRemove = null },
            title = { Text(text = "Rimuovere?", color = FvpColors.TextPrimary) },
            text = { Text(text = pendingRemove?.label ?: "", color = FvpColors.TextSecondary) },
            confirmButton = {
                TextButton(onClick = {
                    showRemoveConfirm = false
                    val target = pendingRemove
                    if (target != null) {
                        scope.launch {
                            val updated = target.remove(server, username, store)
                            data.value = updated
                        }
                    }
                    pendingRemove = null
                }) { Text(text = "Rimuovi", color = FvpColors.Error, fontWeight = FontWeight.Bold) }
            },
            dismissButton = {
                TextButton(onClick = { showRemoveConfirm = false; pendingRemove = null }) {
                    Text(text = "Annulla", color = FvpColors.TextPrimary)
                }
            },
        )
    }
}

internal sealed interface RemoveTarget {
    val label: String
    suspend fun remove(server: String, username: String, store: ProtectedContentStore): ProtectedContentData
}

internal data class RemoveCategoryTarget(val kind: ProtectedKind, val categoryId: String, val name: String) : RemoveTarget {
    override val label: String = "Nascondere di nuovo la categoria \"$name\"?"
    override suspend fun remove(server: String, username: String, store: ProtectedContentStore): ProtectedContentData =
        store.removeCategory(server, username, kind, categoryId)
}

internal data class RemoveItemTarget(val kind: ProtectedKind, val itemId: String, val name: String) : RemoveTarget {
    override val label: String = "Mostrare di nuovo \"$name\"?"
    override suspend fun remove(server: String, username: String, store: ProtectedContentStore): ProtectedContentData =
        store.removeItem(server, username, kind, itemId)
}

private sealed interface ProtectedPageComposable {
}

private fun Modifier.verticalScrollSafe(): Modifier = this
