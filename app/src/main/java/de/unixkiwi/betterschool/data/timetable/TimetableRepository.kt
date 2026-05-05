package de.unixkiwi.betterschool.data.timetable

import de.unixkiwi.betterschool.core.models.SchoolDay
import de.unixkiwi.betterschool.core.models.SchoolGroup
import de.unixkiwi.betterschool.core.models.SchoolJournalNote
import de.unixkiwi.betterschool.core.models.SchoolLesson
import de.unixkiwi.betterschool.core.models.SchoolLessonStatus
import de.unixkiwi.betterschool.core.models.SchoolRoom
import de.unixkiwi.betterschool.core.models.SchoolSubject
import de.unixkiwi.betterschool.core.models.SchoolTeacher
import de.unixkiwi.betterschool.core.models.SchoolWeek
import kotlinx.datetime.LocalDate

class TimetableRepository(private val remoteSource: RemoteTimetableSource) {
    suspend fun getWeek(
        weekId: String,
        filterYear: Int? = null,
        authToken: String
    ): SchoolWeek {
        val rawData =
            remoteSource.getWeek(weekId, filterYear = filterYear, authHeader = authToken).data

        return SchoolWeek(
            days = rawData.days.map { day ->
                SchoolDay(
                    date = day.date?.let { LocalDate.parse(it) },
                    lessons = day.lessons.map { lesson ->
                        SchoolLesson(
                            nr = lesson.nr,
                            status = if (lesson.status == null) SchoolLessonStatus.INITIAL else SchoolLessonStatus.fromApiValue(
                                lesson.status
                            ),
                            source = lesson.source,
                            subject = SchoolSubject(
                                shortName = lesson.subject.local_id ?: SchoolSubject().shortName,
                                name = lesson.subject.name ?: SchoolSubject().name
                            ),
                            teachers = lesson.teachers.map { teacher ->
                                SchoolTeacher(
                                    forename = teacher.forename ?: SchoolTeacher().forename,
                                    name = teacher.name ?: SchoolTeacher().name
                                )
                            },
                            group = SchoolGroup(
                                name = lesson.group.name ?: SchoolGroup().name,
                                shortName = lesson.group.local_id ?: SchoolGroup().shortName,
                                meta = lesson.group.meta > 0
                            ),
                            rooms = lesson.rooms.map { room ->
                                SchoolRoom(
                                    name = room.local_id
                                )
                            },
                            notes = lesson.notes.map { note ->
                                SchoolJournalNote(
                                    description = note.description
                                        ?: SchoolJournalNote().description,
                                    type = note.type.name ?: SchoolJournalNote().type
                                )
                            }
                        )
                    },
                    notes = day.notes.map { note ->
                        SchoolJournalNote(
                            description = note.description ?: SchoolJournalNote().description,
                            type = note.type.name ?: SchoolJournalNote().type
                        )
                    }
                )
            }
        )
    }
}