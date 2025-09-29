import 'package:betterschool/domain/models/subject.dart';
import 'package:equatable/equatable.dart';

class Grade extends Equatable {
  final int value;
  final double valueWithModifiers;
  final String valueString;
  final String title;
  final String type;
  final Subject subject;
  final DateTime date;

  const Grade({
    required this.value,
    required this.valueWithModifiers,
    required this.valueString,
    required this.title,
    required this.type,
    required this.subject,
    required this.date,
  });

  factory Grade.empty() => Grade(
    value: -1,
    valueWithModifiers: -1,
    valueString: "-1",
    title: "No Title",
    type: "No Type",
    subject: Subject.empty(),
    date: DateTime.now(),
  );

  @override
  List<Object?> get props => [
    value,
    valueWithModifiers,
    valueString,
    title,
    type,
    date,
  ];
}
