import 'package:school_app/data/repo/beste_schule_repo_impl.dart';
import 'package:school_app/domain/models/interval.dart';
import 'package:school_app/domain/models/subject.dart';

class Grade {
  final String title;
  final double value;
  final int plainValue;
  final String valueString;
  final String type;
  final DateTime date;
  final Subject subject;
  final int intervalId;

  const Grade({
    required this.title,
    required this.value,
    required this.plainValue,
    required this.valueString,
    required this.type,
    required this.date,
    required this.subject,
    required this.intervalId,
  });

  double getValue(bool usePlain) {
    return usePlain ? plainValue.toDouble() : value;
  }

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

  static int plainValueFromString(String grade) {
    return int.parse(grade[0]);
  }

  factory Grade.fromJson(Map json) {
    final collection = json['collection'];

    return Grade(
      title: collection != null ? collection['name'] ?? "No title" : "No title",
      value: Grade.gradeToNumber(json['value']),
      plainValue: Grade.plainValueFromString(json['value']),
      valueString: json['value'] ?? "0",
      type: collection != null ? collection['type'] : "No type",
      date: DateTime.parse(json['given_at']),
      subject: collection['subject'] == null
          ? Subject(id: 0, name: "Unknown Subject", shortName: "---")
          : Subject.fromJson(collection['subject']),
      intervalId: collection['interval_id'] ?? -1,
    );
  }
}
