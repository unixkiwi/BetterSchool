package de.unixkiwi.betterschool.ui.timetable

import de.unixkiwi.betterschool.core.models.SchoolGroup
import de.unixkiwi.betterschool.core.models.SchoolJournalNote
import de.unixkiwi.betterschool.core.models.SchoolLesson
import de.unixkiwi.betterschool.core.models.SchoolLessonStatus
import de.unixkiwi.betterschool.core.models.SchoolRoom
import de.unixkiwi.betterschool.core.models.SchoolSubject
import de.unixkiwi.betterschool.core.models.SchoolTeacher
import de.unixkiwi.betterschool.data.timetable.groupedForTimetable
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class TimetableLessonGroupingTest {
    @Test
    fun groupsLessonsByNumberAndPicksBestMainLesson() {
        val lessons = listOf(
            lesson(nr = "2", status = SchoolLessonStatus.INITIAL, subjectName = "Biology"),
            lesson(nr = "2", status = SchoolLessonStatus.HOLD, subjectName = "Chemistry"),
            lesson(nr = "2", status = SchoolLessonStatus.PLANNED, subjectName = "Physics")
        )

        val grouped = lessons.groupedForTimetable()

        assertEquals(1, grouped.size)
        assertEquals("2", grouped.first().nr)
        assertEquals(SchoolLessonStatus.HOLD, grouped.first().status)
        assertEquals("Chemistry", grouped.first().subject.name)
        assertEquals(listOf("Biology", "Physics"), grouped.first().subLessons.map { it.subject.name })
    }

    @Test
    fun mergesMatchingNeighbourNumbersAndKeepsOddLesson() {
        val first = lesson(
            nr = "1",
            subjectName = "Math",
            roomName = "A1",
            teacherName = "T1"
        )
        val second = lesson(
            nr = "2",
            subjectName = "Math",
            roomName = "A1",
            teacherName = "T1"
        )
        val third = lesson(
            nr = "3",
            subjectName = "History"
        )

        val grouped = listOf(first, second, third).groupedForTimetable()

        assertEquals(2, grouped.size)
        assertEquals("1", grouped[0].nr)
        assertTrue(grouped[0].subLessons.isEmpty())
        assertEquals("3", grouped[1].nr)
        assertTrue(grouped[1].subLessons.isEmpty())
    }

    private fun lesson(
        nr: String,
        status: SchoolLessonStatus = SchoolLessonStatus.INITIAL,
        subjectName: String,
        roomName: String? = null,
        teacherName: String? = null,
    ) = SchoolLesson(
        nr = nr,
        status = status,
        source = null,
        subject = SchoolSubject(shortName = subjectName.take(3).uppercase(), name = subjectName),
        teachers = teacherName?.let { listOf(SchoolTeacher(name = it, shortName = it.take(3).uppercase())) } ?: emptyList(),
        group = SchoolGroup(name = "Group", shortName = "G"),
        rooms = roomName?.let { listOf(SchoolRoom(name = it)) } ?: emptyList(),
        notes = emptyList<SchoolJournalNote>()
    )
}


