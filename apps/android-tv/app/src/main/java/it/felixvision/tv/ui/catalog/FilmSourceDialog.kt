package it.felixvision.tv.ui.catalog

import androidx.activity.compose.BackHandler
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.input.key.Key
import androidx.compose.ui.input.key.KeyEventType
import androidx.compose.ui.input.key.key
import androidx.compose.ui.input.key.onPreviewKeyEvent
import androidx.compose.ui.input.key.type
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.window.Dialog
import androidx.compose.ui.window.DialogProperties
import androidx.tv.material3.Border
import androidx.tv.material3.DenseListItem
import androidx.tv.material3.ListItemDefaults
import androidx.tv.material3.Text
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpColors

/** Tag della riga "Cambia Sorgente" in testa alla colonna delle categorie. */
const val FILM_SOURCE_ENTRY_TAG = "film_source_entry"

/** Tag del testo non focusabile con la sorgente in uso. */
const val FILM_SOURCE_LABEL_TAG = "film_source_label"

/** Tag della finestra "Scegli la sorgente". */
const val FILM_SOURCE_DIALOG_TAG = "film_source_dialog"

/** Tag della riga della sorgente [key] nella finestra di scelta. */
fun filmSourceRowTag(key: String): String = "film_source_row_$key"

/** Tag del segno di spunta sulla sorgente attiva [key]. */
fun filmSourceCheckTag(key: String): String = "film_source_check_$key"

/** Testi della finestra di scelta della sorgente. */
object FilmSourceDialogTexts {
    const val TITLE = "Scegli la sorgente"
    const val ENTRY = "Cambia Sorgente"
    const val ENTRY_COMPACT = "⇄"
    const val CHECK = "✓"
}

/** Consuma Indietro sulla radice del Dialog e chiude solo al rilascio. */
private fun Modifier.closeOnBack(onDismiss: () -> Unit): Modifier =
    onPreviewKeyEvent { event ->
        if (event.key != Key.Back) return@onPreviewKeyEvent false
        when (event.type) {
            KeyEventType.KeyDown -> true
            KeyEventType.KeyUp -> {
                onDismiss()
                true
            }
            else -> false
        }
    }

/**
 * Finestra "Scegli la sorgente" della sezione Film.
 *
 * Elenca solo le sorgenti che hanno film in questa sezione: l'account Xtream e
 * le liste M3U unite in una sola voce. Il segno di spunta sta sulla sorgente in
 * uso e all'apertura il focus è lì; OK su una riga la sceglie, Indietro chiude
 * senza cambiare nulla.
 *
 * Scegliere una sorgente **non** disattiva niente: le sorgenti restano tutte
 * abilitate nelle Impostazioni e i cataloghi sono già in memoria, quindi il
 * cambio è immediato, senza ricaricamenti né rete.
 */
@Composable
fun FilmSourceDialog(
    options: List<FilmSourceOption>,
    selectedKey: String?,
    scale: UiScale,
    onSelect: (String) -> Unit,
    onDismiss: () -> Unit,
) {
    val current = options.firstOrNull { it.key == selectedKey } ?: options.firstOrNull()
    val initialFocus = remember(current?.key) { FocusRequester() }
    LaunchedEffect(current?.key) {
        runCatching { initialFocus.requestFocus() }
    }

    Dialog(
        onDismissRequest = onDismiss,
        properties = DialogProperties(usePlatformDefaultWidth = false),
    ) {
        BackHandler { onDismiss() }
        Box(
            modifier = Modifier
                .closeOnBack(onDismiss)
                .fillMaxSize()
                .background(FvpColors.Background.copy(alpha = 0.85f))
                .padding(scale.dp(32f)),
            contentAlignment = Alignment.Center,
        ) {
            Column(
                modifier = Modifier
                    .width(scale.dp(420f))
                    .background(FvpColors.Surface, shape = RoundedCornerShape(scale.dp(12f)))
                    .padding(scale.dp(20f))
                    .testTag(FILM_SOURCE_DIALOG_TAG),
                verticalArrangement = Arrangement.spacedBy(scale.dp(10f)),
            ) {
                Text(
                    text = FilmSourceDialogTexts.TITLE,
                    color = FvpColors.TextPrimary,
                    fontSize = scale.sp(20f),
                    fontWeight = FontWeight.Bold,
                )
                options.forEach { option ->
                    val selected = option.key == selectedKey
                    DenseListItem(
                        selected = selected,
                        onClick = { onSelect(option.key) },
                        headlineContent = {
                            Row(
                                horizontalArrangement = Arrangement.spacedBy(scale.dp(8f)),
                                verticalAlignment = Alignment.CenterVertically,
                            ) {
                                Text(
                                    text = option.label,
                                    color = if (selected) FvpColors.TextPrimary else FvpColors.TextSecondary,
                                )
                                if (selected) {
                                    Text(
                                        text = FilmSourceDialogTexts.CHECK,
                                        color = FvpColors.GreenFocus,
                                        modifier = Modifier.testTag(filmSourceCheckTag(option.key)),
                                    )
                                }
                            }
                        },
                        modifier = Modifier
                            .fillMaxWidth()
                            .testTag(filmSourceRowTag(option.key))
                            .then(
                                if (option.key == current?.key) Modifier.focusRequester(initialFocus) else Modifier,
                            ),
                        colors = ListItemDefaults.colors(
                            containerColor = if (selected) FvpColors.SurfaceElevated else FvpColors.Surface,
                            contentColor = if (selected) FvpColors.TextPrimary else FvpColors.TextSecondary,
                            focusedContainerColor = FvpColors.SurfaceElevated,
                            focusedContentColor = FvpColors.TextPrimary,
                            focusedSelectedContainerColor = FvpColors.SurfaceElevated,
                            focusedSelectedContentColor = FvpColors.TextPrimary,
                        ),
                        border = ListItemDefaults.border(
                            focusedBorder = Border(BorderStroke(scale.dp(2f), FvpColors.GreenFocus)),
                        ),
                        shape = ListItemDefaults.shape(shape = RoundedCornerShape(scale.dp(8f))),
                        scale = ListItemDefaults.scale(focusedScale = 1.04f),
                    )
                }
            }
        }
    }
}
