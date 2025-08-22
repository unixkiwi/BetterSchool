import 'package:betterschool/domain/models/schoolday.dart';

class SchoolWeek {
  int nr;
  List<SchoolDay> days;

  SchoolWeek({required this.days, required this.nr});
}