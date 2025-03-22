import './lesson.dart';
import './note.dart';

class SchoolDay {
  final DateTime date;
  final List<Lesson> lessons;
  final List<Note> notes;

  const SchoolDay({
    required this.date,
    required this.lessons,
    required this.notes
  });

  factory SchoolDay.fromJson(Map json) {
    return SchoolDay(
        date: DateTime.parse(json['date']),
        lessons: (json['lessons'] as List).map((e) => Lesson.fromJson(e)).toList()..sort((a, b) => a.nr.compareTo(b.nr)),
        notes: (json['notes'] as List).map((e) => Note.fromJson(e)).toList()
    );
  }
}