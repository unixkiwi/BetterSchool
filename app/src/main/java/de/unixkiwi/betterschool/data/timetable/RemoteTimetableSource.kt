package de.unixkiwi.betterschool.data.timetable

import de.unixkiwi.betterschool.data.RemoteBesteSchuleWrapper
import retrofit2.http.GET
import retrofit2.http.Header
import retrofit2.http.Path
import retrofit2.http.Query

interface RemoteTimetableSource {
    @GET("journal/weeks/{id}")
    suspend fun getWeek(
        @Path("id") weekId: String,
        @Query("include") include: String = "days.lessons,days.lessons.subject,days.lessons.teachers,days.lessons.group,days.lessons.rooms,days.lessons.notes,days.lessons.notes.type",
        @Query("interpolate") interpolate: Boolean = true,
        @Query("filter[year]") filterYear: Int?,
        @Header("Authorization") authHeader: String
    ): RemoteBesteSchuleWrapper<BesteSchuleJournalWeek>
}