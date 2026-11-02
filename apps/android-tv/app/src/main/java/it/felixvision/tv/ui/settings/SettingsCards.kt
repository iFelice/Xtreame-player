package it.felixvision.tv.ui.settings

import androidx.annotation.DrawableRes
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.focus.onFocusChanged
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.tv.material3.Border
import androidx.tv.material3.Card
import androidx.tv.material3.CardDefaults
import androidx.tv.material3.Icon
import androidx.tv.material3.Text
import it.felixvision.tv.R
import it.felixvision.tv.ui.access.AccessViewModel
import it.felixvision.tv.ui.components.UiScale
import it.felixvision.tv.ui.theme.FvpColors
import it.felixvision.tv.vpn.VpnState
import java.time.Instant
import java.time.ZoneId
import java.time.format.DateTimeFormatter

/** Titolo della schermata Impostazioni. */
const val SETTINGS_TITLE = "Impostazioni"

/** Tag di test del titolo e della griglia delle Impostazioni. */
const val SETTINGS_TITLE_TAG = "settings_title"
const val SETTINGS_GRID_TAG = "settings_grid"

/** Tag di test delle sei card, nell'ordine in cui compaiono nella griglia. */
const val SETTINGS_CARD_ACCOUNT_TAG = "settings_card_account"
const val SETTINGS_CARD_APPEARANCE_TAG = "settings_card_appearance"
const val SETTINGS_CARD_PROTECTED_TAG = "settings_card_protected"
const val SETTINGS_CARD_VPN_TAG = "settings_card_vpn"
const val SETTINGS_CARD_CATALOG_TAG = "settings_card_catalog"
const val SETTINGS_CARD_APP_TAG = "settings_card_app"

/** Suffisso del tag della riga di stato e del titolo di una card. */
const val SETTINGS_CARD_STATUS_SUFFIX = "_status"
const val SETTINGS_CARD_TITLE_SUFFIX = "_title"

/** Titolo della card e della pagina del catalogo. */
const val SETTINGS_CATALOG_TITLE = "Catalogo"

/** Righe di stato della card del catalogo. */
const val CATALOG_STATUS_REFRESHING = "Aggiornamento in corso…"
const val CATALOG_STATUS_NEVER = "Mai aggiornato"

/** Prefisso della riga di stato della card dell'app senza aggiornamenti. */
const val APP_VERSION_STATUS_PREFIX = "Versione "

/**
 * Misure della griglia delle Impostazioni, in unità di progetto: passano sempre
 * da [UiScale], come il resto dell'app.
 */
object SettingsCardDimens {

    /** Altezza fissa di una card. */
    const val HEIGHT_BASE = 150f

    /** Raggio degli angoli di una card: unico per contenitore e bordi. */
    const val CORNER_BASE = 18f

    /** Icona in alto nella card. */
    const val ICON_BASE = 30f

    /** Titolo della card. */
    const val TITLE_TEXT_BASE = 18f

    /** Riga di stato della card. */
    const val STATUS_TEXT_BASE = 13f

    /** Margine interno della card. */
    const val CARD_PADDING_BASE = 14f

    /** Spazio tra titolo e riga di stato. */
    const val CARD_TEXT_SPACING_BASE = 6f

    /** Spessore del bordo a riposo. */
    const val REST_BORDER_BASE = 1f

    /** Spessore del bordo con il focus. */
    const val FOCUS_BORDER_BASE = 2f

    /** Ingrandimento della card con il focus. */
    const val FOCUSED_SCALE = 1.03f

    /** Spazio tra le card e tra le righe della griglia. */
    const val GRID_SPACING_BASE = 16f

    /** Card per riga: la griglia è 4 + 2. */
    const val CARDS_PER_ROW = 4

    /** Margine orizzontale della griglia, come il resto delle Impostazioni. */
    const val GRID_HORIZONTAL_PADDING_BASE = 24f

    /** Margine verticale della griglia. */
    const val GRID_VERTICAL_PADDING_BASE = 16f
}

/**
 * Le sei card della griglia Impostazioni, nell'ordine in cui compaiono:
 * Account, Aspetto, Contenuti protetti, VPN, Catalogo, App.
 *
 * Ogni card apre la pagina della sua funzione. Le icone riusano i drawable già
 * presenti dove esistono (`ic_replay` per il Catalogo) e ne aggiungono di nuovi
 * a tratto semplice dove mancavano.
 */
enum class SettingsCard(
    val title: String,
    val testTag: String,
    @DrawableRes val iconRes: Int,
) {
    Account("Account", SETTINGS_CARD_ACCOUNT_TAG, R.drawable.ic_settings_account),
    Appearance(SETTINGS_APPEARANCE_TITLE, SETTINGS_CARD_APPEARANCE_TAG, R.drawable.ic_settings_text_size),
    Protected(SETTINGS_PROTECTED_TITLE, SETTINGS_CARD_PROTECTED_TAG, R.drawable.ic_settings_lock),
    Vpn(SETTINGS_VPN_TITLE, SETTINGS_CARD_VPN_TAG, R.drawable.ic_settings_vpn),
    Catalog(SETTINGS_CATALOG_TITLE, SETTINGS_CARD_CATALOG_TAG, R.drawable.ic_replay),
    App("App", SETTINGS_CARD_APP_TAG, R.drawable.ic_settings_app),
    ;

    /** Tag di test del titolo della card. */
    val titleTag: String get() = testTag + SETTINGS_CARD_TITLE_SUFFIX

    /** Tag di test della riga di stato della card. */
    val statusTag: String get() = testTag + SETTINGS_CARD_STATUS_SUFFIX
}

/** Riga di stato di una card: testo e colore (verde o rosso solo dove serve). */
data class SettingsCardStatus(
    val text: String,
    val color: Color = FvpColors.TextSecondary,
)

/**
 * Dati delle righe di stato delle sei card. È solo lettura: la griglia non
 * chiama il ViewModel, così si compone e si prova con dati finti.
 */
data class SettingsCardsState(
    val username: String = "",
    val expiresAtEpochSeconds: Long? = null,
    val interfaceSize: InterfaceSize = InterfaceSize.COMPACT,
    val protectedSummary: ProtectedSummary = ProtectedSummary(),
    val vpnState: VpnState = VpnState.NoConfig,
    val catalogLastUpdateMillis: Long? = null,
    val catalogRefreshing: Boolean = false,
    val versionName: String = "",
    val updateStatus: AppUpdateStatus = AppUpdateStatus.Checking,
)

/** "<username> · scade <gg/mm/aaaa>"; senza scadenza resta il solo username. */
fun accountStatusLine(username: String, expiresAtEpochSeconds: Long?): String {
    val date = AccessViewModel.formatDate(expiresAtEpochSeconds) ?: return username
    return "$username · scade $date"
}

/** "Interfaccia compatta" | "Interfaccia media" | "Interfaccia grande". */
fun appearanceStatusLine(size: InterfaceSize): String = "Interfaccia ${size.label.lowercase()}"

/** "Aggiornamento in corso…" oppure "Aggiornato alle HH:mm". */
fun catalogStatusLine(lastUpdateMillis: Long?, refreshing: Boolean): String = when {
    refreshing -> CATALOG_STATUS_REFRESHING
    lastUpdateMillis != null -> "Aggiornato alle ${settingsClockText(lastUpdateMillis)}"
    else -> CATALOG_STATUS_NEVER
}

/**
 * "Versione <x>", oppure "Disponibile la versione <y>" in verde quando il
 * controllo ne ha trovata una più nuova (anche mentre la scarica).
 */
fun appCardStatus(versionName: String, updateStatus: AppUpdateStatus): SettingsCardStatus {
    val availableVersion = when (updateStatus) {
        is AppUpdateStatus.Available -> updateStatus.release.version
        is AppUpdateStatus.Downloading -> updateStatus.release.version
        is AppUpdateStatus.Installing -> updateStatus.release.version
        else -> null
    }
    return if (availableVersion == null) {
        SettingsCardStatus(APP_VERSION_STATUS_PREFIX + versionName)
    } else {
        SettingsCardStatus(text = updateAvailableLabel(availableVersion), color = FvpColors.Green)
    }
}

/**
 * Riga di stato della VPN con il suo colore: verde quando è connessa, rosso
 * quando il tunnel non è attivo, secondario negli altri stati.
 */
fun vpnCardStatus(state: VpnState): SettingsCardStatus {
    val color = when (state) {
        is VpnState.Connected -> FvpColors.Green
        is VpnState.NotConnected -> FvpColors.Error
        else -> FvpColors.TextSecondary
    }
    return SettingsCardStatus(text = vpnStatusLine(state), color = color)
}

/** Riga di stato di ogni card, a partire dai dati letti dall'app. */
fun settingsCardStatuses(state: SettingsCardsState): Map<SettingsCard, SettingsCardStatus> = mapOf(
    SettingsCard.Account to SettingsCardStatus(
        text = accountStatusLine(state.username, state.expiresAtEpochSeconds),
    ),
    SettingsCard.Appearance to SettingsCardStatus(
        text = appearanceStatusLine(state.interfaceSize),
    ),
    SettingsCard.Protected to SettingsCardStatus(
        text = protectedSettingsLine(state.protectedSummary),
    ),
    SettingsCard.Vpn to vpnCardStatus(state.vpnState),
    SettingsCard.Catalog to SettingsCardStatus(
        text = catalogStatusLine(state.catalogLastUpdateMillis, state.catalogRefreshing),
    ),
    SettingsCard.App to appCardStatus(state.versionName, state.updateStatus),
)

/** "HH:mm" di un istante; stringa vuota se il valore non è leggibile. */
internal fun settingsClockText(millis: Long): String = runCatching {
    val formatter = DateTimeFormatter.ofPattern("HH:mm")
    formatter.format(Instant.ofEpochMilli(millis).atZone(ZoneId.systemDefault()))
}.getOrDefault("")

/**
 * Griglia delle Impostazioni: titolo e sei card, quattro per riga.
 *
 * Le righe sono [Row] con pesi uguali (non una lista Lazy): con sei card la
 * griglia sta in una schermata e le card restano tutte visibili insieme. Gli
 * spazi vuoti della seconda riga sono [Spacer] dello stesso peso, così le card
 * hanno la stessa larghezza in entrambe le righe.
 *
 * Nessun pallino di aggiornamento sulle card: il pallino resta solo sull'icona
 * Impostazioni del menu laterale.
 *
 * @param entryFocusRequester focus d'ingresso dal menu laterale: va sulla prima
 *   card (Account).
 * @param onOpenCard chiamato con OK su una card: apre la pagina della funzione.
 */
@Composable
internal fun SettingsGrid(
    state: SettingsCardsState,
    scale: UiScale,
    modifier: Modifier = Modifier,
    cardFocusRequesters: Map<SettingsCard, FocusRequester> = rememberSettingsCardFocusRequesters(),
    entryFocusRequester: FocusRequester? = null,
    onOpenCard: (SettingsCard) -> Unit = {},
) {
    val statuses = remember(state) { settingsCardStatuses(state) }
    val cardHeight = scale.dp(SettingsCardDimens.HEIGHT_BASE)
    val spacing = scale.dp(SettingsCardDimens.GRID_SPACING_BASE)

    Column(
        modifier = modifier
            .fillMaxSize()
            // Margini ampi quanto basta a contenere l'ingrandimento e il bordo
            // delle card con il focus (vedi focusSafePadding).
            .padding(
                horizontal = scale.dp(SettingsCardDimens.GRID_HORIZONTAL_PADDING_BASE),
                vertical = scale.dp(SettingsCardDimens.GRID_VERTICAL_PADDING_BASE),
            )
            .testTag(SETTINGS_GRID_TAG),
        verticalArrangement = Arrangement.spacedBy(spacing),
    ) {
        Text(
            text = SETTINGS_TITLE,
            color = FvpColors.TextPrimary,
            fontSize = scale.sp(22f),
            fontWeight = FontWeight.Bold,
            modifier = Modifier.testTag(SETTINGS_TITLE_TAG),
        )

        SettingsCard.entries.chunked(SettingsCardDimens.CARDS_PER_ROW).forEach { rowCards ->
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(spacing),
            ) {
                rowCards.forEach { card ->
                    val cardFocus = cardFocusRequesters[card]
                    SettingsCardTile(
                        card = card,
                        status = statuses.getValue(card),
                        scale = scale,
                        modifier = Modifier
                            .weight(1f)
                            .height(cardHeight)
                            .then(if (cardFocus != null) Modifier.focusRequester(cardFocus) else Modifier)
                            .then(
                                if (card == SettingsCard.entries.first() && entryFocusRequester != null) {
                                    Modifier.focusRequester(entryFocusRequester)
                                } else {
                                    Modifier
                                },
                            ),
                        onClick = { onOpenCard(card) },
                    )
                }
                // Seconda riga incompleta: spazi vuoti dello stesso peso.
                repeat(SettingsCardDimens.CARDS_PER_ROW - rowCards.size) {
                    Spacer(modifier = Modifier.weight(1f).height(cardHeight))
                }
            }
        }
    }
}

/** I [FocusRequester] delle sei card, uno per card, creati una volta sola. */
@Composable
internal fun rememberSettingsCardFocusRequesters(): Map<SettingsCard, FocusRequester> =
    remember { SettingsCard.entries.associateWith { FocusRequester() } }

/**
 * Una card della griglia: icona in alto, titolo e riga di stato.
 *
 * [Card] di tv-material cliccabile: fondo [FvpColors.Surface] in ogni stato,
 * bordo [FvpColors.SurfaceElevated] a riposo e [FvpColors.GreenFocus] di 2 dp
 * con il focus. La forma è una sola, condivisa da contenitore e bordi, così gli
 * angoli restano arrotondati allo stesso modo in tutti gli stati.
 */
@Composable
private fun SettingsCardTile(
    card: SettingsCard,
    status: SettingsCardStatus,
    scale: UiScale,
    modifier: Modifier = Modifier,
    onClick: () -> Unit,
) {
    val shape = remember(scale) { RoundedCornerShape(scale.dp(SettingsCardDimens.CORNER_BASE)) }
    val restBorder = Border(
        border = BorderStroke(
            width = scale.dp(SettingsCardDimens.REST_BORDER_BASE),
            color = FvpColors.SurfaceElevated,
        ),
        shape = shape,
    )
    val focusBorder = Border(
        border = BorderStroke(
            width = scale.dp(SettingsCardDimens.FOCUS_BORDER_BASE),
            color = FvpColors.GreenFocus,
        ),
        shape = shape,
    )
    var focused by remember(card) { mutableStateOf(false) }

    Card(
        onClick = onClick,
        modifier = modifier
            .onFocusChanged { focusState -> focused = focusState.isFocused }
            .testTag(card.testTag),
        scale = CardDefaults.scale(focusedScale = SettingsCardDimens.FOCUSED_SCALE),
        shape = CardDefaults.shape(shape = shape),
        // Tutti i colori previsti da CardDefaults.colors in tv-material: il fondo
        // resta Surface in ogni stato, così la card non cambia colore con il focus
        // e a parlare è solo il bordo verde.
        colors = CardDefaults.colors(
            containerColor = FvpColors.Surface,
            contentColor = FvpColors.TextPrimary,
            focusedContainerColor = FvpColors.Surface,
            focusedContentColor = FvpColors.TextPrimary,
            pressedContainerColor = FvpColors.Surface,
            pressedContentColor = FvpColors.TextPrimary,
        ),
        border = CardDefaults.border(
            border = restBorder,
            focusedBorder = focusBorder,
            pressedBorder = focusBorder,
        ),
    ) {
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(scale.dp(SettingsCardDimens.CARD_PADDING_BASE)),
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.spacedBy(
                scale.dp(SettingsCardDimens.CARD_TEXT_SPACING_BASE),
                Alignment.CenterVertically,
            ),
        ) {
            Icon(
                painter = painterResource(card.iconRes),
                contentDescription = card.title,
                tint = if (focused) FvpColors.GreenFocus else FvpColors.TextPrimary,
                modifier = Modifier.size(scale.dp(SettingsCardDimens.ICON_BASE)),
            )
            Text(
                text = card.title,
                color = FvpColors.TextPrimary,
                fontSize = scale.sp(SettingsCardDimens.TITLE_TEXT_BASE),
                fontWeight = FontWeight.SemiBold,
                maxLines = 1,
                softWrap = false,
                overflow = TextOverflow.Ellipsis,
                modifier = Modifier.testTag(card.titleTag),
            )
            Text(
                text = status.text,
                color = status.color,
                fontSize = scale.sp(SettingsCardDimens.STATUS_TEXT_BASE),
                maxLines = 1,
                softWrap = false,
                overflow = TextOverflow.Ellipsis,
                textAlign = TextAlign.Center,
                modifier = Modifier.testTag(card.statusTag),
            )
        }
    }
}
