package de.unixkiwi.betterschool.data.timetable

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.pager.HorizontalPager
import androidx.compose.foundation.pager.rememberPagerState
import androidx.compose.material3.ExperimentalMaterial3ExpressiveApi
import androidx.compose.material3.ListItem
import androidx.compose.material3.ListItemDefaults
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import de.unixkiwi.betterschool.ui.timetable.TimetableListItem
import de.unixkiwi.betterschool.ui.timetable.TimetableUiState

@OptIn(ExperimentalMaterial3ExpressiveApi::class)
@Composable
fun TimetableSuccessComponent(
    uiState: TimetableUiState.Success,
    onPageChanged: (Int) -> Unit,
    modifier: Modifier = Modifier
) {
    val pagerState =
        rememberPagerState(
            pageCount = { uiState.week.days.size },
            initialPage = uiState.index
        )

    LaunchedEffect(pagerState.currentPage) {
        onPageChanged(pagerState.currentPage)
    }
    HorizontalPager(
        state = pagerState,
        modifier = modifier
    ) { page ->
        LazyColumn(
            contentPadding = PaddingValues(6.dp),
            horizontalAlignment = Alignment.Start,
            verticalArrangement = Arrangement.Top,
            modifier = Modifier.fillMaxSize()
        ) {
            item {
                Text(
                    "Lessons",
                    style = MaterialTheme.typography.headlineSmall,
                    modifier = Modifier.padding(horizontal = 8.dp, vertical = 8.dp)
                )
            }
            itemsIndexed(uiState.week.days[page].lessons) { index, lesson ->
                TimetableListItem(
                    lesson = lesson,
                    index = index,
                    listSize = uiState.week.days[page].lessons.size
                )
                Spacer(modifier = Modifier.height(2.dp))
            }
            item {
                Spacer(modifier = Modifier.height(10.dp))
            }
            item {
                Text(
                    "Notes",
                    style = MaterialTheme.typography.headlineSmall,
                    modifier = Modifier.padding(horizontal = 8.dp, vertical = 8.dp)
                )
            }
            itemsIndexed(uiState.week.days[page].notes) { index, note ->
                ListItem(
                    onClick = { },
                    shapes = ListItemDefaults.segmentedShapes(
                        index = index,
                        count = uiState.week.days[page].notes.size
                    ),
                    colors = ListItemDefaults.colors(
                        containerColor = MaterialTheme.colorScheme.surfaceContainer
                    ),
                    content = {
                        Text(
                            note.description,
                            style = MaterialTheme.typography.bodyMedium
                        )
                    }
                )
                Spacer(modifier = Modifier.height(2.dp))
            }
        }
    }
}