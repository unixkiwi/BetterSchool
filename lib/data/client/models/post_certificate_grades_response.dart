// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'certificate_grade.dart';

part 'post_certificate_grades_response.g.dart';

@JsonSerializable()
class PostCertificateGradesResponse {
  const PostCertificateGradesResponse({
    required this.data,
  });
  
  factory PostCertificateGradesResponse.fromJson(Map<String, Object?> json) => _$PostCertificateGradesResponseFromJson(json);
  
  final CertificateGrade data;

  Map<String, Object?> toJson() => _$PostCertificateGradesResponseToJson(this);
}
