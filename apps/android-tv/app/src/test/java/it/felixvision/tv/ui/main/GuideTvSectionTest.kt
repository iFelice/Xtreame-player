package it.felixvision.tv.ui.main

import androidx.activity.ComponentActivity
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.remember
import androidx.compose.runtime.withFrameNanos
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.assertIsFocused
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.onNodeWithText
import androidx.test.ext.junit.runners.AndroidJUnit4
import it.felixvision.tv.ui.theme.FvpTheme
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.annotation.Config

@RunWith(AndroidJUnit4::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-land-television-mdpi")
class GuideTvSectionTest {

    @get:Rule
    val rule = createAndroidComposeRule<ComponentActivity>()

    @Test
    fun `mostra solo il testo segnaposto e riceve il focus di contenuto`() {
        rule.setContent {
            val contentFocusRequester = remember { FocusRequester() }
            FvpTheme {
                GuideTvSection(
                    contentFocusRequester = contentFocusRequester,
                    modifier = Modifier.fillMaxSize(),
                )
            }
            LaunchedEffect(Unit) {
                withFrameNanos { }
                runCatching { contentFocusRequester.requestFocus() }
            }
        }
        rule.waitForIdle()

        rule.onNodeWithText("disponibile nel prossimo aggiornamento").assertIsDisplayed()
        rule.onNodeWithTag("guide_tv_section").assertIsFocused()
    }
}
