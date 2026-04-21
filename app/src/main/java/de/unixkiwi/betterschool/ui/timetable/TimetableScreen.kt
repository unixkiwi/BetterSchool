package de.unixkiwi.betterschool.ui.timetable

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.material3.ExperimentalMaterial3ExpressiveApi
import androidx.compose.material3.ListItem
import androidx.compose.material3.ListItemDefaults
import androidx.compose.material3.LoadingIndicator
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.hilt.lifecycle.viewmodel.compose.hiltViewModel
import androidx.lifecycle.compose.collectAsStateWithLifecycle

@Composable
fun TimetableScreen(viewModel: TimetableViewModel = hiltViewModel()) {
    val uiState by viewModel.uiState.collectAsStateWithLifecycle()

    TimetableScreen(uiState = uiState)
}

@OptIn(ExperimentalMaterial3ExpressiveApi::class)
@Composable
private fun TimetableScreen(uiState: TimetableUiState, modifier: Modifier = Modifier) {
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
            LazyColumn(contentPadding = PaddingValues(6.dp)) {
                itemsIndexed(uiState.lessons) { index, lesson ->
                    ListItem(
                        colors = ListItemDefaults.colors(
                            containerColor = MaterialTheme.colorScheme.surfaceContainerHigh
                        ),
                        onClick = { },
                        shapes = ListItemDefaults.segmentedShapes(
                            index = index,
                            count = uiState.lessons.size
                        ),
                        content = {
                            Text(
                                "[" + lesson.nr + "] " + lesson.subject.name + " (" + lesson.subject.local_id + ")",
                                style = MaterialTheme.typography.headlineSmall,
                                maxLines = 1,
                                overflow = TextOverflow.Ellipsis
                            )
                        },
                        supportingContent = {
                            Text(
                                lesson.status,
                                style = MaterialTheme.typography.bodyMedium,
                                overflow = TextOverflow.Ellipsis
                            )
                        },
                    )
                    Spacer(modifier = Modifier.height(1.dp))
                }
            }
        }
    }
}