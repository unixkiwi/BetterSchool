package de.unixkiwi.betterschool.data.timetable

import retrofit2.http.GET
import retrofit2.http.Header
import retrofit2.http.Path
import retrofit2.http.Query

interface RemoteTimetableSource {
    @GET("journal/weeks/{id}")
    suspend fun getWeek(
        @Path("id") weekId: String,
        @Query("include") include: String = "days.lessons",
        @Query("interpolate") interpolate: Boolean = true,
        @Query("filter[year]") filterYear: Int?,
        @Header("Authorization") authHeader: String
    ): BesteSchuleApiResponse<BesteSchuleJournalWeek>
}


data class BesteSchuleApiResponse<T>(
    val data: T
)

data class BesteSchuleJournalWeek(
    val days: List<BesteSchuleJournalDay>
)

data class BesteSchuleJournalDay(
    val date: String,
    val lessons: List<BesteSchuleJournalLesson>
)

data class BesteSchuleJournalLesson(
    val nr: String,
    val status: String,
    val subject: BesteSchuleSubject
)

data class BesteSchuleSubject(
    val local_id: String,
    val name: String
)