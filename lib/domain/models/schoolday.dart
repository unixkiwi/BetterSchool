import 'package:betterschool/domain/models/lesson.dart';

class SchoolDay {
  final String id;
  final DateTime date;
  final List<Lesson> lessons;

  SchoolDay({required this.id, required this.date, required this.lessons});

  factory SchoolDay.empty() =>
      SchoolDay(id: "No ID", date: DateTime.now(), lessons: []);
}
