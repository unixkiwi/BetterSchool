/// A [WeekString] bundles a year and a week into one object
/// It also allows for easy conversion between [DateTime], [String] and [WeekString]
class WeekString {
  final int year;
  final int week;

  const WeekString({required this.year, required this.week});

  /// Creates a [WeekString] from a [DateTime]
  factory WeekString.fromDate(DateTime date) {
    return _getISOWeekString(date);
  }

  /// Creates a [WeekString] from a [DateTime]
  /// If the date is a weekend, returns the next week
  factory WeekString.fromDateSmart(DateTime date) {
    // If it's weekend, move to next Monday
    if (date.weekday >= 6) {
      // 8 because of 1 day to add for saturday so 8 - 7 -> 1
      int daysToAdd = 8 - date.weekday;
      date = date.add(Duration(days: daysToAdd));
    }

    return _getISOWeekString(date);
  }

  /// Creates a [WeekString] from a string in format "yyyy-ww"
  /// An example would be "2025-34" -> [WeekString] (year: 2025, week: 34)
  factory WeekString.fromString(String str) {
    final parts = str.split('-');
    if (parts.length != 2) {
      throw Exception('Invalid format. Expected "yyyy-ww"');
    }

    final year = int.tryParse(parts[0]);
    final week = int.tryParse(parts[1]);

    if (year == null || week == null) {
      throw Exception('Invalid format. Year and week must be numbers');
    }

    if (week < 1 || week > 53) {
      throw Exception('Week must be between 1 and 53');
    }

    return WeekString(year: year, week: week);
  }

  /// Returns the [String] representation of the [WeekString] in format "yyyy-ww"
  @override
  String toString() {
    return '$year-${week.toString().padLeft(2, '0')}';
  }

  /// Returns the Monday of this week as [DateTime]
  DateTime toDate() {
    return _getDateFromISOWeek(this);
  }

  /// Calculate ISO week number and year from a [DateTime] and return it as a [WeekString]
  static WeekString _getISOWeekString(DateTime date) {
    // ISO 8601 week calculation
    // Week 1 is the first week with at least 4 days in the new year
    // First day of the week: Monday

    final year = date.year;
    final dayOfYear = date.difference(DateTime(year, 1, 1)).inDays + 1;

    // Calculate week number
    // 10: 7 + 3 (offset for ISO week 1)
    int week = ((dayOfYear - date.weekday + 10) / 7).floor();

    // Week belongs to the previous year
    if (week == 0) {
      final prevYear = year - 1;
      final weeksInPrevYear = _getWeeksInYear(prevYear);
      return WeekString(year: prevYear, week: weeksInPrevYear);
    }
    // Week belongs to the next year
    else if (week > _getWeeksInYear(year)) {
      return WeekString(year: year + 1, week: 1);
    }

    return WeekString(year: year, week: week);
  }

  /// Get the number of weeks in a given year (52 or 53)
  static int _getWeeksInYear(int year) {
    final jan1 = DateTime(year, 1, 1);

    // Years with 53 weeks: if Jan 1 is Thursday or if it's a leap year and Jan 1 is Wednesday
    if (jan1.weekday == 4 || (jan1.weekday == 3 && _isLeapYear(year))) {
      return 53;
    }
    return 52;
  }

  /// Check if a year is a leap year
  static bool _isLeapYear(int year) {
    return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);
  }

  /// Get the Monday date for a given [WeekString] and return it as a [DateTime]
  static DateTime _getDateFromISOWeek(WeekString weekData) {
    int year = weekData.year;
    int week = weekData.week;

    // Get first week of year (jan 4th always week 1 see ISO definition)
    final jan4 = DateTime(year, 1, 4);

    // Get monday of first week
    final mondayWeek1 = jan4.subtract(Duration(days: jan4.weekday - 1));

    // Add number of weeks to the first week
    return mondayWeek1.add(Duration(days: (week - 1) * 7));
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is WeekString && other.year == year && other.week == week;
  }

  @override
  int get hashCode => year.hashCode ^ week.hashCode;

  /// Compare two [WeekString] objects
  int compareTo(WeekString other) {
    final yearComparison = year.compareTo(other.year);
    if (yearComparison != 0) return yearComparison;
    return week.compareTo(other.week);
  }
}
