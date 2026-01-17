// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'absence_verification.dart';
import 'meta12.dart';

part 'put_absences_verifications_verification_response.g.dart';

@JsonSerializable()
class PutAbsencesVerificationsVerificationResponse {
  const PutAbsencesVerificationsVerificationResponse({
    required this.data,
    required this.meta,
  });
  
  factory PutAbsencesVerificationsVerificationResponse.fromJson(Map<String, Object?> json) => _$PutAbsencesVerificationsVerificationResponseFromJson(json);
  
  final AbsenceVerification data;
  final Meta12 meta;

  Map<String, Object?> toJson() => _$PutAbsencesVerificationsVerificationResponseToJson(this);
}
