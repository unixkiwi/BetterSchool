package de.unixkiwi.betterschool.ui.timetable

import androidx.compose.foundation.pager.HorizontalPager
import androidx.compose.foundation.pager.rememberPagerState
import androidx.compose.material3.ExperimentalMaterial3ExpressiveApi
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.ui.Modifier

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
        if (uiState.week.days[page].lessons.isEmpty()) {
            TimetableEmptyDayScreen()
        } else
            TimetableSuccessList(
                uiState = uiState,
                page = page
            )
    }
}