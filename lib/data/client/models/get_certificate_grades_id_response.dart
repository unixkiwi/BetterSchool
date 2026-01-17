// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'certificate_grade.dart';

part 'get_certificate_grades_id_response.g.dart';

@JsonSerializable()
class GetCertificateGradesIdResponse {
  const GetCertificateGradesIdResponse({
    required this.data,
  });
  
  factory GetCertificateGradesIdResponse.fromJson(Map<String, Object?> json) => _$GetCertificateGradesIdResponseFromJson(json);
  
  final CertificateGrade data;

  Map<String, Object?> toJson() => _$GetCertificateGradesIdResponseToJson(this);
}
