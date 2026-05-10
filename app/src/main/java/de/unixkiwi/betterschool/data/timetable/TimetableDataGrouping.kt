package de.unixkiwi.betterschool.data.timetable

import de.unixkiwi.betterschool.core.models.SchoolDay
import de.unixkiwi.betterschool.core.models.SchoolLesson
import de.unixkiwi.betterschool.core.models.SchoolLessonStatus
import de.unixkiwi.betterschool.core.models.SchoolWeek
import kotlinx.datetime.isoDayNumber

fun SchoolWeek.groupedForTimetable(): SchoolWeek {
    val newDays = mutableListOf<SchoolDay>()

    days.forEach { day ->
        val groupedDayLessons = day.lessons.groupedForTimetable()

        if (!(
                    groupedDayLessons.isEmpty()
                            && day.lessons.isEmpty()
                            && (day.date != null && day.date.dayOfWeek.isoDayNumber > 5)
                    )
        ) {
            newDays += day.copy(
                lessons = groupedDayLessons
            )
        }
    }

    return copy(
        days = newDays
    )
}

fun List<SchoolLesson>.groupedForTimetable(): List<SchoolLesson> {
    if (isEmpty()) return emptyList()

    val lessonsByNr = sortedWith(
        compareBy({ it.nr.toIntOrNull() ?: Int.MAX_VALUE }, { it.nr })
    ).groupByTo(linkedMapOf()) { it.nr }

    val lessonsByNrGrouped = linkedMapOf<String, SchoolLesson>()

    for ((nr, lessons) in lessonsByNr) {
        if (lessons.isEmpty()) {
            continue
        } else if (lessons.size == 1 || lessons.all { it == lessons.first() }) {
            lessonsByNrGrouped[nr] = lessons.first()
        } else {
            val lessonsSortedBySubject = lessons.sortedBy { it.subject.name }

            val mainLessonIndex = lessonsSortedBySubject.indexOfFirst { lesson ->
                // substitutionplan = source for replacement lessons
                // timetable = default, may contain notes which are relevant for
                // the substitutionplan lesson about why it is replaced or similar
                lesson.source == "substitutionplan"
            }.takeIf { it >= 0 }
                ?: lessonsSortedBySubject.indexOfFirst { lesson ->
                    lesson.status == SchoolLessonStatus.PLANNED
                }.takeIf { it >= 0 }
                ?: lessonsSortedBySubject.indexOfFirst { lesson ->
                    lesson.status == SchoolLessonStatus.HOLD
                }.takeIf { it >= 0 }
                ?: lessonsSortedBySubject.indexOfFirst { lesson ->
                    lesson.status == SchoolLessonStatus.INITIAL
                }.takeIf { it >= 0 }
                ?: 0

            val mainLesson = lessonsSortedBySubject[mainLessonIndex]
            lessonsByNrGrouped[nr] = mainLesson.copy(
                subLessons = lessonsSortedBySubject.filterIndexed { index, _ -> index != mainLessonIndex }
            )
        }
    }

    val groupedEntries = lessonsByNrGrouped.entries.toList()
    val finalLessons = mutableListOf<SchoolLesson>()

    var index = 0
    while (index < groupedEntries.size) {
        val firstLesson = groupedEntries[index].value
        val secondLesson = groupedEntries.getOrNull(index + 1)?.value

        if (secondLesson == null) {
            finalLessons.add(firstLesson)
            break
        }

        if (firstLesson.group == secondLesson.group &&
            firstLesson.notes == secondLesson.notes &&
            firstLesson.rooms == secondLesson.rooms &&
            firstLesson.teachers == secondLesson.teachers &&
            firstLesson.subject == secondLesson.subject &&
            firstLesson.status == secondLesson.status
        ) {
            finalLessons.add(
                firstLesson.copy(
                    subLessons = firstLesson.subLessons + secondLesson.subLessons
                )
            )
        } else {
            finalLessons.add(firstLesson.copy(subLessons = listOf(secondLesson)))
        }

        index += 2
    }

    return finalLessons
}

