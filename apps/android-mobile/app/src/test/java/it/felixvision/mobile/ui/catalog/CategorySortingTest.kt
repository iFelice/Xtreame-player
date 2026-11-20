package it.felixvision.mobile.ui.catalog

import androidx.test.core.app.ApplicationProvider
import android.content.Context
import it.felixvision.tv.data.catalog.VodStream
import org.junit.Assert.assertEquals
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [34])
class CategorySortingTest {
    @Test fun sortsByAddedTitleAndYear() {
        val films = listOf(
            VodStream(streamId = "1", name = "Zeta", added = "100", year = "2020"),
            VodStream(streamId = "2", name = "Àlfa", added = "200", year = "2024"),
            VodStream(streamId = "3", name = "Beta", added = "50"),
        )
        assertEquals(listOf("2", "1", "3"), sortFilms(films, CategorySort.ADDED).map { it.streamId })
        assertEquals(listOf("2", "3", "1"), sortFilms(films, CategorySort.AZ).map { it.streamId })
        assertEquals(listOf("2", "1", "3"), sortFilms(films, CategorySort.YEAR).map { it.streamId })
    }

    @Test fun preferenceIsPerCategoryAndSection() {
        val context = ApplicationProvider.getApplicationContext<Context>()
        val store = CategorySortStore(context)
        store.set("vod", "001", CategorySort.YEAR)
        assertEquals(CategorySort.YEAR, CategorySortStore(context).get("vod", "001"))
        assertEquals(CategorySort.ADDED, store.get("vod", "002"))
        assertEquals(CategorySort.ADDED, store.get("series", "001"))
    }
}
