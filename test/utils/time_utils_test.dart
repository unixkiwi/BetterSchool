import 'package:betterschool/utils/time_utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('WeekString', () {
    test('fromDate creates correct WeekString', () {
      final date = DateTime(2026, 2, 3);
      final weekString = WeekString.fromDate(date);

      expect(weekString.year, 2026);
      expect(weekString.week, 6);
    });

    test('fromDate creates correct WeekString on first day of year', () {
      final date = DateTime(2025, 1, 1);
      final weekString = WeekString.fromDate(date);

      expect(weekString.year, 2025);
      expect(weekString.week, 1);
    });

    test('fromString parses valid string', () {
      final weekString = WeekString.fromString('2025-34');

      expect(weekString.year, 2025);
      expect(weekString.week, 34);
    });

    test('fromString throws on invalid format', () {
      expect(() => WeekString.fromString('invalid'), throwsA(isA<Exception>()));
    });

    test('toString returns correct format', () {
      final weekString = WeekString(year: 2025, week: 34);
      expect(weekString.toString(), '2025-34');
    });

    test('fromDateSmart moves weekend to next week', () {
      final satDate = DateTime(2026, 2, 1);
      final weekString = WeekString.fromDateSmart(satDate);

      final monDate = DateTime(2026, 2, 2);
      final expectedWeekString = WeekString.fromDate(monDate);

      expect(weekString.year, expectedWeekString.year);
      expect(weekString.week, expectedWeekString.week);
    });
  });
}
