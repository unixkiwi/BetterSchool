package de.unixkiwi.betterschool.ui.timetable

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.material3.ExperimentalMaterial3ExpressiveApi
import androidx.compose.material3.Icon
import androidx.compose.material3.ListItem
import androidx.compose.material3.ListItemDefaults
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.style.TextDecoration
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import de.unixkiwi.betterschool.R
import de.unixkiwi.betterschool.core.models.SchoolLesson
import de.unixkiwi.betterschool.core.models.SchoolLessonStatus

@OptIn(ExperimentalMaterial3ExpressiveApi::class)
@Composable
fun TimetableListItem(
    lesson: SchoolLesson,
    index: Int,
    listSize: Int,
    modifier: Modifier = Modifier
) {
    val teacherLongText = lesson.teachers.joinToString(", ") { it.name }

    ListItem(
        modifier = modifier,
        colors = ListItemDefaults.colors(
            containerColor = if (lesson.status == SchoolLessonStatus.CANCELED) MaterialTheme.colorScheme.errorContainer.copy(
                alpha = 0.75F
            ) else MaterialTheme.colorScheme.surfaceContainerHigh
        ),
        onClick = { },
        shapes = ListItemDefaults.segmentedShapes(
            index = index,
            count = listSize
        ),
        content = {
            Text(
                if (lesson.subject.name.length > 35) lesson.subject.shortName else lesson.subject.name,
                style = if (lesson.status == SchoolLessonStatus.CANCELED) MaterialTheme.typography.bodyLarge.copy(
                    color = MaterialTheme.colorScheme.onErrorContainer,
                    textDecoration = TextDecoration.LineThrough
                ) else MaterialTheme.typography.bodyLarge,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis
            )
        },
        supportingContent = {
            Column {
                val cancelledSubLessons: List<SchoolLesson> =
                    lesson.subLessons.filter { it.status == SchoolLessonStatus.CANCELED }
                if (cancelledSubLessons.isNotEmpty()) {
                    Text(
                        cancelledSubLessons.joinToString(", ") { it.subject.shortName },
                        style = MaterialTheme.typography.bodyMedium.copy(
                            textDecoration = TextDecoration.LineThrough
                        ),
                        color = MaterialTheme.colorScheme.error
                    )
                }

                LazyRow {
                    if (lesson.teachers.isNotEmpty()) {
                        item {
                            Row(
                                verticalAlignment = Alignment.CenterVertically,
                                horizontalArrangement = Arrangement.Start
                            ) {
                                Icon(
                                    painterResource(R.drawable.person),
                                    null,
                                    modifier = Modifier.size(20.dp)
                                )
                                Text(
                                    if (teacherLongText.length < 21) teacherLongText else lesson.teachers.joinToString(
                                        ", "
                                    ) { it.shortName },
                                    style = MaterialTheme.typography.bodyMedium,
                                    modifier = Modifier.padding(start = 4.dp, end = 8.dp)
                                )
                            }
                        }
                    }
                    if (lesson.rooms.isNotEmpty()) {
                        item {
                            Row(
                                verticalAlignment = Alignment.CenterVertically,
                                horizontalArrangement = Arrangement.Start
                            ) {
                                Icon(
                                    painterResource(R.drawable.room),
                                    null,
                                    modifier = Modifier.size(20.dp)
                                )
                                Text(
                                    lesson.rooms.joinToString(", ") { it.name },
                                    style = MaterialTheme.typography.bodyMedium,
                                    modifier = Modifier.padding(start = 4.dp, end = 8.dp)
                                )
                            }
                        }
                        if (lesson.subLessons.isNotEmpty()) {
                            item {
                                Row(
                                    verticalAlignment = Alignment.CenterVertically,
                                    horizontalArrangement = Arrangement.Start
                                ) {
                                    Icon(
                                        painterResource(R.drawable.ic_list_alt_add_rounded_24dp),
                                        null,
                                        modifier = Modifier.size(20.dp)
                                    )
                                    Text(
                                        "More lessons",
                                        style = MaterialTheme.typography.bodyMedium,
                                        modifier = Modifier.padding(start = 4.dp, end = 8.dp)
                                    )
                                }
                            }
                        }
                    }
                }
            }
        }
    )
}