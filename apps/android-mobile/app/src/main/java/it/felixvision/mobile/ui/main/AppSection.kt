package it.felixvision.mobile.ui.main

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import it.felixvision.mobile.ui.components.FvpIcons
import it.felixvision.mobile.ui.theme.FvpColors

/**
 * Le 8 sezioni dell'app tablet, le stesse della TV e con gli stessi colori di
 * sezione di FvpColors. La sezione iniziale dopo l'accesso è
 * [AppSection.NOVITA].
 *
 * Con finestra più larga che alta e larghezza >= 600dp tutte le 8 sezioni
 * stanno nella barra laterale; altrimenti la barra in basso mostra solo
 * [bottomBarSections] e Cerca/Impostazioni si raggiungono dalle icone
 * dell'intestazione in alto. "Riprendi" non ha voce propria in questa
 * modalità: compare come prima riga di Novità, se non è vuota.
 *
 * Ordine della barra laterale (come la TV):
 * Novità, Preferiti, Live, Film, Serie, Riprendi, Cerca, Impostazioni.
 */
enum class AppSection(
    val title: String,
    val accent: Color,
    val icon: ImageVector,
    /** Chiave stabile usata anche per lo stato di sezione conservato. */
    val stateKey: String,
    /**
     * Etichetta breve della barra laterale: la barra è stretta e le voci
     * devono stare su una sola riga. Il [title] resta quello della pagina e
     * della descrizione accessibile.
     */
    val railLabel: String = title,
) {
    NOVITA("Novità", FvpColors.NovitaActive, FvpIcons.Novita, "novita"),
    PREFERITI("Preferiti", FvpColors.PreferitiActive, FvpIcons.Star, "preferiti"),
    LIVE("Live", FvpColors.LiveActive, FvpIcons.Live, "live"),
    FILM("Film", FvpColors.FilmActive, FvpIcons.Film, "film"),
    SERIE("Serie", FvpColors.SerieActive, FvpIcons.Serie, "serie"),
    RIPRENDI(
        title = "Riprendi",
        accent = FvpColors.ContinuaActive,
        icon = FvpIcons.Continua,
        stateKey = "riprendi",
    ),
    CERCA("Cerca", FvpColors.CercaActive, FvpIcons.Cerca, "cerca"),
    IMPOSTAZIONI("Impostazioni", FvpColors.ImpostazioniActive, FvpIcons.Impostazioni, "impostazioni"),
    ;

    companion object {

        /** Le 5 voci della barra in basso della modalità compatta. */
        val bottomBarSections: List<AppSection> = listOf(NOVITA, PREFERITI, LIVE, FILM, SERIE)

        /** Vero quando la finestra vuole la barra laterale: più larga che alta e almeno 600dp. */
        fun useNavigationRail(isWiderThanTall: Boolean, widthIsAtLeast600: Boolean): Boolean =
            isWiderThanTall && widthIsAtLeast600
    }
}
