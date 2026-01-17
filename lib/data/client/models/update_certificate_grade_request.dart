// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'update_certificate_grade_request.g.dart';

@JsonSerializable()
class UpdateCertificateGradeRequest {
  const UpdateCertificateGradeRequest({
    this.value,
    this.name,
    this.givenAt,
    this.type,
  });
  
  factory UpdateCertificateGradeRequest.fromJson(Map<String, Object?> json) => _$UpdateCertificateGradeRequestFromJson(json);
  
  final String? value;
  final String? name;
  @JsonKey(name: 'given_at')
  final DateTime? givenAt;
  final String? type;

  Map<String, Object?> toJson() => _$UpdateCertificateGradeRequestToJson(this);
}
