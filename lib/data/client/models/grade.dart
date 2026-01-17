// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'collection.dart';
import 'history.dart';
import 'student.dart';
import 'subject.dart';
import 'teacher.dart';

part 'grade.g.dart';

@JsonSerializable()
class Grade {
  const Grade({
    required this.id,
    required this.value,
    required this.givenAt,
    this.student,
    this.subject,
    this.collection,
    this.teacher,
    this.histories,
  });
  
  factory Grade.fromJson(Map<String, Object?> json) => _$GradeFromJson(json);
  
  final int id;
  final String value;
  @JsonKey(name: 'given_at')
  final String givenAt;
  final Student? student;
  final Subject? subject;
  final Collection? collection;
  final Teacher? teacher;
  final List<History>? histories;

  Map<String, Object?> toJson() => _$GradeToJson(this);
}
