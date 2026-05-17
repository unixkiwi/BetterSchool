package de.unixkiwi.betterschool.utils

import java.time.DayOfWeek
import java.time.LocalDate
import java.time.temporal.IsoFields
import java.time.temporal.TemporalAdjusters

/**
 * [WeekString] combines a year and a week number into a single object, just like beste.schule does it
 */
data class WeekString(
    val year: Int,
    val week: Int
) : Comparable<WeekString> {

    init {
        require(week in 1..53) { "Week must be between 1 and 53" }
    }

    companion object {
        fun fromDate(date: LocalDate): WeekString {
            val week = date.get(IsoFields.WEEK_OF_WEEK_BASED_YEAR)
            val year = date.get(IsoFields.WEEK_BASED_YEAR)
            return WeekString(year, week)
        }

        fun fromDateSmart(date: LocalDate): WeekString {
            var targetDate = date
            if (date.dayOfWeek == DayOfWeek.SATURDAY || date.dayOfWeek == DayOfWeek.SUNDAY) {
                targetDate = date.with(TemporalAdjusters.next(DayOfWeek.MONDAY))
            }
            return fromDate(targetDate)
        }

        fun fromString(str: String): WeekString {
            val parts = str.split('-')
            if (parts.size != 2) {
                throw IllegalArgumentException("Invalid format. Expected 'yyyy-ww'")
            }

            val year = parts[0].toIntOrNull()
            val week = parts[1].toIntOrNull()

            if (year == null || week == null) {
                throw IllegalArgumentException("Invalid format. Year and week must be numbers")
            }

            return WeekString(year, week)
        }
    }

    override fun toString(): String {
        return "$year-${week.toString().padStart(2, '0')}"
    }

    fun toDate(): LocalDate {
        return LocalDate.now()
            .with(IsoFields.WEEK_BASED_YEAR, year.toLong())
            .with(IsoFields.WEEK_OF_WEEK_BASED_YEAR, week.toLong())
            .with(DayOfWeek.MONDAY)
    }

    fun plusWeeks(n: Int): WeekString {
        val newDate = toDate().plusWeeks(n.toLong())
        return fromDate(newDate)
    }

    fun minusWeeks(n: Int): WeekString = plusWeeks(-n)

    fun nextWeek(): WeekString = plusWeeks(1)

    fun previousWeek(): WeekString = plusWeeks(-1)

    override fun compareTo(other: WeekString): Int {
        return toString().compareTo(other.toString())
    }
}