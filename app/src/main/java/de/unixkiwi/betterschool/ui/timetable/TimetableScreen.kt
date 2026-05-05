package de.unixkiwi.betterschool.ui.timetable

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.pager.HorizontalPager
import androidx.compose.foundation.pager.rememberPagerState
import androidx.compose.material3.ExperimentalMaterial3ExpressiveApi
import androidx.compose.material3.LoadingIndicator
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import androidx.hilt.lifecycle.viewmodel.compose.hiltViewModel
import androidx.lifecycle.compose.collectAsStateWithLifecycle

@Composable
fun TimetableScreen(viewModel: TimetableViewModel = hiltViewModel()) {
    val uiState by viewModel.uiState.collectAsStateWithLifecycle()

    TimetableScreen(
        uiState = uiState,
        onPageChanged = { viewModel.updateSelectedPage(it) }
    )
}

@OptIn(ExperimentalMaterial3ExpressiveApi::class)
@Composable
private fun TimetableScreen(
    uiState: TimetableUiState,
    onPageChanged: (Int) -> Unit,
    modifier: Modifier = Modifier
) {
    when (uiState) {
        is TimetableUiState.Loading -> Column(
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.Center,
            modifier = modifier.fillMaxSize()
        ) {
            LoadingIndicator()
        }

        is TimetableUiState.Error -> Text("Error: ${uiState.error}", modifier = modifier)
        is TimetableUiState.Success -> {
            val pagerState =
                rememberPagerState(
                    pageCount = { uiState.week.days.size },
                    initialPage = uiState.index
                )

            LaunchedEffect(pagerState.currentPage) {
                onPageChanged(pagerState.currentPage)
            }

            Column(
                modifier = modifier.fillMaxSize(),
                horizontalAlignment = Alignment.CenterHorizontally,
                verticalArrangement = Arrangement.Top
            ) {
                HorizontalPager(state = pagerState, modifier = modifier.fillMaxSize()) { page ->
                    LazyColumn(contentPadding = PaddingValues(6.dp)) {
                        itemsIndexed(uiState.week.days[page].lessons) { index, lesson ->
                            TimetableListItem(
                                lesson = lesson,
                                index = index,
                                listSize = uiState.week.days[page].lessons.size
                            )
                            Spacer(modifier = Modifier.height(2.dp))
                        }
                    }
                }
            }
        }
    }
}