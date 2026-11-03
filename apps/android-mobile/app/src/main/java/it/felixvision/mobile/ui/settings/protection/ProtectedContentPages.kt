package it.felixvision.mobile.ui.settings.protection

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.foundation.text.input.rememberTextFieldState
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import it.felixvision.mobile.ui.components.FvpIcons
import it.felixvision.mobile.ui.theme.FvpColors
import it.felixvision.tv.core.Clock
import it.felixvision.tv.data.catalog.Category
import it.felixvision.tv.data.catalog.Catalog
import it.felixvision.tv.data.catalog.allCategoryIds
import it.felixvision.tv.data.protection.ProtectedContentData
import it.felixvision.tv.data.protection.ProtectedContentRules
import it.felixvision.tv.data.protection.ProtectedContentStore
import it.felixvision.tv.data.protection.ProtectedKind
import it.felixvision.tv.data.store.CredentialStore
import kotlinx.coroutines.launch
import androidx.compose.runtime.snapshotFlow
import kotlinx.coroutines.flow.collectLatest

/** Pagina principale dei contenuti protetti. */
@Composable
private fun ProtectedMainPage(
    current: ProtectedContentData,
    unlocked: Boolean,
    onToggle: () -> Unit,
    onAdd: () -> Unit,
    onChangePin: () -> Unit,
    onRemove: (RemoveTarget) -> Unit,
    onExit: () -> Unit,
) {
    Column(verticalArrangement = Arrangement.spacedBy(12.dp)) {
        Row(
            verticalAlignment = Alignment.CenterVertically,
            modifier = Modifier.fillMaxWidth().testTag("protected_show_toggle_row"),
        ) {
            Icon(
                imageVector = FvpIcons.Seen,
                contentDescription = null,
                tint = FvpColors.TextPrimary,
                modifier = Modifier.size(20.dp),
            )
            Text(
                text = "Mostra/Nascondi contenuti protetti",
                color = FvpColors.TextPrimary,
                fontSize = 15.sp,
                fontWeight = FontWeight.Medium,
                modifier = Modifier.weight(1f),
            )
            TextButton(onClick = onToggle) {
                Text(
                    text = if (unlocked) "Nascondi" else "Mostra",
                    color = FvpColors.Error,
                    fontWeight = FontWeight.Bold,
                    modifier = Modifier.testTag("protected_show_toggle_button"),
                )
            }
        }

        Row(horizontalArrangement = Arrangement.spacedBy(12.dp)) {
            TextButton(onClick = onAdd) {
                Text(text = "Aggiungi", color = FvpColors.TextPrimary, modifier = Modifier.testTag("protected_add_button"))
            }
            TextButton(onClick = onChangePin) {
                Text(text = "Cambia PIN", color = FvpColors.TextPrimary, modifier = Modifier.testTag("protected_change_pin_button"))
            }
        }

        HorizontalDivider(color = FvpColors.SurfaceElevated, thickness = 1.dp)
        Text(
            text = "Nascosti",
            color = FvpColors.ImpostazioniActive,
            fontSize = 15.sp,
            fontWeight = FontWeight.Bold,
            modifier = Modifier.testTag("protected_hidden_title"),
        )
        val all = (current.hiddenCategories.map { RemoveCategoryTarget(kind(it.kind) ?: ProtectedKind.LIVE, it.categoryId, it.name) }
            + current.hiddenItems.map { RemoveItemTarget(kind(it.kind) ?: ProtectedKind.LIVE, it.itemId, it.name) })
        if (all.isEmpty()) {
            Text(
                text = "Nessun contenuto nascosto",
                color = FvpColors.TextSecondary,
                fontSize = 14.sp,
                modifier = Modifier.testTag("protected_hidden_empty"),
            )
        } else {
            LazyColumn(
                verticalArrangement = Arrangement.spacedBy(8.dp),
                modifier = Modifier.fillMaxWidth().testTag("protected_hidden_list"),
            ) {
                itemsIndexed(all, key = { _, t -> "protected_hidden_${t.javaClass.simpleName}_${t.label}" }) { _, target ->
                    TouchRow(
                        onClick = { onRemove(target) },
                        modifier = Modifier.fillMaxWidth().testTag("protected_hidden_row"),
                    ) {
                        Column(modifier = Modifier.weight(1f)) {
                            Text(text = target.label, color = FvpColors.TextPrimary, fontSize = 14.sp)
                        }
                        Icon(imageVector = FvpIcons.Chiudi, contentDescription = "Rimuovi", tint = FvpColors.TextSecondary)
                    }
                }
            }
        }
    }
}

/** Pagina PIN: tastierino touch numerico con pulsanti >= 48dp. */
@Composable
private fun PinEntryPage(
    title: String,
    onBack: () -> Unit,
    onSubmit: (String) -> Unit,
    showForgotPin: Boolean = false,
    lockedUntilMillis: Long = 0L,
    clock: Clock = it.felixvision.tv.core.SystemClock,
    onForgot: () -> Unit = {},
    errorMessage: String = "",
) {
    var pinText by remember { mutableStateOf("") }
    val isLocked = lockedUntilMillis > clock.nowMillis()

    Column(
        modifier = Modifier.fillMaxWidth().testTag("protected_pin_entry"),
        verticalArrangement = Arrangement.spacedBy(12.dp),
    ) {
        Row(verticalAlignment = Alignment.CenterVertically) {
            TextButton(onClick = onBack) {
                Icon(imageVector = FvpIcons.Indietro, contentDescription = "Indietro", tint = FvpColors.TextPrimary)
            }
            Text(text = title, color = FvpColors.TextPrimary, fontSize = 18.sp, fontWeight = FontWeight.Bold)
        }

        if (isLocked) {
            val seconds = ((lockedUntilMillis - clock.nowMillis()) / 1000).coerceAtLeast(1)
            Text(
                text = "Troppi tentativi: riprova tra $seconds s",
                color = FvpColors.Error,
                fontSize = 15.sp,
                modifier = Modifier.testTag("protected_locked_message"),
            )
            return@Column
        }

        if (errorMessage.isNotEmpty()) {
            Text(text = errorMessage, color = FvpColors.Error, fontSize = 15.sp, modifier = Modifier.testTag("protected_pin_error"))
        }

        androidx.compose.material3.OutlinedTextField(
            value = pinText,
            onValueChange = { if (it.all { c -> c.isDigit() } && it.length <= 8) { pinText = it } },
            label = { Text("PIN", color = FvpColors.TextSecondary) },
            singleLine = true,
            keyboardOptions = KeyboardOptions(keyboardType = androidx.compose.ui.text.input.KeyboardType.NumberPassword, imeAction = ImeAction.Done),
            modifier = Modifier.fillMaxWidth().testTag("protected_pin_field"),
        )

        Row(
            horizontalArrangement = Arrangement.spacedBy(8.dp),
            modifier = Modifier.fillMaxWidth(),
        ) {
            (0..9).forEach { digit ->
                PinKey(
                    digit = digit.toString(),
                    onClick = { pinText = pinText + digit.toString() },
                    modifier = Modifier.testTag("protected_pin_key_${digit}"),
                )
            }
        }
        Row(
            horizontalArrangement = Arrangement.spacedBy(8.dp),
            modifier = Modifier.fillMaxWidth(),
        ) {
            PinKey(
                digit = "Cancella",
                onClick = { pinText = "" },
                modifier = Modifier.testTag("protected_pin_clear"),
            )
            PinKey(
                digit = "OK",
                onClick = { onSubmit(pinText) },
                modifier = Modifier.testTag("protected_pin_submit"),
            )
        }
        if (showForgotPin) {
            TextButton(onClick = onForgot) {
                Text(text = "PIN dimenticato", color = FvpColors.TextPrimary, modifier = Modifier.testTag("protected_forgot_pin"))
            }
        }
    }
}

@Composable
private fun PinKey(digit: String, onClick: () -> Unit, modifier: Modifier = Modifier) {
    ButtonLarge(digit = digit, onClick = onClick, modifier = modifier)
}

@Composable
private fun ButtonLarge(digit: String, onClick: () -> Unit, modifier: Modifier = Modifier) {
    androidx.compose.material3.OutlinedButton(
        onClick = onClick,
        modifier = modifier.size(56.dp).testTag("protected_pin_key"),
    ) {
        Text(text = digit, fontSize = 18.sp, fontWeight = FontWeight.Bold)
    }
}

/** Pagina PIN dimenticato: password del provider (tastiera di sistema) → nuovo PIN. */
@Composable
private fun ForgotPinPage(
    onBack: () -> Unit,
    onSuccess: (String) -> Unit,
) {
    val scope = rememberCoroutineScope()
    var passwordText by remember { mutableStateOf("") }
    var newPinText by remember { mutableStateOf("") }
    var error by remember { mutableStateOf("") }

    Column(verticalArrangement = Arrangement.spacedBy(12.dp)) {
        TextButton(onClick = onBack) { Icon(imageVector = FvpIcons.Indietro, contentDescription = "Indietro", tint = FvpColors.TextPrimary) }
        Text(text = "PIN dimenticato", color = FvpColors.TextPrimary, fontSize = 18.sp, fontWeight = FontWeight.Bold)
        if (error.isNotEmpty()) {
            Text(text = error, color = FvpColors.Error, fontSize = 15.sp, modifier = Modifier.testTag("protected_forgot_error"))
        }
        androidx.compose.material3.OutlinedTextField(
            value = passwordText,
            onValueChange = { passwordText = it },
            label = { Text("Password provider", color = FvpColors.TextSecondary) },
            singleLine = true,
            keyboardOptions = KeyboardOptions(imeAction = ImeAction.Done),
            modifier = Modifier.fillMaxWidth().testTag("protected_forgot_password"),
        )
        androidx.compose.material3.OutlinedTextField(
            value = newPinText,
            onValueChange = { if (it.all { c -> c.isDigit() } && it.length <= 8) newPinText = it },
            label = { Text("Nuovo PIN", color = FvpColors.TextSecondary) },
            singleLine = true,
            keyboardOptions = KeyboardOptions(keyboardType = androidx.compose.ui.text.input.KeyboardType.NumberPassword, imeAction = ImeAction.Done),
            modifier = Modifier.fillMaxWidth().testTag("protected_forgot_pin_field"),
        )
        TextButton(onClick = {
            val pin = newPinText
            if (pin.length < 4) { error = "Il PIN deve avere almeno 4 cifre"; return@TextButton }
            onSuccess(pin)
        }) {
            Text(text = "Imposta nuovo PIN", color = FvpColors.Error, fontWeight = FontWeight.Bold, modifier = Modifier.testTag("protected_forgot_submit"))
        }
    }
}

/** Pagina scegli tipo: Live, Film, Serie. */
@Composable
private fun ProtectedAddKindPage(onBack: () -> Unit, onSelect: (ProtectedKind) -> Unit) {
    Column(verticalArrangement = Arrangement.spacedBy(10.dp)) {
        TextButton(onClick = onBack) { Icon(imageVector = FvpIcons.Indietro, contentDescription = "Indietro", tint = FvpColors.TextPrimary) }
        ProtectedKind.entries.forEach { kind ->
            TextButton(onClick = { onSelect(kind) }) {
                Text(
                    text = protectedKindLabel(kind),
                    color = FvpColors.TextPrimary,
                    modifier = Modifier.testTag("protected_add_kind_${kind.storageKey}"),
                )
            }
        }
    }
}

/** Pagina scegli categoria del tipo scelto. */
@Composable
private fun ProtectedAddCategoriesPage(
    kind: ProtectedKind,
    server: String,
    username: String,
    store: ProtectedContentStore,
    onBack: () -> Unit,
    onSelectCategory: (Category) -> Unit,
) {
    val scope = rememberCoroutineScope()
    val catalog = remember { mutableStateOf<Catalog?>(null) }
    LaunchedEffect(Unit) { catalog.value = Catalog() }

    val categories = catalog.value?.let { cat ->
        when (kind) {
            ProtectedKind.LIVE -> cat.liveCategories
            ProtectedKind.VOD -> cat.vodCategories
            ProtectedKind.SERIES -> cat.seriesCategories
        }
    }.orEmpty()

    Column(verticalArrangement = Arrangement.spacedBy(10.dp)) {
        TextButton(onClick = onBack) { Icon(imageVector = FvpIcons.Indietro, contentDescription = "Indietro", tint = FvpColors.TextPrimary) }
        LazyColumn(verticalArrangement = Arrangement.spacedBy(8.dp)) {
            itemsIndexed(categories, key = { _, c -> "protected_cat_${c.categoryId}" }) { _, c ->
                TouchRow(
                    onClick = { onSelectCategory(c) },
                    modifier = Modifier.fillMaxWidth().testTag("protected_category_${c.categoryId}"),
                ) {
                    Column(modifier = Modifier.weight(1f)) {
                        Text(text = c.categoryName.orEmpty(), color = FvpColors.TextPrimary, fontSize = 14.sp)
                        Text(text = "${countOf(kind, c, catalog.value)} contenuti", color = FvpColors.TextSecondary, fontSize = 12.sp)
                    }
                }
            }
        }
    }
}

private fun countOf(kind: ProtectedKind, category: Category, catalog: Catalog?): Int =
    catalog?.let {
        when (kind) {
            ProtectedKind.LIVE -> it.liveStreams.count { stream -> category.categoryId in stream.allCategoryIds }
            ProtectedKind.VOD -> it.vodStreams.count { stream -> category.categoryId in stream.allCategoryIds }
            ProtectedKind.SERIES -> it.series.count { series -> category.categoryId in series.allCategoryIds }
        }
    } ?: 0

/** Pagina contenuti di una categoria: "Tutta la categoria" + checkbox per voce. */
@Composable
private fun ProtectedAddItemsPage(
    kind: ProtectedKind,
    categoryId: String,
    categoryName: String,
    server: String,
    username: String,
    store: ProtectedContentStore,
    onBack: () -> Unit,
    onDone: () -> Unit,
) {
    val scope = rememberCoroutineScope()
    val data = remember { mutableStateOf<ProtectedContentData>(ProtectedContentData()) }
    LaunchedEffect(Unit) { scope.launch { data.value = store.get(server, username) } }

    val items = remember { mutableStateListOf<Pair<String, String>>() }

    Column(verticalArrangement = Arrangement.spacedBy(10.dp)) {
        TextButton(onClick = onBack) { Icon(imageVector = FvpIcons.Indietro, contentDescription = "Indietro", tint = FvpColors.TextPrimary) }
        Text(text = categoryName, color = FvpColors.TextPrimary, fontSize = 16.sp, fontWeight = FontWeight.Bold)

        TextButton(onClick = {
            scope.launch {
                store.toggleCategory(server, username, kind, categoryId, categoryName)
                onDone()
            }
        }) {
            Text(text = "Tutta la categoria", color = FvpColors.TextPrimary, modifier = Modifier.testTag("protected_add_all_category"))
        }

        val itemIds = items.map { it.first }.toSet()
        if (itemIds.isEmpty()) {
            Text(text = "Nessun contenuto in questa categoria", color = FvpColors.TextSecondary, fontSize = 14.sp)
        } else {
            items.forEach { p ->
                val id = p.first
                val name = p.second
                val hidden = ProtectedContentRules.isItemHidden(data.value, kind, id, categoryId)
                TouchRow(
                    onClick = {
                        scope.launch {
                            store.toggleItem(server, username, kind, id, categoryId, name)
                            data.value = store.get(server, username)
                        }
                    },
                    modifier = Modifier.fillMaxWidth().testTag("protected_item_${id}"),
                ) {
                    Column(modifier = Modifier.weight(1f)) {
                        Text(text = name, color = FvpColors.TextPrimary, fontSize = 14.sp)
                        Text(text = if (hidden) "Nascosto" else "Visibile", color = if (hidden) FvpColors.Error else FvpColors.TextSecondary, fontSize = 12.sp)
                    }
                    androidx.compose.material3.Checkbox(checked = hidden, onCheckedChange = { _ ->
                        scope.launch {
                            store.toggleItem(server, username, kind, id, categoryId, name)
                            data.value = store.get(server, username)
                        }
                    })
                }
            }
        }

        TextButton(onClick = onDone) {
            Text(text = "Fatto", color = FvpColors.TextPrimary, modifier = Modifier.testTag("protected_add_done"))
        }
    }
}

private fun kind(storageKey: String): ProtectedKind? = ProtectedKind.entries.firstOrNull { it.storageKey == storageKey }

@Composable
private fun TouchRow(onClick: () -> Unit, modifier: Modifier = Modifier, content: @Composable () -> Unit) {
    androidx.compose.material3.OutlinedButton(
        onClick = onClick,
        modifier = modifier
            .fillMaxWidth()
            .padding(vertical = 4.dp),
        border = BorderStroke(1.dp, FvpColors.SurfaceElevated),
    ) { content() }
}

@Composable
private fun Modifier.verticalScrollSafe(): Modifier = this.verticalScroll(rememberScrollState())
