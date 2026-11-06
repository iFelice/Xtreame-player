package it.felixvision.tv.ui.main

import androidx.compose.foundation.focusable
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.platform.testTag
import androidx.compose.runtime.Composable
import androidx.tv.material3.Text
import it.felixvision.tv.ui.theme.FvpColors

/** Segnaposto della Guida TV: la guida vera arriverà in un aggiornamento successivo. */
@Composable
fun GuideTvSection(
    contentFocusRequester: FocusRequester,
    modifier: Modifier = Modifier,
) {
    Box(
        modifier = modifier
            .fillMaxSize()
            .focusRequester(contentFocusRequester)
            .focusable()
            .testTag("guide_tv_section"),
        contentAlignment = Alignment.Center,
    ) {
        Text(
            text = "disponibile nel prossimo aggiornamento",
            color = FvpColors.TextSecondary,
        )
    }
}
