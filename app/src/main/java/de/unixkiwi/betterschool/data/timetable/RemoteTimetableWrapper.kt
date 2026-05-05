package de.unixkiwi.betterschool.data.timetable

data class BesteSchuleJournalWeek(
    val days: List<BesteSchuleJournalDay>
)

data class BesteSchuleJournalDay(
    val date: String?,
    val time_name: String?,
    val lessons: List<BesteSchuleJournalLesson>
)

data class BesteSchuleJournalLesson(
    val nr: String,
    val status: String,
    val source: String?,
    val subject: BesteSchuleSubject,
    val teachers: List<BesteSchuleTeacher>,
    val group: BesteSchuleGroup,
    val rooms: List<BesteSchuleRoom>,
    val notes: List<BesteSchuleJournalNote>
)

data class BesteSchuleSubject(
    val local_id: String,
    val name: String
)

data class BesteSchuleTeacher(
    val forname: String?,
    val name: String?
)

data class BesteSchuleGroup(
    val name: String,
    val local_id: String?,
    val meta: Int,
    val level_id: Int?,
    val year_id: Int?
)

data class BesteSchuleRoom(
    val local_id: String
)

data class BesteSchuleJournalNote(
    val description: String,
    val type: BesteSchuleJournalNoteType
)

data class BesteSchuleJournalNoteType(
    val name: String
)