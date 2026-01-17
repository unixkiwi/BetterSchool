// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'student.dart';
import 'subject.dart';
import 'teacher.dart';
import 'year.dart';

part 'certificate_grade.g.dart';

@JsonSerializable()
class CertificateGrade {
  const CertificateGrade({
    required this.id,
    required this.value,
    required this.type,
    required this.name,
    required this.givenAt,
    this.subject,
    this.teacher,
    this.year,
    this.student,
  });
  
  factory CertificateGrade.fromJson(Map<String, Object?> json) => _$CertificateGradeFromJson(json);
  
  final int id;
  final String value;
  final String type;
  final String? name;
  @JsonKey(name: 'given_at')
  final String givenAt;
  final Subject? subject;
  final Teacher? teacher;
  final Year? year;
  final Student? student;

  Map<String, Object?> toJson() => _$CertificateGradeToJson(this);
}
