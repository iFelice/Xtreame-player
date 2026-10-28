@file:OptIn(androidx.compose.foundation.ExperimentalFoundationApi::class)

package it.felixvision.mobile.ui.components

import androidx.compose.foundation.ExperimentalFoundationApi
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.combinedClickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.defaultMinSize
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Icon
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import it.felixvision.mobile.ui.theme.FvpColors
import it.felixvision.tv.data.catalog.Category

/** Tag di test dei selettori di categoria. */
fun categoryHeaderTag(sectionKey: String): String = "category_header_$sectionKey"

fun categoryPanelTag(sectionKey: String): String = "category_panel_$sectionKey"

fun categoryItemTag(sectionKey: String, categoryId: String): String =
    "category_item_${sectionKey}_$categoryId"

fun categorySideTag(sectionKey: String, categoryId: String): String =
    "category_side_${sectionKey}_$categoryId"

/**
 * Categorie di Live, Film e Serie con due layout scelti dalla finestra, non
 * dal dispositivo:
 *
 * - in orizzontale ([wideLayout] = true): [CategorySideColumn], colonna fissa
 *   a sinistra con l'elenco e la categoria scelta evidenziata;
 * - in verticale: [CollapsingCategoryHeader], intestazione a scomparsa come
 *   nella web app mobile: il tocco apre l'elenco, la scelta lo richiude.
 *
 * In entrambe la pressione lunga su una categoria (se [onLongPressCategory]
 * è fornita) apre il pannello azioni della categoria — usata da Live per i
 * preferiti di categoria, come sulla TV.
 */
@Composable
fun CategorySideColumn(
    categories: List<Category>,
    selectedCategoryId: String?,
    onSelect: (Category) -> Unit,
    sectionKey: String,
    modifier: Modifier = Modifier,
    favoriteCategoryIds: Set<String> = emptySet(),
    onLongPressCategory: ((Category) -> Unit)? = null,
) {
    LazyColumn(
        modifier = modifier
            .width(220.dp)
            .fillMaxHeight()
            .clip(RoundedCornerShape(14.dp))
            .background(FvpColors.GlassFill)
            .border(1.dp, FvpColors.GlassBorder, RoundedCornerShape(14.dp)),
        contentPadding = PaddingValues(8.dp),
        verticalArrangement = Arrangement.spacedBy(4.dp),
    ) {
        items(categories, key = { "sidecat_${sectionKey}_${it.categoryId}" }) { category ->
            val selected = category.categoryId == selectedCategoryId
            Row(
                verticalAlignment = Alignment.CenterVertically,
                modifier = Modifier
                    .fillMaxWidth()
                    .defaultMinSize(minHeight = 48.dp)
                    .clip(RoundedCornerShape(10.dp))
                    .background(if (selected) FvpColors.SurfaceElevated else FvpColors.Surface.copy(alpha = 0.4f))
                    .combinedClickable(
                        onClick = { onSelect(category) },
                        onLongClick = { onLongPressCategory?.invoke(category) },
                        onLongClickLabel = "Azioni categoria",
                    )
                    .padding(horizontal = 14.dp, vertical = 10.dp)
                    .testTag(categorySideTag(sectionKey, category.categoryId)),
            ) {
                if (selected) {
                    Box(
                        modifier = Modifier
                            .width(4.dp)
                            .heightIn(min = 22.dp)
                            .clip(RoundedCornerShape(2.dp))
                            .background(FvpColors.Green),
                    )
                }
                Text(
                    text = category.categoryName ?: "Senza nome",
                    color = if (selected) FvpColors.TextPrimary else FvpColors.TextSecondary,
                    fontSize = 15.sp,
                    fontWeight = if (selected) FontWeight.SemiBold else FontWeight.Medium,
                    maxLines = 2,
                    overflow = TextOverflow.Ellipsis,
                    modifier = Modifier
                        .padding(start = 10.dp)
                        .weight(1f),
                )
                if (category.categoryId in favoriteCategoryIds) {
                    Icon(
                        imageVector = FvpIcons.Star,
                        contentDescription = "Categoria preferita",
                        tint = FvpColors.PreferitiActive,
                        modifier = Modifier.size(16.dp),
                    )
                }
            }
        }
    }
}

/**
 * Intestazione a scomparsa delle categorie in verticale. Il tocco apre il
 * pannello [CollapsingCategoryPanel]; la scelta di una categoria lo richiude.
 */
@Composable
fun CollapsingCategoryHeader(
    categories: List<Category>,
    selectedCategoryId: String?,
    open: Boolean,
    onToggleOpen: () -> Unit,
    sectionKey: String,
    modifier: Modifier = Modifier,
) {
    val selectedName = categories.firstOrNull { it.categoryId == selectedCategoryId }
        ?.categoryName ?: "Categorie"
    Row(
        verticalAlignment = Alignment.CenterVertically,
        modifier = modifier
            .fillMaxWidth()
            .defaultMinSize(minHeight = 48.dp)
            .clip(RoundedCornerShape(12.dp))
            .background(FvpColors.Surface)
            .border(1.dp, FvpColors.GlassBorder, RoundedCornerShape(12.dp))
            .combinedClickable(
                onClick = onToggleOpen,
                onClickLabel = if (open) "Chiudi elenco categorie" else "Apri elenco categorie",
            )
            .padding(horizontal = 16.dp, vertical = 12.dp)
            .testTag(categoryHeaderTag(sectionKey)),
    ) {
        Text(
            text = selectedName,
            color = FvpColors.TextPrimary,
            fontSize = 16.sp,
            fontWeight = FontWeight.SemiBold,
            maxLines = 1,
            overflow = TextOverflow.Ellipsis,
            modifier = Modifier.weight(1f),
        )
        Icon(
            imageVector = FvpIcons.ChevronGiù,
            contentDescription = if (open) "Chiudi elenco categorie" else "Apri elenco categorie",
            tint = FvpColors.TextSecondary,
            modifier = Modifier.size(22.dp),
        )
    }
}

/** Elenco a comparsa sotto [CollapsingCategoryHeader]; la scelta lo chiude. */
@Composable
fun CollapsingCategoryPanel(
    categories: List<Category>,
    selectedCategoryId: String?,
    onSelect: (Category) -> Unit,
    sectionKey: String,
    modifier: Modifier = Modifier,
    favoriteCategoryIds: Set<String> = emptySet(),
    onLongPressCategory: ((Category) -> Unit)? = null,
) {
    LazyColumn(
        modifier = modifier
            .fillMaxWidth()
            .heightIn(max = 320.dp)
            .clip(RoundedCornerShape(12.dp))
            .background(FvpColors.Surface)
            .border(1.dp, FvpColors.GlassBorder, RoundedCornerShape(12.dp))
            .testTag(categoryPanelTag(sectionKey)),
        contentPadding = PaddingValues(6.dp),
        verticalArrangement = Arrangement.spacedBy(2.dp),
    ) {
        items(categories, key = { "panelcat_${sectionKey}_${it.categoryId}" }) { category ->
            val selected = category.categoryId == selectedCategoryId
            Row(
                verticalAlignment = Alignment.CenterVertically,
                modifier = Modifier
                    .fillMaxWidth()
                    .defaultMinSize(minHeight = 48.dp)
                    .clip(RoundedCornerShape(8.dp))
                    .background(if (selected) FvpColors.SurfaceElevated else FvpColors.Surface)
                    .combinedClickable(
                        onClick = { onSelect(category) },
                        onLongClick = { onLongPressCategory?.invoke(category) },
                        onLongClickLabel = "Azioni categoria",
                    )
                    .padding(horizontal = 14.dp, vertical = 12.dp)
                    .testTag(categoryItemTag(sectionKey, category.categoryId)),
            ) {
                Text(
                    text = category.categoryName ?: "Senza nome",
                    color = if (selected) FvpColors.TextPrimary else FvpColors.TextSecondary,
                    fontSize = 15.sp,
                    fontWeight = if (selected) FontWeight.SemiBold else FontWeight.Medium,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis,
                    modifier = Modifier.weight(1f),
                )
                if (category.categoryId in favoriteCategoryIds) {
                    Icon(
                        imageVector = FvpIcons.Star,
                        contentDescription = "Categoria preferita",
                        tint = FvpColors.PreferitiActive,
                        modifier = Modifier.size(16.dp),
                    )
                }
            }
        }
    }
}
