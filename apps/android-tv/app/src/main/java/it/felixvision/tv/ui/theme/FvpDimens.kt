package it.felixvision.tv.ui.theme

import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.TextUnit
import it.felixvision.tv.ui.components.UiScale

/**
 * Misure compatte dell'interfaccia TV, in un solo punto.
 *
 * Dopo la prova sul televisore le righe erano troppo alte: qui stanno le
 * altezze, i loghi e le spaziature delle righe (canali, categorie, stagioni,
 * episodi, impostazioni, menu laterale, lista canali del player) e le misure
 * degli indicatori. I valori sono in unità di progetto e passano sempre da
 * [UiScale], così restano proporzionati a ogni risoluzione.
 *
 * Le copertine di film e serie non passano da qui: restano grandi come prima.
 */
object FvpDimens {

    // --- Righe compatte -----------------------------------------------------

    /** Testo di una riga: 16 → 15 (−1sp, il massimo consentito). */
    const val ROW_TEXT_BASE = 15f

    /** Logo del canale nelle liste: 48 → 32. */
    const val ROW_LOGO_BASE = 32f

    /** Logo del canale nella lista del player: 40 → 24. */
    const val ROW_LOGO_PLAYER_BASE = 24f

    /** Spazio tra le righe di canali: 6 → 4. */
    const val ROW_SPACING_BASE = 4f

    /** Spazio tra le voci della colonna categorie: 6 → 4. */
    const val CATEGORY_SPACING_BASE = 4f

    /** Margine verticale dell'iniziale a colonna categorie collassata: 8 → 3. */
    const val CATEGORY_COLLAPSED_VERTICAL_BASE = 3f

    /**
     * Altezza minima della voce del menu laterale: 48 → 40. È il minimo del
     * [androidx.tv.material3.DenseListItem], che è anche il limite sotto il
     * quale il testo della voce comincerebbe a essere tagliato.
     */
    const val DRAWER_ITEM_HEIGHT_BASE = 40f

    /** Margine verticale interno delle voci del menu: 12 → 6. */
    const val DRAWER_VERTICAL_PADDING_BASE = 6f

    /** Distanza tra la voce Impostazioni e l'orologio. */
    const val DRAWER_CLOCK_TOP_BASE = 8f

    /** Padding interno dei riquadri di Impostazioni: 16 → 12. */
    const val SETTINGS_SECTION_PADDING_BASE = 12f

    /** Spazio tra i blocchi di Impostazioni: 14 → 8. */
    const val SETTINGS_BLOCK_SPACING_BASE = 8f

    /** Spazio tra le righe dentro un blocco di Impostazioni: 8 → 4. */
    const val SETTINGS_ROW_SPACING_BASE = 4f

    /** Testo delle righe di Impostazioni: 14 → 13 (−1sp). */
    const val SETTINGS_ROW_TEXT_BASE = 13f

    /** Padding interno del risultato Live in Cerca: 6 → 3. */
    const val SEARCH_CARD_PADDING_BASE = 3f

    /** Logo del canale nei risultati di Cerca: 40 → 24. */
    const val SEARCH_LOGO_BASE = 24f

    /** Padding interno della riga Live in Preferiti: 16 → 10. */
    const val FAVORITE_ROW_PADDING_BASE = 10f

    /** Raggio degli angoli dei contenitori a vetro e degli elementi del player. */
    const val SURFACE_CORNER_BASE = 14f

    /** Spessore del bordo dei contenitori a vetro e degli elementi del player. */
    const val GLASS_BORDER_BASE = 1f

    // --- Indicatori ---------------------------------------------------------

    /** Larghezza della barra di scorrimento verticale. */
    const val SCROLLBAR_WIDTH_BASE = 3f

    /** Altezza minima del cursore della barra di scorrimento. */
    const val SCROLLBAR_MIN_THUMB_BASE = 18f

    /** Testo del contatore "N / Totale". */
    const val POSITION_TEXT_BASE = 12f

    /** Margine del contatore dall'area dei contenuti. */
    const val POSITION_INSET_BASE = 8f

    // --- Volume del player --------------------------------------------------

    /** Larghezza della barra verticale a capsula del volume. */
    const val VOLUME_BAR_WIDTH_BASE = 12f

    /** Altezza della barra verticale a capsula del volume. */
    const val VOLUME_BAR_HEIGHT_BASE = 150f

    /** Icona del volume nell'omonimo pannello. */
    const val VOLUME_ICON_BASE = 24f

    /** Numero del livello sotto la barra del volume. */
    const val VOLUME_LEVEL_TEXT_BASE = 20f

    // --- Cambio canale numerico ---------------------------------------------

    /** Cifre grandi nell'indicatore numerico in alto a destra. */
    const val CHANNEL_NUMBER_DIGITS_TEXT_BASE = 32f

    /** Messaggio "Canale N non trovato" nell'indicatore in alto a destra. */
    const val CHANNEL_NUMBER_MESSAGE_TEXT_BASE = 18f
}

/** Testo standard di una riga compatta. */
val UiScale.rowText: TextUnit get() = sp(FvpDimens.ROW_TEXT_BASE)

/** Logo del canale nelle liste. */
val UiScale.rowLogo: Dp get() = dp(FvpDimens.ROW_LOGO_BASE)

/** Logo del canale nella lista del player. */
val UiScale.rowLogoPlayer: Dp get() = dp(FvpDimens.ROW_LOGO_PLAYER_BASE)

/** Raggio degli angoli dei contenitori a vetro e degli elementi del player. */
val UiScale.surfaceCorner: Dp get() = dp(FvpDimens.SURFACE_CORNER_BASE)

/** Spessore del bordo dei contenitori a vetro e degli elementi del player. */
val UiScale.glassBorder: Dp get() = dp(FvpDimens.GLASS_BORDER_BASE)

/** Spazio tra le righe. */
val UiScale.rowSpacing: Dp get() = dp(FvpDimens.ROW_SPACING_BASE)

/** Spazio tra le voci della colonna categorie. */
val UiScale.categorySpacing: Dp get() = dp(FvpDimens.CATEGORY_SPACING_BASE)

/** Margine verticale dell'iniziale a colonna collassata. */
val UiScale.categoryCollapsedVertical: Dp get() = dp(FvpDimens.CATEGORY_COLLAPSED_VERTICAL_BASE)

/** Altezza minima di una voce del menu laterale. */
val UiScale.drawerItemHeight: Dp get() = dp(FvpDimens.DRAWER_ITEM_HEIGHT_BASE)

/** Margine verticale interno delle voci del menu laterale. */
val UiScale.drawerVerticalPadding: Dp get() = dp(FvpDimens.DRAWER_VERTICAL_PADDING_BASE)

/** Distanza tra la voce Impostazioni e l'orologio. */
val UiScale.drawerClockTop: Dp get() = dp(FvpDimens.DRAWER_CLOCK_TOP_BASE)

/** Padding interno dei riquadri di Impostazioni. */
val UiScale.settingsSectionPadding: Dp get() = dp(FvpDimens.SETTINGS_SECTION_PADDING_BASE)

/** Spazio tra i blocchi di Impostazioni. */
val UiScale.settingsBlockSpacing: Dp get() = dp(FvpDimens.SETTINGS_BLOCK_SPACING_BASE)

/** Spazio tra le righe dentro un blocco di Impostazioni. */
val UiScale.settingsRowSpacing: Dp get() = dp(FvpDimens.SETTINGS_ROW_SPACING_BASE)

/** Testo delle righe di Impostazioni. */
val UiScale.settingsRowText: TextUnit get() = sp(FvpDimens.SETTINGS_ROW_TEXT_BASE)

/** Padding interno del risultato Live in Cerca. */
val UiScale.searchCardPadding: Dp get() = dp(FvpDimens.SEARCH_CARD_PADDING_BASE)

/** Logo del canale nei risultati di Cerca. */
val UiScale.searchLogo: Dp get() = dp(FvpDimens.SEARCH_LOGO_BASE)

/** Padding interno della riga Live in Preferiti. */
val UiScale.favoriteRowPadding: Dp get() = dp(FvpDimens.FAVORITE_ROW_PADDING_BASE)

/** Larghezza della barra di scorrimento. */
val UiScale.scrollbarWidth: Dp get() = dp(FvpDimens.SCROLLBAR_WIDTH_BASE)

/** Altezza minima del cursore della barra di scorrimento. */
val UiScale.scrollbarMinThumb: Dp get() = dp(FvpDimens.SCROLLBAR_MIN_THUMB_BASE)

/** Testo del contatore di posizione. */
val UiScale.positionText: TextUnit get() = sp(FvpDimens.POSITION_TEXT_BASE)

/** Margine del contatore di posizione. */
val UiScale.positionInset: Dp get() = dp(FvpDimens.POSITION_INSET_BASE)

/** Larghezza della barra del volume. */
val UiScale.volumeBarWidth: Dp get() = dp(FvpDimens.VOLUME_BAR_WIDTH_BASE)

/** Altezza della barra del volume. */
val UiScale.volumeBarHeight: Dp get() = dp(FvpDimens.VOLUME_BAR_HEIGHT_BASE)

/** Icona del volume. */
val UiScale.volumeIcon: Dp get() = dp(FvpDimens.VOLUME_ICON_BASE)

/** Numero del livello del volume. */
val UiScale.volumeLevelText: TextUnit get() = sp(FvpDimens.VOLUME_LEVEL_TEXT_BASE)
