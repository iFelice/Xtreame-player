package it.felixvision.tv.ui.components

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.compositionLocalOf
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.tv.material3.Text
import it.felixvision.tv.data.sources.Source
import it.felixvision.tv.data.sources.SourceIds
import it.felixvision.tv.data.sources.SourceType
import it.felixvision.tv.ui.theme.FvpColors

/**
 * Etichette delle sorgenti note all'interfaccia.
 *
 * Con **una sola sorgente abilitata** [isMultiple] è falso e [labelFor]
 * restituisce sempre `null`: Cerca, Preferiti e Riprendi restano identici a
 * oggi, senza etichette. Con più sorgenti ogni voce mostra la piccola etichetta
 * della sorgente che la contiene ("S1", "S2").
 *
 * Le voci della Lista M3U portano il `sourceId` dentro l'identificativo; quelle
 * dell'account Xtream non lo portano e ricadono su [xtreamLabel].
 */
data class SourceLabels(
    val enabledCount: Int = 0,
    val bySourceId: Map<String, String> = emptyMap(),
    val xtreamLabel: String? = null,
) {

    /** Vero solo con più di una sorgente abilitata. */
    val isMultiple: Boolean get() = enabledCount > 1

    /** Etichetta della voce [contentId], `null` con una sola sorgente. */
    fun labelFor(contentId: String?): String? {
        if (!isMultiple || contentId.isNullOrBlank()) return null
        val sourceId = SourceIds.sourceOf(contentId)
        return if (sourceId == null) xtreamLabel else bySourceId[sourceId]
    }

    companion object {

        /** Nessuna etichetta: valore fuori dall'applicazione (anteprime, test). */
        val NONE: SourceLabels = SourceLabels()

        /** Etichette delle sorgenti abilitate dell'elenco. */
        fun from(sources: List<Source>): SourceLabels {
            val enabled = sources.filter { it.enabled }
            return SourceLabels(
                enabledCount = enabled.size,
                bySourceId = enabled.associate { it.id to it.label },
                xtreamLabel = enabled.firstOrNull { it.type == SourceType.XTREAM }?.label,
            )
        }
    }
}

/** Sorgenti note alla composizione corrente; fuori dall'app vale [SourceLabels.NONE]. */
val LocalSourceLabels = compositionLocalOf { SourceLabels.NONE }

/**
 * Piccola etichetta della sorgente sopra una copertina: "S1", "S2".
 *
 * Stessa forma per contenitore e bordo (un solo `clip`), colori di riposo come
 * gli altri veli sulle copertine: non è un elemento che prende il focus.
 */
@Composable
fun SourceBadge(
    label: String,
    scale: UiScale,
    modifier: Modifier = Modifier,
    testTag: String? = null,
) {
    val shape = RoundedCornerShape(scale.dp(4f))
    Box(
        modifier = modifier
            .clip(shape)
            .background(BADGE_BACKGROUND, shape)
            .padding(horizontal = scale.dp(6f), vertical = scale.dp(2f)),
        contentAlignment = Alignment.Center,
    ) {
        Text(
            text = label,
            color = FvpColors.TextPrimary,
            fontSize = scale.sp(11f),
            fontWeight = FontWeight.SemiBold,
            modifier = if (testTag != null) Modifier.testTag(testTag) else Modifier,
        )
    }
}

/** Velo scuro delle etichette sulle copertine, come le stelle dei preferiti. */
private val BADGE_BACKGROUND = Color(0xCC1C1C1E)
