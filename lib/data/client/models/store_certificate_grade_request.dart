// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'store_certificate_grade_request.g.dart';

@JsonSerializable()
class StoreCertificateGradeRequest {
  const StoreCertificateGradeRequest({
    required this.value,
    required this.type,
    required this.studentId,
    required this.subjectId,
    required this.yearId,
    this.name,
    this.givenAt,
  });
  
  factory StoreCertificateGradeRequest.fromJson(Map<String, Object?> json) => _$StoreCertificateGradeRequestFromJson(json);
  
  final String value;
  final String type;
  final String? name;
  @JsonKey(name: 'given_at')
  final DateTime? givenAt;
  @JsonKey(name: 'student_id')
  final int studentId;
  @JsonKey(name: 'subject_id')
  final String subjectId;
  @JsonKey(name: 'year_id')
  final String yearId;

  Map<String, Object?> toJson() => _$StoreCertificateGradeRequestToJson(this);
}
