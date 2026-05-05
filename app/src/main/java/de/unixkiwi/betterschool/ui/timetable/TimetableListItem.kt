package de.unixkiwi.betterschool.ui.timetable

import androidx.compose.material3.ExperimentalMaterial3ExpressiveApi
import androidx.compose.material3.ListItem
import androidx.compose.material3.ListItemDefaults
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.style.TextOverflow
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
    ListItem(
        colors = ListItemDefaults.colors(
            containerColor = if (lesson.status == SchoolLessonStatus.CANCELED) MaterialTheme.colorScheme.errorContainer else MaterialTheme.colorScheme.surfaceContainerHigh
        ),
        onClick = { },
        shapes = ListItemDefaults.segmentedShapes(
            index = index,
            count = listSize
        ),
        content = {
            Text(
                if (lesson.subject.name.length > 25) lesson.subject.shortName else lesson.subject.name,
                style = MaterialTheme.typography.headlineSmall,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis
            )
        },
        supportingContent = {
            Text(
                lesson.status.name,
                style = MaterialTheme.typography.bodyMedium,
                overflow = TextOverflow.Ellipsis
            )
        },
    )
}