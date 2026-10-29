@file:OptIn(androidx.compose.material3.ExperimentalMaterial3Api::class)

package it.felixvision.mobile.ui.catalog

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import it.felixvision.mobile.ui.components.ActionSheet
import it.felixvision.mobile.ui.components.FvpTextField
import it.felixvision.mobile.ui.components.SheetAction
import it.felixvision.mobile.ui.theme.FvpColors
import it.felixvision.tv.data.channels.MyChannel
import it.felixvision.tv.data.favorites.FavoriteItem

/**
 * Punto unico che trasforma lo stato del ViewModel in popup:
 * il foglio azioni da pressione lunga e il dialogo "Sposta in posizione n°".
 *
 * Ogni azione chiude il foglio, esegue l'operazione sugli store condivisi
 * tramite il ViewModel e riceve la conferma breve (snackbar) dal ViewModel.
 */
@Composable
fun ActionSheetHost(viewModel: CatalogViewModel) {
    val actionTarget by viewModel.actionTarget.collectAsStateWithLifecycle()
    val positionDialog by viewModel.positionDialog.collectAsStateWithLifecycle()
    val myChannels by viewModel.myChannels.collectAsStateWithLifecycle()
    val favorites by viewModel.favorites.collectAsStateWithLifecycle()

    val close = { viewModel.closeActions() }

    val myChannelIds = remember(myChannels) { myChannels.map { it.streamId }.toSet() }

    // Dialogo "Sposta/Posiziona in n°" — indipendente dal foglio azioni.
    val dialog = positionDialog
    if (dialog != null) {
        ChannelPositionDialog(
            dialog = dialog,
            channelCount = myChannels.size,
            onDismiss = { viewModel.closePositionDialog() },
            onConfirm = { position ->
                if (dialog.isNewChannel) {
                    viewModel.insertMyChannelAt(dialog.channel, position)
                } else {
                    viewModel.moveMyChannelTo(dialog.channel.streamId, position)
                }
                viewModel.closePositionDialog()
            },
        )
    }

    val target = actionTarget ?: return

    val actions: List<SheetAction> = when (target) {
        is ActionTarget.Channel -> {
            val stream = target.stream
            val favoriteId = "live_${stream.streamId}"
            buildList {
                add(
                    SheetAction(
                        label = "Riproduci",
                        testTag = "sheet_play",
                        onClick = {
                            close()
                            viewModel.onPlayRequest(PlayTarget.LiveChannel(stream.streamId))
                        },
                    ),
                )
                add(
                    SheetAction(
                        label = if (viewModel.isFavorite(favoriteId)) {
                            "Rimuovi dai preferiti"
                        } else {
                            "Aggiungi ai preferiti"
                        },
                        testTag = "sheet_favorite",
                        onClick = {
                            close()
                            viewModel.toggleFavorite(
                                FavoriteItem(
                                    id = favoriteId,
                                    type = FavoriteItem.LIVE,
                                    title = stream.name,
                                    poster = stream.streamIcon,
                                    categoryId = stream.categoryId,
                                ),
                            )
                        },
                    ),
                )
                if (stream.streamId in myChannelIds) {
                    add(
                        SheetAction(
                            label = "Rimuovi da I miei canali",
                            testTag = "sheet_remove_mychannel",
                            onClick = {
                                close()
                                viewModel.removeMyChannel(stream.streamId)
                            },
                        ),
                    )
                } else {
                    add(
                        SheetAction(
                            label = "Aggiungi a I miei canali",
                            testTag = "sheet_add_mychannel",
                            onClick = {
                                close()
                                viewModel.addMyChannel(
                                    MyChannel(
                                        streamId = stream.streamId,
                                        name = stream.name,
                                        logo = stream.streamIcon,
                                    ),
                                )
                            },
                        ),
                    )
                }
                add(
                    SheetAction(
                        label = if (stream.streamId in myChannelIds) {
                            "Sposta in posizione n°"
                        } else {
                            "Aggiungi in posizione n°"
                        },
                        testTag = "sheet_position",
                        onClick = {
                            viewModel.closeActions()
                            viewModel.openPositionDialog(
                                channel = MyChannel(
                                    streamId = stream.streamId,
                                    name = stream.name,
                                    logo = stream.streamIcon,
                                ),
                                isNewChannel = stream.streamId !in myChannelIds,
                            )
                        },
                    ),
                )
                add(
                    SheetAction(
                        label = "Guida del canale",
                        testTag = "sheet_guide",
                        onClick = {
                            close()
                            viewModel.openDetail(DetailTarget.LiveGuide(stream))
                        },
                    ),
                )
                add(
                    SheetAction(
                        label = "Esci dalle azioni",
                        testTag = "sheet_cancel",
                        onClick = close,
                    ),
                )
            }
        }
        is ActionTarget.MyChannelEntry -> {
            val channel = target.channel
            listOf(
                SheetAction(
                    label = "Riproduci",
                    testTag = "sheet_play",
                    onClick = {
                        close()
                        viewModel.onPlayRequest(PlayTarget.LiveChannel(channel.streamId))
                    },
                ),
                SheetAction(
                    label = "Sposta in posizione n°",
                    testTag = "sheet_position",
                    onClick = {
                        viewModel.closeActions()
                        viewModel.openPositionDialog(
                            channel = channel,
                            isNewChannel = false,
                        )
                    },
                ),
                SheetAction(
                    label = "Rimuovi da I miei canali",
                    testTag = "sheet_remove_mychannel",
                    onClick = {
                        close()
                        viewModel.removeMyChannel(channel.streamId)
                    },
                ),
            )
        }
        is ActionTarget.Film -> {
            val stream = target.stream
            val favoriteId = "vod_${stream.streamId}"
            listOf(
                SheetAction(
                    label = if (viewModel.isFavorite(favoriteId)) {
                        "Rimuovi dai preferiti"
                    } else {
                        "Aggiungi ai preferiti"
                    },
                    testTag = "sheet_favorite",
                    onClick = {
                        close()
                        viewModel.toggleFavorite(
                            FavoriteItem(
                                id = favoriteId,
                                type = FavoriteItem.VOD,
                                title = stream.name,
                                poster = stream.streamIcon,
                                categoryId = stream.categoryId,
                            ),
                        )
                    },
                ),
            )
        }
        is ActionTarget.Series -> {
            val serie = target.item
            val favoriteId = "series_${serie.seriesId}"
            listOf(
                SheetAction(
                    label = if (viewModel.isFavorite(favoriteId)) {
                        "Rimuovi dai preferiti"
                    } else {
                        "Aggiungi ai preferiti"
                    },
                    testTag = "sheet_favorite",
                    onClick = {
                        close()
                        viewModel.toggleFavorite(
                            FavoriteItem(
                                id = favoriteId,
                                type = FavoriteItem.SERIES,
                                title = serie.name,
                                poster = serie.cover,
                                categoryId = serie.categoryId,
                            ),
                        )
                    },
                ),
            )
        }
        is ActionTarget.LiveCategory -> {
            val favoriteId = "livecat_${target.categoryId}"
            listOf(
                SheetAction(
                    label = if (favorites.any { it.id == favoriteId }) {
                        "Rimuovi categoria dai preferiti"
                    } else {
                        "Aggiungi categoria ai preferiti"
                    },
                    testTag = "sheet_favorite_category",
                    onClick = {
                        close()
                        viewModel.toggleFavorite(
                            FavoriteItem.liveCategory(
                                categoryId = target.categoryId,
                                title = target.name,
                            ),
                        )
                    },
                ),
            )
        }
        is ActionTarget.Continue -> {
            listOf(
                SheetAction(
                    label = "Rimuovi da Continua a guardare",
                    testTag = "sheet_hide_continue",
                    onClick = {
                        close()
                        viewModel.hideContinueEntry(target.entry)
                    },
                ),
            )
        }
    }

    val sheetTitle = when (target) {
        is ActionTarget.Channel -> target.stream.name
        is ActionTarget.MyChannelEntry -> target.channel.name
        is ActionTarget.Film -> target.stream.name
        is ActionTarget.Series -> target.item.name
        is ActionTarget.LiveCategory -> target.name
        is ActionTarget.Continue -> target.entry.title
    }
    val sheetSubtitle = when (target) {
        is ActionTarget.Channel -> "Canale Live"
        is ActionTarget.MyChannelEntry -> "I miei canali"
        is ActionTarget.Film -> "Film"
        is ActionTarget.Series -> "Serie"
        is ActionTarget.LiveCategory -> "Categoria Live"
        is ActionTarget.Continue -> "Continua a guardare"
    }

    ActionSheet(
        title = sheetTitle,
        subtitle = sheetSubtitle,
        actions = actions,
        onDismiss = { viewModel.closeActions() },
    )
}

/**
 * Dialogo numerico "Sposta in posizione n°" / "Aggiungi in posizione n°":
 * campo a una cifra alla volta (tastiera numerica), conferma disabilitata
 * finché la posizione è fuori intervallo.
 */
@Composable
fun ChannelPositionDialog(
    dialog: PositionDialogState,
    channelCount: Int,
    onDismiss: () -> Unit,
    onConfirm: (Int) -> Unit,
) {
    val maxPosition = if (dialog.isNewChannel) channelCount + 1 else channelCount
    var positionText by remember(dialog.channel.streamId) {
        mutableStateOf("")
    }
    val parsed = positionText.toIntOrNull()
    val valid = parsed != null && parsed in 1..maxPosition

    AlertDialog(
        onDismissRequest = onDismiss,
        containerColor = FvpColors.Surface,
        title = {
            Text(
                text = if (dialog.isNewChannel) "Aggiungi in posizione" else "Sposta in posizione",
                color = FvpColors.TextPrimary,
            )
        },
        text = {
            Column(verticalArrangement = Arrangement.spacedBy(10.dp)) {
                Text(
                    text = dialog.channel.name,
                    color = FvpColors.TextSecondary,
                    fontSize = 14.sp,
                )
                FvpTextField(
                    label = "Posizione",
                    value = positionText,
                    onValueChange = { value ->
                        positionText = value.filter(Char::isDigit).take(4)
                    },
                    placeholder = "N°",
                    keyboardType = KeyboardType.Number,
                    imeAction = ImeAction.Done,
                    testTag = "position_field",
                    modifier = Modifier.fillMaxWidth(),
                )
                Text(
                    text = "Posizioni valide: 1–${maxPosition.coerceAtLeast(1)}",
                    color = FvpColors.TextSecondary,
                    fontSize = 12.sp,
                )
            }
        },
        confirmButton = {
            TextButton(
                onClick = {
                    val position = parsed
                    if (valid && position != null) {
                        onConfirm(position)
                    }
                },
                enabled = valid,
                modifier = Modifier.testTag("position_confirm"),
            ) {
                Text(text = "Conferma", color = FvpColors.TextPrimary, fontWeight = FontWeight.Bold)
            }
        },
        dismissButton = {
            TextButton(
                onClick = onDismiss,
                modifier = Modifier.testTag("position_cancel"),
            ) {
                Text(text = "Annulla", color = FvpColors.TextPrimary)
            }
        },
    )
}
