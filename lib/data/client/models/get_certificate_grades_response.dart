// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'certificate_grade.dart';

part 'get_certificate_grades_response.g.dart';

@JsonSerializable()
class GetCertificateGradesResponse {
  const GetCertificateGradesResponse({
    required this.data,
  });
  
  factory GetCertificateGradesResponse.fromJson(Map<String, Object?> json) => _$GetCertificateGradesResponseFromJson(json);
  
  final List<CertificateGrade> data;

  Map<String, Object?> toJson() => _$GetCertificateGradesResponseToJson(this);
}
