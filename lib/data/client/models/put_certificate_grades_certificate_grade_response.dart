// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'certificate_grade.dart';

part 'put_certificate_grades_certificate_grade_response.g.dart';

@JsonSerializable()
class PutCertificateGradesCertificateGradeResponse {
  const PutCertificateGradesCertificateGradeResponse({
    required this.data,
  });
  
  factory PutCertificateGradesCertificateGradeResponse.fromJson(Map<String, Object?> json) => _$PutCertificateGradesCertificateGradeResponseFromJson(json);
  
  final CertificateGrade data;

  Map<String, Object?> toJson() => _$PutCertificateGradesCertificateGradeResponseToJson(this);
}
