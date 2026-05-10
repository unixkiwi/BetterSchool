package de.unixkiwi.betterschool.ui.timetable

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.pager.HorizontalPager
import androidx.compose.foundation.pager.rememberPagerState
import androidx.compose.material3.CenterAlignedTopAppBar
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.ExperimentalMaterial3ExpressiveApi
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.ListItem
import androidx.compose.material3.ListItemDefaults
import androidx.compose.material3.LoadingIndicator
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.unit.dp
import androidx.hilt.lifecycle.viewmodel.compose.hiltViewModel
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import de.unixkiwi.betterschool.R
import kotlinx.datetime.LocalDate
import kotlinx.datetime.format
import kotlinx.datetime.format.MonthNames
import kotlinx.datetime.format.char


@Composable
fun TimetableScreen(viewModel: TimetableViewModel = hiltViewModel()) {
    val uiState by viewModel.uiState.collectAsStateWithLifecycle()

    TimetableScreen(
        uiState = uiState,
        onPageChanged = { viewModel.updateSelectedPage(it) }
    )
}

@OptIn(ExperimentalMaterial3ExpressiveApi::class, ExperimentalMaterial3Api::class)
@Composable
private fun TimetableScreen(
    uiState: TimetableUiState,
    onPageChanged: (Int) -> Unit,
    modifier: Modifier = Modifier
) {
    Scaffold(
        topBar = {
            CenterAlignedTopAppBar(
                title = {
                    if (uiState is TimetableUiState.Success) {
                        val date = uiState.week.days[uiState.index].date?.format(
                            LocalDate.Format {
                                day()
                                char('.')
                                char(' ')
                                monthName(MonthNames.ENGLISH_ABBREVIATED)
                                char(' ')
                                year()
                            }
                        ) ?: "Timetable?"
                        Text(date)
                    } else
                        Text("Timetable")
                },
                navigationIcon = {
                    IconButton(onClick = {}) {
                        Icon(
                            painter = painterResource(R.drawable.settings_filled),
                            contentDescription = null
                        )
                    }
                },
                actions = {
                    IconButton(onClick = {}) {
                        Icon(
                            painter = painterResource(R.drawable.ic_refresh_rounded_24dp),
                            contentDescription = null
                        )
                    }
                }
            )
        },

        ) { innerPad ->
        when (uiState) {
            is TimetableUiState.Loading -> Column(
                horizontalAlignment = Alignment.CenterHorizontally,
                verticalArrangement = Arrangement.Center,
                modifier = Modifier
                    .fillMaxSize()
                    .padding(innerPad)
            ) {
                LoadingIndicator()
            }

            is TimetableUiState.Error -> Box(
                contentAlignment = Alignment.Center,
                modifier = Modifier.padding(innerPad)
            ) { Text("Error: ${uiState.error}") }

            is TimetableUiState.Success -> {
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
                    modifier = Modifier
                        .fillMaxSize()
                        .padding(innerPad)
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
                                modifier = modifier,
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
        }
    }
}