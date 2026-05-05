package de.unixkiwi.betterschool.core.models

import kotlinx.datetime.LocalDate

data class SchoolDay(
    val date: LocalDate?,
    val lessons: List<SchoolLesson>,
    val notes: List<SchoolJournalNote>
)
