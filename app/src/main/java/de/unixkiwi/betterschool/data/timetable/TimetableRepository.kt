package de.unixkiwi.betterschool.data.timetable

class TimetableRepository(private val remoteSource: RemoteTimetableSource) {
    suspend fun getWeek(
        weekId: String,
        filterYear: Int? = null,
        authToken: String
    ): BesteSchuleJournalWeek {
        return remoteSource.getWeek(weekId, filterYear = filterYear, authHeader = authToken).data
    }
}