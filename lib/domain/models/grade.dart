import 'package:school_app/domain/models/subject.dart';

class Grade {
  final String title;
  final double value;
  final String type;
  final DateTime date;
  final Subject subject;

  const Grade({
    required this.title,
    required this.value,
    required this.type,
    required this.date,
    required this.subject,
  });

  static double gradeToNumber(String grade) {
    // special cases
    if (grade == "1+") return 1.0;
    if (grade == "6-") return 6.0;

    if (grade.endsWith('+')) {
      return double.parse(grade[0]) - 0.3;
    } else if (grade.endsWith('-')) {
      return double.parse(grade[0]) + 0.3;
    } else {
      return double.parse(grade);
    }
  }

  factory Grade.fromJson(Map json) {
    return Grade(
      title: json['collection']['name'] ?? "No title found!",
      value: Grade.gradeToNumber(json['value']),
      type: json['collection']['type'] ?? "",
      date: DateTime.parse(json['given_at']),
      subject: Subject.fromJson(json['subject']),
    );
  }
}
